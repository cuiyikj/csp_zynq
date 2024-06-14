/*
 * uart.c
 *
 *  Created on:
 *      Author:
 */
#include "uart.h"

#include "sleep.h"
#include "comlib.h"
#include "hw_if.h"
#include "xuartlite_l.h"
#include "xgpio.h"

#include "time.h"
#include "tcp_net.h"


extern uint8_t uart_recv_0[512];
extern uint8_t uart_recv_1[512];
extern uint8_t recv_total_byte_0;
extern uint8_t recv_total_byte_1;
extern XUartPs Uart_Ps;
extern XGpio gpio_dev;

CIRCULAR_BUF_t uart_0_cb =
{
	.head = 0,
	.tail = 0,
};

CIRCULAR_BUF_t uart_1_cb =
{
	.head = 0,
	.tail = 0,
};

uint8_t uartBuffer[256];
uint8_t destBuffer[256];

uint8_t mb_uart_buffer[256];

//static uint8_t tx_seq = 0;
uint8_t returnADC = 0;
uint8_t returnShock = 1;
int Uart_Init(XUartPs *UartInstPtr_0, XUartPs *UartInstPtr_1)
{
    XUartPs_Config *Config;
    int status;

    //uart0
    Config = XUartPs_LookupConfig(UART_DEVICE_ID_0);
    if (NULL == Config)
    {
        return XST_FAILURE;
    }
    //init
    status = XUartPs_CfgInitialize(UartInstPtr_0, Config, Config->BaseAddress);
    if (status != XST_SUCCESS)
    {
        printf("Config Uart 0 fail\r\n");
        return XST_FAILURE;
    }
    status=XUartPs_SelfTest(UartInstPtr_0);
    if (status != XST_SUCCESS)
    {
        print("Self test Fail\r\n");
        return XST_FAILURE;
    }
    //baud rate
    XUartPs_SetBaudRate(UartInstPtr_0,BAUD_UARTPS);
    //set mode
    XUartPs_SetOperMode(UartInstPtr_0,XUARTPS_OPER_MODE_NORMAL);

    XUartPs_SetFifoThreshold(UartInstPtr_0,32);

    XUartPs_SetRecvTimeout(UartInstPtr_0,4);

    XUartPs_SetInterruptMask(UartInstPtr_0, XUARTPS_IXR_RXOVR|XUARTPS_IXR_TOUT);

    //uart1
    Config = XUartPs_LookupConfig(UART_DEVICE_ID_1);
    if (NULL == Config)
    {
        return XST_FAILURE;
    }
    //init
    status = XUartPs_CfgInitialize(UartInstPtr_1, Config, Config->BaseAddress);
    if (status != XST_SUCCESS)
    {
        printf("Config Uart 1 fail\r\n");
        return XST_FAILURE;
    }
    status=XUartPs_SelfTest(UartInstPtr_1);
    if (status != XST_SUCCESS)
    {
        print("Self test Fail\r\n");
        return XST_FAILURE;
    }
    //baud rate
    XUartPs_SetBaudRate(UartInstPtr_1,BAUD_UARTPS);
    //set mode
    XUartPs_SetOperMode(UartInstPtr_1,XUARTPS_OPER_MODE_NORMAL);

    XUartPs_SetFifoThreshold(UartInstPtr_1,32);

    XUartPs_SetRecvTimeout(UartInstPtr_1,4);

    XUartPs_SetInterruptMask(UartInstPtr_1, XUARTPS_IXR_RXOVR|XUARTPS_IXR_TOUT);


    return XST_SUCCESS;
}

int Uart_Intrrupt_Init(XScuGic *IntcInstancePtr, XUartPs *UartInstPtr_0, XUartPs *UartInstPtr_1)
{

    u32 status;

    XScuGic_Config *IntcConfig;

    XScuGic_Disable(IntcInstancePtr,UART_INT_IRQ_ID_0);
    XScuGic_Disable(IntcInstancePtr,UART_INT_IRQ_ID_1);

    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID_0);
    status=XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
                       IntcConfig->CpuBaseAddress);
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                    (Xil_ExceptionHandler) XScuGic_InterruptHandler,
                    IntcInstancePtr);
    //enable callback
    Xil_ExceptionEnable();

    //set uart int priority
    XScuGic_SetPriorityTriggerType(IntcInstancePtr,UART_INT_IRQ_ID_0,32,1);
    XScuGic_Connect(IntcInstancePtr, UART_INT_IRQ_ID_0,
                      (Xil_ExceptionHandler)uart_intr_handler_0,
                      (void *) UartInstPtr_0);

    XScuGic_SetPriorityTriggerType(IntcInstancePtr,UART_INT_IRQ_ID_1,32,1);
    XScuGic_Connect(IntcInstancePtr, UART_INT_IRQ_ID_1,
                      (Xil_ExceptionHandler)uart_intr_handler_1,
                      (void *) UartInstPtr_1);

    XScuGic_Enable(IntcInstancePtr,UART_INT_IRQ_ID_0);
    XScuGic_Enable(IntcInstancePtr,UART_INT_IRQ_ID_1);

    Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);

    return status;
}

void uart_intr_handler_1(void *call_back_ref)
{
//
//    XUartPs *InstancePtr=(XUartPs *)call_back_ref;
//
//    u32 IsrStatus;
//
//    u32 ReceivedCount;
//
//    IsrStatus = XUartPs_ReadReg(InstancePtr->Config.BaseAddress,
//            XUARTPS_IMR_OFFSET);
//
//    IsrStatus &= XUartPs_ReadReg(InstancePtr->Config.BaseAddress,
//                       XUARTPS_ISR_OFFSET);
//
//    if (IsrStatus & ((u32)XUARTPS_IXR_RXOVR))
//    {
//
//        XUartPs_WriteReg(InstancePtr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR) ;
//        ReceivedCount=XUartPs_Recv(InstancePtr, &uart_recv_1[recv_total_byte_1],500);
//        recv_total_byte_1 +=ReceivedCount;
//        //printf("uart_recv %d\r\n",recv_total_byte_0);
//
//    }
//    else if(IsrStatus & ((u32)XUARTPS_IXR_TOUT))
//    {
//        XUartPs_WriteReg(InstancePtr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_TOUT) ;
//        ReceivedCount=XUartPs_Recv(InstancePtr,&uart_recv_1[recv_total_byte_1],500);
//
//        recv_total_byte_1 +=ReceivedCount;
////        printf("uart 1 recv  %d\r\n", recv_total_byte_1);
////        for(int i=0;i<recv_total_byte_0;i++)
////        {
////            circular_buf_put(CB_UART, uart_recv_0[i]);
////        }
//        circular_buf_put_n(&uart_1_cb, uart_recv_1, recv_total_byte_1);
//        recv_total_byte_1 =0;
//    }
}


void uart_intr_handler_0(void *call_back_ref)
{
//
//    XUartPs *InstancePtr=(XUartPs *)call_back_ref;
//
//    u32 IsrStatus;
//
//    u32 ReceivedCount;
//
//    IsrStatus = XUartPs_ReadReg(InstancePtr->Config.BaseAddress,
//            XUARTPS_IMR_OFFSET);
//
//    IsrStatus &= XUartPs_ReadReg(InstancePtr->Config.BaseAddress,
//                       XUARTPS_ISR_OFFSET);
//
//    if (IsrStatus & ((u32)XUARTPS_IXR_RXOVR))
//    {
//
//        XUartPs_WriteReg(InstancePtr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR) ;
//        ReceivedCount=XUartPs_Recv(InstancePtr, &uart_recv_0[recv_total_byte_0],500);
//        recv_total_byte_0 +=ReceivedCount;
//        //printf("uart_recv %d\r\n",recv_total_byte_0);
//
//    }
//    else if(IsrStatus & ((u32)XUARTPS_IXR_TOUT))
//    {
//        XUartPs_WriteReg(InstancePtr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_TOUT) ;
//        ReceivedCount=XUartPs_Recv(InstancePtr,&uart_recv_0[recv_total_byte_0],500);
//
//        recv_total_byte_0 += ReceivedCount;
////        printf("uart 1 recv  %d\r\n", recv_total_byte_0);
//        for(int i=0;i<recv_total_byte_0;i++)
//        {
//            circular_buf_put(&uart_0_cb, uart_recv_0[i]);
//        }
//        recv_total_byte_0 =0;
////        printf("uart 1 recv  %d\r\n", circular_buf_empty(&uart_0_cb));
//    }
}

void DB_uart(uint8_t* buf, uint16_t len)
{
//	int i = 0;
//	for (i = 0; i< len; i++)
//	{
//		XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR, buf[i]);
//	}
}

void send_uart_0(uint8_t* buf, uint16_t len)
{
	int i;
	for (i = 0; i< len; i++)
	{
		XUartPs_SendByte(XPAR_PS7_UART_0_BASEADDR, buf[i]);
	}

}

void send_uart_1(uint8_t* buf, uint16_t len)
{
	int i;
	for (i = 0; i< len; i++)
	{
		XUartPs_SendByte(XPAR_PS7_UART_1_BASEADDR, buf[i]);
	}

}

void process_uart(void)
{
//    uint8_t  uart_data[CB_SIZE];
//    uint8_t  uart_data2[CB_SIZE];
//    uint16_t uart_index = 0;
//    uint16_t uart_index2 = 0;
//    uint8_t* arm_to_mb_base_mem = (uint8_t*)ARM_TO_MB_ADDRESS;
//    uint8_t* mb_to_arm_base_mem = (uint8_t*)MB_TO_ARM_ADDRESS;
//    uint8_t  uart_cmd;
//    int i;
//
//    if (!circular_buf_empty(&uart_0_cb))
//    {
//        if (*arm_to_mb_base_mem == 0)
//        {
//            while (circular_buf_get(&uart_0_cb, &uart_data[uart_index])==0)
//            {
//                uart_index++;
//            }
//            printf("uart recv:\r\n");
//            for (int i = 0; i< uart_index; i++)
//            {
//                printf("%x ", uart_data[i]);
//            }
//            printf("\r\n uart recv done\r\n");
//
//            if (uart_data[0] == 0xff && uart_data[1] == 0xfe)
//            {
//            	printf("UART COMMAND\r\n");
//				uart_cmd = uart_data[4];
//				switch(uart_cmd)
//				{
//				case CMD_START_PULSE:
//					printf("CMD_START_PULSE");
//					memcpy(arm_to_mb_base_mem, uart_data, uart_index2);
//					break;
//				case CMD_STOP_PULSE:
//					printf("CMD_STOP_PULSE");
//					memcpy(arm_to_mb_base_mem, uart_data, uart_index2);
//					break;
//				case CMD_START_ADC:
//					printf("Start ADC\r\n");
//					//memcpy((uint8_t *)&PaceThreshold, &uart_data2[5], 4);
//					PaceThreshold = uart_data[8];
//					PaceThreshold = PaceThreshold<<8;
//					PaceThreshold += uart_data[7];
//					PaceThreshold = PaceThreshold<<8;
//					PaceThreshold += uart_data[6];
//					PaceThreshold = PaceThreshold<<8;
//					PaceThreshold += uart_data[5];
//					printf("Start ADC %ld\r\n", PaceThreshold);
//					PaceThreshold = PaceThreshold*65535/3300;
//					returnADC = 1;
//					printf("Threshold is %ld\r\n", PaceThreshold);
//					break;
//				case CMD_STOP_ADC:
//					printf("Stop ADC\r\n");
//					returnADC = 0;
//					break;
//				case CMD_SEVERAL_PULSE:
//					printf("CMD_SEVERAL_PULSE");
//					memcpy(arm_to_mb_base_mem, uart_data, uart_index2);
//					break;
//				case CMD_SEVERAL_PULSE_NOCHANGE:
//					printf("CMD_SEVERAL_PULSE_NOCHANGE");
//					memcpy(arm_to_mb_base_mem, uart_data, uart_index2);
//					break;
//				case CMD_START_PACE_CAPTURE:
//					xil_printf("CMD_START_PACE_CAPTURE");
//					adc_capture_pace = 1;
//					adc_capture_raw = 0;
//					break;
//				case CMD_STOP_PACE_CAPTURE:
//					xil_printf("CMD_STOP_PACE_CAPTURE");
//					adc_capture_pace = 0;
//					break;
//				case CMD_START_ADC_RAW_CAPTURE:
//					xil_printf("CMD_START_ADC_RAW_CAPTURE");
//					adc_capture_raw = 1;
//					adc_capture_pace = 0;
//					break;
//				case CMD_STOP_ADC_RAW_CAPTURE:
//					xil_printf("CMD_STOP_ADC_RAW_CAPTURE");
//					adc_capture_raw = 0;
//					break;
//				case CMD_APPLY_MAGNET:
//					//XGpio_DiscreteWrite(&gpio_dev,2,0x0);
//					writeGPIOPins(W15,0);
//					break;
//				case CMD_REMOVE_MAGNET:
//					//XGpio_DiscreteWrite(&gpio_dev,2,0x1);
//					writeGPIOPins(W15,1);
//					break;
//				case CMD_START_I2C_DECODE:
//					DecodeI2C = 1;
//					break;
//				case CMD_STOP_I2C_DECODE:
//					DecodeI2C = 0;
//					StopI2CDeocde();
//					break;
//				case CMD_TRIGGER_PULSE:
//					uint8_t temp = uart_data[5];
//					toggleGPIOPulse(temp);
//					break;
//				case CMD_CONTROL_PIN:
//					uint8_t pinNumber = uart_data[5];
//					uint8_t HighOrLow = uart_data[6];
//					writeGPIOPins(pinNumber, HighOrLow);
//					break;
//				case CMD_SENSITIVITY_TEST:
//					sensitivityTest();
//					break;
//				case CMD_INPUT_IMPEDANCE_TEST:
//					uint8_t pinCombination = uart_data[5];
//					inputImpedanceTest(pinCombination);
//					break;
//				case CMD_CURRENT_MEASURE_SELECTION:
//					uint8_t BigOrSmall = uart_data[5];
//					CurrentMeasurementSelection(BigOrSmall);
//					break;
//				case CMD_SELECT_SIGNAL_GENERATOR:
//					uint8_t usingSignalGenerator = uart_data[5];
//					signalInputSourceIsSignalGenerator(usingSignalGenerator);
//					break;
//				case CMD_SELECT_NEAR_FIELD_IMPEDANCE:
//					uint8_t impedance= uart_data[5];
//					NearFieldImpedance(impedance);
//					break;
//				case CMD_VOLTAGE_MEASURE:
//					VoltageMeasurementSelection(uart_data[5]);
//					break;
//				}
//				memcpy(arm_to_mb_base_mem, uart_data, uart_index);
//            }
//            else if (uart_data[0] == 0xa5 && uart_data[1] == 0x5a)
//            {
//            	printf("ICD TESTER COMMAND\r\n");
//                uint16_t read_crc16, crc16;
//            	uint16_t payload_len = uart_data[4] + uart_data[5]*256;
//				crc16 = crc16_compute(&uart_data[8], payload_len, NULL);
//
//				read_crc16 = uart_data[6] + uart_data[7]*256;
//				if (read_crc16 == crc16)
//				{
//					uart_cmd = uart_data[2];
//
//					switch(uart_cmd)
//					{
//					case CMD_I2C:
//						printf("CMD_I2C\r\n");
//						set_i2c_filer_mode(uart_data[8]);
//						set_i2c_filer_list_size(payload_len);
//
//						for (i = 0; i< payload_len -2; i++)
//						{
//							set_i2c_filer_block_list(uart_data[10+i],i);
//						}
//					break;
//					case CMD_EPOC_TIME:
//		            	printf("CMD_EPOC_TIME\r\n");
//		            	memcpy((uint8_t*)&epoch_time, &uart_data[8], 4);
//					break;
//					}
//
//
//
//				}
//				else
//				{
//					printf("ICD TESTER CRC error %x %x\r\n", read_crc16, crc16);
//				}
//
//            }
//        }
//    }
//    if (!circular_buf_empty(&uart_1_cb)){
//    	if (*arm_to_mb_base_mem == 0){
//			printf("uart2 recv:\r\n");
//			while (circular_buf_get(&uart_1_cb, &uart_data2[uart_index2])==0){
//				uart_index2++;
//			}
//			for (int i = 0; i< uart_index2; i++){
//				printf("%x ", uart_data2[i]);
//			}
//			printf("\r\n uart2 recv done\r\n");
//
//			if (uart_data2[0] == 0xff && uart_data2[1] == 0xfe){
//				uart_cmd = uart_data2[4];
//				printf("UART COMMAND %d\r\n", uart_cmd);
//				switch(uart_cmd){
//						break;
//					case CMD_START_PULSE:
//						printf("CMD_START_PULSE");
//						memcpy(arm_to_mb_base_mem, uart_data2, uart_index2);
//					break;
//					case CMD_STOP_PULSE:
//						printf("CMD_STOP_PULSE");
//						memcpy(arm_to_mb_base_mem, uart_data2, uart_index2);
//					break;
//					case CMD_START_ADC:
//						printf("Start ADC\r\n");
//						//memcpy((uint8_t *)&PaceThreshold, &uart_data2[5], 4);
//						PaceThreshold = uart_data2[8];
//						PaceThreshold = PaceThreshold<<8;
//						PaceThreshold += uart_data2[7];
//						PaceThreshold = PaceThreshold<<8;
//						PaceThreshold += uart_data2[6];
//						PaceThreshold = PaceThreshold<<8;
//						PaceThreshold += uart_data2[5];
//						printf("Start ADC %ld\r\n", PaceThreshold);
//						PaceThreshold = PaceThreshold*65535/3300;
//						returnADC = 1;
//						printf("Threshold is %ld\r\n", PaceThreshold);
//						break;
//					case CMD_STOP_ADC:
//						printf("Stop ADC\r\n");
//						returnADC = 0;
//						break;
//					case CMD_SEVERAL_PULSE:
//						printf("CMD_SEVERAL_PULSE");
//						memcpy(arm_to_mb_base_mem, uart_data2, uart_index2);
//						break;
//					case CMD_SEVERAL_PULSE_NOCHANGE:
//						printf("CMD_SEVERAL_PULSE_NOCHANGE");
//						memcpy(arm_to_mb_base_mem, uart_data2, uart_index2);
//						break;
//					case CMD_START_PACE_CAPTURE:
//						xil_printf("CMD_START_PACE_CAPTURE");
//						adc_capture_pace = 1;
//						adc_capture_raw = 0;
//					break;
//					case CMD_STOP_PACE_CAPTURE:
//						xil_printf("CMD_STOP_PACE_CAPTURE");
//						adc_capture_pace = 0;
//					break;
//					case CMD_START_ADC_RAW_CAPTURE:
//						xil_printf("CMD_START_ADC_RAW_CAPTURE");
//						adc_capture_raw = 1;
//						adc_capture_pace = 0;
//					break;
//					case CMD_STOP_ADC_RAW_CAPTURE:
//						xil_printf("CMD_STOP_ADC_RAW_CAPTURE");
//						adc_capture_raw = 0;
//					break;
//				}
//				//memcpy(arm_to_mb_base_mem, uart_data, uart_index);
//			}
//    	}
//    }
//    //xil_printf("uart recv from mb: %d\r\n", *mb_to_arm_base_mem);
//    if (*mb_to_arm_base_mem != 0)
//    {
//        uint16_t len = 0;
//
//        memcpy(mb_uart_buffer, mb_to_arm_base_mem, 8);
//        len =  uart_data[2] + 6;
//        xil_printf("uart recv from mb: %d\r\n", len);
//
//        if (len >  8)
//        {
//            memcpy(mb_uart_buffer, mb_to_arm_base_mem, len);
//        }
//        for (int i = 0; i< len; i++)
//        {
//            xil_printf("%x ", mb_uart_buffer[i]);
//        }
//        xil_printf("\r\n uart recv done\r\n");
//
//        *mb_to_arm_base_mem = 0;
//    }

}



uint8_t adc_buf[8 * 4 + 4];
uint8_t adc_seq = 0;

void ps_uart_sent_adc(uint8_t* data, uint16_t len)
{
	uint16_t crc_16 = 0;
	uint16_t crc_seed = 0;
	adc_buf[0] = 0x02;
	adc_buf[1] = 0x5a;


	memcpy(&adc_buf[4], data, len);

	crc_16 = crc16_compute(data, len, &crc_seed);
	adc_buf[2] = crc_16 & 0xff;
	adc_buf[3] = crc_16 >> 8;

	adc_seq++;
	send_uart_0(adc_buf, len + 4);
	//total send 32 +4
}

