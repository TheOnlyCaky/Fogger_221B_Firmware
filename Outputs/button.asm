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
	jc	00109$
;	../UI_Manager/Button_Manager/button.c:20: if(pressOK >= PRESS_OK_COUNT && pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jnc	00106$
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00106$
;	../UI_Manager/Button_Manager/button.c:21: switch (lastAction)
	mov	a,#0x01
	cjne	a,_get_button_action_lastAction_65536_3,00474$
	sjmp	00103$
00474$:
	mov	a,#0x03
	cjne	a,_get_button_action_lastAction_65536_3,00475$
	sjmp	00101$
00475$:
	mov	a,#0x0b
;	../UI_Manager/Button_Manager/button.c:23: case BUTTON_UP:
	cjne	a,_get_button_action_lastAction_65536_3,00106$
	sjmp	00102$
00101$:
;	../UI_Manager/Button_Manager/button.c:24: retVal = BUTTON_UP;
	mov	r5,#0x03
;	../UI_Manager/Button_Manager/button.c:25: break;
;	../UI_Manager/Button_Manager/button.c:26: case BUTTON_DOWN:
	sjmp	00106$
00102$:
;	../UI_Manager/Button_Manager/button.c:27: retVal = BUTTON_DOWN;
	mov	r5,#0x0b
;	../UI_Manager/Button_Manager/button.c:28: break;
;	../UI_Manager/Button_Manager/button.c:29: case BUTTON_TIMER:
	sjmp	00106$
00103$:
;	../UI_Manager/Button_Manager/button.c:30: retVal = BUTTON_TIMER;
	mov	r5,#0x01
;	../UI_Manager/Button_Manager/button.c:32: }
00106$:
;	../UI_Manager/Button_Manager/button.c:34: lastAction = BUTTON_NA;
	mov	_get_button_action_lastAction_65536_3,#0x00
;	../UI_Manager/Button_Manager/button.c:35: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00109$:
;	../UI_Manager/Button_Manager/button.c:43: if(level <= BUTTON_FUNCTION_UPPER && level > BUTTON_FUNCTION_LOWER){ 
	clr	c
	mov	a,#0x7a
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00118$
	mov	a,#0x66
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00118$
;	../UI_Manager/Button_Manager/button.c:44: if(lastAction == BUTTON_FUNCTION){ 
	mov	a,#0x02
	cjne	a,_get_button_action_lastAction_65536_3,00115$
;	../UI_Manager/Button_Manager/button.c:45: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jc	00116$
;	../UI_Manager/Button_Manager/button.c:46: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jnc	00116$
;	../UI_Manager/Button_Manager/button.c:47: retVal = BUTTON_FUNCTION;
	mov	r5,#0x02
	sjmp	00116$
00115$:
;	../UI_Manager/Button_Manager/button.c:51: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00116$:
;	../UI_Manager/Button_Manager/button.c:54: lastAction = BUTTON_FUNCTION;
	mov	_get_button_action_lastAction_65536_3,#0x02
00118$:
;	../UI_Manager/Button_Manager/button.c:58: if(level <= BUTTON_UP_UPPER && level > BUTTON_UP_LOWER){ 
	clr	c
	mov	a,#0x48
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00129$
	mov	a,#0x2f
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00129$
;	../UI_Manager/Button_Manager/button.c:59: if(lastAction == BUTTON_UP){ 
	mov	a,#0x03
	cjne	a,_get_button_action_lastAction_65536_3,00126$
;	../UI_Manager/Button_Manager/button.c:60: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00123$
;	../UI_Manager/Button_Manager/button.c:61: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jnc	00127$
;	../UI_Manager/Button_Manager/button.c:62: retVal = BUTTON_UP_HOLD;
	mov	r5,#0x1e
	sjmp	00127$
00123$:
;	../UI_Manager/Button_Manager/button.c:65: retVal = BUTTON_UP_BURST;
	mov	r5,#0x1f
	sjmp	00127$
00126$:
;	../UI_Manager/Button_Manager/button.c:68: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00127$:
;	../UI_Manager/Button_Manager/button.c:71: lastAction = BUTTON_UP;
	mov	_get_button_action_lastAction_65536_3,#0x03
00129$:
;	../UI_Manager/Button_Manager/button.c:75: if(level <= BUTTON_DOWN_UPPER && level > BUTTON_DOWN_LOWER){
	clr	c
	mov	a,#0xaa
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00140$
	mov	a,#0x8c
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00140$
;	../UI_Manager/Button_Manager/button.c:76: if(lastAction == BUTTON_DOWN){
	mov	a,#0x0b
	cjne	a,_get_button_action_lastAction_65536_3,00137$
;	../UI_Manager/Button_Manager/button.c:77: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00134$
;	../UI_Manager/Button_Manager/button.c:78: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jnc	00138$
;	../UI_Manager/Button_Manager/button.c:79: retVal = BUTTON_DOWN_HOLD;
	mov	r5,#0x6e
	sjmp	00138$
00134$:
;	../UI_Manager/Button_Manager/button.c:82: retVal = BUTTON_DOWN_BURST;
	mov	r5,#0x6f
	sjmp	00138$
00137$:
;	../UI_Manager/Button_Manager/button.c:85: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00138$:
;	../UI_Manager/Button_Manager/button.c:88: lastAction = BUTTON_DOWN;
	mov	_get_button_action_lastAction_65536_3,#0x0b
00140$:
;	../UI_Manager/Button_Manager/button.c:92: if(level <= BUTTON_BURST_UP_UPPER && level > BUTTON_BURST_UP_LOWER){
	clr	c
	mov	a,#0x76
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00150$
	mov	a,#0x58
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jnc	00150$
;	../UI_Manager/Button_Manager/button.c:93: if(lastAction == BUTTON_BURST_UP){ 
	mov	a,#0x07
	cjne	a,_get_button_action_lastAction_65536_3,00147$
;	../UI_Manager/Button_Manager/button.c:94: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00148$
;	../UI_Manager/Button_Manager/button.c:95: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jnc	00148$
;	../UI_Manager/Button_Manager/button.c:96: retVal = BUTTON_BURST_UP;
	mov	r5,#0x07
	sjmp	00148$
00147$:
;	../UI_Manager/Button_Manager/button.c:100: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00148$:
;	../UI_Manager/Button_Manager/button.c:103: lastAction = BUTTON_BURST_UP;
	mov	_get_button_action_lastAction_65536_3,#0x07
00150$:
;	../UI_Manager/Button_Manager/button.c:107: if(level <= BUTTON_TIMER_UPPER && level > BUTTON_TIMER_LOWER){
	clr	c
	mov	a,#0x98
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00160$
	mov	a,#0x84
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00160$
;	../UI_Manager/Button_Manager/button.c:108: if(lastAction == BUTTON_TIMER){ 
	mov	a,#0x01
	cjne	a,_get_button_action_lastAction_65536_3,00157$
;	../UI_Manager/Button_Manager/button.c:109: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00158$
;	../UI_Manager/Button_Manager/button.c:110: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jnc	00158$
;	../UI_Manager/Button_Manager/button.c:111: retVal = BUTTON_TIMER_HOLD;
	mov	r5,#0xc8
	sjmp	00158$
00157$:
;	../UI_Manager/Button_Manager/button.c:115: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00158$:
;	../UI_Manager/Button_Manager/button.c:118: lastAction = BUTTON_TIMER;
	mov	_get_button_action_lastAction_65536_3,#0x01
00160$:
;	../UI_Manager/Button_Manager/button.c:122: if(level <= BUTTON_MANUAL_UPPER && level > BUTTON_MANUAL_LOWER){
	clr	c
	mov	a,#0x12
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00170$
	mov	a,#0xfe
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00170$
;	../UI_Manager/Button_Manager/button.c:123: if(lastAction == BUTTON_MANUAL){ 
	mov	a,#0x08
	cjne	a,_get_button_action_lastAction_65536_3,00167$
;	../UI_Manager/Button_Manager/button.c:124: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jc	00168$
;	../UI_Manager/Button_Manager/button.c:125: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jnc	00168$
;	../UI_Manager/Button_Manager/button.c:126: retVal = BUTTON_MANUAL;
	mov	r5,#0x08
	sjmp	00168$
00167$:
;	../UI_Manager/Button_Manager/button.c:130: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00168$:
;	../UI_Manager/Button_Manager/button.c:133: lastAction = BUTTON_MANUAL;
	mov	_get_button_action_lastAction_65536_3,#0x08
00170$:
;	../UI_Manager/Button_Manager/button.c:137: if(level <= BUTTON_BURST_UPPER && level > BUTTON_BURST_LOWER){
	clr	c
	mov	a,#0xc6
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00181$
	mov	a,#0xa8
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jnc	00181$
;	../UI_Manager/Button_Manager/button.c:138: if(lastAction == BUTTON_BURST){ 
	mov	a,#0x05
	cjne	a,_get_button_action_lastAction_65536_3,00178$
;	../UI_Manager/Button_Manager/button.c:139: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jc	00175$
;	../UI_Manager/Button_Manager/button.c:140: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jnc	00179$
;	../UI_Manager/Button_Manager/button.c:141: retVal = BUTTON_BURST;
	mov	r5,#0x05
	sjmp	00179$
00175$:
;	../UI_Manager/Button_Manager/button.c:144: retVal = BUTTON_BURST;
	mov	r5,#0x05
	sjmp	00179$
00178$:
;	../UI_Manager/Button_Manager/button.c:147: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00179$:
;	../UI_Manager/Button_Manager/button.c:150: lastAction = BUTTON_BURST;
	mov	_get_button_action_lastAction_65536_3,#0x05
00181$:
;	../UI_Manager/Button_Manager/button.c:154: if(level <= BUTTON_FUN_MAN_UPPER && level > BUTTON_FUN_MAN_LOWER){
	clr	c
	mov	a,#0xea
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jc	00191$
	mov	a,#0xcc
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00191$
;	../UI_Manager/Button_Manager/button.c:155: if(lastAction == BUTTON_FUN_MAN){ 
	mov	a,#0x09
	cjne	a,_get_button_action_lastAction_65536_3,00188$
;	../UI_Manager/Button_Manager/button.c:156: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00189$
;	../UI_Manager/Button_Manager/button.c:157: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jnc	00189$
;	../UI_Manager/Button_Manager/button.c:158: retVal = BUTTON_FUN_MAN;
	mov	r5,#0x09
	sjmp	00189$
00188$:
;	../UI_Manager/Button_Manager/button.c:162: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00189$:
;	../UI_Manager/Button_Manager/button.c:165: lastAction = BUTTON_FUN_MAN;
	mov	_get_button_action_lastAction_65536_3,#0x09
00191$:
;	../UI_Manager/Button_Manager/button.c:169: if(level <= BUTTON_MAN_BURST_UPPER && level > BUTTON_MAN_BURST_LOWER){
	clr	c
	mov	a,#0xb8
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jc	00202$
	mov	a,#0xa4
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00202$
;	../UI_Manager/Button_Manager/button.c:170: if(lastAction == BUTTON_MAN_BURST){ 
	mov	a,#0x0a
	cjne	a,_get_button_action_lastAction_65536_3,00199$
;	../UI_Manager/Button_Manager/button.c:171: if(pressOK < PRESS_HOLD_COUNT){
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jc	00196$
;	../UI_Manager/Button_Manager/button.c:172: if(++pressOK >= PRESS_HOLD_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0xe9
	add	a,_get_button_action_pressOK_65536_3
	jnc	00200$
;	../UI_Manager/Button_Manager/button.c:173: retVal = BUTTON_MAN_BURST;
	mov	r5,#0x0a
	sjmp	00200$
00196$:
;	../UI_Manager/Button_Manager/button.c:176: retVal = BUTTON_MAN_BURST;
	mov	r5,#0x0a
	sjmp	00200$
00199$:
;	../UI_Manager/Button_Manager/button.c:179: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00200$:
;	../UI_Manager/Button_Manager/button.c:182: lastAction = BUTTON_MAN_BURST;
	mov	_get_button_action_lastAction_65536_3,#0x0a
00202$:
;	../UI_Manager/Button_Manager/button.c:186: if(level <= BUTTON_FUN_TIME_UPPER && level > BUTTON_FUN_TIME_LOWER){
	clr	c
	mov	a,#0x2a
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jc	00212$
	mov	a,#0x16
	subb	a,r6
	mov	a,#0x03
	subb	a,r7
	jnc	00212$
;	../UI_Manager/Button_Manager/button.c:187: if(lastAction == BUTTON_FUN_TIME){ 
	mov	a,#0x04
	cjne	a,_get_button_action_lastAction_65536_3,00209$
;	../UI_Manager/Button_Manager/button.c:188: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jc	00210$
;	../UI_Manager/Button_Manager/button.c:189: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jnc	00210$
;	../UI_Manager/Button_Manager/button.c:190: retVal = BUTTON_FUN_TIME;
	mov	r5,#0x04
	sjmp	00210$
00209$:
;	../UI_Manager/Button_Manager/button.c:194: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00210$:
;	../UI_Manager/Button_Manager/button.c:197: lastAction = BUTTON_FUN_TIME;
	mov	_get_button_action_lastAction_65536_3,#0x04
00212$:
;	../UI_Manager/Button_Manager/button.c:201: if(level <= BUTTON_FUN_BURST_UPPER && level > BUTTON_FUN_BURST_LOWER){
	clr	c
	mov	a,#0x8a
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jc	00223$
	mov	a,#0x76
	subb	a,r6
	mov	a,#0x02
	subb	a,r7
	jnc	00223$
;	../UI_Manager/Button_Manager/button.c:202: if(lastAction == BUTTON_FUN_BURST){ 
	mov	a,#0x06
	cjne	a,_get_button_action_lastAction_65536_3,00220$
;	../UI_Manager/Button_Manager/button.c:203: if(pressOK < PRESS_OK_COUNT){
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jc	00217$
;	../UI_Manager/Button_Manager/button.c:204: if(++pressOK >= PRESS_OK_COUNT){
	inc	_get_button_action_pressOK_65536_3
	mov	a,#0x100 - 0x08
	add	a,_get_button_action_pressOK_65536_3
	jnc	00221$
;	../UI_Manager/Button_Manager/button.c:205: retVal = BUTTON_FUN_BURST;
	mov	r5,#0x06
	sjmp	00221$
00217$:
;	../UI_Manager/Button_Manager/button.c:208: retVal = BUTTON_FUN_BURST;
	mov	r5,#0x06
	sjmp	00221$
00220$:
;	../UI_Manager/Button_Manager/button.c:211: pressOK = 0;
	mov	_get_button_action_pressOK_65536_3,#0x00
00221$:
;	../UI_Manager/Button_Manager/button.c:214: lastAction = BUTTON_FUN_BURST;
	mov	_get_button_action_lastAction_65536_3,#0x06
00223$:
;	../UI_Manager/Button_Manager/button.c:217: return retVal;
	mov	dpl,r5
;	../UI_Manager/Button_Manager/button.c:218: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
