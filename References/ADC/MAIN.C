#include "INC\STK6037.H"

WORD	  ADCOne;		   		//存放第一組的ADC 資料
WORD	  ADCTwo;				//存放第二組的ADC 資料

void SYS_Delay_mS(BYTE bMilliSec)
{
    WORD i;

    while(1)
    {
        for(i = 0; i < 360; i++);

        bMilliSec--;

        if(bMilliSec == 0)  break;
    }
}
void SYS_Delay_10uS(void)
{
    WORD i;
        for(i = 0; i < 5; i++){};
}
void main(void)
{
	SYS_Delay_mS(1000);   
	IE      = 0;                        // Disable Interrupt
    CHIPCON = (bVAL_EnXRAM);                     // Enable STK601X's XDATA, CPU double clock rate    
  
	P1OPT = bVAL_SADC3|bVAL_SADC0;		// 將P1OPT切換至ADC的Chanel
	ADCSEL = 0;							// Disable ADC的設定
    EIE = 0;							// Disable ADC的中斷
  	EA      = 1;						// 開啟所有中斷
    while(1)
    {	
		ADCSEL =bVAL_ENADC|bVAL_SADC3;		// Enable ADC並開起ADC Chanel 3
		SYS_Delay_10uS();					// 延遲持間 約12~16 Clcok時間讓ADC啟動
		while((ADCSEL&bVAL_Ready)==0) {};	// 判斷ADC 是否轉換完成
		ADCOne = (ADCVAL1<<8);				// 資料存至 ADCOne
		ADCOne = ADCOne|ADCVAL2;			//
		ADCSEL = ADCSEL &(~bVAL_ENADC);		// Disable ADC 

		P1 = 0xff;
		ADCSEL =bVAL_ENADC|bVAL_SADC0;		// Enable ADC並開起ADC Chanel 0
		SYS_Delay_10uS();					// 延遲持間 約12~16 Clcok時間讓ADC啟動
		while((ADCSEL&bVAL_Ready)==0) {};	// 判斷ADC 是否轉換完成
		ADCTwo = (ADCVAL1<<8);				// 資料存至 ADCTwo
		ADCTwo= ADCTwo|ADCVAL2;				//
		ADCSEL = ADCSEL &(~bVAL_ENADC);		// Disable ADC
		
    	}
}

