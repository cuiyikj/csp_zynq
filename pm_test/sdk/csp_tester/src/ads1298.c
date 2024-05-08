/*------------------------------- DEFINES-----------------------------*/

#include "ADS1298.h"
#include "spi_ps.h"
#include "gpio.h"

/*------------------------------- VARIABLES -----------------------------*/
extern int32_t adc_data[16];
bool intDRDY = false; // Flag to ready data from ADS1298

bool isDaisy = false;		// does this have a daisy chain board?

int stat_1, stat_2;    	// used to hold the status register for boards 1 and 2

uint8_t regData[24];		// array with data from all registers
int32_t channelData [16];	// array used when reading channel data board 1+2

uint32_t pila = 0;
/*------------------------------- FUNCTIIONS -----------------------------*/
void HAL_Delay(uint32_t delay)
{
	usleep(1000 * delay);
}
void ADS_test()
{
	ADS_getDeviceID();
}


void ADS_reset()
{
	set_gpio(3,1);
	HAL_Delay(200);
	set_gpio(3,0);
	HAL_Delay(200);
	set_gpio(3,1);

	HAL_Delay(200);
	ADS_RESET();

	HAL_Delay(200);
	ADS_SDATAC();
//	while(1)
//	{
//	}
	HAL_Delay(100);
	//ADS_STOP();
}

unsigned char writeVals[25] = {0, 0, 0, 0, 0, \
                               0, 0, 0, 0, 0, \
                               0, 0, 0, 0, 0, \
							   0, 0, 0, 0, 0, \
							   0, 0, 0, 0, 0};

void ADS_Init()
{

#if 1
	ADS_WREG(CONFIG1,0x06);


	HAL_Delay(100);



	//Work settings
	ADS_WREG(CONFIG1,0x84); ///???? 0x84 => HR mode and 1k sps
	//CONFIG1: Configuration Register 1 (address = 01h) (reset = 06h)
	//6=> 0000 0110
	//0 = High-resolution or low-power mode : 0 = LP mode
	//0 = Daisy-chain or multiple readback mode : Daisy-chain mode
	//0 = CLK connection : Oscillator clock output disabled
	//0 = Reserved

	//0 = Reserved
	//110: Output data rate: fMOD / 1024 (HR Mode: 500 SPS, LP Mode: 250 SPS

	HAL_Delay(100);
	ADS_WREG(CONFIG2,0x35);
	//CONFIG2: Configuration Register 2 (address = 02h) (reset = 40h)
	//Configuration register 2 configures the test signal generation.
	//0 = Always write 0h
	//0 = Always write 0h
	//0 = WCT chopping scheme: Chopping frequency varies,
	//1 = TEST source: 1 = Test signals are generated internally

	//0 = Reserved Always write 0h
	//0 = Test signal amplitude: 1 × –(VREFP – VREFN) / 2400 V
	//0 = Test signal frequency
	//0 = Test signal frequency: 00 Pulsed at fCLK / 2^21

	HAL_Delay(100);
	ADS_WREG(CONFIG3,0xc0);
	//CONFIG3: Configuration Register 3 (address = 03h) (reset = 40h)
	//Configuration register 3 configures multireference and RLD operation
	//dc => 1101 1100
	//1 = Enable internal reference buffer
	//1 = Reserved : Always write 1h
	//0 = VREFP is set to 2.4 V
	//1 = RLD_IN signal is routed to the channel that has the MUX_Setting 010 (VREF)

	//1 = RLDREF signal (AVDD – AVSS) / 2 generated internally
	//1 = RLD buffer is enabled
	//0 = RLD sense is disabled
	//0 = RLD is connected


	HAL_Delay(100);

	ADS_WREG(LOFF,0x00);
	//03=> 0000 0011
	//0 = Lead-off comparator threshold
	//0 = Lead-off comparator threshold
	//0 = Lead-off comparator threshold: Comparator positive side 000 = 95%  Comparator negative side 000 = 5%
	//0 = Lead-off detection mode: Current source mode lead-off

	//0 = Lead-off current magnitude
	//0 = Lead-off current magnitude: 00 = 6 nA
	//1 = Lead-off frequency
	//1 = Lead-off frequency: 11 = DC lead-off detection turned on

	HAL_Delay(100);


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
	ADS_WREG(CH1SET,0x10);
	HAL_Delay(100);
	ADS_WREG(CH2SET,0x10);
	HAL_Delay(100);
	ADS_WREG(CH3SET,0x10);
	HAL_Delay(100);
	ADS_WREG(CH4SET,0x10);
	HAL_Delay(100);
	ADS_WREG(CH5SET,0x10);
	// Channel input :101 = Test signal
	HAL_Delay(100);
	ADS_WREG(CH6SET,0x10);
	// Channel input :101 = Test signal
	HAL_Delay(100);
	ADS_WREG(CH7SET,0x10);
	// PGA gain : 110 = 12 , Channel input :101 = Test signal

	HAL_Delay(100);
	ADS_WREG(CH8SET,0x10);
	// PGA gain : 110 = 12 , Channel input :101 = Test signal
	HAL_Delay(100);

	ADS_WREG(BIAS_SENSP,0x00);
	//RLD_SENSP: RLD Positive Signal Derivation Register (address = 0Dh) (reset = 00h)
	// 0000 0000
	// INxP to RLD Route channel x positive signal into RLD derivation, 0: Disabled

	HAL_Delay(100);
	ADS_WREG(BIAS_SENSN,0x00);
	// RLD_SENSN: RLD Negative Signal Derivation Register (address = 0Eh) (reset = 00h)
	// INxP to RLD Route channel x negative signal into RLD derivation, 0: Disabled

	HAL_Delay(10);

	ADS_WREG(LOFF_SENSP,0x00);
	//LOFF_SENSP: Positive Signal Lead-Off Detection Register (address = 0Fh) (reset = 00h)
	// Enable lead-off detection on INxP, 1: Enabled

	HAL_Delay(10);
	ADS_WREG(LOFF_SENSN,0x00);
	//LOFF_SENSN: Negative Signal Lead-Off Detection Register (address = 10h) (reset = 00h)
	// Enable lead-off detection on INxN, 0: Disabled
	// Enable lead-off detection on IN2N, 1: Enabled
	HAL_Delay(10);

	ADS_WREG(LOFF_FLIP,0x00);
	//LOFF_FLIP: Lead-Off Flip Register (address = 11h) (reset = 00h)
	//Flip the pullup/pulldown polarity of the current source or resistor on channel x for lead-off derivation.
	//0: No Flip: INxP is pulled to AVDD and IN8N pulled to AVSS

	HAL_Delay(10);

	ADS_WREG(LOFF_STATP,0x00);  //????
	// LOFF_STATP: Lead-Off Positive Signal Status Register (address = 12h) (reset = 00h)
	// This register stores the status of whether the positive electrode on each channel is on or off
	HAL_Delay(10);
	ADS_WREG(LOFF_STATN,0x00);
	// LOFF_STATN: Lead-Off Negative Signal Status Register (address = 13h) (reset = 00h)
	// This register stores the status of whether the negative electrode on each channel is on or off.
	HAL_Delay(10);

	ADS_WREG(GPIO,0x00);
	HAL_Delay(10);

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


	HAL_Delay(10);
	ADS_WREG(MISC2,0x00);
	//RESP: Respiration Control Register (address = 16h) (reset = 00h)
	// respiration impedance measurement

	// 1 = RESP demodulation circuitry turned on, This bit enables and disables the demodulation circuitry on channel 1
	// 1 = RESP modulation circuitry turned on, This bit enables and disables the demodulation circuitry on channel 1
	// 1 = Reserved
	// 1 = Respiration phase

	// 0 = Respiration phase
	// 0 = Respiration phase : 100 = 112.5°
	// 0 = Respiration control
	// 0 = Respiration control : 00 = No respiration


	HAL_Delay(10);

	ADS_WREG(CONFIG4,0x08);
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
	HAL_Delay(10);

	ADS_WREG(WCT1,0xFA);
	//Wilson Central Terminal and Augmented Lead Control Register (address = 18h) (reset = 00h)
	// 0 = Enable (WCTA + WCTB)/2 to the negative input of channel 6 : 0 = Disabled
	// 0 = Enable (WCTA + WCTC)/2 to the negative input of channel 5 : 0 = Disabled
	// 0 = Enable (WCTA + WCTC)/2 to the negative input of channel 7 : 0 = Disabled
	// 0 = Enable (WCTA + WCTC)/2 to the negative input of channel 4 : 0 = Disabled
	// 1 = Power-down WCTA : 1 = Powered on
	// 0 = WCT Amplifier A channel selection, typically connected to RA electrode
	// 1 = WCT Amplifier A channel selection, typically connected to RA electrode
	// 0 = WCT Amplifier A channel selection, : 010 = Channel 2 positive input connected to WCTA amplifier


	HAL_Delay(10);

	ADS_WREG(WCT2,0xDC);
	// WCT2: Wilson Central Terminal Control Register (address = 19h) (reset = 00h)
	// 1 = Power-down WCTC : 1 = Powered on
	// 1 = Power-down WCTB : 1 = Powered on
	// 1 = WCT amplifier B channel selection, typically connected to LA electrode.
	// 0 = WCT amplifier B channel selection, typically connected to LA electrode.

	// 0 = WCT amplifier B channel selection, typically connected to LA electrode. 100 = Channel 3 positive input connected to WCTC amplifier
	// 0 = WCT amplifier C channel selection, typically connected to LA electrode.
	// 1 = WCT amplifier C channel selection, typically connected to LL electrode.
	// 1 = WCT amplifier C channel selection, typically connected to LL electrode. 011 = Channel 2 negative input connected to WCTC amplifier

	HAL_Delay(10);

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

	//ADS_RREGS(0,17); // read 17 reg from 0

	//HAL_Delay(1000);

	//ADS_START();
	//HAL_Delay(100);

	//ADS_START();
	//HAL_Delay(100);

	/*
	ADS_RDATAC();            // enter Read Data Continuous mode
	HAL_Delay(100);
*/


//	if(verbose){
//		USB_Print("\nADS1298 configure ..... DONE!\n");
//		USB_Print("\n**************************************\n");
//		HAL_Delay(3000);
//	}
#endif

}

void ADS_SDATAC(){

	//HAL_GPIO_WritePin( ADS_CS_GPIO_Port , ADS_CS_Pin, GPIO_PIN_RESET);
	set_gpio(0,0);
	transferSPI(_SDATAC);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_SET);
	set_gpio(0,1);
}

//start data conversion
void ADS_START() {
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_RESET);
	set_gpio(0,0);
	transferSPI(_START);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_SET);
	set_gpio(0,1);
}

//stop data conversion
void ADS_STOP() {
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_RESET);
	set_gpio(0,0);
	transferSPI(_STOP);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_SET);
	set_gpio(0,1);
}

void ADS_RESET(){
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_RESET);
	set_gpio(0,0);
	transferSPI(_RESET);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_SET);
	set_gpio(0,1);
}

void ADS_RDATAC() {
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_RESET);
	set_gpio(0,0);
	transferSPI(_RDATAC);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_SET);
	set_gpio(0,1);
}

void ADS_WAKEUP() {
    //HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_RESET);
	set_gpio(0,0);
	transferSPI( _WAKEUP);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_SET);
	set_gpio(0,1);
}

// Register Read/Write Commands
uint8_t ADS_getDeviceID() {			// simple hello world com check

	uint8_t data = ADS_RREG(0);
	printf("\n\rDevice ID %x\n\r", data);
//	if(verbose){						// verbose otuput
//		USB_Print("\nDevice ID: ");
//		USB_SendBits(data);
//	}

	return data;
}

uint8_t ADS_RREG(uint8_t _address)
{
	//  reads ONE register at _address
	uint8_t opcode1 = _address + 0x20; 		//  RREG expects 001rrrrr where rrrrr = _address

	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_RESET);			//  open SPI
	set_gpio(0,0);
	transferSPI( opcode1); 								//  opcode1
    transferSPI( 0); 								    //  opcode2

	regData[_address] = transferSPI(0);		//  update mirror location with returned byte
	set_gpio(0,1);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_SET);				//  close SPI

	//HAL_UART_Transmit(&huart1, &regData[0], sizeof(uint8_t),0x1000);

//	if (verbose){													//  verbose output
//		USB_Print("\nRegister: ");
//		ADS_printRegisterName(_address);
//		USB_Print(" has value: ");
//		USB_SendBits(regData[_address]);
//		USB_Print("\n");
//	}
	//printf("Register %x has value: %x \n\r", _address, regData[_address]);

	return regData[_address];			// return requested register value
}

// Read more than one register starting at _address
void ADS_RREGS(uint8_t _address, uint8_t _numRegistersMinusOne) {
//	for(byte i = 0; i < 0x17; i++){
//		regData[i] = 0;									//  reset the regData array
//	}
	int i;

	uint8_t opcode1 = _address + 0x20; 				//  RREG expects 001rrrrr where rrrrr = _address

	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_RESET); 					//  open SPI
	set_gpio(0,0);
	transferSPI( opcode1); 										//  opcode1
	transferSPI( _numRegistersMinusOne);				//  opcode2

	for(i = 0; i <= _numRegistersMinusOne; i++){
		regData[_address + i] = transferSPI( 0x00); 	//  add register byte to mirror array
	}
	set_gpio(0,1);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_SET); 			//  close SPI

//	if(verbose){												//  verbose output
//		USB_Print("\n======================\nRegister map\n");
//		for(i = 0; i<= _numRegistersMinusOne; i++){
//			USB_Print("\nRegister: ");
//			ADS_printRegisterName(_address + i);
//			USB_Print(" has value: ");
//			USB_SendBits(regData[_address + i]);
//		}
//		USB_Print("\n======================\n");
//	}
}


void ADS_WREG(uint8_t _address, uint8_t _value) {	//  Write ONE register at _address
	uint8_t opcode1 = _address + 0x40; 				//  WREG expects 010rrrrr where rrrrr = _address

	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_RESET); 					//  open SPI
	set_gpio(0,0);
	transferSPI( opcode1);											//  Send WREG command & address
	transferSPI( 0x00);												//	Send number of registers to read -1
	transferSPI( _value);											//  Write the value to the register
	set_gpio(0,1);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_SET); 						//  close SPI

	regData[_address] = _value;			//  update the mirror array

//	if(verbose){						//  verbose output
//		USB_Print("\nRegister: ");
//		ADS_printRegisterName(_address);
//		USB_Print(" - modified\n");
//	}
}

void ADS_WREGS(uint8_t _address, uint8_t _numRegistersMinusOne){
	int i;

	uint8_t opcode1 = _address + 0x40;				//  WREG expects 010rrrrr where rrrrr = _address

	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_RESET); 					//  open SPI
	set_gpio(0,0);
	transferSPI( opcode1);											//  Send WREG command & address
	transferSPI( _numRegistersMinusOne);				//	Send number of registers to read -1

	for (i=_address; i <=(_address + _numRegistersMinusOne); i++){
		transferSPI( regData[i]);								//  Write to the registers
	}
	set_gpio(0,1);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin, GPIO_PIN_SET); 						//  close SPI

//	if(verbose){
//		USB_Print("\nRegisters: ");
//		ADS_printRegisterName(_address); USB_Print("  TO: ");
//		USB_SendBits((_address + _numRegistersMinusOne));
//		USB_Print(" - modified!\n");
//	}
}

void ADS_updateChannelData(){
	uint8_t inByte;
	int i,j;				// iterator in loop
	int nchan=8;  //assume 8 channel.  If needed, it automatically changes to 16 automatically in a later block.


	for(i = 0; i < nchan; i++){
		channelData[i] = 0;
	}

	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_RESET); 					//  open SPI
	set_gpio(0,0);
	// READ CHANNEL DATA FROM FIRST ADS IN DAISY LINE
	for(i = 0; i < 3; i++){										//  read 3 byte status register from ADS 1 (1100+LOFF_STATP+LOFF_STATN+GPIO[7:4])
		inByte = transferSPI( 0x00);
		stat_1 = (stat_1<<8) | inByte;
	}

	for(i = 0; i < 8; i++){
		for( j=0; j<3; j++){		//  read 24 bits of channel data from 1st ADS in 8 3 byte chunks
			inByte = transferSPI( 0x00);
			channelData[i] = (channelData[i]<<8) | inByte;
		}
	}

	set_gpio(0,1);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port, ADS_CS_Pin, GPIO_PIN_SET); 			// CLOSE SPI

	//reformat the numbers
	/*
	for( i=0; i<nchan; i++){			// convert 3 byte 2's compliment to 4 byte 2's compliment
		if( (channelData[i] & 0x00800000) == 0x00800000 )	{
			channelData[i] = ~channelData[i];
			channelData[i] += 0x00000001;
		}else{
			//channelData[i] &= 0x00FFFFFF;
		}
		channelData[i] = channelData[i]  << 8;
	}
	*/
}

//read data
void ADS_RDATA() {				//  use in Stop Read Continuous mode when DRDY goes low
	uint8_t inByte,inByte1,inByte2,inByte3;
	int i,j;
	int nchan = 8;	//assume 8 channel.  If needed, it automatically changes to 16 automatically in a later block.

	stat_1 = 0;							//  clear the status registers
	stat_2 = 0;

	for(i = 0; i < nchan; i++){
		channelData[i] = 0;
	}
	set_gpio(0,0);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin,GPIO_PIN_RESET); 					//  open SPI
	transferSPI( _RDATA);

	// READ CHANNEL DATA FROM FIRST ADS IN DAISY LINE
	for(i = 0; i < 3; i++){			//  read 3 byte status register (1100+LOFF_STATP+LOFF_STATN+GPIO[7:4])
		inByte = transferSPI( 0x00);
		stat_1 = (stat_1<<8) | inByte;
	}

	for(i = 0; i < 8; i++)
	{
			inByte1 = transferSPI( 0x00);
			inByte2 = transferSPI( 0x00);
			inByte3 = transferSPI( 0x00);
		channelData[i] = (inByte1 << 16) | (inByte2 << 8) | inByte3;
//		if (i == 0)
//		{
//			printf("acd 0= %x \r\n", channelData[i]);
//		}


	}
	set_gpio(0,1);
	//HAL_GPIO_WritePin(ADS_CS_GPIO_Port,ADS_CS_Pin,GPIO_PIN_SET); 					//  open SPI
	// convert 3 byte 2's compliment to 4 byte 2's compliment
	for( i = 0; i<nchan; i++)
	{
		//if(bitRead(channelData[i],23) == 1){
		if( (channelData[i] & 0x00800000) == 0x00800000  )
		{
			channelData[i] = ~channelData[i] + 1;
		}
		else
		{
			channelData[i] &= 0x00FFFFFF;
		}
		//channelData[i] = channelData[i] << 8;
		adc_data[i] = channelData[i];
		//printf("acd%d= %x \r\n", i,channelData[i]);
	}
	//printf("\r\n");

}

// String-Byte converters for RREG and WREG
void ADS_printRegisterName(uint8_t _address) {
//    if(_address == ID){
//        USB_Print("ID "); //the "F" macro loads the string directly from Flash memory, thereby saving RAM
//    }
//    else if(_address == CONFIG1){
//        USB_Print("CONFIG1 ");
//    }
//    else if(_address == CONFIG2){
//        USB_Print("CONFIG2 ");
//    }
//    else if(_address == CONFIG3){
//        USB_Print("CONFIG3 ");
//    }
//    else if(_address == LOFF){
//        USB_Print("LOFF ");
//    }
//    else if(_address == CH1SET){
//        USB_Print("CH1SET ");
//    }
//    else if(_address == CH2SET){
//        USB_Print("CH2SET ");
//    }
//    else if(_address == CH3SET){
//        USB_Print("CH3SET ");
//    }
//    else if(_address == CH4SET){
//       USB_Print("CH4SET ");
//    }
//    else if(_address == CH5SET){
//        USB_Print("CH5SET ");
//    }
//    else if(_address == CH6SET){
//        USB_Print("CH6SET ");
//    }
//    else if(_address == CH7SET){
//        USB_Print("CH7SET ");
//    }
//    else if(_address == CH8SET){
//       USB_Print("CH8SET ");
//    }
//    else if(_address == BIAS_SENSP){
//        USB_Print("BIAS_SENSP ");
//    }
//    else if(_address == BIAS_SENSN){
//        USB_Print("BIAS_SENSN ");
//    }
//    else if(_address == LOFF_SENSP){
//        USB_Print("LOFF_SENSP ");
//    }
//    else if(_address == LOFF_SENSN){
//        USB_Print("LOFF_SENSN ");
//    }
//    else if(_address == LOFF_FLIP){
//        USB_Print("LOFF_FLIP ");
//    }
//    else if(_address == LOFF_STATP){
//        USB_Print("LOFF_STATP ");
//    }
//    else if(_address == LOFF_STATN){
//        USB_Print("LOFF_STATN ");
//    }
//    else if(_address == GPIO){
//        USB_Print("GPIO ");
//    }
//    else if(_address == MISC1){
//        USB_Print("MISC1 ");
//    }
//    else if(_address == MISC2){
//        USB_Print("MISC2 ");
//    }
//    else if(_address == CONFIG4){
//        USB_Print("CONFIG4 ");
//    }
		//USB_Print("\t");
}

void ADS_sendUSBData(void){
//
//	if(!verbose){
//		USB_Print("DT0");
//		USB_Send4Byte((uint8_t*)&channelData[0]);
//		USB_Print("DT1");
//		USB_Send4Byte((uint8_t*)&channelData[1]);
//		USB_Print("DT2");
//		USB_Send4Byte((uint8_t*)&channelData[2]);
//		USB_Print("DT3");
//		USB_Send4Byte((uint8_t*)&channelData[3]);
//		USB_Print("DT4");
//		USB_Send4Byte((uint8_t*)&channelData[4]);
//		USB_Print("DT5");
//		USB_Send4Byte((uint8_t*)&channelData[5]);
//		USB_Print("DT6");
//		USB_Send4Byte((uint8_t*)&channelData[6]);
//		USB_Print("DT7");
//		USB_Send4Byte((uint8_t*)&channelData[7]);
//
//	}
//	else
//		HAL_Delay(500);
	//USB_SendNumber(channelData[0]);
	//USB_Print("DT1");
	//USB_SendNumber(0x66223344);
}



void ADS_SendData(){
//	if(HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_9) == GPIO_PIN_SET)
//		ADS_sendUSBData();
//	else
//		ADS_sendUARTData();
}

int32_t* getChannelData(){
	return channelData;
}
