#ifndef AXI_SPI_H
#define AXI_SPI_H

#include <stdio.h>


int axi_spi_init(void);

int spi_tansfer(void);

uint8_t transferSPI_N(uint8_t* val, uint8_t num);
void transferSPI_adc(uint8_t* val, uint8_t* adc_ret, uint8_t num);

#endif
