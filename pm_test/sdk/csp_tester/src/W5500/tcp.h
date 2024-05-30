#ifndef TCP_H
#define TCP_H

#include <stdio.h>



#include "socket.h"	// Just include one header for WIZCHIP

#define SOCK_TCPC        0
#define SOCK_TCPS        1

#define DATA_BUF_SIZE   2048

// Initialize Network information and display it

// Loopback TCP server
int32_t loopback_tcps(uint8_t, uint8_t*, uint16_t);



void w5500_init(void);

#endif
