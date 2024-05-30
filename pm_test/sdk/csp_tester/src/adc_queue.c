#include "adc_queue.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include <string.h>

CB_ADC_t adc_cb;

int cb_adc_reset()
{
    int r = -1;
    adc_cb.head = 0;
    adc_cb.tail = 0;
    return r;
}

int cb_adc_empty()
{
    // We define empty as head == tail
   return (adc_cb.head == adc_cb.tail);
}
int cb_adc_full()
{
    // We determine "full" case by head being one position behind the tail
    // Note that this means we are wasting one space in the buffer!
    // Instead, you could have an "empty" flag and determine buffer full that way
    return ((adc_cb.head + 1) % CB_ADC_SIZE) == adc_cb.tail;
}

int cb_adc_put(ECG_ADC* data)
{
    int r = -1;
    int i;
    //printf("cb_adc_put\r\n");
    if(!cb_adc_full())
    {
    	//adc_cb.data[adc_cb.head] = data;
	    for (i = 0; i <= ECG_CHANNEL_SIZE; i++)
		{
	    	adc_cb.adc_data[adc_cb.head].adc_ecg[i] = data->adc_ecg[i];
		}

    	adc_cb.head = (adc_cb.head + 1) % CB_ADC_SIZE;

		r = 0;
    }
    //printf("cb_adc_put end\r\n");
    return r;
}


int cb_adc_get(ECG_ADC* data)
{
    int r = -1;
    int i;

    if(!cb_adc_empty())
    {
        //*data = adc_cb.data[adc_cb.tail];
	    for (i = 0; i <= ECG_CHANNEL_SIZE; i++)
		{
	    	data->adc_ecg[i] = adc_cb.adc_data[adc_cb.tail].adc_ecg[i];
		}
        adc_cb.tail = (adc_cb.tail + 1) % CB_ADC_SIZE;
        r = 0;
    }

    return r;
}


