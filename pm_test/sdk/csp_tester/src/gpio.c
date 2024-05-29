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

XGpio gpio_cs_1;
XGpio gpio_out_debug_2;
XGpio gpio_input_3;



uint32_t input_pin = 0;
uint32_t output_pin =0xffffffff;

//output pin XPAR_GPIO_1_DEVICE_ID CH1
//0 => Y17: spi0 cs
//output pin XPAR_GPIO_1_DEVICE_ID CH2
//0 => F16: spi1 cs

//input pin XPAR_GPIO_1_DEVICE_ID CH3
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
	int xStatus = XGpio_Initialize(&gpio_cs_1, XPAR_GPIO_1_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}
	//1 cs
	XGpio_SetDataDirection(&gpio_cs_1, 1, 0x3);
	XGpio_DiscreteWrite(&gpio_cs_1, 1, 0x3);
	XGpio_SetDataDirection(&gpio_cs_1, 2, 0x3);
	XGpio_DiscreteWrite(&gpio_cs_1, 2, 0x3);

	//2 output and debug
	xStatus = XGpio_Initialize(&gpio_out_debug_2, XPAR_GPIO_2_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}

	XGpio_SetDataDirection(&gpio_out_debug_2, 1, 0xf);
	XGpio_SetDataDirection(&gpio_out_debug_2, 2, 0xf);

	XGpio_DiscreteWrite(&gpio_out_debug_2, 1, 0xf);
	XGpio_DiscreteWrite(&gpio_out_debug_2, 2, 0xf);

	//3 input
	xStatus = XGpio_Initialize(&gpio_input_3, XPAR_GPIO_3_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}

	XGpio_SetDataDirection(&gpio_input_3, 1, 0);

}

void axi_gpio_handler(void *CallbackRef)
{
	ADS_RDATA();
    XGpio *GpioPtr = (XGpio *)CallbackRef;
    //XGpio_InterruptDisable(GpioPtr, KEY_MASK);

    XGpio_InterruptClear(GpioPtr, KEY_MASK);
	//XGpio_InterruptEnable(GpioPtr, KEY_MASK);

    printf("gpio interrupt\r\n");
}

int gpio_intrrupt_init(XScuGic *scugic_inst)
{
	XGpio_InterruptEnable(&gpio_input_3, KEY_MASK);
	XGpio_InterruptGlobalEnable(&gpio_input_3);
	XScuGic_SetPriorityTriggerType(scugic_inst, GPIO_INT_ID, 0xA0, 0x1);
	XScuGic_Connect(scugic_inst, GPIO_INT_ID, axi_gpio_handler, &gpio_input_3);
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
	//printf("gpio read %x \r\n", read);

	if (read & (1<<pin))
	{
		ret = 1;
	}

	return ret;

}



