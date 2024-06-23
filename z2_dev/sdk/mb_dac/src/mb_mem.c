#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "mb_mem.h"
#include "comlib.h"
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


uint8_t* mb_adc_mem = (uint8_t*)MB_ADC_ADDRESS;
uint8_t adc_mem_index = 0;


void mb_mem_init(void)
{
	uint8_t* mb_adc_mem = (uint8_t*)ARM_TO_MB_ADDRESS;
	memset(mb_adc_mem, 0, MB_MEM_SIZE);
}



uint8_t adc_buf[8 * 4 + 4];


void mb_adc_memcpy(uint8_t* data, uint8_t adc_offset, uint16_t len)
{
	uint16_t crc_16 = 0;
	uint16_t crc_seed = 0;

	adc_buf[0] = 0x02;
	adc_buf[1] = 0x5a;
	memcpy(&adc_buf[4], data, len);
	crc_16 = crc16_compute(data, len, &crc_seed);
	adc_buf[2] = crc_16 & 0xff;
	adc_buf[3] = crc_16 >> 8;
    memcpy((uint8_t*)(MB_ADC_ADDRESS + adc_offset *36), adc_buf, len+4);

    //xil_printf("add %x \r\n", MB_ADC_ADDRESS + adc_offset *36);
}


