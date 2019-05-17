/*==========================================================================*/

#ifndef __STK6037_H__

/*------------------------------------------------------------------------*/
#define __STK6037_H__

/*========================================================================*/
/*
   Interrupt Natural Vectors and Priorities
   Interrupt            Description              Priority   Vector
------------- ---------------------------------- -------- ----------------
        pfi    Power fail interrupt                 0         33h
       int0#   External interrupt 0                 1         03h
        TF0    Timer 0 interrupt                    2         0Bh
       int1#   External interrupt 1                 3         13h
        TF1    Timer 1 interrupt                    4         1Bh
	TI_0 or RI_0   Serial Port 0 transmit or receive    5         23h
	 TF2 or EXF2   Timer 2 interrupt                    6         2Bh
	TI_1 or RI_1   Serial Port 1 transmit or receive    7         3Bh
       int2    External interrupt 2                 8         43h	//use Timer3
       int3#   External interrupt 3                 9         4Bh 	//in P3.5
       int4    External interrupt 4                10         53h	//use ADC	
       int5#   External interrupt 5                11         5Bh	//in P3.7
       wdti    Watchdog timer interrupt            12         63h
--------------------------------------------------------------------------*/

/*========================================================================*/
/* STK6031 XFR ( eXtra special Function Register )
--------------------------------------------------------------------------
   BYTE Register  */

sfr     CHIPCON       = 0xBF;   /* {RW}[---10000] CHIP CONfiguration register */
/*{*/
#define bVAL_DeLVR      0x01    /* 1/0 Disable/Enable Low Voltage Reset function */
#define bVAL_CPUCDiv3   0x02    /* 1/0 Divide3/Normal XTAL-clock for CPU working */
#define bVAL_CPUCLKx2   0x04    /* 1/0  Double/Normal clock-rate for CPU working */
#define bVAL_DeALE      0x08    /* 1/0 Disable/Enable pin ALE output for EMI */
#define bVAL_EnXRAM     0x10    /* 1/0  Enable/Disable on-chip AUXRAM */
#define bVAL_Cpudiv48     0x20    /* 1/0  Enable/Disable Cpudiv48 */
#define bVAL_Timer3     0x40    /* 1/0  Enable/Disable  Timer3 Enable*/
/*}
*/
sfr     PCLKSEL       = 0xB7;   /* PWM �W�v ���� */
/*
		00 = CPUCLK/1;
		01 = CPUCLK/2;
		02 = CPUCLK/3;
		03 = CPUCLK/4;
		......................
		FF = CPUCLK/256
*/

sfr     PWMOPT        = 0xD1;   /* {RW}[---00000] PWM Pad Option register */
/*{*/
#define bVAL_IoPWM0     0x01    /* 1/0 PWM0/P1.4 for ADC0 */
#define bVAL_IoPWM1     0x02    /* 1/0 PWM1/P1.5 for ADC1 */
#define bVAL_IoPWM2     0x04    /* 1/0 PWM2/P1.6 for ADC2 */
#define bVAL_IoPWM3     0x08    /* 1/0 PWM3/P1.7 for ADC3 */
/*}
*/
sfr     PWM_EA0      = 0xD2;   /* {RW}[10000000] PWM0 data register */
sfr     PWM_EA1      = 0xD3;   /* {RW}[10000000] PWM0 data register */
sfr     PWM_EA2      = 0xD4;   /* {RW}[10000000] PWM1 data register */

sfr     PWMDATA0H      = 0xF9;   /* {RW}[10000000] PWM0 data register */
sfr     PWMDATA0L      = 0xFA;   /* {RW}[10000000] PWM0 data register */
sfr     PWMDATA1H      = 0xFB;   /* {RW}[10000000] PWM1 data register */
sfr     PWMDATA1L      = 0xFC;   /* {RW}[10000000] PWM1 data register */
sfr     PWMDATA2H      = 0xFD;   /* {RW}[10000000] PWM2 data register */
sfr     PWMDATA2L      = 0xFE;   /* {RW}[10000000] PWM2 data register */
sfr     PWMDATA3H      = 0xF1;   /* {RW}[10000000] PWM3 data register */
sfr     PWMDATA3L      = 0xF2;   /* {RW}[10000000] PWM3 data register */
sfr     PWMDATA4H      = 0xF3;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA4L      = 0xF4;   /* {RW}[10000000] PWM4 data register */

sfr     PWMDATA5H      = 0xF5;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA5L      = 0xF6;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA6H      = 0xE9;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA6L      = 0xEA;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA7H      = 0xEB;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA7L      = 0xEC;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA8H      = 0xED;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA8L      = 0xEE;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA9H      = 0xB9;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA9L      = 0xBA;   /* {RW}[10000000] PWM4 data register */

sfr     PWMDATA10H      = 0xBB;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA10L      = 0xBC;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA11H      = 0xBD;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA11L      = 0xBE;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA12H      = 0xB1;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA12L      = 0xB2;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA13H      = 0xB3;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA13L      = 0xB4;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA14H      = 0xB5;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA14L      = 0xB6;   /* {RW}[10000000] PWM4 data register */

sfr     PWMDATA15H      = 0xA9;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA15L      = 0xAA;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA16H      = 0xAB;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA16L      = 0xAC;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA17H      = 0xAD;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA17L      = 0xAE;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA18H      = 0xA1;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA18L      = 0xA2;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA19H      = 0xA3;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA19L      = 0xA4;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA20H      = 0xA5;   /* {RW}[10000000] PWM4 data register */
sfr     PWMDATA20L      = 0xA6;   /* {RW}[10000000] PWM4 data register */


sfr     ADCSEL       = 0xDA;   /* {RW}[0---0000] A/D converter control register */
/*{*/
#define vBITs_SADC      0x0f
#define bVAL_SADC0      0x01    /* Select the ADC0 pin input */
#define bVAL_SADC1      0x02    /* Select the ADC1 pin input */
#define bVAL_SADC2      0x04    /* Select the ADC2 pin input */
#define bVAL_SADC3      0x08    /* Select the ADC3 pin input */
#define bVAL_Ready      0x10    /* enable A/D converter      */
#define bVAL_ENADC      0x80    /* enable A/D converter      */
/*}
*/
sfr     ADCVAL1       = 0xDB;   /* {RW}[--000000] A/D converter data register */
sfr     ADCVAL2       = 0xDC;   /* {RW}[--000000] A/D converter data register */

sfr     WDTCTRL       = 0xE1;   /* {RW}[00---000] Watchdog Timer control register */
/*{*/
#define vBITs_WDT       0x7     /* [2:0] Overflow interval option (X'tal=24MHz) */
#define vBITs_WDT2S     0x0     /* [000] 2    = 8 x 0.25 sec. */
#define vBITs_WDT0d25S  0x1     /* [001] 0.25 = 1 x 0.25 sec. */
#define vBITs_WDT0d5S   0x2     /* [010] 0.5  = 2 x 0.25 sec. */
#define vBITs_WDT0d75S  0x3     /* [011] 0.75 = 3 x 0.25 sec. */
#define vBITs_WDT1S     0x4     /* [100] 1    = 4 x 0.25 sec. */
#define vBITs_WDT1d25S  0x5     /* [101] 1.25 = 5 x 0.25 sec. */
#define vBITs_WDT1d5S   0x6     /* [110] 1.5  = 6 x 0.25 sec. */
#define vBITs_WDT1d75S  0x7     /* [111] 1.75 = 7 x 0.25 sec. */
/**/
#define bVAL_CLRWDT     0x40    /*  clear the Watchdog Timer */
#define bVAL_ENWDT      0x80    /* enable the Watchdog Timer */
/*}
*/

sfr     ISPSLV        = 0xE2;   /* {RW}[01010101] ISP Slave Address register*/
sfr     ISPEN         = 0xE3;   /* {RW}[00000000] ISP enable register       */

/*------------------------------------------------------------------------
   DW8051 eXtended REGisters (XREG) */

sfr DPL1        = 0x84;  //{??}[00000000] Data Pointer 1 Low byte
sfr DPH1        = 0x85;  //{??}[00000000] Data Pointer 1 High byte

sfr DPS         = 0x86;  /*{??}[00000000] DPTR Select (LSB)
                                       S 
                                       E 
                                       L  */

sfr CKCON       = 0x8E;  /*{??}[00000001] ClocK CONtrol register
                                  TTTMMM
                                  210DDD
                                  MMM210  */

sfr SPC_FNC     = 0x8F;  /*{??}[00000000] SPeCial function register
                                       W
                                       R
                                       S  */

sfr EXIF        = 0x91;  /*{??}[00001000] EXtended Interrupt Flag
                                IIII
                                EEEE
                                5432  */
	#define EIE_ADC_Flage      0x40    /* enable the ADC Timer */
	#define EIE_Timer3_Flage      0x10    /* enable the ADC Timer */

sfr MPAGE       = 0x92;  //{??}[00000000] Memory PAGE register

sfr EICON       = 0xD8;  /*{??}[01000000] Extended Interrupt CONtrol
                                S EPW
                                M PFD
                                O FIT
                                D I I
                                1     */

sfr EIE         = 0xE8;  /*{??}[11100000] Extended Interrupt Enable
                                   EEEEE
                                   WXXXX
                                   D5432 */
	#define EIE_ADC      0x04    /* enable the ADC Timer */
	#define EIE_Timer3      0x01    /* enable the Timer3 Timer */

sfr EIP         = 0xF8;  /*{??}[11100000] Extended Interrupt Priority
                                   PPPPP
                                   WXXXX
                                   D5432 */

// 8052 Extensions
sfr T2CON    = 0xC8;
sfr T2MOD    = 0xC9;
sfr RCAP2L   = 0xCA;
sfr RCAP2H   = 0xCB;
sfr TL2      = 0xCC;
sfr TH2      = 0xCD;

// T2CON 
sbit CPRL2     = T2CON ^ 0;
sbit CT2     = T2CON ^ 1;
sbit TR2     = T2CON ^ 2;
sbit EXEN2   = T2CON ^ 3;
sbit TCLK    = T2CON ^ 4;
sbit RCLK    = T2CON ^ 5;
sbit EXF2    = T2CON ^ 6;
sbit TF2     = T2CON ^ 7;

/*  IE   *
sbit EA   = 0xAF; */
sbit ET2  = 0xAD;
/*
sbit ES   = 0xAC;
sbit ET1  = 0xAB;
sbit EX1  = 0xAA;
sbit ET0  = 0xA9;
sbit EX0  = 0xA8;
*/


/*========================================================================
 * generic 80C51 SFR
--------------------------------------------------------------------------*/
/*  BYTE Register  */
sfr P0   = 0x80;
sfr P1   = 0x90;
sfr P2   = 0xA0;
sfr P3   = 0xB0;
sfr SCON1 = 0xC0;
sfr SBUF1 = 0xC1;
sfr PSW  = 0xD0;
sfr ACC  = 0xE0;
sfr B    = 0xF0;
sfr SP   = 0x81;
sfr DPL  = 0x82;
sfr DPH  = 0x83;
sfr PCON = 0x87;
sfr TCON = 0x88;
sfr TMOD = 0x89;
sfr TL0  = 0x8A;
sfr TL1  = 0x8B;
sfr TH0  = 0x8C;
sfr TH1  = 0x8D;
sfr IE   = 0xA8;
sfr IP   = 0xB8;
sfr SCON = 0x98;
sfr SBUF = 0x99;
sfr TH3  = 0x9B;
sfr TL3  = 0x9A;

/*  BIT Register  */
/*  PSW   */
sbit CY   = 0xD7;
sbit AC   = 0xD6;
sbit F0   = 0xD5;
sbit RS1  = 0xD4;
sbit RS0  = 0xD3;
sbit OV   = 0xD2;
sbit P    = 0xD0;

/*  TCON  */
sbit TF1  = 0x8F;
sbit TR1  = 0x8E;
sbit TF0  = 0x8D;
sbit TR0  = 0x8C;
sbit IE1  = 0x8B;
sbit IT1  = 0x8A;
sbit IE0  = 0x89;
sbit IT0  = 0x88;

/*  IE   */
sbit EA   = 0xAF;
sbit ES1   = 0xAE;
sbit ES   = 0xAC;
sbit ET1  = 0xAB;
sbit EX1  = 0xAA;
sbit ET0  = 0xA9;
sbit EX0  = 0xA8;

/*  IP   */ 
sbit PS   = 0xBC;
sbit PT1  = 0xBB;
sbit PX1  = 0xBA;
sbit PT0  = 0xB9;
sbit PX0  = 0xB8;

/*  P3  */
sbit RD   = 0xB7;
sbit WR   = 0xB6;
sbit T1   = 0xB5;
sbit T0   = 0xB4;
sbit INT1 = 0xB3;
sbit INT0 = 0xB2;
sbit TXD  = 0xB1;
sbit RXD  = 0xB0;

/*  SCON  */
sbit SM0  = 0x9F;
sbit SM1  = 0x9E;
sbit SM2  = 0x9D;
sbit REN  = 0x9C;
sbit TB8  = 0x9B;
sbit RB8  = 0x9A;
sbit TI   = 0x99;
sbit RI   = 0x98;

/*  SCON1  */
sbit SM0_1  = 0xC7;
sbit SM1_1  = 0xC6;
sbit SM2_1  = 0xC5;
sbit REN_1  = 0xC4;
sbit TB8_1  = 0xC3;
sbit RB8_1  = 0xC2;
sbit TI_1   = 0xC1;
sbit RI_1   = 0xC0;
// IO Port
sbit P0_0     = P0 ^ 0;
sbit P0_1     = P0 ^ 1;
sbit P0_2     = P0 ^ 2;
sbit P0_3     = P0 ^ 3;
sbit P0_4     = P0 ^ 4;
sbit P0_5     = P0 ^ 5;
sbit P0_6     = P0 ^ 6;
sbit P0_7     = P0 ^ 7;

sbit P1_0     = P1 ^ 0;
sbit P1_1     = P1 ^ 1;
sbit P1_2     = P1 ^ 2;
sbit P1_3     = P1 ^ 3;
sbit P1_4     = P1 ^ 4;
sbit P1_5     = P1 ^ 5;
sbit P1_6     = P1 ^ 6;
sbit P1_7     = P1 ^ 7;

sbit P2_0     = P2 ^ 0;
sbit P2_1     = P2 ^ 1;
sbit P2_2     = P2 ^ 2;
sbit P2_3     = P2 ^ 3;
sbit P2_4     = P2 ^ 4;
sbit P2_5     = P2 ^ 5;
sbit P2_6     = P2 ^ 6;
sbit P2_7     = P2 ^ 7;

sbit P3_0     = P3 ^ 0;
sbit P3_1     = P3 ^ 1;
sbit P3_2     = P3 ^ 2;
sbit P3_3     = P3 ^ 3;
sbit P3_4     = P3 ^ 4;
sbit P3_5     = P3 ^ 5;
sbit P3_6     = P3 ^ 6;
sbit P3_7     = P3 ^ 7;


#define  BIT_0              0x01
#define  BIT_1              0x02
#define  BIT_2              0x04
#define  BIT_3              0x08
#define  BIT_4              0x10
#define  BIT_5              0x20
#define  BIT_6              0x40
#define  BIT_7              0x80

typedef	bit                 BIT;
typedef	bit                 BOOL;
typedef	unsigned char       BYTE;
typedef	unsigned int        WORD;
typedef	unsigned long       LWORD;

typedef  unsigned char * P_CBYTE;

#define	TRUE                (bit)1
#define	FALSE               (bit)!TRUE

#define BIN(dt)	\
        ((dt & 0x10000000) ? 0x80 : 0x00)   + \
        ((dt & 0x01000000) ? 0x40 : 0x00)   + \
        ((dt & 0x00100000) ? 0x20 : 0x00)   + \
        ((dt & 0x00010000) ? 0x10 : 0x00)   + \
        ((dt & 0x00001000) ? 0x08 : 0x00)   + \
        ((dt & 0x00000100) ? 0x04 : 0x00)   + \
        ((dt & 0x00000010) ? 0x02 : 0x00)   + \
        ((dt & 0x00000001) ? 0x01 : 0x00)

/*========================================================================*/
typedef union
      {
        WORD   WVAL;
        struct{
                BYTE    Bv1H;
                BYTE    Bv0L;
              } tBv;
      } UTW;
	
#endif//__STK6031_H__

/*========================================================================
eof
*/
