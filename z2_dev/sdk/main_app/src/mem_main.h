#ifndef MEM_MAIN_H
#define MEM_MAIN_H

#include <stdio.h>
#include "xgpio.h"

/*
+--------------+ 0x0000
| A9 TO MB     |
|              | 0x007f
+--------------+ 0x0080
| MB to A9     |
|              | 0x00ff
+--------------+ 0x0100
| ADC index    |
| 1 -  240     | 0x01ff
+--------------+ 0x0200
| ADC data     |
| save 240 ECG |
| EACH ECG 32B |
| TOTAL 7680   |
|              | 0x1fff
+--------------+ 0x2000
*/

#define ARM_TO_MB_ADDRESS 			0x40000000
#define MB_TO_ARM_ADDRESS 			0x40000080

#define MB_ADC_INDEX 		    	0x40000100
#define MB_ADC_ADDRESS 		    	0x40000200

#define MB_ADC_DATA_SIZE			(8192 - 128)



void mem_main_init(void);


#endif
