/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-03-15     Tuber      first version
 */

#include <rtthread.h>
#include <drivers/usb_host.h>

#include "printer.h"

#ifdef RT_USBH_PRINTER

static struct uclass_driver printer_driver;

int rt_usbh_printer_hcd_pipe_xfer(uhcd_t hcd, upipe_t pipe, void* buffer, int nbytes, int timeout)
{
    rt_size_t remain_size;
    rt_size_t send_size;
    rt_size_t nsend;
    int res;

    nsend = 0;
    remain_size = nbytes;
    do
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("pipe transform remain size,: %d\n", remain_size));
        send_size = (remain_size > pipe->ep.wMaxPacketSize) ? pipe->ep.wMaxPacketSize : remain_size;
        res = hcd->ops->pipe_xfer(pipe, USBH_PID_DATA, (rt_uint8_t *) buffer + nsend, send_size, timeout);
        if (res > 0)
        {
            remain_size -= res;
            nsend += res;
        }
        else
        {
            return nsend;
        }
    } while (remain_size > 0);

    return nbytes;
}

/**
 * This function will do USBLP_REQ_GET_STATUS' bRequest for the printer device instance,
 *
 * @param device the usb device instance.
 * @param intf the interface number.
 * @param alts the alternate setting number.
 *
 * @return the error code, RT_EOK on successfully.
 */
rt_size_t rt_usbh_get_printer_status(uinst_t device, int intf, int alts)
{
    rt_size_t res;
    char status;
    struct urequest setup;
    int timeout = USB_TIMEOUT_BASIC;

    RT_ASSERT(device != RT_NULL);

    setup.request_type = USB_REQ_TYPE_DIR_IN | USB_REQ_TYPE_CLASS | USB_RECIP_INTERFACE;
    setup.bRequest = USBLP_REQ_GET_STATUS;
    setup.wIndex = (intf << 8) | alts;
    setup.wLength = 1;
    setup.wValue = 0;

    //setup
    res = rt_usb_hcd_setup_xfer(device->hcd, device->pipe_ep0_out, &setup, timeout);
    if (res != 8)
    {
        return RT_ERROR;
    }
    //in
    res = rt_usbh_printer_hcd_pipe_xfer(device->hcd, device->pipe_ep0_in, &status, 1, timeout);
    if (res == 0)
    {
        return RT_ERROR;
    }
    //out
    rt_usbh_printer_hcd_pipe_xfer(device->hcd, device->pipe_ep0_out, RT_NULL, 0, timeout);

    RT_DEBUG_LOG(RT_DEBUG_USB, ("printer status=%x\n", status));

    if (status & PRINTER_SELECTED)
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("\tPrinter is Selected\n"));
    }
    else
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("\tPrinter is NOT Selected\n"));
    }
    if (status & PRINTER_PAPER_EMPTY)
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("\tPaper is Out\n"));
    }
    else
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("\tPaper is Loaded\n"));
    }
    if (status & PRINTER_NOT_ERROR)
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("\tPrinter OK\n"));
    }
    else
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("\tPrinter Error\n"));
    }

    return res;
}

/**
 * This function will do USBLP_REQ_GET_ID' bRequest for the printer device instance,
 *
 * @param device the usb device instance.
 * @param intf the interface number.
 * @param alts the alternate setting number.
 * @param buffer the data buffer to save requested data
 * @param nbytes the size of buffer
 *
 * @return the error code, RT_EOK on successfully.
 */
rt_size_t rt_usbh_get_printer_id_string(uinst_t device, int intf, int alts, void *buffer, int nbytes)
{
    rt_size_t res;
    struct urequest setup;

    RT_ASSERT(device != RT_NULL);

    setup.request_type = USB_REQ_TYPE_DIR_IN | USB_REQ_TYPE_CLASS | USB_RECIP_INTERFACE;
    setup.bRequest = USBLP_REQ_GET_ID;
    setup.wIndex = (intf << 8) | alts;
    setup.wLength = nbytes;
    setup.wValue = 0;

    //setup
    res = rt_usb_hcd_setup_xfer(device->hcd, device->pipe_ep0_out, &setup, USB_TIMEOUT_BASIC);
    if (res != 8)
    {
        return RT_ERROR;
    }
    //in
    res = rt_usbh_printer_hcd_pipe_xfer(device->hcd, device->pipe_ep0_in, buffer, nbytes, USB_TIMEOUT_BASIC);
    if (res == 0)
    {
        return RT_ERROR;
    }
    //out
    rt_usbh_printer_hcd_pipe_xfer(device->hcd, device->pipe_ep0_out, RT_NULL, 0, USB_TIMEOUT_BASIC);

    return res;
}

/**
 * This function will read data from usb printer device
 *
 * @param intf the interface instance.
 *
 * @return the error code, RT_EOK on successfully.
 */
rt_err_t rt_usbh_printer_open(rt_device_t device, rt_uint16_t oflag)
{
    uprinter_t printer;
    struct uhintf* intf;

    /* check parameter */
    RT_ASSERT(device != RT_NULL);

    intf = (struct uhintf*) device->user_data;
    printer = (uprinter_t) intf->user_data;

    if (printer->state != PRINTER_CLOSED)
    {
        return -RT_EBUSY;
    }

    printer->state = PRINTER_OPENED;

    return RT_EOK;
}

/**
 * This function will read data from usb printer device
 *
 * @param intf the interface instance.
 *
 * @return the error code, RT_EOK on successfully.
 */
rt_err_t rt_usbh_printer_close(rt_device_t device)
{
    uprinter_t printer;
    struct uhintf* intf;

    /* check parameter */
    RT_ASSERT(device != RT_NULL);

    intf = (struct uhintf*) device->user_data;
    printer = (uprinter_t) intf->user_data;

    if (printer->state != PRINTER_OPENED)
    {
        return -RT_ERROR;
    }

    printer->state = PRINTER_CLOSED;

    return RT_EOK;
}

/**
 * This function will read data from usb printer device
 *
 * @param intf the interface instance.
 *
 * @return the error code, RT_EOK on successfully.
 */
static rt_size_t rt_usbh_printer_read(rt_device_t device, rt_off_t pos, void* buffer, rt_size_t size)
{
    uprinter_t printer;
    rt_size_t length;
    struct uhintf* intf;

    /* check parameter */
    RT_ASSERT(device != RT_NULL);
    RT_ASSERT(buffer != RT_NULL);

    intf = (struct uhintf*) device->user_data;
    printer = (uprinter_t) intf->user_data;

    if (printer->state != PRINTER_OPENED)
    {
        rt_set_errno(-RT_EIO);
        return 0;
    }

    length = rt_usbh_printer_hcd_pipe_xfer(intf->device->hcd, printer->pipe_in, buffer, size, USB_TIMEOUT_BASIC);

    rt_set_errno(RT_EOK);
    return length;

}

/**
 * This function will write data to usb printer device
 *
 * @param intf the interface instance.
 *
 * @return the error code, RT_EOK on successfully.
 */
static rt_size_t rt_usbh_printer_write(rt_device_t device, rt_off_t pos, const void* buffer, rt_size_t size)
{
    uprinter_t printer;
    rt_size_t length;
    struct uhintf* intf;

    /* check parameter */
    RT_ASSERT(device != RT_NULL);
    RT_ASSERT(buffer != RT_NULL);

    intf = (struct uhintf*) device->user_data;
    printer = (uprinter_t) intf->user_data;

    if (printer->state != PRINTER_OPENED)
    {
        rt_set_errno(-RT_EIO);
        return 0;
    }

    length = rt_usbh_printer_hcd_pipe_xfer(intf->device->hcd, printer->pipe_out, (void*) buffer, size, USB_TIMEOUT_BASIC);

    rt_set_errno(RT_EOK);
    return length;
}

#ifdef RT_USING_DEVICE_OPS
const static struct rt_device_ops printer_device_ops =
{
    RT_NULL;
    RT_NULL;
    RT_NULL;
    rt_usbh_printer_read;
    rt_usbh_printer_write;
    RT_NULL;
};
#endif

/**
 * This function will set an interface to the usb device.
 *
 * @param device the usb device instance.
 * @param intf the interface number.
 *
 * @return the error code, RT_EOK on successfully.
 */
rt_err_t rt_usbh_printer_set_interface(uinst_t device, int intf, int alts)
{
    struct urequest setup;
    int timeout = USB_TIMEOUT_BASIC;

    /* check parameter */
    RT_ASSERT(device != RT_NULL);

    setup.request_type = USB_REQ_TYPE_DIR_OUT | USB_REQ_TYPE_STANDARD |
    USB_REQ_TYPE_INTERFACE;
    setup.bRequest = USB_REQ_SET_INTERFACE;
    setup.wIndex = intf;
    setup.wLength = 0;
    setup.wValue = alts;

    if (rt_usb_hcd_setup_xfer(device->hcd, device->pipe_ep0_out, &setup, timeout) != 8)
    {
        return RT_ERROR;
    }

    return RT_EOK;
}

/**
 * This function will run adk class driver when usb device is detected and identified
 *  as a adk class device, it will continue the enumulate process.
 *
 * @param arg the argument.
 *
 * @return the error code, RT_EOK on successfully.
 */
static rt_err_t rt_usbh_printer_enable(void* arg)
{
    int i = 0;
    uprinter_t printer;
    struct uhintf* intf = (struct uhintf*) arg;
    udev_desc_t dev_desc;
    rt_err_t ret;

    /* parameter check */
    if (intf == RT_NULL)
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("the interface is not available\n"));
        return -RT_EIO;
    }

    RT_DEBUG_LOG(RT_DEBUG_USB, ("rt_usbh_printer_run\n"));

    dev_desc = &intf->device->dev_desc;

    if (intf->intf_desc->bInterfaceProtocol < USBLP_FIRST_PROTOCOL
            || intf->intf_desc->bInterfaceProtocol > USBLP_LAST_PROTOCOL)
        return -RT_ERROR;

    printer = rt_malloc(sizeof(struct uprinter));
    RT_ASSERT(printer != RT_NULL);

    /* initilize the data structure */
    rt_memset(printer, 0, sizeof(struct uprinter));
    intf->user_data = (void *) printer;

    // set default status
    printer->state = PRINTER_CLOSED;

    for (i = 0; i < intf->intf_desc->bNumEndpoints; i++)
    {
        uep_desc_t ep_desc;

        /* get endpoint descriptor from interface descriptor */
        rt_usbh_get_endpoint_descriptor(intf->intf_desc, i, &ep_desc);
        if (ep_desc == RT_NULL)
        {
            RT_DEBUG_LOG(RT_DEBUG_USB, ("rt_usb_get_endpoint_descriptor error\n"));
            return -RT_ERROR;
        }

        /* the endpoint type of printer class should be BULK */
        if ((ep_desc->bmAttributes & USB_EP_ATTR_TYPE_MASK) != USB_EP_ATTR_BULK)
            continue;

        /* allocate pipes according to the endpoint type */
        if (ep_desc->bEndpointAddress & USB_DIR_IN)
        {
            /* allocate an in pipe for the printer instance */
            ret = rt_usb_hcd_alloc_pipe(intf->device->hcd, &printer->pipe_in, intf->device, ep_desc);
            if (ret != RT_EOK)
                return ret;
        }
        else
        {
            /* allocate an output pipe for the printer instance */
            ret = rt_usb_hcd_alloc_pipe(intf->device->hcd, &printer->pipe_out, intf->device, ep_desc);
            if (ret != RT_EOK)
                return ret;
        }
    }

    /* check pipes infomation */
    if (printer->pipe_out == RT_NULL)
    {
        RT_DEBUG_LOG(RT_DEBUG_USB, ("pipe error, unsupported device\n"));
        return -RT_ERROR;
    }

    ret = rt_usbh_printer_set_interface(intf->device, intf->intf_desc->iInterface, intf->intf_desc->bAlternateSetting);
    if (ret != RT_EOK)
    {
        return ret;
    }

    // malloc printer device id
    printer->device_id_string = rt_malloc(USBLP_DEVICE_ID_SIZE);
    RT_ASSERT(printer->device_id_string != RT_NULL);

    /* initilize the string */
    rt_memset(printer->device_id_string, 0, USBLP_DEVICE_ID_SIZE);

    // get device id string
//    rt_usbh_get_printer_id_string(intf->device, intf->intf_desc->iInterface, intf->intf_desc->bAlternateSetting,
//            printer->device_id_string, USBLP_DEVICE_ID_SIZE - 1);
//
//    rt_usbh_get_printer_status(intf->device, intf->intf_desc->iInterface, intf->intf_desc->bAlternateSetting);

    rt_kprintf("find usblp[%s] idVendor=%x:%x\n", printer->device_id_string + 2, dev_desc->idVendor,
            dev_desc->idProduct);

    /* register printer device */
    rt_sprintf(printer->name, "prn%d", intf->device->port);

    printer->device.type = RT_Device_Class_Char;
#ifdef RT_USING_DEVICE_OPS
    printer->device.ops = &printer_device_ops;
#else
    printer->device.init = RT_NULL;
    printer->device.open = rt_usbh_printer_open;
    printer->device.close = rt_usbh_printer_close;
    printer->device.read = rt_usbh_printer_read;
    printer->device.write = rt_usbh_printer_write;
    printer->device.control = RT_NULL;
#endif
    printer->device.user_data = (void*) intf;

    ret = rt_device_register(&printer->device, printer->name, RT_DEVICE_FLAG_RDWR);
    if (ret != RT_EOK)
    {
        return ret;
    }

    return RT_EOK;
}

/**
 * This function will be invoked when usb device plug out is detected and it would clean
 * and release all hub class related resources.
 *
 * @param arg the argument.
 *
 * @return the error code, RT_EOK on successfully.
 */
static rt_err_t rt_usbh_printer_disable(void* arg)
{
    uprinter_t printer;
    struct uhintf* intf = (struct uhintf*) arg;

    RT_ASSERT(intf != RT_NULL);

    RT_DEBUG_LOG(RT_DEBUG_USB, ("rt_usbh_printer_stop\n"));

    printer = (uprinter_t) intf->user_data;
    if (printer == RT_NULL)
    {
        rt_free(intf);
        return RT_EOK;
    }

    if (printer->state != PRINTER_CLOSED)
        printer->state = PRINTER_CLOSED;

    if (printer->pipe_in != RT_NULL)
        rt_usb_hcd_free_pipe(intf->device->hcd, printer->pipe_in);

    if (printer->pipe_out != RT_NULL)
        rt_usb_hcd_free_pipe(intf->device->hcd, printer->pipe_out);

    if (printer->device_id_string != RT_NULL)
        rt_free(printer->device_id_string);

    /* unregister printer device */
    rt_device_unregister(&printer->device);

    /* free printer instance */
    if (printer != RT_NULL)
    {
        rt_free(printer);
    }

    return RT_EOK;
}

/**
 * This function will register printer class driver to the usb class driver manager.
 * and it should be invoked in the usb system initialization.
 *
 * @return the error code, RT_EOK on successfully.
 */
ucd_t rt_usbh_class_driver_printer(void)
{
    printer_driver.class_code = USB_CLASS_PRINTER;
    printer_driver.subclass_code = USB_CLASS_PRINTER;

    printer_driver.enable = rt_usbh_printer_enable;
    printer_driver.disable = rt_usbh_printer_disable;

    return &printer_driver;
}

#endif //RT_USBH_PRINTER
