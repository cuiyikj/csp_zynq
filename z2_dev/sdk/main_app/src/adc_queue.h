#ifndef ADC_QUEUE_H
#define ADC_QUEUE_H

#include <stdio.h>

#define CB_ADC_SIZE   			(20)

typedef struct
{
	uint8_t adc_ecg[36*8];
} ECG_ADC;

typedef struct
{
	ECG_ADC adc_data[CB_ADC_SIZE];
    uint16_t head;
    uint16_t tail;
} CB_ADC_t;

extern CB_ADC_t adc_cb;

int cb_adc_reset();
int cb_adc_empty();
int cb_adc_full();
int cb_adc_put(uint8_t* data);
int cb_adc_get(uint8_t* data);


#endif
