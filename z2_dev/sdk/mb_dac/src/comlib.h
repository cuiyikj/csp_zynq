#ifndef COMLIB_H
#define COMLIB_H

#include <stdio.h>

#define CB_SIZE   (10*1024)

int circular_buf_reset();
int circular_buf_empty();
int circular_buf_full();
int circular_buf_put(uint8_t  data);
int circular_buf_get(uint8_t  * data);

uint16_t crc16_compute(uint8_t const * p_data, uint32_t size, uint16_t const * p_crc);
#endif
