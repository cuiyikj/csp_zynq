#include "led.h"
#include "led.h"

#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"


XGpio main_gpio;

uint32_t input_pin = 0;
uint32_t output_pin =0xffffffff;

//output pin
//0 => U18: spi cs
//1 => U19: spi start
//2 => W18: pwd
//3 => W19: reset

//input pin
//0 => B20: spi ready
//1 => B19:
//2 => A20:
//3 => Y9:


void main_gpio_init(void)
{
	//main gpio int
	int xStatus = XGpio_Initialize(&main_gpio, XPAR_GPIO_1_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}
	//1 output
	XGpio_SetDataDirection(&main_gpio, 1, 0x3);
	XGpio_DiscreteWrite(&main_gpio, 1, 0xff);

	//2 input
	XGpio_SetDataDirection(&main_gpio, 2, 0);

}

void set_gpio(uint8_t pin, uint8_t val)
{

	if (val == 0)
	{
		output_pin = output_pin & (~(1<<pin));
	}
	else
	{
		output_pin = output_pin | (1<<pin);

	}
	XGpio_DiscreteWrite(&main_gpio, 1, output_pin);
}

void toggle_gpio(uint8_t pin)
{

}

uint8_t read_gpio(uint8_t pin)
{
	uint32_t ret = 0;
	uint32_t read = 0;

	read = XGpio_DiscreteRead(&main_gpio, 2);

	if (read & (pin<<1))
	{
		ret = 1;
	}

	return ret;

}

