
// 若使用STK標準定義STK6037.H
// 則無需在定義 下列sfr 暫存器

// sfr     PCLKSEL       = 0xB7;   // PWM 頻率 控制 
//
//		00 = CPUCLK/1;
//		01 = CPUCLK/2;
//		02 = CPUCLK/3;
//		03 = CPUCLK/4;
//		......................
//		FF = CPUCLK/256

// sfr     CHIPCON 	= 0xBF;   /* {RW}[10000000] PWM0 data register */
// sfr     PWM_EA0      = 0xD2;   /* {RW}[10000000] PWM0 data register */
// sfr     PWMDATA0H      = 0xF9;   /* {RW}[10000000] PWM0 data register */
// sfr     PWMDATA0L      = 0xFA;   /* {RW}[10000000] PWM0 data register */

// 反之若未使用到STK 的定義檔案 則需自行再定義

#include "INC\STK6037.H"
				

void main(void)
{
		CHIPCON = 0x10;	  // 設定CPUCLK = XTAL	
		PWM_EA0= 0x01;	  // PWM_EA0 選擇欲輸出腳位當作PWM 使用,範例為使用到P1.0為PWM
		PCLKSEL = 0x00;   // 00 = CPUCLK/1;
				  // 若XTAL = 12M,PCLKSEL = 0x00 則 PWM頻率為 12M/1/1024 = 11.72Khz  	
		PWMDATA0H = 0x80; // PWM0 為控制 P1.0 腳位之PWM 輸出的數值
		PWMDATA0L = 0x00; // PWM 的範圍為 0x000 ~ 0x3ff 區間 0x200(十進位值為512)為中間值
				  // 輸出的波形 HIGH = 512/1024, LOW = 512/1024 
		
		while(1);	  // 程式會停在此位子				  			
}


