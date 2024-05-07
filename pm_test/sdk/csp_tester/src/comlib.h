#ifndef COMLIB_H
#define COMLIB_H

#include <stdio.h>

#define CB_SIZE   (65535)

static inline void set_bit(long *x, int bitNum)
{
    *x |= (1L << bitNum);
}
static inline void clr_bit(uint8_t *x, uint8_t bitNum)
{
    *x &= ~(0x01U << bitNum);
}
static inline uint8_t get_bit(uint8_t x, uint8_t bitNum)
{
    return ((x & (1 << bitNum)) >>bitNum);
}
typedef struct
{
    uint8_t data[CB_SIZE];
    uint16_t head;
    uint16_t tail;
} CIRCULAR_BUF_t;


int circular_buf_reset(CIRCULAR_BUF_t* cb);
int circular_buf_empty(CIRCULAR_BUF_t* cb_index);
int circular_buf_full(CIRCULAR_BUF_t* cb_index);
int circular_buf_put(CIRCULAR_BUF_t* cb_index, uint8_t  data);
int circular_buf_get(CIRCULAR_BUF_t* cb_index, uint8_t  * data);
int circular_buf_put_n(CIRCULAR_BUF_t* cb, uint8_t*  data, uint16_t  len);
uint32_t circular_buf_empty_size(CIRCULAR_BUF_t* cb);
uint32_t circular_buf_used_size(CIRCULAR_BUF_t* cb);

uint16_t crc16_compute(uint8_t const * p_data, uint32_t size, uint16_t const * p_crc);


#endif
