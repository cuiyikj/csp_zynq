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

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "gpio.h"
#include "led.h"
#include "comlib.h"
#include "sleep.h"
#include "spi_ps.h"
#include "ads1298.h"
#include "ps_uart.h"



uint32_t loop_index = 0;
int32_t adc_data[16] = {0};

int main()
{
	int i;

    init_platform();
    print("\r\n\r\n");
    //start_cpu1();
    print("***** CPS tester start ******\r\n");

    ps_uart_init();
    main_led_gpio_init();
    main_gpio_init();
    spi_ps_init();
	printf("spi ready %d\n\r", read_gpio(0));



    ADS_reset();
    ADS_Init();


    while(1)
    {

    	ADS_START();
    	usleep(2);
    	ADS_RDATA();
    	ps_uart_sent_adc((uint8_t*)adc_data, 32);

    	usleep(610);

    	if (loop_index%1000 == 0)
    	{
    		flash_led();
			printf("*** read adc\n\r");
			for( int i = 0; i < 8; i++)
			{
				double temp = 0;
				if (adc_data[i] <= 0x7fffff)
				{
					temp = (double)adc_data[i]/(double)0x7fffff;
				}
				else
				{
					temp = (double)adc_data[i]/(double)0x7fffff;
				}

				printf("new acd%d = %x: %f\r\n", i+1, (uint)adc_data[i], temp);
			}
			printf("\r\n");

    	}
    	loop_index++;
    	//    	printf("*****read adc\n\r");
    	//    	for( int i = 0; i < 8; i++)
    	//    	{
    	//        	printf("acd%d= %x \r\n", i,adc_data[i]);
    	//    	}
    	//    	printf("\r\n");
    	//    	sleep(1);
    }
    cleanup_platform();
    return 0;
}