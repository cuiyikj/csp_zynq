#ifndef CONFIG_H
#define CONFIG_H

//#define ENABLE_LOG

#define CPU0_ID              		XSCUGIC_SPI_CPU0_MASK
#define CPU1_ID              		XSCUGIC_SPI_CPU1_MASK
#define SOFT_INTR_ID_TO_CPU0 		0
#define SOFT_INTR_ID_TO_CPU1 		1
#define CPU_SHARE_BASE            	0x1f000000


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




#endif
