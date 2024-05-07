#ifndef PS_UART_H
#define LED_H

#include <stdio.h>


void ps_uart_init( void);
void ps_uart_sent(uint8_t* data, uint16_t len);
void ps_uart_sent_adc(uint8_t* data, uint16_t len);

#endif
