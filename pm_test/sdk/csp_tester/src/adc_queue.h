#ifndef ADC_QUEUE_H
#define ADC_QUEUE_H

#include <stdio.h>

#define CB_ADC_SIZE   			(8192)
#define ECG_CHANNEL_SIZE      	(8)

typedef struct
{
	int32_t adc_ecg[ECG_CHANNEL_SIZE];
} ECG_ADC;

typedef struct
{
	ECG_ADC adc_data[CB_ADC_SIZE];
    uint16_t head;
    uint16_t tail;
} CB_ADC_t;


int cb_adc_reset();
int cb_adc_empty();
int cb_adc_full();
int cb_adc_put(ECG_ADC* data);
int cb_adc_get(ECG_ADC* data);


#endif
