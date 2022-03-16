/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-03-15     Tuber      first version
 */

#ifndef __PRINTER_H__
#define __PRINTER_H__

#include <rtthread.h>

struct uprinter
{
    char name[8];
    char *device_id_string;

    upipe_t pipe_in;
    upipe_t pipe_out;

    char state;

    struct rt_device device;
};
typedef struct uprinter *uprinter_t;

#define PRINTER_OPENED 1
#define PRINTER_CLOSED 0

#define USBLP_FIRST_PROTOCOL	1
#define USBLP_LAST_PROTOCOL	3
#define USBLP_MAX_PROTOCOLS	(USBLP_LAST_PROTOCOL+1)

#define USBLP_REQ_GET_ID			0x00
#define USBLP_REQ_GET_STATUS			0x01
#define USBLP_REQ_RESET				0x02

#define USBLP_DEVICE_ID_SIZE	1024

#define USB_RECIP_INTERFACE		0x01

#define PRINTER_NOT_ERROR	0x08
#define PRINTER_SELECTED	0x10
#define PRINTER_PAPER_EMPTY	0x20

ucd_t rt_usbh_class_driver_printer(void);

#endif

