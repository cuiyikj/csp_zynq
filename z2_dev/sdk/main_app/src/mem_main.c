#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "mem_main.h"
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


uint8_t* mb_adc_mem = (uint8_t*)MB_ADC_ADDRESS;
uint8_t adc_mem_index = 0;


void mem_main_init(void)
{
	uint8_t* mb_adc_mem = (uint8_t*)MB_ADC_ADDRESS;
	memset(mb_adc_mem, 0, MB_ADC_DATA_SIZE);
}


