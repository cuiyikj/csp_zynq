
#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"

#include "gpio.h"
#include "mem_main.h"

#define MAIN_INT_MASK  		0x0f
#define GPIO_INT_ID 		XPAR_FABRIC_GPIO_1_VEC_ID
#define GPIOPS_ID 			XPAR_XGPIOPS_0_DEVICE_ID
#define AXI_GPIO_ID 		XPAR_AXI_GPIO_0_DEVICE_ID


uint32_t output_pin =0xffffffff;

XGpio gpio_dev;
XGpio main_gpio_int;
uint8_t int_update = 0;

volatile uint8_t ADC_flag = 0;
volatile uint8_t ADC_index = 0;

uint8_t read_adc_buf[36*8];
uint8_t* adc_p = (uint8_t*)MB_ADC_ADDRESS;

void main_gpio_int_handler(void *CallbackRef)
{
	XGpio *GpioPtr = (XGpio *) CallbackRef;

	int_update = 1;
	//printf("main Int\r\n");
	//XGpio_InterruptDisable(GpioPtr, KEY_MASK);
	XGpio_InterruptClear(GpioPtr, MAIN_INT_MASK);
	//XGpio_InterruptEnable(GpioPtr, KEY_MASK);
	//memcpy(read_adc_buf, (uint8_t*)MB_ADC_ADDRESS, 36*8);


    cb_adc_put(adc_p);

	ADC_flag = 1;
	ADC_index++;


}

void main_gpio_init(XScuGic *Intcr)
{
	int xStatus = XGpio_Initialize(&gpio_dev, XPAR_AXI_GPIO_MAIN_LED_DEVICE_ID);
    if(XST_SUCCESS != xStatus)
    {
		printf("Failed to initialize GPIO");
	}
	XGpio_SetDataDirection(&gpio_dev, 1, 0);
	XGpio_SetDataDirection(&gpio_dev, 2, 0);

	//main gpio int
	xStatus = XGpio_Initialize(&main_gpio_int,
			XPAR_AXI_GPIO_MAIN_INT_DEVICE_ID);
	if (XST_SUCCESS != xStatus)
	{
		printf("Failed to initialize main GPIO");
	}
	XGpio_SetDataDirection(&main_gpio_int, 1, 0xf);

	int key_value = XGpio_DiscreteRead(&main_gpio_int, 1);
	printf("read main GPIO %d \r\n", key_value);
	XGpio_InterruptEnable(&main_gpio_int, MAIN_INT_MASK);
	XGpio_InterruptGlobalEnable(&main_gpio_int);

	XScuGic_SetPriorityTriggerType(Intcr, GPIO_INT_ID, 0xA0, 0x1);
	XScuGic_Connect(Intcr, GPIO_INT_ID, main_gpio_int_handler,
			&main_gpio_int);
	XScuGic_Enable(Intcr, GPIO_INT_ID);
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



void writeGPIOPins(uint8_t pinNumber, uint32_t value){
	value = value<<pinNumber;
	uint32_t clear_mask = ~(1 << pinNumber);
	uint32_t status = XGpio_DiscreteRead(&gpio_dev, 2);
	status = (status & clear_mask)|value;
	XGpio_DiscreteWrite(&gpio_dev, 2, status);
}

void toggleGPIOPulse(uint8_t pinNumber){
	uint32_t temp1 = 1<<pinNumber;
	uint32_t temp2 = 0<<pinNumber;
	uint32_t clear_mask = ~(1 << pinNumber);
	uint32_t status = XGpio_DiscreteRead(&gpio_dev, 2);
	uint32_t tempStatus1 = (status & clear_mask)|temp1;
	uint32_t tempStatus2 = (status & clear_mask)|temp2;
	XGpio_DiscreteWrite(&gpio_dev, 2, tempStatus1);
	XGpio_DiscreteWrite(&gpio_dev, 2, tempStatus2);
}

void read_main_gpio_int(void)
{
	int key_value = XGpio_DiscreteRead(&main_gpio_int, 1);
	printf("read main GPIO %d \r\n", key_value);
}

uint32_t led_loop_index = 0;
uint32_t led_index = 0;

void flash_led(void)
{
	//printf("loop_index %d\r\n", loop_index);
	if (led_loop_index >= 100000)
	{
		//printf("led %d\r\n", loop_index);
		led_index++;
		if (led_index % 2 == 0)
		{
			XGpio_DiscreteWrite(&gpio_dev, 1, 0x0);
        }
        else
        {
			XGpio_DiscreteWrite(&gpio_dev, 1, 0x03);
		}
		if (led_index % 10 == 0)
		{
			//printf("main app run  %d \r", led_index / 10);
			led_index++;
		}
		led_loop_index = 0;
	}

}
