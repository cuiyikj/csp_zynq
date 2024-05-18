#ifndef PS_UART_H
#define LED_H

#include <stdio.h>
#include "xscugic.h"

int ps_uart_init( void);

int ps_intrrupt_init(XScuGic *IntcInstancePtr);

void ps_uart_sent(uint8_t* data, uint16_t len);
void ps_uart_sent_adc(uint8_t* data, uint16_t len);


#include "xstatus.h"
#include "xuartps.h"
#include "xscugic.h"
#include "stdio.h"

#define UART_DEVICE_ID_0     XPAR_PS7_UART_0_DEVICE_ID
#define INTC_DEVICE_ID_0     XPAR_SCUGIC_SINGLE_DEVICE_ID
#define UART_INT_IRQ_ID_0    XPAR_XUARTPS_0_INTR




#define BAUD_UARTPS  921600

#define BUFFER_SIZE 8
#define BUFFER_SZE 100

typedef enum
{
    CMD_NOP,              // 0x00
    CMD_MESSURE_LEAD,     // 0x01
    CMD_TEST_NOISE,       // 0x02
	CMD_CALIBRATE,
    CMD_MAX
} COMMAND_TYPE;

uint8_t uart_init(void);

void uart_int_enable(void);



void uart_intr_handler_0(void *call_back_ref);

void send_uart_0(uint8_t* buf, uint16_t len);

void process_uart_cmd(void);

#endif
