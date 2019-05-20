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
	.globl _set_ui_state_PARM_2
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
_tick_ui_delay_65536_37:
	.ds 4
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
_saveLoadPage_slot_65536_141:
	.ds 1
_set_ui_state_PARM_2:
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
;Allocation info for local variables in function 'tick_ui'
;------------------------------------------------------------
;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
;action                    Allocated to registers r7 
;ss                        Allocated to registers r6 
;delay                     Allocated with name '_tick_ui_delay_65536_37'
;------------------------------------------------------------
;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
	mov	_tick_ui_bursting_65536_37,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'idlePage'
;------------------------------------------------------------
;timer                     Allocated with name '_idlePage_timer_65536_59'
;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
;empty                     Allocated with name '_idlePage_empty_65536_59'
;tock                      Allocated with name '_idlePage_tock_65536_59'
;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
;playing                   Allocated with name '_idlePage_playing_65536_59'
;temp                      Allocated to registers r7 
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
;slot                      Allocated with name '_saveLoadPage_slot_65536_141'
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:742: static uint8_t slot = 0;
	mov	_saveLoadPage_slot_65536_141,#0x00
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
;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
;action                    Allocated to registers r7 
;ss                        Allocated to registers r6 
;delay                     Allocated with name '_tick_ui_delay_65536_37'
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
	mov	_set_runtime_data_PARM_3,r5
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x10
	push	ar7
	lcall	_set_runtime_data
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
;	../UI_Manager/ui.c:55: return;
	ljmp	_tick_fogger
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
	mov	_set_runtime_data_PARM_3,a
	mov	_set_runtime_data_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
	mov	dpl,#0x0f
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00115$
;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0f
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_write_string
	sjmp	00116$
00115$:
;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0f
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_write_string
00116$:
;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0f
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:73: while(delay--){ ;; }
	mov	_tick_ui_delay_65536_37,#0xb5
	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
	mov	(_tick_ui_delay_65536_37 + 2),#0x07
	mov	(_tick_ui_delay_65536_37 + 3),#0x00
00117$:
	mov	r0,_tick_ui_delay_65536_37
	mov	r1,(_tick_ui_delay_65536_37 + 1)
	mov	r2,(_tick_ui_delay_65536_37 + 2)
	mov	r6,(_tick_ui_delay_65536_37 + 3)
	dec	_tick_ui_delay_65536_37
	mov	a,#0xff
	cjne	a,_tick_ui_delay_65536_37,00434$
	dec	(_tick_ui_delay_65536_37 + 1)
	cjne	a,(_tick_ui_delay_65536_37 + 1),00434$
	dec	(_tick_ui_delay_65536_37 + 2)
	cjne	a,(_tick_ui_delay_65536_37 + 2),00434$
	dec	(_tick_ui_delay_65536_37 + 3)
00434$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r6
	jnz	00117$
;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:77: return;
	ret
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
	mov	_write_string_PARM_2,#0x0f
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:86: power_heater(HEATER_DISABLE);
	mov	dpl,#0x01
	lcall	_power_heater
	sjmp	00124$
00123$:
;	../UI_Manager/ui.c:88: write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0f
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:89: power_heater(HEATER_ENABLE);
	mov	dpl,#0x00
	lcall	_power_heater
00124$:
;	../UI_Manager/ui.c:92: write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:96: while(delay--){ ;; }
	mov	_tick_ui_delay_65536_37,#0xb5
	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
	mov	(_tick_ui_delay_65536_37 + 2),#0x07
	mov	(_tick_ui_delay_65536_37 + 3),#0x00
00125$:
	mov	r0,_tick_ui_delay_65536_37
	mov	r1,(_tick_ui_delay_65536_37 + 1)
	mov	r2,(_tick_ui_delay_65536_37 + 2)
	mov	r6,(_tick_ui_delay_65536_37 + 3)
	dec	_tick_ui_delay_65536_37
	mov	a,#0xff
	cjne	a,_tick_ui_delay_65536_37,00439$
	dec	(_tick_ui_delay_65536_37 + 1)
	cjne	a,(_tick_ui_delay_65536_37 + 1),00439$
	dec	(_tick_ui_delay_65536_37 + 2)
	cjne	a,(_tick_ui_delay_65536_37 + 2),00439$
	dec	(_tick_ui_delay_65536_37 + 3)
00439$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r6
	jnz	00125$
;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:100: return;
	ret
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
	mov	__modsint_PARM_2,#0x03
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	r4,a
	add	a,r4
	mov	r4,a
	add	a,#0x28
	mov	dpl,a
	push	ar4
	lcall	_getString
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	_write_string
	pop	ar4
;	../UI_Manager/ui.c:111: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	a,#0x29
	add	a,r4
	mov	dpl,a
	lcall	_getString
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_write_string
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
	mov	_tick_ui_delay_65536_37,#0xdd
	mov	(_tick_ui_delay_65536_37 + 1),#0x8a
	mov	(_tick_ui_delay_65536_37 + 2),#0x14
	mov	(_tick_ui_delay_65536_37 + 3),#0x00
00130$:
	mov	r0,_tick_ui_delay_65536_37
	mov	r1,(_tick_ui_delay_65536_37 + 1)
	mov	r2,(_tick_ui_delay_65536_37 + 2)
	mov	r6,(_tick_ui_delay_65536_37 + 3)
	dec	_tick_ui_delay_65536_37
	mov	a,#0xff
	cjne	a,_tick_ui_delay_65536_37,00443$
	dec	(_tick_ui_delay_65536_37 + 1)
	cjne	a,(_tick_ui_delay_65536_37 + 1),00443$
	dec	(_tick_ui_delay_65536_37 + 2)
	cjne	a,(_tick_ui_delay_65536_37 + 2),00443$
	dec	(_tick_ui_delay_65536_37 + 3)
00443$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r6
	jnz	00130$
;	../UI_Manager/ui.c:122: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:124: return;
	ret
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
	ret
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
	sjmp	00146$
00465$:
	cjne	r6,#0x0a,00466$
	sjmp	00149$
00466$:
	cjne	r6,#0x0b,00467$
	sjmp	00149$
00467$:
	cjne	r6,#0x0c,00468$
	sjmp	00149$
00468$:
	cjne	r6,#0x0d,00469$
	sjmp	00151$
00469$:
	cjne	r6,#0x0e,00470$
	sjmp	00151$
00470$:
	cjne	r6,#0x14,00471$
	sjmp	00152$
00471$:
	cjne	r6,#0x15,00472$
	sjmp	00153$
00472$:
	cjne	r6,#0x45,00154$
;	../UI_Manager/ui.c:151: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:152: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:153: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:155: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:156: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:158: break;
;	../UI_Manager/ui.c:159: case MANUAL_FOG_POWER_STATE:
	ret
00138$:
;	../UI_Manager/ui.c:160: fogLevelPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:161: break;
;	../UI_Manager/ui.c:162: case MANUAL_FOG_INTERVAL_STATE:
	ljmp	_fogLevelPage
00139$:
;	../UI_Manager/ui.c:163: fogIntervalPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:164: break;
;	../UI_Manager/ui.c:165: case MANUAL_FOG_DURATION_STATE:
	ljmp	_fogIntervalPage
00140$:
;	../UI_Manager/ui.c:166: fogDurationPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:167: break;
;	../UI_Manager/ui.c:168: case MANUAL_COLOR_MACRO_STATE:
	ljmp	_fogDurationPage
00141$:
;	../UI_Manager/ui.c:169: macroPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:170: break;
;	../UI_Manager/ui.c:171: case MANUAL_MACRO_SPEED_STATE:
	ljmp	_macroPage
00142$:
;	../UI_Manager/ui.c:172: macroSpeedPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:173: break;
;	../UI_Manager/ui.c:177: case MANUAL_STROBE_STATE:
	ljmp	_macroSpeedPage
00146$:
;	../UI_Manager/ui.c:178: colorPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:179: break;
;	../UI_Manager/ui.c:182: case MANUAL_REMOTE_ACTION_6_STATE:
	ljmp	_colorPage
00149$:
;	../UI_Manager/ui.c:183: remotePage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:184: break;
;	../UI_Manager/ui.c:186: case MANUAL_SAVE_SETTINGS_STATE:
	ljmp	_remotePage
00151$:
;	../UI_Manager/ui.c:187: saveLoadPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:188: break;
;	../UI_Manager/ui.c:189: case DMX_ADDRESS_STATE:
	ljmp	_saveLoadPage
00152$:
;	../UI_Manager/ui.c:190: dmxAddressPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:191: break;
;	../UI_Manager/ui.c:192: case DMX_CHANNEL_MODE_STATE:
	ljmp	_dmxAddressPage
00153$:
;	../UI_Manager/ui.c:193: dmxChannelPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:194: break;
;	../UI_Manager/ui.c:195: default: //IDLE state
	ljmp	_dmxChannelPage
00154$:
;	../UI_Manager/ui.c:196: idlePage();
	push	ar7
	lcall	_idlePage
	pop	ar7
;	../UI_Manager/ui.c:198: if(action == BUTTON_FUNCTION){
	cjne	r7,#0x02,00158$
;	../UI_Manager/ui.c:199: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
	ljmp	_set_ui_state
00158$:
;	../UI_Manager/ui.c:200: } else if(action == BUTTON_TIMER){
	cjne	r7,#0x01,00172$
;	../UI_Manager/ui.c:201: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:204: }
;	../UI_Manager/ui.c:207: }
	ljmp	_set_ui_state
00172$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'idlePage'
;------------------------------------------------------------
;timer                     Allocated with name '_idlePage_timer_65536_59'
;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
;empty                     Allocated with name '_idlePage_empty_65536_59'
;tock                      Allocated with name '_idlePage_tock_65536_59'
;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
;playing                   Allocated with name '_idlePage_playing_65536_59'
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:209: void idlePage(){
;	-----------------------------------------
;	 function idlePage
;	-----------------------------------------
_idlePage:
;	../UI_Manager/ui.c:218: if(Changed){
	mov	a,_Changed
	jnz	00329$
	ljmp	00116$
00329$:
;	../UI_Manager/ui.c:219: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:220: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:221: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:222: timer = 0xFF;
	mov	_idlePage_timer_65536_59,#0xff
;	../UI_Manager/ui.c:223: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
	mov	_idlePage_intervalOrDuration_65536_59,#0x55
;	../UI_Manager/ui.c:226: if(get_fog_fluid_level() == TANK_EMPTY && get_heated()){
	mov	a,_Fluid_Level
	jnz	00102$
	mov	a,_Heat_Flag
	jnb	acc.7,00102$
;	../UI_Manager/ui.c:228: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:229: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:231: empty = 0xFF;
	mov	_idlePage_empty_65536_59,#0xff
;	../UI_Manager/ui.c:233: return;
	ret
00102$:
;	../UI_Manager/ui.c:236: if(empty){
	mov	a,_idlePage_empty_65536_59
	jz	00107$
;	../UI_Manager/ui.c:237: if(get_fog_fluid_level() == TANK_FULL){
	mov	a,#0x01
	cjne	a,_Fluid_Level,00105$
;	../UI_Manager/ui.c:238: empty = 0x00;
	mov	_idlePage_empty_65536_59,#0x00
;	../UI_Manager/ui.c:239: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
00105$:
;	../UI_Manager/ui.c:242: return;
	ret
00107$:
;	../UI_Manager/ui.c:245: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00113$
;	../UI_Manager/ui.c:246: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_write_string
	sjmp	00116$
00113$:
;	../UI_Manager/ui.c:249: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
	lcall	_get_dmx_address
	mov	_write_number_PARM_2,#0x04
	mov	_write_number_PARM_3,#0x01
	mov	_write_number_PARM_4,#0x00
	lcall	_write_number
;	../UI_Manager/ui.c:250: switch (get_runtime_data(MODE_INDEX))
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	r7,dpl
	cjne	r7,#0x01,00336$
	sjmp	00108$
00336$:
;	../UI_Manager/ui.c:252: case OPTION_DMX_MODE_3:
	cjne	r7,#0x02,00110$
	sjmp	00109$
00108$:
;	../UI_Manager/ui.c:253: temp = 3;
	mov	r7,#0x03
;	../UI_Manager/ui.c:254: break;
;	../UI_Manager/ui.c:255: case OPTION_DMX_MODE_1: 
	sjmp	00111$
00109$:
;	../UI_Manager/ui.c:256: temp = 1;
	mov	r7,#0x01
;	../UI_Manager/ui.c:257: break;
;	../UI_Manager/ui.c:258: default:
	sjmp	00111$
00110$:
;	../UI_Manager/ui.c:259: temp = 11;
	mov	r7,#0x0b
;	../UI_Manager/ui.c:261: }
00111$:
;	../UI_Manager/ui.c:262: write_number(temp, 12, LINE_1, NOT_SELECTED);
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x0c
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
;	../UI_Manager/ui.c:264: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x04
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:265: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x04
	mov	_write_string_PARM_3,#0x09
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_write_string
00116$:
;	../UI_Manager/ui.c:273: tock++;
	inc	_idlePage_tock_65536_59
;	../UI_Manager/ui.c:274: if(get_playing() == PLAY){
	mov	a,#0x01
	cjne	a,_Playing,00134$
;	../UI_Manager/ui.c:275: if(playing == PAUSE){
	mov	a,_idlePage_playing_65536_59
;	../UI_Manager/ui.c:276: iconChange |= PLAY_CHANGE;
	jnz	00118$
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,a
	orl	ar6,#0x20
	mov	_idlePage_iconChange_65536_59,r6
00118$:
;	../UI_Manager/ui.c:279: if(get_interval_or_duration() == INTERVAL){
	mov	a,_Interval_Or_Duration
	jnz	00127$
;	../UI_Manager/ui.c:281: if(iconChange & PLAY_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.5,00128$
;	../UI_Manager/ui.c:282: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x80
	lcall	_write_char
;	../UI_Manager/ui.c:283: iconChange &= ~PLAY_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xdf
	sjmp	00128$
00127$:
;	../UI_Manager/ui.c:287: if(tock == 0x80 + 55){ //blink if fogging
	mov	a,#0xb7
	cjne	a,_idlePage_tock_65536_59,00124$
;	../UI_Manager/ui.c:288: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x80
	lcall	_write_char
	sjmp	00128$
00124$:
;	../UI_Manager/ui.c:289: } else if(tock == 0x08 + 55){
	mov	a,#0x3f
	cjne	a,_idlePage_tock_65536_59,00128$
;	../UI_Manager/ui.c:290: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_write_char
00128$:
;	../UI_Manager/ui.c:293: iconChange |= PAUSE_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x10
	mov	_idlePage_iconChange_65536_59,r6
	sjmp	00135$
00134$:
;	../UI_Manager/ui.c:295: if(playing == PLAY){
	mov	a,#0x01
	cjne	a,_idlePage_playing_65536_59,00130$
;	../UI_Manager/ui.c:296: iconChange |= PAUSE_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x10
	mov	_idlePage_iconChange_65536_59,r6
00130$:
;	../UI_Manager/ui.c:299: if(iconChange & PAUSE_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.4,00132$
;	../UI_Manager/ui.c:300: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_write_char
;	../UI_Manager/ui.c:301: iconChange |= PLAY_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x20
	mov	_idlePage_iconChange_65536_59,r6
;	../UI_Manager/ui.c:302: iconChange &= ~PAUSE_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xef
00132$:
;	../UI_Manager/ui.c:305: playing = PAUSE;
	mov	_idlePage_playing_65536_59,#0x00
00135$:
;	../UI_Manager/ui.c:308: if(get_heater_enabled()){
	mov	a,_Heat_Flag
	jb	acc.4,00149$
;	../UI_Manager/ui.c:309: if(get_heated()){
	mov	a,_Heat_Flag
	jnb	acc.7,00144$
;	../UI_Manager/ui.c:310: if(iconChange & HEATED_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.0,00145$
;	../UI_Manager/ui.c:311: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x60
	lcall	_write_char
;	../UI_Manager/ui.c:312: iconChange &= ~HEATED_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xfe
	sjmp	00145$
00144$:
;	../UI_Manager/ui.c:315: if(!(tock)){
	mov	a,_idlePage_tock_65536_59
	jnz	00142$
;	../UI_Manager/ui.c:316: if(iconChange & HEATING_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.1,00139$
;	../UI_Manager/ui.c:317: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_write_char
;	../UI_Manager/ui.c:318: iconChange &= ~HEATING_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xfd
	sjmp	00142$
00139$:
;	../UI_Manager/ui.c:320: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0xa0
	lcall	_write_char
;	../UI_Manager/ui.c:321: iconChange |= HEATING_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x02
	mov	_idlePage_iconChange_65536_59,r6
00142$:
;	../UI_Manager/ui.c:324: iconChange |= HEATED_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x01
	mov	_idlePage_iconChange_65536_59,r6
00145$:
;	../UI_Manager/ui.c:326: iconChange |= HEATER_CHANGE;
	mov	r6,_idlePage_iconChange_65536_59
	mov	r7,#0x00
	orl	ar6,#0x08
	mov	_idlePage_iconChange_65536_59,r6
	sjmp	00150$
00149$:
;	../UI_Manager/ui.c:328: if(iconChange & HEATER_CHANGE){
	mov	a,_idlePage_iconChange_65536_59
	jnb	acc.3,00147$
;	../UI_Manager/ui.c:329: write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_write_char
;	../UI_Manager/ui.c:330: iconChange &= ~HEATER_CHANGE;
	anl	_idlePage_iconChange_65536_59,#0xf7
00147$:
;	../UI_Manager/ui.c:332: iconChange |= HEATER_CHANGE | HEATED_CHANGE;
	orl	_idlePage_iconChange_65536_59,#0x09
00150$:
;	../UI_Manager/ui.c:337: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00356$
	ljmp	00168$
00356$:
;	../UI_Manager/ui.c:340: if(has_dmx()){
	mov	a,_Has_DMX
	jz	00156$
;	../UI_Manager/ui.c:341: if(changed & DMX_OK_CHANGE){
	mov	a,_changed
	jnb	acc.7,00157$
;	../UI_Manager/ui.c:342: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x06
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:343: changed |= NO_DMX_CHANGE;
	mov	r6,_changed
	mov	r7,#0x00
	orl	ar6,#0x40
	mov	_changed,r6
;	../UI_Manager/ui.c:344: changed &= ~DMX_OK_CHANGE;
	anl	_changed,#0x7f
	sjmp	00157$
00156$:
;	../UI_Manager/ui.c:347: if(changed & NO_DMX_CHANGE){
	mov	a,_changed
	jnb	acc.6,00157$
;	../UI_Manager/ui.c:348: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x06
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:349: changed |= DMX_OK_CHANGE;
	mov	r6,_changed
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	_changed,r6
;	../UI_Manager/ui.c:350: changed &= ~NO_DMX_CHANGE;
	anl	_changed,#0xbf
00157$:
;	../UI_Manager/ui.c:354: temp = get_timer();
;	../UI_Manager/ui.c:357: if(timer != temp){
	mov	a,_Timer
	mov	r7,a
	cjne	a,_idlePage_timer_65536_59,00360$
	ret
00360$:
;	../UI_Manager/ui.c:359: write_number(temp, 7, LINE_0, NOT_SELECTED);
	mov	ar5,r7
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x07
;	1-genFromRTrack replaced	mov	_write_number_PARM_3,#0x00
	mov	_write_number_PARM_3,r6
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	_write_number
	pop	ar7
;	../UI_Manager/ui.c:360: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
	mov	a,_Interval_Or_Duration
	jnz	00172$
	mov	r5,#0x92
	mov	r6,a
	sjmp	00173$
00172$:
	mov	r5,#0x22
	mov	r6,#0x00
00173$:
	mov	dpl,r5
	mov	_write_char_PARM_2,#0x0b
	mov	_write_char_PARM_3,#0x00
	push	ar7
	lcall	_write_char
	pop	ar7
;	../UI_Manager/ui.c:362: timer = temp;
	mov	_idlePage_timer_65536_59,r7
	ret
00168$:
;	../UI_Manager/ui.c:367: temp = get_interval_or_duration();
;	../UI_Manager/ui.c:369: if(intervalOrDuration != temp){
	mov	a,_Interval_Or_Duration
	mov	r7,a
	cjne	a,_idlePage_intervalOrDuration_65536_59,00362$
	sjmp	00164$
00362$:
;	../UI_Manager/ui.c:370: if(temp == INTERVAL){
	mov	a,r7
;	../UI_Manager/ui.c:371: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
	jnz	00161$
	mov	_write_string_PARM_2,#0x09
	mov	_write_string_PARM_3,a
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,a
	mov	dptr,#___str_15
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
	sjmp	00162$
00161$:
;	../UI_Manager/ui.c:373: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x09
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_16
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
00162$:
;	../UI_Manager/ui.c:376: intervalOrDuration = temp;
	mov	_idlePage_intervalOrDuration_65536_59,r7
00164$:
;	../UI_Manager/ui.c:379: temp = get_timer();
;	../UI_Manager/ui.c:381: if(timer != temp){
	mov	a,_Timer
	mov	r7,a
	cjne	a,_idlePage_timer_65536_59,00364$
	ret
00364$:
;	../UI_Manager/ui.c:383: write_number(temp, NUMBER_END_INDEX-1, LINE_1, NOT_SELECTED);
	mov	ar5,r7
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x0b
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	_write_number
	pop	ar7
;	../UI_Manager/ui.c:385: timer = temp;
	mov	_idlePage_timer_65536_59,r7
;	../UI_Manager/ui.c:389: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogLevelPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:391: void fogLevelPage(uint8_t action){
;	-----------------------------------------
;	 function fogLevelPage
;	-----------------------------------------
_fogLevelPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:393: switch (action)
	cjne	r7,#0x01,00152$
	sjmp	00104$
00152$:
	cjne	r7,#0x02,00153$
	sjmp	00103$
00153$:
	cjne	r7,#0x03,00154$
	sjmp	00101$
00154$:
;	../UI_Manager/ui.c:395: case BUTTON_UP:
	cjne	r7,#0x0b,00105$
	sjmp	00102$
00101$:
;	../UI_Manager/ui.c:396: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:397: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:398: break;
;	../UI_Manager/ui.c:399: case BUTTON_DOWN:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:400: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:401: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:402: break;
;	../UI_Manager/ui.c:403: case BUTTON_FUNCTION:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:404: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:405: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:406: case BUTTON_TIMER:
00104$:
;	../UI_Manager/ui.c:407: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:408: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:409: }
00105$:
;	../UI_Manager/ui.c:411: if(Changed){
	mov	a,_Changed
	jz	00107$
;	../UI_Manager/ui.c:412: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:413: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:415: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:417: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0a
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_write_string
00107$:
;	../UI_Manager/ui.c:421: if(changed){
	mov	a,_changed
	jnz	00157$
	ret
00157$:
;	../UI_Manager/ui.c:422: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:424: switch (get_runtime_data(FOG_POWER_INDEX))
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
	sjmp	00110$
00160$:
	ret
;	../UI_Manager/ui.c:426: case OPTION_FOG_LOW:
00108$:
;	../UI_Manager/ui.c:427: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x00
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
;	../UI_Manager/ui.c:428: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	_write_char_PARM_2,#0x0c
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x40
;	../UI_Manager/ui.c:429: break;
	ljmp	_write_char
;	../UI_Manager/ui.c:430: case OPTION_FOG_MEDIUM:
00109$:
;	../UI_Manager/ui.c:431: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x01
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
;	../UI_Manager/ui.c:432: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	_write_char_PARM_2,#0x0c
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x40
	lcall	_write_char
;	../UI_Manager/ui.c:433: write_char(CHAR_LVL_2, 13, LINE_1);
	mov	_write_char_PARM_2,#0x0d
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0xc0
;	../UI_Manager/ui.c:434: break;
;	../UI_Manager/ui.c:435: case OPTION_FOG_HIGH:
	ljmp	_write_char
00110$:
;	../UI_Manager/ui.c:436: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x02
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write_string
;	../UI_Manager/ui.c:437: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	_write_char_PARM_2,#0x0c
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x40
	lcall	_write_char
;	../UI_Manager/ui.c:438: write_char(CHAR_LVL_2, 13, LINE_1);
	mov	_write_char_PARM_2,#0x0d
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0xc0
	lcall	_write_char
;	../UI_Manager/ui.c:439: write_char(CHAR_LVL_3, 14, LINE_1);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x20
;	../UI_Manager/ui.c:441: }
;	../UI_Manager/ui.c:444: }
	ljmp	_write_char
;------------------------------------------------------------
;Allocation info for local variables in function 'fogIntervalPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:446: void fogIntervalPage(uint8_t action){
;	-----------------------------------------
;	 function fogIntervalPage
;	-----------------------------------------
_fogIntervalPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:448: switch (action)
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
;	../UI_Manager/ui.c:451: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:452: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x02
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:453: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:454: break;
;	../UI_Manager/ui.c:456: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:457: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x02
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:458: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:459: break;
;	../UI_Manager/ui.c:460: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:461: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:462: return;
;	../UI_Manager/ui.c:463: case BUTTON_TIMER:
	ljmp	_set_ui_state
00106$:
;	../UI_Manager/ui.c:464: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:465: return;
;	../UI_Manager/ui.c:466: }
	ljmp	_set_ui_state
00107$:
;	../UI_Manager/ui.c:468: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:469: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:470: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:472: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:474: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0d
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:475: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x08
	mov	_write_string_PARM_3,#0x07
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_write_string
00109$:
;	../UI_Manager/ui.c:479: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:480: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:482: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);
	mov	dpl,#0x02
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x01
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r7
	mov	dph,r6
;	../UI_Manager/ui.c:487: }
	ljmp	_write_number
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogDurationPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:489: void fogDurationPage(uint8_t action){
;	-----------------------------------------
;	 function fogDurationPage
;	-----------------------------------------
_fogDurationPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:491: switch (action)
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
;	../UI_Manager/ui.c:494: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:495: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x01
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:496: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:497: break;
;	../UI_Manager/ui.c:499: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:500: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x01
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:501: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:502: break;
;	../UI_Manager/ui.c:503: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:504: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:505: return;
;	../UI_Manager/ui.c:506: case BUTTON_TIMER:
	ljmp	_set_ui_state
00106$:
;	../UI_Manager/ui.c:507: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:508: return;
;	../UI_Manager/ui.c:509: }
	ljmp	_set_ui_state
00107$:
;	../UI_Manager/ui.c:511: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:512: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:513: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:515: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:517: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0d
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:518: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x08
	mov	_write_string_PARM_3,#0x07
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_write_string
00109$:
;	../UI_Manager/ui.c:522: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:523: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:525: write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);
	mov	dpl,#0x01
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x01
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r7
	mov	dph,r6
;	../UI_Manager/ui.c:528: }
	ljmp	_write_number
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'macroPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:530: void macroPage(uint8_t action){
;	-----------------------------------------
;	 function macroPage
;	-----------------------------------------
_macroPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:532: switch (action)
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
;	../UI_Manager/ui.c:535: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:536: set_runtime_data(MACRO_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x03
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:537: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:538: break;
;	../UI_Manager/ui.c:540: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:541: set_runtime_data(MACRO_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x03
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:542: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:543: break;
;	../UI_Manager/ui.c:544: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:545: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:546: return;
;	../UI_Manager/ui.c:547: case BUTTON_TIMER:
	ljmp	_set_ui_state
00106$:
;	../UI_Manager/ui.c:548: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:549: return;
;	../UI_Manager/ui.c:550: }
	ljmp	_set_ui_state
00107$:
;	../UI_Manager/ui.c:552: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:553: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:554: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:556: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:558: write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x07
	mov	_write_string_PARM_3,#0x04
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_write_string
00109$:
;	../UI_Manager/ui.c:562: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:563: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:565: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
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
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	../UI_Manager/ui.c:568: }
	ljmp	_write_string
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'macroSpeedPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:570: void macroSpeedPage(uint8_t action){
;	-----------------------------------------
;	 function macroSpeedPage
;	-----------------------------------------
_macroSpeedPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:572: switch (action)
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
;	../UI_Manager/ui.c:575: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:576: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:577: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:578: break;
;	../UI_Manager/ui.c:580: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:581: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:582: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:583: break;
;	../UI_Manager/ui.c:584: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:585: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:586: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:587: case BUTTON_TIMER:
00106$:
;	../UI_Manager/ui.c:588: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:589: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:590: }
00107$:
;	../UI_Manager/ui.c:592: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:593: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:594: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:596: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:598: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0c
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_write_string
00109$:
;	../UI_Manager/ui.c:602: if(changed){
	mov	a,_changed
	jz	00115$
;	../UI_Manager/ui.c:603: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:605: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
	mov	dpl,#0x04
	lcall	_get_runtime_data
	mov	a,dpl
;	../UI_Manager/ui.c:606: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	jnz	00111$
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,a
	mov	dptr,#___str_23
	mov	b,#0x80
	ljmp	_write_string
00111$:
;	../UI_Manager/ui.c:608: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:609: write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
	mov	dpl,#0x04
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x05
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r7
	mov	dph,r6
;	../UI_Manager/ui.c:613: }
	ljmp	_write_number
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'colorPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;index                     Allocated to registers r6 
;------------------------------------------------------------
;	../UI_Manager/ui.c:615: void colorPage(uint8_t action){
;	-----------------------------------------
;	 function colorPage
;	-----------------------------------------
_colorPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:616: uint8_t index = 0;
	mov	r6,#0x00
;	../UI_Manager/ui.c:618: switch (State)
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
;	../UI_Manager/ui.c:620: case MANUAL_RED_STATE:
	cjne	r5,#0x09,00105$
	sjmp	00104$
00101$:
;	../UI_Manager/ui.c:621: index = RED_INDEX;
	mov	r6,#0x05
;	../UI_Manager/ui.c:622: break;
;	../UI_Manager/ui.c:623: case MANUAL_GREEN_STATE:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:624: index = GREEN_INDEX;
	mov	r6,#0x06
;	../UI_Manager/ui.c:625: break;
;	../UI_Manager/ui.c:626: case MANUAL_BLUE_STATE:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:627: index = BLUE_INDEX;
	mov	r6,#0x07
;	../UI_Manager/ui.c:628: break;
;	../UI_Manager/ui.c:629: case MANUAL_STROBE_STATE:
	sjmp	00105$
00104$:
;	../UI_Manager/ui.c:630: index = STROBE_INDEX;
	mov	r6,#0x08
;	../UI_Manager/ui.c:632: }
00105$:
;	../UI_Manager/ui.c:634: switch (action)
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
;	../UI_Manager/ui.c:637: case BUTTON_UP:
	cjne	r7,#0x6f,00112$
	sjmp	00109$
00107$:
;	../UI_Manager/ui.c:638: set_runtime_data(index, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r6
	push	ar6
	lcall	_set_runtime_data
	pop	ar6
;	../UI_Manager/ui.c:639: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:640: break;
;	../UI_Manager/ui.c:642: case BUTTON_DOWN:
	sjmp	00112$
00109$:
;	../UI_Manager/ui.c:643: set_runtime_data(index, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r6
	push	ar6
	lcall	_set_runtime_data
	pop	ar6
;	../UI_Manager/ui.c:644: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:645: break;
;	../UI_Manager/ui.c:646: case BUTTON_FUNCTION:
	sjmp	00112$
00110$:
;	../UI_Manager/ui.c:647: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:648: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:649: case BUTTON_TIMER:
00111$:
;	../UI_Manager/ui.c:650: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:651: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:652: }
00112$:
;	../UI_Manager/ui.c:654: if(Changed){
	mov	a,_Changed
	jz	00114$
;	../UI_Manager/ui.c:655: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:656: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:658: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar6
	lcall	_exe_command
;	../UI_Manager/ui.c:660: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
	mov	r7,_State
	mov	a,#0xc8
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_write_string
	pop	ar6
00114$:
;	../UI_Manager/ui.c:664: if(changed){
	mov	a,_changed
	jz	00120$
;	../UI_Manager/ui.c:665: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:667: if(get_runtime_data(index) == 0){
	mov	dpl,r6
	push	ar6
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar6
;	../UI_Manager/ui.c:668: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	jnz	00116$
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,a
	mov	dptr,#___str_23
	mov	b,#0x80
	ljmp	_write_string
00116$:
;	../UI_Manager/ui.c:670: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_24
	mov	b,#0x80
	push	ar6
	lcall	_write_string
	pop	ar6
;	../UI_Manager/ui.c:671: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
	mov	dpl,r6
	lcall	_get_runtime_data
	mov	r7,dpl
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x06
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r7
	mov	dph,r6
;	../UI_Manager/ui.c:674: }
	ljmp	_write_number
00120$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remotePage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;remoteNumber              Allocated to registers r6 
;index                     Allocated to registers r5 
;------------------------------------------------------------
;	../UI_Manager/ui.c:676: void remotePage(uint8_t action){
;	-----------------------------------------
;	 function remotePage
;	-----------------------------------------
_remotePage:
	mov	r7,dpl
;	../UI_Manager/ui.c:677: uint8_t remoteNumber = 0;
	mov	r6,#0x00
;	../UI_Manager/ui.c:678: uint8_t index = 0;
	mov	r5,#0x00
;	../UI_Manager/ui.c:680: switch (State)
	mov	r4,_State
	cjne	r4,#0x0a,00168$
	sjmp	00101$
00168$:
	cjne	r4,#0x0b,00169$
	sjmp	00102$
00169$:
;	../UI_Manager/ui.c:682: case MANUAL_REMOTE_ACTION_4_STATE:
	cjne	r4,#0x0c,00104$
	sjmp	00103$
00101$:
;	../UI_Manager/ui.c:683: index = R4_INDEX;
	mov	r5,#0x09
;	../UI_Manager/ui.c:684: remoteNumber = 4;
	mov	r6,#0x04
;	../UI_Manager/ui.c:685: break;
;	../UI_Manager/ui.c:686: case MANUAL_REMOTE_ACTION_5_STATE:
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:687: index = R5_INDEX;
	mov	r5,#0x0a
;	../UI_Manager/ui.c:688: remoteNumber = 5;
	mov	r6,#0x05
;	../UI_Manager/ui.c:689: break;
;	../UI_Manager/ui.c:690: case MANUAL_REMOTE_ACTION_6_STATE:
	sjmp	00104$
00103$:
;	../UI_Manager/ui.c:691: index = R6_INDEX;
	mov	r5,#0x0b
;	../UI_Manager/ui.c:692: remoteNumber = 6;
	mov	r6,#0x06
;	../UI_Manager/ui.c:694: }
00104$:
;	../UI_Manager/ui.c:696: switch (action)
	cjne	r7,#0x01,00171$
	sjmp	00108$
00171$:
	cjne	r7,#0x02,00172$
	sjmp	00107$
00172$:
	cjne	r7,#0x03,00173$
	sjmp	00105$
00173$:
;	../UI_Manager/ui.c:698: case BUTTON_UP:
	cjne	r7,#0x0b,00109$
	sjmp	00106$
00105$:
;	../UI_Manager/ui.c:699: set_runtime_data(index, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r5
	push	ar6
	push	ar5
	lcall	_set_runtime_data
	pop	ar5
	pop	ar6
;	../UI_Manager/ui.c:700: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:701: break;
;	../UI_Manager/ui.c:702: case BUTTON_DOWN:
	sjmp	00109$
00106$:
;	../UI_Manager/ui.c:703: set_runtime_data(index, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r5
	push	ar6
	push	ar5
	lcall	_set_runtime_data
	pop	ar5
	pop	ar6
;	../UI_Manager/ui.c:704: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:705: break;
;	../UI_Manager/ui.c:706: case BUTTON_FUNCTION:
	sjmp	00109$
00107$:
;	../UI_Manager/ui.c:707: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:708: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:709: case BUTTON_TIMER:
00108$:
;	../UI_Manager/ui.c:710: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:711: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:712: }
00109$:
;	../UI_Manager/ui.c:714: if(Changed){
	mov	a,_Changed
	jz	00115$
;	../UI_Manager/ui.c:715: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:716: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:718: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar6
	push	ar5
	lcall	_exe_command
;	../UI_Manager/ui.c:720: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_write_string
	pop	ar5
	pop	ar6
;	../UI_Manager/ui.c:721: switch (remoteNumber)
	cjne	r6,#0x04,00176$
	sjmp	00110$
00176$:
	cjne	r6,#0x05,00177$
	sjmp	00111$
00177$:
;	../UI_Manager/ui.c:723: case 4:
	cjne	r6,#0x06,00115$
	sjmp	00112$
00110$:
;	../UI_Manager/ui.c:724: write_char(CHAR_4, 8, LINE_0);
	mov	_write_char_PARM_2,#0x08
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x2c
	push	ar5
	lcall	_write_char
	pop	ar5
;	../UI_Manager/ui.c:725: break;
;	../UI_Manager/ui.c:726: case 5:
	sjmp	00115$
00111$:
;	../UI_Manager/ui.c:727: write_char(CHAR_5, 8, LINE_0);
	mov	_write_char_PARM_2,#0x08
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0xac
	push	ar5
	lcall	_write_char
	pop	ar5
;	../UI_Manager/ui.c:728: break;
;	../UI_Manager/ui.c:729: case 6:
	sjmp	00115$
00112$:
;	../UI_Manager/ui.c:730: write_char(CHAR_6, 8, LINE_0);
	mov	_write_char_PARM_2,#0x08
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x6c
	push	ar5
	lcall	_write_char
	pop	ar5
;	../UI_Manager/ui.c:732: }
00115$:
;	../UI_Manager/ui.c:735: if(changed){
	mov	a,_changed
	jz	00118$
;	../UI_Manager/ui.c:736: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:737: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
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
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	../UI_Manager/ui.c:739: }
	ljmp	_write_string
00118$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'saveLoadPage'
;------------------------------------------------------------
;slot                      Allocated with name '_saveLoadPage_slot_65536_141'
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:741: void saveLoadPage(uint8_t action){
;	-----------------------------------------
;	 function saveLoadPage
;	-----------------------------------------
_saveLoadPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:744: switch (action)
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
;	../UI_Manager/ui.c:747: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
	mov	b,#0x03
	mov	a,_saveLoadPage_slot_65536_141
	div	ab
	mov	r7,b
	mov	a,#0x0d
	cjne	a,_State,00119$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00120$
00119$:
	mov	r5,#0x00
	mov	r6,#0x00
00120$:
	mov	_save_load_settings_PARM_2,r5
	mov	dpl,r7
	lcall	_save_load_settings
;	../UI_Manager/ui.c:748: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:750: if(State == MANUAL_SAVE_SETTINGS_STATE){
	mov	a,#0x0d
	cjne	a,_State,00103$
;	../UI_Manager/ui.c:751: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_write_string
	sjmp	00109$
00103$:
;	../UI_Manager/ui.c:753: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:755: break;
;	../UI_Manager/ui.c:756: case BUTTON_UP:
	sjmp	00109$
00105$:
;	../UI_Manager/ui.c:757: slot++;
	inc	_saveLoadPage_slot_65536_141
;	../UI_Manager/ui.c:758: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:759: break;
;	../UI_Manager/ui.c:760: case BUTTON_DOWN:
	sjmp	00109$
00106$:
;	../UI_Manager/ui.c:761: slot--;
	dec	_saveLoadPage_slot_65536_141
;	../UI_Manager/ui.c:762: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:763: break;
;	../UI_Manager/ui.c:764: case BUTTON_FUNCTION:
	sjmp	00109$
00107$:
;	../UI_Manager/ui.c:765: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:766: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:767: case BUTTON_TIMER:
00108$:
;	../UI_Manager/ui.c:768: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:769: return;
	ljmp	_set_ui_state
;	../UI_Manager/ui.c:770: }
00109$:
;	../UI_Manager/ui.c:772: if(Changed){
	mov	a,_Changed
	jz	00114$
;	../UI_Manager/ui.c:773: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:774: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:776: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:778: if(State == MANUAL_SAVE_SETTINGS_STATE){
	mov	a,#0x0d
	cjne	a,_State,00111$
;	../UI_Manager/ui.c:779: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0e
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_write_string
	sjmp	00114$
00111$:
;	../UI_Manager/ui.c:781: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0e
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_write_string
00114$:
;	../UI_Manager/ui.c:786: if(changed){
	mov	a,_changed
	jz	00117$
;	../UI_Manager/ui.c:787: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:788: write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
	mov	b,#0x03
	mov	a,_saveLoadPage_slot_65536_141
	div	ab
	mov	r7,b
	mov	a,#0x50
	add	a,r7
	mov	dpl,a
	lcall	_getString
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x04
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	../UI_Manager/ui.c:791: }
	ljmp	_write_string
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxAddressPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:793: void dmxAddressPage(uint8_t action){
;	-----------------------------------------
;	 function dmxAddressPage
;	-----------------------------------------
_dmxAddressPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:795: switch (action)
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
;	../UI_Manager/ui.c:798: case BUTTON_UP:
	cjne	r7,#0x6f,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:799: set_dmx_address(INC);
	mov	dpl,#0x01
	lcall	_set_dmx_address
;	../UI_Manager/ui.c:800: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:801: break;
;	../UI_Manager/ui.c:803: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:804: set_dmx_address(DEC);
	mov	dpl,#0x02
	lcall	_set_dmx_address
;	../UI_Manager/ui.c:805: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:806: break;
;	../UI_Manager/ui.c:807: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:808: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:809: return;
;	../UI_Manager/ui.c:810: case BUTTON_TIMER:
	ljmp	_set_ui_state
00106$:
;	../UI_Manager/ui.c:811: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:812: return;
;	../UI_Manager/ui.c:813: }
	ljmp	_set_ui_state
00107$:
;	../UI_Manager/ui.c:815: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:816: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:817: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:819: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:821: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0c
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_write_string
00109$:
;	../UI_Manager/ui.c:824: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:825: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:827: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
	lcall	_get_dmx_address
	mov	_write_number_PARM_2,#0x04
	mov	_write_number_PARM_3,#0x01
	mov	_write_number_PARM_4,#0x00
;	../UI_Manager/ui.c:830: }
	ljmp	_write_number
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxChannelPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:832: void dmxChannelPage(uint8_t action){
;	-----------------------------------------
;	 function dmxChannelPage
;	-----------------------------------------
_dmxChannelPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:834: switch (action)
	cjne	r7,#0x01,00136$
	sjmp	00104$
00136$:
	cjne	r7,#0x02,00137$
	sjmp	00103$
00137$:
	cjne	r7,#0x03,00138$
	sjmp	00101$
00138$:
;	../UI_Manager/ui.c:836: case BUTTON_UP:
	cjne	r7,#0x0b,00105$
	sjmp	00102$
00101$:
;	../UI_Manager/ui.c:837: set_runtime_data(MODE_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x0e
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:838: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:839: break;
;	../UI_Manager/ui.c:840: case BUTTON_DOWN:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:841: set_runtime_data(MODE_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x0e
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:842: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:843: break;
;	../UI_Manager/ui.c:844: case BUTTON_FUNCTION:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:845: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:846: return;
;	../UI_Manager/ui.c:847: case BUTTON_TIMER:
	ljmp	_set_ui_state
00104$:
;	../UI_Manager/ui.c:848: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:849: return;
;	../UI_Manager/ui.c:850: }
	ljmp	_set_ui_state
00105$:
;	../UI_Manager/ui.c:852: if(Changed){
	mov	a,_Changed
	jz	00107$
;	../UI_Manager/ui.c:853: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:854: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:856: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:858: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x11
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_write_string
00107$:
;	../UI_Manager/ui.c:861: if(changed){
	mov	a,_changed
	jz	00110$
;	../UI_Manager/ui.c:862: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:864: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
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
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	../UI_Manager/ui.c:867: }
	ljmp	_write_string
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ui_state'
;------------------------------------------------------------
;state                     Allocated with name '_set_ui_state_PARM_2'
;inc                       Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:869: void set_ui_state(uint8_t inc, uint8_t state){
;	-----------------------------------------
;	 function set_ui_state
;	-----------------------------------------
_set_ui_state:
	mov	r7,dpl
;	../UI_Manager/ui.c:870: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:872: switch (inc)
	cjne	r7,#0x01,00187$
	sjmp	00115$
00187$:
	cjne	r7,#0x02,00127$
;	../UI_Manager/ui.c:875: state = State;
	mov	_set_ui_state_PARM_2,_State
;	../UI_Manager/ui.c:876: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00113$
;	../UI_Manager/ui.c:877: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00105$
;	../UI_Manager/ui.c:878: state = DMX_STATE_LOW;
	mov	_set_ui_state_PARM_2,#0x14
	ljmp	00132$
00105$:
;	../UI_Manager/ui.c:879: } else if(++state > DMX_STATE_HIGH){
	inc	_set_ui_state_PARM_2
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x15
	jnc	00132$
;	../UI_Manager/ui.c:880: state = IDLE_STATE;
	mov	_set_ui_state_PARM_2,#0x00
	sjmp	00132$
00113$:
;	../UI_Manager/ui.c:883: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00110$
;	../UI_Manager/ui.c:884: state = IDLE_STATE + 1; 
	mov	_set_ui_state_PARM_2,#0x01
	sjmp	00132$
00110$:
;	../UI_Manager/ui.c:885: } else if(++state > MANUAL_STATE_HIGH){
	inc	_set_ui_state_PARM_2
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x0e
	jnc	00132$
;	../UI_Manager/ui.c:886: state = IDLE_STATE;
	mov	_set_ui_state_PARM_2,#0x00
;	../UI_Manager/ui.c:889: break;
;	../UI_Manager/ui.c:890: case INC:
	sjmp	00132$
00115$:
;	../UI_Manager/ui.c:891: state = State;
	mov	_set_ui_state_PARM_2,_State
;	../UI_Manager/ui.c:892: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00125$
;	../UI_Manager/ui.c:893: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00119$
;	../UI_Manager/ui.c:894: state = DMX_STATE_HIGH;
	mov	_set_ui_state_PARM_2,#0x15
	sjmp	00132$
00119$:
;	../UI_Manager/ui.c:895: } else if(--state < DMX_STATE_LOW){
	dec	_set_ui_state_PARM_2
	mov	a,#0x100 - 0x14
	add	a,_set_ui_state_PARM_2
	jc	00132$
;	../UI_Manager/ui.c:896: state = IDLE_STATE;
	mov	_set_ui_state_PARM_2,#0x00
	sjmp	00132$
00125$:
;	../UI_Manager/ui.c:899: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00122$
;	../UI_Manager/ui.c:900: state = MANUAL_STATE_HIGH; 
	mov	_set_ui_state_PARM_2,#0x0e
	sjmp	00132$
00122$:
;	../UI_Manager/ui.c:902: state--;
	dec	_set_ui_state_PARM_2
;	../UI_Manager/ui.c:905: break;
;	../UI_Manager/ui.c:906: default: 
	sjmp	00132$
00127$:
;	../UI_Manager/ui.c:907: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x0e
	jnc	00128$
	mov	a,#0x100 - 0x14
	add	a,_set_ui_state_PARM_2
	jnc	00132$
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x15
	jc	00132$
00128$:
;	../UI_Manager/ui.c:908: state = IDLE_STATE;
	mov	_set_ui_state_PARM_2,#0x00
;	../UI_Manager/ui.c:911: }
00132$:
;	../UI_Manager/ui.c:913: State = state;
	mov	_State,_set_ui_state_PARM_2
;	../UI_Manager/ui.c:914: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_ui_state'
;------------------------------------------------------------
;	../UI_Manager/ui.c:916: uint8_t get_ui_state(){
;	-----------------------------------------
;	 function get_ui_state
;	-----------------------------------------
_get_ui_state:
;	../UI_Manager/ui.c:917: return State;
	mov	dpl,_State
;	../UI_Manager/ui.c:918: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getString'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:920: char* getString(uint8_t index){
;	-----------------------------------------
;	 function getString
;	-----------------------------------------
_getString:
	mov	r7,dpl
;	../UI_Manager/ui.c:921: switch (index)
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
;	../UI_Manager/ui.c:923: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
00101$:
;	../UI_Manager/ui.c:924: return "Wimpy";
	mov	dptr,#___str_32
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:925: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
00102$:
;	../UI_Manager/ui.c:926: return "Mild";
	mov	dptr,#___str_33
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:927: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
00103$:
;	../UI_Manager/ui.c:928: return "Blazin";
	mov	dptr,#___str_34
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:930: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
00104$:
;	../UI_Manager/ui.c:931: return "Off";
	mov	dptr,#___str_23
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:932: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
00105$:
;	../UI_Manager/ui.c:933: return "Rainbow";
	mov	dptr,#___str_35
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:934: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
00106$:
;	../UI_Manager/ui.c:935: return "Fire";
	mov	dptr,#___str_36
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:936: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
00107$:
;	../UI_Manager/ui.c:937: return "Water";
	mov	dptr,#___str_37
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:938: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
00108$:
;	../UI_Manager/ui.c:939: return "Storm";
	mov	dptr,#___str_38
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:940: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
00109$:
;	../UI_Manager/ui.c:941: return "Acid";
	mov	dptr,#___str_39
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:942: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
00110$:
;	../UI_Manager/ui.c:943: return "Ether";
	mov	dptr,#___str_40
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:945: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
00111$:
;	../UI_Manager/ui.c:946: return "Red Level";
	mov	dptr,#___str_41
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:947: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
00112$:
;	../UI_Manager/ui.c:948: return "Green Level";
	mov	dptr,#___str_42
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:949: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
00113$:
;	../UI_Manager/ui.c:950: return "Blue Level";
	mov	dptr,#___str_43
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:951: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
00114$:
;	../UI_Manager/ui.c:952: return "Strobe Level";
	mov	dptr,#___str_44
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:954: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
00115$:
;	../UI_Manager/ui.c:955: return "No Action";
	mov	dptr,#___str_45
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:956: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
00116$:
;	../UI_Manager/ui.c:957: return "Choose Macro";
	mov	dptr,#___str_46
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:958: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
00117$:
;	../UI_Manager/ui.c:959: return "Red";
	mov	dptr,#___str_47
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:960: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
00118$:
;	../UI_Manager/ui.c:961: return "Yellow";
	mov	dptr,#___str_48
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:962: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
00119$:
;	../UI_Manager/ui.c:963: return "Green";
	mov	dptr,#___str_49
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:964: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
00120$:
;	../UI_Manager/ui.c:965: return "Cyan";
	mov	dptr,#___str_50
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:966: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
00121$:
;	../UI_Manager/ui.c:967: return "Blue";
	mov	dptr,#___str_51
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:968: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
00122$:
;	../UI_Manager/ui.c:969: return "Magenta";
	mov	dptr,#___str_52
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:970: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
00123$:
;	../UI_Manager/ui.c:971: return "Strobe Slow";
	mov	dptr,#___str_53
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:972: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
00124$:
;	../UI_Manager/ui.c:973: return "Strobe Medium";
	mov	dptr,#___str_54
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:974: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
00125$:
;	../UI_Manager/ui.c:975: return "Strobe Fast";
	mov	dptr,#___str_55
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:976: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
00126$:
;	../UI_Manager/ui.c:977: return "Blackout";
	mov	dptr,#___str_56
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:978: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
00127$:
;	../UI_Manager/ui.c:979: return "Whiteout";         
	mov	dptr,#___str_57
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:981: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
00128$:
;	../UI_Manager/ui.c:982: return "Slot 1";   
	mov	dptr,#___str_58
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:983: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
00129$:
;	../UI_Manager/ui.c:984: return "Slot 2";   
	mov	dptr,#___str_59
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:985: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
00130$:
;	../UI_Manager/ui.c:986: return "Slot 3"; 
	mov	dptr,#___str_60
	mov	b,#0x80
;	../UI_Manager/ui.c:988: case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
	ret
00131$:
;	../UI_Manager/ui.c:989: return "11 All";     
	mov	dptr,#___str_61
	mov	b,#0x80
;	../UI_Manager/ui.c:990: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
	ret
00132$:
;	../UI_Manager/ui.c:991: return " 3 Fog + Macro";   
	mov	dptr,#___str_62
	mov	b,#0x80
;	../UI_Manager/ui.c:992: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
	ret
00133$:
;	../UI_Manager/ui.c:993: return " 1 Fog";    
	mov	dptr,#___str_63
	mov	b,#0x80
;	../UI_Manager/ui.c:995: case SECRET_STRING_OFFSET + 0:
	ret
00134$:
;	../UI_Manager/ui.c:996: return "0x486F6C6D6573";
	mov	dptr,#___str_64
	mov	b,#0x80
;	../UI_Manager/ui.c:997: case SECRET_STRING_OFFSET + 1:
	ret
00135$:
;	../UI_Manager/ui.c:998: return "& 576174736F6E";
	mov	dptr,#___str_65
	mov	b,#0x80
;	../UI_Manager/ui.c:999: case SECRET_STRING_OFFSET + 2:
	ret
00136$:
;	../UI_Manager/ui.c:1000: return "626F74684F776E41";
	mov	dptr,#___str_66
	mov	b,#0x80
;	../UI_Manager/ui.c:1001: case SECRET_STRING_OFFSET + 3:
	ret
00137$:
;	../UI_Manager/ui.c:1002: return "536E6F7762616C6C";
	mov	dptr,#___str_67
	mov	b,#0x80
;	../UI_Manager/ui.c:1003: case SECRET_STRING_OFFSET + 4:
	ret
00138$:
;	../UI_Manager/ui.c:1004: return "4D6F726961727479";
	mov	dptr,#___str_68
	mov	b,#0x80
;	../UI_Manager/ui.c:1005: case SECRET_STRING_OFFSET + 5:
	ret
00139$:
;	../UI_Manager/ui.c:1006: return "646F65734E6F74 ;";
	mov	dptr,#___str_69
	mov	b,#0x80
;	../UI_Manager/ui.c:1007: }
	ret
00140$:
;	../UI_Manager/ui.c:1009: return 0;
	mov	dptr,#0x0000
	mov	b,#0x00
;	../UI_Manager/ui.c:1010: }
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
