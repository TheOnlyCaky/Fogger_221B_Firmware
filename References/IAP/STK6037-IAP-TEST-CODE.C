#include"stk6037.h"


sfr   IAPEN      = 0xE4;			// /* IAP Enable */
sfr   IAP_ADRL   = 0xE5;			// /* IAP ADDR */
sfr   IAP_ADRH   = 0xE6;			// /* IAP ADDR */


#define	page15 	0x3e00		// 0x3E00 ~ 0x3FFF
#define	page14	0x3C00 		// 0x3C00 ~ 0x3DFF
#define	page13	0x3A00		// 0x3A00 ~ 0x3BFF
#define	page12	0x3800		// 0x3800 ~ 0x39FF
#define	page11	0x3600		// 0x3600 ~ 0x37FF
#define	page10	0x3400		// 0x3400 ~ 0x35FF
#define	page9	0x3200		// 0x3200 ~ 0x33FF
#define	page8	0x3000		// 0x3000 ~ 0x31FF
#define	page7	0x2E00		// 0x2E00 ~ 0x2FFF
#define	page6	0x2C00		// 0x2C00 ~ 0x2DFF
#define	page5	0x2A00		// 0x2A00 ~ 0x2BFF
#define	page4	0x2800		// 0x2800 ~ 0x29FF
#define	page3	0x2600		// 0x2600 ~ 0x27FF
#define	page2	0x2400		// 0x2400 ~ 0x25FF
#define	page1	0x2200		// 0x2200 ~ 0x23FF
#define	page0	0x2000		// 0x2000 ~ 0x21FF

#define	IAP_Erase 	0x90			
#define	IAP_Read 	0xa0			
#define	IAP_Write 	0xc0

#define uchar unsigned char
#define uint unsigned int

uchar 	xdata	IAP_AUX[64] _at_ 0x100;

//char xdata LED_Data[50] _at_ 0x8000;

void main(void)
{
	uint	 IAP_page = page0;
	uchar	 temp;

	for( temp=0;temp<64;temp++ )
	{
		IAP_AUX[temp] = temp;
	}

		
	P1 = 25;

	IAP_page = page0;

	IAP_ADRH = IAP_page>>8;	
    IAP_ADRL = IAP_page;
    IAPEN = IAP_Erase;	

	IAP_ADRH = IAP_page>>8;	
    IAP_ADRL = IAP_page;	
    IAPEN = IAP_Write;    	
	
	IAP_page = page1;

	IAP_ADRH = IAP_page>>8;	
    IAP_ADRL = IAP_page;
    IAPEN = IAP_Erase;	

	IAP_ADRH = IAP_page>>8;	
    IAP_ADRL = IAP_page;	
    IAPEN = IAP_Write; 

	while(1){};
}

