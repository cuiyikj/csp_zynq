#ifndef GPIO_H
#define GPIO_H

#include <stdio.h>


#define SPI_CS_LOW()		set_gpio(0,0)
#define SPI_CS_HIGH()		set_gpio(0,0)

#define RESET_LOW()		    set_gpio(2,0)
#define RESET_HIGH()		set_gpio(2,1)

void main_gpio_init();

void set_gpio(uint8_t pin, uint8_t val);

uint8_t read_gpio(uint8_t pin);


#endif
