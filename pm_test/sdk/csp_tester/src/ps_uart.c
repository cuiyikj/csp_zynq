/*
 * uart.c
 *
 *  Created on:
 *      Author:
 */
#include "ps_uart.h"

#include "sleep.h"
#include "comlib.h"



#include "time.h"
#include "ads1298.h"


 uint8_t uart_recv_0[512];
 uint8_t uart_recv_1[512];
 uint8_t recv_total_byte_0;
 uint8_t recv_total_byte_1;
 XUartPs Uart_Ps;



CIRCULAR_BUF_t uart_0_cb =
{
	.head = 0,
	.tail = 0,
};


uint8_t uartBuffer[256];

XUartPs UartInstPtr_0;


int ps_uart_init(void)
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
    status = XUartPs_CfgInitialize(&UartInstPtr_0, Config, Config->BaseAddress);
    if (status != XST_SUCCESS)
    {
        printf("Config Uart 0 fail\r\n");
        return XST_FAILURE;
    }

    status=XUartPs_SelfTest(&UartInstPtr_0);
    if (status != XST_SUCCESS)
    {
        print("Self test Fail\r\n");
        return XST_FAILURE;
    }

   //baud rate
    XUartPs_SetBaudRate(&UartInstPtr_0,BAUD_UARTPS);
    //set mode
    XUartPs_SetOperMode(&UartInstPtr_0,XUARTPS_OPER_MODE_NORMAL);

    XUartPs_SetFifoThreshold(&UartInstPtr_0,32);

    XUartPs_SetRecvTimeout(&UartInstPtr_0,4);

    XUartPs_SetInterruptMask(&UartInstPtr_0, XUARTPS_IXR_RXOVR|XUARTPS_IXR_TOUT);

    print("ps_uart_init good\r\n");


    return XST_SUCCESS;
}

int ps_intrrupt_init(XScuGic *IntcInstancePtr)
{

    u32 status;

    XScuGic_Config *IntcConfig;

    //XScuGic_Disable(IntcInstancePtr, UART_INT_IRQ_ID_0);

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
                      (void *) &UartInstPtr_0);


    XScuGic_Enable(IntcInstancePtr,UART_INT_IRQ_ID_0);


    Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
    print("ps_intrrupt_init 9\r\n");

    return status;
}




void uart_intr_handler_0(void *call_back_ref)
{

    XUartPs *InstancePtr=(XUartPs *)call_back_ref;

    u32 IsrStatus;

    u32 ReceivedCount;

    IsrStatus = XUartPs_ReadReg(InstancePtr->Config.BaseAddress,
            XUARTPS_IMR_OFFSET);

    IsrStatus &= XUartPs_ReadReg(InstancePtr->Config.BaseAddress,
                       XUARTPS_ISR_OFFSET);

    if (IsrStatus & ((u32)XUARTPS_IXR_RXOVR))
    {

        XUartPs_WriteReg(InstancePtr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR) ;
        ReceivedCount = XUartPs_Recv(InstancePtr, &uart_recv_0[recv_total_byte_0],500);
        recv_total_byte_0 +=ReceivedCount;
        printf("uart_recv %d\r\n",recv_total_byte_0);

    }
    else if(IsrStatus & ((u32)XUARTPS_IXR_TOUT))
    {
        XUartPs_WriteReg(InstancePtr->Config.BaseAddress,XUARTPS_ISR_OFFSET, XUARTPS_IXR_TOUT) ;
        ReceivedCount=XUartPs_Recv(InstancePtr,&uart_recv_0[recv_total_byte_0],500);

        recv_total_byte_0 += ReceivedCount;
        printf("uart 1 recv  %d\r\n", recv_total_byte_0);
        for(int i=0;i<recv_total_byte_0;i++)
        {
            circular_buf_put(&uart_0_cb, uart_recv_0[i]);
        }
        recv_total_byte_0 =0;
    }
}



void send_uart_0(uint8_t* buf, uint16_t len)
{
	int i;
	for (i = 0; i< len; i++)
	{
		XUartPs_SendByte(XPAR_PS7_UART_0_BASEADDR, buf[i]);
	}

}

extern uint8_t reg_ini_normal[25];
extern uint8_t reg_ini_noise[25];
extern uint8_t reg_ini_calibrate[25];

void process_uart_cmd(void)
{
    uint8_t  uart_data[CB_SIZE];

    uint16_t uart_index = 0;

    uint8_t  uart_cmd;
    int i;

    if (!circular_buf_empty(&uart_0_cb))
    {
		while (circular_buf_get(&uart_0_cb, &uart_data[uart_index])==0)
		{
			uart_index++;
		}
		printf("uart recv:\r\n");
		for (int i = 0; i< uart_index; i++)
		{
			printf("%x ", uart_data[i]);
		}
		printf("\r\n uart recv done\r\n");

		if (uart_data[0] == 0x02 && uart_data[1] == 0x5a)
		{
			printf("ICD TESTER COMMAND\r\n");
			uint16_t read_crc16, crc16;
			crc16 = crc16_compute(&uart_data[0], 6, NULL);

			read_crc16 = uart_data[6] + uart_data[7]*256;
			if (read_crc16 == crc16)
			{
				uart_cmd = uart_data[2];

				switch(uart_cmd)
				{
				case CMD_MESSURE_LEAD:
					ADS_reset();
					ADS_Init(reg_ini_normal);

					printf("CMD_MESSURE_LEAD\r\n");
				break;
				case CMD_TEST_NOISE:
					ADS_reset();
					ADS_Init(reg_ini_noise);
					printf("CMD_TEST_NOISE\r\n");
				break;
				case CMD_CALIBRATE:
					ADS_reset();
					ADS_Init(reg_ini_calibrate);
					printf("CMD_TEST_NOISE\r\n");
				break;
				}

			}
			else
			{
				printf("ICD TESTER CRC error %x %x\r\n", read_crc16, crc16);
			}

		}

    }
}



void ps_uart_sent(uint8_t* data, uint16_t len)
{
	//XUartPs_Send(&uart_inst, data, len);
}

uint8_t adc_buf[36];
uint8_t adc_seq = 0;

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
	send_uart_0(adc_buf, len + 4);
	//total send 32 +4
}

