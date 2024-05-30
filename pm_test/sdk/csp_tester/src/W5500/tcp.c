#include "tcp.h"
#include <stdio.h>
#include <string.h>
#include "../spi_ps.h"

uint8_t gDATABUF[DATA_BUF_SIZE];


wiz_NetInfo gWIZNETINFO = { .mac = {0x5a, 0x08, 0xdc,0x00, 0xab, 0xcd},
                            .ip = {10, 10, 10, 10},
                            .sn = {255,255,255,0},
                            .gw = {10, 10, 10, 1},
                            .dns = {8,8,8,8},
                            .dhcp = NETINFO_STATIC};

/**
  * @brief  Intialize the network information to be used in WIZCHIP
  * @retval None
  */
void network_init(void)
{


    uint8_t tmpstr[6];
    ctlnetwork(CN_SET_NETINFO, (void*)&gWIZNETINFO);
    ctlnetwork(CN_GET_NETINFO, (void*)&gWIZNETINFO);

    // Display Network Information
    ctlwizchip(CW_GET_ID,(void*)tmpstr);
    printf("\r\n=== %s NET CONF ===\r\n",(char*)tmpstr);

    printf("MAC: %02X:%02X:%02X:%02X:%02X:%02X\r\n",gWIZNETINFO.mac[0],gWIZNETINFO.mac[1],gWIZNETINFO.mac[2],
          gWIZNETINFO.mac[3],gWIZNETINFO.mac[4],gWIZNETINFO.mac[5]);
    printf("SIP: %d.%d.%d.%d\r\n", gWIZNETINFO.ip[0],gWIZNETINFO.ip[1],gWIZNETINFO.ip[2],gWIZNETINFO.ip[3]);
    printf("GAR: %d.%d.%d.%d\r\n", gWIZNETINFO.gw[0],gWIZNETINFO.gw[1],gWIZNETINFO.gw[2],gWIZNETINFO.gw[3]);
    printf("SUB: %d.%d.%d.%d\r\n", gWIZNETINFO.sn[0],gWIZNETINFO.sn[1],gWIZNETINFO.sn[2],gWIZNETINFO.sn[3]);
    printf("DNS: %d.%d.%d.%d\r\n", gWIZNETINFO.dns[0],gWIZNETINFO.dns[1],gWIZNETINFO.dns[2],gWIZNETINFO.dns[3]);
    printf("======================\r\n");
}


void w5500_init(void)
{
	uint8_t memsize[2][8] = {{2,2,2,2,2,2,2,2},{2,2,2,2,2,2,2,2}};
	uint8_t tmp;

	printf("w5500_init \r\n");

	reg_wizchip_cris_cbfunc(NULL, NULL);

	reg_wizchip_cs_cbfunc(SPI_CS_Select, SPI_CS_Deselect);
	reg_wizchip_spi_cbfunc(SPI_ReadByte, SPI_WriteByte);

	/* WIZCHIP SOCKET Buffer initialize */
	if(ctlwizchip(CW_INIT_WIZCHIP,(void*)memsize) == -1)
	{
		 printf("WIZCHIP Initialized fail.\r\n");
		 while(1);
	}
	printf("WIZCHIP Initialized \r\n");

	//ctlwizchip(CW_RESET_WIZCHIP,(void *)0);
	//printf("WIZCHIP RESET\r\n");
	char id[6];
	ctlwizchip(CW_GET_ID,(void *)id);
	printf("CW_GET_ID %s\r\n", id);

	/* PHY link status check */
	ctlwizchip(CW_RESET_PHY,(void*)memsize);
	do
	{
		if(ctlwizchip(CW_GET_PHYLINK, (void*)&tmp) == -1)
		{
			printf("Unknown PHY Link stauts.\r\n");
		}
		//printf("PHY_LINK %d\r\n", tmp);
	}
	while(tmp == PHY_LINK_OFF);

	printf("PHY Link stauts.\r\n");
	/* Network initialization */
	network_init();

}




