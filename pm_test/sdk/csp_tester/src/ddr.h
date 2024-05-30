#ifndef DDR_H
#define DDR_H

#include <stdio.h>
#include "xscugic.h"



#define DDR_ADDR   0x00110000


void read_ddr(uint8_t* buf, uint32_t len);
void write_ddr(uint8_t* buf, uint32_t len);
void write_ddr_cmd(uint8_t* buf, uint32_t len, uint8_t cmd, uint16_t rate, uint16_t amplitude);
void write_ddr_cmd_header(uint8_t* header, uint32_t len);

#endif
