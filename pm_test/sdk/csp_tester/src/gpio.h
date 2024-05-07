#ifndef GPIO_H
#define GPIO_H

#include <stdio.h>


void main_gpio_init();

void set_gpio(uint8_t pin, uint8_t val);

uint8_t read_gpio(uint8_t pin);


#endif
