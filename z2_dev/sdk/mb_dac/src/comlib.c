#include "comlib.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"



uint8_t  cb_buffer[CB_SIZE];
static  int cb_head = 0;

static  int cb_tail = 0;

static  int cb_size = CB_SIZE;



int circular_buf_reset()
{
    int r = -1;

    cb_head = 0;
    cb_tail = 0;
    r = 0;

    return r;
}
int circular_buf_empty()
{
    // We define empty as head == tail
    return (cb_head == cb_tail);
}
int circular_buf_full()
{
    // We determine "full" case by head being one position behind the tail
    // Note that this means we are wasting one space in the buffer!
    // Instead, you could have an "empty" flag and determine buffer full that way
    return ((cb_head + 1) % cb_size) == cb_tail;
}

int circular_buf_put(uint8_t  data)
{
    int r = -1;

	cb_buffer[cb_head] = data;
	cb_head = (cb_head + 1) % cb_size;

	if(cb_head == cb_tail)
	{
		cb_tail = (cb_tail + 1) % cb_size;
	}

	r = 0;

    return r;
}

int circular_buf_get(uint8_t  * data)
{
    int r = -1;

    if(!circular_buf_empty())
    {
        *data = cb_buffer[cb_tail];
        cb_tail = (cb_tail + 1) % cb_size;

        r = 0;
    }

    return r;
}


uint16_t crc16_compute(uint8_t const * p_data, uint32_t size, uint16_t const * p_crc)
{
    uint16_t crc = (p_crc == NULL) ? 0xFFFF : *p_crc;

    for (uint32_t i = 0; i < size; i++)
    {
        crc  = (uint8_t)(crc >> 8) | (crc << 8);
        crc ^= p_data[i];
        crc ^= (uint8_t)(crc & 0xFF) >> 4;
        crc ^= (crc << 8) << 4;
        crc ^= ((crc & 0xFF) << 4) << 1;
    }

    return crc;
}

