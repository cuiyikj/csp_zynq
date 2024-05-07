
#include <stdio.h>
#include "platform.h"
#include "ps_uart.h"
/***************************** Include Files *********************************/
#include "xuartps.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xscugic.h"

#include "comlib.h"
/************************** Variable Definitions *****************************/
#define		UART_ID		XPAR_PS7_UART_0_DEVICE_ID
#define		UART_INT_ID	XPAR_XUARTPS_0_INTR
#define		SCU_ID		XPAR_SCUGIC_0_DEVICE_ID

#define ADC_UART_LEN 		36U

uint8_t adc_buf[ADC_UART_LEN];

uint8_t adc_seq = 0;

XUartPs_Config *uart_config;
XUartPs uart_inst;

XScuGic_Config *xscu_config;
XScuGic scu_inst;


void uart_Handler(void *callback){
	XUartPs *psuart = (XUartPs *)callback;
	u8 dec_rec;
	u32 status;
	//XUartPs_SendByte(XPAR_PS7_UART_1_BASEADDR,25);
	status = XUartPs_ReadReg(psuart->Config.BaseAddress,XUARTPS_IMR_OFFSET);
	status&= XUartPs_ReadReg(psuart->Config.BaseAddress,XUARTPS_ISR_OFFSET);
	if(status&XUARTPS_IXR_RXOVR)
	{
		dec_rec = XUartPs_RecvByte(XPAR_PS7_UART_0_BASEADDR);
		XUartPs_SendByte(XPAR_PS7_UART_0_BASEADDR,dec_rec);
		//清除中断标志位
		XUartPs_WriteReg(psuart->Config.BaseAddress, XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR);
		xil_printf("%x",XUartPs_ReadReg(psuart->Config.BaseAddress,XUARTPS_ISR_OFFSET));
	}
}

void ps_uart_init( void)
{
	int status;
	/* PS UART1 Initialization */
	uart_config = XUartPs_LookupConfig(UART_ID);
	status =  XUartPs_CfgInitialize(&uart_inst,
			uart_config, uart_config->BaseAddress);
	if(status!=XST_SUCCESS){
		print("failed\n");
		return XST_FAILURE;
	}
	XUartPs_EnableUart(&uart_inst);
	//
	XUartPs_SetOperMode(&uart_inst, XUARTPS_OPER_MODE_NORMAL);
	//
	status =  XUartPs_SetBaudRate(&uart_inst, 921600);
	//
	XUartPs_SetFifoThreshold(&uart_inst, 1);
	if(status!=XST_SUCCESS){
		print("failed\n");
		return XST_FAILURE;
	}
//	//查找中断控制器
//	xscu_config = XScuGic_LookupConfig(SCU_ID);
//	status = XScuGic_CfgInitialize(&scu_inst,xscu_config,
//			xscu_config->CpuBaseAddress);
//	if(status!=XST_SUCCESS){
//		print("failed\n");
//		return XST_FAILURE;
//	}
//	//老规矩，打开中断控制器后打开异常中断的处理函数
//	Xil_ExceptionInit();
//	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
//						 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
//						 (void *)&scu_inst);
//	Xil_ExceptionEnable();
//	//设置回调函数
//	XScuGic_Connect(&scu_inst, UART_INT_ID,
//				(Xil_InterruptHandler)uart_Handler, (void *)&uart_inst);
//	//设置中断的触发方式
//	XUartPs_SetInterruptMask(&uart_inst, XUARTPS_IXR_RXOVR);
//	//打开中断控制器的使能
//	XScuGic_Enable(&scu_inst, UART_INT_ID);
}


void ps_uart_sent(uint8_t* data, uint16_t len)
{
	XUartPs_Send(&uart_inst, data, len);
}

void ps_uart_sent_adc(uint8_t* data, uint16_t len)
{
	uint16_t crc_16 = 0;
	uint16_t crc_seed = 0;
	adc_buf[0] = 0x02;
	adc_buf[1] = adc_seq;


	memcpy(&adc_buf[4], data, len);

	crc_16 = crc16_compute(data, len, &crc_seed);
	adc_buf[2] = crc_16 & 0xff;
	adc_buf[3] = crc_16 >> 8;

	adc_seq++;
	XUartPs_Send(&uart_inst, adc_buf, len + 4);
	//total send 32 +4
}

