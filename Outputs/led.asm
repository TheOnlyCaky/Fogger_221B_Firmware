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
	.globl _tick_led
	.globl _dmx_to_macro
	.globl _play_macro
	.globl _color_wheel
	.globl _whiteout
	.globl _blackout
	.globl _rngU32
	.globl _set_leds
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
_tick_led_on_65536_17:
	.ds 1
_play_macro_tock_65536_55:
	.ds 1
_play_macro_primaryCount_65536_55:
	.ds 1
_play_macro_secondaryCount_65536_55:
	.ds 1
_play_macro_direction_65536_55:
	.ds 1
_rngU32_past_65536_107:
	.ds 4
_rngU32_present_65536_107:
	.ds 4
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
;------------------------------------------------------------
;Allocation info for local variables in function 'tick_led'
;------------------------------------------------------------
;tick                      Allocated to stack - _bp +1
;dimmer                    Allocated to registers r6 
;value                     Allocated to registers r7 
;strobe                    Allocated to registers r7 
;on                        Allocated with name '_tick_led_on_65536_17'
;------------------------------------------------------------
;	../LED_Manager/led.c:22: static uint8_t on = 0;
	mov	_tick_led_on_65536_17,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'play_macro'
;------------------------------------------------------------
;macro                     Allocated to stack - _bp -3
;macro_speed               Allocated to stack - _bp -4
;tick                      Allocated to stack - _bp +1
;rng                       Allocated to stack - _bp +5
;changed                   Allocated to registers r3 
;tock                      Allocated with name '_play_macro_tock_65536_55'
;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
;direction                 Allocated with name '_play_macro_direction_65536_55'
;------------------------------------------------------------
;	../LED_Manager/led.c:136: static uint8_t tock = 0;
	mov	_play_macro_tock_65536_55,#0x00
;	../LED_Manager/led.c:137: static uint8_t primaryCount = 0;
	mov	_play_macro_primaryCount_65536_55,#0x00
;	../LED_Manager/led.c:138: static uint8_t secondaryCount = 0;
	mov	_play_macro_secondaryCount_65536_55,#0x00
;	../LED_Manager/led.c:139: static uint8_t direction = 0;
	mov	_play_macro_direction_65536_55,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'rngU32'
;------------------------------------------------------------
;past                      Allocated with name '_rngU32_past_65536_107'
;present                   Allocated with name '_rngU32_present_65536_107'
;------------------------------------------------------------
;	../LED_Manager/led.c:316: static uint32_t past = 1;
	mov	_rngU32_past_65536_107,#0x01
	clr	a
	mov	(_rngU32_past_65536_107 + 1),a
	mov	(_rngU32_past_65536_107 + 2),a
	mov	(_rngU32_past_65536_107 + 3),a
;	../LED_Manager/led.c:317: static uint32_t present = 1;
	mov	_rngU32_present_65536_107,#0x01
	mov	(_rngU32_present_65536_107 + 1),a
	mov	(_rngU32_present_65536_107 + 2),a
	mov	(_rngU32_present_65536_107 + 3),a
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
;tick                      Allocated to stack - _bp +1
;dimmer                    Allocated to registers r6 
;value                     Allocated to registers r7 
;strobe                    Allocated to registers r7 
;on                        Allocated with name '_tick_led_on_65536_17'
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
;	../LED_Manager/led.c:27: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00227$
	ljmp	00143$
00227$:
;	../LED_Manager/led.c:28: switch(get_runtime_data(MODE_INDEX)){
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	r3,dpl
	cjne	r3,#0x00,00228$
	sjmp	00101$
00228$:
	cjne	r3,#0x01,00229$
	ljmp	00119$
00229$:
	ljmp	00129$
;	../LED_Manager/led.c:29: case OPTION_DMX_MODE_11:
00101$:
;	../LED_Manager/led.c:30: value = get_dmx_value(DMX_M11_MACRO_INDEX);
;	../LED_Manager/led.c:32: if(value > DMX_MACRO_NONE){
	mov	a,(_DMX + 0x0008)
	mov	r3,a
	add	a,#0xff - 0x14
	jnc	00117$
;	../LED_Manager/led.c:33: if(value <= DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
	mov	a,r3
	add	a,#0xff - 0x94
	jc	00106$
;	../LED_Manager/led.c:34: color_wheel((value - DMX_MACRO_NONE - 1) << 1);
	mov	ar2,r3
	mov	a,r2
	add	a,#0xeb
	add	a,acc
	mov	dpl,a
	lcall	_color_wheel
	ljmp	00145$
00106$:
;	../LED_Manager/led.c:36: dimmer = get_dmx_value(DMX_M11_MACRO_SPEED_INDEX);
;	../LED_Manager/led.c:38: if(dimmer > 10){
	mov	a,(_DMX + 0x0009)
	mov	r2,a
	add	a,#0xff - 0x0a
	jnc	00103$
;	../LED_Manager/led.c:39: play_macro(tick, dmx_to_macro(value), dimmer - 5);
	mov	a,r2
	add	a,#0xfb
	mov	r2,a
	mov	dpl,r3
	push	ar2
	lcall	_dmx_to_macro
	mov	r7,dpl
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_play_macro
	dec	sp
	dec	sp
	ljmp	00145$
00103$:
;	../LED_Manager/led.c:41: play_macro(1, dmx_to_macro(value), 0xFF);
	mov	dpl,r3
	lcall	_dmx_to_macro
	mov	r7,dpl
	mov	a,#0xff
	push	acc
	push	ar7
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_play_macro
	dec	sp
	dec	sp
	ljmp	00145$
00117$:
;	../LED_Manager/led.c:46: strobe = get_dmx_value(DMX_M11_STROBE_INDEX);
;	../LED_Manager/led.c:48: if(strobe > 10){
	mov	a,(_DMX + 0x0007)
	mov	r7,a
	add	a,#0xff - 0x0a
	jnc	00111$
;	../LED_Manager/led.c:49: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
	mov	r6,#0x00
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,#0x1c
	clr	c
	subb	a,r7
	mov	r7,a
	mov	a,#0x02
	subb	a,r6
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00112$
;	../LED_Manager/led.c:50: on = ~on;
	mov	a,_tick_led_on_65536_17
	cpl	a
	mov	_tick_led_on_65536_17,a
	sjmp	00112$
00111$:
;	../LED_Manager/led.c:53: on = 0xFF;
	mov	_tick_led_on_65536_17,#0xff
00112$:
;	../LED_Manager/led.c:56: if(on){
	mov	a,_tick_led_on_65536_17
	jz	00114$
;	../LED_Manager/led.c:60: get_dmx_value(DMX_M11_BLUE_INDEX));
;	../LED_Manager/led.c:59: get_dmx_value(DMX_M11_GREEN_INDEX),
;	../LED_Manager/led.c:58: set_leds(get_dmx_value(DMX_M11_RED_INDEX),
	mov	dpl,(_DMX + 0x0004)
	push	(_DMX + 0x0006)
	push	(_DMX + 0x0005)
	lcall	_set_leds
	dec	sp
	dec	sp
	ljmp	00145$
00114$:
;	../LED_Manager/led.c:63: blackout();
	lcall	_blackout
;	../LED_Manager/led.c:67: break;
	ljmp	00145$
;	../LED_Manager/led.c:68: case OPTION_DMX_MODE_3: /* Only macros */
00119$:
;	../LED_Manager/led.c:69: value = get_dmx_value(DMX_M3_MACRO_INDEX);
;	../LED_Manager/led.c:70: if(value > DMX_MACRO_NONE){
	mov	a,(_DMX + 0x0001)
	mov	r7,a
	add	a,#0xff - 0x14
	jnc	00127$
;	../LED_Manager/led.c:71: if(value < DMX_MACRO_COLOR_WHEEL){
	cjne	r7,#0x94,00237$
00237$:
	jnc	00124$
;	../LED_Manager/led.c:72: color_wheel((value - DMX_MACRO_NONE - 1) << 1);
	mov	ar6,r7
	mov	a,r6
	add	a,#0xeb
	add	a,acc
	mov	dpl,a
	lcall	_color_wheel
	ljmp	00145$
00124$:
;	../LED_Manager/led.c:74: dimmer = get_dmx_value(DMX_M3_MACRO_SPEED_INDEX);
;	../LED_Manager/led.c:76: if(dimmer > 10){
	mov	a,(_DMX + 0x0002)
	mov	r6,a
	add	a,#0xff - 0x0a
	jnc	00121$
;	../LED_Manager/led.c:77: play_macro(tick, dmx_to_macro(value), dimmer - 5);
	mov	a,r6
	add	a,#0xfb
	mov	r6,a
	mov	dpl,r7
	push	ar6
	lcall	_dmx_to_macro
	mov	r5,dpl
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_play_macro
	dec	sp
	dec	sp
	ljmp	00145$
00121$:
;	../LED_Manager/led.c:79: play_macro(1, dmx_to_macro(value), 0xFF);
	mov	dpl,r7
	lcall	_dmx_to_macro
	mov	r7,dpl
	mov	a,#0xff
	push	acc
	push	ar7
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_play_macro
	dec	sp
	dec	sp
	ljmp	00145$
00127$:
;	../LED_Manager/led.c:83: blackout();
	lcall	_blackout
;	../LED_Manager/led.c:85: break;
	ljmp	00145$
;	../LED_Manager/led.c:86: default:
00129$:
;	../LED_Manager/led.c:87: blackout();
	lcall	_blackout
;	../LED_Manager/led.c:89: }
	ljmp	00145$
00143$:
;	../LED_Manager/led.c:91: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
	mov	dpl,#0x03
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00140$
;	../LED_Manager/led.c:92: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
	mov	dpl,#0x04
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	dpl,#0x03
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_play_macro
	dec	sp
	dec	sp
	ljmp	00145$
00140$:
;	../LED_Manager/led.c:95: strobe = get_runtime_data(STROBE_INDEX);
	mov	dpl,#0x08
	lcall	_get_runtime_data
;	../LED_Manager/led.c:97: if(strobe){
	mov	a,dpl
	mov	r7,a
	jz	00134$
;	../LED_Manager/led.c:98: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
	mov	r6,#0x00
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,#0x1c
	clr	c
	subb	a,r7
	mov	r7,a
	mov	a,#0x02
	subb	a,r6
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00135$
;	../LED_Manager/led.c:99: on = ~on;
	mov	a,_tick_led_on_65536_17
	cpl	a
	mov	_tick_led_on_65536_17,a
	sjmp	00135$
00134$:
;	../LED_Manager/led.c:102: on = 0xFF;
	mov	_tick_led_on_65536_17,#0xff
00135$:
;	../LED_Manager/led.c:105: if(on){
	mov	a,_tick_led_on_65536_17
	jz	00137$
;	../LED_Manager/led.c:106: set_leds(get_runtime_data(RED_INDEX), get_runtime_data(GREEN_INDEX), get_runtime_data(BLUE_INDEX));
	mov	dpl,#0x07
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	dpl,#0x06
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	mov	dpl,#0x05
	push	ar6
	lcall	_get_runtime_data
	lcall	_set_leds
	dec	sp
	dec	sp
	sjmp	00145$
00137$:
;	../LED_Manager/led.c:108: blackout();
	lcall	_blackout
00145$:
;	../LED_Manager/led.c:112: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dmx_to_macro'
;------------------------------------------------------------
;dmx_value                 Allocated to registers r7 
;------------------------------------------------------------
;	../LED_Manager/led.c:114: uint8_t dmx_to_macro(uint8_t dmx_value){
;	-----------------------------------------
;	 function dmx_to_macro
;	-----------------------------------------
_dmx_to_macro:
;	../LED_Manager/led.c:116: if(dmx_value <= DMX_MACRO_WHITE){
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0xb4
	jc	00119$
;	../LED_Manager/led.c:117: return OPTION_MACRO_WHITE;
	mov	dpl,#0x21
	ret
00119$:
;	../LED_Manager/led.c:118: } else if(dmx_value <= DMX_MACRO_RAINBOW){
	mov	a,r7
	add	a,#0xff - 0xbe
	jc	00116$
;	../LED_Manager/led.c:119: return OPTION_MACRO_RAINBOW_DMX;
	mov	dpl,#0x01
	ret
00116$:
;	../LED_Manager/led.c:120: } else if(dmx_value <= DMX_MACRO_FIRE){
	mov	a,r7
	add	a,#0xff - 0xc8
	jc	00113$
;	../LED_Manager/led.c:121: return OPTION_MACRO_FIRE_DMX;
	mov	dpl,#0x02
	ret
00113$:
;	../LED_Manager/led.c:122: } else if(dmx_value <= DMX_MACRO_WATER){
	mov	a,r7
	add	a,#0xff - 0xd2
	jc	00110$
;	../LED_Manager/led.c:123: return OPTION_MACRO_WATER_DMX;
	mov	dpl,#0x03
	ret
00110$:
;	../LED_Manager/led.c:124: } else if(dmx_value <= DMX_MACRO_ACID){
	mov	a,r7
	add	a,#0xff - 0xdc
	jc	00107$
;	../LED_Manager/led.c:125: return OPTION_MACRO_ACID_DMX;
	mov	dpl,#0x04
	ret
00107$:
;	../LED_Manager/led.c:126: } else if(dmx_value <= DMX_MACRO_ETHER){
	mov	a,r7
	add	a,#0xff - 0xe6
	jc	00104$
;	../LED_Manager/led.c:127: return OPTION_MACRO_ETHER_DMX;
	mov	dpl,#0x05
	ret
00104$:
;	../LED_Manager/led.c:128: } else if(dmx_value <= DMX_MACRO_STORM){
	mov	a,r7
	add	a,#0xff - 0xf0
	jc	00108$
;	../LED_Manager/led.c:129: return OPTION_MACRO_STORM_DMX;
	mov	dpl,#0x06
	ret
00108$:
;	../LED_Manager/led.c:132: return 69; // ;)
	mov	dpl,#0x45
;	../LED_Manager/led.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'play_macro'
;------------------------------------------------------------
;macro                     Allocated to stack - _bp -3
;macro_speed               Allocated to stack - _bp -4
;tick                      Allocated to stack - _bp +1
;rng                       Allocated to stack - _bp +5
;changed                   Allocated to registers r3 
;tock                      Allocated with name '_play_macro_tock_65536_55'
;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
;direction                 Allocated with name '_play_macro_direction_65536_55'
;------------------------------------------------------------
;	../LED_Manager/led.c:135: void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
;	-----------------------------------------
;	 function play_macro
;	-----------------------------------------
_play_macro:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../LED_Manager/led.c:140: uint32_t rng = 0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../LED_Manager/led.c:141: uint8_t changed = 0;
	mov	r3,#0x00
;	../LED_Manager/led.c:144: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r4,a
	mov	r5,#0x00
	mov	a,#0x85
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00104$
;	../LED_Manager/led.c:145: changed = 0xFF;
	mov	r3,#0xff
;	../LED_Manager/led.c:146: rng = 0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../LED_Manager/led.c:148: if(macro_speed){
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jz	00104$
;	../LED_Manager/led.c:149: tock++;
	inc	_play_macro_tock_65536_55
;	../LED_Manager/led.c:150: rng = rngU32();
	push	ar3
	lcall	_rngU32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00104$:
;	../LED_Manager/led.c:154: switch (macro)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x01,00351$
	sjmp	00105$
00351$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x02,00352$
	sjmp	00106$
00352$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	a
	cjne	@r0,#0x03,00353$
	inc	a
00353$:
	mov	r7,a
	jz	00355$
	ljmp	00122$
00355$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x04,00356$
	ljmp	00122$
00356$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x05,00357$
	ljmp	00122$
00357$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x06,00358$
	ljmp	00153$
00358$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x21,00359$
	ljmp	00167$
00359$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x45,00360$
	ljmp	00168$
00360$:
	ljmp	00187$
;	../LED_Manager/led.c:156: case OPTION_MACRO_RAINBOW_DMX: //rainbow
00105$:
;	../LED_Manager/led.c:157: color_wheel(tock);
	mov	dpl,_play_macro_tock_65536_55
	lcall	_color_wheel
;	../LED_Manager/led.c:158: break;
	ljmp	00189$
;	../LED_Manager/led.c:159: case OPTION_MACRO_FIRE_DMX: //fire
00106$:
;	../LED_Manager/led.c:160: if(changed) { 
	mov	a,r3
	jnz	00361$
	ljmp	00189$
00361$:
;	../LED_Manager/led.c:162: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
	mov	a,#0x100 - 0x37
	add	a,_play_macro_primaryCount_65536_55
	jc	00108$
	mov	_play_macro_primaryCount_65536_55,#0x37
	mov	r5,_play_macro_direction_65536_55
	mov	r6,#0x00
	orl	ar5,#0x01
	mov	_play_macro_direction_65536_55,r5
00108$:
;	../LED_Manager/led.c:163: if(direction & 0x01){
	mov	a,_play_macro_direction_65536_55
	jnb	acc.0,00116$
;	../LED_Manager/led.c:164: if(primaryCount == 255){
	mov	a,#0xff
	cjne	a,_play_macro_primaryCount_65536_55,00110$
;	../LED_Manager/led.c:165: direction &= ~0x01;
	anl	_play_macro_direction_65536_55,#0xfe
	sjmp	00117$
00110$:
;	../LED_Manager/led.c:167: primaryCount++;
	inc	_play_macro_primaryCount_65536_55
	sjmp	00117$
00116$:
;	../LED_Manager/led.c:170: if(primaryCount - 1 == 55){
	mov	r5,_play_macro_primaryCount_65536_55
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xff,00366$
	dec	r6
00366$:
	cjne	r5,#0x37,00113$
	cjne	r6,#0x00,00113$
;	../LED_Manager/led.c:171: direction |= 0x01;
	mov	r5,_play_macro_direction_65536_55
	mov	r6,#0x00
	orl	ar5,#0x01
	mov	_play_macro_direction_65536_55,r5
	sjmp	00117$
00113$:
;	../LED_Manager/led.c:173: primaryCount--;
	dec	_play_macro_primaryCount_65536_55
00117$:
;	../LED_Manager/led.c:177: set_leds(primaryCount, (uint8_t) (rng % (primaryCount >> 2)), (!(rng % 13)) ? PWMDATA17H > 1 : 0);
	mov	a,#0x0d
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00191$
	clr	c
	mov	a,#0x01
	subb	a,_PWMDATA17H
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	sjmp	00192$
00191$:
	mov	r5,#0x00
	mov	r6,#0x00
00192$:
	mov	a,_play_macro_primaryCount_65536_55
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	push	ar5
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	mov	dpl,_play_macro_primaryCount_65536_55
	lcall	_set_leds
	dec	sp
	dec	sp
;	../LED_Manager/led.c:180: break;
	ljmp	00189$
;	../LED_Manager/led.c:183: case OPTION_MACRO_ETHER_DMX:
00122$:
;	../LED_Manager/led.c:185: if(changed){
	mov	a,r3
	jnz	00370$
	ljmp	00189$
00370$:
;	../LED_Manager/led.c:187: if(direction & 0x01){
	mov	a,_play_macro_direction_65536_55
	jnb	acc.0,00128$
;	../LED_Manager/led.c:188: primaryCount +=2;
	mov	r6,_play_macro_primaryCount_65536_55
	mov	a,#0x02
	add	a,r6
;	../LED_Manager/led.c:190: if(primaryCount < 75){
	mov	_play_macro_primaryCount_65536_55,a
	clr	c
	subb	a,#0x4b
	jnc	00129$
;	../LED_Manager/led.c:191: direction &= ~0x01;
	anl	_play_macro_direction_65536_55,#0xfe
;	../LED_Manager/led.c:192: primaryCount = 255;
	mov	_play_macro_primaryCount_65536_55,#0xff
	sjmp	00129$
00128$:
;	../LED_Manager/led.c:196: primaryCount -=2;
	mov	a,_play_macro_primaryCount_65536_55
	mov	r6,a
	add	a,#0xfe
;	../LED_Manager/led.c:198: if(primaryCount <= 130){
	mov  _play_macro_primaryCount_65536_55,a
	add	a,#0xff - 0x82
	jc	00129$
;	../LED_Manager/led.c:199: direction |= 0x01;
	mov	r5,_play_macro_direction_65536_55
	mov	r6,#0x00
	orl	ar5,#0x01
	mov	_play_macro_direction_65536_55,r5
;	../LED_Manager/led.c:200: primaryCount = 130;
	mov	_play_macro_primaryCount_65536_55,#0x82
00129$:
;	../LED_Manager/led.c:204: if(rng % 21 == 0){
	push	ar7
	mov	a,#0x15
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00141$
;	../LED_Manager/led.c:205: if(direction & 0x10){
	mov	a,_play_macro_direction_65536_55
	jnb	acc.4,00131$
;	../LED_Manager/led.c:206: direction &= ~0x10;
	anl	_play_macro_direction_65536_55,#0xef
	sjmp	00142$
00131$:
;	../LED_Manager/led.c:208: direction |= 0x10;
	mov	r5,_play_macro_direction_65536_55
	mov	r6,#0x00
	orl	ar5,#0x10
	mov	_play_macro_direction_65536_55,r5
	sjmp	00142$
00141$:
;	../LED_Manager/led.c:211: if(direction & 0x10){
	mov	a,_play_macro_direction_65536_55
	jnb	acc.4,00138$
;	../LED_Manager/led.c:212: secondaryCount++;
	inc	_play_macro_secondaryCount_65536_55
;	../LED_Manager/led.c:214: if(secondaryCount >= 34){
	mov	a,#0x100 - 0x22
	add	a,_play_macro_secondaryCount_65536_55
	jnc	00142$
;	../LED_Manager/led.c:215: secondaryCount = 34;
	mov	_play_macro_secondaryCount_65536_55,#0x22
	sjmp	00142$
00138$:
;	../LED_Manager/led.c:219: secondaryCount--;
	dec	_play_macro_secondaryCount_65536_55
;	../LED_Manager/led.c:221: if(secondaryCount > 36){
	mov	a,_play_macro_secondaryCount_65536_55
	add	a,#0xff - 0x24
	jnc	00142$
;	../LED_Manager/led.c:222: secondaryCount = 0;
	mov	_play_macro_secondaryCount_65536_55,#0x00
00142$:
;	../LED_Manager/led.c:227: if(macro == OPTION_MACRO_WATER_DMX){ //water
	mov	a,r7
	jz	00149$
;	../LED_Manager/led.c:228: set_leds(secondaryCount, secondaryCount, primaryCount);
	push	_play_macro_primaryCount_65536_55
	push	_play_macro_secondaryCount_65536_55
	mov	dpl,_play_macro_secondaryCount_65536_55
	lcall	_set_leds
	dec	sp
	dec	sp
	ljmp	00189$
00149$:
;	../LED_Manager/led.c:229: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x04,00146$
;	../LED_Manager/led.c:230: set_leds(secondaryCount, primaryCount, 0);
	clr	a
	push	acc
	push	_play_macro_primaryCount_65536_55
	mov	dpl,_play_macro_secondaryCount_65536_55
	lcall	_set_leds
	dec	sp
	dec	sp
	ljmp	00189$
00146$:
;	../LED_Manager/led.c:231: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x05,00382$
	sjmp	00383$
00382$:
	ljmp	00189$
00383$:
;	../LED_Manager/led.c:232: set_leds(primaryCount, secondaryCount, primaryCount);
	push	_play_macro_primaryCount_65536_55
	push	_play_macro_secondaryCount_65536_55
	mov	dpl,_play_macro_primaryCount_65536_55
	lcall	_set_leds
	dec	sp
	dec	sp
;	../LED_Manager/led.c:236: break;
	ljmp	00189$
;	../LED_Manager/led.c:237: case OPTION_MACRO_STORM_DMX: //storm
00153$:
;	../LED_Manager/led.c:238: if(changed){
	mov	a,r3
	jnz	00384$
	ljmp	00189$
00384$:
;	../LED_Manager/led.c:239: if(!(rng % STORM_FREQ)){
	mov	a,#0x59
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00163$
;	../LED_Manager/led.c:240: primaryCount = 255;
	mov	_play_macro_primaryCount_65536_55,#0xff
	sjmp	00164$
00163$:
;	../LED_Manager/led.c:242: if(primaryCount > 200){
	mov	a,_play_macro_primaryCount_65536_55
	add	a,#0xff - 0xc8
	jnc	00160$
;	../LED_Manager/led.c:243: primaryCount--;
	dec	_play_macro_primaryCount_65536_55
	sjmp	00164$
00160$:
;	../LED_Manager/led.c:244: } else if(primaryCount > 130){
	mov	a,_play_macro_primaryCount_65536_55
	add	a,#0xff - 0x82
	jnc	00157$
;	../LED_Manager/led.c:245: primaryCount-=2;
	mov	a,_play_macro_primaryCount_65536_55
	mov	r7,a
	add	a,#0xfe
	mov	_play_macro_primaryCount_65536_55,a
	sjmp	00164$
00157$:
;	../LED_Manager/led.c:247: primaryCount-=3;
	mov	a,_play_macro_primaryCount_65536_55
	mov	r7,a
	add	a,#0xfd
;	../LED_Manager/led.c:248: if(primaryCount > 200){
	mov  _play_macro_primaryCount_65536_55,a
	add	a,#0xff - 0xc8
	jnc	00164$
;	../LED_Manager/led.c:249: primaryCount = 0;
	mov	_play_macro_primaryCount_65536_55,#0x00
00164$:
;	../LED_Manager/led.c:254: set_leds(primaryCount, primaryCount, primaryCount);
	push	_play_macro_primaryCount_65536_55
	push	_play_macro_primaryCount_65536_55
	mov	dpl,_play_macro_primaryCount_65536_55
	lcall	_set_leds
	dec	sp
	dec	sp
;	../LED_Manager/led.c:257: break;
	ljmp	00189$
;	../LED_Manager/led.c:258: case OPTION_MACRO_WHITE: //w
00167$:
;	../LED_Manager/led.c:259: whiteout();
	lcall	_whiteout
;	../LED_Manager/led.c:260: break;
	ljmp	00189$
;	../LED_Manager/led.c:261: case 69:
00168$:
;	../LED_Manager/led.c:262: if(tock < 32){
	mov	a,#0x100 - 0x20
	add	a,_play_macro_tock_65536_55
	jc	00185$
;	../LED_Manager/led.c:264: if(rng & (SH_B >> tock)){
	mov	b,_play_macro_tock_65536_55
	inc	b
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x80
	sjmp	00391$
00390$:
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
00391$:
	djnz	b,00390$
	mov	a,r4
	anl	a,#0xba
	jnz	00392$
	mov	a,r5
	anl	a,#0xb8
	jnz	00392$
	mov	a,r6
	anl	a,#0x3b
	jnz	00392$
	mov	a,r7
	anl	a,#0xee
	jz	00170$
00392$:
;	../LED_Manager/led.c:265: whiteout(); //White - Worth
	lcall	_whiteout
	ljmp	00189$
00170$:
;	../LED_Manager/led.c:267: blackout();
	lcall	_blackout
	ljmp	00189$
00185$:
;	../LED_Manager/led.c:269: } else if(tock < 64){
	mov	a,#0x100 - 0x40
	add	a,_play_macro_tock_65536_55
	jc	00182$
;	../LED_Manager/led.c:271: if(rng & (SH_B >> (tock - 32))){
	mov	a,_play_macro_tock_65536_55
	add	a,#0xe0
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x80
	sjmp	00395$
00394$:
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
00395$:
	djnz	b,00394$
	mov	a,r7
	anl	a,#0x38
	jnz	00396$
	mov	a,r6
	anl	a,#0xba
	jnz	00396$
	mov	a,r5
	anl	a,#0xb8
	jnz	00396$
	mov	a,r4
	anl	a,#0x28
	jz	00173$
00396$:
;	../LED_Manager/led.c:272: whiteout(); //White - Worth
	lcall	_whiteout
	sjmp	00189$
00173$:
;	../LED_Manager/led.c:274: blackout();
	lcall	_blackout
	sjmp	00189$
00182$:
;	../LED_Manager/led.c:276: } else if(tock < 83){
	mov	a,#0x100 - 0x53
	add	a,_play_macro_tock_65536_55
	jc	00179$
;	../LED_Manager/led.c:278: if(rng & (SH_B >> (tock - 64))){
	mov	a,_play_macro_tock_65536_55
	add	a,#0xc0
	mov	r7,a
	mov	b,r7
	inc	b
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x80
	sjmp	00399$
00398$:
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
00399$:
	djnz	b,00398$
	mov	a,r5
	anl	a,#0xb8
	jnz	00400$
	mov	a,r4
	anl	a,#0xeb
	jz	00176$
00400$:
;	../LED_Manager/led.c:279: whiteout();
	lcall	_whiteout
	sjmp	00189$
00176$:
;	../LED_Manager/led.c:281: blackout();
	lcall	_blackout
	sjmp	00189$
00179$:
;	../LED_Manager/led.c:284: tock = 0;
	mov	_play_macro_tock_65536_55,#0x00
;	../LED_Manager/led.c:286: break;
;	../LED_Manager/led.c:287: default:
	sjmp	00189$
00187$:
;	../LED_Manager/led.c:288: blackout();
	lcall	_blackout
;	../LED_Manager/led.c:289: }
00189$:
;	../LED_Manager/led.c:291: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'color_wheel'
;------------------------------------------------------------
;color                     Allocated to registers r6 
;------------------------------------------------------------
;	../LED_Manager/led.c:293: void color_wheel(uint8_t color){
;	-----------------------------------------
;	 function color_wheel
;	-----------------------------------------
_color_wheel:
	mov	r7,dpl
;	../LED_Manager/led.c:295: if(color < 85){
	cjne	r7,#0x55,00119$
00119$:
	jnc	00105$
;	../LED_Manager/led.c:296: set_leds(color * 3, 255 - color * 3, 0);
	mov	ar6,r7
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r6,a
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	dpl,a
	clr	a
	push	acc
	push	ar6
	lcall	_set_leds
	dec	sp
	dec	sp
	ret
00105$:
;	../LED_Manager/led.c:297: } else if(color < 170){
	cjne	r7,#0xaa,00121$
00121$:
	jnc	00102$
;	../LED_Manager/led.c:298: color -= 85;
	mov	ar6,r7
	mov	a,r6
	add	a,#0xab
;	../LED_Manager/led.c:299: set_leds(255 - color * 3, 0, color * 3);
	mov	r6,a
	mov	b,#0x03
	mul	ab
	mov	r5,a
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	dpl,a
	push	ar5
	clr	a
	push	acc
	lcall	_set_leds
	dec	sp
	dec	sp
	ret
00102$:
;	../LED_Manager/led.c:301: color -= 170;
	mov	a,r7
	add	a,#0x56
;	../LED_Manager/led.c:302: set_leds(0, color * 3, 255 - color * 3);
	mov	r7,a
	mov	r6,a
	mov	a,r6
	mov	b,#0x03
	mul	ab
	setb	c
	subb	a,#0xff
	cpl	a
	mov	r6,a
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	push	ar6
	push	ar7
	mov	dpl,#0x00
	lcall	_set_leds
	dec	sp
	dec	sp
;	../LED_Manager/led.c:304: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'whiteout'
;------------------------------------------------------------
;	../LED_Manager/led.c:306: void whiteout(){
;	-----------------------------------------
;	 function whiteout
;	-----------------------------------------
_whiteout:
;	../LED_Manager/led.c:307: set_leds(0xFF, 0xFF, 0xFF);
	mov	a,#0xff
	push	acc
	push	acc
	mov	dpl,#0xff
	lcall	_set_leds
	dec	sp
	dec	sp
;	../LED_Manager/led.c:308: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blackout'
;------------------------------------------------------------
;	../LED_Manager/led.c:310: void blackout(){
;	-----------------------------------------
;	 function blackout
;	-----------------------------------------
_blackout:
;	../LED_Manager/led.c:311: set_leds(0,0,0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x00
	lcall	_set_leds
	dec	sp
	dec	sp
;	../LED_Manager/led.c:312: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rngU32'
;------------------------------------------------------------
;past                      Allocated with name '_rngU32_past_65536_107'
;present                   Allocated with name '_rngU32_present_65536_107'
;------------------------------------------------------------
;	../LED_Manager/led.c:315: uint32_t rngU32(){
;	-----------------------------------------
;	 function rngU32
;	-----------------------------------------
_rngU32:
;	../LED_Manager/led.c:319: present = past + present;
	mov	a,_rngU32_present_65536_107
	add	a,_rngU32_past_65536_107
	mov	_rngU32_present_65536_107,a
	mov	a,(_rngU32_present_65536_107 + 1)
	addc	a,(_rngU32_past_65536_107 + 1)
	mov	(_rngU32_present_65536_107 + 1),a
	mov	a,(_rngU32_present_65536_107 + 2)
	addc	a,(_rngU32_past_65536_107 + 2)
	mov	(_rngU32_present_65536_107 + 2),a
	mov	a,(_rngU32_present_65536_107 + 3)
	addc	a,(_rngU32_past_65536_107 + 3)
	mov	(_rngU32_present_65536_107 + 3),a
;	../LED_Manager/led.c:320: past = present - past;
	mov	a,_rngU32_present_65536_107
	clr	c
	subb	a,_rngU32_past_65536_107
	mov	_rngU32_past_65536_107,a
	mov	a,(_rngU32_present_65536_107 + 1)
	subb	a,(_rngU32_past_65536_107 + 1)
	mov	(_rngU32_past_65536_107 + 1),a
	mov	a,(_rngU32_present_65536_107 + 2)
	subb	a,(_rngU32_past_65536_107 + 2)
	mov	(_rngU32_past_65536_107 + 2),a
	mov	a,(_rngU32_present_65536_107 + 3)
	subb	a,(_rngU32_past_65536_107 + 3)
	mov	(_rngU32_past_65536_107 + 3),a
;	../LED_Manager/led.c:322: return present;
	mov	dpl,_rngU32_present_65536_107
	mov	dph,(_rngU32_present_65536_107 + 1)
	mov	b,(_rngU32_present_65536_107 + 2)
	mov	a,(_rngU32_present_65536_107 + 3)
;	../LED_Manager/led.c:323: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_leds'
;------------------------------------------------------------
;green                     Allocated to stack - _bp -3
;blue                      Allocated to stack - _bp -4
;red                       Allocated to registers r7 
;dimmer                    Allocated to registers r6 
;------------------------------------------------------------
;	../LED_Manager/led.c:325: void set_leds(uint8_t red, uint8_t green, uint8_t blue){
;	-----------------------------------------
;	 function set_leds
;	-----------------------------------------
_set_leds:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../LED_Manager/led.c:326: uint8_t dimmer = 0xFF;
	mov	r6,#0xff
;	../LED_Manager/led.c:328: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	push	ar7
	push	ar6
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00104$
;	../LED_Manager/led.c:329: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11){
	mov	dpl,#0x0e
	push	ar7
	push	ar6
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00104$
;	../LED_Manager/led.c:330: dimmer = get_dmx_value(DMX_M11_DIMMER_INDEX);
	mov	r6,(_DMX + 0x0003)
00104$:
;	../LED_Manager/led.c:334: if(dimmer == 0xFF){
	cjne	r6,#0xff,00106$
;	../LED_Manager/led.c:335: PWMDATA11H = red;
	mov	_PWMDATA11H,r7
;	../LED_Manager/led.c:336: PWMDATA17H = green;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	_PWMDATA17H,@r0
;	../LED_Manager/led.c:337: PWMDATA14H = blue;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	_PWMDATA14H,@r0
	sjmp	00108$
00106$:
;	../LED_Manager/led.c:339: PWMDATA11H = ((uint8_t)((((uint16_t) red) * ((uint16_t)dimmer)) >> 8));
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar4
	push	ar6
	push	ar4
	mov	dpl,r7
	mov	dph,r5
	lcall	__mulint
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar6
	mov	_PWMDATA11H,r7
;	../LED_Manager/led.c:340: PWMDATA17H = ((uint8_t)((((uint16_t) green) * ((uint16_t)dimmer)) >> 8));
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	mov	r7,#0x00
	push	ar6
	push	ar4
	push	ar6
	push	ar4
	mov	dpl,r5
	mov	dph,r7
	lcall	__mulint
	mov	r7,dph
	dec	sp
	dec	sp
	mov	_PWMDATA17H,r7
;	../LED_Manager/led.c:341: PWMDATA14H = ((uint8_t)((((uint16_t) blue) * ((uint16_t)dimmer)) >> 8));
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	_PWMDATA14H,r7
00108$:
;	../LED_Manager/led.c:343: }
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
