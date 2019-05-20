;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _tick_wireless
	.globl _blackout
	.globl _tick_led
	.globl _power_heater
	.globl _tick_fogger
	.globl _tick_ui
	.globl _exe_command
	.globl _save_load_settings
	.globl _CPRL2
	.globl _CT2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _RCK
	.globl _SER
	.globl _SCK
	.globl _RI
	.globl _ES
	.globl _ET0
	.globl _EA
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _IAP_ADRH
	.globl _IAP_ADRL
	.globl _IAPEN
	.globl _TH0
	.globl _TL0
	.globl _CKCON
	.globl _TMOD
	.globl _TCON
	.globl _PWMDATA17L
	.globl _PWMDATA17H
	.globl _PWMDATA14L
	.globl _PWMDATA14H
	.globl _PWMDATA11L
	.globl _PWMDATA11H
	.globl _PWM_EA2
	.globl _PWM_EA1
	.globl _SBUF
	.globl _TL3
	.globl _TH3
	.globl _T2CON
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _SCON
	.globl _P1_OPT
	.globl _ADCVAL2
	.globl _ADCVAL1
	.globl _ADCSEL
	.globl _EXIF
	.globl _EIE
	.globl _IE
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _PCLKSEL
	.globl _CHIPCON
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CHIPCON	=	0x00bf
_PCLKSEL	=	0x00b7
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_IE	=	0x00a8
_EIE	=	0x00e8
_EXIF	=	0x0091
_ADCSEL	=	0x00da
_ADCVAL1	=	0x00db
_ADCVAL2	=	0x00dc
_P1_OPT	=	0x00d9
_SCON	=	0x0098
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2CON	=	0x00c8
_TH3	=	0x009b
_TL3	=	0x009a
_SBUF	=	0x0099
_PWM_EA1	=	0x00d3
_PWM_EA2	=	0x00d4
_PWMDATA11H	=	0x00bd
_PWMDATA11L	=	0x00be
_PWMDATA14H	=	0x00b5
_PWMDATA14L	=	0x00b6
_PWMDATA17H	=	0x00ad
_PWMDATA17L	=	0x00ae
_TCON	=	0x0088
_TMOD	=	0x0089
_CKCON	=	0x008e
_TL0	=	0x008a
_TH0	=	0x008c
_IAPEN	=	0x00e4
_IAP_ADRL	=	0x00e5
_IAP_ADRH	=	0x00e6
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_EA	=	0x00af
_ET0	=	0x00a9
_ES	=	0x00ac
_RI	=	0x0098
_SCK	=	0x0093
_SER	=	0x0095
_RCK	=	0x0092
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_CT2	=	0x00c9
_CPRL2	=	0x00c8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_wirelessBreakDetectISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_dmxReceiveByteISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_dmxBreakDetectedISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;tick                      Allocated to registers 
;------------------------------------------------------------
;	../main.c:26: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../main.c:32: CHIPCON = 0x50;
	mov	_CHIPCON,#0x50
;	../main.c:33: PCLKSEL = 0x21;
	mov	_PCLKSEL,#0x21
;	../main.c:34: EA = 1; //global interrupts enabled
;	assignBit
	setb	_EA
;	../main.c:35: P2_3 = 1; //enable programming
;	assignBit
	setb	_P2_3
;	../main.c:38: IAP_ADRH = (uint8_t) (RUNTIME_DATA_FLASH_SAVE_PAGE >> 8);
	mov	_IAP_ADRH,#0x3f
;	../main.c:39: IAP_ADRL = (uint8_t) RUNTIME_DATA_FLASH_SAVE_PAGE;
	mov	_IAP_ADRL,#0xc0
;	../main.c:40: save_load_settings(SLOT_0, LOAD);
	mov	_save_load_settings_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_save_load_settings
;	../main.c:43: P1_OPT = ADC0E | ADC3E; //enable adc input
	mov	_P1_OPT,#0x09
;	../main.c:46: P3_4 = 1; //turn fogger off
;	assignBit
	setb	_P3_4
;	../main.c:47: P3_3 = 1;
;	assignBit
	setb	_P3_3
;	../main.c:48: power_heater(HEATER_DISABLE);
	mov	dpl,#0x01
	lcall	_power_heater
;	../main.c:51: tick_fogger();
	lcall	_tick_fogger
;	../main.c:55: SCK = 0;
;	assignBit
	clr	_SCK
;	../main.c:56: SER = 0;
;	assignBit
	clr	_SER
;	../main.c:57: RCK = 0;
;	assignBit
	clr	_RCK
;	../main.c:59: exe_command(FUNCTION_SET);
	mov	dptr,#0x3c00
	lcall	_exe_command
;	../main.c:60: exe_command(ENTRY_MODE_SET);
	mov	dptr,#0x1e00
	lcall	_exe_command
;	../main.c:61: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../main.c:62: exe_command(DISPLAY_ON);
	mov	dptr,#0x3000
	lcall	_exe_command
;	../main.c:65: exe_command(CGRAM_ADDRESS_SET); //selector
	mov	dptr,#0x0200
	lcall	_exe_command
;	../main.c:68: exe_command(0x8880);
	mov	dptr,#0x8880
	lcall	_exe_command
;	../main.c:69: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:70: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:71: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:72: exe_command(0xA080);
	mov	dptr,#0xa080
	lcall	_exe_command
;	../main.c:73: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:74: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:75: exe_command(0xA080);
	mov	dptr,#0xa080
	lcall	_exe_command
;	../main.c:78: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:79: exe_command(0x1080);
	mov	dptr,#0x1080
	lcall	_exe_command
;	../main.c:80: exe_command(0x3080);
	mov	dptr,#0x3080
	lcall	_exe_command
;	../main.c:81: exe_command(0x7080);
	mov	dptr,#0x7080
	lcall	_exe_command
;	../main.c:82: exe_command(0x3080);
	mov	dptr,#0x3080
	lcall	_exe_command
;	../main.c:83: exe_command(0x1080);
	mov	dptr,#0x1080
	lcall	_exe_command
;	../main.c:84: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:85: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:88: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:89: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:90: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:91: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:92: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:93: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:94: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:95: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:98: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:99: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:100: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:101: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:102: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:103: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:104: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:105: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:108: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:109: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:110: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:111: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:112: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:113: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:114: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:115: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:118: exe_command(0x2080);
	mov	dptr,#0x2080
	lcall	_exe_command
;	../main.c:119: exe_command(0x7080);
	mov	dptr,#0x7080
	lcall	_exe_command
;	../main.c:120: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:121: exe_command(0x5080);
	mov	dptr,#0x5080
	lcall	_exe_command
;	../main.c:122: exe_command(0x7080);
	mov	dptr,#0x7080
	lcall	_exe_command
;	../main.c:123: exe_command(0x5080);
	mov	dptr,#0x5080
	lcall	_exe_command
;	../main.c:124: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:125: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:128: exe_command(0xF880);
	mov	dptr,#0xf880
	lcall	_exe_command
;	../main.c:129: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:130: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:131: exe_command(0x5080);
	mov	dptr,#0x5080
	lcall	_exe_command
;	../main.c:132: exe_command(0x7080);
	mov	dptr,#0x7080
	lcall	_exe_command
;	../main.c:133: exe_command(0x5080);
	mov	dptr,#0x5080
	lcall	_exe_command
;	../main.c:134: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:135: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:138: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:139: exe_command(0xC080);
	mov	dptr,#0xc080
	lcall	_exe_command
;	../main.c:140: exe_command(0xD880);
	mov	dptr,#0xd880
	lcall	_exe_command
;	../main.c:141: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:142: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:143: exe_command(0x8880); 
	mov	dptr,#0x8880
	lcall	_exe_command
;	../main.c:144: exe_command(0x7080);
	mov	dptr,#0x7080
	lcall	_exe_command
;	../main.c:145: exe_command(0x0080);
	mov	dptr,#0x0080
	lcall	_exe_command
;	../main.c:151: tick_ui();
	lcall	_tick_ui
;	../main.c:154: CKCON |= 0x08; //timer0
	mov	r6,_CKCON
	orl	ar6,#0x08
	mov	_CKCON,r6
;	../main.c:155: TMOD = 0x00; //timer0 
	mov	_TMOD,#0x00
;	../main.c:156: ET0 = 1; //timer0
;	assignBit
	setb	_ET0
;	../main.c:159: blackout();
	lcall	_blackout
;	../main.c:160: PWM_EA1 = 0x48;
	mov	_PWM_EA1,#0x48
;	../main.c:161: PWM_EA2 = 0x02;
	mov	_PWM_EA2,#0x02
;	../main.c:164: while(tick--){}
	mov	r4,#0xdd
	mov	r5,#0x8a
	mov	r6,#0x14
	mov	r7,#0x00
00101$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	dec	r4
	cjne	r4,#0xff,00140$
	dec	r5
	cjne	r5,#0xff,00140$
	dec	r6
	cjne	r6,#0xff,00140$
	dec	r7
00140$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00101$
;	../main.c:168: SM0 = 1;
;	assignBit
	setb	_SM0
;	../main.c:169: SM1 = 1;
;	assignBit
	setb	_SM1
;	../main.c:170: SM2 = 1;
;	assignBit
	setb	_SM2
;	../main.c:171: REN = 1;
;	assignBit
	setb	_REN
;	../main.c:174: RCAP2L = BAUD_TIMER_LOW;
	mov	_RCAP2L,#0xfd
;	../main.c:175: RCAP2H = BAUD_TIMER_HIGH;
	mov	_RCAP2H,#0xff
;	../main.c:176: RCLK = 1;
;	assignBit
	setb	_RCLK
;	../main.c:177: TCLK = 1;
;	assignBit
	setb	_TCLK
;	../main.c:178: EXEN2 = 0; 
;	assignBit
	clr	_EXEN2
;	../main.c:179: TR2 = 1;
;	assignBit
	setb	_TR2
;	../main.c:180: CT2 = 0; 
;	assignBit
	clr	_CT2
;	../main.c:181: CPRL2 = 0;
;	assignBit
	clr	_CPRL2
;	../main.c:184: TH3 = BREAK_TIMER_RELOAD_HIGH;
	mov	_TH3,#0xfc
;	../main.c:185: TL3 = BREAK_TIMER_RELOAD_LOW;
	mov	_TL3,#0xd0
;	../main.c:188: EIE |= EIE_Timer3;
	mov	r2,_EIE
	orl	ar2,#0x01
	mov	_EIE,r2
;	../main.c:189: ES = 1;
;	assignBit
	setb	_ES
;	../main.c:194: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	../main.c:197: power_heater(HEATER_ENABLE);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_power_heater
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../main.c:200: while(1){
00111$:
;	../main.c:202: if(!(tick % FOGGER_FREQ)) { tick_fogger(); }
	mov	__modulong_PARM_2,#0x90
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00105$
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_tick_fogger
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00105$:
;	../main.c:204: if(!(tick % WIRELESS_FREQ)) { tick_wireless(); }
	mov	__modulong_PARM_2,#0x59
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00107$
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_tick_wireless
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	../main.c:206: if(!(tick % UI_FREQ)) { tick_ui(); }
	mov	__modulong_PARM_2,#0x03
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jnz	00109$
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_tick_ui
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	../main.c:208: tick_led(tick++);      
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	inc	r4
	cjne	r4,#0x00,00145$
	inc	r5
	cjne	r5,#0x00,00145$
	inc	r6
	cjne	r6,#0x00,00145$
	inc	r7
00145$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_tick_led
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../main.c:210: }
	ljmp	00111$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
