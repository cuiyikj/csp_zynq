/*
 * uart.h
 *
 * Created on: 2021��11��19��
 * Author: heihei��
 */

#ifndef SRC_UART_H_
#define SRC_UART_H_
#include "xstatus.h"
#include "xuartps.h"
#include "xscugic.h"
#include "stdio.h"
#define UART_DEVICE_ID_0     XPAR_PS7_UART_0_DEVICE_ID        //�����豸ID
#define INTC_DEVICE_ID_0     XPAR_SCUGIC_SINGLE_DEVICE_ID     //�ж�ID
#define UART_INT_IRQ_ID_0    XPAR_XUARTPS_0_INTR              //�����ж�ID

#define UART_DEVICE_ID_1     XPAR_PS7_UART_1_DEVICE_ID        //�����豸ID
#define INTC_DEVICE_ID_1     XPAR_SCUGIC_SINGLE_DEVICE_ID     //�ж�ID
#define UART_INT_IRQ_ID_1    XPAR_XUARTPS_1_INTR              //�����ж�ID


#define BAUD_UARTPS  921600

#define BUFFER_SIZE 8
#define BUFFER_SZE 100


uint8_t uart_init(void);

void uart_int_enable(void);

extern u8 SendBuffer[BUFFER_SZE];
extern u8 RecvBuffer[BUFFER_SZE];

int Uart_Init(XUartPs *UartInstPtr_0, XUartPs *UartInstPtr_1);
int Uart_Intrrupt_Init(XScuGic *IntcInstancePtr, XUartPs *UartInstPtr_0, XUartPs *UartInstPtr_1);

void uart_intr_handler_0(void *call_back_ref);
void uart_intr_handler_1(void *call_back_ref);

void DB_uart(uint8_t* buf, uint16_t len);
void send_uart_0(uint8_t* buf, uint16_t len);
void send_uart_1(uint8_t* buf, uint16_t len);
#endif /* SRC_UART_H_ */
