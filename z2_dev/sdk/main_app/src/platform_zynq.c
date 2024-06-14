/*
 * Copyright (C) 2010 - 2019 Xilinx, Inc.
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
/*
* platform_zynq.c
*
* Zynq platform specific functions.
*
* 02/29/2012: UART initialization is removed. Timer initializations are
* removed. All unnecessary include files and hash defines are removed.
* 03/01/2013: Timer initialization is added back. Support for SI #692601 is
* added in the timer callback. The SI #692601 refers to the following issue.
*
* The EmacPs has a HW bug on the Rx path for heavy Rx traffic.
* Under heavy Rx traffic because of the HW bug there are times when the Rx path
* becomes unresponsive. The workaround for it is to check for the Rx path for
* traffic (by reading the stats registers regularly). If the stats register
* does not increment for sometime (proving no Rx traffic), the function resets
* the Rx data path.
*
* </pre>
 */


#include "xparameters.h"
#include "xparameters_ps.h"	/* defines XPAR values */
#include "xil_cache.h"
#include "xscugic.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "platform.h"
#include "platform_config.h"
#include "netif/xadapter.h"
#ifdef PLATFORM_ZYNQ
#include "xscutimer.h"


#include "time.h"
#include "hw_if.h"


#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID		XPAR_SCUTIMER_DEVICE_ID
#define INTC_BASE_ADDR		XPAR_SCUGIC_0_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR	XPAR_SCUGIC_0_DIST_BASEADDR
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR

extern uint8_t start_new_ecg;
extern uint32_t update_dac_index;
extern uint8_t dac_update_flag;

static XScuTimer TimerInstance;

//VAUX 1  	near adc
//VAUX 5	ble
//VAUX 6	m2
//VAUX 8
//VAUX 9	m1
//VAUX 10
//VAUX 12
//VAUX 13 	high v
//VAUX 15 	m3
//Vp_Vn


//A0 VAUX 1  	near adc
//A1 VAUX 9		m1
//A2 VAUX 6		m2
//A3 VAUX 15 	m3
//A4 VAUX 5		ble
//A5 VAUX 13 	high v

uint64_t int_index = 0;
uint32_t slow_adc_index = 0;
uint32_t fast_adc_index = 0;


void timer_callback(XScuTimer * TimerInstance)
{
	int_index++;
    //1s
    if (int_index%100000 == 0)
    {
    	epoc_time_ready = 1;
    	epoch_time++;
    }
    //25ms
	// if (int_index%2500 == 0)
	// {
	// 	tcp_check_update = 1;
	// }
    
    //1ms
	if (int_index%100 == 0)
	{
		tcp_check_update = 1;
	}

	XScuTimer_ClearInterruptStatus(TimerInstance);
}

void platform_setup_timer(void)
{
	int Status = XST_SUCCESS;
	XScuTimer_Config *ConfigPtr;
	int TimerLoadValue = 0;

	ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,
			ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {

		xil_printf("In %s: Scutimer Cfg initialization failed...\r\n",
		__func__);
		return;
	}

	Status = XScuTimer_SelfTest(&TimerInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("In %s: Scutimer Self test failed...\r\n",
		__func__);
		return;

	}

	XScuTimer_EnableAutoReload(&TimerInstance);
	/*
	 * Set for 0.01 ms timeout.
	 */
	TimerLoadValue = XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 200000;
	//TimerLoadValue = 3250;

	XScuTimer_LoadTimer(&TimerInstance, TimerLoadValue);
	return;
}


void soft_intr_handler(void *CallbackRef)
{
	//xil_printf("This is CPU0,Soft Interrupt from CPU1\r\n");
    uint8_t header[16] = {0};
    uint32_t dac_index = 0;

    read_ddr(header, 16);
	switch (header[1])
	{
		case CMD_DAC_DONE:
		{
			printf("CMD_DAC_DONE \r\n");
		    start_new_ecg = 1;
			dac_update_flag = 2;
		}
		break;
		case CMD_DAC_UPDATE:
		{
        	memcpy(&dac_index, &header[8],  4);
        	update_dac_index = dac_index;
			//printf("CMD_DAC_UPDATE %ld\r\n", dac_index);
			dac_update_flag = 1;
		}
		break;
	}

    //rec_freq_flag = 0;
}

void platform_setup_interrupts(XScuGic *intc_ptr)
{
	XScuGic_Config *IntcConfig;
	IntcConfig=XScuGic_LookupConfig(INTC_DEVICE_ID);
	XScuGic_CfgInitialize(intc_ptr,IntcConfig,IntcConfig->CpuBaseAddress);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XScuGic_InterruptHandler,
			intc_ptr);
	Xil_ExceptionEnable();

	XScuGic_SetPriorityTriggerType(intc_ptr,TIMER_IRPT_INTR,16,1);

	XScuGic_Connect(intc_ptr,TIMER_IRPT_INTR,
			(Xil_ExceptionHandler)timer_callback,
			(void *)&TimerInstance);

	XScuGic_Enable(intc_ptr,TIMER_IRPT_INTR);



	XScuGic_Connect(intc_ptr, SOFT_INTR_ID_TO_CPU0, (Xil_ExceptionHandler)soft_intr_handler, (void *)intc_ptr);
	XScuGic_Enable(intc_ptr, SOFT_INTR_ID_TO_CPU0); //CPU0 int

	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);

}

//void platform_setup_interrupts(void)
//{
//	Xil_ExceptionInit();
//
//	XScuGic_DeviceInitialize(INTC_DEVICE_ID);
//
//	/*
//	 * Connect the interrupt controller interrupt handler to the hardware
//	 * interrupt handling logic in the processor.
//	 */
//	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
//			(Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler,
//			(void *)INTC_DEVICE_ID);
//	/*
//	 * Connect the device driver handler that will be called when an
//	 * interrupt for the device occurs, the handler defined above performs
//	 * the specific interrupt processing for the device.
//	 */
//	XScuGic_RegisterHandler(INTC_BASE_ADDR, TIMER_IRPT_INTR,
//					(Xil_ExceptionHandler)timer_callback,
//					(void *)&TimerInstance);
//	/*
//	 * Enable the interrupt for scu timer.
//	 */
//	XScuGic_EnableIntr(INTC_DIST_BASE_ADDR, TIMER_IRPT_INTR);
//
//
//
//	return;
//}

void platform_enable_interrupts()
{
	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	XScuTimer_EnableInterrupt(&TimerInstance);
	XScuTimer_Start(&TimerInstance);
	return;
}

void init_platform(XScuGic *IntcTimer)
{
	platform_setup_timer();

	platform_setup_interrupts(IntcTimer);

	return;
}

void cleanup_platform()
{
	Xil_ICacheDisable();
	Xil_DCacheDisable();
	return;
}
#endif


