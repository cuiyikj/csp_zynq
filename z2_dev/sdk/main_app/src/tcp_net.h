#ifndef TCP_NET_H
#define TCP_NET_H

#define TCP_ADC_PORT        7

typedef enum
{
    CMD_NOP,            // 0x00
    CMD_MESSURE_LEAD,   // 0x01
    CMD_TEST_NOISE,     // 0x02
    CMD_CALIBRATE,      // 0x03
    CMD_SPS_1K,         // 0x04
    CMD_SPS_2K,         // 0x05
    CMD_SPS_4K,         // 0x06
    CMD_SPS_8K,         // 0x07
    CMD_MAX
} COMMAND_TYPE;

int tcp_transfer_adc_data(uint8_t * buf, uint16_t len);
int tcp_transfer_icd_data(uint8_t * buf, uint16_t len);
void process_tcp_adc(void);

#endif
