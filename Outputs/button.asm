;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module button
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_adc_value
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
	.globl _get_button_action
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
_get_button_action_lastAction_65536_3:
	.ds 1
_get_button_action_pressOK_65536_3:
	.ds 1
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
;Allocation info for local variables in function 'get_button_action'
;------------------------------------------------------------
;lastAction                Allocated with name '_get_button_action_lastAction_65536_3'
;pressOK                   Allocated with name '_get_button_action_pressOK_65536_3'
;level                     Allocated to registers r6 r7 
;retVal                    Allocated to registers r5 
;------------------------------------------------------------
;	../UI_Manager/Button_Manager/button.c:14: static uint8_t lastAction = BUTTON_NA;
	mov	_get_button_action_lastAction_65536_3,#0x00
;	../UI_Manager/Button_Manager/button.c:15: static uint8_t pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
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
;Allocation info for local variables in function 'get_button_action'
;------------------------------------------------------------
;lastAction                Allocated with name '_get_button_action_lastAction_65536_3'
;pressOK                   Allocated with name '_get_button_action_pressOK_65536_3'
;level                     Allocated to registers r6 r7 
;retVal                    Allocated to registers r5 
;------------------------------------------------------------
;	../UI_Manager/Button_Manager/button.c:13: uint8_t get_button_action(){
;	-----------------------------------------
;	 function get_button_action
;	-----------------------------------------
_get_button_action:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../UI_Manager/Button_Manager/button.c:16: uint16_t level = get_adc_value(ADC_BUTTON);
	mov	dpl,#0x01
	lcall	_get_adc_value
	mov	r6,dpl
	mov	r7,dph
;	../UI_Manager/Button_Manager/button.c:17: uint8_t retVal = BUTTON_NA;
	mov	r5,#0x00
;	../UI_Manager/Button_Manager/button.c:19: if(level >= BUTTON_NA_LOWER){ 
	clr	c
	mov	a,r6
	subb	a,#0xa2
	mov	a,r7
	subb	a,#0x03
	jc	00108$
;	../UI_Manager/Button_Manager/button.c:20: if(pressOK >= PRESS_OK_COUNT && pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00105$
	mov	a,#0x100 - 0x22
	add	a,_get_button_action_pressOK_65536_3
	jc	00105$
;	../UI_Manager/Button_Manager/button.c:21: switch (lastAction)
	mov	a,#0x03
	cjne	a,_get_button_action_lastAction_65536_3,00468$
	sjmp	00101$
00468$:
	mov	a,#0x0a
;	../UI_Manager/Button_Manager/button.c:23: case BUTTON_UP:
	cjne	a,_get_button_action_lastAction_65536_3,00105$
	sjmp	00102$
00101$:
;	../UI_Manager/Button_Manager/button.c:24: retVal = BUTTON_UP;
	mov	r5,#0x03
;	../UI_Manager/Button_Manager/button.c:25: break;
;	../UI_Manager/Button_Manager/button.c:26: case BUTTON_DOWN:
	sjmp	00105$
00102$:
;	../UI_Manager/Button_Manager/button.c:27: retVal = BUTTON_DOWN;
	mov	r5,#0x0a
;	../UI_Manager/Button_Manager/button.c:29: }
00105$:
;	../UI_Manager/Button_Manager/button.c:31: lastAction = BUTTON_NA;
	mov	_get_button_action_lastAction_65536_3,#0x00
;	../UI_Manager/Button_Manager/button.c:32: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00108$:
;	../UI_Manager/Button_Manager/button.c:40: if(level <= BUTTON_FUNCTION_UPPER && level > BUTTON_FUNCTION_LOWER){ 
	clr	c
	mov	a,#0x7a
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00117$
	mov	a,#0x66
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00117$
;	../UI_Manager/Button_Manager/button.c:41: if(lastAction == BUTTON_FUNCTION){ 
	mov	a,#0x02
	cjne	a,_get_button_action_lastAction_65536_3,00114$
;	../UI_Manager/Button_Manager/button.c:42: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00115$
;	../UI_Manager/Button_Manager/button.c:43: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00115$
;	../UI_Manager/Button_Manager/button.c:44: retVal = BUTTON_FUNCTION;
	mov	r5,#0x02
	sjmp	00115$
00114$:
;	../UI_Manager/Button_Manager/button.c:48: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00115$:
;	../UI_Manager/Button_Manager/button.c:51: lastAction = BUTTON_FUNCTION;
	mov	_get_button_action_lastAction_65536_3,#0x02
00117$:
;	../UI_Manager/Button_Manager/button.c:55: if(level <= BUTTON_UP_UPPER && level > BUTTON_UP_LOWER){ 
	clr	c
	mov	a,#0x48
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00128$
	mov	a,#0x2f
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00128$
;	../UI_Manager/Button_Manager/button.c:56: if(lastAction == BUTTON_UP){ 
	mov	a,#0x03
	cjne	a,_get_button_action_lastAction_65536_3,00125$
;	../UI_Manager/Button_Manager/button.c:57: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0x22
	add	a,_get_button_action_pressOK_65536_3
	jc	00122$
;	../UI_Manager/Button_Manager/button.c:58: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x22
	add	a,_get_button_action_pressOK_65536_3
	jnc	00126$
;	../UI_Manager/Button_Manager/button.c:59: retVal = BUTTON_UP_HOLD;
	mov	r5,#0x1e
	sjmp	00126$
00122$:
;	../UI_Manager/Button_Manager/button.c:62: retVal = BUTTON_UP_BURST;
	mov	r5,#0x1f
	sjmp	00126$
00125$:
;	../UI_Manager/Button_Manager/button.c:65: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00126$:
;	../UI_Manager/Button_Manager/button.c:68: lastAction = BUTTON_UP;
	mov	_get_button_action_lastAction_65536_3,#0x03
00128$:
;	../UI_Manager/Button_Manager/button.c:72: if(level <= BUTTON_DOWN_UPPER && level > BUTTON_DOWN_LOWER){
	clr	c
	mov	a,#0xaa
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00139$
	mov	a,#0x8c
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00139$
;	../UI_Manager/Button_Manager/button.c:73: if(lastAction == BUTTON_DOWN){
	mov	a,#0x0a
	cjne	a,_get_button_action_lastAction_65536_3,00136$
;	../UI_Manager/Button_Manager/button.c:74: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0x22
	add	a,_get_button_action_pressOK_65536_3
	jc	00133$
;	../UI_Manager/Button_Manager/button.c:75: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x22
	add	a,_get_button_action_pressOK_65536_3
	jnc	00137$
;	../UI_Manager/Button_Manager/button.c:76: retVal = BUTTON_DOWN_HOLD;
	mov	r5,#0x64
	sjmp	00137$
00133$:
;	../UI_Manager/Button_Manager/button.c:79: retVal = BUTTON_DOWN_BURST;
	mov	r5,#0x65
	sjmp	00137$
00136$:
;	../UI_Manager/Button_Manager/button.c:82: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00137$:
;	../UI_Manager/Button_Manager/button.c:85: lastAction = BUTTON_DOWN;
	mov	_get_button_action_lastAction_65536_3,#0x0a
00139$:
;	../UI_Manager/Button_Manager/button.c:89: if(level <= BUTTON_FUN_UP_UPPER && level > BUTTON_FUN_UP_LOWER){
	clr	c
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00149$
	mov	a,r6
	orl	a,r7
	jz	00149$
;	../UI_Manager/Button_Manager/button.c:90: if(lastAction == BUTTON_FUN_UP){ 
	mov	a,#0x0c
	cjne	a,_get_button_action_lastAction_65536_3,00146$
;	../UI_Manager/Button_Manager/button.c:91: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00147$
;	../UI_Manager/Button_Manager/button.c:92: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00147$
;	../UI_Manager/Button_Manager/button.c:93: retVal = BUTTON_FUN_UP;
	mov	r5,#0x0c
	sjmp	00147$
00146$:
;	../UI_Manager/Button_Manager/button.c:97: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00147$:
;	../UI_Manager/Button_Manager/button.c:100: lastAction = BUTTON_FUN_UP;
	mov	_get_button_action_lastAction_65536_3,#0x0c
00149$:
;	../UI_Manager/Button_Manager/button.c:104: if(level <= BUTTON_TIMER_UPPER && level > BUTTON_TIMER_LOWER){
	clr	c
	mov	a,#0x98
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00159$
	mov	a,#0x84
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00159$
;	../UI_Manager/Button_Manager/button.c:105: if(lastAction == BUTTON_TIMER){ 
	mov	a,#0x01
	cjne	a,_get_button_action_lastAction_65536_3,00156$
;	../UI_Manager/Button_Manager/button.c:106: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00157$
;	../UI_Manager/Button_Manager/button.c:107: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00157$
;	../UI_Manager/Button_Manager/button.c:108: retVal = BUTTON_TIMER;
	mov	r5,#0x01
	sjmp	00157$
00156$:
;	../UI_Manager/Button_Manager/button.c:112: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00157$:
;	../UI_Manager/Button_Manager/button.c:115: lastAction = BUTTON_TIMER;
	mov	_get_button_action_lastAction_65536_3,#0x01
00159$:
;	../UI_Manager/Button_Manager/button.c:119: if(level <= BUTTON_MANUAL_UPPER && level > BUTTON_MANUAL_LOWER){
	clr	c
	mov	a,#0x12
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00169$
	mov	a,#0xfe
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00169$
;	../UI_Manager/Button_Manager/button.c:120: if(lastAction == BUTTON_MANUAL){ 
	mov	a,#0x07
	cjne	a,_get_button_action_lastAction_65536_3,00166$
;	../UI_Manager/Button_Manager/button.c:121: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00167$
;	../UI_Manager/Button_Manager/button.c:122: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00167$
;	../UI_Manager/Button_Manager/button.c:123: retVal = BUTTON_MANUAL;
	mov	r5,#0x07
	sjmp	00167$
00166$:
;	../UI_Manager/Button_Manager/button.c:127: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00167$:
;	../UI_Manager/Button_Manager/button.c:130: lastAction = BUTTON_MANUAL;
	mov	_get_button_action_lastAction_65536_3,#0x07
00169$:
;	../UI_Manager/Button_Manager/button.c:134: if(level <= BUTTON_BURST_UPPER && level > BUTTON_BURST_LOWER){
	clr	c
	mov	a,#0xc6
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00180$
	mov	a,#0xa8
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jnc	00180$
;	../UI_Manager/Button_Manager/button.c:135: if(lastAction == BUTTON_BURST){ 
	mov	a,#0x05
	cjne	a,_get_button_action_lastAction_65536_3,00177$
;	../UI_Manager/Button_Manager/button.c:136: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00174$
;	../UI_Manager/Button_Manager/button.c:137: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00178$
;	../UI_Manager/Button_Manager/button.c:138: retVal = BUTTON_BURST;
	mov	r5,#0x05
	sjmp	00178$
00174$:
;	../UI_Manager/Button_Manager/button.c:141: retVal = BUTTON_BURST;
	mov	r5,#0x05
	sjmp	00178$
00177$:
;	../UI_Manager/Button_Manager/button.c:144: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00178$:
;	../UI_Manager/Button_Manager/button.c:147: lastAction = BUTTON_BURST;
	mov	_get_button_action_lastAction_65536_3,#0x05
00180$:
;	../UI_Manager/Button_Manager/button.c:151: if(level <= BUTTON_FUN_MAN_UPPER && level > BUTTON_FUN_MAN_LOWER){
	clr	c
	mov	a,#0xea
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jc	00190$
	mov	a,#0xcc
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00190$
;	../UI_Manager/Button_Manager/button.c:152: if(lastAction == BUTTON_FUN_MAN){ 
	mov	a,#0x08
	cjne	a,_get_button_action_lastAction_65536_3,00187$
;	../UI_Manager/Button_Manager/button.c:153: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00188$
;	../UI_Manager/Button_Manager/button.c:154: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00188$
;	../UI_Manager/Button_Manager/button.c:155: retVal = BUTTON_FUN_MAN;
	mov	r5,#0x08
	sjmp	00188$
00187$:
;	../UI_Manager/Button_Manager/button.c:159: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00188$:
;	../UI_Manager/Button_Manager/button.c:162: lastAction = BUTTON_FUN_MAN;
	mov	_get_button_action_lastAction_65536_3,#0x08
00190$:
;	../UI_Manager/Button_Manager/button.c:166: if(level <= BUTTON_MAN_BURST_UPPER && level > BUTTON_MAN_BURST_LOWER){
	clr	c
	mov	a,#0xb8
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jc	00200$
	mov	a,#0xa4
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00200$
;	../UI_Manager/Button_Manager/button.c:167: if(lastAction == BUTTON_MAN_BURST){ 
	mov	a,#0x09
	cjne	a,_get_button_action_lastAction_65536_3,00197$
;	../UI_Manager/Button_Manager/button.c:168: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0x22
	add	a,_get_button_action_pressOK_65536_3
	jc	00198$
;	../UI_Manager/Button_Manager/button.c:169: if(++pressOK >= PRESS_HOLD_COUNT + (34 * 5)){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xcc
	add	a,_get_button_action_pressOK_65536_3
	jnc	00198$
;	../UI_Manager/Button_Manager/button.c:170: retVal = BUTTON_MAN_BURST;
	mov	r5,#0x09
	sjmp	00198$
00197$:
;	../UI_Manager/Button_Manager/button.c:174: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00198$:
;	../UI_Manager/Button_Manager/button.c:177: lastAction = BUTTON_MAN_BURST;
	mov	_get_button_action_lastAction_65536_3,#0x09
00200$:
;	../UI_Manager/Button_Manager/button.c:181: if(level <= BUTTON_FUN_TIME_UPPER && level > BUTTON_FUN_TIME_LOWER){
	clr	c
	mov	a,#0x2a
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00210$
	mov	a,#0x16
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00210$
;	../UI_Manager/Button_Manager/button.c:182: if(lastAction == BUTTON_FUN_TIME){ 
	mov	a,#0x04
	cjne	a,_get_button_action_lastAction_65536_3,00207$
;	../UI_Manager/Button_Manager/button.c:183: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00208$
;	../UI_Manager/Button_Manager/button.c:184: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00208$
;	../UI_Manager/Button_Manager/button.c:185: retVal = BUTTON_FUN_TIME;
	mov	r5,#0x04
	sjmp	00208$
00207$:
;	../UI_Manager/Button_Manager/button.c:189: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00208$:
;	../UI_Manager/Button_Manager/button.c:192: lastAction = BUTTON_FUN_TIME;
	mov	_get_button_action_lastAction_65536_3,#0x04
00210$:
;	../UI_Manager/Button_Manager/button.c:196: if(level <= BUTTON_FUN_BURST_UPPER && level > BUTTON_FUN_BURST_LOWER){
	clr	c
	mov	a,#0x8a
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00221$
	mov	a,#0x76
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jnc	00221$
;	../UI_Manager/Button_Manager/button.c:197: if(lastAction == BUTTON_FUN_BURST){ 
	mov	a,#0x0b
	cjne	a,_get_button_action_lastAction_65536_3,00218$
;	../UI_Manager/Button_Manager/button.c:198: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jc	00215$
;	../UI_Manager/Button_Manager/button.c:199: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x03
	add	a,_get_button_action_pressOK_65536_3
	jnc	00219$
;	../UI_Manager/Button_Manager/button.c:200: retVal = BUTTON_FUN_BURST;
	mov	r5,#0x0b
	sjmp	00219$
00215$:
;	../UI_Manager/Button_Manager/button.c:203: retVal = BUTTON_FUN_BURST;
	mov	r5,#0x0b
	sjmp	00219$
00218$:
;	../UI_Manager/Button_Manager/button.c:206: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00219$:
;	../UI_Manager/Button_Manager/button.c:209: lastAction = BUTTON_FUN_BURST;
	mov	_get_button_action_lastAction_65536_3,#0x0b
00221$:
;	../UI_Manager/Button_Manager/button.c:212: return retVal;
	mov	dpl,r5
;	../UI_Manager/Button_Manager/button.c:213: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
