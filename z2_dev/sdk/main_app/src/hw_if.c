#include <stdio.h>

#include "comlib.h"
#include "platform.h"
#include <string.h>

#include "hw_if.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"
#include "sleep.h"
#include "comlib.h"

#include "xscutimer.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xllfifo.h"
#include "xuartps.h"
#include "hw_if.h"
#include "uart.h"


#include "time.h"

#include "tcp_net.h"
#include "adc_queue.h"

extern uint32_t int_index;

#define SCUGIC_ID 			XPAR_SCUGIC_0_DEVICE_ID

#define I2C_INT_ID 			61



#define FIFO_DEV_ID	   		XPAR_AXI_FIFO_0_DEVICE_ID

#define RESET_RX_CNTR_LIMIT	400

extern struct netif *echo_netif;

XLlFifo_Config *Config;
XLlFifo FifoInstance;

//icd tester



XScuTimer_Config *scu_timer;
XScuTimer timer_inst;
XScuGic_Config *scugic_cfg_ptr;
XScuGic scugic_inst;
int seconds;
uint32_t update_dac_index = 0;

uint32_t fifo_len;
volatile uint8_t tcp_check_update = 0;



uint8_t pre_int_status = 0;

uint32_t ble_alarm_time = 0;
uint32_t pre_ble_alarm_time = 0;

uint8_t* arm_to_mb_base_mem = (uint8_t*) ARM_TO_MB_ADDRESS;
uint8_t* mb_to_arm_base_mem = (uint8_t*) MB_TO_ARM_ADDRESS;

uint8_t start_new_ecg = 0;
uint8_t dac_update_flag = 0;


uint8_t current_measurement_flag = StopMeasurement;
uint8_t voltage_measurement_flag = StopMeasurement;
void tcp_fasttmr(void);
void tcp_slowtmr(void);

#ifndef USE_SOFTETH_ON_ZYNQ
static int ResetRxCntr = 0;
#endif
volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

#if LWIP_DHCP==1
volatile int dhcp_timoutcntr = 24;
void dhcp_fine_tmr();
void dhcp_coarse_tmr();
#endif

void TimerHandler(void *callback);
uint8_t timer_init(void);
void flash_led(void);
void process_adc(void);
void process_uart(void);

void update_tcp(void)
{
	//xil_printf("timer_callback 250ms\n\r");
	static int DetectEthLinkStatus = 0;
	/* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified
	 * by lwIP. It is not important that the timing is absoluetly accurate.
	 */
	static int odd = 1;
#if LWIP_DHCP==1
	static int dhcp_timer = 0;
#endif
	DetectEthLinkStatus++;
	TcpFastTmrFlag = 1;
    //tcp_fasttmr();
	odd = !odd;
#ifndef USE_SOFTETH_ON_ZYNQ
	ResetRxCntr++;
#endif
	if (odd) {
#if LWIP_DHCP==1
		dhcp_timer++;
		dhcp_timoutcntr--;
#endif
		TcpSlowTmrFlag = 1;
       // tcp_slowtmr();
#if LWIP_DHCP==1
		dhcp_fine_tmr();
		if (dhcp_timer >= 120) {
			dhcp_coarse_tmr();
			dhcp_timer = 0;
		}
#endif
	}

	/* For providing an SW alternative for the SI #692601. Under heavy
	 * Rx traffic if at some point the Rx path becomes unresponsive, the
	 * following API call will ensures a SW reset of the Rx path. The
	 * API xemacpsif_resetrx_on_no_rxdata is called every 100 milliseconds.
	 * This ensures that if the above HW bug is hit, in the worst case,
	 * the Rx path cannot become unresponsive for more than 100
	 * milliseconds.
	 */
#ifndef USE_SOFTETH_ON_ZYNQ
	if (ResetRxCntr >= RESET_RX_CNTR_LIMIT)
	{
		xemacpsif_resetrx_on_no_rxdata(echo_netif);
		ResetRxCntr = 0;
	}
#endif
	/* For detecting Ethernet phy link status periodically */
	if (DetectEthLinkStatus == ETH_LINK_DETECT_INTERVAL)
	{
		eth_link_detect(echo_netif);
		DetectEthLinkStatus = 0;
	}
}

int fifo_init(void)
{
	XLlFifo_Config *Config;
	int Status;

	/* Initialize the Device Configuration Interface driver */
	Config = XLlFfio_LookupConfig(FIFO_DEV_ID);
	if (!Config)
	{
		xil_printf("No config found for %d\r\n", FIFO_DEV_ID);
		return XST_FAILURE;
	}

	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XLlFifo_CfgInitialize(&FifoInstance, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	/* Check for the Reset value */
	Status = XLlFifo_Status(&FifoInstance);
	XLlFifo_IntClear(&FifoInstance, 0xffffffff);
	Status = XLlFifo_Status(&FifoInstance);
	if(Status != 0x0)
	{
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r",	XLlFifo_Status(&FifoInstance));
		return XST_FAILURE;
	}
	//send and enable rx
	if( XLlFifo_iTxVacancy(&FifoInstance) )
	{
		XLlFifo_TxPutWord(&FifoInstance, 0);
	}
	XLlFifo_iTxSetLen(&FifoInstance, 4);
	xil_printf(" Transmitting Data done\r\n");

	return 0;
}

//static uint8_t* arm_to_mb_base_mem = (uint8_t*)ARM_TO_MB_ADDRESS;
//static uint8_t* mb_to_arm_base_mem = (uint8_t*)MB_TO_ARM_ADDRESS;
void icd_tester_init(void)
{
	fifo_init();
}

extern volatile uint8_t ADC_flag;
extern volatile uint8_t ADC_index;

uint32_t adc_loop_index = 0;
//uint8_t adc_buf[8 * 4 + 4];
uint16_t len;
//uint8_t adc_seq = 0;
ECG_ADC read_data[64];

void csp_tester_loop(void)
{
	int i;
    uint8_t read_index = 0;

	if (ADC_flag)
	{
        while (cb_adc_empty() == 0 && read_index < 8)
        {
            cb_adc_get((uint8_t *)&read_data[read_index]);
            read_index++;

        }
		tcp_transfer_adc_data((uint8_t *)read_data, 36 * 8 * read_index);
		ADC_index = 0;
		adc_loop_index++;
		if (adc_loop_index%1000000 == 0)
		{
			//printf("get adc data%d \r\n", adc_loop_index/1000000);
		}
	}

    if (tcp_check_update)
    {
        tcp_check_update = 0;
        update_tcp();
        //printf("tcp_check_update \r\n");
    }
}

void icd_send_data(uint8_t* buf, uint16_t len)
{
	//send_uart_1(buf, len);
	tcp_transfer_icd_data(buf, len);
}


void write_ddr(uint8_t* buf, uint32_t len)
{
	xil_printf("\r\nwrite ddr\r\n");

	uint32_t addr = CPU_SHARE_BASE;
	uint32_t i;
	for(i = 0; i < len; i++)
	{
		Xil_Out8(addr++, buf[i]);
		if (i < 64)
		{
			xil_printf("0x%X, ",buf[i]);
		}
	}
	xil_printf("\r\n");
}

void read_ddr(uint8_t* buf, uint32_t len)
{
	uint32_t i;
	uint32_t addr = CPU_SHARE_BASE;

	//xil_printf("\r\n read len =%ld \r\n", len);
	for (i = 0; i < len; i++)
	{
		buf[i] = Xil_In8(addr);
		addr = addr + 1;
	}
	//xil_printf("\r\n");

}


void write_ddr_cmd_header(uint8_t* header, uint32_t len)
{
	uint32_t addr = CPU_SHARE_BASE;
	uint32_t i;
	//printf("write ddr header len = %ld cmd =%d\r\n", len, header[1] );
	for(i = 0; i < len; i++)
	{
		Xil_Out8(addr++, header[i]);
		//xil_printf("0x%X, ",header[i]);
	}

}

void write_ddr_cmd(uint8_t* buf, uint32_t len, uint8_t cmd, uint16_t rate, uint16_t amplitude)
{
//	uint32_t addr = CPU_SHARE_BASE;
//	uint32_t i;
//	uint8_t header[16]= {0};
//	uint16_t crc16;
//
//	header[0] = 0x5a;
//	header[1] = cmd;
//
//	memcpy(&header[2], &len, 4);
//
//	crc16 = crc16_compute(buf, len, NULL);
//
//	header[6] = crc16 & 0xff;
//	header[7] = (crc16/256) & 0xff;
//
//	memcpy(&header[8], &rate, 2);
//	memcpy(&header[10], &amplitude, 2);
//
//
//	//printf("write ddr header len = %ld cmd =%d\r\n", len, header[1] );
//	for(i = 0; i < 16; i++)
//	{
//		Xil_Out8(addr++, header[i]);
//		//xil_printf("0x%X, ",header[i]);
//	}
//
//	//xil_printf("\r\n write ddr %ld\r\n", addr);
//	for(i = 0; i < len; i++)
//	{
//		Xil_Out8(addr++, buf[i]);
//		if (i >700000 && i < 700000 + 64)
//		{
//			//xil_printf("0x%X, ",buf[i]);
//		}
//	}
	//xil_printf("\r\n");
}




void send_dac_update(void)
{


}

void send_dac_new_ecg(uint8_t* buf, uint8_t len)
{


}

