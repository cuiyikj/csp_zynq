#include "comlib.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "gpio.h"

#include "spi_ps.h"

XSpiPs SpiInstance;

/* */
uint8_t read_buf [1000] ;
uint8_t send_buf [1000] ;

/* -----------------spi³õÊ¼»¯º¯Êý--------------------------- */

int spi_ps_init(void)
{
	int Status;
	XSpiPs_Config *SpiConfig;


	SpiConfig = XSpiPs_LookupConfig(0);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}
	/*  */
	Status = XSpiPs_CfgInitialize((&SpiInstance), SpiConfig, SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	//Status = XSpiPs_SetOptions(&SpiInstance, XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION |XSPIPS_CLK_PHASE_1_OPTION);
	Status = XSpiPs_SetOptions(&SpiInstance, XSPIPS_MASTER_OPTION | XSPIPS_CLK_PHASE_1_OPTION);


	Status = XSpiPs_SetClkPrescaler(&SpiInstance, XSPIPS_CLK_PRESCALE_16);


	XSpiPs_SetSlaveSelect(&SpiInstance, 0x00);

	return XST_SUCCESS;
}

/* -------------------SPI------------- */
void spi_ps_send(XSpiPs *SpiInstancePtr,u8 *SendBuffer, int ByteCount)
{
	XSpiPs_PolledTransfer(SpiInstancePtr, SendBuffer, read_buf, ByteCount);
	//printf("spi read %x %x %x \n\r", read_buf[0], read_buf[1], read_buf[2] );
}

/* -------------------SPI------------- */
void spi_ps_read(XSpiPs *SpiInstancePtr,u8 *ReadBuffer,int ByteCount)
{
	XSpiPs_PolledTransfer(SpiInstancePtr, send_buf, ReadBuffer,ByteCount);
}


void spi_test(void)
{
	int i;
	uint8_t buf[256];
	for (i = 0; i< 255; i++)
	{
		buf[i] = i;
	}
	spi_ps_send(&SpiInstance, buf, 3);
}


uint8_t transferSPI(uint8_t val)
{
	//set_gpio(0,0);
	spi_ps_send(&SpiInstance, &val, 1);
	return read_buf[0];
	//set_gpio(0,1);
}
