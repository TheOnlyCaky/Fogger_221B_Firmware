;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module led
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _play_macro_PARM_3
	.globl _play_macro_PARM_2
	.globl _tick_led
	.globl _dmx_to_macro
	.globl _play_macro
	.globl _color_wheel
	.globl _whiteout
	.globl _blackout
	.globl _rngU32
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
_tick_led_on_65536_16:
	.ds 1
_tick_led_sloc0_1_0:
	.ds 4
_play_macro_tock_65536_50:
	.ds 1
_play_macro_primaryCount_65536_50:
	.ds 1
_play_macro_secondaryCount_65536_50:
	.ds 1
_play_macro_direction_65536_50:
	.ds 1
_play_macro_PARM_2:
	.ds 1
_play_macro_PARM_3:
	.ds 1
_play_macro_tick_65536_49:
	.ds 4
_play_macro_rng_65536_50:
	.ds 4
_play_macro_changed_65536_50:
	.ds 1
_rngU32_past_65536_101:
	.ds 4
_rngU32_present_65536_101:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'tick_led'
;------------------------------------------------------------
;on                        Allocated with name '_tick_led_on_65536_16'
;tick                      Allocated to registers r4 r5 r6 r7 
;value                     Allocated to registers r3 
;strobe                    Allocated to registers r3 
;sloc0                     Allocated with name '_tick_led_sloc0_1_0'
;------------------------------------------------------------
;	../LED_Manager/led.c:22: static uint8_t on = 0;
	mov	_tick_led_on_65536_16,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'play_macro'
;------------------------------------------------------------
;tock                      Allocated with name '_play_macro_tock_65536_50'
;primaryCount              Allocated with name '_play_macro_primaryCount_65536_50'
;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_50'
;direction                 Allocated with name '_play_macro_direction_65536_50'
;macro                     Allocated with name '_play_macro_PARM_2'
;macro_speed               Allocated with name '_play_macro_PARM_3'
;tick                      Allocated with name '_play_macro_tick_65536_49'
;rng                       Allocated with name '_play_macro_rng_65536_50'
;changed                   Allocated with name '_play_macro_changed_65536_50'
;------------------------------------------------------------
;	../LED_Manager/led.c:123: static uint8_t tock = 0;
	mov	_play_macro_tock_65536_50,#0x00
;	../LED_Manager/led.c:124: static uint8_t primaryCount = 0;
	mov	_play_macro_primaryCount_65536_50,#0x00
;	../LED_Manager/led.c:125: static uint8_t secondaryCount = 0;
	mov	_play_macro_secondaryCount_65536_50,#0x00
;	../LED_Manager/led.c:126: static uint8_t direction = 0;
	mov	_play_macro_direction_65536_50,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'rngU32'
;------------------------------------------------------------
;past                      Allocated with name '_rngU32_past_65536_101'
;present                   Allocated with name '_rngU32_present_65536_101'
;------------------------------------------------------------
;	../LED_Manager/led.c:321: static uint32_t past = 1;
	mov	_rngU32_past_65536_101,#0x01
	clr	a
	mov	(_rngU32_past_65536_101 + 1),a
	mov	(_rngU32_past_65536_101 + 2),a
	mov	(_rngU32_past_65536_101 + 3),a
;	../LED_Manager/led.c:322: static uint32_t present = 1;
	mov	_rngU32_present_65536_101,#0x01
	mov	(_rngU32_present_65536_101 + 1),a
	mov	(_rngU32_present_65536_101 + 2),a
	mov	(_rngU32_present_65536_101 + 3),a
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
;Allocation info for local variables in function 'tick_led'
;------------------------------------------------------------
;on                        Allocated with name '_tick_led_on_65536_16'
;tick                      Allocated to registers r4 r5 r6 r7 
;value                     Allocated to registers r3 
;strobe                    Allocated to registers r3 
;sloc0                     Allocated with name '_tick_led_sloc0_1_0'
;------------------------------------------------------------
;	../LED_Manager/led.c:21: void tick_led(uint32_t tick){
;	-----------------------------------------
;	 function tick_led
;	-----------------------------------------
_tick_led:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../LED_Manager/led.c:26: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00211$
	ljmp	00137$
00211$:
;	../LED_Manager/led.c:27: switch(get_runtime_data(MODE_INDEX)){
	mov	dpl,#0x0e
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_runtime_data
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x00,00212$
	sjmp	00101$
00212$:
	cjne	r3,#0x01,00213$
	ljmp	00116$
00213$:
	ljmp	_blackout
;	../LED_Manager/led.c:28: case OPTION_DMX_MODE_9:
00101$:
;	../LED_Manager/led.c:29: value = get_dmx_value(DMX_M9_MACRO_INDEX);
	mov	r3,(_DMX + 0x0007)
;	../LED_Manager/led.c:31: if(value >= DMX_MACRO_NONE){
	cjne	r3,#0x14,00214$
00214$:
	jc	00114$
;	../LED_Manager/led.c:32: if(value < DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
	cjne	r3,#0x94,00216$
00216$:
	jnc	00103$
;	../LED_Manager/led.c:33: color_wheel((value - DMX_MACRO_NONE) << 1);
	mov	ar2,r3
	mov	a,r2
	add	a,#0xec
	add	a,acc
	mov	dpl,a
	ljmp	_color_wheel
00103$:
;	../LED_Manager/led.c:35: play_macro(tick, dmx_to_macro(value), get_dmx_value(DMX_M9_MACRO_SPEED_INDEX));
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dmx_to_macro
	mov	_play_macro_PARM_2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_play_macro_PARM_3,(_DMX + 0x0008)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ljmp	_play_macro
00114$:
;	../LED_Manager/led.c:39: strobe = get_dmx_value(DMX_M9_STROBE_INDEX);
;	../LED_Manager/led.c:41: if(strobe){
	mov	a,(_DMX + 0x0006)
	mov	r3,a
	jz	00108$
;	../LED_Manager/led.c:42: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
	mov	r2,#0x00
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,#0x1c
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,#0x02
	subb	a,r2
	mov	__modulong_PARM_2,r3
	mov	(__modulong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	_tick_led_sloc0_1_0,dpl
	mov	(_tick_led_sloc0_1_0 + 1),dph
	mov	(_tick_led_sloc0_1_0 + 2),b
	mov	(_tick_led_sloc0_1_0 + 3),a
	mov	a,_tick_led_sloc0_1_0
	orl	a,(_tick_led_sloc0_1_0 + 1)
	orl	a,(_tick_led_sloc0_1_0 + 2)
	orl	a,(_tick_led_sloc0_1_0 + 3)
	jnz	00109$
;	../LED_Manager/led.c:43: on = ~on;
	mov	a,_tick_led_on_65536_16
	cpl	a
	mov	_tick_led_on_65536_16,a
	sjmp	00109$
00108$:
;	../LED_Manager/led.c:46: on = 0xFF;
	mov	_tick_led_on_65536_16,#0xff
00109$:
;	../LED_Manager/led.c:49: if(on){
	mov	a,_tick_led_on_65536_16
	jz	00111$
;	../LED_Manager/led.c:50: PWMDATA11H = get_dmx_value(DMX_M9_RED_INDEX);
	mov	_PWMDATA11H,(_DMX + 0x0003)
;	../LED_Manager/led.c:51: PWMDATA17H = get_dmx_value(DMX_M9_GREEN_INDEX);
	mov	_PWMDATA17H,(_DMX + 0x0004)
;	../LED_Manager/led.c:52: PWMDATA14H = get_dmx_value(DMX_M9_BLUE_INDEX);
	mov	_PWMDATA14H,(_DMX + 0x0005)
	ret
00111$:
;	../LED_Manager/led.c:54: blackout();
;	../LED_Manager/led.c:58: break;
	ljmp	_blackout
;	../LED_Manager/led.c:59: case OPTION_DMX_MODE_3: /* Only macros */
00116$:
;	../LED_Manager/led.c:60: value = get_dmx_value(DMX_M3_MACRO_INDEX);
	mov	r3,(_DMX + 0x0001)
;	../LED_Manager/led.c:61: if(value >= DMX_MACRO_NONE){
	cjne	r3,#0x14,00221$
00221$:
	jc	00121$
;	../LED_Manager/led.c:62: if(value < DMX_MACRO_COLOR_WHEEL){
	cjne	r3,#0x94,00223$
00223$:
	jnc	00118$
;	../LED_Manager/led.c:63: color_wheel((value - DMX_MACRO_NONE) << 1);
	mov	ar2,r3
	mov	a,r2
	add	a,#0xec
	add	a,acc
	mov	dpl,a
	ljmp	_color_wheel
00118$:
;	../LED_Manager/led.c:65: play_macro(tick, dmx_to_macro(value), get_dmx_value(DMX_M3_MACRO_SPEED_INDEX));
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dmx_to_macro
	mov	_play_macro_PARM_2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_play_macro_PARM_3,(_DMX + 0x0002)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ljmp	_play_macro
00121$:
;	../LED_Manager/led.c:68: blackout();
;	../LED_Manager/led.c:70: break;
;	../LED_Manager/led.c:71: default:
;	../LED_Manager/led.c:72: blackout();
;	../LED_Manager/led.c:74: }
	ljmp	_blackout
00137$:
;	../LED_Manager/led.c:76: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
	mov	dpl,#0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00134$
;	../LED_Manager/led.c:77: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
	mov	dpl,#0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_runtime_data
	mov	r3,dpl
	mov	dpl,#0x04
	push	ar3
	lcall	_get_runtime_data
	mov	_play_macro_PARM_3,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_play_macro_PARM_2,r3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ljmp	_play_macro
00134$:
;	../LED_Manager/led.c:80: strobe = get_runtime_data(STROBE_INDEX);
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_runtime_data
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../LED_Manager/led.c:82: if(strobe){
	mov	a,r3
	jz	00128$
;	../LED_Manager/led.c:83: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
	mov	r2,#0x00
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,#0x1c
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,#0x02
	subb	a,r2
	mov	__modulong_PARM_2,r3
	mov	(__modulong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00129$
;	../LED_Manager/led.c:84: on = ~on;
	mov	a,_tick_led_on_65536_16
	cpl	a
	mov	_tick_led_on_65536_16,a
	sjmp	00129$
00128$:
;	../LED_Manager/led.c:87: on = 0xFF;
	mov	_tick_led_on_65536_16,#0xff
00129$:
;	../LED_Manager/led.c:90: if(on){
	mov	a,_tick_led_on_65536_16
	jz	00131$
;	../LED_Manager/led.c:91: PWMDATA11H = get_runtime_data(RED_INDEX);
	mov	dpl,#0x05
	lcall	_get_runtime_data
	mov	_PWMDATA11H,dpl
;	../LED_Manager/led.c:92: PWMDATA17H = get_runtime_data(GREEN_INDEX);
	mov	dpl,#0x06
	lcall	_get_runtime_data
	mov	_PWMDATA17H,dpl
;	../LED_Manager/led.c:93: PWMDATA14H = get_runtime_data(BLUE_INDEX);
	mov	dpl,#0x07
	lcall	_get_runtime_data
	mov	_PWMDATA14H,dpl
	ret
00131$:
;	../LED_Manager/led.c:95: blackout();
;	../LED_Manager/led.c:99: }
	ljmp	_blackout
;------------------------------------------------------------
;Allocation info for local variables in function 'dmx_to_macro'
;------------------------------------------------------------
;dmx_value                 Allocated to registers r7 
;------------------------------------------------------------
;	../LED_Manager/led.c:101: uint8_t dmx_to_macro(uint8_t dmx_value){
;	-----------------------------------------
;	 function dmx_to_macro
;	-----------------------------------------
_dmx_to_macro:
	mov	r7,dpl
;	../LED_Manager/led.c:103: if(dmx_value < DMX_MACRO_WHITE){
	cjne	r7,#0xb4,00151$
00151$:
	jnc	00119$
;	../LED_Manager/led.c:104: return OPTION_MACRO_WHITE;
	mov	dpl,#0x21
	ret
00119$:
;	../LED_Manager/led.c:105: } else if(dmx_value < DMX_MACRO_RAINBOW){
	cjne	r7,#0xbe,00153$
00153$:
	jnc	00116$
;	../LED_Manager/led.c:106: return OPTION_MACRO_RAINBOW_DMX;
	mov	dpl,#0x01
	ret
00116$:
;	../LED_Manager/led.c:107: } else if(dmx_value < DMX_MACRO_FIRE){
	cjne	r7,#0xc8,00155$
00155$:
	jnc	00113$
;	../LED_Manager/led.c:108: return OPTION_MACRO_FIRE_DMX;
	mov	dpl,#0x02
	ret
00113$:
;	../LED_Manager/led.c:109: } else if(dmx_value < DMX_MACRO_WATER){
	cjne	r7,#0xd2,00157$
00157$:
	jnc	00110$
;	../LED_Manager/led.c:110: return OPTION_MACRO_WATER_DMX;
	mov	dpl,#0x03
	ret
00110$:
;	../LED_Manager/led.c:111: } else if(dmx_value < DMX_MACRO_ACID){
	cjne	r7,#0xdc,00159$
00159$:
	jnc	00107$
;	../LED_Manager/led.c:112: return OPTION_MACRO_ACID_DMX;
	mov	dpl,#0x04
	ret
00107$:
;	../LED_Manager/led.c:113: } else if(dmx_value < DMX_MACRO_ETHER){
	cjne	r7,#0xe6,00161$
00161$:
	jnc	00104$
;	../LED_Manager/led.c:114: return OPTION_MACRO_ETHER_DMX;
	mov	dpl,#0x05
	ret
00104$:
;	../LED_Manager/led.c:115: } else if(dmx_value < DMX_MACRO_STORM){
	cjne	r7,#0xf0,00163$
00163$:
	jnc	00108$
;	../LED_Manager/led.c:116: return OPTION_MACRO_STORM_DMX;
	mov	dpl,#0x06
	ret
00108$:
;	../LED_Manager/led.c:119: return 69; // ;)
	mov	dpl,#0x45
;	../LED_Manager/led.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'play_macro'
;------------------------------------------------------------
;tock                      Allocated with name '_play_macro_tock_65536_50'
;primaryCount              Allocated with name '_play_macro_primaryCount_65536_50'
;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_50'
;direction                 Allocated with name '_play_macro_direction_65536_50'
;macro                     Allocated with name '_play_macro_PARM_2'
;macro_speed               Allocated with name '_play_macro_PARM_3'
;tick                      Allocated with name '_play_macro_tick_65536_49'
;rng                       Allocated with name '_play_macro_rng_65536_50'
;changed                   Allocated with name '_play_macro_changed_65536_50'
;------------------------------------------------------------
;	../LED_Manager/led.c:122: void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
;	-----------------------------------------
;	 function play_macro
;	-----------------------------------------
_play_macro:
	mov	_play_macro_tick_65536_49,dpl
	mov	(_play_macro_tick_65536_49 + 1),dph
	mov	(_play_macro_tick_65536_49 + 2),b
	mov	(_play_macro_tick_65536_49 + 3),a
;	../LED_Manager/led.c:127: uint32_t rng = 0;
	clr	a
	mov	_play_macro_rng_65536_50,a
	mov	(_play_macro_rng_65536_50 + 1),a
	mov	(_play_macro_rng_65536_50 + 2),a
	mov	(_play_macro_rng_65536_50 + 3),a
;	../LED_Manager/led.c:128: uint8_t changed = 0;
;	1-genFromRTrack replaced	mov	_play_macro_changed_65536_50,#0x00
	mov	_play_macro_changed_65536_50,a
;	../LED_Manager/led.c:132: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
	mov	a,_play_macro_PARM_3
	clr	c
	rrc	a
	mov	r6,a
	mov	r5,#0x00
	mov	a,#0x85
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	__modulong_PARM_2,r6
	mov	a,r5
	mov	(__modulong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_play_macro_tick_65536_49
	mov	dph,(_play_macro_tick_65536_49 + 1)
	mov	b,(_play_macro_tick_65536_49 + 2)
	mov	a,(_play_macro_tick_65536_49 + 3)
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00102$
;	../LED_Manager/led.c:133: changed = 0xFF;
	mov	_play_macro_changed_65536_50,#0xff
;	../LED_Manager/led.c:134: rng = rngU32(); /* TODO check back */
	lcall	_rngU32
	mov	_play_macro_rng_65536_50,dpl
	mov	(_play_macro_rng_65536_50 + 1),dph
	mov	(_play_macro_rng_65536_50 + 2),b
	mov	(_play_macro_rng_65536_50 + 3),a
;	../LED_Manager/led.c:135: tock++;
	inc	_play_macro_tock_65536_50
00102$:
;	../LED_Manager/led.c:138: switch (macro)
	mov	a,#0x01
	cjne	a,_play_macro_PARM_2,00344$
	sjmp	00103$
00344$:
	mov	a,#0x02
	cjne	a,_play_macro_PARM_2,00345$
	sjmp	00104$
00345$:
	mov	a,#0x03
	cjne	a,_play_macro_PARM_2,00346$
	mov	a,#0x01
	sjmp	00347$
00346$:
	clr	a
00347$:
	mov	r7,a
	jz	00348$
	ljmp	00120$
00348$:
	mov	a,#0x04
	cjne	a,_play_macro_PARM_2,00349$
	ljmp	00120$
00349$:
	mov	a,#0x05
	cjne	a,_play_macro_PARM_2,00350$
	ljmp	00120$
00350$:
	mov	a,#0x06
	cjne	a,_play_macro_PARM_2,00351$
	ljmp	00151$
00351$:
	mov	a,#0x21
	cjne	a,_play_macro_PARM_2,00352$
	ljmp	00165$
00352$:
	mov	a,#0x45
	cjne	a,_play_macro_PARM_2,00353$
	ljmp	00166$
00353$:
	ljmp	00185$
;	../LED_Manager/led.c:140: case OPTION_MACRO_RAINBOW_DMX: //rainbow
00103$:
;	../LED_Manager/led.c:141: color_wheel(tock);
	mov	dpl,_play_macro_tock_65536_50
;	../LED_Manager/led.c:142: break;
	ljmp	_color_wheel
;	../LED_Manager/led.c:143: case OPTION_MACRO_FIRE_DMX: //fire
00104$:
;	../LED_Manager/led.c:144: if(changed) { 
	mov	a,_play_macro_changed_65536_50
	jnz	00354$
	ret
00354$:
;	../LED_Manager/led.c:146: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
	mov	a,#0x100 - 0x37
	add	a,_play_macro_primaryCount_65536_50
	jc	00106$
	mov	_play_macro_primaryCount_65536_50,#0x37
	mov	r5,_play_macro_direction_65536_50
	mov	r6,#0x00
	orl	ar5,#0x01
	mov	_play_macro_direction_65536_50,r5
00106$:
;	../LED_Manager/led.c:147: if(direction & 0x01){
	mov	a,_play_macro_direction_65536_50
	jnb	acc.0,00114$
;	../LED_Manager/led.c:148: if(primaryCount == 255){
	mov	a,#0xff
	cjne	a,_play_macro_primaryCount_65536_50,00108$
;	../LED_Manager/led.c:149: direction &= ~0x01;
	anl	_play_macro_direction_65536_50,#0xfe
	sjmp	00115$
00108$:
;	../LED_Manager/led.c:151: primaryCount++;
	inc	_play_macro_primaryCount_65536_50
	sjmp	00115$
00114$:
;	../LED_Manager/led.c:154: if(primaryCount - 1 == 55){
	mov	r5,_play_macro_primaryCount_65536_50
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xff,00359$
	dec	r6
00359$:
	cjne	r5,#0x37,00111$
	cjne	r6,#0x00,00111$
;	../LED_Manager/led.c:155: direction |= 0x01;
	mov	r5,_play_macro_direction_65536_50
	mov	r6,#0x00
	orl	ar5,#0x01
	mov	_play_macro_direction_65536_50,r5
	sjmp	00115$
00111$:
;	../LED_Manager/led.c:157: primaryCount--;
	dec	_play_macro_primaryCount_65536_50
00115$:
;	../LED_Manager/led.c:161: PWMDATA11H = primaryCount;
;	../LED_Manager/led.c:162: PWMDATA17H = (uint8_t) (rng % (primaryCount >> 2));
	mov	a,_play_macro_primaryCount_65536_50
	mov	_PWMDATA11H,a
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	__modulong_PARM_2,r6
	mov	(__modulong_PARM_2 + 1),#0x00
	mov	(__modulong_PARM_2 + 2),#0x00
	mov	(__modulong_PARM_2 + 3),#0x00
	mov	dpl,_play_macro_rng_65536_50
	mov	dph,(_play_macro_rng_65536_50 + 1)
	mov	b,(_play_macro_rng_65536_50 + 2)
	mov	a,(_play_macro_rng_65536_50 + 3)
	lcall	__modulong
	mov	r3,dpl
	mov	_PWMDATA17H,r3
;	../LED_Manager/led.c:163: PWMDATA14H = (!(rng % 13)) ? PWMDATA17H > 1 : 0;
	mov	__modulong_PARM_2,#0x0d
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_play_macro_rng_65536_50
	mov	dph,(_play_macro_rng_65536_50 + 1)
	mov	b,(_play_macro_rng_65536_50 + 2)
	mov	a,(_play_macro_rng_65536_50 + 3)
	lcall	__modulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00189$
	clr	c
	mov	a,#0x01
	subb	a,_PWMDATA17H
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	sjmp	00190$
00189$:
	mov	r5,#0x00
	mov	r6,#0x00
00190$:
	mov	_PWMDATA14H,r5
;	../LED_Manager/led.c:166: break;
	ret
;	../LED_Manager/led.c:169: case OPTION_MACRO_ETHER_DMX:
00120$:
;	../LED_Manager/led.c:171: if(changed){
	mov	a,_play_macro_changed_65536_50
	jnz	00363$
	ret
00363$:
;	../LED_Manager/led.c:173: if(direction & 0x01){
	mov	a,_play_macro_direction_65536_50
	jnb	acc.0,00126$
;	../LED_Manager/led.c:174: primaryCount +=2;
	mov	r6,_play_macro_primaryCount_65536_50
	mov	a,#0x02
	add	a,r6
;	../LED_Manager/led.c:176: if(primaryCount < 75){
	mov	_play_macro_primaryCount_65536_50,a
	clr	c
	subb	a,#0x4b
	jnc	00127$
;	../LED_Manager/led.c:177: direction &= ~0x01;
	anl	_play_macro_direction_65536_50,#0xfe
;	../LED_Manager/led.c:178: primaryCount = 255;
	mov	_play_macro_primaryCount_65536_50,#0xff
	sjmp	00127$
00126$:
;	../LED_Manager/led.c:182: primaryCount -=2;
	mov	a,_play_macro_primaryCount_65536_50
	mov	r6,a
	add	a,#0xfe
;	../LED_Manager/led.c:184: if(primaryCount <= 130){
	mov  _play_macro_primaryCount_65536_50,a
	add	a,#0xff - 0x82
	jc	00127$
;	../LED_Manager/led.c:185: direction |= 0x01;
	mov	r5,_play_macro_direction_65536_50
	mov	r6,#0x00
	orl	ar5,#0x01
	mov	_play_macro_direction_65536_50,r5
;	../LED_Manager/led.c:186: primaryCount = 130;
	mov	_play_macro_primaryCount_65536_50,#0x82
00127$:
;	../LED_Manager/led.c:190: if(rng % 21 == 0){
	mov	__modulong_PARM_2,#0x15
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_play_macro_rng_65536_50
	mov	dph,(_play_macro_rng_65536_50 + 1)
	mov	b,(_play_macro_rng_65536_50 + 2)
	mov	a,(_play_macro_rng_65536_50 + 3)
	push	ar7
	lcall	__modulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00139$
;	../LED_Manager/led.c:191: if(direction & 0x10){
	mov	a,_play_macro_direction_65536_50
	jnb	acc.4,00129$
;	../LED_Manager/led.c:192: direction &= ~0x10;
	anl	_play_macro_direction_65536_50,#0xef
	sjmp	00140$
00129$:
;	../LED_Manager/led.c:194: direction |= 0x10;
	mov	r5,_play_macro_direction_65536_50
	mov	r6,#0x00
	orl	ar5,#0x10
	mov	_play_macro_direction_65536_50,r5
	sjmp	00140$
00139$:
;	../LED_Manager/led.c:197: if(direction & 0x10){
	mov	a,_play_macro_direction_65536_50
	jnb	acc.4,00136$
;	../LED_Manager/led.c:198: secondaryCount++;
	inc	_play_macro_secondaryCount_65536_50
;	../LED_Manager/led.c:200: if(secondaryCount >= 34){
	mov	a,#0x100 - 0x22
	add	a,_play_macro_secondaryCount_65536_50
	jnc	00140$
;	../LED_Manager/led.c:201: secondaryCount = 34;
	mov	_play_macro_secondaryCount_65536_50,#0x22
	sjmp	00140$
00136$:
;	../LED_Manager/led.c:205: secondaryCount--;
	dec	_play_macro_secondaryCount_65536_50
;	../LED_Manager/led.c:207: if(secondaryCount > 36){
	mov	a,_play_macro_secondaryCount_65536_50
	add	a,#0xff - 0x24
	jnc	00140$
;	../LED_Manager/led.c:208: secondaryCount = 0;
	mov	_play_macro_secondaryCount_65536_50,#0x00
00140$:
;	../LED_Manager/led.c:213: if(macro == OPTION_MACRO_WATER_DMX){ //water
	mov	a,r7
	jz	00147$
;	../LED_Manager/led.c:214: PWMDATA11H = secondaryCount;
	mov	_PWMDATA11H,_play_macro_secondaryCount_65536_50
;	../LED_Manager/led.c:215: PWMDATA17H = secondaryCount;
	mov	_PWMDATA17H,_play_macro_secondaryCount_65536_50
;	../LED_Manager/led.c:216: PWMDATA14H = primaryCount;
	mov	_PWMDATA14H,_play_macro_primaryCount_65536_50
	ret
00147$:
;	../LED_Manager/led.c:217: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
	mov	a,#0x04
	cjne	a,_play_macro_PARM_2,00144$
;	../LED_Manager/led.c:218: PWMDATA11H = secondaryCount;
	mov	_PWMDATA11H,_play_macro_secondaryCount_65536_50
;	../LED_Manager/led.c:219: PWMDATA17H = primaryCount;
	mov	_PWMDATA17H,_play_macro_primaryCount_65536_50
;	../LED_Manager/led.c:220: PWMDATA14H = 0;
	mov	_PWMDATA14H,#0x00
	ret
00144$:
;	../LED_Manager/led.c:221: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
	mov	a,#0x05
	cjne	a,_play_macro_PARM_2,00375$
	sjmp	00376$
00375$:
	ret
00376$:
;	../LED_Manager/led.c:222: PWMDATA11H = primaryCount;
	mov	_PWMDATA11H,_play_macro_primaryCount_65536_50
;	../LED_Manager/led.c:223: PWMDATA17H = secondaryCount;
	mov	_PWMDATA17H,_play_macro_secondaryCount_65536_50
;	../LED_Manager/led.c:224: PWMDATA14H = primaryCount;
	mov	_PWMDATA14H,_play_macro_primaryCount_65536_50
;	../LED_Manager/led.c:228: break;
	ret
;	../LED_Manager/led.c:229: case OPTION_MACRO_STORM_DMX: //storm
00151$:
;	../LED_Manager/led.c:230: if(changed){
	mov	a,_play_macro_changed_65536_50
	jnz	00377$
	ret
00377$:
;	../LED_Manager/led.c:231: if(!(rng % STORM_FREQ)){
	mov	__modulong_PARM_2,#0x59
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_play_macro_rng_65536_50
	mov	dph,(_play_macro_rng_65536_50 + 1)
	mov	b,(_play_macro_rng_65536_50 + 2)
	mov	a,(_play_macro_rng_65536_50 + 3)
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00161$
;	../LED_Manager/led.c:232: primaryCount = 255;
	mov	_play_macro_primaryCount_65536_50,#0xff
	sjmp	00162$
00161$:
;	../LED_Manager/led.c:234: if(primaryCount > 200){
	mov	a,_play_macro_primaryCount_65536_50
	add	a,#0xff - 0xc8
	jnc	00158$
;	../LED_Manager/led.c:235: primaryCount--;
	dec	_play_macro_primaryCount_65536_50
	sjmp	00162$
00158$:
;	../LED_Manager/led.c:236: } else if(primaryCount > 130){
	mov	a,_play_macro_primaryCount_65536_50
	add	a,#0xff - 0x82
	jnc	00155$
;	../LED_Manager/led.c:237: primaryCount-=2;
	mov	a,_play_macro_primaryCount_65536_50
	mov	r7,a
	add	a,#0xfe
	mov	_play_macro_primaryCount_65536_50,a
	sjmp	00162$
00155$:
;	../LED_Manager/led.c:239: primaryCount-=3;
	mov	a,_play_macro_primaryCount_65536_50
	mov	r7,a
	add	a,#0xfd
;	../LED_Manager/led.c:240: if(primaryCount > 200){
	mov  _play_macro_primaryCount_65536_50,a
	add	a,#0xff - 0xc8
	jnc	00162$
;	../LED_Manager/led.c:241: primaryCount = 0;
	mov	_play_macro_primaryCount_65536_50,#0x00
00162$:
;	../LED_Manager/led.c:246: PWMDATA11H = primaryCount;
	mov	_PWMDATA11H,_play_macro_primaryCount_65536_50
;	../LED_Manager/led.c:247: PWMDATA17H = primaryCount;
	mov	_PWMDATA17H,_play_macro_primaryCount_65536_50
;	../LED_Manager/led.c:248: PWMDATA14H = primaryCount;
	mov	_PWMDATA14H,_play_macro_primaryCount_65536_50
;	../LED_Manager/led.c:250: break;
	ret
;	../LED_Manager/led.c:251: case OPTION_MACRO_WHITE: //w
00165$:
;	../LED_Manager/led.c:252: whiteout();
;	../LED_Manager/led.c:253: break;
	ljmp	_whiteout
;	../LED_Manager/led.c:254: case 69:
00166$:
;	../LED_Manager/led.c:255: if(tock < 32){
	mov	a,#0x100 - 0x20
	add	a,_play_macro_tock_65536_50
	jc	00183$
;	../LED_Manager/led.c:257: if(rng & (SH_B >> tock)){
	mov	b,_play_macro_tock_65536_50
	inc	b
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x80
	sjmp	00384$
00383$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00384$:
	djnz	b,00383$
	mov	a,r4
	anl	a,#0xba
	jnz	00385$
	mov	a,r5
	anl	a,#0xb8
	jnz	00385$
	mov	a,r6
	anl	a,#0x3b
	jnz	00385$
	mov	a,r7
	anl	a,#0xee
	jz	00168$
00385$:
;	../LED_Manager/led.c:258: PWMDATA11H = 0; //Aqua - Adam
	mov	_PWMDATA11H,#0x00
;	../LED_Manager/led.c:259: PWMDATA17H = 255;
	mov	_PWMDATA17H,#0xff
;	../LED_Manager/led.c:260: PWMDATA14H = 255;
	mov	_PWMDATA14H,#0xff
	ret
00168$:
;	../LED_Manager/led.c:262: blackout();
	ljmp	_blackout
00183$:
;	../LED_Manager/led.c:264: } else if(tock < 64){
	mov	a,#0x100 - 0x40
	add	a,_play_macro_tock_65536_50
	jc	00180$
;	../LED_Manager/led.c:266: if(rng & (SH_B >> (tock - 32))){
	mov	a,_play_macro_tock_65536_50
	add	a,#0xe0
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x80
	sjmp	00388$
00387$:
	clr	c
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
00388$:
	djnz	b,00387$
	mov	a,r7
	anl	a,#0x38
	jnz	00389$
	mov	a,r6
	anl	a,#0xba
	jnz	00389$
	mov	a,r5
	anl	a,#0xb8
	jnz	00389$
	mov	a,r4
	anl	a,#0x28
	jz	00171$
00389$:
;	../LED_Manager/led.c:267: whiteout(); //White - Worth
	ljmp	_whiteout
00171$:
;	../LED_Manager/led.c:269: blackout();
	ljmp	_blackout
00180$:
;	../LED_Manager/led.c:271: } else if(tock < 83){
	mov	a,#0x100 - 0x53
	add	a,_play_macro_tock_65536_50
	jc	00177$
;	../LED_Manager/led.c:273: if(rng & (SH_B >> (tock - 64))){
	mov	a,_play_macro_tock_65536_50
	add	a,#0xc0
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x80
	sjmp	00392$
00391$:
	clr	c
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
00392$:
	djnz	b,00391$
	mov	a,r5
	anl	a,#0xb8
	jnz	00393$
	mov	a,r4
	anl	a,#0xeb
	jz	00174$
00393$:
;	../LED_Manager/led.c:274: whiteout();
	ljmp	_whiteout
00174$:
;	../LED_Manager/led.c:276: blackout();
	ljmp	_blackout
00177$:
;	../LED_Manager/led.c:279: tock = 0;
	mov	_play_macro_tock_65536_50,#0x00
;	../LED_Manager/led.c:281: break;
;	../LED_Manager/led.c:282: default:
	ret
00185$:
;	../LED_Manager/led.c:283: blackout();
;	../LED_Manager/led.c:284: }
;	../LED_Manager/led.c:286: }
	ljmp	_blackout
;------------------------------------------------------------
;Allocation info for local variables in function 'color_wheel'
;------------------------------------------------------------
;color                     Allocated to registers r6 
;------------------------------------------------------------
;	../LED_Manager/led.c:288: void color_wheel(uint8_t color){
;	-----------------------------------------
;	 function color_wheel
;	-----------------------------------------
_color_wheel:
	mov	r7,dpl
;	../LED_Manager/led.c:290: if(color < 85){
	cjne	r7,#0x55,00119$
00119$:
	jnc	00105$
;	../LED_Manager/led.c:291: PWMDATA11H = color * 3;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	_PWMDATA11H,a
;	../LED_Manager/led.c:292: PWMDATA17H = 255 - color * 3;
	mov	ar6,r7
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_PWMDATA17H,a
;	../LED_Manager/led.c:293: PWMDATA14H = 0; 
	mov	_PWMDATA14H,#0x00
	ret
00105$:
;	../LED_Manager/led.c:294: } else if(color < 170){
	cjne	r7,#0xaa,00121$
00121$:
	jnc	00102$
;	../LED_Manager/led.c:295: color -= 85;
	mov	ar6,r7
	mov	a,r6
	add	a,#0xab
;	../LED_Manager/led.c:296: PWMDATA11H = 255 - color * 3;
	mov	r6,a
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_PWMDATA11H,a
;	../LED_Manager/led.c:297: PWMDATA17H = 0;
	mov	_PWMDATA17H,#0x00
;	../LED_Manager/led.c:298: PWMDATA14H = color * 3; 
	mov	a,r6
	mov	b,#0x03
	mul	ab
	mov	_PWMDATA14H,a
	ret
00102$:
;	../LED_Manager/led.c:300: color -= 170;
	mov	a,r7
	add	a,#0x56
;	../LED_Manager/led.c:301: PWMDATA11H = 0;
;	../LED_Manager/led.c:302: PWMDATA17H = color * 3;
	mov	r7,a
	mov	_PWMDATA11H,#0x00
	mov	b,#0x03
	mul	ab
	mov	_PWMDATA17H,a
;	../LED_Manager/led.c:303: PWMDATA14H = 255 - color * 3;     
	mov	a,r7
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	_PWMDATA14H,a
;	../LED_Manager/led.c:305: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'whiteout'
;------------------------------------------------------------
;	../LED_Manager/led.c:307: void whiteout(){
;	-----------------------------------------
;	 function whiteout
;	-----------------------------------------
_whiteout:
;	../LED_Manager/led.c:308: PWMDATA11H = 255;
	mov	_PWMDATA11H,#0xff
;	../LED_Manager/led.c:309: PWMDATA17H = 255;
	mov	_PWMDATA17H,#0xff
;	../LED_Manager/led.c:310: PWMDATA14H = 255;
	mov	_PWMDATA14H,#0xff
;	../LED_Manager/led.c:311: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blackout'
;------------------------------------------------------------
;	../LED_Manager/led.c:313: void blackout(){
;	-----------------------------------------
;	 function blackout
;	-----------------------------------------
_blackout:
;	../LED_Manager/led.c:314: PWMDATA11H = 0;
	mov	_PWMDATA11H,#0x00
;	../LED_Manager/led.c:315: PWMDATA17H = 0;
	mov	_PWMDATA17H,#0x00
;	../LED_Manager/led.c:316: PWMDATA14H = 0;
	mov	_PWMDATA14H,#0x00
;	../LED_Manager/led.c:317: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rngU32'
;------------------------------------------------------------
;past                      Allocated with name '_rngU32_past_65536_101'
;present                   Allocated with name '_rngU32_present_65536_101'
;------------------------------------------------------------
;	../LED_Manager/led.c:320: uint32_t rngU32(){
;	-----------------------------------------
;	 function rngU32
;	-----------------------------------------
_rngU32:
;	../LED_Manager/led.c:324: present = past + present;
	mov	a,_rngU32_present_65536_101
	add	a,_rngU32_past_65536_101
	mov	_rngU32_present_65536_101,a
	mov	a,(_rngU32_present_65536_101 + 1)
	addc	a,(_rngU32_past_65536_101 + 1)
	mov	(_rngU32_present_65536_101 + 1),a
	mov	a,(_rngU32_present_65536_101 + 2)
	addc	a,(_rngU32_past_65536_101 + 2)
	mov	(_rngU32_present_65536_101 + 2),a
	mov	a,(_rngU32_present_65536_101 + 3)
	addc	a,(_rngU32_past_65536_101 + 3)
	mov	(_rngU32_present_65536_101 + 3),a
;	../LED_Manager/led.c:325: past = present - past;
	mov	a,_rngU32_present_65536_101
	clr	c
	subb	a,_rngU32_past_65536_101
	mov	_rngU32_past_65536_101,a
	mov	a,(_rngU32_present_65536_101 + 1)
	subb	a,(_rngU32_past_65536_101 + 1)
	mov	(_rngU32_past_65536_101 + 1),a
	mov	a,(_rngU32_present_65536_101 + 2)
	subb	a,(_rngU32_past_65536_101 + 2)
	mov	(_rngU32_past_65536_101 + 2),a
	mov	a,(_rngU32_present_65536_101 + 3)
	subb	a,(_rngU32_past_65536_101 + 3)
	mov	(_rngU32_past_65536_101 + 3),a
;	../LED_Manager/led.c:327: return present;
	mov	dpl,_rngU32_present_65536_101
	mov	dph,(_rngU32_present_65536_101 + 1)
	mov	b,(_rngU32_present_65536_101 + 2)
	mov	a,(_rngU32_present_65536_101 + 3)
;	../LED_Manager/led.c:328: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
