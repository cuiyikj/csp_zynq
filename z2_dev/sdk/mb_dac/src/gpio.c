
#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"
#include "xintc.h"
#include "gpio.h"
#include "ADS1298.h"


#define INTC_DEVICE_ID   			XPAR_INTC_0_DEVICE_ID
#define EXCEPTION_ID     			XIL_EXCEPTION_ID_INT
#define AXI_GPIO_INTR_ID 			XPAR_INTC_0_GPIO_0_VEC_ID

static XIntc    Intc;

uint32_t output_pin =0xffffffff;
uint8_t DRDY_flag = 0;
volatile uint8_t ADC_flag = 0;

uint8_t enable_adc_isr = 1;
#define KEY_DEV_ID      			XPAR_GPIO_0_DEVICE_ID


XGpio gpio_device_drdy;
XGpio gpio_device_spi_cs;
XGpio gpio_device_int;


void GpioHandler(void *CallbackRef)
{
	XGpio *GpioPtr = (XGpio *)CallbackRef;
//	DRDY_flag = 0;
//
//	if (DRDY_flag == 0)
//	{
//		//DEBUG_GPIO_HIGH();
//	}
	XGpio_InterruptDisable(GpioPtr, 1);
	ADS_RDATA();

	XGpio_InterruptClear(GpioPtr, 1);
//	DEBUG_GPIO_HIGH();
//	DEBUG_GPIO_LOW();

	XGpio_InterruptEnable(GpioPtr, 1);
	//ADS_RDATA();
	//ADC_flag = 1;
	//XGpio_InterruptEnable(GpioPtr, 1);
	//print("ISR\n\r");
//	if (DRDY_flag == 0)
//	{
//		//DEBUG_GPIO_LOW();
//		DRDY_flag = 1;
//	}

}

int mb_gpio_init(void)
{
	/* Initialization */
	XStatus  status;

	status = XGpio_Initialize(&gpio_device_spi_cs, XPAR_GPIO_2_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		print("MB adc init error\n\r");
		return XST_FAILURE;
	}
	if (status != XST_SUCCESS)
	{
		print("MB adc init error\n\r");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&gpio_device_spi_cs, 1, 0);
	XGpio_SetDataDirection(&gpio_device_spi_cs, 2, 0);
	XGpio_DiscreteWrite(&gpio_device_spi_cs, 1, 1);
	XGpio_DiscreteWrite(&gpio_device_spi_cs, 2, 1);

	//intc DRDY
	status = XGpio_Initialize(&gpio_device_drdy, XPAR_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		print("MB adc init error\n\r");
		return XST_FAILURE;
	}
	if (status != XST_SUCCESS)
	{
		print("MB adc init error\n\r");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&gpio_device_drdy, 1, 1);
	XGpio_SetDataDirection(&gpio_device_drdy, 2, 0);


	//int gpio
	status = XGpio_Initialize(&gpio_device_int, XPAR_GPIO_1_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		print("MB adc init error\n\r");
		return XST_FAILURE;
	}
	if (status != XST_SUCCESS)
	{
		print("MB adc init error\n\r");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&gpio_device_int, 1, 0);
	XGpio_DiscreteWrite(&gpio_device_int, 1, 1);


	XIntc_Initialize(&Intc, INTC_DEVICE_ID);
	XIntc_Connect(&Intc,AXI_GPIO_INTR_ID,(Xil_ExceptionHandler)GpioHandler, &gpio_device_drdy );
	XGpio_InterruptEnable(&gpio_device_drdy, 1);
	XGpio_InterruptGlobalEnable(&gpio_device_drdy);
	XIntc_Enable(&Intc,AXI_GPIO_INTR_ID);
	XIntc_Start(&Intc, XIN_REAL_MODE);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(EXCEPTION_ID,(Xil_ExceptionHandler)XIntc_InterruptHandler,&Intc);
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



