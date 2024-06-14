#ifndef TIME_H
#define TIME_H

#include <stdio.h>

#define HEAD_OFFSET 				(8U)
#define UART_EPOC_TIME_SIZE 		(4U)

extern uint8_t epoc_time_ready;
extern uint32_t epoch_time;
int epoctime_convert(uint32_t epoch, char* time_str);
void send_uart_epoc_time(void);
#endif
