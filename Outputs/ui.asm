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
_idlePage_timer_65536_55:
	.ds 1
_idlePage_intervalOrDuration_65536_55:
	.ds 1
_idlePage_empty_65536_55:
	.ds 1
_idlePage_tock_65536_55:
	.ds 1
_idlePage_iconChange_65536_55:
	.ds 1
_idlePage_playing_65536_55:
	.ds 1
_saveLoadPage_slot_65536_134:
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
;ss                        Allocated to registers 
;delay                     Allocated with name '_tick_ui_delay_65536_37'
;------------------------------------------------------------
;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
	mov	_tick_ui_bursting_65536_37,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'idlePage'
;------------------------------------------------------------
;timer                     Allocated with name '_idlePage_timer_65536_55'
;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_55'
;empty                     Allocated with name '_idlePage_empty_65536_55'
;tock                      Allocated with name '_idlePage_tock_65536_55'
;iconChange                Allocated with name '_idlePage_iconChange_65536_55'
;playing                   Allocated with name '_idlePage_playing_65536_55'
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:186: static uint8_t timer = 0;
	mov	_idlePage_timer_65536_55,#0x00
;	../UI_Manager/ui.c:188: static uint8_t empty = 0x00;
	mov	_idlePage_empty_65536_55,#0x00
;	../UI_Manager/ui.c:189: static uint8_t tock = 0x00;
	mov	_idlePage_tock_65536_55,#0x00
;	../UI_Manager/ui.c:190: static uint8_t iconChange = 0x00;
	mov	_idlePage_iconChange_65536_55,#0x00
;	../UI_Manager/ui.c:191: static uint8_t playing = PAUSE;
	mov	_idlePage_playing_65536_55,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'saveLoadPage'
;------------------------------------------------------------
;slot                      Allocated with name '_saveLoadPage_slot_65536_134'
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:703: static uint8_t slot = 0;
	mov	_saveLoadPage_slot_65536_134,#0x00
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
;ss                        Allocated to registers 
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
;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_FUN_BURST){
	clr	a
	cjne	r7,#0x05,00387$
	inc	a
00387$:
	mov	r6,a
	jnz	00103$
	cjne	r7,#0x0b,00104$
00103$:
;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
	mov	a,r6
	jz	00166$
	mov	r5,#0x02
	mov	r6,#0x00
	sjmp	00167$
00166$:
	mov	r5,#0x03
	mov	r6,#0x00
00167$:
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
	cjne	r7,#0x07,00108$
;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
	mov	dpl,#0x10
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x80,00168$
	mov	r5,#0x00
	mov	r6,#0x00
	sjmp	00169$
00168$:
	mov	r5,#0x80
	mov	r6,#0x00
00169$:
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
;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER){
	cjne	r7,#0x01,00113$
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
	cjne	r7,#0x08,00402$
	sjmp	00403$
00402$:
	ljmp	00121$
00403$:
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
	cjne	a,_tick_ui_delay_65536_37,00405$
	dec	(_tick_ui_delay_65536_37 + 1)
	cjne	a,(_tick_ui_delay_65536_37 + 1),00405$
	dec	(_tick_ui_delay_65536_37 + 2)
	cjne	a,(_tick_ui_delay_65536_37 + 2),00405$
	dec	(_tick_ui_delay_65536_37 + 3)
00405$:
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
;	../UI_Manager/ui.c:81: if(action == BUTTON_MAN_BURST){
	cjne	r7,#0x09,00407$
	sjmp	00408$
00407$:
	ljmp	00126$
00408$:
;	../UI_Manager/ui.c:83: ss = bursting & ~BURSTING;
	mov	a,#0x7f
	anl	a,_tick_ui_bursting_65536_37
	mov	r6,a
;	../UI_Manager/ui.c:85: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar6
	lcall	_exe_command
	pop	ar6
;	../UI_Manager/ui.c:87: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
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
;	../UI_Manager/ui.c:88: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
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
;	../UI_Manager/ui.c:90: ss++;
	mov	a,r6
	inc	a
;	../UI_Manager/ui.c:92: bursting |= (ss & ~BURSTING);
	anl	a,#0x7f
	orl	_tick_ui_bursting_65536_37,a
;	../UI_Manager/ui.c:96: while(delay--){ ;; }
	mov	_tick_ui_delay_65536_37,#0xdd
	mov	(_tick_ui_delay_65536_37 + 1),#0x8a
	mov	(_tick_ui_delay_65536_37 + 2),#0x14
	mov	(_tick_ui_delay_65536_37 + 3),#0x00
00122$:
	mov	r0,_tick_ui_delay_65536_37
	mov	r1,(_tick_ui_delay_65536_37 + 1)
	mov	r2,(_tick_ui_delay_65536_37 + 2)
	mov	r6,(_tick_ui_delay_65536_37 + 3)
	dec	_tick_ui_delay_65536_37
	mov	a,#0xff
	cjne	a,_tick_ui_delay_65536_37,00409$
	dec	(_tick_ui_delay_65536_37 + 1)
	cjne	a,(_tick_ui_delay_65536_37 + 1),00409$
	dec	(_tick_ui_delay_65536_37 + 2)
	cjne	a,(_tick_ui_delay_65536_37 + 2),00409$
	dec	(_tick_ui_delay_65536_37 + 3)
00409$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r6
	jnz	00122$
;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:100: return;
	ret
00126$:
;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_TIME){
	cjne	r7,#0x04,00128$
;	../UI_Manager/ui.c:105: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:106: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
00128$:
;	../UI_Manager/ui.c:111: if(Changed || 
	mov	a,_Changed
	jnz	00153$
;	../UI_Manager/ui.c:112: action == BUTTON_UP ||
	cjne	r7,#0x03,00414$
	sjmp	00153$
00414$:
;	../UI_Manager/ui.c:113: action == BUTTON_UP_HOLD||
	cjne	r7,#0x1e,00415$
	sjmp	00153$
00415$:
;	../UI_Manager/ui.c:114: action == BUTTON_UP_BURST ||
	cjne	r7,#0x1f,00416$
	sjmp	00153$
00416$:
;	../UI_Manager/ui.c:115: action == BUTTON_DOWN ||
	cjne	r7,#0x0a,00417$
	sjmp	00153$
00417$:
;	../UI_Manager/ui.c:116: action == BUTTON_DOWN_HOLD ||
	cjne	r7,#0x64,00418$
	sjmp	00153$
00418$:
;	../UI_Manager/ui.c:117: action == BUTTON_DOWN_BURST ||
	cjne	r7,#0x65,00419$
	sjmp	00153$
00419$:
;	../UI_Manager/ui.c:118: action == BUTTON_FUN_UP ||
	cjne	r7,#0x0c,00420$
	sjmp	00153$
00420$:
;	../UI_Manager/ui.c:119: action == BUTTON_FUNCTION ||
	cjne	r7,#0x02,00421$
	sjmp	00153$
00421$:
;	../UI_Manager/ui.c:120: State == IDLE_STATE){
	mov	a,_State
	jz	00422$
	ret
00422$:
00153$:
;	../UI_Manager/ui.c:122: switch (State)
	mov	r6,_State
	cjne	r6,#0x01,00423$
	ljmp	00130$
00423$:
	cjne	r6,#0x02,00424$
	ljmp	00132$
00424$:
	cjne	r6,#0x03,00425$
	ljmp	00131$
00425$:
	cjne	r6,#0x04,00426$
	ljmp	00133$
00426$:
	cjne	r6,#0x05,00427$
	ljmp	00134$
00427$:
	cjne	r6,#0x06,00428$
	ljmp	00138$
00428$:
	cjne	r6,#0x07,00429$
	ljmp	00138$
00429$:
	cjne	r6,#0x08,00430$
	ljmp	00138$
00430$:
	cjne	r6,#0x09,00431$
	sjmp	00138$
00431$:
	cjne	r6,#0x0a,00432$
	sjmp	00141$
00432$:
	cjne	r6,#0x0b,00433$
	sjmp	00141$
00433$:
	cjne	r6,#0x0c,00434$
	sjmp	00141$
00434$:
	cjne	r6,#0x0d,00435$
	sjmp	00143$
00435$:
	cjne	r6,#0x0e,00436$
	sjmp	00143$
00436$:
	cjne	r6,#0x14,00437$
	sjmp	00144$
00437$:
	cjne	r6,#0x15,00438$
	sjmp	00145$
00438$:
	cjne	r6,#0x45,00146$
;	../UI_Manager/ui.c:127: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:128: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:129: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:131: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:132: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:134: break;
;	../UI_Manager/ui.c:135: case MANUAL_FOG_POWER_STATE:
	ret
00130$:
;	../UI_Manager/ui.c:136: fogLevelPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:137: break;
;	../UI_Manager/ui.c:138: case MANUAL_FOG_INTERVAL_STATE:
	ljmp	_fogLevelPage
00131$:
;	../UI_Manager/ui.c:139: fogIntervalPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:140: break;
;	../UI_Manager/ui.c:141: case MANUAL_FOG_DURATION_STATE:
	ljmp	_fogIntervalPage
00132$:
;	../UI_Manager/ui.c:142: fogDurationPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:143: break;
;	../UI_Manager/ui.c:144: case MANUAL_COLOR_MACRO_STATE:
	ljmp	_fogDurationPage
00133$:
;	../UI_Manager/ui.c:145: macroPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:146: break;
;	../UI_Manager/ui.c:147: case MANUAL_MACRO_SPEED_STATE:
	ljmp	_macroPage
00134$:
;	../UI_Manager/ui.c:148: macroSpeedPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:149: break;
;	../UI_Manager/ui.c:153: case MANUAL_STROBE_STATE:
	ljmp	_macroSpeedPage
00138$:
;	../UI_Manager/ui.c:154: colorPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:155: break;
;	../UI_Manager/ui.c:158: case MANUAL_REMOTE_ACTION_6_STATE:
	ljmp	_colorPage
00141$:
;	../UI_Manager/ui.c:159: remotePage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:160: break;
;	../UI_Manager/ui.c:162: case MANUAL_SAVE_SETTINGS_STATE:
	ljmp	_remotePage
00143$:
;	../UI_Manager/ui.c:163: saveLoadPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:164: break;
;	../UI_Manager/ui.c:165: case DMX_ADDRESS_STATE:
	ljmp	_saveLoadPage
00144$:
;	../UI_Manager/ui.c:166: dmxAddressPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:167: break;
;	../UI_Manager/ui.c:168: case DMX_CHANNEL_MODE_STATE:
	ljmp	_dmxAddressPage
00145$:
;	../UI_Manager/ui.c:169: dmxChannelPage(action);
	mov	dpl,r7
;	../UI_Manager/ui.c:170: break;
;	../UI_Manager/ui.c:171: default: //IDLE state
	ljmp	_dmxChannelPage
00146$:
;	../UI_Manager/ui.c:172: idlePage();
	push	ar7
	lcall	_idlePage
	pop	ar7
;	../UI_Manager/ui.c:174: if(action == BUTTON_FUNCTION){
	cjne	r7,#0x02,00150$
;	../UI_Manager/ui.c:175: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
	ljmp	_set_ui_state
00150$:
;	../UI_Manager/ui.c:176: } else if(action == BUTTON_FUN_UP){
	cjne	r7,#0x0c,00164$
;	../UI_Manager/ui.c:177: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:180: }
;	../UI_Manager/ui.c:183: }
	ljmp	_set_ui_state
00164$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'idlePage'
;------------------------------------------------------------
;timer                     Allocated with name '_idlePage_timer_65536_55'
;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_55'
;empty                     Allocated with name '_idlePage_empty_65536_55'
;tock                      Allocated with name '_idlePage_tock_65536_55'
;iconChange                Allocated with name '_idlePage_iconChange_65536_55'
;playing                   Allocated with name '_idlePage_playing_65536_55'
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:185: void idlePage(){
;	-----------------------------------------
;	 function idlePage
;	-----------------------------------------
_idlePage:
;	../UI_Manager/ui.c:194: if(Changed){
	mov	a,_Changed
	jnz	00314$
	ljmp	00116$
00314$:
;	../UI_Manager/ui.c:195: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:196: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:197: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:198: timer = 0xFF;
	mov	_idlePage_timer_65536_55,#0xff
;	../UI_Manager/ui.c:199: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
	mov	_idlePage_intervalOrDuration_65536_55,#0x55
;	../UI_Manager/ui.c:202: if(get_fog_fluid_level() == TANK_EMPTY && get_heated()){
	mov	a,_Fluid_Level
	jnz	00102$
	mov	a,_Heat_Flag
	jnb	acc.7,00102$
;	../UI_Manager/ui.c:204: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:205: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:207: empty = 0xFF;
	mov	_idlePage_empty_65536_55,#0xff
;	../UI_Manager/ui.c:209: return;
	ret
00102$:
;	../UI_Manager/ui.c:212: if(empty){
	mov	a,_idlePage_empty_65536_55
	jz	00107$
;	../UI_Manager/ui.c:213: if(get_fog_fluid_level() == TANK_FULL){
	mov	a,#0x01
	cjne	a,_Fluid_Level,00105$
;	../UI_Manager/ui.c:214: empty = 0x00;
	mov	_idlePage_empty_65536_55,#0x00
;	../UI_Manager/ui.c:215: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
00105$:
;	../UI_Manager/ui.c:218: return;
	ret
00107$:
;	../UI_Manager/ui.c:221: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00113$
;	../UI_Manager/ui.c:222: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_write_string
	sjmp	00116$
00113$:
;	../UI_Manager/ui.c:225: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
	lcall	_get_dmx_address
	mov	_write_number_PARM_2,#0x04
	mov	_write_number_PARM_3,#0x01
	mov	_write_number_PARM_4,#0x00
	lcall	_write_number
;	../UI_Manager/ui.c:226: switch (get_runtime_data(MODE_INDEX))
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	r7,dpl
	cjne	r7,#0x01,00321$
	sjmp	00108$
00321$:
;	../UI_Manager/ui.c:228: case OPTION_DMX_MODE_3:
	cjne	r7,#0x02,00110$
	sjmp	00109$
00108$:
;	../UI_Manager/ui.c:229: temp = 3;
	mov	r7,#0x03
;	../UI_Manager/ui.c:230: break;
;	../UI_Manager/ui.c:231: case OPTION_DMX_MODE_1: 
	sjmp	00111$
00109$:
;	../UI_Manager/ui.c:232: temp = 1;
	mov	r7,#0x01
;	../UI_Manager/ui.c:233: break;
;	../UI_Manager/ui.c:234: default:
	sjmp	00111$
00110$:
;	../UI_Manager/ui.c:235: temp = 10;
	mov	r7,#0x0a
;	../UI_Manager/ui.c:237: }
00111$:
;	../UI_Manager/ui.c:238: write_number(temp, 12, LINE_1, NOT_SELECTED);
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x0c
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r7
	mov	dph,r6
	lcall	_write_number
;	../UI_Manager/ui.c:240: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x04
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:241: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x04
	mov	_write_string_PARM_3,#0x09
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_write_string
00116$:
;	../UI_Manager/ui.c:249: tock++;
	inc	_idlePage_tock_65536_55
;	../UI_Manager/ui.c:250: if(get_playing() == PLAY){
	mov	a,#0x01
	cjne	a,_Playing,00134$
;	../UI_Manager/ui.c:251: if(playing == PAUSE){
	mov	a,_idlePage_playing_65536_55
;	../UI_Manager/ui.c:252: iconChange |= PLAY_CHANGE;
	jnz	00118$
	mov	r6,_idlePage_iconChange_65536_55
	mov	r7,a
	orl	ar6,#0x20
	mov	_idlePage_iconChange_65536_55,r6
00118$:
;	../UI_Manager/ui.c:255: if(get_interval_or_duration() == INTERVAL){
	mov	a,_Interval_Or_Duration
	jnz	00127$
;	../UI_Manager/ui.c:257: if(iconChange & PLAY_CHANGE){
	mov	a,_idlePage_iconChange_65536_55
	jnb	acc.5,00128$
;	../UI_Manager/ui.c:258: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x80
	lcall	_write_char
;	../UI_Manager/ui.c:259: iconChange &= ~PLAY_CHANGE;
	anl	_idlePage_iconChange_65536_55,#0xdf
	sjmp	00128$
00127$:
;	../UI_Manager/ui.c:263: if(tock == 0x80 + 55){ //blink if fogging
	mov	a,#0xb7
	cjne	a,_idlePage_tock_65536_55,00124$
;	../UI_Manager/ui.c:264: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x80
	lcall	_write_char
	sjmp	00128$
00124$:
;	../UI_Manager/ui.c:265: } else if(tock == 0x08 + 55){
	mov	a,#0x3f
	cjne	a,_idlePage_tock_65536_55,00128$
;	../UI_Manager/ui.c:266: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_write_char
00128$:
;	../UI_Manager/ui.c:269: iconChange |= PAUSE_CHANGE;
	mov	r6,_idlePage_iconChange_65536_55
	mov	r7,#0x00
	orl	ar6,#0x10
	mov	_idlePage_iconChange_65536_55,r6
	sjmp	00135$
00134$:
;	../UI_Manager/ui.c:271: if(playing == PLAY){
	mov	a,#0x01
	cjne	a,_idlePage_playing_65536_55,00130$
;	../UI_Manager/ui.c:272: iconChange |= PAUSE_CHANGE;
	mov	r6,_idlePage_iconChange_65536_55
	mov	r7,#0x00
	orl	ar6,#0x10
	mov	_idlePage_iconChange_65536_55,r6
00130$:
;	../UI_Manager/ui.c:275: if(iconChange & PAUSE_CHANGE){
	mov	a,_idlePage_iconChange_65536_55
	jnb	acc.4,00132$
;	../UI_Manager/ui.c:276: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_write_char
;	../UI_Manager/ui.c:277: iconChange |= PLAY_CHANGE;
	mov	r6,_idlePage_iconChange_65536_55
	mov	r7,#0x00
	orl	ar6,#0x20
	mov	_idlePage_iconChange_65536_55,r6
;	../UI_Manager/ui.c:278: iconChange &= ~PAUSE_CHANGE;
	anl	_idlePage_iconChange_65536_55,#0xef
00132$:
;	../UI_Manager/ui.c:281: playing = PAUSE;
	mov	_idlePage_playing_65536_55,#0x00
00135$:
;	../UI_Manager/ui.c:284: if(get_heated()){
	mov	a,_Heat_Flag
	jnb	acc.7,00144$
;	../UI_Manager/ui.c:285: if(iconChange & HEATED_CHANGE){
	mov	a,_idlePage_iconChange_65536_55
	jnb	acc.0,00145$
;	../UI_Manager/ui.c:286: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x60
	lcall	_write_char
;	../UI_Manager/ui.c:287: iconChange &= ~HEATED_CHANGE;
	anl	_idlePage_iconChange_65536_55,#0xfe
	sjmp	00145$
00144$:
;	../UI_Manager/ui.c:290: if(!(tock)){
	mov	a,_idlePage_tock_65536_55
	jnz	00142$
;	../UI_Manager/ui.c:291: if(iconChange & HEATING_CHANGE){
	mov	a,_idlePage_iconChange_65536_55
	jnb	acc.1,00139$
;	../UI_Manager/ui.c:292: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_write_char
;	../UI_Manager/ui.c:293: iconChange &= ~HEATING_CHANGE;
	anl	_idlePage_iconChange_65536_55,#0xfd
	sjmp	00142$
00139$:
;	../UI_Manager/ui.c:295: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
	mov	_write_char_PARM_2,#0x0f
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0xa0
	lcall	_write_char
;	../UI_Manager/ui.c:296: iconChange |= HEATING_CHANGE;
	mov	r6,_idlePage_iconChange_65536_55
	mov	r7,#0x00
	orl	ar6,#0x02
	mov	_idlePage_iconChange_65536_55,r6
00142$:
;	../UI_Manager/ui.c:299: iconChange |= HEATED_CHANGE;
	mov	r6,_idlePage_iconChange_65536_55
	mov	r7,#0x00
	orl	ar6,#0x01
	mov	_idlePage_iconChange_65536_55,r6
00145$:
;	../UI_Manager/ui.c:304: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00339$
	ljmp	00163$
00339$:
;	../UI_Manager/ui.c:307: if(has_dmx()){
	mov	a,_Has_DMX
	jz	00151$
;	../UI_Manager/ui.c:308: if(changed & DMX_OK_CHANGE){
	mov	a,_changed
	jnb	acc.7,00152$
;	../UI_Manager/ui.c:309: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x06
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:310: changed |= NO_DMX_CHANGE;
	mov	r6,_changed
	mov	r7,#0x00
	orl	ar6,#0x40
	mov	_changed,r6
;	../UI_Manager/ui.c:311: changed &= ~DMX_OK_CHANGE;
	anl	_changed,#0x7f
	sjmp	00152$
00151$:
;	../UI_Manager/ui.c:314: if(changed & NO_DMX_CHANGE){
	mov	a,_changed
	jnb	acc.6,00152$
;	../UI_Manager/ui.c:315: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x06
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:316: changed |= DMX_OK_CHANGE;
	mov	r6,_changed
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	_changed,r6
;	../UI_Manager/ui.c:317: changed &= ~NO_DMX_CHANGE;
	anl	_changed,#0xbf
00152$:
;	../UI_Manager/ui.c:321: temp = get_timer();
;	../UI_Manager/ui.c:324: if(timer != temp){
	mov	a,_Timer
	mov	r7,a
	cjne	a,_idlePage_timer_65536_55,00343$
	ret
00343$:
;	../UI_Manager/ui.c:326: write_number(temp, 7, LINE_0, NOT_SELECTED);
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
;	../UI_Manager/ui.c:327: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
	mov	a,_Interval_Or_Duration
	jnz	00167$
	mov	r5,#0x92
	mov	r6,a
	sjmp	00168$
00167$:
	mov	r5,#0x22
	mov	r6,#0x00
00168$:
	mov	dpl,r5
	mov	_write_char_PARM_2,#0x0b
	mov	_write_char_PARM_3,#0x00
	push	ar7
	lcall	_write_char
	pop	ar7
;	../UI_Manager/ui.c:329: timer = temp;
	mov	_idlePage_timer_65536_55,r7
	ret
00163$:
;	../UI_Manager/ui.c:334: temp = get_interval_or_duration();
;	../UI_Manager/ui.c:336: if(intervalOrDuration != temp){
	mov	a,_Interval_Or_Duration
	mov	r7,a
	cjne	a,_idlePage_intervalOrDuration_65536_55,00345$
	sjmp	00159$
00345$:
;	../UI_Manager/ui.c:337: if(temp == INTERVAL){
	mov	a,r7
;	../UI_Manager/ui.c:338: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
	jnz	00156$
	mov	_write_string_PARM_2,#0x09
	mov	_write_string_PARM_3,a
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,a
	mov	dptr,#___str_12
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
	sjmp	00157$
00156$:
;	../UI_Manager/ui.c:340: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x09
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_13
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
00157$:
;	../UI_Manager/ui.c:343: intervalOrDuration = temp;
	mov	_idlePage_intervalOrDuration_65536_55,r7
00159$:
;	../UI_Manager/ui.c:346: temp = get_timer();
;	../UI_Manager/ui.c:348: if(timer != temp){
	mov	a,_Timer
	mov	r7,a
	cjne	a,_idlePage_timer_65536_55,00347$
	ret
00347$:
;	../UI_Manager/ui.c:350: write_number(temp, NUMBER_END_INDEX, LINE_1, NOT_SELECTED);
	mov	ar5,r7
	mov	r6,#0x00
	mov	_write_number_PARM_2,#0x0c
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	_write_number
	pop	ar7
;	../UI_Manager/ui.c:352: timer = temp;
	mov	_idlePage_timer_65536_55,r7
;	../UI_Manager/ui.c:356: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogLevelPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:358: void fogLevelPage(uint8_t action){
;	-----------------------------------------
;	 function fogLevelPage
;	-----------------------------------------
_fogLevelPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:360: if(Changed){
	mov	a,_Changed
	jz	00102$
;	../UI_Manager/ui.c:361: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:362: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:364: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	lcall	_exe_command
;	../UI_Manager/ui.c:366: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0a
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_write_string
	pop	ar7
00102$:
;	../UI_Manager/ui.c:370: if(changed){
	mov	a,_changed
	jnz	00149$
	ljmp	00108$
00149$:
;	../UI_Manager/ui.c:371: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:373: switch (get_runtime_data(FOG_POWER_INDEX))
	mov	dpl,#0x00
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x02,00150$
	sjmp	00104$
00150$:
	cjne	r6,#0x04,00105$
;	../UI_Manager/ui.c:376: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x02
	push	ar7
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_write_string
;	../UI_Manager/ui.c:377: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	_write_char_PARM_2,#0x0c
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x40
	lcall	_write_char
	pop	ar7
;	../UI_Manager/ui.c:378: break;
	ljmp	00108$
;	../UI_Manager/ui.c:379: case FOG_MED:
00104$:
;	../UI_Manager/ui.c:380: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x01
	push	ar7
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_write_string
;	../UI_Manager/ui.c:381: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	_write_char_PARM_2,#0x0c
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x40
	lcall	_write_char
;	../UI_Manager/ui.c:382: write_char(CHAR_LVL_2, 13, LINE_1);
	mov	_write_char_PARM_2,#0x0d
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0xc0
	lcall	_write_char
	pop	ar7
;	../UI_Manager/ui.c:383: break;
;	../UI_Manager/ui.c:384: default:
	sjmp	00108$
00105$:
;	../UI_Manager/ui.c:385: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x00
	push	ar7
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_write_string
;	../UI_Manager/ui.c:386: write_char(CHAR_LVL_1, 12, LINE_1);
	mov	_write_char_PARM_2,#0x0c
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x40
	lcall	_write_char
;	../UI_Manager/ui.c:387: write_char(CHAR_LVL_2, 13, LINE_1);
	mov	_write_char_PARM_2,#0x0d
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0xc0
	lcall	_write_char
;	../UI_Manager/ui.c:388: write_char(CHAR_LVL_3, 14, LINE_1);
	mov	_write_char_PARM_2,#0x0e
	mov	_write_char_PARM_3,#0x01
	mov	dpl,#0x20
	lcall	_write_char
	pop	ar7
;	../UI_Manager/ui.c:390: }
00108$:
;	../UI_Manager/ui.c:394: switch (action)
	cjne	r7,#0x02,00153$
	sjmp	00111$
00153$:
	cjne	r7,#0x03,00154$
	sjmp	00109$
00154$:
	cjne	r7,#0x0a,00155$
	sjmp	00110$
00155$:
;	../UI_Manager/ui.c:396: case BUTTON_UP:
	cjne	r7,#0x0c,00114$
	sjmp	00112$
00109$:
;	../UI_Manager/ui.c:397: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:398: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:399: break;
;	../UI_Manager/ui.c:400: case BUTTON_DOWN:
	ret
00110$:
;	../UI_Manager/ui.c:401: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:402: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:403: break;
;	../UI_Manager/ui.c:404: case BUTTON_FUNCTION:
	ret
00111$:
;	../UI_Manager/ui.c:405: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:406: break;
;	../UI_Manager/ui.c:407: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00112$:
;	../UI_Manager/ui.c:408: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:410: }
;	../UI_Manager/ui.c:411: }
	ljmp	_set_ui_state
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogIntervalPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:413: void fogIntervalPage(uint8_t action){
;	-----------------------------------------
;	 function fogIntervalPage
;	-----------------------------------------
_fogIntervalPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:415: if(Changed){
	mov	a,_Changed
	jz	00102$
;	../UI_Manager/ui.c:416: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:417: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:419: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	lcall	_exe_command
;	../UI_Manager/ui.c:421: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0d
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:422: write_string("Seconds", sizeof("Seconds"), 8, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x08
	mov	_write_string_PARM_3,#0x08
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_write_string
	pop	ar7
00102$:
;	../UI_Manager/ui.c:426: if(changed){
	mov	a,_changed
	jz	00104$
;	../UI_Manager/ui.c:427: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:429: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 4, LINE_1, NOT_SELECTED);
	mov	dpl,#0x02
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	mov	r5,#0x00
	mov	_write_number_PARM_2,#0x04
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r5
	mov	dpl,r6
	mov	dph,r5
	lcall	_write_number
	pop	ar7
00104$:
;	../UI_Manager/ui.c:433: switch (action)
	cjne	r7,#0x02,00148$
	sjmp	00109$
00148$:
	cjne	r7,#0x03,00149$
	sjmp	00106$
00149$:
	cjne	r7,#0x0a,00150$
	sjmp	00108$
00150$:
	cjne	r7,#0x0c,00151$
	sjmp	00110$
00151$:
	cjne	r7,#0x1f,00152$
	sjmp	00106$
00152$:
;	../UI_Manager/ui.c:436: case BUTTON_UP:
	cjne	r7,#0x65,00112$
	sjmp	00108$
00106$:
;	../UI_Manager/ui.c:437: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x02
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:438: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:439: break;
;	../UI_Manager/ui.c:441: case BUTTON_DOWN:
	ret
00108$:
;	../UI_Manager/ui.c:442: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x02
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:443: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:444: break;
;	../UI_Manager/ui.c:445: case BUTTON_FUNCTION:
	ret
00109$:
;	../UI_Manager/ui.c:446: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:447: break;
;	../UI_Manager/ui.c:448: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00110$:
;	../UI_Manager/ui.c:449: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:451: }
;	../UI_Manager/ui.c:452: }
	ljmp	_set_ui_state
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fogDurationPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:454: void fogDurationPage(uint8_t action){
;	-----------------------------------------
;	 function fogDurationPage
;	-----------------------------------------
_fogDurationPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:456: if(Changed){
	mov	a,_Changed
	jz	00102$
;	../UI_Manager/ui.c:457: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:458: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:460: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	lcall	_exe_command
;	../UI_Manager/ui.c:462: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0d
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:463: write_string("Seconds", sizeof("Seconds"), 8, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x08
	mov	_write_string_PARM_3,#0x08
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_write_string
	pop	ar7
00102$:
;	../UI_Manager/ui.c:467: if(changed){
	mov	a,_changed
	jz	00104$
;	../UI_Manager/ui.c:468: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:470: write_number(get_runtime_data(FOG_DURATION_INDEX), 4, LINE_1, NOT_SELECTED);
	mov	dpl,#0x01
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	mov	r5,#0x00
	mov	_write_number_PARM_2,#0x04
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r5
	mov	dpl,r6
	mov	dph,r5
	lcall	_write_number
	pop	ar7
00104$:
;	../UI_Manager/ui.c:474: switch (action)
	cjne	r7,#0x02,00148$
	sjmp	00109$
00148$:
	cjne	r7,#0x03,00149$
	sjmp	00106$
00149$:
	cjne	r7,#0x0a,00150$
	sjmp	00108$
00150$:
	cjne	r7,#0x0c,00151$
	sjmp	00110$
00151$:
	cjne	r7,#0x1f,00152$
	sjmp	00106$
00152$:
;	../UI_Manager/ui.c:477: case BUTTON_UP:
	cjne	r7,#0x65,00112$
	sjmp	00108$
00106$:
;	../UI_Manager/ui.c:478: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x01
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:479: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:480: break;
;	../UI_Manager/ui.c:482: case BUTTON_DOWN:
	ret
00108$:
;	../UI_Manager/ui.c:483: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x01
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:484: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:485: break;
;	../UI_Manager/ui.c:486: case BUTTON_FUNCTION:
	ret
00109$:
;	../UI_Manager/ui.c:487: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:488: break;
;	../UI_Manager/ui.c:489: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00110$:
;	../UI_Manager/ui.c:490: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:492: }
;	../UI_Manager/ui.c:493: }
	ljmp	_set_ui_state
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'macroPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:495: void macroPage(uint8_t action){
;	-----------------------------------------
;	 function macroPage
;	-----------------------------------------
_macroPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:497: if(Changed){
	mov	a,_Changed
	jz	00102$
;	../UI_Manager/ui.c:498: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:499: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:501: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	lcall	_exe_command
;	../UI_Manager/ui.c:503: write_string("Macros", sizeof("Macros"), 6, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x07
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_write_string
	pop	ar7
00102$:
;	../UI_Manager/ui.c:507: if(changed){
	mov	a,_changed
	jz	00104$
;	../UI_Manager/ui.c:508: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:510: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	dpl,#0x03
	push	ar7
	lcall	_get_runtime_data
	mov	r6,dpl
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_write_string
	pop	ar7
00104$:
;	../UI_Manager/ui.c:514: switch (action)
	cjne	r7,#0x02,00148$
	sjmp	00109$
00148$:
	cjne	r7,#0x03,00149$
	sjmp	00106$
00149$:
	cjne	r7,#0x0a,00150$
	sjmp	00108$
00150$:
	cjne	r7,#0x0c,00151$
	sjmp	00110$
00151$:
	cjne	r7,#0x1f,00152$
	sjmp	00106$
00152$:
;	../UI_Manager/ui.c:517: case BUTTON_UP:
	cjne	r7,#0x65,00112$
	sjmp	00108$
00106$:
;	../UI_Manager/ui.c:518: set_runtime_data(MACRO_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x03
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:519: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:520: break;
;	../UI_Manager/ui.c:522: case BUTTON_DOWN:
	ret
00108$:
;	../UI_Manager/ui.c:523: set_runtime_data(MACRO_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x03
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:524: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:525: break;
;	../UI_Manager/ui.c:526: case BUTTON_FUNCTION:
	ret
00109$:
;	../UI_Manager/ui.c:527: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:528: break;
;	../UI_Manager/ui.c:529: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00110$:
;	../UI_Manager/ui.c:530: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:532: }
;	../UI_Manager/ui.c:533: }
	ljmp	_set_ui_state
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'macroSpeedPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:535: void macroSpeedPage(uint8_t action){
;	-----------------------------------------
;	 function macroSpeedPage
;	-----------------------------------------
_macroSpeedPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:537: if(Changed){
	mov	a,_Changed
	jz	00102$
;	../UI_Manager/ui.c:538: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:539: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:541: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	lcall	_exe_command
;	../UI_Manager/ui.c:543: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0c
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_write_string
	pop	ar7
00102$:
;	../UI_Manager/ui.c:547: if(changed){
	mov	a,_changed
	jz	00107$
;	../UI_Manager/ui.c:548: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:550: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
	mov	dpl,#0x04
	push	ar7
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar7
;	../UI_Manager/ui.c:551: write_string("Off", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	jnz	00104$
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,a
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:553: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_21
	mov	b,#0x80
	push	ar7
	lcall	_write_string
;	../UI_Manager/ui.c:554: write_number(get_runtime_data(MACRO_SPEED_INDEX), 6, LINE_1, NOT_SELECTED);
	mov	dpl,#0x04
	lcall	_get_runtime_data
	mov	r6,dpl
	mov	r5,#0x00
	mov	_write_number_PARM_2,#0x06
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r5
	mov	dpl,r6
	mov	dph,r5
	lcall	_write_number
	pop	ar7
00107$:
;	../UI_Manager/ui.c:558: switch (action)
	cjne	r7,#0x02,00156$
	sjmp	00112$
00156$:
	cjne	r7,#0x03,00157$
	sjmp	00109$
00157$:
	cjne	r7,#0x0a,00158$
	sjmp	00111$
00158$:
	cjne	r7,#0x0c,00159$
	sjmp	00113$
00159$:
	cjne	r7,#0x1f,00160$
	sjmp	00109$
00160$:
;	../UI_Manager/ui.c:561: case BUTTON_UP:
	cjne	r7,#0x65,00115$
	sjmp	00111$
00109$:
;	../UI_Manager/ui.c:562: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:563: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:564: break;
;	../UI_Manager/ui.c:566: case BUTTON_DOWN:
	ret
00111$:
;	../UI_Manager/ui.c:567: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x04
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:568: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:569: break;
;	../UI_Manager/ui.c:570: case BUTTON_FUNCTION:
	ret
00112$:
;	../UI_Manager/ui.c:571: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:572: break;
;	../UI_Manager/ui.c:573: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00113$:
;	../UI_Manager/ui.c:574: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:576: }
;	../UI_Manager/ui.c:577: }
	ljmp	_set_ui_state
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'colorPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;index                     Allocated to registers r6 
;------------------------------------------------------------
;	../UI_Manager/ui.c:579: void colorPage(uint8_t action){
;	-----------------------------------------
;	 function colorPage
;	-----------------------------------------
_colorPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:580: uint8_t index = 0;
	mov	r6,#0x00
;	../UI_Manager/ui.c:582: switch (State)
	mov	r5,_State
	cjne	r5,#0x06,00174$
	sjmp	00101$
00174$:
	cjne	r5,#0x07,00175$
	sjmp	00103$
00175$:
	cjne	r5,#0x08,00176$
	sjmp	00102$
00176$:
;	../UI_Manager/ui.c:584: case MANUAL_RED_STATE:
	cjne	r5,#0x09,00105$
	sjmp	00104$
00101$:
;	../UI_Manager/ui.c:585: index = RED_INDEX;
	mov	r6,#0x05
;	../UI_Manager/ui.c:586: break;
;	../UI_Manager/ui.c:587: case MANUAL_GREEN_STATE:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:588: index = GREEN_INDEX;
	mov	r6,#0x06
;	../UI_Manager/ui.c:589: break;
;	../UI_Manager/ui.c:590: case MANUAL_BLUE_STATE:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:591: index = BLUE_INDEX;
	mov	r6,#0x07
;	../UI_Manager/ui.c:592: break;
;	../UI_Manager/ui.c:593: case MANUAL_STROBE_STATE:
	sjmp	00105$
00104$:
;	../UI_Manager/ui.c:594: index = STROBE_INDEX;
	mov	r6,#0x08
;	../UI_Manager/ui.c:596: }
00105$:
;	../UI_Manager/ui.c:598: if(Changed){
	mov	a,_Changed
	jz	00107$
;	../UI_Manager/ui.c:599: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:600: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:602: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	push	ar6
	lcall	_exe_command
;	../UI_Manager/ui.c:604: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
	mov	r5,_State
	mov	a,#0xc8
	add	a,r5
	mov	dpl,a
	lcall	_getString
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x03
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_write_string
	pop	ar6
	pop	ar7
00107$:
;	../UI_Manager/ui.c:608: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:609: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:611: if(get_runtime_data(get_runtime_data(index)) == 0){
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_get_runtime_data
	lcall	_get_runtime_data
	mov	a,dpl
	pop	ar6
	pop	ar7
;	../UI_Manager/ui.c:612: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	jnz	00109$
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,a
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_write_string
	pop	ar6
	pop	ar7
	sjmp	00112$
00109$:
;	../UI_Manager/ui.c:614: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_21
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_write_string
	pop	ar6
;	../UI_Manager/ui.c:615: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
	mov	dpl,r6
	push	ar6
	lcall	_get_runtime_data
	mov	r5,dpl
	mov	r4,#0x00
	mov	_write_number_PARM_2,#0x06
	mov	_write_number_PARM_3,#0x01
;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
	mov	_write_number_PARM_4,r4
	mov	dpl,r5
	mov	dph,r4
	lcall	_write_number
	pop	ar6
	pop	ar7
00112$:
;	../UI_Manager/ui.c:619: switch (action)
	cjne	r7,#0x02,00181$
	sjmp	00117$
00181$:
	cjne	r7,#0x03,00182$
	sjmp	00114$
00182$:
	cjne	r7,#0x0a,00183$
	sjmp	00116$
00183$:
	cjne	r7,#0x0c,00184$
	sjmp	00118$
00184$:
	cjne	r7,#0x1f,00185$
	sjmp	00114$
00185$:
;	../UI_Manager/ui.c:622: case BUTTON_UP:
	cjne	r7,#0x65,00120$
	sjmp	00116$
00114$:
;	../UI_Manager/ui.c:623: set_runtime_data(index, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r6
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:624: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:625: break;
;	../UI_Manager/ui.c:627: case BUTTON_DOWN:
	ret
00116$:
;	../UI_Manager/ui.c:628: set_runtime_data(index, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r6
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:629: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:630: break;
;	../UI_Manager/ui.c:631: case BUTTON_FUNCTION:
	ret
00117$:
;	../UI_Manager/ui.c:632: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:633: break;
;	../UI_Manager/ui.c:634: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00118$:
;	../UI_Manager/ui.c:635: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:637: }
;	../UI_Manager/ui.c:638: }
	ljmp	_set_ui_state
00120$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remotePage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;remoteNumber              Allocated to registers r6 
;index                     Allocated to registers r5 
;------------------------------------------------------------
;	../UI_Manager/ui.c:640: void remotePage(uint8_t action){
;	-----------------------------------------
;	 function remotePage
;	-----------------------------------------
_remotePage:
	mov	r7,dpl
;	../UI_Manager/ui.c:641: uint8_t remoteNumber = MANUAL_REMOTE_ACTION_6_STATE - State + 4;
	mov	r6,_State
	mov	a,#0x10
	clr	c
	subb	a,r6
	mov	r6,a
;	../UI_Manager/ui.c:642: uint8_t index = 0;
	mov	r5,#0x00
;	../UI_Manager/ui.c:644: switch (State)
	mov	r4,_State
	cjne	r4,#0x0a,00168$
	sjmp	00101$
00168$:
	cjne	r4,#0x0b,00169$
	sjmp	00102$
00169$:
;	../UI_Manager/ui.c:646: case MANUAL_REMOTE_ACTION_4_STATE:
	cjne	r4,#0x0c,00104$
	sjmp	00103$
00101$:
;	../UI_Manager/ui.c:647: index = R4_INDEX;
	mov	r5,#0x09
;	../UI_Manager/ui.c:648: break;
;	../UI_Manager/ui.c:649: case MANUAL_REMOTE_ACTION_5_STATE:
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:650: index = R5_INDEX;
	mov	r5,#0x0a
;	../UI_Manager/ui.c:651: break;
;	../UI_Manager/ui.c:652: case MANUAL_REMOTE_ACTION_6_STATE:
	sjmp	00104$
00103$:
;	../UI_Manager/ui.c:653: index = R6_INDEX;
	mov	r5,#0x0b
;	../UI_Manager/ui.c:655: }
00104$:
;	../UI_Manager/ui.c:657: if(Changed){
	mov	a,_Changed
	jz	00110$
;	../UI_Manager/ui.c:658: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:659: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:661: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	push	ar6
	push	ar5
	lcall	_exe_command
;	../UI_Manager/ui.c:663: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x01
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_write_string
	pop	ar5
	pop	ar6
	pop	ar7
;	../UI_Manager/ui.c:664: switch (remoteNumber)
	cjne	r6,#0x04,00172$
	sjmp	00105$
00172$:
	cjne	r6,#0x05,00173$
	sjmp	00106$
00173$:
;	../UI_Manager/ui.c:666: case 4:
	cjne	r6,#0x06,00110$
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:667: write_char(CHAR_4, 8, LINE_0);
	mov	_write_char_PARM_2,#0x08
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x2c
	push	ar7
	push	ar5
	lcall	_write_char
	pop	ar5
	pop	ar7
;	../UI_Manager/ui.c:668: break;
;	../UI_Manager/ui.c:669: case 5:
	sjmp	00110$
00106$:
;	../UI_Manager/ui.c:670: write_char(CHAR_5, 8, LINE_0);
	mov	_write_char_PARM_2,#0x08
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0xac
	push	ar7
	push	ar5
	lcall	_write_char
	pop	ar5
	pop	ar7
;	../UI_Manager/ui.c:671: break;
;	../UI_Manager/ui.c:672: case 6:
	sjmp	00110$
00107$:
;	../UI_Manager/ui.c:673: write_char(CHAR_6, 8, LINE_0);
	mov	_write_char_PARM_2,#0x08
	mov	_write_char_PARM_3,#0x00
	mov	dpl,#0x6c
	push	ar7
	push	ar5
	lcall	_write_char
	pop	ar5
	pop	ar7
;	../UI_Manager/ui.c:675: }
00110$:
;	../UI_Manager/ui.c:678: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:679: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:680: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
	mov	dpl,r5
	push	ar7
	push	ar5
	lcall	_get_runtime_data
	mov	r6,dpl
	mov	a,#0x3c
	add	a,r6
	mov	dpl,a
	lcall	_getString
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x04
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	_write_string
	pop	ar5
	pop	ar7
00112$:
;	../UI_Manager/ui.c:683: switch (action)
	cjne	r7,#0x02,00176$
	sjmp	00115$
00176$:
	cjne	r7,#0x03,00177$
	sjmp	00113$
00177$:
	cjne	r7,#0x0a,00178$
	sjmp	00114$
00178$:
;	../UI_Manager/ui.c:685: case BUTTON_UP:
	cjne	r7,#0x0c,00118$
	sjmp	00116$
00113$:
;	../UI_Manager/ui.c:686: set_runtime_data(index, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r5
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:687: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:688: break;
;	../UI_Manager/ui.c:689: case BUTTON_DOWN:
	ret
00114$:
;	../UI_Manager/ui.c:690: set_runtime_data(index, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,r5
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:691: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:692: break;
;	../UI_Manager/ui.c:693: case BUTTON_FUNCTION:
	ret
00115$:
;	../UI_Manager/ui.c:694: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:695: break;
;	../UI_Manager/ui.c:696: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00116$:
;	../UI_Manager/ui.c:697: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:699: }
;	../UI_Manager/ui.c:700: }
	ljmp	_set_ui_state
00118$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'saveLoadPage'
;------------------------------------------------------------
;slot                      Allocated with name '_saveLoadPage_slot_65536_134'
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:702: void saveLoadPage(uint8_t action){
;	-----------------------------------------
;	 function saveLoadPage
;	-----------------------------------------
_saveLoadPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:705: if(Changed){
	mov	a,_Changed
	jz	00105$
;	../UI_Manager/ui.c:706: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:707: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:709: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	push	ar7
	lcall	_exe_command
	pop	ar7
;	../UI_Manager/ui.c:711: if(State == MANUAL_SAVE_SETTINGS_STATE){
	mov	a,#0x0d
	cjne	a,_State,00102$
;	../UI_Manager/ui.c:712: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0e
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_23
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:714: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0e
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_24
	mov	b,#0x80
	push	ar7
	lcall	_write_string
	pop	ar7
00105$:
;	../UI_Manager/ui.c:719: if(changed){
	mov	a,_changed
	jz	00107$
;	../UI_Manager/ui.c:720: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:721: write_string(getString(slot % (SLOT_COUNT - 1)), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);  
	mov	b,#0x03
	mov	a,_saveLoadPage_slot_65536_134
	div	ab
	mov	dpl,b
	push	ar7
	lcall	_getString
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_write_string
	pop	ar7
00107$:
;	../UI_Manager/ui.c:724: switch (action)
	cjne	r7,#0x02,00165$
	ljmp	00114$
00165$:
	cjne	r7,#0x03,00166$
	sjmp	00112$
00166$:
	cjne	r7,#0x0a,00167$
	sjmp	00113$
00167$:
	cjne	r7,#0x0c,00168$
	ljmp	00115$
00168$:
	cjne	r7,#0x1e,00169$
	sjmp	00170$
00169$:
	ret
00170$:
;	../UI_Manager/ui.c:727: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
	mov	b,#0x03
	mov	a,_saveLoadPage_slot_65536_134
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
;	../UI_Manager/ui.c:728: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_write_string
;	../UI_Manager/ui.c:730: if(State == MANUAL_SAVE_SETTINGS_STATE){
	mov	a,#0x0d
	cjne	a,_State,00110$
;	../UI_Manager/ui.c:731: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_25
	mov	b,#0x80
	ljmp	_write_string
00110$:
;	../UI_Manager/ui.c:733: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x10
	mov	_write_string_PARM_3,#0x06
	mov	_write_string_PARM_4,#0x01
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_26
	mov	b,#0x80
;	../UI_Manager/ui.c:735: break;
;	../UI_Manager/ui.c:736: case BUTTON_UP:
	ljmp	_write_string
00112$:
;	../UI_Manager/ui.c:737: slot++;
	inc	_saveLoadPage_slot_65536_134
;	../UI_Manager/ui.c:738: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:739: break;
;	../UI_Manager/ui.c:740: case BUTTON_DOWN:
	ret
00113$:
;	../UI_Manager/ui.c:741: slot--;
	dec	_saveLoadPage_slot_65536_134
;	../UI_Manager/ui.c:742: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:743: break;
;	../UI_Manager/ui.c:744: case BUTTON_FUNCTION:
	ret
00114$:
;	../UI_Manager/ui.c:745: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:746: break;
;	../UI_Manager/ui.c:747: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00115$:
;	../UI_Manager/ui.c:748: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:750: }
;	../UI_Manager/ui.c:751: }
	ljmp	_set_ui_state
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxAddressPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:753: void dmxAddressPage(uint8_t action){
;	-----------------------------------------
;	 function dmxAddressPage
;	-----------------------------------------
_dmxAddressPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:755: switch (action)
	cjne	r7,#0x02,00146$
	sjmp	00105$
00146$:
	cjne	r7,#0x03,00147$
	sjmp	00102$
00147$:
	cjne	r7,#0x0a,00148$
	sjmp	00104$
00148$:
	cjne	r7,#0x0c,00149$
	sjmp	00106$
00149$:
	cjne	r7,#0x1f,00150$
	sjmp	00102$
00150$:
;	../UI_Manager/ui.c:758: case BUTTON_UP:
	cjne	r7,#0x65,00107$
	sjmp	00104$
00102$:
;	../UI_Manager/ui.c:759: set_dmx_address(INC);
	mov	dpl,#0x01
	lcall	_set_dmx_address
;	../UI_Manager/ui.c:760: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:761: break;
;	../UI_Manager/ui.c:763: case BUTTON_DOWN:
	sjmp	00107$
00104$:
;	../UI_Manager/ui.c:764: set_dmx_address(DEC);
	mov	dpl,#0x02
	lcall	_set_dmx_address
;	../UI_Manager/ui.c:765: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:766: break;
;	../UI_Manager/ui.c:767: case BUTTON_FUNCTION:
	sjmp	00107$
00105$:
;	../UI_Manager/ui.c:768: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:769: return;
;	../UI_Manager/ui.c:770: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00106$:
;	../UI_Manager/ui.c:771: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:772: return;
;	../UI_Manager/ui.c:773: }
	ljmp	_set_ui_state
00107$:
;	../UI_Manager/ui.c:775: if(Changed){
	mov	a,_Changed
	jz	00109$
;	../UI_Manager/ui.c:776: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:777: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:779: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:781: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x0c
	mov	_write_string_PARM_3,#0x02
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_write_string
00109$:
;	../UI_Manager/ui.c:784: if(changed){
	mov	a,_changed
	jz	00112$
;	../UI_Manager/ui.c:785: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:787: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
	lcall	_get_dmx_address
	mov	_write_number_PARM_2,#0x04
	mov	_write_number_PARM_3,#0x01
	mov	_write_number_PARM_4,#0x00
;	../UI_Manager/ui.c:790: }
	ljmp	_write_number
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dmxChannelPage'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:792: void dmxChannelPage(uint8_t action){
;	-----------------------------------------
;	 function dmxChannelPage
;	-----------------------------------------
_dmxChannelPage:
	mov	r7,dpl
;	../UI_Manager/ui.c:794: switch (action)
	cjne	r7,#0x02,00136$
	sjmp	00103$
00136$:
	cjne	r7,#0x03,00137$
	sjmp	00101$
00137$:
	cjne	r7,#0x0a,00138$
	sjmp	00102$
00138$:
;	../UI_Manager/ui.c:796: case BUTTON_UP:
	cjne	r7,#0x0c,00105$
	sjmp	00104$
00101$:
;	../UI_Manager/ui.c:797: set_runtime_data(MODE_INDEX, INC, NULL);
	mov	_set_runtime_data_PARM_2,#0x01
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x0e
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:798: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:799: break;
;	../UI_Manager/ui.c:800: case BUTTON_DOWN:
	sjmp	00105$
00102$:
;	../UI_Manager/ui.c:801: set_runtime_data(MODE_INDEX, DEC, NULL);
	mov	_set_runtime_data_PARM_2,#0x02
	mov	_set_runtime_data_PARM_3,#0x00
	mov	dpl,#0x0e
	lcall	_set_runtime_data
;	../UI_Manager/ui.c:802: changed = 0xFF;  
	mov	_changed,#0xff
;	../UI_Manager/ui.c:803: break;
;	../UI_Manager/ui.c:804: case BUTTON_FUNCTION:
	sjmp	00105$
00103$:
;	../UI_Manager/ui.c:805: set_ui_state(INC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x01
;	../UI_Manager/ui.c:806: return;
;	../UI_Manager/ui.c:807: case BUTTON_FUN_UP:
	ljmp	_set_ui_state
00104$:
;	../UI_Manager/ui.c:808: set_ui_state(DEC, NULL);
	mov	_set_ui_state_PARM_2,#0x00
	mov	dpl,#0x02
;	../UI_Manager/ui.c:809: return;
;	../UI_Manager/ui.c:810: }
	ljmp	_set_ui_state
00105$:
;	../UI_Manager/ui.c:812: if(Changed){
	mov	a,_Changed
	jz	00107$
;	../UI_Manager/ui.c:813: Changed = 0x00;
	mov	_Changed,#0x00
;	../UI_Manager/ui.c:814: changed = 0xFF;
	mov	_changed,#0xff
;	../UI_Manager/ui.c:816: exe_command(CLEAR_DISPLAY);
	mov	dptr,#0x8000
	lcall	_exe_command
;	../UI_Manager/ui.c:818: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
	mov	_write_string_PARM_2,#0x11
	mov	_write_string_PARM_3,#0x00
	mov	_write_string_PARM_4,#0x00
	mov	_write_string_PARM_5,#0x00
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_write_string
00107$:
;	../UI_Manager/ui.c:821: if(changed){
	mov	a,_changed
	jz	00110$
;	../UI_Manager/ui.c:822: changed = 0x00;
	mov	_changed,#0x00
;	../UI_Manager/ui.c:824: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
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
;	../UI_Manager/ui.c:827: }
	ljmp	_write_string
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ui_state'
;------------------------------------------------------------
;state                     Allocated with name '_set_ui_state_PARM_2'
;inc                       Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:829: void set_ui_state(uint8_t inc, uint8_t state){
;	-----------------------------------------
;	 function set_ui_state
;	-----------------------------------------
_set_ui_state:
	mov	r7,dpl
;	../UI_Manager/ui.c:830: Changed = CHANGE_SCREEN_X;
	mov	_Changed,#0xff
;	../UI_Manager/ui.c:832: switch (inc)
	cjne	r7,#0x01,00193$
	sjmp	00101$
00193$:
	cjne	r7,#0x02,00194$
	sjmp	00115$
00194$:
	ljmp	00129$
;	../UI_Manager/ui.c:834: case INC:
00101$:
;	../UI_Manager/ui.c:835: state = State;
	mov	_set_ui_state_PARM_2,_State
;	../UI_Manager/ui.c:836: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00113$
;	../UI_Manager/ui.c:837: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00105$
;	../UI_Manager/ui.c:838: state = DMX_STATE_LOW;
	mov	_set_ui_state_PARM_2,#0x14
	ljmp	00134$
00105$:
;	../UI_Manager/ui.c:839: } else if(++state > DMX_STATE_HIGH){
	inc	_set_ui_state_PARM_2
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x15
	jnc	00134$
;	../UI_Manager/ui.c:840: state = IDLE_STATE;
	mov	_set_ui_state_PARM_2,#0x00
	sjmp	00134$
00113$:
;	../UI_Manager/ui.c:843: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00110$
;	../UI_Manager/ui.c:844: state = IDLE_STATE + 1; 
	mov	_set_ui_state_PARM_2,#0x01
	sjmp	00134$
00110$:
;	../UI_Manager/ui.c:845: } else if(++state > MANUAL_STATE_HIGH){
	inc	_set_ui_state_PARM_2
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x0e
	jnc	00134$
;	../UI_Manager/ui.c:846: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:849: break;
;	../UI_Manager/ui.c:850: case DEC:
	sjmp	00134$
00115$:
;	../UI_Manager/ui.c:851: state = State;
	mov	_set_ui_state_PARM_2,_State
;	../UI_Manager/ui.c:852: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00127$
;	../UI_Manager/ui.c:853: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00119$
;	../UI_Manager/ui.c:854: state = DMX_STATE_HIGH;
	mov	_set_ui_state_PARM_2,#0x15
	sjmp	00134$
00119$:
;	../UI_Manager/ui.c:855: } else if(--State < DMX_STATE_LOW){
	dec	_State
	mov	a,#0x100 - 0x14
	add	a,_State
	jc	00134$
;	../UI_Manager/ui.c:856: State = IDLE_STATE;
	mov	_State,#0x00
	sjmp	00134$
00127$:
;	../UI_Manager/ui.c:859: if(state == IDLE_STATE){
	mov	a,_set_ui_state_PARM_2
	jnz	00124$
;	../UI_Manager/ui.c:860: state = MANUAL_STATE_HIGH; 
	mov	_set_ui_state_PARM_2,#0x0e
	sjmp	00134$
00124$:
;	../UI_Manager/ui.c:861: } else if(--State < DMX_STATE_HIGH){
	dec	_State
	mov	a,#0x100 - 0x15
	add	a,_State
	jc	00134$
;	../UI_Manager/ui.c:862: State = IDLE_STATE;
	mov	_State,#0x00
;	../UI_Manager/ui.c:865: break;
;	../UI_Manager/ui.c:866: default: 
	sjmp	00134$
00129$:
;	../UI_Manager/ui.c:867: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x0e
	jnc	00130$
	mov	a,#0x100 - 0x14
	add	a,_set_ui_state_PARM_2
	jnc	00134$
	mov	a,_set_ui_state_PARM_2
	add	a,#0xff - 0x15
	jc	00134$
00130$:
;	../UI_Manager/ui.c:868: state = IDLE_STATE;
	mov	_set_ui_state_PARM_2,#0x00
;	../UI_Manager/ui.c:871: }
00134$:
;	../UI_Manager/ui.c:873: State = state;
	mov	_State,_set_ui_state_PARM_2
;	../UI_Manager/ui.c:874: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_ui_state'
;------------------------------------------------------------
;	../UI_Manager/ui.c:876: uint8_t get_ui_state(){
;	-----------------------------------------
;	 function get_ui_state
;	-----------------------------------------
_get_ui_state:
;	../UI_Manager/ui.c:877: return State;
	mov	dpl,_State
;	../UI_Manager/ui.c:878: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getString'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/ui.c:880: char* getString(uint8_t index){
;	-----------------------------------------
;	 function getString
;	-----------------------------------------
_getString:
	mov	r7,dpl
;	../UI_Manager/ui.c:881: switch (index)
	mov	ar6,r7
	cjne	r6,#0x00,00299$
	ljmp	00103$
00299$:
	cjne	r6,#0x01,00300$
	ljmp	00102$
00300$:
	cjne	r7,#0x02,00301$
	ljmp	00101$
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
	ljmp	00113$
00335$:
	cjne	r7,#0xd0,00336$
	ljmp	00112$
00336$:
	cjne	r7,#0xd1,00337$
	ljmp	00114$
00337$:
	ljmp	00140$
;	../UI_Manager/ui.c:883: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
00101$:
;	../UI_Manager/ui.c:884: return "Wimpy";
	mov	dptr,#___str_29
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:885: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
00102$:
;	../UI_Manager/ui.c:886: return "Mild";
	mov	dptr,#___str_30
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:887: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
00103$:
;	../UI_Manager/ui.c:888: return "Blazin";
	mov	dptr,#___str_31
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:890: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
00104$:
;	../UI_Manager/ui.c:891: return "Off";
	mov	dptr,#___str_20
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:892: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
00105$:
;	../UI_Manager/ui.c:893: return "Rainbow";
	mov	dptr,#___str_32
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:894: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
00106$:
;	../UI_Manager/ui.c:895: return "Fire";
	mov	dptr,#___str_33
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:896: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
00107$:
;	../UI_Manager/ui.c:897: return "Water";
	mov	dptr,#___str_34
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:898: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
00108$:
;	../UI_Manager/ui.c:899: return "Storm";
	mov	dptr,#___str_35
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:900: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
00109$:
;	../UI_Manager/ui.c:901: return "Acid";
	mov	dptr,#___str_36
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:902: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
00110$:
;	../UI_Manager/ui.c:903: return "Ether";
	mov	dptr,#___str_37
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:905: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
00111$:
;	../UI_Manager/ui.c:906: return "Red Level";
	mov	dptr,#___str_38
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:907: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
00112$:
;	../UI_Manager/ui.c:908: return "Green Level";
	mov	dptr,#___str_39
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:909: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
00113$:
;	../UI_Manager/ui.c:910: return "Blue Level";
	mov	dptr,#___str_40
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:911: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
00114$:
;	../UI_Manager/ui.c:912: return "Strobe Level";
	mov	dptr,#___str_41
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:914: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
00115$:
;	../UI_Manager/ui.c:915: return "No Action";
	mov	dptr,#___str_42
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:916: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
00116$:
;	../UI_Manager/ui.c:917: return "Choose Macro";
	mov	dptr,#___str_43
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:918: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
00117$:
;	../UI_Manager/ui.c:919: return "Red";
	mov	dptr,#___str_44
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:920: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
00118$:
;	../UI_Manager/ui.c:921: return "Yellow";
	mov	dptr,#___str_45
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:922: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
00119$:
;	../UI_Manager/ui.c:923: return "Green";
	mov	dptr,#___str_46
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:924: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
00120$:
;	../UI_Manager/ui.c:925: return "Cyan";
	mov	dptr,#___str_47
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:926: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
00121$:
;	../UI_Manager/ui.c:927: return "Blue";
	mov	dptr,#___str_48
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:928: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
00122$:
;	../UI_Manager/ui.c:929: return "Magenta";
	mov	dptr,#___str_49
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:930: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
00123$:
;	../UI_Manager/ui.c:931: return "Strobe Slow";
	mov	dptr,#___str_50
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:932: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
00124$:
;	../UI_Manager/ui.c:933: return "Strobe Medium";
	mov	dptr,#___str_51
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:934: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
00125$:
;	../UI_Manager/ui.c:935: return "Strobe Fast";
	mov	dptr,#___str_52
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:936: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
00126$:
;	../UI_Manager/ui.c:937: return "Blackout";
	mov	dptr,#___str_53
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:938: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
00127$:
;	../UI_Manager/ui.c:939: return "Whiteout";         
	mov	dptr,#___str_54
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:941: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
00128$:
;	../UI_Manager/ui.c:942: return "Slot 1";   
	mov	dptr,#___str_55
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:943: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
00129$:
;	../UI_Manager/ui.c:944: return "Slot 2";   
	mov	dptr,#___str_56
	mov	b,#0x80
	ret
;	../UI_Manager/ui.c:945: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
00130$:
;	../UI_Manager/ui.c:946: return "Slot 3"; 
	mov	dptr,#___str_57
	mov	b,#0x80
;	../UI_Manager/ui.c:948: case DMX_STRING_OFFSET + OPTION_DMX_MODE_9: 
	ret
00131$:
;	../UI_Manager/ui.c:949: return "10 All";     
	mov	dptr,#___str_58
	mov	b,#0x80
;	../UI_Manager/ui.c:950: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
	ret
00132$:
;	../UI_Manager/ui.c:951: return "3 Fog + Macro";   
	mov	dptr,#___str_59
	mov	b,#0x80
;	../UI_Manager/ui.c:952: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
	ret
00133$:
;	../UI_Manager/ui.c:953: return "1 Fog";    
	mov	dptr,#___str_60
	mov	b,#0x80
;	../UI_Manager/ui.c:955: case SECRET_STRING_OFFSET + 0:
	ret
00134$:
;	../UI_Manager/ui.c:956: return "0x486F6C6D6573";
	mov	dptr,#___str_61
	mov	b,#0x80
;	../UI_Manager/ui.c:957: case SECRET_STRING_OFFSET + 1:
	ret
00135$:
;	../UI_Manager/ui.c:958: return "& 576174736F6E";
	mov	dptr,#___str_62
	mov	b,#0x80
;	../UI_Manager/ui.c:959: case SECRET_STRING_OFFSET + 2:
	ret
00136$:
;	../UI_Manager/ui.c:960: return "626F74684F776E41";
	mov	dptr,#___str_63
	mov	b,#0x80
;	../UI_Manager/ui.c:961: case SECRET_STRING_OFFSET + 3:
	ret
00137$:
;	../UI_Manager/ui.c:962: return "536E6F7762616C6C";
	mov	dptr,#___str_64
	mov	b,#0x80
;	../UI_Manager/ui.c:963: case SECRET_STRING_OFFSET + 4:
	ret
00138$:
;	../UI_Manager/ui.c:964: return "4D6F726961727479";
	mov	dptr,#___str_65
	mov	b,#0x80
;	../UI_Manager/ui.c:965: case SECRET_STRING_OFFSET + 5:
	ret
00139$:
;	../UI_Manager/ui.c:966: return "646F65734E6F74 ;";
	mov	dptr,#___str_66
	mov	b,#0x80
;	../UI_Manager/ui.c:967: }
	ret
00140$:
;	../UI_Manager/ui.c:969: return 0;
	mov	dptr,#0x0000
	mov	b,#0x00
;	../UI_Manager/ui.c:970: }
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
	.ascii "AtmosFEAR 221B"
	.db 0x00
___str_4:
	.ascii "By Blizzard Pro"
	.db 0x00
___str_5:
	.ascii "PC Load Letter"
	.db 0x00
___str_6:
	.ascii "Burst to Refill"
	.db 0x00
___str_7:
	.ascii "Manual Mode"
	.db 0x00
___str_8:
	.ascii "Addr"
	.db 0x00
___str_9:
	.ascii "Mode"
	.db 0x00
___str_10:
	.ascii "DMX Ok"
	.db 0x00
___str_11:
	.ascii "No DMX"
	.db 0x00
___str_12:
	.ascii "Interval"
	.db 0x00
___str_13:
	.ascii "Duration"
	.db 0x00
___str_14:
	.ascii "Fog Level"
	.db 0x00
___str_15:
	.ascii "Fog Interval"
	.db 0x00
___str_16:
	.ascii "Seconds"
	.db 0x00
___str_17:
	.ascii "Fog Duration"
	.db 0x00
___str_18:
	.ascii "Macros"
	.db 0x00
___str_19:
	.ascii "Macro Speed"
	.db 0x00
___str_20:
	.ascii "Off"
	.db 0x00
___str_21:
	.db 0x00
___str_22:
	.ascii "Remote X Action"
	.db 0x00
___str_23:
	.ascii "Save Settings"
	.db 0x00
___str_24:
	.ascii "Load Settings"
	.db 0x00
___str_25:
	.ascii "Saved!"
	.db 0x00
___str_26:
	.ascii "Loaded!"
	.db 0x00
___str_27:
	.ascii "DMX Address"
	.db 0x00
___str_28:
	.ascii "DMX Channel Mode"
	.db 0x00
___str_29:
	.ascii "Wimpy"
	.db 0x00
___str_30:
	.ascii "Mild"
	.db 0x00
___str_31:
	.ascii "Blazin"
	.db 0x00
___str_32:
	.ascii "Rainbow"
	.db 0x00
___str_33:
	.ascii "Fire"
	.db 0x00
___str_34:
	.ascii "Water"
	.db 0x00
___str_35:
	.ascii "Storm"
	.db 0x00
___str_36:
	.ascii "Acid"
	.db 0x00
___str_37:
	.ascii "Ether"
	.db 0x00
___str_38:
	.ascii "Red Level"
	.db 0x00
___str_39:
	.ascii "Green Level"
	.db 0x00
___str_40:
	.ascii "Blue Level"
	.db 0x00
___str_41:
	.ascii "Strobe Level"
	.db 0x00
___str_42:
	.ascii "No Action"
	.db 0x00
___str_43:
	.ascii "Choose Macro"
	.db 0x00
___str_44:
	.ascii "Red"
	.db 0x00
___str_45:
	.ascii "Yellow"
	.db 0x00
___str_46:
	.ascii "Green"
	.db 0x00
___str_47:
	.ascii "Cyan"
	.db 0x00
___str_48:
	.ascii "Blue"
	.db 0x00
___str_49:
	.ascii "Magenta"
	.db 0x00
___str_50:
	.ascii "Strobe Slow"
	.db 0x00
___str_51:
	.ascii "Strobe Medium"
	.db 0x00
___str_52:
	.ascii "Strobe Fast"
	.db 0x00
___str_53:
	.ascii "Blackout"
	.db 0x00
___str_54:
	.ascii "Whiteout"
	.db 0x00
___str_55:
	.ascii "Slot 1"
	.db 0x00
___str_56:
	.ascii "Slot 2"
	.db 0x00
___str_57:
	.ascii "Slot 3"
	.db 0x00
___str_58:
	.ascii "10 All"
	.db 0x00
___str_59:
	.ascii "3 Fog + Macro"
	.db 0x00
___str_60:
	.ascii "1 Fog"
	.db 0x00
___str_61:
	.ascii "0x486F6C6D6573"
	.db 0x00
___str_62:
	.ascii "& 576174736F6E"
	.db 0x00
___str_63:
	.ascii "626F74684F776E41"
	.db 0x00
___str_64:
	.ascii "536E6F7762616C6C"
	.db 0x00
___str_65:
	.ascii "4D6F726961727479"
	.db 0x00
___str_66:
	.ascii "646F65734E6F74 ;"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
