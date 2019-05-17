#ifndef __STK6037_H__
#define __STK6037_H__

#define FIB_31 1346269
#define FIB_29 514229

//ASM Functions
#define Nop() \
    __asm     \
        nop   \
        nop   \
        nop   \
    __endasm  \

//Globals
__sfr __at (0xBF) CHIPCON;
__sfr __at (0xB7) PCLKSEL;

__sfr __at (0x80) P0;
__sfr __at (0x90) P1;
__sfr __at (0xA0) P2;
__sfr __at (0xB0) P3;

__sbit __at (0x80 ^ 0) P0_0;
__sbit __at (0x80 ^ 1) P0_1;
__sbit __at (0x80 ^ 2) P0_2;
__sbit __at (0x80 ^ 3) P0_3;
__sbit __at (0x80 ^ 4) P0_4;
__sbit __at (0x80 ^ 5) P0_5;
__sbit __at (0x80 ^ 6) P0_6;
__sbit __at (0x80 ^ 7) P0_7;

__sbit __at (0x90 ^ 0) P1_0;
__sbit __at (0x90 ^ 1) P1_1;
__sbit __at (0x90 ^ 2) P1_2;
__sbit __at (0x90 ^ 3) P1_3;
__sbit __at (0x90 ^ 4) P1_4;
__sbit __at (0x90 ^ 5) P1_5;
__sbit __at (0x90 ^ 6) P1_6;
__sbit __at (0x90 ^ 7) P1_7;

__sbit __at (0xA0 ^ 0) P2_0;
__sbit __at (0xA0 ^ 1) P2_1;
__sbit __at (0xA0 ^ 2) P2_2;
__sbit __at (0xA0 ^ 3) P2_3;
__sbit __at (0xA0 ^ 4) P2_4;
__sbit __at (0xA0 ^ 5) P2_5;
__sbit __at (0xA0 ^ 6) P2_6;
__sbit __at (0xA0 ^ 7) P2_7;

__sbit __at (0xB0 ^ 0) P3_0;
__sbit __at (0xB0 ^ 1) P3_1;
__sbit __at (0xB0 ^ 2) P3_2;
__sbit __at (0xB0 ^ 3) P3_3;
__sbit __at (0xB0 ^ 4) P3_4;
__sbit __at (0xB0 ^ 5) P3_5;
__sbit __at (0xB0 ^ 6) P3_6;
__sbit __at (0xB0 ^ 7) P3_7;

__sfr __at (0xA8) IE;
__sfr __at (0xE8) EIE;
__sfr __at (0x91) EXIF;
__sbit __at (0xAF) EA;
__sbit __at (0xA9) ET0;
__sbit __at (0xAC) ES;
__sbit __at (0x98) RI;

//Button Manager
__sfr __at (0xDA) ADCSEL;
__sfr __at (0xDB) ADCVAL1;
__sfr __at (0xDC) ADCVAL2;
#define bVAL_SADC3      0x08
#define bVAL_SADC0      0x01
#define bVAL_ENADC      0x80
#define bVAL_Ready      0x10

__sfr __at (0xD9) P1_OPT;
#define ADC3E 0x08
#define ADC0E 0x01

//Display Manager
__sbit __at (0x93) SCK; //P
__sbit __at (0x95) SER;
__sbit __at (0x92) RCK;
#define EXE_BIT 0x05

//DMX Manager
__sfr __at (0x98) SCON;
__sbit __at (0x98 ^ 7) SM0;
__sbit __at (0x98 ^ 6) SM1;
__sbit __at (0x98 ^ 5) SM2;
__sbit __at (0x98 ^ 4) REN;

__sfr __at (0xCA) RCAP2L;
__sfr __at (0xCB) RCAP2H;

__sfr __at (0xC8) T2CON;
__sbit __at (0xC8 ^ 5) RCLK;
__sbit __at (0xC8 ^ 4) TCLK;
__sbit __at (0xC8 ^ 3) EXEN2;
__sbit __at (0xC8 ^ 2) TR2;
__sbit __at (0xC8 ^ 1) CT2;
__sbit __at (0xC8 ^ 0) CPRL2;

__sfr __at (0x9B) TH3;
__sfr __at (0x9A) TL3;

__sfr __at (0x99) SBUF;

#define EIE_Timer3 0x01
#define EIE_Timer3_Flag 0x10

//LED Manager

__sfr __at (0xD3) PWM_EA1;
__sfr __at (0xD4) PWM_EA2;

__sfr __at (0xBD) PWMDATA11H;
__sfr __at (0xBE) PWMDATA11L;

__sfr __at (0xB5) PWMDATA14H;
__sfr __at (0xB6) PWMDATA14L;

__sfr __at (0xAD) PWMDATA17H;
__sfr __at (0xAE) PWMDATA17L;

//Wireless
__sfr __at (0x88) TCON;
__sfr __at (0x89) TMOD;
__sfr __at (0x8E) CKCON;

__sfr __at (0x8A) TL0;
__sfr __at (0x8C) TH0;

//Storage
__sfr __at (0xE4) IAPEN;
__sfr __at (0xE5) IAP_ADRL;
__sfr __at (0xE6) IAP_ADRH;

#endif//__STK6031_H__