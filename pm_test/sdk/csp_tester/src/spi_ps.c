#include "comlib.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "gpio.h"

#include "spi_ps.h"

XSpiPs SpiInstance_0;
XSpiPs SpiInstance_1;

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
	Status = XSpiPs_CfgInitialize((&SpiInstance_0), SpiConfig, SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	//Status = XSpiPs_SetOptions(&SpiInstance, XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION |XSPIPS_CLK_PHASE_1_OPTION);
	Status = XSpiPs_SetOptions(&SpiInstance_0, XSPIPS_MASTER_OPTION | XSPIPS_CLK_PHASE_1_OPTION);


	Status = XSpiPs_SetClkPrescaler(&SpiInstance_0, XSPIPS_CLK_PRESCALE_16);


	XSpiPs_SetSlaveSelect(&SpiInstance_0, 0x00);



	SpiConfig = XSpiPs_LookupConfig(1);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}
	/*  */
	Status = XSpiPs_CfgInitialize((&SpiInstance_1), SpiConfig, SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	//Status = XSpiPs_SetOptions(&SpiInstance, XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION |XSPIPS_CLK_PHASE_1_OPTION);
	Status = XSpiPs_SetOptions(&SpiInstance_1, XSPIPS_MASTER_OPTION );


	Status = XSpiPs_SetClkPrescaler(&SpiInstance_1, XSPIPS_CLK_PRESCALE_16);


	XSpiPs_SetSlaveSelect(&SpiInstance_1, 0x00);

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
	SPI_1_CS_LOW();
	spi_ps_send(&SpiInstance_1, buf, 2);
	SPI_1_CS_HIGH();
}


uint8_t transferSPI(uint8_t val)
{
	//set_gpio(0,0);
	spi_ps_send(&SpiInstance_0, &val, 1);
	return read_buf[0];
	//set_gpio(0,1);
}


/**
  * @brief
  * @param  TxData
  * @retval None
  */
void SPI_WriteByte(uint8_t TxData)
{
	XSpiPs_PolledTransfer(&SpiInstance_1, &TxData, read_buf, 1);
}

/**
  * @brief
  * @retval
  */
uint8_t SPI_ReadByte(void)
{
	uint8_t ret;
	send_buf[0] = 0xFF;
	XSpiPs_PolledTransfer(&SpiInstance_1, send_buf, &ret, 1);
	return ret;
}

/**
  * @brief
  * @retval None
  */
void SPI_CrisEnter(void)
{

}

/**
  * @brief
  * @retval None
  */
void SPI_CrisExit(void)
{

}

/**
  * @brief
  * @retval None
  */
void SPI_CS_Select(void)
{
	SPI_1_CS_LOW();
}

/**
  * @brief
  * @retval None
  */
void SPI_CS_Deselect(void)
{
	SPI_1_CS_HIGH();
}

