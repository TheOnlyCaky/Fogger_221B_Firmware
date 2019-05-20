;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module dmx
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_dmx_address
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
	.globl _Has_DMX
	.globl _DMX
	.globl _dmxReceiveByteISR
	.globl _dmxBreakDetectedISR
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DMX::
	.ds 11
_Has_DMX::
	.ds 1
_Index:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	../DMX_Manager/dmx.c:13: volatile uint8_t Has_DMX = 0;
	mov	_Has_DMX,#0x00
;	../DMX_Manager/dmx.c:14: static volatile uint16_t Index = 0;
	clr	a
	mov	_Index,a
	mov	(_Index + 1),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxReceiveByteISR'
;------------------------------------------------------------
;address                   Allocated to registers r6 r7 
;------------------------------------------------------------
;	../DMX_Manager/dmx.c:21: void dmxReceiveByteISR(void) __interrupt (4){
;	-----------------------------------------
;	 function dmxReceiveByteISR
;	-----------------------------------------
_dmxReceiveByteISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	../DMX_Manager/dmx.c:22: uint16_t address = get_dmx_address();
	lcall	_get_dmx_address
	mov	r6,dpl
	mov	r7,dph
;	../DMX_Manager/dmx.c:25: TH3 = BREAK_TIMER_RELOAD_HIGH;
	mov	_TH3,#0xfc
;	../DMX_Manager/dmx.c:26: TL3 = BREAK_TIMER_RELOAD_LOW;
	mov	_TL3,#0xd0
;	../DMX_Manager/dmx.c:27: Has_DMX = 0xFF;
	mov	_Has_DMX,#0xff
;	../DMX_Manager/dmx.c:29: Index++;
	mov	a,#0x01
	add	a,_Index
	mov	_Index,a
	clr	a
	addc	a,(_Index + 1)
	mov	(_Index + 1),a
;	../DMX_Manager/dmx.c:31: if(Index >= address && Index < address + MAX_CHANNEL_MODE){
	clr	c
	mov	a,_Index
	subb	a,r6
	mov	a,(_Index + 1)
	subb	a,r7
	jc	00102$
	mov	a,#0x0b
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	clr	c
	mov	a,_Index
	subb	a,r4
	mov	a,(_Index + 1)
	subb	a,r5
	jnc	00102$
;	../DMX_Manager/dmx.c:32: DMX[Index - address] = SBUF; //sbuf is the UART0 buffer reg
	mov	a,_Index
	mov	r5,a
	clr	c
	subb	a,r6
	add	a,#_DMX
	mov	r0,a
	mov	@r0,_SBUF
00102$:
;	../DMX_Manager/dmx.c:36: RI = 0;
;	assignBit
	clr	_RI
;	../DMX_Manager/dmx.c:37: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxBreakDetectedISR'
;------------------------------------------------------------
;	../DMX_Manager/dmx.c:40: void dmxBreakDetectedISR(void) __interrupt (8){
;	-----------------------------------------
;	 function dmxBreakDetectedISR
;	-----------------------------------------
_dmxBreakDetectedISR:
	push	acc
;	../DMX_Manager/dmx.c:44: if(!Index){
	mov	a,_Index
	orl	a,(_Index + 1)
;	../DMX_Manager/dmx.c:45: Has_DMX = 0x00;
;	../DMX_Manager/dmx.c:46: DMX[0] = 0x00;
;	../DMX_Manager/dmx.c:47: DMX[1] = 0x00;
;	../DMX_Manager/dmx.c:48: DMX[2] = 0x00;
	jnz	00102$
	mov	_Has_DMX,a
	mov	_DMX,a
	mov	(_DMX + 0x0001),a
	mov	(_DMX + 0x0002),a
;	../DMX_Manager/dmx.c:49: DMX[3] = 0x00;
	mov	(_DMX + 0x0003),#0x00
;	../DMX_Manager/dmx.c:50: DMX[4] = 0x00;
	mov	(_DMX + 0x0004),#0x00
;	../DMX_Manager/dmx.c:51: DMX[5] = 0x00;
	mov	(_DMX + 0x0005),#0x00
;	../DMX_Manager/dmx.c:52: DMX[6] = 0x00;
	mov	(_DMX + 0x0006),#0x00
;	../DMX_Manager/dmx.c:53: DMX[7] = 0x00;
	mov	(_DMX + 0x0007),#0x00
;	../DMX_Manager/dmx.c:54: DMX[8] = 0x00;
	mov	(_DMX + 0x0008),#0x00
00102$:
;	../DMX_Manager/dmx.c:57: Index = 0;
	clr	a
	mov	_Index,a
	mov	(_Index + 1),a
;	../DMX_Manager/dmx.c:60: EXIF &= ~EIE_Timer3_Flag;
	anl	_EXIF,#0xef
;	../DMX_Manager/dmx.c:61: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
