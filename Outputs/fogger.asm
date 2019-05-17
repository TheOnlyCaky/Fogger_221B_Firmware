;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module fogger
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_ui_state
	.globl _get_adc_value
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
	.globl _Fluid_Level
	.globl _Heat_Flag
	.globl _Playing
	.globl _Interval_Or_Duration
	.globl _Timer
	.globl _tick_fogger
	.globl _power_pump
	.globl _power_heater
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
_Timer::
	.ds 1
_Interval_Or_Duration::
	.ds 1
_Playing::
	.ds 1
_Heat_Flag::
	.ds 1
_Fluid_Level::
	.ds 1
_tick_fogger_fullCount_65536_36:
	.ds 1
_tick_fogger_on_65536_36:
	.ds 1
_tick_fogger_duration_65536_36:
	.ds 1
_tick_fogger_interval_65536_36:
	.ds 1
_tick_fogger_power_65536_36:
	.ds 1
_tick_fogger_tock_65536_36:
	.ds 1
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
;Allocation info for local variables in function 'tick_fogger'
;------------------------------------------------------------
;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
;on                        Allocated with name '_tick_fogger_on_65536_36'
;duration                  Allocated with name '_tick_fogger_duration_65536_36'
;interval                  Allocated with name '_tick_fogger_interval_65536_36'
;power                     Allocated with name '_tick_fogger_power_65536_36'
;tock                      Allocated with name '_tick_fogger_tock_65536_36'
;temperature               Allocated to registers r6 r7 
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:20: static uint8_t fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
;	../Fogger_Manager/fogger.c:21: static uint8_t on = 0x00; //to toggle lights
	mov	_tick_fogger_on_65536_36,#0x00
;	../Fogger_Manager/fogger.c:28: static uint8_t tock = 0;
	mov	_tick_fogger_tock_65536_36,#0x00
;	../Fogger_Manager/fogger.c:14: uint8_t Playing = PAUSE;
	mov	_Playing,#0x00
;	../Fogger_Manager/fogger.c:15: uint8_t Heat_Flag = COLD_FLAG;
	mov	_Heat_Flag,#0x04
;	../Fogger_Manager/fogger.c:16: uint8_t Fluid_Level = TANK_FULL;
	mov	_Fluid_Level,#0x01
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
;Allocation info for local variables in function 'tick_fogger'
;------------------------------------------------------------
;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
;on                        Allocated with name '_tick_fogger_on_65536_36'
;duration                  Allocated with name '_tick_fogger_duration_65536_36'
;interval                  Allocated with name '_tick_fogger_interval_65536_36'
;power                     Allocated with name '_tick_fogger_power_65536_36'
;tock                      Allocated with name '_tick_fogger_tock_65536_36'
;temperature               Allocated to registers r6 r7 
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:18: void tick_fogger(){
;	-----------------------------------------
;	 function tick_fogger
;	-----------------------------------------
_tick_fogger:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../Fogger_Manager/fogger.c:34: temperature = get_adc_value(ADC_TEMPERATURE);
	mov	dpl,#0x00
	lcall	_get_adc_value
	mov	r6,dpl
	mov	r7,dph
;	../Fogger_Manager/fogger.c:36: if(temperature < HEAT_LOW){ /* Turn on heater full blast */
	clr	c
	mov	a,r6
	subb	a,#0xa0
	mov	a,r7
	subb	a,#0x00
	jnc	00107$
;	../Fogger_Manager/fogger.c:37: Heat_Flag = COLD_FLAG;
	mov	_Heat_Flag,#0x04
	sjmp	00108$
00107$:
;	../Fogger_Manager/fogger.c:38: } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
	clr	c
	mov	a,#0xb9
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00104$
;	../Fogger_Manager/fogger.c:40: Heat_Flag |= HEATED;
	mov	_Heat_Flag,#0x82
	sjmp	00108$
00104$:
;	../Fogger_Manager/fogger.c:41: } else if(temperature > HEAT_OK){ /* Set Heated */
	clr	c
	mov	a,#0xaf
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00108$
;	../Fogger_Manager/fogger.c:42: Heat_Flag |= HEATED;
	mov	r6,_Heat_Flag
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	_Heat_Flag,r6
00108$:
;	../Fogger_Manager/fogger.c:46: if(get_ui_state() != WELCOME_STATE){
	lcall	_get_ui_state
	mov	r7,dpl
	cjne	r7,#0x45,00603$
	sjmp	00113$
00603$:
;	../Fogger_Manager/fogger.c:48: P3_4 = 1;
;	assignBit
	setb	_P3_4
;	../Fogger_Manager/fogger.c:49: P3_3 = 1;
;	assignBit
	setb	_P3_3
;	../Fogger_Manager/fogger.c:52: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
00113$:
;	../Fogger_Manager/fogger.c:58: if(!P2_6){ // no fluid
	jb	_P2_6,00125$
;	../Fogger_Manager/fogger.c:59: if(Fluid_Level == TANK_FULL){
	mov	a,#0x01
	cjne	a,_Fluid_Level,00117$
;	../Fogger_Manager/fogger.c:60: if(fullCount++ > REFILL_FLUID_COUNT){
	mov	r7,_tick_fogger_fullCount_65536_36
	inc	_tick_fogger_fullCount_65536_36
	mov	a,r7
	add	a,#0xff - 0x22
	jnc	00126$
;	../Fogger_Manager/fogger.c:61: Fluid_Level = TANK_EMPTY;
	mov	_Fluid_Level,#0x00
	sjmp	00126$
00117$:
;	../Fogger_Manager/fogger.c:64: fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
	sjmp	00126$
00125$:
;	../Fogger_Manager/fogger.c:67: if(Fluid_Level == TANK_EMPTY){
	mov	a,_Fluid_Level
	jnz	00122$
;	../Fogger_Manager/fogger.c:68: if(fullCount++ > REFILL_FLUID_COUNT){
	mov	r7,_tick_fogger_fullCount_65536_36
	inc	_tick_fogger_fullCount_65536_36
	mov	a,r7
	add	a,#0xff - 0x22
	jnc	00126$
;	../Fogger_Manager/fogger.c:69: Fluid_Level = TANK_FULL;
	mov	_Fluid_Level,#0x01
	sjmp	00126$
00122$:
;	../Fogger_Manager/fogger.c:72: fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
00126$:
;	../Fogger_Manager/fogger.c:77: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
	mov	dpl,#0x0f
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00137$
;	../Fogger_Manager/fogger.c:78: if(Fluid_Level == TANK_EMPTY){ //flash on empty
	mov	a,_Fluid_Level
	jnz	00134$
;	../Fogger_Manager/fogger.c:79: on = ~on;
	mov	a,_tick_fogger_on_65536_36
	cpl	a
;	../Fogger_Manager/fogger.c:81: if(on){
	mov	_tick_fogger_on_65536_36,a
	jz	00128$
;	../Fogger_Manager/fogger.c:82: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../Fogger_Manager/fogger.c:83: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00138$
00128$:
;	../Fogger_Manager/fogger.c:85: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:86: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00138$
00134$:
;	../Fogger_Manager/fogger.c:89: if(get_heated()){ //heated not heated
	mov	a,_Heat_Flag
	jnb	acc.7,00131$
;	../Fogger_Manager/fogger.c:90: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../Fogger_Manager/fogger.c:91: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00138$
00131$:
;	../Fogger_Manager/fogger.c:93: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:94: P2_0 = 0;
;	assignBit
	clr	_P2_0
	sjmp	00138$
00137$:
;	../Fogger_Manager/fogger.c:98: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:99: P2_0 = 1;
;	assignBit
	setb	_P2_0
00138$:
;	../Fogger_Manager/fogger.c:104: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00614$
	ljmp	00245$
00614$:
;	../Fogger_Manager/fogger.c:105: if(has_dmx()){
	mov	a,_Has_DMX
	jnz	00615$
	ljmp	00236$
00615$:
;	../Fogger_Manager/fogger.c:106: Playing = PLAY;
	mov	_Playing,#0x01
;	../Fogger_Manager/fogger.c:108: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_9)
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00233$
;	../Fogger_Manager/fogger.c:110: value = get_dmx_value(DMX_M9_POWER_INDEX);
	mov	r7,_DMX
;	../Fogger_Manager/fogger.c:112: if(value < DMX_FOG_OFF){
	cjne	r7,#0x14,00617$
00617$:
	jnc	00146$
;	../Fogger_Manager/fogger.c:113: Playing = PAUSE;
	mov	_Playing,#0x00
	sjmp	00147$
00146$:
;	../Fogger_Manager/fogger.c:114: } else if(value < DMX_FOG_LOW){
	cjne	r7,#0x64,00619$
00619$:
	jnc	00143$
;	../Fogger_Manager/fogger.c:115: value = FOG_LO;
	mov	r7,#0x04
	sjmp	00147$
00143$:
;	../Fogger_Manager/fogger.c:116: } else if(value < DMX_FOG_MEDIUM){
	cjne	r7,#0xc8,00621$
00621$:
	jnc	00140$
;	../Fogger_Manager/fogger.c:117: value = FOG_MED;
	mov	r7,#0x02
	sjmp	00147$
00140$:
;	../Fogger_Manager/fogger.c:119: value = FOG_HIGH;
	mov	r7,#0x01
00147$:
;	../Fogger_Manager/fogger.c:122: if(value != power){
	mov	a,r7
	cjne	a,_tick_fogger_power_65536_36,00623$
	sjmp	00149$
00623$:
;	../Fogger_Manager/fogger.c:123: power = value;
	mov	_tick_fogger_power_65536_36,r7
00149$:
;	../Fogger_Manager/fogger.c:126: value = get_dmx_value(DMX_M9_DURATION_INDEX);
;	../Fogger_Manager/fogger.c:128: if(value != duration){
	mov	a,(_DMX + 0x0001)
	mov	r7,a
	cjne	a,_tick_fogger_duration_65536_36,00624$
	sjmp	00151$
00624$:
;	../Fogger_Manager/fogger.c:129: duration = value;
	mov	_tick_fogger_duration_65536_36,r7
;	../Fogger_Manager/fogger.c:130: Timer = duration;
	mov	_Timer,_tick_fogger_duration_65536_36
;	../Fogger_Manager/fogger.c:131: Interval_Or_Duration = DURATION;
	mov	_Interval_Or_Duration,#0xff
00151$:
;	../Fogger_Manager/fogger.c:134: value = get_dmx_value(DMX_M9_INTERVAL_INDEX);
;	../Fogger_Manager/fogger.c:136: if(value != interval){
	mov	a,(_DMX + 0x0002)
	mov	r7,a
	cjne	a,_tick_fogger_interval_65536_36,00625$
	ljmp	00246$
00625$:
;	../Fogger_Manager/fogger.c:137: interval = value;
	mov	_tick_fogger_interval_65536_36,r7
;	../Fogger_Manager/fogger.c:138: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00233$:
;	../Fogger_Manager/fogger.c:145: power = FOG_HIGH;
	mov	_tick_fogger_power_65536_36,#0x01
;	../Fogger_Manager/fogger.c:147: value = get_dmx_value(DMX_M1_FOG_INDEX);
	mov	r7,_DMX
;	../Fogger_Manager/fogger.c:150: if(value < DMX_FOG_OFF){
	cjne	r7,#0x14,00626$
00626$:
	jnc	00230$
;	../Fogger_Manager/fogger.c:151: Playing = PAUSE;
	mov	_Playing,#0x00
	ljmp	00246$
00230$:
;	../Fogger_Manager/fogger.c:153: } else if(value < DMX_FOG_3_8){
	cjne	r7,#0x28,00628$
00628$:
	jnc	00227$
;	../Fogger_Manager/fogger.c:154: if(duration != 3 || interval != 8){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00154$
	mov	a,#0x08
	cjne	a,_tick_fogger_interval_65536_36,00632$
	ljmp	00246$
00632$:
00154$:
;	../Fogger_Manager/fogger.c:155: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:156: interval = 8;
	mov	_tick_fogger_interval_65536_36,#0x08
;	../Fogger_Manager/fogger.c:157: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00227$:
;	../Fogger_Manager/fogger.c:159: } else if(value < DMX_FOG_3_13){
	cjne	r7,#0x3c,00633$
00633$:
	jnc	00224$
;	../Fogger_Manager/fogger.c:160: if(duration != 3 || interval != 13){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00157$
	mov	a,#0x0d
	cjne	a,_tick_fogger_interval_65536_36,00637$
	ljmp	00246$
00637$:
00157$:
;	../Fogger_Manager/fogger.c:161: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:162: interval = 13;
	mov	_tick_fogger_interval_65536_36,#0x0d
;	../Fogger_Manager/fogger.c:163: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00224$:
;	../Fogger_Manager/fogger.c:165: } else if(value < DMX_FOG_3_21){
	cjne	r7,#0x50,00638$
00638$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00221$
;	../Fogger_Manager/fogger.c:166: if(duration != 3 || interval != 21){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00160$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00642$
	ljmp	00246$
00642$:
00160$:
;	../Fogger_Manager/fogger.c:167: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:168: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:169: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00221$:
;	../Fogger_Manager/fogger.c:171: } else if(value < DMX_FOG_3_21){
	mov	a,r6
	jz	00218$
;	../Fogger_Manager/fogger.c:172: if(duration != 3 || interval != 21){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00163$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00646$
	ljmp	00246$
00646$:
00163$:
;	../Fogger_Manager/fogger.c:173: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:174: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:175: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00218$:
;	../Fogger_Manager/fogger.c:177: } else if(value < DMX_FOG_3_34){
	cjne	r7,#0x64,00647$
00647$:
	jnc	00215$
;	../Fogger_Manager/fogger.c:178: if(duration != 3 || interval != 34){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00166$
	mov	a,#0x22
	cjne	a,_tick_fogger_interval_65536_36,00651$
	ljmp	00246$
00651$:
00166$:
;	../Fogger_Manager/fogger.c:179: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:180: interval = 34;
	mov	_tick_fogger_interval_65536_36,#0x22
;	../Fogger_Manager/fogger.c:181: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00215$:
;	../Fogger_Manager/fogger.c:183: } else if(value < DMX_FOG_3_55){
	cjne	r7,#0x78,00652$
00652$:
	jnc	00212$
;	../Fogger_Manager/fogger.c:184: if(duration != 3 || interval != 55){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00169$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00656$
	ljmp	00246$
00656$:
00169$:
;	../Fogger_Manager/fogger.c:185: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:186: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:187: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00212$:
;	../Fogger_Manager/fogger.c:189: } else if(value < DMX_FOG_8_21){
	cjne	r7,#0x8c,00657$
00657$:
	jnc	00209$
;	../Fogger_Manager/fogger.c:190: if(duration != 8 || interval != 21){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00172$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00661$
	ljmp	00246$
00661$:
00172$:
;	../Fogger_Manager/fogger.c:191: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:192: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:193: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00209$:
;	../Fogger_Manager/fogger.c:195: } else if(value < DMX_FOG_8_34){
	cjne	r7,#0xa0,00662$
00662$:
	jnc	00206$
;	../Fogger_Manager/fogger.c:196: if(duration != 8 || interval != 34){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00175$
	mov	a,#0x22
	cjne	a,_tick_fogger_interval_65536_36,00666$
	ljmp	00246$
00666$:
00175$:
;	../Fogger_Manager/fogger.c:197: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:198: interval = 34;
	mov	_tick_fogger_interval_65536_36,#0x22
;	../Fogger_Manager/fogger.c:199: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00206$:
;	../Fogger_Manager/fogger.c:201: } else if(value < DMX_FOG_8_55){
	cjne	r7,#0xb4,00667$
00667$:
	jnc	00203$
;	../Fogger_Manager/fogger.c:202: if(duration != 8 || interval != 55){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00178$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00671$
	ljmp	00246$
00671$:
00178$:
;	../Fogger_Manager/fogger.c:203: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:204: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:205: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00203$:
;	../Fogger_Manager/fogger.c:207: } else if(value < DMX_FOG_8_89){
	cjne	r7,#0xc8,00672$
00672$:
	jnc	00200$
;	../Fogger_Manager/fogger.c:208: if(duration != 8 || interval != 89){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00181$
	mov	a,#0x59
	cjne	a,_tick_fogger_interval_65536_36,00676$
	ljmp	00246$
00676$:
00181$:
;	../Fogger_Manager/fogger.c:209: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:210: interval = 89;
	mov	_tick_fogger_interval_65536_36,#0x59
;	../Fogger_Manager/fogger.c:211: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00200$:
;	../Fogger_Manager/fogger.c:213: } else if(value < DMX_FOG_8_144){
	cjne	r7,#0xdc,00677$
00677$:
	jnc	00197$
;	../Fogger_Manager/fogger.c:214: if(duration != 8 || interval != 144){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00184$
	mov	a,#0x90
	cjne	a,_tick_fogger_interval_65536_36,00681$
	ljmp	00246$
00681$:
00184$:
;	../Fogger_Manager/fogger.c:215: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:216: interval = 144;
	mov	_tick_fogger_interval_65536_36,#0x90
;	../Fogger_Manager/fogger.c:217: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00246$
00197$:
;	../Fogger_Manager/fogger.c:219: } else if(value < DMX_FOG_21_55){
	cjne	r7,#0xf0,00682$
00682$:
	jnc	00194$
;	../Fogger_Manager/fogger.c:220: if(duration != 21 || interval != 55){
	mov	a,#0x15
	cjne	a,_tick_fogger_duration_65536_36,00187$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00686$
	sjmp	00246$
00686$:
00187$:
;	../Fogger_Manager/fogger.c:221: duration = 21;
	mov	_tick_fogger_duration_65536_36,#0x15
;	../Fogger_Manager/fogger.c:222: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:223: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00246$
00194$:
;	../Fogger_Manager/fogger.c:226: if(duration !=  21|| interval != 89){
	mov	a,#0x15
	cjne	a,_tick_fogger_duration_65536_36,00190$
	mov	a,#0x59
	cjne	a,_tick_fogger_interval_65536_36,00689$
	sjmp	00246$
00689$:
00190$:
;	../Fogger_Manager/fogger.c:227: duration = 21;
	mov	_tick_fogger_duration_65536_36,#0x15
;	../Fogger_Manager/fogger.c:228: interval = 89;
	mov	_tick_fogger_interval_65536_36,#0x59
;	../Fogger_Manager/fogger.c:229: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00246$
00236$:
;	../Fogger_Manager/fogger.c:235: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00246$
00245$:
;	../Fogger_Manager/fogger.c:238: value = get_runtime_data(FOG_POWER_INDEX);
	mov	dpl,#0x00
	lcall	_get_runtime_data
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:242: value = 0x01 << value;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00692$
00690$:
	add	a,acc
00692$:
	djnz	b,00690$
;	../Fogger_Manager/fogger.c:244: if(value != power){
	mov	r7,a
	cjne	a,_tick_fogger_power_65536_36,00693$
	sjmp	00239$
00693$:
;	../Fogger_Manager/fogger.c:245: power = value;
	mov	_tick_fogger_power_65536_36,r7
;	../Fogger_Manager/fogger.c:246: Playing = RESET;
	mov	_Playing,#0x02
00239$:
;	../Fogger_Manager/fogger.c:249: value = get_runtime_data(FOG_DURATION_INDEX);
	mov	dpl,#0x01
	lcall	_get_runtime_data
;	../Fogger_Manager/fogger.c:251: if(value != duration){
	mov	a,dpl
	mov	r7,a
	cjne	a,_tick_fogger_duration_65536_36,00694$
	sjmp	00241$
00694$:
;	../Fogger_Manager/fogger.c:252: duration = value;
	mov	_tick_fogger_duration_65536_36,r7
;	../Fogger_Manager/fogger.c:253: Playing = RESET;
	mov	_Playing,#0x02
00241$:
;	../Fogger_Manager/fogger.c:256: value = get_runtime_data(FOG_INTERVAL_INDEX);
	mov	dpl,#0x02
	lcall	_get_runtime_data
;	../Fogger_Manager/fogger.c:258: if(value != interval){
	mov	a,dpl
	mov	r7,a
	cjne	a,_tick_fogger_interval_65536_36,00695$
	sjmp	00246$
00695$:
;	../Fogger_Manager/fogger.c:259: interval = value;
	mov	_tick_fogger_interval_65536_36,r7
;	../Fogger_Manager/fogger.c:260: Playing = RESET;
	mov	_Playing,#0x02
00246$:
;	../Fogger_Manager/fogger.c:265: if(Playing == RESET){
	mov	a,#0x02
	cjne	a,_Playing,00248$
;	../Fogger_Manager/fogger.c:266: Playing = PAUSE;
	mov	_Playing,#0x00
;	../Fogger_Manager/fogger.c:267: Timer = interval;
	mov	_Timer,_tick_fogger_interval_65536_36
;	../Fogger_Manager/fogger.c:268: Interval_Or_Duration = INTERVAL;
	mov	_Interval_Or_Duration,#0x00
00248$:
;	../Fogger_Manager/fogger.c:272: if(Playing){
	mov	a,_Playing
	jnz	00698$
	ljmp	00270$
00698$:
;	../Fogger_Manager/fogger.c:273: tock++;
	inc	_tick_fogger_tock_65536_36
;	../Fogger_Manager/fogger.c:275: if(!get_runtime_data(OP_MODE_INDEX)
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00264$
;	../Fogger_Manager/fogger.c:276: && get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_9
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00264$
;	../Fogger_Manager/fogger.c:277: && (!duration || !interval)){
	mov	a,_tick_fogger_duration_65536_36
	jz	00263$
	mov	a,_tick_fogger_interval_65536_36
	jnz	00264$
00263$:
;	../Fogger_Manager/fogger.c:279: if(!(tock % power)){
	mov	b,_tick_fogger_power_65536_36
	mov	a,_tick_fogger_tock_65536_36
	div	ab
	mov	a,b
	jnz	00250$
;	../Fogger_Manager/fogger.c:280: power_pump(PUMP_ON);
	mov	dpl,#0x01
	ljmp	_power_pump
00250$:
;	../Fogger_Manager/fogger.c:282: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	ljmp	_power_pump
00264$:
;	../Fogger_Manager/fogger.c:286: if(!(tock % 8)){
	mov	r6,_tick_fogger_tock_65536_36
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00253$
;	../Fogger_Manager/fogger.c:287: Timer--;
	dec	_Timer
00253$:
;	../Fogger_Manager/fogger.c:290: if(Timer == 0x00){
	mov	a,_Timer
	jnz	00261$
;	../Fogger_Manager/fogger.c:291: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
	mov	a,_Interval_Or_Duration
	jnz	00274$
	mov	r6,#0x01
	mov	r7,a
	sjmp	00275$
00274$:
	mov	r6,#0x00
	mov	r7,#0x00
00275$:
	mov	dpl,r6
	lcall	_power_pump
;	../Fogger_Manager/fogger.c:292: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
	mov	a,_Interval_Or_Duration
	jnz	00276$
	mov	r7,_tick_fogger_duration_65536_36
	sjmp	00277$
00276$:
	mov	r7,_tick_fogger_interval_65536_36
00277$:
	mov	_Timer,r7
;	../Fogger_Manager/fogger.c:293: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
	mov	a,_Interval_Or_Duration
	jnz	00278$
	mov	r6,#0xff
	mov	r7,a
	sjmp	00279$
00278$:
	mov	r6,#0x00
	mov	r7,#0x00
00279$:
	mov	_Interval_Or_Duration,r6
	ret
00261$:
;	../Fogger_Manager/fogger.c:295: if(Interval_Or_Duration == INTERVAL){
	mov	a,_Interval_Or_Duration
;	../Fogger_Manager/fogger.c:296: power_pump(PUMP_OFF);
	jnz	00258$
	mov	dpl,a
	ljmp	_power_pump
00258$:
;	../Fogger_Manager/fogger.c:298: if(!(tock % power)){
	mov	b,_tick_fogger_power_65536_36
	mov	a,_tick_fogger_tock_65536_36
	div	ab
	mov	a,b
	jnz	00255$
;	../Fogger_Manager/fogger.c:299: power_pump(PUMP_ON);
	mov	dpl,#0x01
	ljmp	_power_pump
00255$:
;	../Fogger_Manager/fogger.c:301: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	ljmp	_power_pump
00270$:
;	../Fogger_Manager/fogger.c:309: power_pump(PUMP_OFF);
	mov	dpl,#0x00
;	../Fogger_Manager/fogger.c:312: }
	ljmp	_power_pump
;------------------------------------------------------------
;Allocation info for local variables in function 'power_pump'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:314: void power_pump(uint8_t action){
;	-----------------------------------------
;	 function power_pump
;	-----------------------------------------
_power_pump:
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:315: switch (action)
	cjne	r7,#0x01,00139$
	sjmp	00101$
00139$:
	cjne	r7,#0x02,00140$
	sjmp	00106$
00140$:
;	../Fogger_Manager/fogger.c:317: case PUMP_ON:
	cjne	r7,#0x03,00111$
	sjmp	00110$
00101$:
;	../Fogger_Manager/fogger.c:318: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
	mov	a,_Fluid_Level
	jz	00103$
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00103$
	cjne	r7,#0x00,00103$
;	../Fogger_Manager/fogger.c:319: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:320: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#0xfd
	ret
00103$:
;	../Fogger_Manager/fogger.c:322: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:324: break;
;	../Fogger_Manager/fogger.c:325: case PUMP_OVERRIDE:
	ret
00106$:
;	../Fogger_Manager/fogger.c:326: if(get_heated() == HEATED){
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00108$
	cjne	r7,#0x00,00108$
;	../Fogger_Manager/fogger.c:327: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:328: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#0xfd
	ret
00108$:
;	../Fogger_Manager/fogger.c:330: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:332: break;
;	../Fogger_Manager/fogger.c:333: case PUMP_MASTER_OVERRIDE:
	ret
00110$:
;	../Fogger_Manager/fogger.c:334: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:335: break;
;	../Fogger_Manager/fogger.c:336: default:
	ret
00111$:
;	../Fogger_Manager/fogger.c:337: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:339: }
;	../Fogger_Manager/fogger.c:340: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'power_heater'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:342: void power_heater(uint8_t action){
;	-----------------------------------------
;	 function power_heater
;	-----------------------------------------
_power_heater:
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:343: switch (action)
	cjne	r7,#0x01,00102$
;	../Fogger_Manager/fogger.c:346: Heat_Flag |= HEAT_DISABLE_FLAG;
	mov	r6,_Heat_Flag
	orl	ar6,#0x80
	mov	_Heat_Flag,r6
;	../Fogger_Manager/fogger.c:347: break;
;	../Fogger_Manager/fogger.c:348: default:
	ret
00102$:
;	../Fogger_Manager/fogger.c:349: Heat_Flag &= ~HEAT_DISABLE_FLAG;
	anl	_Heat_Flag,#0x7f
;	../Fogger_Manager/fogger.c:351: }
;	../Fogger_Manager/fogger.c:352: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
