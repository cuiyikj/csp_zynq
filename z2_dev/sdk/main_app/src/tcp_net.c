/*
 * Copyright (C) 2009 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif
#include "comlib.h"
#include "sleep.h"
#include "hw_if.h"

#include "time.h"
#include "tcp_net.h"

//const uint16_t port_adc = 1000;
//const uint16_t port_icd = 77;

struct tcp_pcb *tpcb_send_adc;
struct tcp_pcb *tpcb_send_icd;

uint8_t tcp_adc_transfer = 0;
uint8_t tcp_icd_transfer = 0;

extern XScuGic g_intc;

CIRCULAR_BUF_t tcp_adc_cb =
{
	.head = 0,
	.tail = 0,
};
uint8_t  tcp_data[256];
static uint8_t* arm_to_mb_base_mem = (uint8_t*)ARM_TO_MB_ADDRESS;



//int tcp_transfer_icd_data(uint8_t * buf, uint16_t len)
//{
//	uint8_t ret = 1;
//	if (tcp_icd_transfer)
//	{
//		while(ret)
//		{
//			uint8_t temp = tcp_write(tpcb_send_icd, buf, len, 1);
//			//printf("tcp_transfer_icd_data %d/r/n", len);
//			if (temp == -1)
//			{
//				usleep(100);
//			}
//			else
//			{
//				ret = 0;
//			}
//		}
//	}
//
//    return 0;
//}

uint32_t t_test = 0;
int tcp_transfer_adc_data(uint8_t * buf, uint16_t len)
{
	uint8_t ret = 1;
	if (tcp_adc_transfer)
	{

		while(ret)
		{
			uint8_t temp = tcp_write(tpcb_send_adc, buf, len, 1);
			if (temp == -1)
			{
				usleep(100);
			}
			else
			{
				ret = 0;
			}
		}

		t_test++;
		//xil_printf("send adc t_test %d\n\r",t_test);
	}
    return 0;
}


void print_app_header()
{
#if (LWIP_IPV6==0)
    xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
#else
    xil_printf("\n\r\n\r-----lwIPv6 TCP echo server ------\n\r");
#endif
    xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

err_t recv_callback_adc(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
    /* do not read the packet if we are not in ESTABLISHED state */
    if (!p) 
    {
        tcp_close(tpcb);
        tcp_recv(tpcb, NULL);
        return ERR_OK;
    }

    /* indicate that the packet has been received */
    tcp_recved(tpcb, p->len);

  	printf("recv_callback_adc %d\r\n", p->len);
	circular_buf_put_n(&tcp_adc_cb, p->payload, p->len);

    /* free the received pbuf */
    pbuf_free(p);

    return ERR_OK;
}
//err_t recv_callback_icd(void *arg, struct tcp_pcb *tpcb,
//                               struct pbuf *p, err_t err)
//{
//    /* do not read the packet if we are not in ESTABLISHED state */
//    if (!p)
//    {
//        tcp_close(tpcb);
//        tcp_recv(tpcb, NULL);
//        return ERR_OK;
//    }
//
//    /* indicate that the packet has been received */
//    tcp_recved(tpcb, p->len);
//   	printf("recv_callback_icd %d\r\n", p->len);
//
//
//    //circular_buf_put_n(&tcp_adc_cb, p->payload, p->len);
//
//    /* free the received pbuf */
//    pbuf_free(p);
//
//    return ERR_OK;
//}
err_t accept_callback_adc(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    static int connection = 1;
    xil_printf("accept_callback_adc\n\r");
    /* set the receive callback for this connection */
    tcp_recv(newpcb, recv_callback_adc);
    tpcb_send_adc = newpcb;
    tcp_adc_transfer = 1;
    /* just use an integer number indicating the connection id as the
       callback argument */
    tcp_arg(newpcb, (void*)(UINTPTR)connection);

    /* increment for subsequent accepted connections */
    connection++;

    return ERR_OK;
}


//err_t accept_callback_icd(void *arg, struct tcp_pcb *newpcb, err_t err)
//{
//    static int connection_icd = 1;
//    xil_printf("accept_callback_icd\n\r");
//    /* set the receive callback for this connection */
//    tcp_recv(newpcb, recv_callback_icd);
//    tpcb_send_icd = newpcb;
//    tcp_icd_transfer = 1;
//    /* just use an integer number indicating the connection id as the
//       callback argument */
//    tcp_arg(newpcb, (void*)(UINTPTR)connection_icd);
//
//    /* increment for subsequent accepted connections */
//    connection_icd++;
//
//    return ERR_OK;
//}


int start_application()
{
    struct tcp_pcb *pcb_adc;
    struct tcp_pcb *pcb_icd;
    err_t err;
    *arm_to_mb_base_mem = 0;

    /* create new TCP PCB structure */
    pcb_adc = tcp_new_ip_type(IPADDR_TYPE_ANY);
    if (!pcb_adc) {
        xil_printf("Error creating PCB. Out of Memory\n\r");
        return -1;
    }
    /* bind to specified @port */
    err = tcp_bind(pcb_adc, IP_ANY_TYPE, TCP_ADC_PORT);
    if (err != ERR_OK) 
    {
        xil_printf("Unable to bind to port %d: err = %d\n\r", TCP_ADC_PORT, err);
        return -2;
    }

    /* we do not need any arguments to callback functions */
    tcp_arg(pcb_adc, NULL);

    /* listen for connections */
    pcb_adc = tcp_listen(pcb_adc);
    if (!pcb_adc)
    {
        xil_printf("Out of memory while tcp_listen\n\r");
        return -3;
    }

    /* specify callback to use for incoming connections */
    tcp_accept(pcb_adc, accept_callback_adc);

    xil_printf("TCP ADC server started @ port %d\n\r", TCP_ADC_PORT);
    tcp_adc_transfer = 0;



    /* create new TCP PCB structure */
//    pcb_icd = tcp_new_ip_type(IPADDR_TYPE_ANY);
//    if (!pcb_icd) {
//        xil_printf("Error creating PCB. Out of Memory\n\r");
//        return -1;
//    }
//    /* bind to specified @port */
//    err = tcp_bind(pcb_icd, IP_ANY_TYPE, port_icd);
//    if (err != ERR_OK)
//    {
//        xil_printf("Unable to bind to port %d: err = %d\n\r", port_icd, err);
//        return -2;
//    }
//
//    /* we do not need any arguments to callback functions */
//    tcp_arg(pcb_icd, NULL);
//
//    /* listen for connections */
//    pcb_icd = tcp_listen(pcb_icd);
//    if (!pcb_icd)
//    {
//        xil_printf("Out of memory while tcp_listen\n\r");
//        return -3;
//    }
//
//    /* specify callback to use for incoming connections */
//    tcp_accept(pcb_icd, accept_callback_icd);
//
//    xil_printf("TCP ICD Tester started @ port %d\n\r", port_icd);
//    tcp_icd_transfer = 0;
    return 0;
}



void process_tcp_adc(void)
{
	//if (*arm_to_mb_base_mem == 0)
	{
		if (!circular_buf_empty(&tcp_adc_cb))
		{
			uint8_t tcp_index = 0;
			uint8_t tcp_cmd = 0;
			while (circular_buf_get(&tcp_adc_cb, &tcp_data[tcp_index])==0 && tcp_index <=8)
			{
				tcp_index++;
			}
			printf("tcp recv:\r\n");
			for (int i = 0; i< tcp_index; i++)
			{
				printf("%x ", tcp_data[i]);
			}
			printf("\r\n uart recv done\r\n");

			if (tcp_data[0] == 0x02 && tcp_data[1] == 0x5a)
			{
				uint16_t read_crc16, crc16;
				crc16 = crc16_compute(&tcp_data[0], 6, NULL);

				read_crc16 = tcp_data[6] + tcp_data[7]*256;
				if (read_crc16 == crc16)
				{
					printf("COMMAND %d  len =%d\r\n", tcp_data[2], tcp_index);

					memcpy(arm_to_mb_base_mem, tcp_data, tcp_index);
					tcp_cmd = tcp_data[2];

					switch(tcp_cmd)
					{
					case CMD_MESSURE_LEAD:
						//ADS_reset();
						//ADS_Init(reg_ini_normal);

						printf("CMD_MESSURE_LEAD\r\n");
					break;
					case CMD_TEST_NOISE:
						//ADS_reset();
						//ADS_Init(reg_ini_noise);
						printf("CMD_TEST_NOISE\r\n");
					break;
					case CMD_CALIBRATE:
						//ADS_reset();
						//ADS_Init(reg_ini_calibrate);
						printf("CMD_TEST_NOISE\r\n");
					break;
					}

				}
				else
				{
					printf("CRC error %x %x\r\n", read_crc16, crc16);
				}

			}

		}
	}
//	else
//	{
//		printf("mb do not read cmd \r\n");
//	}
}
