/*------------------------------- DEFINES-----------------------------*/

#include "ADS1298.h"
#include "axi_spi.h"
#include "gpio.h"

#include "sleep.h"
#include "hw_if.h"
#include "mb_mem.h"

/*------------------------------- VARIABLES -----------------------------*/
extern uint8_t tcp_status;
//extern ECG_ADC adc_data;
extern uint8_t tcp_connect;
extern volatile uint8_t  ADC_flag;

uint8_t adc_sps = SPS_1K;

//ECG_ADC read_adc_data;

bool intDRDY = false; // Flag to ready data from ADS1298

bool isDaisy = false;        // does this have a daisy chain board?

int stat_1, stat_2;        // used to hold the status register for boards 1 and 2
uint8_t regData[24];

uint8_t reg_ini_normal[25]=
{
    0x82, //0x85=>1k //0x84=>2k 0x83=>4k 0x82=>8k
    0x35,
    0xc0,
    0x00,
    0x10,  //4
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,  //10
    0x10,  //11
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0f,  //19
    0x00,  //20
    0x00,  //21
    0x00,
    0xfa,  //23
    0xdc,  //24
};

uint8_t reg_ini_noise[25]=
{
    0x85, //0
    0x35,
    0xc0,
    0x00,
    0x11,  //4
    0x11,
    0x11,
    0x11,
    0x11,
    0x11,
    0x11,  //10
    0x11,  //11
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0f,  //19
    0x00,  //20
    0x00,  //21
    0x00,
    0xfa,  //23
    0xdc,  //24
};

uint8_t reg_ini_calibrate[25]=
{
    0x85, //0
    0x35,
    0xc0,
    0x00,
    0x15,  //4
    0x15,
    0x15,
    0x15,
    0x15,
    0x15,
    0x15,  //10
    0x15,  //11
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0f,  //19
    0x00,  //20
    0x00,  //21
    0x00,
    0xfa,  //23
    0xdc,  //24
};
int32_t channelData [ECG_CHANNEL_SIZE];
int32_t channelData_seq [ECG_CHANNEL_SIZE];
int32_t seq_channelData[8][ECG_CHANNEL_SIZE*200];
uint32_t pila = 0;

uint8_t c_index = 0;
uint8_t r_index = 0;
uint8_t current_c_index = 0;


ADC_BUF adc_buf_0;
ADC_BUF adc_buf_1;
ADC_BUF adc_buf_2;
ADC_BUF adc_buf_3;

/*------------------------------- FUNCTIIONS -----------------------------*/
void delay_ms(uint32_t delay)
{
    usleep(1000 * delay);
}

void ADS_test()
{
    ADS_getDeviceID();
}

void ADS_reset()
{
	RESET_ADS1298_LOW();
    //RESET_SPI_0_LOW();
    delay_ms(10);
    RESET_ADS1298_HIGH();

    delay_ms(1);
    ADS_RESET();
    usleep(10);
    ADS_SDATAC();
}


void ADS_Init(uint8_t* reg_ini)
{
    ADS_WREGS(1, 24, reg_ini);
//    cb_adc_reset();
#if 0
    //Work settings
    ADS_WREG(CONFIG1, reg_ini[0]);
    // 0x82 => HR mode and 8k sps
    //CONFIG1: Configuration Register 1 (address = 01h) (reset = 06h)
    //0 = High-resolution or low-power mode : 0 = LP mode
    //0 = Daisy-chain or multiple readback mode : Daisy-chain mode
    //0 = CLK connection : Oscillator clock output disabled
    //0 = Reserved
    //0 = Reserved
    //110: Output data rate: fMOD / 1024 (HR Mode: 500 SPS, LP Mode: 250 SPS

    delay_ms(10);
    ADS_WREG(CONFIG2, reg_ini[1]);
    //CONFIG2: Configuration Register 2 (address = 02h) (reset = 40h)
    //Configuration register 2 configures the test signal generation.
    //0 = Always write 0h
    //0 = Always write 0h
    //0 = WCT chopping scheme: Chopping frequency varies,
    //1 = TEST source: 1 = Test signals are generated internally

    //0 = Reserved Always write 0h
    //0 = Test signal amplitude: 1 ï¿½ ï¿½(VREFP ï¿½ VREFN) / 2400 V
    //0 = Test signal frequency
    //0 = Test signal frequency: 00 Pulsed at fCLK / 2^21

    delay_ms(10);
    ADS_WREG(CONFIG3, reg_ini[2]);
    //CONFIG3: Configuration Register 3 (address = 03h) (reset = 40h)
    //Configuration register 3 configures multireference and RLD operation
    //dc => 1101 1100
    //1 = Enable internal reference buffer
    //1 = Reserved : Always write 1h
    //0 = VREFP is set to 2.4 V
    //1 = RLD_IN signal is routed to the channel that has the MUX_Setting 010 (VREF)

    //1 = RLDREF signal (AVDD ï¿½ AVSS) / 2 generated internally
    //1 = RLD buffer is enabled
    //0 = RLD sense is disabled
    //0 = RLD is connected


    delay_ms(10);

    ADS_WREG(LOFF, reg_ini[3]);
    //03=> 0000 0011
    //0 = Lead-off comparator threshold
    //0 = Lead-off comparator threshold
    //0 = Lead-off comparator threshold: Comparator positive side 000 = 95%  Comparator negative side 000 = 5%
    //0 = Lead-off detection mode: Current source mode lead-off

    //0 = Lead-off current magnitude
    //0 = Lead-off current magnitude: 00 = 6 nA
    //1 = Lead-off frequency
    //1 = Lead-off frequency: 11 = DC lead-off detection turned on

    delay_ms(10);


    //0x91 power down and shot
    //0x15 test signal
    //0x10 normal connect

    //50 => 0101 0000
    //0 =  1:Power-down 0: Normal operation
    //1 =  PGA gain
    //0 =  PGA gain
    //1 =  PGA gain : 101 = 8
    /*
    000 = 6
    001 = 1
    010 = 2
    011 = 3
    100 = 4
    101 = 8
    110 = 12
    */
    //0 =  Reserved : Always write 0h
    //0 =  Channel input
    //0 =  Channel input
    //0 =  Channel input : 000 = Normal electrode input
    /*
        001 = Input shorted (for offset or noise measurements)
        010 = Used in conjunction with RLD_MEAS bit for RLD
        measurements. See the Right Leg Drive (RLD) DC Bias Circuit
        subsection of the ECG-Specific Functions section for more
        details.
        011 = MVDD for supply measurement
        100 = Temperature sensor
        101 = Test signal
        110 = RLD_DRP (positive electrode is the driver)
        111 = RLD_DRN (negative electrode is the driver)
    */
    ADS_WREG(CH1SET, reg_ini[4]);
    delay_ms(1);
    ADS_WREG(CH2SET, reg_ini[5]);
    delay_ms(1);
    ADS_WREG(CH3SET, reg_ini[6]);
    delay_ms(1);
    ADS_WREG(CH4SET, reg_ini[7]);
    delay_ms(1);
    ADS_WREG(CH5SET, reg_ini[8]);
    // Channel input :101 = Test signal
    delay_ms(1);
    ADS_WREG(CH6SET, reg_ini[9]);
    // Channel input :101 = Test signal
    delay_ms(1);
    ADS_WREG(CH7SET, reg_ini[10]);
    // PGA gain : 110 = 12 , Channel input :101 = Test signal

    delay_ms(1);
    ADS_WREG(CH8SET, reg_ini[11]);
    // PGA gain : 110 = 12 , Channel input :101 = Test signal
    delay_ms(1);

    ADS_WREG(BIAS_SENSP, reg_ini[12]);
    //RLD_SENSP: RLD Positive Signal Derivation Register (address = 0Dh) (reset = 00h)
    // 0000 0000
    // INxP to RLD Route channel x positive signal into RLD derivation, 0: Disabled

    delay_ms(1);
    ADS_WREG(BIAS_SENSN, reg_ini[13]);
    // RLD_SENSN: RLD Negative Signal Derivation Register (address = 0Eh) (reset = 00h)
    // INxP to RLD Route channel x negative signal into RLD derivation, 0: Disabled

    delay_ms(1);

    ADS_WREG(LOFF_SENSP, reg_ini[14]);
    //LOFF_SENSP: Positive Signal Lead-Off Detection Register (address = 0Fh) (reset = 00h)
    // Enable lead-off detection on INxP, 1: Enabled

    delay_ms(1);
    ADS_WREG(LOFF_SENSN, reg_ini[15]);
    //LOFF_SENSN: Negative Signal Lead-Off Detection Register (address = 10h) (reset = 00h)
    // Enable lead-off detection on INxN, 0: Disabled
    // Enable lead-off detection on IN2N, 1: Enabled
    delay_ms(1);

    ADS_WREG(LOFF_FLIP, reg_ini[16]);
    //LOFF_FLIP: Lead-Off Flip Register (address = 11h) (reset = 00h)
    //Flip the pullup/pulldown polarity of the current source or resistor on channel x for lead-off derivation.
    //0: No Flip: INxP is pulled to AVDD and IN8N pulled to AVSS

    delay_ms(1);

    ADS_WREG(LOFF_STATP, reg_ini[17]);  //????
    // LOFF_STATP: Lead-Off Positive Signal Status Register (address = 12h) (reset = 00h)
    // This register stores the status of whether the positive electrode on each channel is on or off
    delay_ms(1);
    ADS_WREG(LOFF_STATN, reg_ini[18]);
    // LOFF_STATN: Lead-Off Negative Signal Status Register (address = 13h) (reset = 00h)
    // This register stores the status of whether the negative electrode on each channel is on or off.
    delay_ms(1);

    ADS_WREG(GPIO, reg_ini[19]);
    delay_ms(1);

    ADS_WREG(MISC1,0x00);
    // PACE: Pace Detect Register (address = 15h) (reset = 00h)
    // 0 = Reserved
    // 0 = Reserved
    // 0 = Reserved
    // 0 = Pace even channels

    // 0 = 00 : Channel 2
    // 0 = Pace odd channels
    // 0 = 00 : Channel 1
    // 0 = Pace detect buffer : Pace detect buffer turned off


    delay_ms(1);
    ADS_WREG(MISC2,0x00);
    //RESP: Respiration Control Register (address = 16h) (reset = 00h)
    // respiration impedance measurement

    // 1 = RESP demodulation circuitry turned on, This bit enables and disables the demodulation circuitry on channel 1
    // 1 = RESP modulation circuitry turned on, This bit enables and disables the demodulation circuitry on channel 1
    // 1 = Reserved
    // 1 = Respiration phase

    // 0 = Respiration phase
    // 0 = Respiration phase : 100 = 112.5ï¿½
    // 0 = Respiration control
    // 0 = Respiration control : 00 = No respiration

    delay_ms(1);
    ADS_WREG(CONFIG4, reg_ini[22]);
    //CONFIG4: Configuration Register 4 (address = 17h) (reset = 00h)
    // 0 = Respiration modulation frequency
    // 0 = Respiration modulation frequency
    // 1 = Respiration modulation frequency : 001 = 32 kHz modulation clock
    // 0 = Reserved
    /*
    Modes 000 and 001 are modulation frequencies in internal and
    external respiration modes. In internal respiration mode, the
    control signals appear at the RESP_MODP and RESP_MODN
    terminals.
    */
    delay_ms(1);

    ADS_WREG(WCT1,reg_ini[23]);
    //Wilson Central Terminal and Augmented Lead Control Register (address = 18h) (reset = 00h)
    // 0 = Enable (WCTA + WCTB)/2 to the negative input of channel 6 : 0 = Disabled
    // 0 = Enable (WCTA + WCTC)/2 to the negative input of channel 5 : 0 = Disabled
    // 0 = Enable (WCTA + WCTC)/2 to the negative input of channel 7 : 0 = Disabled
    // 0 = Enable (WCTA + WCTC)/2 to the negative input of channel 4 : 0 = Disabled
    // 1 = Power-down WCTA : 1 = Powered on
    // 0 = WCT Amplifier A channel selection, typically connected to RA electrode
    // 1 = WCT Amplifier A channel selection, typically connected to RA electrode
    // 0 = WCT Amplifier A channel selection, : 010 = Channel 2 positive input connected to WCTA amplifier


    delay_ms(1);
    ADS_WREG(WCT2, reg_ini[24]);
    // WCT2: Wilson Central Terminal Control Register (address = 19h) (reset = 00h)
    // 1 = Power-down WCTC : 1 = Powered on
    // 1 = Power-down WCTB : 1 = Powered on
    // 1 = WCT amplifier B channel selection, typically connected to LA electrode.
    // 0 = WCT amplifier B channel selection, typically connected to LA electrode.

    // 0 = WCT amplifier B channel selection, typically connected to LA electrode. 100 = Channel 3 positive input connected to WCTC amplifier
    // 0 = WCT amplifier C channel selection, typically connected to LA electrode.
    // 1 = WCT amplifier C channel selection, typically connected to LL electrode.
    // 1 = WCT amplifier C channel selection, typically connected to LL electrode. 011 = Channel 2 negative input connected to WCTC amplifier

    delay_ms(1);
    uint8_t data = ADS_RREG(0);
    printf("read ID= %x \r\n", data);
    //ID: ID Control Register (address = 00h) (reset = xxh)
    // 1 = Device ID
    // 0 = Device ID
    // 0 = Device ID : 100 = ADS129x device family
    // 1 = Reserved

    // 0 = Reserved : Always read back 2h
    // 0 = Reserved
    // 1 = Reserved
    // 0 = Reserved 010 = ADS1298

#endif

}

void ADS_SDATAC()
{
    SPI_0_CS_LOW();
    transferSPI(_SDATAC);
    SPI_0_CS_HIGH();
}

//start data conversion
void ADS_START()
{
	SPI_0_CS_LOW();
    transferSPI(_START);
    SPI_0_CS_HIGH();
}

//stop data conversion
void ADS_STOP()
{
	SPI_0_CS_LOW();
    transferSPI(_STOP);
    SPI_0_CS_HIGH();
}

void ADS_RESET()
{
	SPI_0_CS_LOW();
    transferSPI(_RESET);
    SPI_0_CS_HIGH();
}

void ADS_RDATAC()
{
	SPI_0_CS_LOW();
    transferSPI(_RDATAC);
    SPI_0_CS_HIGH();
}

void ADS_WAKEUP()
{
	SPI_0_CS_LOW();
    transferSPI( _WAKEUP);
    SPI_0_CS_HIGH();
}

// Register Read/Write Commands
uint8_t ADS_getDeviceID()
{
    uint8_t data = ADS_RREG(0);
    printf("\n\rDevice ID %x\n\r", data);
    return data;
}

uint8_t ADS_RREG(uint8_t _address)
{
    //  reads ONE register at _address
    uint8_t opcode1 = _address + 0x20;
    //  RREG expects 001rrrrr where rrrrr = _address

    SPI_0_CS_LOW();
    transferSPI( opcode1);
    //usleep(2);
    transferSPI( 0);
    //usleep(2);
    regData[_address] = transferSPI(0);
    //usleep(2);
    SPI_0_CS_HIGH();

    return regData[_address];
}

// Read more than one register starting at _address
void ADS_RREGS(uint8_t _address, uint8_t _numRegistersMinusOne)
{
    int i;
    uint8_t opcode1 = _address + 0x20;

    //  RREG expects 001rrrrr where rrrrr = _address
    SPI_0_CS_LOW();
    //usleep(1);
    transferSPI( opcode1);
    //usleep(2);
    transferSPI( _numRegistersMinusOne);
    for(i = 0; i <= _numRegistersMinusOne; i++)
    {
        regData[_address + i] = transferSPI( 0x00);
        //usleep(2);
    }
    SPI_0_CS_HIGH();

}

//  Write ONE register at _address
void ADS_WREG(uint8_t _address, uint8_t _value)
{
    uint8_t opcode1 = _address + 0x40;

    //  WREG expects 010rrrrr where rrrrr = _address
    SPI_0_CS_LOW();
    //usleep(1);
    transferSPI( opcode1);
    //usleep(1);
    transferSPI( 0x00);
    //usleep(2);
    transferSPI( _value);
    //usleep(2);
    SPI_0_CS_HIGH();
    regData[_address] = _value;
}

void ADS_WREGS(uint8_t _address, uint8_t _numRegistersMinusOne, uint8_t *reg_ini)
{
    int i;

    uint8_t opcode1 = _address + 0x40;

    //  WREG expects 010rrrrr where rrrrr = _address
    SPI_0_CS_LOW();
    //usleep(1);
    transferSPI( opcode1);
    //usleep(1);
    transferSPI( _numRegistersMinusOne);

    //usleep(1);
    for (i=0; i <=(_address + _numRegistersMinusOne); i++)
    {
        transferSPI( reg_ini[i]);
        //usleep(1);
    }
    //usleep(1);
    SPI_0_CS_HIGH();
}



// String-Byte converters for RREG and WREG
void ADS_printRegisterName(uint8_t _address)
{

}

void ADS_SendData()
{

}

uint16_t adc_loop_index = 0;
uint8_t adc_ret_buf[256] = {0};
uint8_t adc_ready = 0;
uint16_t adc_buf_index = 0;
uint16_t adc_buf_index_current = 0;
extern u8 ReadBuffer[256];
volatile uint8_t adc_seq = 0;
uint32_t ad_index = 0;


uint8_t* temp_adc_p = (uint8_t* )0x40000224;
uint8_t op[128]={0};

//  use in Stop Read Continuous mode when DRDY goes low
void ADS_RDATA()
{
    uint8_t inByte,inByte1,inByte2,inByte3;
    int i;
    int nchan = 8;
    //assume 8 channel.  If needed, it automatically changes to 16 automatically in a later block.

    stat_1 = 0;
    //  clear the status registers
    stat_2 = 0;

    for(i = 0; i < nchan; i++)
    {
        channelData[i] = 0;
    }
    SPI_0_CS_LOW();
    //usleep(1);
    //transferSPI( _RDATA);

    //usleep(1);
    // READ CHANNEL DATA FROM FIRST ADS IN DAISY LINE
    //  read 3 byte status register (1100+LOFF_STATP+LOFF_STATN+GPIO[7:4]
//    for(i = 0; i < 3; i++)
//    {
//        inByte = transferSPI( 0x00);
//        //usleep(2);
//        stat_1 = (stat_1<<8) | inByte;
//    }
    //transferSPI_N(op,3);
//    for(i = 0; i < 8; i++)
//    {
//        inByte1 = transferSPI(0x00);
//        inByte2 = transferSPI(0x00);
//        inByte3 = transferSPI(0x00);
//        channelData[i] = (inByte1 << 16) | (inByte2 << 8) | inByte3;
//    }
    op[0] = _RDATA;
    transferSPI_N(op,28);
    //op[0] = _RDATA;
    //transferSPI_adc(op, adc_ret_buf, 27);
    SPI_0_CS_HIGH();


	for(i = 0; i < 8; i++)
	{
		inByte1 = ReadBuffer[(i)*3+4];
		inByte2 = ReadBuffer[(i)*3+4 + 1];
		inByte3 = ReadBuffer[(i)*3+4 + 2];
		channelData[i] = (inByte1 << 16) | (inByte2 << 8) | inByte3;
	}
    // convert 3 byte 2's compliment to 4 byte 2's compliment
    for( i = 0; i < ECG_CHANNEL_SIZE; i++)
    {
        if( (channelData[i] & 0x00800000) == 0x00800000  )
        {
            channelData[i] = ~channelData[i] + 1;
        }
        else
        {
            channelData[i] &= 0x00FFFFFF;
        }

    }

    channelData_seq[0] = channelData[1];
    channelData_seq[1] = channelData[2];
    channelData_seq[2] = channelData[7];
    channelData_seq[3] = channelData[3];
    channelData_seq[4] = channelData[4];
    channelData_seq[5] = channelData[5];
    channelData_seq[6] = channelData[6];
    channelData_seq[7] = channelData[0];


    mb_adc_memcpy((uint8_t*)channelData_seq, adc_seq, 32);
	adc_seq++;

    if (adc_seq >= 8)
    {
    	//xil_printf("temp_adc_p[0] %x %x\r\n", temp_adc_p[1], temp_adc_p[2]);
        adc_seq = 0;
        ADC_flag = 1;
    }
    //xil_printf("adc_seq %d \r\n", adc_seq);

}


int32_t* getChannelData()
{
    return channelData;
}

void set_adc_sps_rate(uint8_t rate)
{
	adc_sps = rate;
}

uint8_t get_adc_sps_rate(void)
{
	return adc_sps;
}
