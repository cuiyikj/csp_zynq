/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */
#define ENABLE_NET   0

#include <stdio.h>
#include "xparameters.h"


#include "platform.h"
#include "xil_printf.h"


#include "gpio.h"

#include "led.h"
#include "comlib.h"
#include "sleep.h"
#include "spi_ps.h"
#include "ads1298.h"
#include "ps_uart.h"
#include "xscugic.h"
#include "adc_queue.h"



extern uint8_t adc_buf_index_current;


uint8_t int_flag = 0;
XScuGic g_intc;
/* defined by each RAW mode application */





uint32_t loop_index = 0;



//int32_t lead_I = 0;
//int32_t lead_II = 0;
//int32_t lead_III = 0;
//int32_t aVL = 0;
//int32_t aVR = 0;
//int32_t aVF= 0;

// Lead I: RA (-) to LA (+) (Right Left, or lateral)
// Lead II: RA (-) to LL (+) (Superior Inferior)
// Lead III: LA (-) to LL (+) (Superior Inferior)

// Lead aVR: RA (+) to [LA & LL] (-) (Rightward)
// Lead aVL: LA (+) to [RA & LL] (-) (Leftward)
// Lead aVF: LL (+) to [RA & LA] (-) (Inferior)

// Leads V1, V2, V3: (Posterior Anterior)
// Leads V4, V5, V6:(Right Left, or lateral)



extern uint8_t adc_ready;




extern uint8_t reg_ini_normal[25];
uint8_t read_spi = 0;
uint8_t ret = 0;

uint8_t spi_index = 0;

ECG_ADC adc_data;
ECG_ADC read_adc_data;


int32_t adc_ecg_detail[32];

uint8_t uart_index = 0;

uint8_t read_adc_once;

int main()
{
    //int status=XST_SUCCESS;
    //int Index;



    init_platform(&g_intc);

    //Xil_SetTlbAttributes(SHARE_BASE, 0x14de2);
    //Xil_SetTlbAttributes(CPU1_COPY_ADDR, 0x14de2);
    print("\r\n\r\n");
    //start_cpu1();
    print("***** CPS tester start ******\r\n");

    ps_uart_init();
    ps_intrrupt_init(&g_intc);
	printf("uart init\r\n");

    main_led_gpio_init();
	printf("led init\r\n");

    main_gpio_init();
	printf("gpio init\r\n");
    gpio_intrrupt_init(&g_intc);
	printf("gpio interrupt init\r\n");

    spi_ps_init();
	printf("spi init\r\n");


    //platform_enable_interrupts();
	//printf("enable interrupt\r\n");


    ADS_reset();
    ADS_Init(reg_ini_normal);

//    while(1)
//    {
//    	  ADS_getDeviceID();
//        usleep(1000);
//    }

	ADS_START();
	ADS_RDATAC();
	printf("ADS 1298 init\r\n");

	printf("start loop\r\n");
	read_adc_once = 1;
	while(1)
	{
		if (READ_SPI_READY() == 0)
		{
			//printf("spi ready 0\r\n");
			if (read_adc_once == 1)
			{
				ADS_RDATA();
				read_adc_once = 0;
			}


		}
		else
		{
			//printf("spi ready 1\r\n");
			read_adc_once = 1;
		}
//        if (adc_ready == 1)
//        {
//        	//if (tcp_adc_transfer)
//        	{
//        		//tcp_transfer_adc_data();
//        	}
//
//        	printf("adc %d ready %d\r\n",  adc_buf_index_current, sizeof(ADC_BUF));
//        	adc_ready = 0;
//        }
		process_uart_cmd();
    	loop_index++;

    }

    cleanup_platform();
    return 0;
}
