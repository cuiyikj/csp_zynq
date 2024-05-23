#ifndef GPIO_H
#define GPIO_H

#include <stdio.h>
#include "xgpio.h"

#define AXI_GPIO_ID 		XPAR_AXI_GPIO_1_DEVICE_ID

#define GPIO_INT_ID 		XPAR_FABRIC_GPIO_1_VEC_ID
#define KEY_CHANNEL 		0
#define KEY_MASK    		XGPIO_IR_CH2_MASK

extern XGpio gpio_1;
extern XGpio gpio_2;

#define SPI_CS_LOW()		set_gpio(&gpio_1, 1, 0, 0)
#define SPI_CS_HIGH()		set_gpio(&gpio_1, 1, 0, 1)

//#define READ_SPI_DRDY()	    read_gpio(&gpio_1, 2, 3)


#define RESET_LOW()		    set_gpio(&gpio_2, 1, 0, 0)
#define RESET_HIGH()		set_gpio(&gpio_2, 1, 0, 1)

#define DEBUG_LOW()		    set_gpio(&gpio_2, 2, 0, 0)
#define DEBUG_HIGH()		set_gpio(&gpio_2, 2, 0, 1)


void main_gpio_init();

void set_gpio(XGpio* gp, uint8_t ch, uint8_t pin, uint8_t val);

uint8_t read_gpio(XGpio* gp, uint8_t ch, uint8_t pin);

int gpio_intrrupt_init(XScuGic *IntcInstancePtr);
#endif
