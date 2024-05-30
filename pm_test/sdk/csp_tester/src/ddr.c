#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "ddr.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"
#include "sleep.h"
#include "comlib.h"

#include "config.h"

void write_ddr(uint8_t* buf, uint32_t len)
{
	xil_printf("\r\nwrite ddr\r\n");

	uint32_t addr = CPU_SHARE_BASE;
	uint32_t i;
	for(i = 0; i < len; i++)
	{
		Xil_Out8(addr++, buf[i]);
		if (i < 64)
		{
			xil_printf("0x%X, ",buf[i]);
		}
	}
	xil_printf("\r\n");
}

void read_ddr(uint8_t* buf, uint32_t len)
{
	uint32_t i;
	uint32_t addr = CPU_SHARE_BASE;

	//xil_printf("\r\n read len =%ld \r\n", len);
	for (i = 0; i < len; i++)
	{
		buf[i] = Xil_In8(addr);
		addr = addr + 1;
	}
	//xil_printf("\r\n");

}


void write_ddr_cmd_header(uint8_t* header, uint32_t len)
{
	uint32_t addr = CPU_SHARE_BASE;
	uint32_t i;
	//printf("write ddr header len = %ld cmd =%d\r\n", len, header[1] );
	for(i = 0; i < len; i++)
	{
		Xil_Out8(addr++, header[i]);
		//xil_printf("0x%X, ",header[i]);
	}

}

void write_ddr_cmd(uint8_t* buf, uint32_t len, uint8_t cmd, uint16_t rate, uint16_t amplitude)
{
	uint32_t addr = CPU_SHARE_BASE;
	uint32_t i;
	uint8_t header[16]= {0};
	uint16_t crc16;

	header[0] = 0x5a;
	header[1] = cmd;

	memcpy(&header[2], &len, 4);

	crc16 = crc16_compute(buf, len, NULL);

	header[6] = crc16 & 0xff;
	header[7] = (crc16/256) & 0xff;

	memcpy(&header[8], &rate, 2);
	memcpy(&header[10], &amplitude, 2);


	//printf("write ddr header len = %ld cmd =%d\r\n", len, header[1] );
	for(i = 0; i < 16; i++)
	{
		Xil_Out8(addr++, header[i]);
		//xil_printf("0x%X, ",header[i]);
	}

	//xil_printf("\r\n write ddr %ld\r\n", addr);
	for(i = 0; i < len; i++)
	{
		Xil_Out8(addr++, buf[i]);
		if (i >700000 && i < 700000 + 64)
		{
			//xil_printf("0x%X, ",buf[i]);
		}
	}
	//xil_printf("\r\n");
}


