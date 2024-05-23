#include "led.h"
#include "led.h"

#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "xil_printf.h"
#include "xil_io.h"


#include "gpio.h"
#include "ads1298.h"

XGpio gpio_1;
XGpio gpio_2;




uint32_t input_pin = 0;
uint32_t output_pin =0xffffffff;

//output pin XPAR_GPIO_1_DEVICE_ID CH1
//0 => Y17: spi cs

//input pin XPAR_GPIO_1_DEVICE_ID CH2
//0 => B20:
//1 => B19:
//2 => A20:
//3 => Y9: SPI READY

//output pin XPAR_GPIO_2_DEVICE_ID CH1
//0 => U18: RESET
//1 => U19:
//2 => W18:
//3 => W19:







//XPAR_GPIO_0_DEVICE_ID => LED
//XPAR_GPIO_1_DEVICE_ID => SPI_CS AND INPUT
//XPAR_GPIO_2_DEVICE_ID => OUTPUT AND DEBUG

void main_gpio_init(void)
{
	//main gpio int
	int xStatus = XGpio_Initialize(&gpio_1, XPAR_GPIO_1_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}
	//1 output
	XGpio_SetDataDirection(&gpio_1, 1, 0x1);
	XGpio_DiscreteWrite(&gpio_1, 1, 0x1);
	//2 input
	XGpio_SetDataDirection(&gpio_1, 2, 0);


	xStatus = XGpio_Initialize(&gpio_2, XPAR_GPIO_2_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}
	//1 output
	XGpio_SetDataDirection(&gpio_2, 1, 0xF);
	XGpio_DiscreteWrite(&gpio_2, 1, 0xF);
	//2 DEBUG
	XGpio_SetDataDirection(&gpio_2, 2, 0xF);
	XGpio_DiscreteWrite(&gpio_2, 2, 0xF);

}

void axi_gpio_handler(void *CallbackRef)
{
	ADS_RDATA();
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    //XGpio_InterruptDisable(GpioPtr, KEY_MASK);

    XGpio_InterruptClear(GpioPtr, KEY_MASK);
	//XGpio_InterruptEnable(GpioPtr, KEY_MASK);

    //printf("gpio int\r\n");
}

int gpio_intrrupt_init(XScuGic *scugic_inst)
{
	XGpio_InterruptEnable(&gpio_1, KEY_MASK);
	XGpio_InterruptGlobalEnable(&gpio_1);
	XScuGic_SetPriorityTriggerType(scugic_inst, GPIO_INT_ID, 0xA0, 0x1);
	XScuGic_Connect(scugic_inst, GPIO_INT_ID, axi_gpio_handler, &gpio_1);
	XScuGic_Enable(scugic_inst, GPIO_INT_ID);
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	(Xil_ExceptionHandler)XScuGic_InterruptHandler, scugic_inst);
	Xil_ExceptionEnable();

	return 0;
}

void set_gpio(XGpio* gp, uint8_t ch, uint8_t pin, uint8_t val)
{
	if (val == 0)
	{
		output_pin = output_pin & (~(1<<pin));
	}
	else
	{
		output_pin = output_pin | (1<<pin);
	}
	XGpio_DiscreteWrite(gp, ch, output_pin);
}

void toggle_gpio(uint8_t pin)
{

}

uint8_t read_gpio(XGpio* gp, uint8_t ch, uint8_t pin)
{
	uint32_t ret = 0;
	uint32_t read = 0;

	read = XGpio_DiscreteRead(gp, ch);

	if (read & (pin<<1))
	{
		ret = 1;
	}

	return ret;

}



