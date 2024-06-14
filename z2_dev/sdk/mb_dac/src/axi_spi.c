/******************************************************************************
* Copyright (C) 2008 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
* @file xspi_polled_example.c
*
*
* This file contains a design example using the Spi driver (XSpi) and the Spi
* device using the polled mode.
*
* To put the driver in polled mode the Global Interrupt must be disabled after
* the Spi is Initialized and Spi driver is started.
*
* This example works with a PPC/MicroBlaze processor.
*
* @note
*
* None.
*
*<pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------------
* 1.00a sdm  03/03/08 First Release
* 3.00a ktn  10/28/09 Converted all register accesses to 32 bit access.
*		      Updated to use the HAL APIs/macros. Replaced call to
*		      XSpi_Initialize API with XSpi_LookupConfig and
*		      XSpi_CfgInitialize.
* 3.02a sdm  05/04/11 Updated to run the loopback test only in standard spi
*		      mode.
* 4.2   ms   01/23/17 Added xil_printf statement in main function to
*                     ensure that "Successfully ran" and "Failed" strings
*                     are available in all examples. This is a fix for
*                     CR-965028.
*</pre>
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"	/* XPAR parameters */
#include "xspi.h"		/* SPI device driver */
#include "xspi_l.h"
#include "xil_printf.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define SPI_DEVICE_ID		XPAR_AXI_QUAD_SPI_0_DEVICE_ID

/*
 *  This is the size of the buffer to be transmitted/received in this example.
 */
#define BUFFER_SIZE		12


/**************************** Type Definitions *******************************/

/*
 * The following data type is used to send and receive data on the SPI
 * interface.
 */
typedef u8 DataBuffer[BUFFER_SIZE];


/***************** Macros (Inline Functions) Definitions *********************/



/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that the
 * are initialized to zero each time the program runs.
 */
static XSpi  spi_instance;	 /* The instance of the SPI device */

/*
 * The following variables are used to read and write to the  Spi device, they
 * are global to avoid having large buffers on the stack.
 */
u8 ReadBuffer[256];
u8 WriteBuffer[256];


/*****************************************************************************/
/**
*
* Main function to call the Spi Polled example.
*
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None
*
******************************************************************************/


int axi_spi_init(void)
{
	int Status;
	u32 Count;
	u8 Test;
	XSpi_Config *ConfigPtr;	/* Pointer to Configuration data */

	/*
	 * Initialize the SPI driver so that it is  ready to use.
	 */
	ConfigPtr = XSpi_LookupConfig(SPI_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XSpi_CfgInitialize(&spi_instance, ConfigPtr,
				  ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XSpi_SelfTest(&spi_instance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Run loopback test only in case of standard SPI mode.
	 */
	if (spi_instance.SpiMode != XSP_STANDARD_MODE) {
		return XST_SUCCESS;
	}

	/*
	 * Set the Spi device as a master and in loopback mode.
	 */
	Status = XSpi_SetOptions(&spi_instance, XSP_MASTER_OPTION |	XSP_CLK_PHASE_1_OPTION | XSP_MANUAL_SSELECT_OPTION );
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Start the SPI driver so that the device is enabled.
	 */
	XSpi_Start(&spi_instance);

	/*
	 * Disable Global interrupt to use polled mode operation
	 */
	XSpi_IntrGlobalDisable(&spi_instance);

	XSpi_SetSlaveSelect(&spi_instance, 0b1);
	/*
	 * Initialize the write buffer with pattern to write, initialize the
	 * read buffer to zero so it can be verified after the read, the
	 * Test value that is added to the unique value allows the value to be
	 * changed in a debug environment.
	 */
	Test = 0xa5;
	for (Count = 0; Count < BUFFER_SIZE; Count++) {
		WriteBuffer[Count] = (u8)(Count + Test);
		ReadBuffer[Count] = 0;
	}

	printf("axi spi init good\r\n");

	return XST_SUCCESS;
}

int spi_tansfer(void)
{
	return XSpi_Transfer(&spi_instance, WriteBuffer, ReadBuffer, 1);
}


uint8_t transferSPI(uint8_t val)
{
	//set_gpio(0,0);
	XSpi_Transfer(&spi_instance, &val, ReadBuffer, 1);
	return ReadBuffer[0];
	//set_gpio(0,1);
}



uint8_t transferSPI_N(uint8_t* val, uint8_t num)
{
	//set_gpio(0,0);

	XSpi_Transfer(&spi_instance, val, ReadBuffer, num);
	return ReadBuffer[0];
	//set_gpio(0,1);
}

void transferSPI_adc(uint8_t* val, uint8_t* adc_ret, uint8_t num)
{
	//set_gpio(0,0);

	XSpi_Transfer(&spi_instance, val, adc_ret, num);
	//return ReadBuffer[0];
	//set_gpio(0,1);
}

