#ifndef MB_MEM_H
#define MB_MEM_H

#include <stdio.h>
#include "xgpio.h"

/*
+--------------+ 0x0000
| A9 TO MB     |
|              | 0x00ff
+--------------+ 0x0100
| MB to A9     |
|              | 0x01ff
+--------------+ 0x0200
| ADC data     |
|              | 0x1fff
+--------------+ 0x2000
*/

#define ARM_TO_MB_ADDRESS 			0x40000000
#define MB_TO_ARM_ADDRESS 			0x40000100
#define MB_ADC_ADDRESS 		    	0x40000200

#define MB_ADC_DATA_SIZE			(8192 - 256)




void mb_mem_init(void);

void mb_adc_memcpy(uint8_t* data, uint8_t adc_offset, uint16_t len);

#endif
