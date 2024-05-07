#include "comlib.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"



//uint8_t  cb_buffer[CB_MAX][CB_SIZE];
//static  int cb_head[CB_MAX] = {0};
//static  int cb_tail[CB_MAX] = {0};


int circular_buf_reset(CIRCULAR_BUF_t* cb)
{
    int r = -1;
    cb->head = 0;
    cb->tail = 0;
    return r;
}
int circular_buf_empty(CIRCULAR_BUF_t* cb)
{
    // We define empty as head == tail
   return (cb->head == cb->tail);
}
int circular_buf_full(CIRCULAR_BUF_t* cb)
{
    // We determine "full" case by head being one position behind the tail
    // Note that this means we are wasting one space in the buffer!
    // Instead, you could have an "empty" flag and determine buffer full that way
    return ((cb->head + 1) % CB_SIZE) == cb->tail;
}


uint32_t circular_buf_empty_size(CIRCULAR_BUF_t* cb)
{
	uint32_t r = 0;

    if (cb->head > cb->tail)
    {

		r = CB_SIZE - (cb->head - cb->tail);
    }
    else if (cb->head == cb->tail)
    {

		r = CB_SIZE;
    }
    else
    {
    	r = CB_SIZE - (cb->tail -cb->head);
    }
//    printf("r %d\r\n", r);
//    printf("cb_index %d\r\n", cb_index);
//    printf("cb_head[cb_index] %d\r\n", cb_head[cb_index]);
//    printf("cb_tail[cb_index] %d\r\n", cb_tail[cb_index]);
    return r;
}

uint32_t circular_buf_used_size(CIRCULAR_BUF_t* cb)
{
	uint32_t r = 0;

    if (cb->head > cb->tail)
    {

		r = cb->head - cb->tail;
    }
    else if (cb->head == cb->tail)
    {

		r = 0;
    }
    else
    {
    	r = cb->head + CB_SIZE - cb->tail;
    }
//    printf("r %d\r\n", r);
//    printf("cb_index %d\r\n", cb_index);
//    printf("cb_head[cb_index] %d\r\n", cb_head[cb_index]);
//    printf("cb_tail[cb_index] %d\r\n", cb_tail[cb_index]);
    return r;
}

int circular_buf_put(CIRCULAR_BUF_t* cb, uint8_t  data)
{
    int r = -1;

    if(!circular_buf_full(cb))
    {
    	cb->data[cb->head] = data;
    	cb->head = (cb->head + 1) % CB_SIZE;

		r = 0;
    }

    return r;
}

int circular_buf_put_n(CIRCULAR_BUF_t* cb, uint8_t*data, uint16_t  len)
{
    int r = -1;

    if(circular_buf_empty_size (cb) >= len)
    {
		memcpy(&cb->data[cb->head], data, len);
		r = len;
		cb->head = (cb->head + len) % CB_SIZE;
    }
    else
    {
    	printf("circular_buf_put_n full circular_buf_empty_size= %d len= %d", circular_buf_empty_size(cb), len);
    }

    return r;
}

int circular_buf_get(CIRCULAR_BUF_t* cb, uint8_t  * data)
{
    int r = -1;

    if(!circular_buf_empty(cb))
    {
        *data = cb->data[cb->tail];
        cb->tail = (cb->tail + 1) % CB_SIZE;
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

