;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module fogger
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;	../Fogger_Manager/fogger.c:37: Heat_Flag &= ~HEATED;
;	../Fogger_Manager/fogger.c:38: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#(0x7f&0xfd)
	sjmp	00108$
00107$:
;	../Fogger_Manager/fogger.c:39: } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
	clr	c
	mov	a,#0xb9
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00104$
;	../Fogger_Manager/fogger.c:40: Heat_Flag |= HOT_FLAG;
	mov	r4,_Heat_Flag
	orl	ar4,#0x02
;	../Fogger_Manager/fogger.c:41: Heat_Flag |= HEATED;
	mov  _Heat_Flag,r4
	mov	r5,#0x00
	orl	ar4,#0x80
	mov	_Heat_Flag,r4
	sjmp	00108$
00104$:
;	../Fogger_Manager/fogger.c:42: } else if(temperature > HEAT_OK){ /* Set Heated */
	clr	c
	mov	a,#0xaf
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00108$
;	../Fogger_Manager/fogger.c:43: Heat_Flag |= HEATED;
	mov	r6,_Heat_Flag
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	_Heat_Flag,r6
00108$:
;	../Fogger_Manager/fogger.c:47: if(Heat_Flag & HEAT_DISABLE_FLAG){
	mov	a,_Heat_Flag
	jnb	acc.4,00110$
;	../Fogger_Manager/fogger.c:48: P3_4 = 1;
;	assignBit
	setb	_P3_4
;	../Fogger_Manager/fogger.c:49: P3_3 = 1;
;	assignBit
	setb	_P3_3
	sjmp	00111$
00110$:
;	../Fogger_Manager/fogger.c:51: P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
	mov	a,_Heat_Flag
	rr	a
	anl	a,#0x01
;	assignBit
	mov	r7,a
	add	a,#0xff
	mov	_P3_4,c
;	../Fogger_Manager/fogger.c:52: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P3_3,c
00111$:
;	../Fogger_Manager/fogger.c:56: if(!P2_6){ // no fluid
	jb	_P2_6,00123$
;	../Fogger_Manager/fogger.c:57: if(Fluid_Level == TANK_FULL){
	mov	a,#0x01
	cjne	a,_Fluid_Level,00115$
;	../Fogger_Manager/fogger.c:58: if(fullCount++ > REFILL_FLUID_COUNT){
	mov	r7,_tick_fogger_fullCount_65536_36
	inc	_tick_fogger_fullCount_65536_36
	mov	a,r7
	add	a,#0xff - 0x22
	jnc	00124$
;	../Fogger_Manager/fogger.c:59: Fluid_Level = TANK_EMPTY;
	mov	_Fluid_Level,#0x00
	sjmp	00124$
00115$:
;	../Fogger_Manager/fogger.c:62: fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
	sjmp	00124$
00123$:
;	../Fogger_Manager/fogger.c:65: if(Fluid_Level == TANK_EMPTY){
	mov	a,_Fluid_Level
	jnz	00120$
;	../Fogger_Manager/fogger.c:66: if(fullCount++ > REFILL_FLUID_COUNT){
	mov	r7,_tick_fogger_fullCount_65536_36
	inc	_tick_fogger_fullCount_65536_36
	mov	a,r7
	add	a,#0xff - 0x22
	jnc	00124$
;	../Fogger_Manager/fogger.c:67: Fluid_Level = TANK_FULL;
	mov	_Fluid_Level,#0x01
	sjmp	00124$
00120$:
;	../Fogger_Manager/fogger.c:70: fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
00124$:
;	../Fogger_Manager/fogger.c:75: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
	mov	dpl,#0x0f
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00135$
;	../Fogger_Manager/fogger.c:76: if(Fluid_Level == TANK_EMPTY){ //flash on empty
	mov	a,_Fluid_Level
	jnz	00132$
;	../Fogger_Manager/fogger.c:77: on = ~on;
	mov	a,_tick_fogger_on_65536_36
	cpl	a
;	../Fogger_Manager/fogger.c:79: if(on){
	mov	_tick_fogger_on_65536_36,a
	jz	00126$
;	../Fogger_Manager/fogger.c:80: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../Fogger_Manager/fogger.c:81: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00136$
00126$:
;	../Fogger_Manager/fogger.c:83: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:84: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00136$
00132$:
;	../Fogger_Manager/fogger.c:87: if(get_heated()){ //heated not heated
	mov	a,_Heat_Flag
	jnb	acc.7,00129$
;	../Fogger_Manager/fogger.c:88: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../Fogger_Manager/fogger.c:89: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00136$
00129$:
;	../Fogger_Manager/fogger.c:91: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:92: P2_0 = 0;
;	assignBit
	clr	_P2_0
	sjmp	00136$
00135$:
;	../Fogger_Manager/fogger.c:96: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:97: P2_0 = 1;
;	assignBit
	setb	_P2_0
00136$:
;	../Fogger_Manager/fogger.c:102: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00581$
	ljmp	00233$
00581$:
;	../Fogger_Manager/fogger.c:103: if(has_dmx()){
	mov	a,_Has_DMX
	jnz	00582$
	ljmp	00224$
00582$:
;	../Fogger_Manager/fogger.c:104: Playing = PLAY;
	mov	_Playing,#0x01
;	../Fogger_Manager/fogger.c:105: power = FOG_HIGH;
	mov	_tick_fogger_power_65536_36,#0x01
;	../Fogger_Manager/fogger.c:106: power_heater(HEATER_ENABLE);
	mov	dpl,#0x00
	lcall	_power_heater
;	../Fogger_Manager/fogger.c:108: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00221$
;	../Fogger_Manager/fogger.c:110: value = get_dmx_value(DMX_M11_POWER_INDEX);
	mov	r7,_DMX
;	../Fogger_Manager/fogger.c:112: if(value < DMX_FOG_OFF){
	cjne	r7,#0x14,00584$
00584$:
	jnc	00144$
;	../Fogger_Manager/fogger.c:113: Playing = PAUSE;
	mov	_Playing,#0x00
	sjmp	00145$
00144$:
;	../Fogger_Manager/fogger.c:114: } else if(value < DMX_FOG_LOW){
	cjne	r7,#0x64,00586$
00586$:
	jnc	00141$
;	../Fogger_Manager/fogger.c:115: value = FOG_LO;
	mov	r7,#0x04
	sjmp	00145$
00141$:
;	../Fogger_Manager/fogger.c:116: } else if(value < DMX_FOG_MEDIUM){
	cjne	r7,#0xc8,00588$
00588$:
	jnc	00138$
;	../Fogger_Manager/fogger.c:117: value = FOG_MED;
	mov	r7,#0x02
	sjmp	00145$
00138$:
;	../Fogger_Manager/fogger.c:119: value = FOG_HIGH;
	mov	r7,#0x01
00145$:
;	../Fogger_Manager/fogger.c:122: if(value != power){
	mov	a,r7
	cjne	a,_tick_fogger_power_65536_36,00590$
	sjmp	00147$
00590$:
;	../Fogger_Manager/fogger.c:123: power = value;
	mov	_tick_fogger_power_65536_36,r7
00147$:
;	../Fogger_Manager/fogger.c:126: value = get_dmx_value(DMX_M11_DURATION_INDEX);
;	../Fogger_Manager/fogger.c:128: if(value != duration){
	mov	a,(_DMX + 0x0001)
	mov	r7,a
	cjne	a,_tick_fogger_duration_65536_36,00591$
	sjmp	00149$
00591$:
;	../Fogger_Manager/fogger.c:129: duration = value;
	mov	_tick_fogger_duration_65536_36,r7
;	../Fogger_Manager/fogger.c:130: Timer = duration;
	mov	_Timer,_tick_fogger_duration_65536_36
;	../Fogger_Manager/fogger.c:131: Interval_Or_Duration = DURATION;
	mov	_Interval_Or_Duration,#0xff
00149$:
;	../Fogger_Manager/fogger.c:134: value = get_dmx_value(DMX_M11_INTERVAL_INDEX);
;	../Fogger_Manager/fogger.c:136: if(value != interval){
	mov	a,(_DMX + 0x0002)
	mov	r7,a
	cjne	a,_tick_fogger_interval_65536_36,00592$
	sjmp	00151$
00592$:
;	../Fogger_Manager/fogger.c:137: interval = value;
	mov	_tick_fogger_interval_65536_36,r7
;	../Fogger_Manager/fogger.c:138: Playing = RESET;
	mov	_Playing,#0x02
00151$:
;	../Fogger_Manager/fogger.c:141: value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);
;	../Fogger_Manager/fogger.c:143: if(value >= DMX_HEATER_OFF){
	mov	a,#0x100 - 0x80
	add	a,(_DMX + 0x000a)
	jc	00593$
	ljmp	00234$
00593$:
;	../Fogger_Manager/fogger.c:144: power_heater(HEATER_DISABLE);
	mov	dpl,#0x01
	lcall	_power_heater
	ljmp	00234$
00221$:
;	../Fogger_Manager/fogger.c:151: value = get_dmx_value(DMX_M1_FOG_INDEX);
	mov	r7,_DMX
;	../Fogger_Manager/fogger.c:154: if(value < DMX_FOG_OFF){
	cjne	r7,#0x14,00594$
00594$:
	jnc	00218$
;	../Fogger_Manager/fogger.c:155: Playing = PAUSE;
	mov	_Playing,#0x00
	ljmp	00234$
00218$:
;	../Fogger_Manager/fogger.c:157: } else if(value < DMX_FOG_3_13){
	cjne	r7,#0x28,00596$
00596$:
	jnc	00215$
;	../Fogger_Manager/fogger.c:158: if(duration != 3 || interval != 13){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00154$
	mov	a,#0x0d
	cjne	a,_tick_fogger_interval_65536_36,00600$
	ljmp	00234$
00600$:
00154$:
;	../Fogger_Manager/fogger.c:159: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:160: interval = 13;
	mov	_tick_fogger_interval_65536_36,#0x0d
;	../Fogger_Manager/fogger.c:161: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00215$:
;	../Fogger_Manager/fogger.c:163: } else if(value < DMX_FOG_3_21){
	cjne	r7,#0x3c,00601$
00601$:
	jnc	00212$
;	../Fogger_Manager/fogger.c:164: if(duration != 3 || interval != 21){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00157$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00605$
	ljmp	00234$
00605$:
00157$:
;	../Fogger_Manager/fogger.c:165: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:166: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:167: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00212$:
;	../Fogger_Manager/fogger.c:169: } else if(value < DMX_FOG_3_34){
	cjne	r7,#0x50,00606$
00606$:
	jnc	00209$
;	../Fogger_Manager/fogger.c:170: if(duration != 3 || interval != 34){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00160$
	mov	a,#0x22
	cjne	a,_tick_fogger_interval_65536_36,00610$
	ljmp	00234$
00610$:
00160$:
;	../Fogger_Manager/fogger.c:171: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:172: interval = 34;
	mov	_tick_fogger_interval_65536_36,#0x22
;	../Fogger_Manager/fogger.c:173: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00209$:
;	../Fogger_Manager/fogger.c:175: } else if(value < DMX_FOG_3_55){
	cjne	r7,#0x64,00611$
00611$:
	jnc	00206$
;	../Fogger_Manager/fogger.c:176: if(duration != 3 || interval != 55){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00163$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00615$
	ljmp	00234$
00615$:
00163$:
;	../Fogger_Manager/fogger.c:177: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:178: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:179: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00206$:
;	../Fogger_Manager/fogger.c:181: } else if(value < DMX_FOG_8_21){
	cjne	r7,#0x78,00616$
00616$:
	jnc	00203$
;	../Fogger_Manager/fogger.c:182: if(duration != 8 || interval != 21){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00166$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00620$
	ljmp	00234$
00620$:
00166$:
;	../Fogger_Manager/fogger.c:183: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:184: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:185: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00203$:
;	../Fogger_Manager/fogger.c:187: } else if(value < DMX_FOG_8_34){
	cjne	r7,#0x8c,00621$
00621$:
	jnc	00200$
;	../Fogger_Manager/fogger.c:188: if(duration != 8 || interval != 34){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00169$
	mov	a,#0x22
	cjne	a,_tick_fogger_interval_65536_36,00625$
	ljmp	00234$
00625$:
00169$:
;	../Fogger_Manager/fogger.c:189: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:190: interval = 34;
	mov	_tick_fogger_interval_65536_36,#0x22
;	../Fogger_Manager/fogger.c:191: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00200$:
;	../Fogger_Manager/fogger.c:193: } else if(value < DMX_FOG_8_55){
	cjne	r7,#0xa0,00626$
00626$:
	jnc	00197$
;	../Fogger_Manager/fogger.c:194: if(duration != 8 || interval != 55){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00172$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00630$
	ljmp	00234$
00630$:
00172$:
;	../Fogger_Manager/fogger.c:195: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:196: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:197: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00197$:
;	../Fogger_Manager/fogger.c:199: } else if(value < DMX_FOG_8_89){
	cjne	r7,#0xb4,00631$
00631$:
	jnc	00194$
;	../Fogger_Manager/fogger.c:200: if(duration != 8 || interval != 89){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00175$
	mov	a,#0x59
	cjne	a,_tick_fogger_interval_65536_36,00635$
	ljmp	00234$
00635$:
00175$:
;	../Fogger_Manager/fogger.c:201: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:202: interval = 89;
	mov	_tick_fogger_interval_65536_36,#0x59
;	../Fogger_Manager/fogger.c:203: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00194$:
;	../Fogger_Manager/fogger.c:205: } else if(value < DMX_FOG_8_144){
	cjne	r7,#0xc8,00636$
00636$:
	jnc	00191$
;	../Fogger_Manager/fogger.c:206: if(duration != 8 || interval != 144){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00178$
	mov	a,#0x90
	cjne	a,_tick_fogger_interval_65536_36,00640$
	ljmp	00234$
00640$:
00178$:
;	../Fogger_Manager/fogger.c:207: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:208: interval = 144;
	mov	_tick_fogger_interval_65536_36,#0x90
;	../Fogger_Manager/fogger.c:209: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00234$
00191$:
;	../Fogger_Manager/fogger.c:211: } else if(value < DMX_FOG_21_55){
	cjne	r7,#0xdc,00641$
00641$:
	jnc	00188$
;	../Fogger_Manager/fogger.c:212: if(duration != 21 || interval != 55){
	mov	a,#0x15
	cjne	a,_tick_fogger_duration_65536_36,00181$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00645$
	sjmp	00234$
00645$:
00181$:
;	../Fogger_Manager/fogger.c:213: duration = 21;
	mov	_tick_fogger_duration_65536_36,#0x15
;	../Fogger_Manager/fogger.c:214: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:215: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00234$
00188$:
;	../Fogger_Manager/fogger.c:218: if(duration !=  0 || interval != 0){
	mov	a,_tick_fogger_duration_65536_36
	jnz	00184$
	mov	a,_tick_fogger_interval_65536_36
	jz	00234$
00184$:
;	../Fogger_Manager/fogger.c:219: duration = 0;
	mov	_tick_fogger_duration_65536_36,#0x00
;	../Fogger_Manager/fogger.c:220: interval = 0;
	mov	_tick_fogger_interval_65536_36,#0x00
;	../Fogger_Manager/fogger.c:221: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00234$
00224$:
;	../Fogger_Manager/fogger.c:227: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00234$
00233$:
;	../Fogger_Manager/fogger.c:230: value = get_runtime_data(FOG_POWER_INDEX);
	mov	dpl,#0x00
	lcall	_get_runtime_data
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:234: value = 0x01 << value;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00650$
00648$:
	add	a,acc
00650$:
	djnz	b,00648$
;	../Fogger_Manager/fogger.c:236: if(value != power){
	mov	r7,a
	cjne	a,_tick_fogger_power_65536_36,00651$
	sjmp	00227$
00651$:
;	../Fogger_Manager/fogger.c:237: power = value;
	mov	_tick_fogger_power_65536_36,r7
;	../Fogger_Manager/fogger.c:238: Playing = RESET;
	mov	_Playing,#0x02
00227$:
;	../Fogger_Manager/fogger.c:241: value = get_runtime_data(FOG_DURATION_INDEX);
	mov	dpl,#0x01
	lcall	_get_runtime_data
;	../Fogger_Manager/fogger.c:243: if(value != duration){
	mov	a,dpl
	mov	r7,a
	cjne	a,_tick_fogger_duration_65536_36,00652$
	sjmp	00229$
00652$:
;	../Fogger_Manager/fogger.c:244: duration = value;
	mov	_tick_fogger_duration_65536_36,r7
;	../Fogger_Manager/fogger.c:245: Playing = RESET;
	mov	_Playing,#0x02
00229$:
;	../Fogger_Manager/fogger.c:248: value = get_runtime_data(FOG_INTERVAL_INDEX);
	mov	dpl,#0x02
	lcall	_get_runtime_data
;	../Fogger_Manager/fogger.c:250: if(value != interval){
	mov	a,dpl
	mov	r7,a
	cjne	a,_tick_fogger_interval_65536_36,00653$
	sjmp	00234$
00653$:
;	../Fogger_Manager/fogger.c:251: interval = value;
	mov	_tick_fogger_interval_65536_36,r7
;	../Fogger_Manager/fogger.c:252: Playing = RESET;
	mov	_Playing,#0x02
00234$:
;	../Fogger_Manager/fogger.c:257: if(Playing == RESET){
	mov	a,#0x02
	cjne	a,_Playing,00236$
;	../Fogger_Manager/fogger.c:258: Playing = PAUSE;
	mov	_Playing,#0x00
;	../Fogger_Manager/fogger.c:259: Timer = interval;
	mov	_Timer,_tick_fogger_interval_65536_36
;	../Fogger_Manager/fogger.c:260: Interval_Or_Duration = INTERVAL;
	mov	_Interval_Or_Duration,#0x00
00236$:
;	../Fogger_Manager/fogger.c:264: if(Playing){
	mov	a,_Playing
	jnz	00656$
	ljmp	00257$
00656$:
;	../Fogger_Manager/fogger.c:265: tock++;
	inc	_tick_fogger_tock_65536_36
;	../Fogger_Manager/fogger.c:267: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00252$
;	../Fogger_Manager/fogger.c:268: && (!duration || !interval)){
	mov	a,_tick_fogger_duration_65536_36
	jz	00251$
	mov	a,_tick_fogger_interval_65536_36
	jnz	00252$
00251$:
;	../Fogger_Manager/fogger.c:270: if(!(tock % power)){
	mov	b,_tick_fogger_power_65536_36
	mov	a,_tick_fogger_tock_65536_36
	div	ab
	mov	a,b
	jnz	00238$
;	../Fogger_Manager/fogger.c:271: power_pump(PUMP_ON);
	mov	dpl,#0x01
	ljmp	_power_pump
00238$:
;	../Fogger_Manager/fogger.c:273: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	ljmp	_power_pump
00252$:
;	../Fogger_Manager/fogger.c:277: if(!(tock % 8)){
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
	jnz	00241$
;	../Fogger_Manager/fogger.c:278: Timer--;
	dec	_Timer
00241$:
;	../Fogger_Manager/fogger.c:281: if(Timer == 0x00){
	mov	a,_Timer
	jnz	00249$
;	../Fogger_Manager/fogger.c:282: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
	mov	a,_Interval_Or_Duration
	jnz	00261$
	mov	r6,#0x01
	mov	r7,a
	sjmp	00262$
00261$:
	mov	r6,#0x00
	mov	r7,#0x00
00262$:
	mov	dpl,r6
	lcall	_power_pump
;	../Fogger_Manager/fogger.c:283: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
	mov	a,_Interval_Or_Duration
	jnz	00263$
	mov	r7,_tick_fogger_duration_65536_36
	sjmp	00264$
00263$:
	mov	r7,_tick_fogger_interval_65536_36
00264$:
	mov	_Timer,r7
;	../Fogger_Manager/fogger.c:284: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
	mov	a,_Interval_Or_Duration
	jnz	00265$
	mov	r6,#0xff
	mov	r7,a
	sjmp	00266$
00265$:
	mov	r6,#0x00
	mov	r7,#0x00
00266$:
	mov	_Interval_Or_Duration,r6
	ret
00249$:
;	../Fogger_Manager/fogger.c:286: if(Interval_Or_Duration == INTERVAL){
	mov	a,_Interval_Or_Duration
;	../Fogger_Manager/fogger.c:287: power_pump(PUMP_OFF);
	jnz	00246$
	mov	dpl,a
	ljmp	_power_pump
00246$:
;	../Fogger_Manager/fogger.c:289: if(!(tock % power)){
	mov	b,_tick_fogger_power_65536_36
	mov	a,_tick_fogger_tock_65536_36
	div	ab
	mov	a,b
	jnz	00243$
;	../Fogger_Manager/fogger.c:290: power_pump(PUMP_ON);
	mov	dpl,#0x01
	ljmp	_power_pump
00243$:
;	../Fogger_Manager/fogger.c:292: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	ljmp	_power_pump
00257$:
;	../Fogger_Manager/fogger.c:300: power_pump(PUMP_OFF);
	mov	dpl,#0x00
;	../Fogger_Manager/fogger.c:303: }
	ljmp	_power_pump
;------------------------------------------------------------
;Allocation info for local variables in function 'power_pump'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:305: void power_pump(uint8_t action){
;	-----------------------------------------
;	 function power_pump
;	-----------------------------------------
_power_pump:
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:306: switch (action)
	cjne	r7,#0x01,00139$
	sjmp	00101$
00139$:
	cjne	r7,#0x02,00140$
	sjmp	00106$
00140$:
;	../Fogger_Manager/fogger.c:308: case PUMP_ON:
	cjne	r7,#0x03,00111$
	sjmp	00110$
00101$:
;	../Fogger_Manager/fogger.c:309: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
	mov	a,_Fluid_Level
	jz	00103$
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00103$
	cjne	r7,#0x00,00103$
;	../Fogger_Manager/fogger.c:310: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:311: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#0xfd
	ret
00103$:
;	../Fogger_Manager/fogger.c:313: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:315: break;
;	../Fogger_Manager/fogger.c:316: case PUMP_OVERRIDE:
	ret
00106$:
;	../Fogger_Manager/fogger.c:317: if(get_heated() == HEATED){
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00108$
	cjne	r7,#0x00,00108$
;	../Fogger_Manager/fogger.c:318: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:319: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#0xfd
	ret
00108$:
;	../Fogger_Manager/fogger.c:321: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:323: break;
;	../Fogger_Manager/fogger.c:324: case PUMP_MASTER_OVERRIDE:
	ret
00110$:
;	../Fogger_Manager/fogger.c:325: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:326: break;
;	../Fogger_Manager/fogger.c:327: default:
	ret
00111$:
;	../Fogger_Manager/fogger.c:328: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:330: }
;	../Fogger_Manager/fogger.c:331: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'power_heater'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:333: void power_heater(uint8_t action){
;	-----------------------------------------
;	 function power_heater
;	-----------------------------------------
_power_heater:
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:334: switch (action)
	cjne	r7,#0x01,00102$
;	../Fogger_Manager/fogger.c:337: Heat_Flag |= HEAT_DISABLE_FLAG;
	mov	r6,_Heat_Flag
	orl	ar6,#0x10
	mov	_Heat_Flag,r6
;	../Fogger_Manager/fogger.c:338: break;
;	../Fogger_Manager/fogger.c:339: default:
	ret
00102$:
;	../Fogger_Manager/fogger.c:340: Heat_Flag &= ~HEAT_DISABLE_FLAG;
	anl	_Heat_Flag,#0xef
;	../Fogger_Manager/fogger.c:342: }
;	../Fogger_Manager/fogger.c:343: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
