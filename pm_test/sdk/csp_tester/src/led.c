#include "led.h"
#include "led.h"

#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"


XGpio main_gpio_led;

uint32_t led_index = 0;

void main_led_gpio_init(void)
{
	//main_gpio_led = XGpio_LookupConfig(XPAR_GPIO_0_DEVICE_ID);

	//main gpio int
	int xStatus = XGpio_Initialize(&main_gpio_led, XPAR_GPIO_0_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}
	XGpio_SetDataDirection(&main_gpio_led, 1, 0x3);
	XGpio_DiscreteWrite(&main_gpio_led, 1, 0xf);

//	int xStatus2 = XGpio_Initialize(&main_gpio, XPAR_GPIO_1_DEVICE_ID);
//	if (XST_SUCCESS != xStatus2)
//	{
//		printf("Failed to initialize main GPIO");
//	}
//
//	XGpio_SetDataDirection(&main_gpio, 1, 0xf);
//	XGpio_DiscreteWrite(&main_gpio, 1, 0xf);

}

void flash_led(void)
{
	//printf("led\r\n");
	led_index++;
	if (led_index % 2 == 0)
	{
		XGpio_DiscreteWrite(&main_gpio_led, 1, 0x1);
		//XGpio_DiscreteWrite(&main_gpio, 1, 0x0);
		//XGpio_DiscreteWrite(&main_gpio, 2, 0x0);
	}
	else
	{
		XGpio_DiscreteWrite(&main_gpio_led, 1, 0x2);
		//XGpio_DiscreteWrite(&main_gpio, 1, 0xf);
		//XGpio_DiscreteWrite(&main_gpio, 2, 0xf);
	}
}

