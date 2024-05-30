
#ifndef SRC_SPIPS_H_
#define SRC_SPIPS_H_

#include "xparameters.h"	/* EDK generated parameters */
#include "xspips.h"		/* SPI device driver */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xil_exception.h"
#include "xil_printf.h"


void spi_ps_read(XSpiPs *SpiInstancePtr,u8 *ReadBuffer,int ByteCount);

void spi_ps_send(XSpiPs *SpiInstancePtr,u8 *SendBuffer, int ByteCount);

int spi_ps_init(void);

void spi_test(void);

uint8_t transferSPI(uint8_t val);

#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define MAX_DATA			100




void SPI_WriteByte(uint8_t TxData);

uint8_t SPI_ReadByte(void);

void SPI_CrisEnter(void);

void SPI_CrisExit(void);

void SPI_CS_Select(void);

void SPI_CS_Deselect(void);


#endif /* SRC_SPIPS_H_ */
