#ifndef GPIO_H
#define GPIO_H

#include <stdio.h>
#include "xgpio.h"
extern XGpio gpio_device_spi;
extern XGpio gpio_device_drdy;
extern XGpio gpio_device_int;



#define SPI_0_CS_LOW()				set_gpio(&gpio_device_spi, 1, 0, 0)
#define SPI_0_CS_HIGH()				set_gpio(&gpio_device_spi, 1, 0, 1)

#define RESET_ADS1298_LOW()			set_gpio(&gpio_device_spi, 2, 0, 0)
#define RESET_ADS1298_HIGH()		set_gpio(&gpio_device_spi, 2, 0, 1)

#define READ_SPI_DRDY()	        	read_gpio(&gpio_device_drdy, 1, 0)
#define DEBUG_GPIO_HIGH()			set_gpio(&gpio_device_drdy, 2, 0, 1)
#define DEBUG_GPIO_LOW()			set_gpio(&gpio_device_drdy, 2, 0, 0)


#define INT_GPIO_HIGH()				set_gpio(&gpio_device_int, 1, 0, 1)
#define INT_GPIO_LOW()				set_gpio(&gpio_device_int, 1, 0, 0)



int mb_gpio_init(void);

void set_gpio(XGpio* gp, uint8_t ch, uint8_t pin, uint8_t val);
uint8_t read_gpio(XGpio* gp, uint8_t ch, uint8_t pin);


#endif
