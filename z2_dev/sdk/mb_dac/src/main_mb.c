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
#include "xgpio.h"

#include "xintc.h"
#include "xtmrctr.h"
#include "xil_exception.h"


#include "sleep.h"
#include "comlib.h"

#include "hw_if.h"
#include "axi_spi.h"
#include "gpio.h"
#include "ads1298.h"
#include "mb_mem.h"

#define TMRCTR_DEVICE_ID		XPAR_TMRCTR_0_DEVICE_ID
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID
#define TMRCTR_INTERRUPT_ID		XPAR_INTC_0_TMRCTR_0_VEC_ID
#define TIMER_CNTR_0			0
#define TIMER_VALUE_1US			10000 //0.1ms
#define RESET_VALUE				50000 //0.5ms


extern volatile uint8_t  ADC_flag;
extern uint8_t DRDY_flag;
extern uint8_t enable_adc_isr;

extern int32_t channelData_seq [ECG_CHANNEL_SIZE];


XGpio led_device;
XTmrCtr TimerCounterInst;
XIntc InterruptController;



uint32_t dac_loop = 0;
uint32_t dac_loop_100us = 0;
uint32_t dac_loop_100us2 = 0;
uint32_t dac_loop_ms = 0;

uint32_t led_loop = 0;
volatile int TimerExpired;

uint8_t  mb_data[256];

uint32_t timer_value = TIMER_VALUE_1US;

uint32_t dac_loop_timer_0 = 0;
uint32_t dac_loop_timer_2 = 0;
uint32_t pre_timer_0 = 0;
uint32_t pre_timer_2 = 0;
uint32_t dac_loop_debug = 0;
uint32_t pre_loop_debug = 0;

uint8_t test_cmd[14]= {0xff, 0xfe, 0x0c, 0x00, 0x01, 0x01, 0x8, 0x60, 0x00, 0x00, 0x00, 0x40, 0x00, 0xb6};

static uint8_t* arm_to_mb_base_mem = (uint8_t*)ARM_TO_MB_ADDRESS;
//static uint8_t* mb_to_arm_base_mem = (uint8_t*)MB_TO_ARM_ADDRESS;

void process_command(void);
void TimerCounterHandler(void *CallBackRef, u8 TmrCtrNumber);

void test_command(void)
{
//	uint16_t len = 14;
//
//	for (int i = 0; i< len; i++)
//	{
//		xil_printf("%x ", test_cmd[i]);
//		RX_Buffer_Full_Callback(&test_cmd[i]);
//
//	}
//	xil_printf("\r\n test_command\r\n");
//	DBG_rx_cmd_buffer(len);

}
extern u8 ReadBuffer[256];
extern int32_t channelData [ECG_CHANNEL_SIZE];

uint32_t loop_index = 0;
int main()
{
	//uint8_t read_once;

	//int ret = 0;
    //uint32_t pre_led_loop = 0;


	/* Initialization */
	//XStatus  status;
	// 1. Platform
  	init_platform();
	print("Platform initialized \r\n");

	mb_gpio_init();

	axi_spi_init();

	print("ALL PASS \r\n");
	mb_mem_init();
	/*
	 * Transmit the data.
	 */
//	while (1)
//	{
//		SPI_0_CS_LOW();
//		ret = spi_tansfer();
//		SPI_0_CS_HIGH();
//		//xil_printf("ret %d \r\n", ret);
//	}
//    while(1)
//    {
//    	uint8_t data = ADS_RREG(0);
//    	xil_printf("\n\rDevice ID %x\n\r", data);
//    	sleep(1);
//    }


    ADS_reset();

    ADS_Init(reg_ini_normal);
	ADS_START();
	ADS_RDATAC();

	//read_once = 1;

	//test_command();
	while(1)
	{
		loop_index++;
		//xil_printf("read adc\r\n");
		if (ADC_flag != 0)
		{
	        INT_GPIO_LOW();
	        //usleep(1);
	        INT_GPIO_HIGH();
//			ADS_RDATA();
			ADC_flag = 0;
			//xil_printf("read adc\r\n");


		}
		if (loop_index%1000 == 0)
		{
			//xil_printf("check CMD\r\n");
			if (*arm_to_mb_base_mem != 0)
			{
				xil_printf("New CMD\r\n");
				process_command();
				*arm_to_mb_base_mem = 0;

			}

		}
	}

    cleanup_platform();
    return 0;
}




void process_command(void)
{
	//uint16_t len = 0;

	memcpy(mb_data, arm_to_mb_base_mem, 8);
//	len =  mb_data[2] + 6;
//	xil_printf("uart recv: %d\r\n", len);
//
//	if (len >  8)
//	{
//		memcpy(mb_data, arm_to_mb_base_mem, len);
//	}
//	for (int i = 0; i< len; i++)
//	{
//		xil_printf("%x ", mb_data[i]);
//		//RX_Buffer_Full_Callback(&mb_data[i]);
//	}
	*arm_to_mb_base_mem = 0;



	if (mb_data[0] == 0x02 && mb_data[1] == 0x5a)
	{
		xil_printf("MB COMMAND %d \r\n", mb_data[2]);
	    uint8_t  uart_cmd;

		uint16_t read_crc16, crc16;
		crc16 = crc16_compute(&mb_data[0], 6, NULL);

		read_crc16 = mb_data[6] + mb_data[7]*256;
		if (read_crc16 == crc16)
		{
			uart_cmd = mb_data[2];

			switch(uart_cmd)
			{
			case CMD_MESSURE_LEAD:
				ADS_reset();
				ADS_Init(reg_ini_normal);
				ADS_START();
				ADS_RDATAC();

				xil_printf("CMD_MESSURE_LEAD\r\n");
			break;
			case CMD_TEST_NOISE:
				ADS_reset();
				ADS_Init(reg_ini_noise);
				ADS_START();
				ADS_RDATAC();
				xil_printf("CMD_TEST_NOISE\r\n");
			break;
			case CMD_CALIBRATE:
				ADS_reset();
				ADS_Init(reg_ini_calibrate);
				ADS_START();
				ADS_RDATAC();
				xil_printf("CMD_TEST_NOISE\r\n");
			break;
			case CMD_SPS_1K:
				ADS_reset();
				reg_ini_normal[0] = 0x85;
				ADS_Init(reg_ini_normal);
				ADS_START();
				ADS_RDATAC();
			break;
			case CMD_SPS_2K:
				ADS_reset();
				reg_ini_normal[0] = 0x84;
				ADS_Init(reg_ini_normal);
				ADS_START();
				ADS_RDATAC();
			break;
			case CMD_SPS_4K:
				ADS_reset();
				reg_ini_normal[0] = 0x83;
				ADS_Init(reg_ini_normal);
				ADS_START();
				ADS_RDATAC();
			break;
			case CMD_SPS_8K:
				ADS_reset();
				reg_ini_normal[0] = 0x82;
				ADS_Init(reg_ini_normal);
				ADS_START();
				ADS_RDATAC();
			break;
			case CMD_SPS_START:
			    ADS_Init(reg_ini_normal);

				ADS_START();
				ADS_RDATAC();
				xil_printf("CMD_SPS_START\r\n");
			break;

			}

		}
		else
		{
			xil_printf("CRC error %x %x\r\n", read_crc16, crc16);
		}

	}

}

