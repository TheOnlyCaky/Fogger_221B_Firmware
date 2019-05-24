;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module ui
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _exe_command
	.globl _write_char
	.globl _write_number
	.globl _write_string
	.globl _get_button_action
	.globl _power_heater
	.globl _power_pump
	.globl _tick_fogger
	.globl _set_dmx_address
	.globl _get_dmx_address
	.globl _set_runtime_data
	.globl _get_runtime_data
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
	.globl _tick_ui
	.globl _idlePage
	.globl _fogLevelPage
	.globl _fogIntervalPage
	.globl _fogDurationPage
	.globl _macroPage
	.globl _macroSpeedPage
	.globl _colorPage
	.globl _remotePage
	.globl _saveLoadPage
	.globl _dmxAddressPage
	.globl _dmxChannelPage
	.globl _set_ui_state
	.globl _get_ui_state
	.globl _getString
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
_State:
	.ds 1
_Changed:
	.ds 1
_changed:
	.ds 1
_tick_ui_bursting_65536_37:
	.ds 1
_idlePage_timer_65536_59:
	.ds 1
_idlePage_intervalOrDuration_65536_59:
	.ds 1
_idlePage_empty_65536_59:
	.ds 1
_idlePage_tock_65536_59:
	.ds 1
_idlePage_iconChange_65536_59:
	.ds 1
_idlePage_playing_65536_59:
	.ds 1
_saveLoadPage_slot_65536_142:
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
;Allocation info for local variables in function 'tick_ui'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;ss                        Allocated to registers r6 
;delay                     Allocated to stack - _bp +1
;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
;------------------------------------------------------------
;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
	mov	_tick_ui_bursting_65536_37,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'idlePage'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;timer                     Allocated with name '_idlePage_timer_65536_59'
;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
;empty                     Allocated with name '_idlePage_empty_65536_59'
;tock                      Allocated with name '_idlePage_tock_65536_59'
;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
;playing                   Allocated with name '_idlePage_playing_65536_59'
;------------------------------------------------------------
;	../UI_Manager/ui.c:210: static uint8_t timer = 0;
	mov	_idlePage_timer_65536_59,#0x00
;	../UI_Manager/ui.c:212: static uint8_t empty = 0x00;
	mov	_idlePage_empty_65536_59,#0x00
;	../UI_Manager/ui.c:213: static uint8_t tock = 0x00;
	mov	_idlePage_tock_65536_59,#0x00
;	../UI_Manager/ui.c:214: static uint8_t iconChange = 0x00;
	mov	_idlePage_iconChange_65536_59,#0x00
;	../UI_Manager/ui.c:215: static uint8_t playing = PAUSE;
	mov	_idlePage_playing_65536_59,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'saveLoadPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;slot                      Allocated with name '_saveLoadPage_slot_65536_142'
;------------------------------------------------------------
;	../UI_Manager/ui.c:747: static uint8_t slot = 0;
	mov	_saveLoadPage_slot_65536_142,#0x00
;	../UI_Manager/ui.c:12: static volatile uint8_t State = WELCOME_STATE;
	mov	_State,#0x45
;	../UI_Manager/ui.c:13: static volatile uint8_t Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:14: static volatile uint8_t changed = CHANGE_SCREEN_X;
	mov	_changed,#0xff
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
;Allocation info for local variables in function 'tick_ui'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;ss                        Allocated to registers r6 
;delay                     Allocated to stack - _bp +1
;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
;------------------------------------------------------------
;	../UI_Manager/ui.c:16: void tick_ui(void){
;	-----------------------------------------
;	 function tick_ui
;	-----------------------------------------
_tick_ui:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	../UI_Manager/ui.c:18: uint8_t action = get_button_action();
	lcall	_get_button_action
	mov	r7,dpl
;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_MAN_BURST){
	clr	a
	cjne	r7,#0x05,00416$
	inc	a
00416$:
	mov	r6,a
	jnz	00103$
	cjne	r7,#0x0a,00104$
00103$:
;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
	mov	a,r6
	jz	00174$
	mov	r5,#0x02
	mov	r6,#0x00
	sjmp	00175$
00174$:
	mov	r5,#0x03
	mov	r6,#0x00
00175$:
	mov	dpl,r5
	push	ar7
	lcall	_power_pump
	pop	ar7
;	../UI_Manager/ui.c:26: bursting |= BURSTING;
	mov	r5,_tick_ui_bursting_65536_37
	mov	r6,#0x00
	orl	ar5,#0x80
	mov	_tick_ui_bursting_65536_37,r5
	sjmp	00105$
00104$:
;	../UI_Manager/ui.c:27: } else if(bursting & BURSTING){
	mov	a,_tick_ui_bursting_65536_37
	jnb	acc.7,00105$
;	../UI_Manager/ui.c:28: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	push	ar7
	lcall	_power_pump
	pop	ar7
;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
	anl	_tick_ui_bursting_65536_37,#0x7f
00105$:
;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
	cjne	r7,#0x08,00108$
;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
	mov	dpl,#0x10
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x80,00176$
	mov	r5,#0x00
	mov	r6,#0x00
	sjmp	00177$
00176$:
	mov	r5,#0x80
	mov	r6,#0x00
00177$:
	push	ar7
	push	ar5
	clr	a
	push	acc
	mov	dpl,#0x10
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:36: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:39: set_playing(RESET);
	mov	_Playing,#0x02
;	../UI_Manager/ui.c:41: tick_fogger();
	lcall	_tick_fogger
	pop	ar7
00108$:
;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER_HOLD){
	cjne	r7,#0xc8,00113$
;	../UI_Manager/ui.c:47: if(get_playing() == PLAY){
	mov	a,#0x01
	cjne	a,_Playing,00110$
;	../UI_Manager/ui.c:48: set_playing(RESET);
	mov	_Playing,#0x02
	sjmp	00111$
00110$:
;	../UI_Manager/ui.c:50: set_playing(PLAY);
	mov	_Playing,#0x01
00111$:
;	../UI_Manager/ui.c:53: tick_fogger();
	lcall	_tick_fogger
;	../UI_Manager/ui.c:55: return;
	ljmp	00172$
00113$:
;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
	cjne	r7,#0x09,00431$
	sjmp	00432$
00431$:
	ljmp	00121$
00432$:
;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
	mov	dpl,#0x0f
	lcall	_get_runtime_data
	mov	a,dpl
	cpl	a
	mov	r6,a
	push	ar6
	clr	a
	push	acc
	mov	dpl,#0x0f
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
	mov	dpl,#0x0f
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00115$
;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00116$
00115$:
;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00116$:
;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:73: while(delay--){ ;; }
	mov	r0,_bp
	inc	r0
	mov	@r0,#0xb5
	inc	r0
	mov	@r0,#0xd8
	inc	r0
	mov	@r0,#0x07
	inc	r0
	mov	@r0,#0x00
00117$:
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00434$
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00434$
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00434$
	inc	r0
	dec	@r0
00434$:
	mov	a,r2
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00117$
;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:77: return;
	ljmp	00172$
00121$:
;	../UI_Manager/ui.c:81: if(action == BUTTON_BURST_UP){
	cjne	r7,#0x07,00436$
	sjmp	00437$
00436$:
	ljmp	00129$
00437$:
;	../UI_Manager/ui.c:83: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:84: if(get_heater_enabled()){
	mov	a,_Heat_Flag
	jb	acc.4,00123$
;	../UI_Manager/ui.c:85: write_string("Heater Off", 15, 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:86: power_heater(HEATER_DISABLE);
	mov	dpl,#0x01
	lcall	_power_heater
	sjmp	00124$
00123$:
;	../UI_Manager/ui.c:88: write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:89: power_heater(HEATER_ENABLE);
	mov	dpl,#0x00
	lcall	_power_heater
00124$:
;	../UI_Manager/ui.c:92: write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:96: while(delay--){ ;; }
	mov	r0,_bp
	inc	r0
	mov	@r0,#0xb5
	inc	r0
	mov	@r0,#0xd8
	inc	r0
	mov	@r0,#0x07
	inc	r0
	mov	@r0,#0x00
00125$:
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00439$
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00439$
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00439$
	inc	r0
	dec	@r0
00439$:
	mov	a,r2
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00125$
;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:100: return;
	ljmp	00172$
00129$:
;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_BURST){
	cjne	r7,#0x06,00441$
	sjmp	00442$
00441$:
	ljmp	00134$
00442$:
;	../UI_Manager/ui.c:106: ss = bursting & ~BURSTING;
	mov	a,#0x7f
	anl	a,_tick_ui_bursting_65536_37
	mov	r6,a
;	../UI_Manager/ui.c:108: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar6
	lcall	_exe_command
	pop	ar6
;	../UI_Manager/ui.c:110: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
	mov	ar4,r6
	mov	r5,#0x00
	push	ar6
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__modsint
	mov	r4,dpl
	dec	sp
	dec	sp
	mov	a,r4
	add	a,r4
	mov	r4,a
	add	a,#0x28
	mov	dpl,a
	push	ar4
	lcall	_getString
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
;	../UI_Manager/ui.c:111: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	a,#0x29
	add	a,r4
	mov	dpl,a
	lcall	_getString
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	../UI_Manager/ui.c:113: ss++;
	inc	r6
;	../UI_Manager/ui.c:115: bursting &= BURSTING;
	anl	_tick_ui_bursting_65536_37,#0x80
;	../UI_Manager/ui.c:116: bursting |= (ss & ~BURSTING);
	mov	a,#0x7f
	anl	a,r6
	orl	_tick_ui_bursting_65536_37,a
;	../UI_Manager/ui.c:120: while(delay--){ ;; }
	mov	r0,_bp
	inc	r0
	mov	@r0,#0xdd
	inc	r0
	mov	@r0,#0x8a
	inc	r0
	mov	@r0,#0x14
	inc	r0
	mov	@r0,#0x00
00130$:
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00443$
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00443$
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00443$
	inc	r0
	dec	@r0
00443$:
	mov	a,r2
	orl	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00130$
;	../UI_Manager/ui.c:122: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:124: return;
	ljmp	00172$
00134$:
;	../UI_Manager/ui.c:128: if(action == BUTTON_FUN_TIME){
	cjne	r7,#0x04,00136$
;	../UI_Manager/ui.c:129: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:130: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
00136$:
;	../UI_Manager/ui.c:135: if(Changed || 
	mov	a,_Changed
	jnz	00161$
;	../UI_Manager/ui.c:136: action == BUTTON_UP ||
	cjne	r7,#0x03,00448$
	sjmp	00161$
00448$:
;	../UI_Manager/ui.c:137: action == BUTTON_UP_HOLD||
	cjne	r7,#0x1e,00449$
	sjmp	00161$
00449$:
;	../UI_Manager/ui.c:138: action == BUTTON_UP_BURST ||
	cjne	r7,#0x1f,00450$
	sjmp	00161$
00450$:
;	../UI_Manager/ui.c:139: action == BUTTON_DOWN ||
	cjne	r7,#0x0b,00451$
	sjmp	00161$
00451$:
;	../UI_Manager/ui.c:140: action == BUTTON_DOWN_HOLD ||
	cjne	r7,#0x6e,00452$
	sjmp	00161$
00452$:
;	../UI_Manager/ui.c:141: action == BUTTON_DOWN_BURST ||
	cjne	r7,#0x6f,00453$
	sjmp	00161$
00453$:
;	../UI_Manager/ui.c:142: action == BUTTON_TIMER ||
	cjne	r7,#0x01,00454$
	sjmp	00161$
00454$:
;	../UI_Manager/ui.c:143: action == BUTTON_FUNCTION ||
	cjne	r7,#0x02,00455$
	sjmp	00161$
00455$:
;	../UI_Manager/ui.c:144: State == IDLE_STATE){
	mov	a,_State
	jz	00456$
	ljmp	00172$
00456$:
00161$:
;	../UI_Manager/ui.c:146: switch (State)
	mov	r6,_State
	cjne	r6,#0x01,00457$
	ljmp	00138$
00457$:
	cjne	r6,#0x02,00458$
	ljmp	00140$
00458$:
	cjne	r6,#0x03,00459$
	ljmp	00139$
00459$:
	cjne	r6,#0x04,00460$
	ljmp	00141$
00460$:
	cjne	r6,#0x05,00461$
	ljmp	00142$
00461$:
	cjne	r6,#0x06,00462$
	ljmp	00146$
00462$:
	cjne	r6,#0x07,00463$
	ljmp	00146$
00463$:
	cjne	r6,#0x08,00464$
	ljmp	00146$
00464$:
	cjne	r6,#0x09,00465$
	ljmp	00146$
00465$:
	cjne	r6,#0x0a,00466$
	ljmp	00149$
00466$:
	cjne	r6,#0x0b,00467$
	ljmp	00149$
00467$:
	cjne	r6,#0x0c,00468$
	ljmp	00149$
00468$:
	cjne	r6,#0x0d,00469$
	ljmp	00151$
00469$:
	cjne	r6,#0x0e,00470$
	ljmp	00151$
00470$:
	cjne	r6,#0x14,00471$
	ljmp	00152$
00471$:
	cjne	r6,#0x15,00472$
	ljmp	00153$
00472$:
	cjne	r6,#0x45,00473$
	sjmp	00474$
00473$:
	ljmp	00154$
00474$:
;	../UI_Manager/ui.c:151: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:152: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	swap	a
	push	acc
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:153: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:155: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:156: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:158: break;
;	../UI_Manager/ui.c:159: case MANUAL_FOG_POWER_STATE:
	sjmp	00172$
00138$:
;	../UI_Manager/ui.c:160: fogLevelPage(action);
	mov	dpl,r7
	lcall	_fogLevelPage
;	../UI_Manager/ui.c:161: break;
;	../UI_Manager/ui.c:162: case MANUAL_FOG_INTERVAL_STATE:
	sjmp	00172$
00139$:
;	../UI_Manager/ui.c:163: fogIntervalPage(action);
	mov	dpl,r7
	lcall	_fogIntervalPage
;	../UI_Manager/ui.c:164: break;
;	../UI_Manager/ui.c:165: case MANUAL_FOG_DURATION_STATE:
	sjmp	00172$
00140$:
;	../UI_Manager/ui.c:166: fogDurationPage(action);
	mov	dpl,r7
	lcall	_fogDurationPage
;	../UI_Manager/ui.c:167: break;
;	../UI_Manager/ui.c:168: case MANUAL_COLOR_MACRO_STATE:
	sjmp	00172$
00141$:
;	../UI_Manager/ui.c:169: macroPage(action);
	mov	dpl,r7
	lcall	_macroPage
;	../UI_Manager/ui.c:170: break;
;	../UI_Manager/ui.c:171: case MANUAL_MACRO_SPEED_STATE:
	sjmp	00172$
00142$:
;	../UI_Manager/ui.c:172: macroSpeedPage(action);
	mov	dpl,r7
	lcall	_macroSpeedPage
;	../UI_Manager/ui.c:173: break;
;	../UI_Manager/ui.c:177: case MANUAL_STROBE_STATE:
	sjmp	00172$
00146$:
;	../UI_Manager/ui.c:178: colorPage(action);
	mov	dpl,r7
	lcall	_colorPage
;	../UI_Manager/ui.c:179: break;
;	../UI_Manager/ui.c:182: case MANUAL_REMOTE_ACTION_6_STATE:
	sjmp	00172$
00149$:
;	../UI_Manager/ui.c:183: remotePage(action);
	mov	dpl,r7
	lcall	_remotePage
;	../UI_Manager/ui.c:184: break;
;	../UI_Manager/ui.c:186: case MANUAL_SAVE_SETTINGS_STATE:
	sjmp	00172$
00151$:
;	../UI_Manager/ui.c:187: saveLoadPage(action);
	mov	dpl,r7
	lcall	_saveLoadPage
;	../UI_Manager/ui.c:188: break;
;	../UI_Manager/ui.c:189: case DMX_ADDRESS_STATE:
	sjmp	00172$
00152$:
;	../UI_Manager/ui.c:190: dmxAddressPage(action);
	mov	dpl,r7
	lcall	_dmxAddressPage
;	../UI_Manager/ui.c:191: break;
;	../UI_Manager/ui.c:192: case DMX_CHANNEL_MODE_STATE:
	sjmp	00172$
00153$:
;	../UI_Manager/ui.c:193: dmxChannelPage(action);
	mov	dpl,r7
	lcall	_dmxChannelPage
;	../UI_Manager/ui.c:194: break;
;	../UI_Manager/ui.c:195: default: //IDLE state
	sjmp	00172$
00154$:
;	../UI_Manager/ui.c:196: idlePage();
	push	ar7
	lcall	_idlePage
	pop	ar7
;	../UI_Manager/ui.c:198: if(action == BUTTON_FUNCTION){
	cjne	r7,#0x02,00158$
;	../UI_Manager/ui.c:199: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
	sjmp	00172$
00158$:
;	../UI_Manager/ui.c:200: } else if(action == BUTTON_TIMER){
	cjne	r7,#0x01,00172$
;	../UI_Manager/ui.c:201: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:204: }
00172$:
;	../UI_Manager/ui.c:207: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'idlePage'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;timer                     Allocated with name '_idlePage_timer_65536_59'
;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
;empty                     Allocated with name '_idlePage_empty_65536_59'
;tock                      Allocated with name '_idlePage_tock_65536_59'
;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
;playing                   Allocated with name '_idlePage_playing_65536_59'
;------------------------------------------------------------
;	../UI_Manager/ui.c:209: void idlePage(){
;	-----------------------------------------
;	 function idlePage
;	-----------------------------------------
_idlePage:
;	../UI_Manager/ui.c:218: if(empty){
	mov	a,_idlePage_empty_65536_59
	jz	00107$
;	../UI_Manager/ui.c:219: if(get_fog_fluid_level() == TANK_FULL){
	mov	a,#0x01
	cjne	a,_Fluid_Level,00104$
;	../UI_Manager/ui.c:220: empty = 0x00;
	mov	_idlePage_empty_65536_59,#0x00
;	../UI_Manager/ui.c:221: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
	ret
00104$:
;	../UI_Manager/ui.c:222: } else if(Changed){
	mov	a,_Changed
	jz	00105$
;	../UI_Manager/ui.c:223: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:224: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:225: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	swap	a
	push	acc
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:226: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00105$:
;	../UI_Manager/ui.c:229: return;
	ret
00107$:
;	../UI_Manager/ui.c:233: if(get_fog_fluid_level() == TANK_EMPTY && get_heated() == HEATED){
	mov	a,_Fluid_Level
	jnz	00109$
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00109$
	cjne	r7,#0x00,00109$
;	../UI_Manager/ui.c:235: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	swap	a
	push	acc
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:236: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:238: empty = 0xFF;
	mov	_idlePage_empty_65536_59,#0xff
;	../UI_Manager/ui.c:240: return;
	ret
00109$:
;	../UI_Manager/ui.c:243: if(Changed){
	mov	a,_Changed
	jnz	00344$
	ljmp	00119$
00344$:
;	../UI_Manager/ui.c:244: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:245: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:246: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:247: timer = 0xFF;
	mov	_idlePage_timer_65536_59,#0xff
;	../UI_Manager/ui.c:248: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
	mov	_idlePage_intervalOrDuration_65536_59,#0x55
;	../UI_Manager/ui.c:250: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00116$
;	../UI_Manager/ui.c:251: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	swap	a
	push	acc
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00119$
00116$:
;	../UI_Manager/ui.c:254: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
	lcall	_get_dmx_address
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x04
	push	acc
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:255: switch (get_runtime_data(MODE_INDEX))
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	r7,dpl
	cjne	r7,#0x01,00346$
	sjmp	00111$
00346$:
;	../UI_Manager/ui.c:257: case OPTION_DMX_MODE_3:
	cjne	r7,#0x02,00113$
	sjmp	00112$
00111$:
;	../UI_Manager/ui.c:258: temp = 3;
	mov	r7,#0x03
;	../UI_Manager/ui.c:259: break;
;	../UI_Manager/ui.c:260: case OPTION_DMX_MODE_1: 
	sjmp	00114$
00112$:
;	../UI_Manager/ui.c:261: temp = 1;
	mov	r7,#0x01
;	../UI_Manager/ui.c:262: break;
;	../UI_Manager/ui.c:263: default:
	sjmp	00114$
00113$:
;	../UI_Manager/ui.c:264: temp = 11;
	mov	r7,#0x0b
;	../UI_Manager/ui.c:266: }
00114$:
;	../UI_Manager/ui.c:267: write_number(temp, 12, LINE_1, NOT_SELECTED);
	clr	a
	mov	r6,a
	push	acc
	inc	a
	push	acc
	mov	a,#0x0c
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:269: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:270: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x09
	push	acc
	mov	a,#0x04
	push	acc
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00119$:
;	../UI_Manager/ui.c:278: tock++;
	inc	_idlePage_tock_65536_59
;	../UI_Manager/ui.c:279: if(get_playing() == PLAY){
	mov	a,#0x01
	cjne	a,_Playing,00137$
;	../UI_Manager/ui.c:280: if(playing == PAUSE){
	mov	a,_idlePage_playing_65536_59
;	../UI_Manager/ui.c:281: iconChange |= PLAY_CHANGE;
	jnz	00121$
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,a
	orl	ar6,#0x20
	mov	_idlePage_iconChange_65536_59,r6
00121$:
;	../UI_Manager/ui.c:284: if(get_interval_or_duration() == INTERVAL){
	mov	a,_Interval_Or_Duration
	jnz	00130$
;	../UI_Manager/ui.c:286: if(iconChange & PLAY_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.5,00131$
;	../UI_Manager/ui.c:287: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dpl,#0x80
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:288: iconChange &= ~PLAY_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xdf
	sjmp	00131$
00130$:
;	../UI_Manager/ui.c:292: if(tock == 0x80 + 55){ //blink if fogging
	mov	a,#0xb7
	cjne	a,_idlePage_tock_65536_59,00127$
;	../UI_Manager/ui.c:293: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dpl,#0x80
	lcall	_write_char
	dec	sp
	dec	sp
	sjmp	00131$
00127$:
;	../UI_Manager/ui.c:294: } else if(tock == 0x08 + 55){
	mov	a,#0x3f
	cjne	a,_idlePage_tock_65536_59,00131$
;	../UI_Manager/ui.c:295: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dpl,#0x04
	lcall	_write_char
	dec	sp
	dec	sp
00131$:
;	../UI_Manager/ui.c:298: iconChange |= PAUSE_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x10
	mov	_idlePage_iconChange_65536_59,r6
	sjmp	00138$
00137$:
;	../UI_Manager/ui.c:300: if(playing == PLAY){
	mov	a,#0x01
	cjne	a,_idlePage_playing_65536_59,00133$
;	../UI_Manager/ui.c:301: iconChange |= PAUSE_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x10
	mov	_idlePage_iconChange_65536_59,r6
00133$:
;	../UI_Manager/ui.c:304: if(iconChange & PAUSE_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.4,00135$
;	../UI_Manager/ui.c:305: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dpl,#0x04
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:306: iconChange |= PLAY_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x20
	mov	_idlePage_iconChange_65536_59,r6
;	../UI_Manager/ui.c:307: iconChange &= ~PAUSE_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xef
00135$:
;	../UI_Manager/ui.c:310: playing = PAUSE;
	mov	_idlePage_playing_65536_59,#0x00
00138$:
;	../UI_Manager/ui.c:313: if(get_heater_enabled()){
	mov	a,_Heat_Flag
	jb	acc.4,00152$
;	../UI_Manager/ui.c:314: if(get_heated()){
	mov	a,_Heat_Flag
	jnb	acc.7,00147$
;	../UI_Manager/ui.c:315: if(iconChange & HEATED_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.0,00148$
;	../UI_Manager/ui.c:316: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dpl,#0x60
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:317: iconChange &= ~HEATED_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xfe
	sjmp	00148$
00147$:
;	../UI_Manager/ui.c:320: if(!(tock)){
	mov	a,_idlePage_tock_65536_59
	jnz	00145$
;	../UI_Manager/ui.c:321: if(iconChange & HEATING_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.1,00142$
;	../UI_Manager/ui.c:322: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dpl,#0x04
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:323: iconChange &= ~HEATING_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xfd
	sjmp	00145$
00142$:
;	../UI_Manager/ui.c:325: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dpl,#0xa0
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:326: iconChange |= HEATING_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x02
	mov	_idlePage_iconChange_65536_59,r6
00145$:
;	../UI_Manager/ui.c:329: iconChange |= HEATED_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x01
	mov	_idlePage_iconChange_65536_59,r6
00148$:
;	../UI_Manager/ui.c:331: iconChange |= HEATER_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x08
	mov	_idlePage_iconChange_65536_59,r6
	sjmp	00153$
00152$:
;	../UI_Manager/ui.c:333: if(iconChange & HEATER_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.3,00150$
;	../UI_Manager/ui.c:334: write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
	clr	a
	push	acc
	mov	a,#0x0f
	push	acc
	mov	dpl,#0x00
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:335: iconChange &= ~HEATER_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xf7
00150$:
;	../UI_Manager/ui.c:337: iconChange |= HEATER_CHANGE | HEATED_CHANGE;
	orl	_idlePage_iconChange_65536_59,#0x09
00153$:
;	../UI_Manager/ui.c:342: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00366$
	ljmp	00171$
00366$:
;	../UI_Manager/ui.c:345: if(has_dmx()){
	mov	a,_Has_DMX
	jz	00159$
;	../UI_Manager/ui.c:346: if(changed & DMX_OK_CHANGE){
	mov	a,_changed
	jnb	acc.7,00160$
;	../UI_Manager/ui.c:347: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:348: changed |= NO_DMX_CHANGE;
	mov	r6,_changed
	mov	r7,#0x00
	orl	ar6,#0x40
	mov	_changed,r6
;	../UI_Manager/ui.c:349: changed &= ~DMX_OK_CHANGE;
	anl	_changed,#0x7f
	sjmp	00160$
00159$:
;	../UI_Manager/ui.c:352: if(changed & NO_DMX_CHANGE){
	mov	a,_changed
	jnb	acc.6,00160$
;	../UI_Manager/ui.c:353: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:354: changed |= DMX_OK_CHANGE;
	mov	r6,_changed
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	_changed,r6
;	../UI_Manager/ui.c:355: changed &= ~NO_DMX_CHANGE;
	anl	_changed,#0xbf
00160$:
;	../UI_Manager/ui.c:359: temp = get_timer();
;	../UI_Manager/ui.c:362: if(timer != temp){
	mov	a,_Timer
	mov	r7,a
	cjne	a,_idlePage_timer_65536_59,00370$
	ret
00370$:
;	../UI_Manager/ui.c:364: write_number(temp, 7, LINE_0, NOT_SELECTED);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	clr	a
	push	acc
	push	acc
	mov	a,#0x07
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	../UI_Manager/ui.c:365: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
	mov	a,_Interval_Or_Duration
	jnz	00175$
	mov	r5,#0x92
	mov	r6,a
	sjmp	00176$
00175$:
	mov	r5,#0x22
	mov	r6,#0x00
00176$:
	mov	dpl,r5
	push	ar7
	clr	a
	push	acc
	mov	a,#0x0b
	push	acc
	lcall	_write_char
	dec	sp
	dec	sp
	pop	ar7
;	../UI_Manager/ui.c:367: timer = temp;
	mov	_idlePage_timer_65536_59,r7
	ret
00171$:
;	../UI_Manager/ui.c:372: temp = get_interval_or_duration();
;	../UI_Manager/ui.c:374: if(intervalOrDuration != temp){
	mov	a,_Interval_Or_Duration
	mov	r7,a
	cjne	a,_idlePage_intervalOrDuration_65536_59,00372$
	sjmp	00167$
00372$:
;	../UI_Manager/ui.c:375: if(temp == INTERVAL){
	mov	a,r7
	jnz	00164$
;	../UI_Manager/ui.c:376: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
	push	ar7
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x09
	push	acc
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	sjmp	00165$
00164$:
;	../UI_Manager/ui.c:378: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
	push	ar7
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x09
	push	acc
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
00165$:
;	../UI_Manager/ui.c:381: intervalOrDuration = temp;
	mov	_idlePage_intervalOrDuration_65536_59,r7
00167$:
;	../UI_Manager/ui.c:384: temp = get_timer();
;	../UI_Manager/ui.c:386: if(timer != temp){
	mov	a,_Timer
	mov	r7,a
	cjne	a,_idlePage_timer_65536_59,00374$
	ret
00374$:
;	../UI_Manager/ui.c:388: write_number(temp, NUMBER_END_INDEX-1, LINE_1, NOT_SELECTED);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x0b
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	../UI_Manager/ui.c:390: timer = temp;
	mov	_idlePage_timer_65536_59,r7
;	../UI_Manager/ui.c:394: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogLevelPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:396: void fogLevelPage(uint8_t action){
;	-----------------------------------------
;	 function fogLevelPage
;	-----------------------------------------
_fogLevelPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:398: switch (action)
	cjne	r7,#0x01,00152$
	sjmp	00104$
00152$:
	cjne	r7,#0x02,00153$
	sjmp	00103$
00153$:
	cjne	r7,#0x03,00154$
	sjmp	00101$
00154$:
;	../UI_Manager/ui.c:400: case BUTTON_UP:
	cjne	r7,#0x0b,00105$
	sjmp	00102$
00101$:
;	../UI_Manager/ui.c:401: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x00
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:402: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:403: break;
;	../UI_Manager/ui.c:404: case BUTTON_DOWN:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:405: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x00
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:406: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:407: break;
;	../UI_Manager/ui.c:408: case BUTTON_FUNCTION:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:409: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:410: return;
	ret
;	../UI_Manager/ui.c:411: case BUTTON_TIMER:
00104$:
;	../UI_Manager/ui.c:412: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:413: return;
	ret
;	../UI_Manager/ui.c:414: }
00105$:
;	../UI_Manager/ui.c:416: if(Changed){
	mov	a,_Changed
	jz	00107$
;	../UI_Manager/ui.c:417: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:418: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:420: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:422: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x0a
	push	acc
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00107$:
;	../UI_Manager/ui.c:426: if(changed){
	mov	a,_changed
	jnz	00157$
	ret
00157$:
;	../UI_Manager/ui.c:427: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:429: switch (get_runtime_data(FOG_POWER_INDEX))
	mov	dpl,#0x00
	lcall	_get_runtime_data
	mov	r7,dpl
	cjne	r7,#0x00,00158$
	sjmp	00108$
00158$:
	cjne	r7,#0x01,00159$
	sjmp	00109$
00159$:
	cjne	r7,#0x02,00160$
	ljmp	00110$
00160$:
	ret
;	../UI_Manager/ui.c:431: case OPTION_FOG_LOW:
00108$:
;	../UI_Manager/ui.c:432: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x00
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:433: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	a,#0x01
	push	acc
	mov	a,#0x0c
	push	acc
	mov	dpl,#0x40
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:434: break;
	ret
;	../UI_Manager/ui.c:435: case OPTION_FOG_MEDIUM:
00109$:
;	../UI_Manager/ui.c:436: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x01
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:437: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	a,#0x01
	push	acc
	mov	a,#0x0c
	push	acc
	mov	dpl,#0x40
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:438: write_char(CHAR_LVL_2, 13, LINE_1);
	mov	a,#0x01
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dpl,#0xc0
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:439: break;
;	../UI_Manager/ui.c:440: case OPTION_FOG_HIGH:
	ret
00110$:
;	../UI_Manager/ui.c:441: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x02
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:442: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	a,#0x01
	push	acc
	mov	a,#0x0c
	push	acc
	mov	dpl,#0x40
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:443: write_char(CHAR_LVL_2, 13, LINE_1);
	mov	a,#0x01
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dpl,#0xc0
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:444: write_char(CHAR_LVL_3, 14, LINE_1);
	mov	a,#0x01
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dpl,#0x20
	lcall	_write_char
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:446: }
;	../UI_Manager/ui.c:449: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogIntervalPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:451: void fogIntervalPage(uint8_t action){
;	-----------------------------------------
;	 function fogIntervalPage
;	-----------------------------------------
_fogIntervalPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:453: switch (action)
	cjne	r7,#0x01,00146$
	sjmp	00106$
00146$:
	cjne	r7,#0x02,00147$
	sjmp	00105$
00147$:
	cjne	r7,#0x03,00148$
	sjmp	00102$
00148$:
	cjne	r7,#0x0b,00149$
	sjmp	00104$
00149$:
	cjne	r7,#0x1f,00150$
	sjmp	00102$
00150$:
;	../UI_Manager/ui.c:456: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:457: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:458: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:459: break;
;	../UI_Manager/ui.c:461: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:462: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x02
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:463: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:464: break;
;	../UI_Manager/ui.c:465: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:466: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:467: return;
	ret
;	../UI_Manager/ui.c:468: case BUTTON_TIMER:
00106$:
;	../UI_Manager/ui.c:469: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:470: return;
;	../UI_Manager/ui.c:471: }
	ret
00107$:
;	../UI_Manager/ui.c:473: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:474: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:475: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:477: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:479: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:480: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x07
	push	acc
	inc	a
	push	acc
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00109$:
;	../UI_Manager/ui.c:484: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:485: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:487: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);
	mov	dpl,#0x02
	lcall	_get_runtime_data
	mov	r7,dpl
	clr	a
	mov	r6,a
	push	acc
	inc	a
	push	acc
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
00112$:
;	../UI_Manager/ui.c:492: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogDurationPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:494: void fogDurationPage(uint8_t action){
;	-----------------------------------------
;	 function fogDurationPage
;	-----------------------------------------
_fogDurationPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:496: switch (action)
	cjne	r7,#0x01,00146$
	sjmp	00106$
00146$:
	cjne	r7,#0x02,00147$
	sjmp	00105$
00147$:
	cjne	r7,#0x03,00148$
	sjmp	00102$
00148$:
	cjne	r7,#0x0b,00149$
	sjmp	00104$
00149$:
	cjne	r7,#0x1f,00150$
	sjmp	00102$
00150$:
;	../UI_Manager/ui.c:499: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:500: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:501: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:502: break;
;	../UI_Manager/ui.c:504: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:505: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x01
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:506: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:507: break;
;	../UI_Manager/ui.c:508: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:509: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:510: return;
	ret
;	../UI_Manager/ui.c:511: case BUTTON_TIMER:
00106$:
;	../UI_Manager/ui.c:512: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:513: return;
;	../UI_Manager/ui.c:514: }
	ret
00107$:
;	../UI_Manager/ui.c:516: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:517: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:518: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:520: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:522: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:523: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x07
	push	acc
	inc	a
	push	acc
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00109$:
;	../UI_Manager/ui.c:527: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:528: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:530: write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);
	mov	dpl,#0x01
	lcall	_get_runtime_data
	mov	r7,dpl
	clr	a
	mov	r6,a
	push	acc
	inc	a
	push	acc
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
00112$:
;	../UI_Manager/ui.c:533: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'macroPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:535: void macroPage(uint8_t action){
;	-----------------------------------------
;	 function macroPage
;	-----------------------------------------
_macroPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:537: switch (action)
	cjne	r7,#0x01,00146$
	sjmp	00106$
00146$:
	cjne	r7,#0x02,00147$
	sjmp	00105$
00147$:
	cjne	r7,#0x03,00148$
	sjmp	00102$
00148$:
	cjne	r7,#0x0b,00149$
	sjmp	00104$
00149$:
	cjne	r7,#0x1f,00150$
	sjmp	00102$
00150$:
;	../UI_Manager/ui.c:540: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:541: set_runtime_data(MACRO_INDEX, INC, NULL);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x03
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:542: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:543: break;
;	../UI_Manager/ui.c:545: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:546: set_runtime_data(MACRO_INDEX, DEC, NULL);
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x03
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:547: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:548: break;
;	../UI_Manager/ui.c:549: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:550: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:551: return;
	ret
;	../UI_Manager/ui.c:552: case BUTTON_TIMER:
00106$:
;	../UI_Manager/ui.c:553: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:554: return;
;	../UI_Manager/ui.c:555: }
	ret
00107$:
;	../UI_Manager/ui.c:557: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:558: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:559: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:561: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:563: write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x04
	push	acc
	mov	a,#0x07
	push	acc
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00109$:
;	../UI_Manager/ui.c:567: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:568: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:570: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	mov	dpl,#0x03
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	a,#0x14
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00112$:
;	../UI_Manager/ui.c:573: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'macroSpeedPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:575: void macroSpeedPage(uint8_t action){
;	-----------------------------------------
;	 function macroSpeedPage
;	-----------------------------------------
_macroSpeedPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:577: switch (action)
	cjne	r7,#0x01,00153$
	sjmp	00106$
00153$:
	cjne	r7,#0x02,00154$
	sjmp	00105$
00154$:
	cjne	r7,#0x03,00155$
	sjmp	00102$
00155$:
	cjne	r7,#0x0b,00156$
	sjmp	00104$
00156$:
	cjne	r7,#0x1f,00157$
	sjmp	00102$
00157$:
;	../UI_Manager/ui.c:580: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:581: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x04
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:582: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:583: break;
;	../UI_Manager/ui.c:585: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:586: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x04
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:587: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:588: break;
;	../UI_Manager/ui.c:589: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:590: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:591: return;
	ret
;	../UI_Manager/ui.c:592: case BUTTON_TIMER:
00106$:
;	../UI_Manager/ui.c:593: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:594: return;
	ret
;	../UI_Manager/ui.c:595: }
00107$:
;	../UI_Manager/ui.c:597: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:598: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:599: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:601: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:603: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x0c
	push	acc
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00109$:
;	../UI_Manager/ui.c:607: if(changed){
	mov	a,_changed
	jz	00115$
;	../UI_Manager/ui.c:608: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:610: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
	mov	dpl,#0x04
	lcall	_get_runtime_data
	mov	a,dpl
;	../UI_Manager/ui.c:611: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	jnz	00111$
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
00111$:
;	../UI_Manager/ui.c:613: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:614: write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
	mov	dpl,#0x04
	lcall	_get_runtime_data
	mov	r7,dpl
	clr	a
	mov	r6,a
	push	acc
	inc	a
	push	acc
	mov	a,#0x05
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
00115$:
;	../UI_Manager/ui.c:618: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'colorPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;index                     Allocated to registers r6 
;------------------------------------------------------------
;	../UI_Manager/ui.c:620: void colorPage(uint8_t action){
;	-----------------------------------------
;	 function colorPage
;	-----------------------------------------
_colorPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:621: uint8_t index = 0;
	mov	r6,#0x00
;	../UI_Manager/ui.c:623: switch (State)
	mov	r5,_State
	cjne	r5,#0x06,00174$
	sjmp	00101$
00174$:
	cjne	r5,#0x07,00175$
	sjmp	00102$
00175$:
	cjne	r5,#0x08,00176$
	sjmp	00103$
00176$:
;	../UI_Manager/ui.c:625: case MANUAL_RED_STATE:
	cjne	r5,#0x09,00105$
	sjmp	00104$
00101$:
;	../UI_Manager/ui.c:626: index = RED_INDEX;
	mov	r6,#0x05
;	../UI_Manager/ui.c:627: break;
;	../UI_Manager/ui.c:628: case MANUAL_GREEN_STATE:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:629: index = GREEN_INDEX;
	mov	r6,#0x06
;	../UI_Manager/ui.c:630: break;
;	../UI_Manager/ui.c:631: case MANUAL_BLUE_STATE:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:632: index = BLUE_INDEX;
	mov	r6,#0x07
;	../UI_Manager/ui.c:633: break;
;	../UI_Manager/ui.c:634: case MANUAL_STROBE_STATE:
	sjmp	00105$
00104$:
;	../UI_Manager/ui.c:635: index = STROBE_INDEX;
	mov	r6,#0x08
;	../UI_Manager/ui.c:637: }
00105$:
;	../UI_Manager/ui.c:639: switch (action)
	cjne	r7,#0x01,00178$
	sjmp	00111$
00178$:
	cjne	r7,#0x02,00179$
	sjmp	00110$
00179$:
	cjne	r7,#0x03,00180$
	sjmp	00107$
00180$:
	cjne	r7,#0x0b,00181$
	sjmp	00109$
00181$:
	cjne	r7,#0x1f,00182$
	sjmp	00107$
00182$:
;	../UI_Manager/ui.c:642: case BUTTON_UP:
	cjne	r7,#0x6f,00112$
	sjmp	00109$
00107$:
;	../UI_Manager/ui.c:643: set_runtime_data(index, INC, NULL);
	push	ar6
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,r6
	lcall	_set_runtime_data
	dec	sp
	dec	sp
	pop	ar6
;	../UI_Manager/ui.c:644: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:645: break;
;	../UI_Manager/ui.c:647: case BUTTON_DOWN:
	sjmp	00112$
00109$:
;	../UI_Manager/ui.c:648: set_runtime_data(index, DEC, NULL);
	push	ar6
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,r6
	lcall	_set_runtime_data
	dec	sp
	dec	sp
	pop	ar6
;	../UI_Manager/ui.c:649: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:650: break;
;	../UI_Manager/ui.c:651: case BUTTON_FUNCTION:
	sjmp	00112$
00110$:
;	../UI_Manager/ui.c:652: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:653: return;
	ret
;	../UI_Manager/ui.c:654: case BUTTON_TIMER:
00111$:
;	../UI_Manager/ui.c:655: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:656: return;
	ret
;	../UI_Manager/ui.c:657: }
00112$:
;	../UI_Manager/ui.c:659: if(Changed){
	mov	a,_Changed
	jz	00114$
;	../UI_Manager/ui.c:660: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:661: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:663: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar6
	lcall	_exe_command
;	../UI_Manager/ui.c:665: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
	mov	r7,_State
	mov	a,#0xc8
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	clr	a
	push	acc
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
00114$:
;	../UI_Manager/ui.c:669: if(changed){
	mov	a,_changed
	jz	00120$
;	../UI_Manager/ui.c:670: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:672: if(get_runtime_data(index) == 0){
	mov	dpl,r6
	push	ar6
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar6
;	../UI_Manager/ui.c:673: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	jnz	00116$
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ret
00116$:
;	../UI_Manager/ui.c:675: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	push	ar6
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	../UI_Manager/ui.c:676: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
	mov	dpl,r6
	lcall	_get_runtime_data
	mov	r7,dpl
	clr	a
	mov	r6,a
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
00120$:
;	../UI_Manager/ui.c:679: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remotePage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;remoteNumber              Allocated to registers r6 
;index                     Allocated to registers r5 
;------------------------------------------------------------
;	../UI_Manager/ui.c:681: void remotePage(uint8_t action){
;	-----------------------------------------
;	 function remotePage
;	-----------------------------------------
_remotePage:
	mov	r7,dpl
;	../UI_Manager/ui.c:682: uint8_t remoteNumber = 0;
	mov	r6,#0x00
;	../UI_Manager/ui.c:683: uint8_t index = 0;
	mov	r5,#0x00
;	../UI_Manager/ui.c:685: switch (State)
	mov	r4,_State
	cjne	r4,#0x0a,00168$
	sjmp	00101$
00168$:
	cjne	r4,#0x0b,00169$
	sjmp	00102$
00169$:
;	../UI_Manager/ui.c:687: case MANUAL_REMOTE_ACTION_4_STATE:
	cjne	r4,#0x0c,00104$
	sjmp	00103$
00101$:
;	../UI_Manager/ui.c:688: index = R4_INDEX;
	mov	r5,#0x09
;	../UI_Manager/ui.c:689: remoteNumber = 4;
	mov	r6,#0x04
;	../UI_Manager/ui.c:690: break;
;	../UI_Manager/ui.c:691: case MANUAL_REMOTE_ACTION_5_STATE:
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:692: index = R5_INDEX;
	mov	r5,#0x0a
;	../UI_Manager/ui.c:693: remoteNumber = 5;
	mov	r6,#0x05
;	../UI_Manager/ui.c:694: break;
;	../UI_Manager/ui.c:695: case MANUAL_REMOTE_ACTION_6_STATE:
	sjmp	00104$
00103$:
;	../UI_Manager/ui.c:696: index = R6_INDEX;
	mov	r5,#0x0b
;	../UI_Manager/ui.c:697: remoteNumber = 6;
	mov	r6,#0x06
;	../UI_Manager/ui.c:699: }
00104$:
;	../UI_Manager/ui.c:701: switch (action)
	cjne	r7,#0x01,00171$
	sjmp	00108$
00171$:
	cjne	r7,#0x02,00172$
	sjmp	00107$
00172$:
	cjne	r7,#0x03,00173$
	sjmp	00105$
00173$:
;	../UI_Manager/ui.c:703: case BUTTON_UP:
	cjne	r7,#0x0b,00109$
	sjmp	00106$
00105$:
;	../UI_Manager/ui.c:704: set_runtime_data(index, INC, NULL);
	push	ar6
	push	ar5
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,r5
	lcall	_set_runtime_data
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
;	../UI_Manager/ui.c:705: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:706: break;
;	../UI_Manager/ui.c:707: case BUTTON_DOWN:
	sjmp	00109$
00106$:
;	../UI_Manager/ui.c:708: set_runtime_data(index, DEC, NULL);
	push	ar6
	push	ar5
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,r5
	lcall	_set_runtime_data
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
;	../UI_Manager/ui.c:709: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:710: break;
;	../UI_Manager/ui.c:711: case BUTTON_FUNCTION:
	sjmp	00109$
00107$:
;	../UI_Manager/ui.c:712: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:713: return;
	ret
;	../UI_Manager/ui.c:714: case BUTTON_TIMER:
00108$:
;	../UI_Manager/ui.c:715: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:716: return;
	ret
;	../UI_Manager/ui.c:717: }
00109$:
;	../UI_Manager/ui.c:719: if(Changed){
	mov	a,_Changed
	jnz	00175$
	ljmp	00115$
00175$:
;	../UI_Manager/ui.c:720: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:721: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:723: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar6
	push	ar5
	lcall	_exe_command
;	../UI_Manager/ui.c:725: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	inc	a
	push	acc
	swap	a
	push	acc
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
;	../UI_Manager/ui.c:726: switch (remoteNumber)
	cjne	r6,#0x04,00176$
	sjmp	00110$
00176$:
	cjne	r6,#0x05,00177$
	sjmp	00111$
00177$:
;	../UI_Manager/ui.c:728: case 4:
	cjne	r6,#0x06,00115$
	sjmp	00112$
00110$:
;	../UI_Manager/ui.c:729: write_char(CHAR_4, 8, LINE_0);
	push	ar5
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	mov	dpl,#0x2c
	lcall	_write_char
	dec	sp
	dec	sp
	pop	ar5
;	../UI_Manager/ui.c:730: break;
;	../UI_Manager/ui.c:731: case 5:
	sjmp	00115$
00111$:
;	../UI_Manager/ui.c:732: write_char(CHAR_5, 8, LINE_0);
	push	ar5
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	mov	dpl,#0xac
	lcall	_write_char
	dec	sp
	dec	sp
	pop	ar5
;	../UI_Manager/ui.c:733: break;
;	../UI_Manager/ui.c:734: case 6:
	sjmp	00115$
00112$:
;	../UI_Manager/ui.c:735: write_char(CHAR_6, 8, LINE_0);
	push	ar5
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	mov	dpl,#0x6c
	lcall	_write_char
	dec	sp
	dec	sp
	pop	ar5
;	../UI_Manager/ui.c:737: }
00115$:
;	../UI_Manager/ui.c:740: if(changed){
	mov	a,_changed
	jz	00118$
;	../UI_Manager/ui.c:741: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:742: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
	mov	dpl,r5
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	a,#0x3c
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00118$:
;	../UI_Manager/ui.c:744: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'saveLoadPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;slot                      Allocated with name '_saveLoadPage_slot_65536_142'
;------------------------------------------------------------
;	../UI_Manager/ui.c:746: void saveLoadPage(uint8_t action){
;	-----------------------------------------
;	 function saveLoadPage
;	-----------------------------------------
_saveLoadPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:749: switch (action)
	cjne	r7,#0x01,00161$
	ljmp	00108$
00161$:
	cjne	r7,#0x02,00162$
	ljmp	00107$
00162$:
	cjne	r7,#0x03,00163$
	ljmp	00105$
00163$:
	cjne	r7,#0x0b,00164$
	ljmp	00106$
00164$:
	cjne	r7,#0x1e,00165$
	sjmp	00166$
00165$:
	ljmp	00109$
00166$:
;	../UI_Manager/ui.c:752: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
	mov	a,#0x0d
	cjne	a,_State,00119$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00120$
00119$:
	mov	r6,#0x00
	mov	r7,#0x00
00120$:
	mov	b,#0x03
	mov	a,_saveLoadPage_slot_65536_142
	div	ab
	mov	dpl,b
	push	ar6
	lcall	_save_load_settings
	dec	sp
;	../UI_Manager/ui.c:753: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
	clr	a
	push	acc
	inc	a
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:755: if(State == MANUAL_SAVE_SETTINGS_STATE){
	mov	a,#0x0d
	cjne	a,_State,00103$
;	../UI_Manager/ui.c:756: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00109$
00103$:
;	../UI_Manager/ui.c:758: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x06
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../UI_Manager/ui.c:760: break;
;	../UI_Manager/ui.c:761: case BUTTON_UP:
	sjmp	00109$
00105$:
;	../UI_Manager/ui.c:762: slot++;
	inc	_saveLoadPage_slot_65536_142
;	../UI_Manager/ui.c:763: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:764: break;
;	../UI_Manager/ui.c:765: case BUTTON_DOWN:
	sjmp	00109$
00106$:
;	../UI_Manager/ui.c:766: slot--;
	dec	_saveLoadPage_slot_65536_142
;	../UI_Manager/ui.c:767: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:768: break;
;	../UI_Manager/ui.c:769: case BUTTON_FUNCTION:
	sjmp	00109$
00107$:
;	../UI_Manager/ui.c:770: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:771: return;
	ret
;	../UI_Manager/ui.c:772: case BUTTON_TIMER:
00108$:
;	../UI_Manager/ui.c:773: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:774: return;
	ret
;	../UI_Manager/ui.c:775: }
00109$:
;	../UI_Manager/ui.c:777: if(Changed){
	mov	a,_Changed
	jz	00114$
;	../UI_Manager/ui.c:778: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:779: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:781: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:783: if(State == MANUAL_SAVE_SETTINGS_STATE){
	mov	a,#0x0d
	cjne	a,_State,00111$
;	../UI_Manager/ui.c:784: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00114$
00111$:
;	../UI_Manager/ui.c:786: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0e
	push	acc
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00114$:
;	../UI_Manager/ui.c:791: if(changed){
	mov	a,_changed
	jz	00117$
;	../UI_Manager/ui.c:792: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:793: write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
	mov	b,#0x03
	mov	a,_saveLoadPage_slot_65536_142
	div	ab
	mov	r7,b
	mov	a,#0x50
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x04
	push	acc
	mov	a,#0x10
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00117$:
;	../UI_Manager/ui.c:796: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxAddressPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:798: void dmxAddressPage(uint8_t action){
;	-----------------------------------------
;	 function dmxAddressPage
;	-----------------------------------------
_dmxAddressPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:800: switch (action)
	cjne	r7,#0x01,00146$
	sjmp	00106$
00146$:
	cjne	r7,#0x02,00147$
	sjmp	00105$
00147$:
	cjne	r7,#0x03,00148$
	sjmp	00102$
00148$:
	cjne	r7,#0x0b,00149$
	sjmp	00104$
00149$:
	cjne	r7,#0x1f,00150$
	sjmp	00102$
00150$:
;	../UI_Manager/ui.c:803: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:804: set_dmx_address(INC);
	mov	dpl,#0x01
	lcall	_set_dmx_address
;	../UI_Manager/ui.c:805: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:806: break;
;	../UI_Manager/ui.c:808: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:809: set_dmx_address(DEC);
	mov	dpl,#0x02
	lcall	_set_dmx_address
;	../UI_Manager/ui.c:810: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:811: break;
;	../UI_Manager/ui.c:812: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:813: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:814: return;
;	../UI_Manager/ui.c:815: case BUTTON_TIMER:
	ret
00106$:
;	../UI_Manager/ui.c:816: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:817: return;
;	../UI_Manager/ui.c:818: }
	ret
00107$:
;	../UI_Manager/ui.c:820: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:821: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:822: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:824: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:826: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x0c
	push	acc
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00109$:
;	../UI_Manager/ui.c:829: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:830: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:832: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
	lcall	_get_dmx_address
	clr	a
	push	acc
	inc	a
	push	acc
	mov	a,#0x04
	push	acc
	lcall	_write_number
	dec	sp
	dec	sp
	dec	sp
00112$:
;	../UI_Manager/ui.c:835: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxChannelPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:837: void dmxChannelPage(uint8_t action){
;	-----------------------------------------
;	 function dmxChannelPage
;	-----------------------------------------
_dmxChannelPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:839: switch (action)
	cjne	r7,#0x01,00136$
	sjmp	00104$
00136$:
	cjne	r7,#0x02,00137$
	sjmp	00103$
00137$:
	cjne	r7,#0x03,00138$
	sjmp	00101$
00138$:
;	../UI_Manager/ui.c:841: case BUTTON_UP:
	cjne	r7,#0x0b,00105$
	sjmp	00102$
00101$:
;	../UI_Manager/ui.c:842: set_runtime_data(MODE_INDEX, INC, NULL);
	clr	a
	push	acc
	inc	a
	push	acc
	mov	dpl,#0x0e
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:843: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:844: break;
;	../UI_Manager/ui.c:845: case BUTTON_DOWN:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:846: set_runtime_data(MODE_INDEX, DEC, NULL);
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dpl,#0x0e
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../UI_Manager/ui.c:847: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:848: break;
;	../UI_Manager/ui.c:849: case BUTTON_FUNCTION:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:850: set_ui_state(INC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x01
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:851: return;
;	../UI_Manager/ui.c:852: case BUTTON_TIMER:
	ret
00104$:
;	../UI_Manager/ui.c:853: set_ui_state(DEC, NULL);
	clr	a
	push	acc
	mov	dpl,#0x02
	lcall	_set_ui_state
	dec	sp
;	../UI_Manager/ui.c:854: return;
;	../UI_Manager/ui.c:855: }
	ret
00105$:
;	../UI_Manager/ui.c:857: if(Changed){
	mov	a,_Changed
	jz	00107$
;	../UI_Manager/ui.c:858: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:859: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:861: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:863: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x11
	push	acc
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00107$:
;	../UI_Manager/ui.c:866: if(changed){
	mov	a,_changed
	jz	00110$
;	../UI_Manager/ui.c:867: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:869: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	a,#0x64
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	push	acc
	inc	a
	push	acc
	push	acc
	swap	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00110$:
;	../UI_Manager/ui.c:872: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ui_state'
;------------------------------------------------------------
;state                     Allocated to stack - _bp -3
;inc                       Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:874: void set_ui_state(uint8_t inc, uint8_t state){
;	-----------------------------------------
;	 function set_ui_state
;	-----------------------------------------
_set_ui_state:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../UI_Manager/ui.c:875: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:877: switch (inc)
	cjne	r7,#0x01,00187$
	sjmp	00115$
00187$:
	cjne	r7,#0x02,00188$
	sjmp	00189$
00188$:
	ljmp	00127$
00189$:
;	../UI_Manager/ui.c:880: state = State;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,_State
;	../UI_Manager/ui.c:881: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00113$
;	../UI_Manager/ui.c:882: if(state == IDLE_STATE){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00105$
;	../UI_Manager/ui.c:883: state = DMX_STATE_LOW;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x14
	ljmp	00132$
00105$:
;	../UI_Manager/ui.c:884: } else if(++state > DMX_STATE_HIGH){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x15
	jc	00192$
	ljmp	00132$
00192$:
;	../UI_Manager/ui.c:885: state = IDLE_STATE;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
	ljmp	00132$
00113$:
;	../UI_Manager/ui.c:888: if(state == IDLE_STATE){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00110$
;	../UI_Manager/ui.c:889: state = IDLE_STATE + 1; 
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x01
	ljmp	00132$
00110$:
;	../UI_Manager/ui.c:890: } else if(++state > MANUAL_STATE_HIGH){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x0e
	jc	00194$
	ljmp	00132$
00194$:
;	../UI_Manager/ui.c:891: state = IDLE_STATE;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../UI_Manager/ui.c:894: break;
	ljmp	00132$
;	../UI_Manager/ui.c:895: case INC:
00115$:
;	../UI_Manager/ui.c:896: state = State;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,_State
;	../UI_Manager/ui.c:897: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00125$
;	../UI_Manager/ui.c:898: if(state == IDLE_STATE){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00119$
;	../UI_Manager/ui.c:899: state = DMX_STATE_HIGH;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x15
	sjmp	00132$
00119$:
;	../UI_Manager/ui.c:900: } else if(--state < DMX_STATE_LOW){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	dec	@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x14,00197$
00197$:
	jnc	00132$
;	../UI_Manager/ui.c:901: state = IDLE_STATE;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00132$
00125$:
;	../UI_Manager/ui.c:904: if(state == IDLE_STATE){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00122$
;	../UI_Manager/ui.c:905: state = MANUAL_STATE_HIGH; 
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x0e
	sjmp	00132$
00122$:
;	../UI_Manager/ui.c:907: state--;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	dec	@r0
;	../UI_Manager/ui.c:910: break;
;	../UI_Manager/ui.c:911: default: 
	sjmp	00132$
00127$:
;	../UI_Manager/ui.c:912: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x0e
	jnc	00128$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x14,00201$
00201$:
	jc	00132$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x15
	jc	00132$
00128$:
;	../UI_Manager/ui.c:913: state = IDLE_STATE;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,#0x00
;	../UI_Manager/ui.c:916: }
00132$:
;	../UI_Manager/ui.c:918: State = state;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	_State,@r0
;	../UI_Manager/ui.c:919: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_ui_state'
;------------------------------------------------------------
;	../UI_Manager/ui.c:921: uint8_t get_ui_state(){
;	-----------------------------------------
;	 function get_ui_state
;	-----------------------------------------
_get_ui_state:
;	../UI_Manager/ui.c:922: return State;
	mov	dpl,_State
;	../UI_Manager/ui.c:923: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getString'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:925: char* getString(uint8_t index){
;	-----------------------------------------
;	 function getString
;	-----------------------------------------
_getString:
	mov	r7,dpl
;	../UI_Manager/ui.c:926: switch (index)
	mov	ar6,r7
	cjne	r6,#0x00,00299$
	ljmp	00101$
00299$:
	cjne	r6,#0x01,00300$
	ljmp	00102$
00300$:
	cjne	r7,#0x02,00301$
	ljmp	00103$
00301$:
	cjne	r7,#0x14,00302$
	ljmp	00104$
00302$:
	cjne	r7,#0x15,00303$
	ljmp	00105$
00303$:
	cjne	r7,#0x16,00304$
	ljmp	00106$
00304$:
	cjne	r7,#0x17,00305$
	ljmp	00107$
00305$:
	cjne	r7,#0x18,00306$
	ljmp	00109$
00306$:
	cjne	r7,#0x19,00307$
	ljmp	00110$
00307$:
	cjne	r7,#0x1a,00308$
	ljmp	00108$
00308$:
	cjne	r7,#0x28,00309$
	ljmp	00134$
00309$:
	cjne	r7,#0x29,00310$
	ljmp	00135$
00310$:
	cjne	r7,#0x2a,00311$
	ljmp	00136$
00311$:
	cjne	r7,#0x2b,00312$
	ljmp	00137$
00312$:
	cjne	r7,#0x2c,00313$
	ljmp	00138$
00313$:
	cjne	r7,#0x2d,00314$
	ljmp	00139$
00314$:
	cjne	r7,#0x3c,00315$
	ljmp	00115$
00315$:
	cjne	r7,#0x3d,00316$
	ljmp	00116$
00316$:
	cjne	r7,#0x3e,00317$
	ljmp	00117$
00317$:
	cjne	r7,#0x3f,00318$
	ljmp	00118$
00318$:
	cjne	r7,#0x40,00319$
	ljmp	00119$
00319$:
	cjne	r7,#0x41,00320$
	ljmp	00120$
00320$:
	cjne	r7,#0x42,00321$
	ljmp	00121$
00321$:
	cjne	r7,#0x43,00322$
	ljmp	00122$
00322$:
	cjne	r7,#0x44,00323$
	ljmp	00123$
00323$:
	cjne	r7,#0x45,00324$
	ljmp	00124$
00324$:
	cjne	r7,#0x46,00325$
	ljmp	00125$
00325$:
	cjne	r7,#0x47,00326$
	ljmp	00126$
00326$:
	cjne	r7,#0x48,00327$
	ljmp	00127$
00327$:
	cjne	r7,#0x50,00328$
	ljmp	00128$
00328$:
	cjne	r7,#0x51,00329$
	ljmp	00129$
00329$:
	cjne	r7,#0x52,00330$
	ljmp	00130$
00330$:
	cjne	r7,#0x64,00331$
	ljmp	00131$
00331$:
	cjne	r7,#0x65,00332$
	ljmp	00132$
00332$:
	cjne	r7,#0x66,00333$
	ljmp	00133$
00333$:
	cjne	r7,#0xce,00334$
	ljmp	00111$
00334$:
	cjne	r7,#0xcf,00335$
	ljmp	00112$
00335$:
	cjne	r7,#0xd0,00336$
	ljmp	00113$
00336$:
	cjne	r7,#0xd1,00337$
	ljmp	00114$
00337$:
	ljmp	00140$
;	../UI_Manager/ui.c:928: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
00101$:
;	../UI_Manager/ui.c:929: return "Wimpy";
	mov	dptr,#___str_32
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:930: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
00102$:
;	../UI_Manager/ui.c:931: return "Mild";
	mov	dptr,#___str_33
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:932: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
00103$:
;	../UI_Manager/ui.c:933: return "Blazin";
	mov	dptr,#___str_34
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:935: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
00104$:
;	../UI_Manager/ui.c:936: return "Off";
	mov	dptr,#___str_23
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:937: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
00105$:
;	../UI_Manager/ui.c:938: return "Rainbow";
	mov	dptr,#___str_35
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:939: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
00106$:
;	../UI_Manager/ui.c:940: return "Fire";
	mov	dptr,#___str_36
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:941: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
00107$:
;	../UI_Manager/ui.c:942: return "Water";
	mov	dptr,#___str_37
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:943: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
00108$:
;	../UI_Manager/ui.c:944: return "Storm";
	mov	dptr,#___str_38
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:945: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
00109$:
;	../UI_Manager/ui.c:946: return "Acid";
	mov	dptr,#___str_39
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:947: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
00110$:
;	../UI_Manager/ui.c:948: return "Ether";
	mov	dptr,#___str_40
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:950: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
00111$:
;	../UI_Manager/ui.c:951: return "Red Level";
	mov	dptr,#___str_41
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:952: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
00112$:
;	../UI_Manager/ui.c:953: return "Green Level";
	mov	dptr,#___str_42
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:954: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
00113$:
;	../UI_Manager/ui.c:955: return "Blue Level";
	mov	dptr,#___str_43
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:956: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
00114$:
;	../UI_Manager/ui.c:957: return "Strobe Level";
	mov	dptr,#___str_44
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:959: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
00115$:
;	../UI_Manager/ui.c:960: return "No Action";
	mov	dptr,#___str_45
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:961: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
00116$:
;	../UI_Manager/ui.c:962: return "Choose Macro";
	mov	dptr,#___str_46
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:963: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
00117$:
;	../UI_Manager/ui.c:964: return "Red";
	mov	dptr,#___str_47
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:965: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
00118$:
;	../UI_Manager/ui.c:966: return "Yellow";
	mov	dptr,#___str_48
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:967: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
00119$:
;	../UI_Manager/ui.c:968: return "Green";
	mov	dptr,#___str_49
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:969: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
00120$:
;	../UI_Manager/ui.c:970: return "Cyan";
	mov	dptr,#___str_50
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:971: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
00121$:
;	../UI_Manager/ui.c:972: return "Blue";
	mov	dptr,#___str_51
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:973: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
00122$:
;	../UI_Manager/ui.c:974: return "Magenta";
	mov	dptr,#___str_52
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:975: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
00123$:
;	../UI_Manager/ui.c:976: return "Strobe Slow";
	mov	dptr,#___str_53
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:977: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
00124$:
;	../UI_Manager/ui.c:978: return "Strobe Medium";
	mov	dptr,#___str_54
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:979: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
00125$:
;	../UI_Manager/ui.c:980: return "Strobe Fast";
	mov	dptr,#___str_55
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:981: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
00126$:
;	../UI_Manager/ui.c:982: return "Blackout";
	mov	dptr,#___str_56
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:983: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
00127$:
;	../UI_Manager/ui.c:984: return "Whiteout";         
	mov	dptr,#___str_57
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:986: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
00128$:
;	../UI_Manager/ui.c:987: return "Slot 1";   
	mov	dptr,#___str_58
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:988: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
00129$:
;	../UI_Manager/ui.c:989: return "Slot 2";   
	mov	dptr,#___str_59
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:990: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
00130$:
;	../UI_Manager/ui.c:991: return "Slot 3"; 
	mov	dptr,#___str_60
	mov	b,#0x80
;	../UI_Manager/ui.c:993: case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
	ret
00131$:
;	../UI_Manager/ui.c:994: return "11 All";     
	mov	dptr,#___str_61
	mov	b,#0x80
;	../UI_Manager/ui.c:995: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
	ret
00132$:
;	../UI_Manager/ui.c:996: return " 3 Fog + Macro";   
	mov	dptr,#___str_62
	mov	b,#0x80
;	../UI_Manager/ui.c:997: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
	ret
00133$:
;	../UI_Manager/ui.c:998: return " 1 Fog";    
	mov	dptr,#___str_63
	mov	b,#0x80
;	../UI_Manager/ui.c:1000: case SECRET_STRING_OFFSET + 0:
	ret
00134$:
;	../UI_Manager/ui.c:1001: return "0x486F6C6D6573";
	mov	dptr,#___str_64
	mov	b,#0x80
;	../UI_Manager/ui.c:1002: case SECRET_STRING_OFFSET + 1:
	ret
00135$:
;	../UI_Manager/ui.c:1003: return "& 576174736F6E";
	mov	dptr,#___str_65
	mov	b,#0x80
;	../UI_Manager/ui.c:1004: case SECRET_STRING_OFFSET + 2:
	ret
00136$:
;	../UI_Manager/ui.c:1005: return "626F74684F776E41";
	mov	dptr,#___str_66
	mov	b,#0x80
;	../UI_Manager/ui.c:1006: case SECRET_STRING_OFFSET + 3:
	ret
00137$:
;	../UI_Manager/ui.c:1007: return "536E6F7762616C6C";
	mov	dptr,#___str_67
	mov	b,#0x80
;	../UI_Manager/ui.c:1008: case SECRET_STRING_OFFSET + 4:
	ret
00138$:
;	../UI_Manager/ui.c:1009: return "4D6F726961727479";
	mov	dptr,#___str_68
	mov	b,#0x80
;	../UI_Manager/ui.c:1010: case SECRET_STRING_OFFSET + 5:
	ret
00139$:
;	../UI_Manager/ui.c:1011: return "646F65734E6F74 ;";
	mov	dptr,#___str_69
	mov	b,#0x80
;	../UI_Manager/ui.c:1012: }
	ret
00140$:
;	../UI_Manager/ui.c:1014: return 0;
	mov	dptr,#0x0000
	mov	b,#0x00
;	../UI_Manager/ui.c:1015: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Tank Lights Off"
	.db 0x00
___str_1:
	.ascii "Tank Lights On"
	.db 0x00
___str_2:
	.ascii "Fun+Man to Undo"
	.db 0x00
___str_3:
	.ascii "Heater Off"
	.db 0x00
___str_4:
	.ascii "Heater On"
	.db 0x00
___str_5:
	.ascii "Burst+Up to Undo"
	.db 0x00
___str_6:
	.ascii "AtmosFEAR 221B"
	.db 0x00
___str_7:
	.ascii "By Blizzard Pro"
	.db 0x00
___str_8:
	.ascii "PC Load Letter"
	.db 0x00
___str_9:
	.ascii "Burst to Refill"
	.db 0x00
___str_10:
	.ascii "Manual Mode"
	.db 0x00
___str_11:
	.ascii "Addr"
	.db 0x00
___str_12:
	.ascii "Mode"
	.db 0x00
___str_13:
	.ascii "DMX Ok"
	.db 0x00
___str_14:
	.ascii "No DMX"
	.db 0x00
___str_15:
	.ascii "Interval"
	.db 0x00
___str_16:
	.ascii "Duration"
	.db 0x00
___str_17:
	.ascii "Fog Level"
	.db 0x00
___str_18:
	.ascii "Fog Interval"
	.db 0x00
___str_19:
	.ascii "Seconds"
	.db 0x00
___str_20:
	.ascii "Fog Duration"
	.db 0x00
___str_21:
	.ascii "Macros"
	.db 0x00
___str_22:
	.ascii "Macro Speed"
	.db 0x00
___str_23:
	.ascii "Off"
	.db 0x00
___str_24:
	.db 0x00
___str_25:
	.ascii "Remote X Action"
	.db 0x00
___str_26:
	.ascii "Saved!"
	.db 0x00
___str_27:
	.ascii "Loaded!"
	.db 0x00
___str_28:
	.ascii "Save Settings"
	.db 0x00
___str_29:
	.ascii "Load Settings"
	.db 0x00
___str_30:
	.ascii "DMX Address"
	.db 0x00
___str_31:
	.ascii "DMX Channel Mode"
	.db 0x00
___str_32:
	.ascii "Wimpy"
	.db 0x00
___str_33:
	.ascii "Mild"
	.db 0x00
___str_34:
	.ascii "Blazin"
	.db 0x00
___str_35:
	.ascii "Rainbow"
	.db 0x00
___str_36:
	.ascii "Fire"
	.db 0x00
___str_37:
	.ascii "Water"
	.db 0x00
___str_38:
	.ascii "Storm"
	.db 0x00
___str_39:
	.ascii "Acid"
	.db 0x00
___str_40:
	.ascii "Ether"
	.db 0x00
___str_41:
	.ascii "Red Level"
	.db 0x00
___str_42:
	.ascii "Green Level"
	.db 0x00
___str_43:
	.ascii "Blue Level"
	.db 0x00
___str_44:
	.ascii "Strobe Level"
	.db 0x00
___str_45:
	.ascii "No Action"
	.db 0x00
___str_46:
	.ascii "Choose Macro"
	.db 0x00
___str_47:
	.ascii "Red"
	.db 0x00
___str_48:
	.ascii "Yellow"
	.db 0x00
___str_49:
	.ascii "Green"
	.db 0x00
___str_50:
	.ascii "Cyan"
	.db 0x00
___str_51:
	.ascii "Blue"
	.db 0x00
___str_52:
	.ascii "Magenta"
	.db 0x00
___str_53:
	.ascii "Strobe Slow"
	.db 0x00
___str_54:
	.ascii "Strobe Medium"
	.db 0x00
___str_55:
	.ascii "Strobe Fast"
	.db 0x00
___str_56:
	.ascii "Blackout"
	.db 0x00
___str_57:
	.ascii "Whiteout"
	.db 0x00
___str_58:
	.ascii "Slot 1"
	.db 0x00
___str_59:
	.ascii "Slot 2"
	.db 0x00
___str_60:
	.ascii "Slot 3"
	.db 0x00
___str_61:
	.ascii "11 All"
	.db 0x00
___str_62:
	.ascii " 3 Fog + Macro"
	.db 0x00
___str_63:
	.ascii " 1 Fog"
	.db 0x00
___str_64:
	.ascii "0x486F6C6D6573"
	.db 0x00
___str_65:
	.ascii "& 576174736F6E"
	.db 0x00
___str_66:
	.ascii "626F74684F776E41"
	.db 0x00
___str_67:
	.ascii "536E6F7762616C6C"
	.db 0x00
___str_68:
	.ascii "4D6F726961727479"
	.db 0x00
___str_69:
	.ascii "646F65734E6F74 ;"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
