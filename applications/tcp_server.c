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
#include <sys/socket.h>
#include <netdb.h>
#include <string.h>
#include <finsh.h>
#include <errno.h>
#include <sys/time.h>

#define PRINTER_BUF_SIZE    1024
#define PRINTER_TCP_PORT	9100

rt_err_t printer_tcp_server_one_job()
{
    char *buf;
    socklen_t sin_size;
    int server, client, bytes_received;
    struct sockaddr_in server_addr, client_addr;
    int ret;
    int optval;
    int nrecv = 0;
    rt_device_t printer_dev;
    struct timeval timeout = { 0, 1 };

    server = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (server == -1)
    {
        rt_kprintf("Socket error\n");
        return -RT_ERROR;
    }

    optval = 1;
    ret = setsockopt(server, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));
    if (ret == -1)
    {
        rt_kprintf("Setsockopt error\n");
        closesocket(server);
        return -RT_ERROR;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PRINTER_TCP_PORT);
    server_addr.sin_addr.s_addr = INADDR_ANY;
    rt_memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    ret = bind(server, (struct sockaddr *) &server_addr, sizeof(struct sockaddr));
    if (ret == -1)
    {
        rt_kprintf("Unable to bind %d %d\n", ret, rt_get_errno());
        closesocket(server);
        return -RT_ERROR;
    }

    if (listen(server, 5) == -1)
    {
        rt_kprintf("Listen error\n");
        closesocket(server);
        return -RT_ERROR;
    }

    rt_kprintf("Prnd Server Waiting for client on port 9100\n");

    sin_size = sizeof(struct sockaddr_in);
    client = accept(server, (struct sockaddr *) &client_addr, &sin_size);
    if (client < 0)
    {
        rt_kprintf("accept connection failed! errno = %d\n", errno);
        closesocket(server);
        return -RT_ERROR;
    }

    ret = closesocket(server);

    // set timeout
    ret = setsockopt(client, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
    if (ret == -1)
    {
        closesocket(client);
        return -RT_ERROR;
    }

    rt_kprintf("I got a connection from (%s , %d)\n", inet_ntoa(client_addr.sin_addr), ntohs(client_addr.sin_port));

    //open printer and write data
    printer_dev = rt_device_find("prn1");
    if (!printer_dev)
    {
        rt_kprintf("find %s failed!\n", "prn1");
        closesocket(client);
        return -RT_ERROR;
    }

    ret = rt_device_open(printer_dev, RT_DEVICE_OFLAG_RDWR);
    if (ret != RT_EOK)
    {
        rt_kprintf("could not open printer\n");
        closesocket(client);
        return -RT_ERROR;
    }

    buf = rt_malloc(PRINTER_BUF_SIZE);
    if (buf == NULL)
    {
        rt_kprintf("malloc buf failed\n");
        closesocket(client);
        return -RT_ENOMEM;
    }

    while (1)
    {
        //read from printer
//        bytes_received = rt_device_read(printer_dev, 0, buf, PRINTER_BUF_SIZE);
//        if (bytes_received <= 0 && rt_get_errno() != RT_EOK)
//        {
//            break;
//        }
//        else if (bytes_received > 0)
//        {
//            rt_kprintf("usb recv[%d]\n", bytes_received);
//            send(client, buf, bytes_received, 0); //write to tcp client
//        }

        //read data from tcp server
        bytes_received = recv(client, buf, PRINTER_BUF_SIZE, 0);
        if (bytes_received <= 0 && rt_get_errno() != 18)
        {
            break;
        }
        else if (bytes_received > 0)
        {
            rt_kprintf("client recv[%d]\n", bytes_received);
            rt_device_write(printer_dev, 0, buf, bytes_received); //write to printer
            nrecv += bytes_received;
        }
    }

    rt_kprintf("\n nrecv %d = %d \r\n", nrecv);

    rt_free(buf);

    rt_device_close(printer_dev);

    closesocket(client);

    return RT_EOK;
}

void printer_tcp_server_task(void *arg)
{
    while (1)
    {
        if (printer_tcp_server_one_job() == RT_EOK)
        {
            continue;
        };
        rt_thread_mdelay(100);
    }
}

int printer_tcp_server_init(void)
{
    rt_thread_t thread = rt_thread_create("prnd", printer_tcp_server_task, RT_NULL, 2048, 15, 20);
    if (thread == RT_NULL)
    {
        rt_kprintf("start printer tcp server failed\n");
    }

    rt_thread_startup(thread);
    return 0;
}
INIT_APP_EXPORT(printer_tcp_server_init);

