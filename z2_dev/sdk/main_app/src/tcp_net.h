#ifndef TCP_NET_H
#define TCP_NET_H

int tcp_transfer_adc_data(uint8_t * buf, uint16_t len);
int tcp_transfer_icd_data(uint8_t * buf, uint16_t len);
void process_tcp_icd(void);

#endif
