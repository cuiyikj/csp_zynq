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

#include "xparameters.h"

#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/tcp.h"
#include "xil_cache.h"

#include "xscugic.h"
#include "xil_exception.h"
#include "sleep.h"
#include "xgpio.h"
#include "hw_if.h"
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif

#include "uart.h"

#include "time.h"

#include "xuartlite_l.h"
#include "xil_mmu.h"

#define UARTLITE_BASEADDR	   XPAR_UARTLITE_0_BASEADDR


#define CPU1_COPY_ADDR       0xfffffff0
#define CPU1_START_ADDR      0x10000000


#define sev()                __asm__("sev")


/*********************************************************************************/




XUartPs Uart_Ps_0;
XUartPs Uart_Ps_1;

uint8_t uart_recv_0[512];
uint8_t uart_recv_1[512];

uint8_t recv_total_byte_0;
uint8_t recv_total_byte_1;

uint8_t int_flag = 0;

XScuGic g_intc;
/* defined by each RAW mode application */
void print_app_header();
int start_application();

void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();


#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif





extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

void print_ip(char *msg, ip_addr_t *ip)
{
    print(msg);
    xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip), ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

    print_ip("Board IP: ", ip);
    print_ip("Netmask : ", mask);
    print_ip("Gateway : ", gw);
}

void start_cpu1(void)
{
	Xil_Out32(CPU1_COPY_ADDR, CPU1_START_ADDR);
	dmb();
	printf("satrt core1 \r\n");
     /* ����core1 */
	sev();
}


int main()
{
    int status=XST_SUCCESS;
    int Index;

    ip_addr_t ipaddr, netmask, gw;

    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    echo_netif = &server_netif;
    recv_total_byte_0 = 0;

    init_platform(&g_intc);
    Xil_SetTlbAttributes(CPU_SHARE_BASE, 0x14de2);
    print("\r\n\r\n");
    //start_cpu1();
    print("***** ICD tester start ******\r\n");

    status= Uart_Init(&Uart_Ps_0, &Uart_Ps_1);
    print("Uart_Init done\r\n");

    //status=Uart_Intrrupt_Init(&g_intc, &Uart_Ps_0, &Uart_Ps_1);
    //print("Uart_Intr_Init done\r\n");


#if ENABLE_NET
#if LWIP_DHCP==1
    ipaddr.addr = 0;
    gw.addr = 0;
    netmask.addr = 0;
#else
    /* initialize IP addresses to be used */
    IP4_ADDR(&ipaddr,  17, 17,   17, 17);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      17, 17,   17,  1);
#endif

    print_app_header();

    lwip_init();


    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(echo_netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) 
    {
        xil_printf("Error adding N/W interface\n\r");
        return -1;
    }

    netif_set_default(echo_netif);
#endif
    /* now enable interrupts */
    platform_enable_interrupts();

#if ENABLE_NET
    /* specify that the network if is up */
    netif_set_up(echo_netif);


#if (LWIP_DHCP==1)
    /* Create a new DHCP client for this interface.
     * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
     * the predefined regular intervals after starting the client.
     */
    dhcp_start(echo_netif);
    dhcp_timoutcntr = 24;

    while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
        xemacif_input(echo_netif);

    if (dhcp_timoutcntr <= 0) 
    {
        if ((echo_netif->ip_addr.addr) == 0) 
        {
            xil_printf("DHCP Timeout\r\n");
            xil_printf("Configuring default IP of 192.168.1.10\r\n");
            IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
            IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
            IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
        }
    }

    ipaddr.addr = echo_netif->ip_addr.addr;
    gw.addr = echo_netif->gw.addr;
    netmask.addr = echo_netif->netmask.addr;
#endif
    print_ip_settings(&ipaddr, &netmask, &gw);
    /* start the application (web server, rxtest, txtest, etc..) */
    start_application();
#endif


    icd_tester_init();

    XUartLite_SetControlReg(UARTLITE_BASEADDR, 0x3);
    main_gpio_init(&g_intc);

    printf("main_gpio_init \r\n");
    cb_adc_reset();
    //SD_Init();

    //sd_log_update(TEST_LOG, (uint8_t *)"\r\n*****   Power On   *****");

    //read_ecg_file_list();
    //start_ecg_dat("/data/100.DAT");
    /* receive and process packets */
    while (1) 
    {

         if (TcpFastTmrFlag)
         {
             tcp_fasttmr();
             TcpFastTmrFlag = 0;
         }
         if (TcpSlowTmrFlag)
         {
             tcp_slowtmr();
             TcpSlowTmrFlag = 0;
         }
         xemacif_input(echo_netif);

        //xil_printf("tcp loop\n\r");
        csp_tester_loop();
        //read_main_gpio_int();
    }

    /* never reached */
    cleanup_platform();

    return 0;
}
