#ifndef HW_IF_H
#define HW_IF_H

#include <stdio.h>
#include "hw_if.h"

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
    CMD_SPS_START,      // 0x08
    CMD_MAX
} COMMAND_TYPE;


#endif
