;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module wireless
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _power_pump
	.globl _set_runtime_data
	.globl _get_runtime_data
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
	.globl _wirelessBreakDetectISR
	.globl _tick_wireless
	.globl _handleUserConfigAction
	.globl _getWirelessAction
	.globl _detectDitDah
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
_Break_Count:
	.ds 1
_Current_Action:
	.ds 1
_tick_wireless_lastAction_65536_45:
	.ds 1
_handleUserConfigAction_changed_65536_53:
	.ds 2
_handleUserConfigAction_blue_65536_53:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;------------------------------------------------------------
;Allocation info for local variables in function 'tick_wireless'
;------------------------------------------------------------
;lastAction                Allocated with name '_tick_wireless_lastAction_65536_45'
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:58: static uint8_t lastAction = WIRELESS_ACTION_NA;
	mov	_tick_wireless_lastAction_65536_45,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'handleUserConfigAction'
;------------------------------------------------------------
;changed                   Allocated with name '_handleUserConfigAction_changed_65536_53'
;action                    Allocated to registers r7 
;changedBit                Allocated to registers r1 r2 
;off                       Allocated to registers r6 
;red                       Allocated to registers r5 
;green                     Allocated to registers r4 
;blue                      Allocated with name '_handleUserConfigAction_blue_65536_53'
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:106: static uint16_t changed = 0;    
	clr	a
	mov	_handleUserConfigAction_changed_65536_53,a
	mov	(_handleUserConfigAction_changed_65536_53 + 1),a
;	../Wireless_Manager/wireless.c:29: static volatile uint8_t Break_Count = 0;
	mov	_Break_Count,#0x00
;	../Wireless_Manager/wireless.c:30: static volatile uint8_t Current_Action = WIRELESS_ACTION_NA;
	mov	_Current_Action,#0x00
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
;Allocation info for local variables in function 'wirelessBreakDetectISR'
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:37: void wirelessBreakDetectISR() __interrupt (1){
;	-----------------------------------------
;	 function wirelessBreakDetectISR
;	-----------------------------------------
_wirelessBreakDetectISR:
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
;	../Wireless_Manager/wireless.c:40: if(!P3_7){
	jb	_P3_7,00104$
;	../Wireless_Manager/wireless.c:41: if(Break_Count++ > BREAK_COUNT){
	mov	r7,_Break_Count
	inc	_Break_Count
	mov	a,r7
	add	a,#0xff - 0x0f
	jnc	00105$
;	../Wireless_Manager/wireless.c:43: Current_Action = getWirelessAction();
	lcall	_getWirelessAction
	mov	_Current_Action,dpl
;	../Wireless_Manager/wireless.c:45: Break_Count = 0;
	mov	_Break_Count,#0x00
	sjmp	00105$
00104$:
;	../Wireless_Manager/wireless.c:48: Break_Count = 0;
	mov	_Break_Count,#0x00
00105$:
;	../Wireless_Manager/wireless.c:52: TH0 = COUNTER_HI;
	mov	_TH0,#0x84
;	../Wireless_Manager/wireless.c:53: TL0 = COUNTER_LO;
	mov	_TL0,#0x5f
;	../Wireless_Manager/wireless.c:55: }
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
;Allocation info for local variables in function 'tick_wireless'
;------------------------------------------------------------
;lastAction                Allocated with name '_tick_wireless_lastAction_65536_45'
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:57: void tick_wireless(){
;	-----------------------------------------
;	 function tick_wireless
;	-----------------------------------------
_tick_wireless:
;	../Wireless_Manager/wireless.c:60: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00102$
;	../Wireless_Manager/wireless.c:62: TCON &= ~TIMER_ON; 
	anl	_TCON,#0xef
;	../Wireless_Manager/wireless.c:63: return;
	ret
00102$:
;	../Wireless_Manager/wireless.c:67: TCON |= TIMER_ON; 
	mov	r6,_TCON
	orl	ar6,#0x10
	mov	_TCON,r6
;	../Wireless_Manager/wireless.c:69: switch (Current_Action)
	mov	a,_Current_Action
	mov	r7,a
	add	a,#0xff - 0x06
	jc	00115$
	mov	a,r7
	add	a,r7
;	../Wireless_Manager/wireless.c:71: case WIRELESS_ACTION_PLAY: //continual
	mov	dptr,#00151$
	jmp	@a+dptr
00151$:
	sjmp	00115$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
	sjmp	00109$
	sjmp	00112$
00103$:
;	../Wireless_Manager/wireless.c:72: set_playing(PLAY);
	mov	_Playing,#0x01
;	../Wireless_Manager/wireless.c:73: break;
;	../Wireless_Manager/wireless.c:74: case WIRELESS_ACTION_PAUSE: //continual
	sjmp	00115$
00104$:
;	../Wireless_Manager/wireless.c:75: set_playing(PAUSE);
	mov	_Playing,#0x00
;	../Wireless_Manager/wireless.c:76: break;
;	../Wireless_Manager/wireless.c:77: case WIRELESS_ACTION_BURST: //continual
	sjmp	00115$
00105$:
;	../Wireless_Manager/wireless.c:78: power_pump(PUMP_OVERRIDE);
	mov	dpl,#0x02
	lcall	_power_pump
;	../Wireless_Manager/wireless.c:79: break;
;	../Wireless_Manager/wireless.c:80: case WIRELESS_ACTION_USER_CONFIG_1: //press
	sjmp	00115$
00106$:
;	../Wireless_Manager/wireless.c:81: if(lastAction == WIRELESS_ACTION_NA){
	mov	a,_tick_wireless_lastAction_65536_45
	jnz	00115$
;	../Wireless_Manager/wireless.c:82: handleUserConfigAction(get_runtime_data(R4_INDEX));
	mov	dpl,#0x09
	lcall	_get_runtime_data
	lcall	_handleUserConfigAction
;	../Wireless_Manager/wireless.c:84: break;
;	../Wireless_Manager/wireless.c:85: case WIRELESS_ACTION_USER_CONFIG_2: //press
	sjmp	00115$
00109$:
;	../Wireless_Manager/wireless.c:86: if(lastAction == WIRELESS_ACTION_NA){
	mov	a,_tick_wireless_lastAction_65536_45
	jnz	00115$
;	../Wireless_Manager/wireless.c:87: handleUserConfigAction(get_runtime_data(R5_INDEX));
	mov	dpl,#0x0a
	lcall	_get_runtime_data
	lcall	_handleUserConfigAction
;	../Wireless_Manager/wireless.c:89: break;
;	../Wireless_Manager/wireless.c:90: case WIRELESS_ACTION_USER_CONFIG_3: //press
	sjmp	00115$
00112$:
;	../Wireless_Manager/wireless.c:91: if(lastAction == WIRELESS_ACTION_NA){
	mov	a,_tick_wireless_lastAction_65536_45
	jnz	00115$
;	../Wireless_Manager/wireless.c:92: handleUserConfigAction(get_runtime_data(R6_INDEX));
	mov	dpl,#0x0b
	lcall	_get_runtime_data
	lcall	_handleUserConfigAction
;	../Wireless_Manager/wireless.c:95: }
00115$:
;	../Wireless_Manager/wireless.c:97: if(lastAction == WIRELESS_ACTION_BURST && Current_Action != WIRELESS_ACTION_BURST){
	mov	a,#0x03
	cjne	a,_tick_wireless_lastAction_65536_45,00117$
	mov	a,#0x03
	cjne	a,_Current_Action,00157$
	sjmp	00117$
00157$:
;	../Wireless_Manager/wireless.c:98: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	lcall	_power_pump
00117$:
;	../Wireless_Manager/wireless.c:101: lastAction = Current_Action;
	mov	_tick_wireless_lastAction_65536_45,_Current_Action
;	../Wireless_Manager/wireless.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handleUserConfigAction'
;------------------------------------------------------------
;changed                   Allocated with name '_handleUserConfigAction_changed_65536_53'
;action                    Allocated to registers r7 
;changedBit                Allocated to registers r1 r2 
;off                       Allocated to registers r6 
;red                       Allocated to registers r5 
;green                     Allocated to registers r4 
;blue                      Allocated with name '_handleUserConfigAction_blue_65536_53'
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:105: void handleUserConfigAction(uint8_t action){
;	-----------------------------------------
;	 function handleUserConfigAction
;	-----------------------------------------
_handleUserConfigAction:
	mov	r7,dpl
;	../Wireless_Manager/wireless.c:108: uint8_t off = 0x00;
	mov	r6,#0x00
;	../Wireless_Manager/wireless.c:109: uint8_t red = 0, green = 0, blue = 0;
	mov	r5,#0x00
	mov	r4,#0x00
;	1-genFromRTrack replaced	mov	_handleUserConfigAction_blue_65536_53,#0x00
	mov	_handleUserConfigAction_blue_65536_53,r6
;	../Wireless_Manager/wireless.c:112: if(!action){ return; }
	mov	a,r7
	jnz	00102$
	ret
00102$:
;	../Wireless_Manager/wireless.c:115: changedBit = 1 << (action-1);
	mov	a,r7
	dec	a
	mov	r2,a
	mov	b,r2
	inc	b
	mov	r1,#0x01
	mov	r2,#0x00
	sjmp	00172$
00171$:
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
00172$:
	djnz	b,00171$
;	../Wireless_Manager/wireless.c:117: if(changed & changedBit){
	mov	a,r1
	anl	a,_handleUserConfigAction_changed_65536_53
	mov	r0,a
	mov	a,r2
	anl	a,(_handleUserConfigAction_changed_65536_53 + 1)
	mov	r3,a
	orl	a,r0
	jz	00104$
;	../Wireless_Manager/wireless.c:118: off = 0xFF;
	mov	r6,#0xff
;	../Wireless_Manager/wireless.c:119: changed &= ~changedBit;
	mov	a,r1
	cpl	a
	mov	r0,a
	mov	a,r2
	cpl	a
	mov	r3,a
	mov	a,r0
	anl	_handleUserConfigAction_changed_65536_53,a
	mov	a,r3
	anl	(_handleUserConfigAction_changed_65536_53 + 1),a
	sjmp	00105$
00104$:
;	../Wireless_Manager/wireless.c:121: changed |= changedBit;
	mov	a,r1
	orl	_handleUserConfigAction_changed_65536_53,a
	mov	a,r2
	orl	(_handleUserConfigAction_changed_65536_53 + 1),a
00105$:
;	../Wireless_Manager/wireless.c:125: switch (action)
	mov	a,r7
	add	a,#0xff - 0x0c
	jnc	00174$
	ljmp	00118$
00174$:
	mov	a,r7
	add	a,#(00175$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00176$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00175$:
	.db	00118$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
00176$:
	.db	00118$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
;	../Wireless_Manager/wireless.c:127: case OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
00106$:
;	../Wireless_Manager/wireless.c:128: set_runtime_data(MACRO_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x03
;	../Wireless_Manager/wireless.c:129: return;
	ljmp	_set_runtime_data
;	../Wireless_Manager/wireless.c:130: case OPTION_WIRELESS_ACTION_RED:
00107$:
;	../Wireless_Manager/wireless.c:131: red = WIRELESS_VALUE_FULL;
	mov	r5,#0xff
;	../Wireless_Manager/wireless.c:132: break;
	ljmp	00119$
;	../Wireless_Manager/wireless.c:133: case OPTION_WIRELESS_ACTION_YELLOW:
00108$:
;	../Wireless_Manager/wireless.c:134: red = WIRELESS_VALUE_FULL;
	mov	r5,#0xff
;	../Wireless_Manager/wireless.c:135: green = WIRELESS_VALUE_FULL;
	mov	r4,#0xff
;	../Wireless_Manager/wireless.c:136: break;
	ljmp	00119$
;	../Wireless_Manager/wireless.c:137: case OPTION_WIRELESS_ACTION_GREEN:
00109$:
;	../Wireless_Manager/wireless.c:138: green = WIRELESS_VALUE_FULL;
	mov	r4,#0xff
;	../Wireless_Manager/wireless.c:139: break;
;	../Wireless_Manager/wireless.c:140: case OPTION_WIRELESS_ACTION_CYAN:
	sjmp	00119$
00110$:
;	../Wireless_Manager/wireless.c:141: green = WIRELESS_VALUE_FULL;
	mov	r4,#0xff
;	../Wireless_Manager/wireless.c:142: blue = WIRELESS_VALUE_FULL;
;	1-genFromRTrack replaced	mov	_handleUserConfigAction_blue_65536_53,#0xff
	mov	_handleUserConfigAction_blue_65536_53,r4
;	../Wireless_Manager/wireless.c:143: break;
;	../Wireless_Manager/wireless.c:144: case OPTION_WIRELESS_ACTION_BLUE:
	sjmp	00119$
00111$:
;	../Wireless_Manager/wireless.c:145: blue = WIRELESS_VALUE_FULL;
	mov	_handleUserConfigAction_blue_65536_53,#0xff
;	../Wireless_Manager/wireless.c:146: break;
;	../Wireless_Manager/wireless.c:147: case OPTION_WIRELESS_ACTION_MAGENTA:
	sjmp	00119$
00112$:
;	../Wireless_Manager/wireless.c:148: blue = WIRELESS_VALUE_FULL;
	mov	_handleUserConfigAction_blue_65536_53,#0xff
;	../Wireless_Manager/wireless.c:149: red = WIRELESS_VALUE_FULL;
	mov	r5,#0xff
;	../Wireless_Manager/wireless.c:150: break;
;	../Wireless_Manager/wireless.c:151: case OPTION_WIRELESS_ACTION_STROBE_SLOW:
	sjmp	00119$
00113$:
;	../Wireless_Manager/wireless.c:152: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_SLOW);
	mov	a,r6
	jz	00122$
	mov	r3,#0x00
	mov	r7,#0x00
	sjmp	00123$
00122$:
	mov	r3,#0x01
	mov	r7,#0x00
00123$:
	mov	_set_runtime_data_PARM_3,r3
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x08
;	../Wireless_Manager/wireless.c:153: return;
	ljmp	_set_runtime_data
;	../Wireless_Manager/wireless.c:154: case OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
00114$:
;	../Wireless_Manager/wireless.c:155: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_MEDIUM);
	mov	a,r6
	jz	00124$
	mov	r3,#0x00
	mov	r7,#0x00
	sjmp	00125$
00124$:
	mov	r3,#0x79
	mov	r7,#0x00
00125$:
	mov	_set_runtime_data_PARM_3,r3
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x08
;	../Wireless_Manager/wireless.c:156: return;
	ljmp	_set_runtime_data
;	../Wireless_Manager/wireless.c:157: case OPTION_WIRELESS_ACTION_STROBE_FAST:
00115$:
;	../Wireless_Manager/wireless.c:158: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_FAST);
	mov	a,r6
	jz	00126$
	mov	r3,#0x00
	mov	r7,#0x00
	sjmp	00127$
00126$:
	mov	r3,#0xff
	mov	r7,#0x00
00127$:
	mov	_set_runtime_data_PARM_3,r3
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x08
;	../Wireless_Manager/wireless.c:159: return;
	ljmp	_set_runtime_data
;	../Wireless_Manager/wireless.c:160: case OPTION_WIRELESS_ACTION_BLACKOUT:
00116$:
;	../Wireless_Manager/wireless.c:161: off = 0xFF;
	mov	r6,#0xff
;	../Wireless_Manager/wireless.c:162: break;
;	../Wireless_Manager/wireless.c:163: case OPTION_WIRELESS_ACTION_WHITEOUT:
	sjmp	00119$
00117$:
;	../Wireless_Manager/wireless.c:164: red = WIRELESS_VALUE_FULL;
	mov	r5,#0xff
;	../Wireless_Manager/wireless.c:165: green = WIRELESS_VALUE_FULL;
	mov	r4,#0xff
;	../Wireless_Manager/wireless.c:166: blue = WIRELESS_VALUE_FULL;
;	1-genFromRTrack replaced	mov	_handleUserConfigAction_blue_65536_53,#0xff
	mov	_handleUserConfigAction_blue_65536_53,r5
;	../Wireless_Manager/wireless.c:167: break;
;	../Wireless_Manager/wireless.c:168: default:
	sjmp	00119$
00118$:
;	../Wireless_Manager/wireless.c:169: return;
;	../Wireless_Manager/wireless.c:170: }
	ret
00119$:
;	../Wireless_Manager/wireless.c:172: set_runtime_data(MACRO_INDEX, VALUE, WIRELESS_VALUE_0);
	mov	_set_runtime_data_PARM_2,#0x00
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x03
	push	ar6
	push	ar5
	push	ar4
	lcall	_set_runtime_data
	pop	ar4
	pop	ar5
	pop	ar6
;	../Wireless_Manager/wireless.c:173: set_runtime_data(RED_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : red);
	mov	a,r6
	jz	00128$
	mov	r3,#0x00
	mov	r7,#0x00
	sjmp	00129$
00128$:
	mov	ar3,r5
	mov	r7,#0x00
00129$:
	mov	_set_runtime_data_PARM_3,r3
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x05
	push	ar6
	push	ar4
	lcall	_set_runtime_data
	pop	ar4
	pop	ar6
;	../Wireless_Manager/wireless.c:174: set_runtime_data(GREEN_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : green);
	mov	a,r6
	jz	00130$
	mov	r5,#0x00
	mov	r7,#0x00
	sjmp	00131$
00130$:
	mov	ar5,r4
	mov	r7,#0x00
00131$:
	mov	_set_runtime_data_PARM_3,r5
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x06
	push	ar6
	lcall	_set_runtime_data
	pop	ar6
;	../Wireless_Manager/wireless.c:175: set_runtime_data(BLUE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : blue);
	mov	a,r6
	jz	00132$
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00133$
00132$:
	mov	r6,_handleUserConfigAction_blue_65536_53
	mov	r7,#0x00
00133$:
	mov	_set_runtime_data_PARM_3,r6
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x07
;	../Wireless_Manager/wireless.c:177: }
	ljmp	_set_runtime_data
;------------------------------------------------------------
;Allocation info for local variables in function 'getWirelessAction'
;------------------------------------------------------------
;preamble                  Allocated to registers 
;count                     Allocated to registers r5 
;i                         Allocated to registers r7 
;dit_dah                   Allocated to registers r6 
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:179: uint8_t getWirelessAction(){
;	-----------------------------------------
;	 function getWirelessAction
;	-----------------------------------------
_getWirelessAction:
;	../Wireless_Manager/wireless.c:185: for(i = 0; i < PREAMBLE_BITS; i++){
	mov	r7,#0x00
00119$:
;	../Wireless_Manager/wireless.c:186: dit_dah = detectDitDah();
	push	ar7
	lcall	_detectDitDah
	mov	r6,dpl
	pop	ar7
;	../Wireless_Manager/wireless.c:188: if(dit_dah == BAD_WIRELESS){
	mov	a,r6
	jnz	00102$
;	../Wireless_Manager/wireless.c:189: return dit_dah;
	mov	dpl,r6
	ret
00102$:
;	../Wireless_Manager/wireless.c:192: if(preamble & (0x0001 << i)){ //expects a Dit
	mov	b,r7
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00169$
00168$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00169$:
	djnz	b,00168$
	mov	a,r4
	anl	a,#0x57
	jnz	00170$
	mov	a,r5
	anl	a,#0x05
	jz	00108$
00170$:
;	../Wireless_Manager/wireless.c:193: if(dit_dah != DIT){
	cjne	r6,#0x01,00171$
	sjmp	00120$
00171$:
;	../Wireless_Manager/wireless.c:194: return BAD_WIRELESS;
	mov	dpl,#0x00
	ret
00108$:
;	../Wireless_Manager/wireless.c:197: if(dit_dah != DAH){
	cjne	r6,#0x02,00172$
	sjmp	00120$
00172$:
;	../Wireless_Manager/wireless.c:198: return BAD_WIRELESS;
	mov	dpl,#0x00
	ret
00120$:
;	../Wireless_Manager/wireless.c:185: for(i = 0; i < PREAMBLE_BITS; i++){
	inc	r7
	cjne	r7,#0x0c,00173$
00173$:
	jc	00119$
;	../Wireless_Manager/wireless.c:204: while(count--){
	mov	r7,#0x0d
00116$:
	mov	ar6,r7
	dec	r7
	mov	ar5,r7
	mov	a,r6
	jz	00118$
;	../Wireless_Manager/wireless.c:205: dit_dah = detectDitDah();
	push	ar7
	push	ar5
	lcall	_detectDitDah
	mov	r6,dpl
	pop	ar5
	pop	ar7
;	../Wireless_Manager/wireless.c:207: if(!dit_dah){
	mov	a,r6
;	../Wireless_Manager/wireless.c:208: return BAD_WIRELESS;
	jnz	00114$
	mov	dpl,a
	ret
00114$:
;	../Wireless_Manager/wireless.c:209: } else if(dit_dah == DAH){
	cjne	r6,#0x02,00116$
;	../Wireless_Manager/wireless.c:210: break;
00118$:
;	../Wireless_Manager/wireless.c:216: return count >> 1;
	mov	a,r5
	clr	c
	rrc	a
	mov	dpl,a
;	../Wireless_Manager/wireless.c:217: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'detectDitDah'
;------------------------------------------------------------
;count                     Allocated to registers r6 r7 
;timeout                   Allocated to registers r6 r7 
;------------------------------------------------------------
;	../Wireless_Manager/wireless.c:219: uint8_t detectDitDah(){
;	-----------------------------------------
;	 function detectDitDah
;	-----------------------------------------
_detectDitDah:
;	../Wireless_Manager/wireless.c:224: while(timeout--){
	mov	r6,#0xb8
	mov	r7,#0x0b
00103$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00154$
	dec	r7
00154$:
	mov	a,r4
	orl	a,r5
	jz	00105$
;	../Wireless_Manager/wireless.c:225: if(P3_7){
	jnb	_P3_7,00103$
;	../Wireless_Manager/wireless.c:226: break;
00105$:
;	../Wireless_Manager/wireless.c:231: if(!timeout){
	mov	a,r6
	orl	a,r7
;	../Wireless_Manager/wireless.c:232: return BAD_WIRELESS;
	jnz	00125$
	mov	dpl,a
;	../Wireless_Manager/wireless.c:239: while(timeout--){
	ret
00125$:
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0xb8
	mov	r5,#0x0b
00111$:
	mov	ar2,r4
	mov	ar3,r5
	dec	r4
	cjne	r4,#0xff,00158$
	dec	r5
00158$:
	mov	a,r2
	orl	a,r3
	jz	00113$
;	../Wireless_Manager/wireless.c:240: if(P3_7){
	jnb	_P3_7,00113$
;	../Wireless_Manager/wireless.c:241: count++;
	inc	r6
;	../Wireless_Manager/wireless.c:243: break;
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	../Wireless_Manager/wireless.c:248: if(!timeout){
	mov	a,r4
	orl	a,r5
;	../Wireless_Manager/wireless.c:249: return BAD_WIRELESS;
	jnz	00115$
	mov	dpl,a
	ret
00115$:
;	../Wireless_Manager/wireless.c:255: return (count > DAH_COUNT) ? DAH : DIT;
	clr	c
	mov	a,#0xe9
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00118$
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00119$
00118$:
	mov	r6,#0x01
	mov	r7,#0x00
00119$:
	mov	dpl,r6
;	../Wireless_Manager/wireless.c:256: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
