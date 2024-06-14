#ifndef HW_IF_H
#define HW_IF_H

#include <stdio.h>
#include "xscugic.h"
#include "xil_exception.h"

#define ENABLE_NET			1

//xadc
#define XPAR_AXI_GP0_BASEADDR 0x43c00000
#define XPAR_XADC_TEMPERATURE 0x200
#define XPAR_XADC_VCCINT 0x204
#define XPAR_XADC_VCCAUX 0x208
#define XPAR_XADC_VPVN   0x20c
#define XPAR_XADC_VBRAM   0x218





#define DDR_ADDR   0x00110000

#define XADC_BASE_ADDR   0x43c00000

#define XADCPS_CH_TEMP 0x200  /**< On Chip Temperature */
#define XADCPS_CH_VCCINT 0x204  /**< VCCINT */
#define XADCPS_CH_VCCAUX 0x208  /**< VCCAUX */
#define XADCPS_CH_VPVN 0x20c  /**< VP/VN Dedicated analog inputs */
#define XADCPS_CH_VREFP 0x210  /**< VREFP */
#define XADCPS_CH_VREFN 0x214  /**< VREFN */
#define XADCPS_CH_VBRAM 0x218  /**< On-chip VBRAM Data Reg, 7 series */

#define XADCPS_CH_SUPPLY_CALIB 0x220 /**< Supply Calib Data Reg */
#define XADCPS_CH_ADC_CALIB 0x224 /**< ADC Offset Channel Reg */
#define XADCPS_CH_GAINERR_CALIB 0x228 /**< Gain Error Channel Reg  */

#define XADCPS_CH_VCCPINT 0x234 /**< On-chip PS VCCPINT Channel , Zynq */
#define XADCPS_CH_VCCPAUX 0x238 /**< On-chip PS VCCPAUX Channel , Zynq */
#define XADCPS_CH_VCCPMEM 0x23c /**< On-chip PS VCCPMEM Channel , Zynq */

#define XADCPS_CH_AUX_MIN 0x240 /**< Channel number for 1st Aux Channel */
#define XADCPS_CH_AUX_MAX 0x27c /**< Channel number for Last Aux channel */
#define UART_INT_ID    XPAR_XUARTPS_0_INTR


#define CPU0_ID              		XSCUGIC_SPI_CPU0_MASK
#define CPU1_ID              		XSCUGIC_SPI_CPU1_MASK
#define SOFT_INTR_ID_TO_CPU0 		0
#define SOFT_INTR_ID_TO_CPU1 		1
#define CPU_SHARE_BASE            	0x1f000000

#define ARM_TO_MB_ADDRESS 	0x40000000
#define MB_TO_ARM_ADDRESS 	0x40001000


//timer
#define LOAD_VALUE 			(3250U) //3250 for 100k sps



#define SCG_ID XPAR_SCUGIC_0_DEVICE_ID
#define TIMER_ID XPAR_PS7_SCUTIMER_0_DEVICE_ID
#define TIMER_INT_ID XPAR_SCUTIMER_INTR



typedef enum {
    CMD_PING_PORT,              // 0x00
    CMD_START_PULSE,            // 0x01
    CMD_STOP_PULSE,             // 0x02
    CMD_GET_PULSE,              // 0x03
    CMD_SET_PULSE,              // 0x04
    CMD_START_ADC,              // 0x05
    CMD_STOP_ADC,               // 0x06
    CMD_SEVERAL_PULSE,          // 0x07
    CMD_SEVERAL_PULSE_NOCHANGE, // 0x08
    CMD_DUAL_PULSES,            // 0x09
    CMD_SIGNAL_PLAY,            // 0x0A
    CMD_START_PACE_CAPTURE,     // 0x0B
    CMD_STOP_PACE_CAPTURE,      // 0x0C
    CMD_START_ADC_RAW_CAPTURE,  // 0x0D
    CMD_STOP_ADC_RAW_CAPTURE,   // 0x0E
	CMD_APPLY_MAGNET, 			// 0x0F
	CMD_REMOVE_MAGNET, 			// 0x10
	CMD_START_I2C_DECODE,		// 0x11
	CMD_STOP_I2C_DECODE,		// 0x12
	CMD_TRIGGER_PULSE,			// 0x13
	CMD_CONTROL_PIN,			// 0x14
	CMD_SENSITIVITY_TEST,		// 0x15
	CMD_INPUT_IMPEDANCE_TEST,	// 0x16
	CMD_CURRENT_MEASURE_SELECTION,	// 0x17
	CMD_SELECT_SIGNAL_GENERATOR,// 0x18
	CMD_SELECT_NEAR_FIELD_IMPEDANCE, // 0x19
	CMD_VOLTAGE_MEASURE, 		// 0x1A
	CMD_UART_MAX
} TESTER_COMMAND_TYPE;

typedef enum
{
    CMD_NOP,              // 0x00
    CMD_PACE,             // 0x01
    CMD_RAW,              // 0x02
	CMD_I2C,              // 0x03
	CMD_ECG,              // 0x04
    CMD_SHOCK,            // 0x05
	CMD_EPOC_TIME,        // 0x06
	CMD_UPLOAD_LOG,       // 0x07
	CMD_START_ECG,        // 0x08
	CMD_STOP_ECG,         // 0x09
	CMD_LOAD_ECG,         // 0x0A
	CMD_SET_AMPLITUDE,    // 0x0B
	CMD_SET_FILE_NO,      // 0x0C
	CMD_SET_RUN_MODE,     // 0x0D
	CMD_DAC_DONE,         // 0x0E
	CMD_DAC_UPDATE,       // 0x0F
	CMD_DAC_RANGE,        // 0x10
    CMD_MAX
} NET_COMMAND_TYPE;


typedef enum
{
    M1_RESET_BLE  	= 0,
    M1_RESET_M2  	= 1,
	M2_RESET_M1  	= 2,
	BLE_ALARM  	    = 3,
} INT_TYPE;

typedef enum
{
    LowCurrent  	= 0,
    HighCurrent  	= 1,
	StopMeasurement  	= 2,
} Current_Measurement_Flag;

typedef enum
{
	W15  	= 0,
	H15  	= 1,
	W10  	= 2,
	V10  	= 3,
	V8  	= 4,
	U8  	= 5,
	V7  	= 6,
	U7  	= 7,
	Y17  	= 8,
	Y7  	= 9,
	W6  	= 10,
	Y6  	= 11,
} GPIO_PIN_NUMBER;

extern volatile uint8_t tcp_check_update;
// extern uint8_t current_measurement_flag;
// extern uint8_t voltage_measurement_flag;
void writeGPIOPins(uint8_t pinNumber, uint32_t value);
void toggleGPIOPulse(uint8_t pinNumber);
void icd_tester_init(void);
void sensitivityTest(void);
// void inputImpedanceTest(uint8_t pinCombination);
// void CurrentMeasurementSelection(uint8_t BigOrSmall);
// void VoltageMeasurementSelection(uint8_t measureOrNot);
// void signalInputSourceIsSignalGenerator(uint8_t UsingSignalGenerator);
// void NearFieldImpedance(uint8_t pinCombination);
void csp_tester_loop(void);
void update_timer_index(uint32_t index);
void icd_send_data(uint8_t* buf, uint16_t len);

void read_main_gpio_int(void);

void read_ddr(uint8_t* buf, uint32_t len);
void write_ddr(uint8_t* buf, uint32_t len);
void write_ddr_cmd(uint8_t* buf, uint32_t len, uint8_t cmd, uint16_t rate, uint16_t amplitude);
void write_ddr_cmd_header(uint8_t* header, uint32_t len);
void send_dac_update(void);
void send_dac_new_ecg(uint8_t* buf, uint8_t len);
#endif
