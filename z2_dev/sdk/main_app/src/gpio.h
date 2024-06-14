#ifndef GPIO_H
#define GPIO_H

#include <stdio.h>
#include "xgpio.h"


void set_gpio(XGpio* gp, uint8_t ch, uint8_t pin, uint8_t val);
uint8_t read_gpio(XGpio* gp, uint8_t ch, uint8_t pin);

void main_gpio_init(XScuGic *IntcTimer);
#endif
