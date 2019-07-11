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
_tick_fogger_temperature_65536_36:
	.ds 8
_tick_fogger_tick_65536_36:
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
;runningAverage            Allocated to registers r4 r5 r6 r7 
;value                     Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +1
;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
;on                        Allocated with name '_tick_fogger_on_65536_36'
;temperature               Allocated with name '_tick_fogger_temperature_65536_36'
;tick                      Allocated with name '_tick_fogger_tick_65536_36'
;duration                  Allocated with name '_tick_fogger_duration_65536_36'
;interval                  Allocated with name '_tick_fogger_interval_65536_36'
;power                     Allocated with name '_tick_fogger_power_65536_36'
;tock                      Allocated with name '_tick_fogger_tock_65536_36'
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:20: static uint8_t fullCount = 0;
;	../Fogger_Manager/fogger.c:21: static uint8_t on = 0x00; //to toggle lights
;	../Fogger_Manager/fogger.c:22: static uint16_t temperature[MOVING_AVERAGE] = {0, 0, 0, 0};
	clr	a
	mov	_tick_fogger_fullCount_65536_36,a
	mov	_tick_fogger_on_65536_36,a
	mov	(_tick_fogger_temperature_65536_36 + 0),a
	mov	(_tick_fogger_temperature_65536_36 + 1),a
	mov	((_tick_fogger_temperature_65536_36 + 0x0002) + 0),a
	mov	((_tick_fogger_temperature_65536_36 + 0x0002) + 1),a
	mov	((_tick_fogger_temperature_65536_36 + 0x0004) + 0),a
	mov	((_tick_fogger_temperature_65536_36 + 0x0004) + 1),a
	mov	((_tick_fogger_temperature_65536_36 + 0x0006) + 0),a
	mov	((_tick_fogger_temperature_65536_36 + 0x0006) + 1),a
;	../Fogger_Manager/fogger.c:23: static uint8_t tick = 0;
;	1-genFromRTrack replaced	mov	_tick_fogger_tick_65536_36,#0x00
	mov	_tick_fogger_tick_65536_36,a
;	../Fogger_Manager/fogger.c:30: static uint8_t tock = 0;
;	1-genFromRTrack replaced	mov	_tick_fogger_tock_65536_36,#0x00
	mov	_tick_fogger_tock_65536_36,a
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
;runningAverage            Allocated to registers r4 r5 r6 r7 
;value                     Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +1
;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
;on                        Allocated with name '_tick_fogger_on_65536_36'
;temperature               Allocated with name '_tick_fogger_temperature_65536_36'
;tick                      Allocated with name '_tick_fogger_tick_65536_36'
;duration                  Allocated with name '_tick_fogger_duration_65536_36'
;interval                  Allocated with name '_tick_fogger_interval_65536_36'
;power                     Allocated with name '_tick_fogger_power_65536_36'
;tock                      Allocated with name '_tick_fogger_tock_65536_36'
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	../Fogger_Manager/fogger.c:24: uint32_t runningAverage = 0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../Fogger_Manager/fogger.c:36: temperature[tick++ % MOVING_AVERAGE] = get_adc_value(ADC_TEMPERATURE);
	mov	r3,_tick_fogger_tick_65536_36
	inc	_tick_fogger_tick_65536_36
	anl	ar3,#0x03
	mov	a,r3
	add	a,r3
	add	a,#_tick_fogger_temperature_65536_36
	mov	r1,a
	mov	dpl,#0x00
	push	ar1
	lcall	_get_adc_value
	mov	a,dpl
	mov	b,dph
	pop	ar1
	mov	@r1,a
	inc	r1
	mov	@r1,b
;	../Fogger_Manager/fogger.c:38: for(value = 0; value < MOVING_AVERAGE; value++){
	mov	r3,#0x00
00268$:
;	../Fogger_Manager/fogger.c:39: if(!value){
	mov	a,r3
	jnz	00102$
;	../Fogger_Manager/fogger.c:40: runningAverage = temperature[value];
	mov	a,r3
	add	a,r3
	add	a,#_tick_fogger_temperature_65536_36
	mov	r1,a
	push	ar3
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	pop	ar3
	sjmp	00269$
00102$:
;	../Fogger_Manager/fogger.c:42: runningAverage += temperature[value];
	mov	a,r3
	add	a,r3
	add	a,#_tick_fogger_temperature_65536_36
	mov	r1,a
	push	ar3
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../Fogger_Manager/fogger.c:319: power_pump(PUMP_OFF);
	pop	ar3
;	../Fogger_Manager/fogger.c:42: runningAverage += temperature[value];
00269$:
;	../Fogger_Manager/fogger.c:38: for(value = 0; value < MOVING_AVERAGE; value++){
	inc	r3
	cjne	r3,#0x04,00605$
00605$:
	jc	00268$
;	../Fogger_Manager/fogger.c:46: runningAverage = runningAverage >> MOVING_AVERAGE_SHIFT;
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	r7,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r6,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r5,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r4,a
	mov	a,r7
	clr	c
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
;	../Fogger_Manager/fogger.c:48: if(runningAverage < HEAT_LOW){ /* Turn on heater full blast */
	mov	r4,a
	clr	c
	subb	a,#0x8c
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00111$
;	../Fogger_Manager/fogger.c:49: Heat_Flag &= ~HEATED;
;	../Fogger_Manager/fogger.c:50: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#(0x7f&0xfd)
	sjmp	00112$
00111$:
;	../Fogger_Manager/fogger.c:51: } else if(runningAverage > HEAT_HIGH){ /* Turn off Heater */
	clr	c
	mov	a,#0xb9
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00108$
;	../Fogger_Manager/fogger.c:52: Heat_Flag |= HOT_FLAG;
	mov	r2,_Heat_Flag
	orl	ar2,#0x02
;	../Fogger_Manager/fogger.c:53: Heat_Flag |= HEATED;
	mov  _Heat_Flag,r2
	mov	r3,#0x00
	orl	ar2,#0x80
	mov	_Heat_Flag,r2
	sjmp	00112$
00108$:
;	../Fogger_Manager/fogger.c:54: } else if(runningAverage > HEAT_OK){ /* Set Heated */
	clr	c
	mov	a,#0xaa
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00112$
;	../Fogger_Manager/fogger.c:55: Heat_Flag |= HEATED;
	mov	r6,_Heat_Flag
	mov	r7,#0x00
	orl	ar6,#0x80
	mov	_Heat_Flag,r6
00112$:
;	../Fogger_Manager/fogger.c:59: if(Heat_Flag & HEAT_DISABLE_FLAG){
	mov	a,_Heat_Flag
	jnb	acc.4,00114$
;	../Fogger_Manager/fogger.c:60: P3_4 = 1;
;	assignBit
	setb	_P3_4
;	../Fogger_Manager/fogger.c:61: P3_3 = 1;
;	assignBit
	setb	_P3_3
	sjmp	00115$
00114$:
;	../Fogger_Manager/fogger.c:63: P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
	mov	a,_Heat_Flag
	mov	c,acc[1]
;	assignBit
;	../Fogger_Manager/fogger.c:64: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
;	assignBit
	mov	b0,c
	mov	_P3_4,c
	mov	_P3_3,c
00115$:
;	../Fogger_Manager/fogger.c:68: if(!P2_6){ // no fluid
	jb	_P2_6,00127$
;	../Fogger_Manager/fogger.c:69: if(Fluid_Level == TANK_FULL){
	mov	a,#0x01
	cjne	a,_Fluid_Level,00119$
;	../Fogger_Manager/fogger.c:70: if(fullCount++ > EMPTY_FLUID_COUNT){
	mov	r7,_tick_fogger_fullCount_65536_36
	inc	_tick_fogger_fullCount_65536_36
	mov	a,r7
	add	a,#0xff - 0x0d
	jnc	00128$
;	../Fogger_Manager/fogger.c:71: Fluid_Level = TANK_EMPTY;
	mov	_Fluid_Level,#0x00
	sjmp	00128$
00119$:
;	../Fogger_Manager/fogger.c:74: fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
	sjmp	00128$
00127$:
;	../Fogger_Manager/fogger.c:77: if(Fluid_Level == TANK_EMPTY){
	mov	a,_Fluid_Level
	jnz	00124$
;	../Fogger_Manager/fogger.c:78: if(fullCount++ > REFILL_FLUID_COUNT){
	mov	r7,_tick_fogger_fullCount_65536_36
	inc	_tick_fogger_fullCount_65536_36
	mov	a,r7
	add	a,#0xff - 0x22
	jnc	00128$
;	../Fogger_Manager/fogger.c:79: Fluid_Level = TANK_FULL;
	mov	_Fluid_Level,#0x01
	sjmp	00128$
00124$:
;	../Fogger_Manager/fogger.c:82: fullCount = 0;
	mov	_tick_fogger_fullCount_65536_36,#0x00
00128$:
;	../Fogger_Manager/fogger.c:87: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
	mov	dpl,#0x0f
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00139$
;	../Fogger_Manager/fogger.c:88: if(Fluid_Level == TANK_EMPTY){ //flash on empty
	mov	a,_Fluid_Level
	jnz	00136$
;	../Fogger_Manager/fogger.c:89: on = ~on;
	mov	a,_tick_fogger_on_65536_36
	cpl	a
;	../Fogger_Manager/fogger.c:91: if(on){
	mov	_tick_fogger_on_65536_36,a
	jz	00130$
;	../Fogger_Manager/fogger.c:92: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../Fogger_Manager/fogger.c:93: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00140$
00130$:
;	../Fogger_Manager/fogger.c:95: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:96: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00140$
00136$:
;	../Fogger_Manager/fogger.c:99: if(get_heated()){ //heated not heated
	mov	a,_Heat_Flag
	jnb	acc.7,00133$
;	../Fogger_Manager/fogger.c:100: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	../Fogger_Manager/fogger.c:101: P2_0 = 1;
;	assignBit
	setb	_P2_0
	sjmp	00140$
00133$:
;	../Fogger_Manager/fogger.c:103: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:104: P2_0 = 0;
;	assignBit
	clr	_P2_0
	sjmp	00140$
00139$:
;	../Fogger_Manager/fogger.c:108: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	../Fogger_Manager/fogger.c:109: P2_0 = 1;
;	assignBit
	setb	_P2_0
00140$:
;	../Fogger_Manager/fogger.c:115: power_heater(HEATER_ENABLE);
	mov	dpl,#0x00
	lcall	_power_heater
;	../Fogger_Manager/fogger.c:117: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jz	00621$
	ljmp	00237$
00621$:
;	../Fogger_Manager/fogger.c:118: if(has_dmx()){
	mov	a,_Has_DMX
	jnz	00622$
	ljmp	00228$
00622$:
;	../Fogger_Manager/fogger.c:119: Playing = PLAY;
	mov	_Playing,#0x01
;	../Fogger_Manager/fogger.c:120: power = FOG_HIGH;
	mov	_tick_fogger_power_65536_36,#0x01
;	../Fogger_Manager/fogger.c:122: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
	mov	dpl,#0x0e
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00225$
;	../Fogger_Manager/fogger.c:125: value = get_dmx_value(DMX_M11_POWER_INDEX);
;	../Fogger_Manager/fogger.c:127: if(value <= DMX_FOG_OFF){
	mov	a,_DMX
	mov	r7,a
	add	a,#0xff - 0x14
	jc	00148$
;	../Fogger_Manager/fogger.c:128: Playing = PAUSE;
	mov	_Playing,#0x00
	sjmp	00149$
00148$:
;	../Fogger_Manager/fogger.c:129: } else if(value <= DMX_FOG_LOW){
	mov	a,r7
	add	a,#0xff - 0x64
	jc	00145$
;	../Fogger_Manager/fogger.c:130: value = FOG_LO;
	mov	r7,#0x04
	sjmp	00149$
00145$:
;	../Fogger_Manager/fogger.c:131: } else if(value <= DMX_FOG_MEDIUM){
	mov	a,r7
	add	a,#0xff - 0xc8
	jc	00142$
;	../Fogger_Manager/fogger.c:132: value = FOG_MED;
	mov	r7,#0x02
	sjmp	00149$
00142$:
;	../Fogger_Manager/fogger.c:134: value = FOG_HIGH;
	mov	r7,#0x01
00149$:
;	../Fogger_Manager/fogger.c:137: if(value != power){
	mov	a,r7
	cjne	a,_tick_fogger_power_65536_36,00627$
	sjmp	00151$
00627$:
;	../Fogger_Manager/fogger.c:138: power = value;
	mov	_tick_fogger_power_65536_36,r7
00151$:
;	../Fogger_Manager/fogger.c:141: value = get_dmx_value(DMX_M11_DURATION_INDEX);
;	../Fogger_Manager/fogger.c:143: if(value != duration){
	mov	a,(_DMX + 0x0001)
	mov	r7,a
	cjne	a,_tick_fogger_duration_65536_36,00628$
	sjmp	00153$
00628$:
;	../Fogger_Manager/fogger.c:144: duration = value;
	mov	_tick_fogger_duration_65536_36,r7
;	../Fogger_Manager/fogger.c:145: Timer = duration;
	mov	_Timer,_tick_fogger_duration_65536_36
;	../Fogger_Manager/fogger.c:146: Interval_Or_Duration = DURATION;
	mov	_Interval_Or_Duration,#0xff
00153$:
;	../Fogger_Manager/fogger.c:149: value = get_dmx_value(DMX_M11_INTERVAL_INDEX);
;	../Fogger_Manager/fogger.c:151: if(value != interval){
	mov	a,(_DMX + 0x0002)
	mov	r7,a
	cjne	a,_tick_fogger_interval_65536_36,00629$
	sjmp	00155$
00629$:
;	../Fogger_Manager/fogger.c:152: interval = value;
	mov	_tick_fogger_interval_65536_36,r7
;	../Fogger_Manager/fogger.c:153: Playing = RESET;
	mov	_Playing,#0x02
00155$:
;	../Fogger_Manager/fogger.c:156: value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);
;	../Fogger_Manager/fogger.c:158: if(value > DMX_HEATER_OFF){
	mov	a,(_DMX + 0x000a)
	add	a,#0xff - 0x80
	jc	00630$
	ljmp	00238$
00630$:
;	../Fogger_Manager/fogger.c:159: power_heater(HEATER_DISABLE);
	mov	dpl,#0x01
	lcall	_power_heater
	ljmp	00238$
00225$:
;	../Fogger_Manager/fogger.c:166: value = get_dmx_value(DMX_M1_FOG_INDEX);
;	../Fogger_Manager/fogger.c:169: if(value <= DMX_FOG_OFF){
	mov	a,_DMX
	mov	r7,a
	add	a,#0xff - 0x14
	jc	00222$
;	../Fogger_Manager/fogger.c:170: Playing = PAUSE;
	mov	_Playing,#0x00
	ljmp	00238$
00222$:
;	../Fogger_Manager/fogger.c:172: } else if(value <= DMX_FOG_3_13){
	mov	a,r7
	add	a,#0xff - 0x28
	jc	00219$
;	../Fogger_Manager/fogger.c:173: if(duration != 3 || interval != 13){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00158$
	mov	a,#0x0d
	cjne	a,_tick_fogger_interval_65536_36,00635$
	ljmp	00238$
00635$:
00158$:
;	../Fogger_Manager/fogger.c:174: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:175: interval = 13;
	mov	_tick_fogger_interval_65536_36,#0x0d
;	../Fogger_Manager/fogger.c:176: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00219$:
;	../Fogger_Manager/fogger.c:178: } else if(value <= DMX_FOG_3_21){
	mov	a,r7
	add	a,#0xff - 0x3c
	jc	00216$
;	../Fogger_Manager/fogger.c:179: if(duration != 3 || interval != 21){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00161$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00639$
	ljmp	00238$
00639$:
00161$:
;	../Fogger_Manager/fogger.c:180: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:181: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:182: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00216$:
;	../Fogger_Manager/fogger.c:184: } else if(value <= DMX_FOG_3_34){
	mov	a,r7
	add	a,#0xff - 0x50
	jc	00213$
;	../Fogger_Manager/fogger.c:185: if(duration != 3 || interval != 34){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00164$
	mov	a,#0x22
	cjne	a,_tick_fogger_interval_65536_36,00643$
	ljmp	00238$
00643$:
00164$:
;	../Fogger_Manager/fogger.c:186: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:187: interval = 34;
	mov	_tick_fogger_interval_65536_36,#0x22
;	../Fogger_Manager/fogger.c:188: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00213$:
;	../Fogger_Manager/fogger.c:190: } else if(value <= DMX_FOG_3_55){
	mov	a,r7
	add	a,#0xff - 0x64
	jc	00210$
;	../Fogger_Manager/fogger.c:191: if(duration != 3 || interval != 55){
	mov	a,#0x03
	cjne	a,_tick_fogger_duration_65536_36,00167$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00647$
	ljmp	00238$
00647$:
00167$:
;	../Fogger_Manager/fogger.c:192: duration = 3;
	mov	_tick_fogger_duration_65536_36,#0x03
;	../Fogger_Manager/fogger.c:193: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:194: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00210$:
;	../Fogger_Manager/fogger.c:196: } else if(value <= DMX_FOG_8_21){
	mov	a,r7
	add	a,#0xff - 0x78
	jc	00207$
;	../Fogger_Manager/fogger.c:197: if(duration != 8 || interval != 21){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00170$
	mov	a,#0x15
	cjne	a,_tick_fogger_interval_65536_36,00651$
	ljmp	00238$
00651$:
00170$:
;	../Fogger_Manager/fogger.c:198: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:199: interval = 21;
	mov	_tick_fogger_interval_65536_36,#0x15
;	../Fogger_Manager/fogger.c:200: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00207$:
;	../Fogger_Manager/fogger.c:202: } else if(value <= DMX_FOG_8_34){
	mov	a,r7
	add	a,#0xff - 0x8c
	jc	00204$
;	../Fogger_Manager/fogger.c:203: if(duration != 8 || interval != 34){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00173$
	mov	a,#0x22
	cjne	a,_tick_fogger_interval_65536_36,00655$
	ljmp	00238$
00655$:
00173$:
;	../Fogger_Manager/fogger.c:204: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:205: interval = 34;
	mov	_tick_fogger_interval_65536_36,#0x22
;	../Fogger_Manager/fogger.c:206: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00204$:
;	../Fogger_Manager/fogger.c:208: } else if(value <= DMX_FOG_8_55){
	mov	a,r7
	add	a,#0xff - 0xa0
	jc	00201$
;	../Fogger_Manager/fogger.c:209: if(duration != 8 || interval != 55){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00176$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00659$
	ljmp	00238$
00659$:
00176$:
;	../Fogger_Manager/fogger.c:210: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:211: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:212: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00201$:
;	../Fogger_Manager/fogger.c:214: } else if(value <= DMX_FOG_8_89){
	mov	a,r7
	add	a,#0xff - 0xb4
	jc	00198$
;	../Fogger_Manager/fogger.c:215: if(duration != 8 || interval != 89){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00179$
	mov	a,#0x59
	cjne	a,_tick_fogger_interval_65536_36,00663$
	ljmp	00238$
00663$:
00179$:
;	../Fogger_Manager/fogger.c:216: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:217: interval = 89;
	mov	_tick_fogger_interval_65536_36,#0x59
;	../Fogger_Manager/fogger.c:218: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00198$:
;	../Fogger_Manager/fogger.c:220: } else if(value <= DMX_FOG_8_144){
	mov	a,r7
	add	a,#0xff - 0xc8
	jc	00195$
;	../Fogger_Manager/fogger.c:221: if(duration != 8 || interval != 144){
	mov	a,#0x08
	cjne	a,_tick_fogger_duration_65536_36,00182$
	mov	a,#0x90
	cjne	a,_tick_fogger_interval_65536_36,00667$
	ljmp	00238$
00667$:
00182$:
;	../Fogger_Manager/fogger.c:222: duration = 8;
	mov	_tick_fogger_duration_65536_36,#0x08
;	../Fogger_Manager/fogger.c:223: interval = 144;
	mov	_tick_fogger_interval_65536_36,#0x90
;	../Fogger_Manager/fogger.c:224: Playing = RESET;
	mov	_Playing,#0x02
	ljmp	00238$
00195$:
;	../Fogger_Manager/fogger.c:226: } else if(value <= DMX_FOG_21_55){
	mov	a,r7
	add	a,#0xff - 0xdc
	jc	00192$
;	../Fogger_Manager/fogger.c:227: if(duration != 21 || interval != 55){
	mov	a,#0x15
	cjne	a,_tick_fogger_duration_65536_36,00185$
	mov	a,#0x37
	cjne	a,_tick_fogger_interval_65536_36,00671$
	sjmp	00238$
00671$:
00185$:
;	../Fogger_Manager/fogger.c:228: duration = 21;
	mov	_tick_fogger_duration_65536_36,#0x15
;	../Fogger_Manager/fogger.c:229: interval = 55;
	mov	_tick_fogger_interval_65536_36,#0x37
;	../Fogger_Manager/fogger.c:230: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00238$
00192$:
;	../Fogger_Manager/fogger.c:233: if(duration != 0xFF || interval != 0){
	mov	a,#0xff
	cjne	a,_tick_fogger_duration_65536_36,00188$
	mov	a,_tick_fogger_interval_65536_36
	jz	00238$
00188$:
;	../Fogger_Manager/fogger.c:234: duration = 0xFF;
	mov	_tick_fogger_duration_65536_36,#0xff
;	../Fogger_Manager/fogger.c:235: interval = 0;
	mov	_tick_fogger_interval_65536_36,#0x00
;	../Fogger_Manager/fogger.c:236: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00238$
00228$:
;	../Fogger_Manager/fogger.c:242: Playing = RESET;
	mov	_Playing,#0x02
	sjmp	00238$
00237$:
;	../Fogger_Manager/fogger.c:245: value = get_runtime_data(FOG_POWER_INDEX);
	mov	dpl,#0x00
	lcall	_get_runtime_data
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:249: value = 0x01 << (2 - value);
	mov	a,#0x02
	clr	c
	subb	a,r7
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00677$
00675$:
	add	a,acc
00677$:
	djnz	b,00675$
;	../Fogger_Manager/fogger.c:251: if(value != power){
	mov	r7,a
	cjne	a,_tick_fogger_power_65536_36,00678$
	sjmp	00231$
00678$:
;	../Fogger_Manager/fogger.c:252: power = value;
	mov	_tick_fogger_power_65536_36,r7
;	../Fogger_Manager/fogger.c:253: Playing = RESET;
	mov	_Playing,#0x02
00231$:
;	../Fogger_Manager/fogger.c:256: value = get_runtime_data(FOG_DURATION_INDEX);
	mov	dpl,#0x01
	lcall	_get_runtime_data
;	../Fogger_Manager/fogger.c:258: if(value != duration){
	mov	a,dpl
	mov	r7,a
	cjne	a,_tick_fogger_duration_65536_36,00679$
	sjmp	00233$
00679$:
;	../Fogger_Manager/fogger.c:259: duration = value;
	mov	_tick_fogger_duration_65536_36,r7
;	../Fogger_Manager/fogger.c:260: Playing = RESET;
	mov	_Playing,#0x02
00233$:
;	../Fogger_Manager/fogger.c:263: value = get_runtime_data(FOG_INTERVAL_INDEX);
	mov	dpl,#0x02
	lcall	_get_runtime_data
;	../Fogger_Manager/fogger.c:265: if(value != interval){
	mov	a,dpl
	mov	r7,a
	cjne	a,_tick_fogger_interval_65536_36,00680$
	sjmp	00238$
00680$:
;	../Fogger_Manager/fogger.c:266: interval = value;
	mov	_tick_fogger_interval_65536_36,r7
;	../Fogger_Manager/fogger.c:267: Playing = RESET;
	mov	_Playing,#0x02
00238$:
;	../Fogger_Manager/fogger.c:272: if(Playing == RESET){
	mov	a,#0x02
	cjne	a,_Playing,00240$
;	../Fogger_Manager/fogger.c:273: Playing = PAUSE;
	mov	_Playing,#0x00
;	../Fogger_Manager/fogger.c:274: Timer = interval;
	mov	_Timer,_tick_fogger_interval_65536_36
;	../Fogger_Manager/fogger.c:275: Interval_Or_Duration = INTERVAL;
	mov	_Interval_Or_Duration,#0x00
00240$:
;	../Fogger_Manager/fogger.c:279: if(Playing){
	mov	a,_Playing
	jnz	00683$
	ljmp	00266$
00683$:
;	../Fogger_Manager/fogger.c:280: tock++;
	inc	_tick_fogger_tock_65536_36
;	../Fogger_Manager/fogger.c:282: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00260$
;	../Fogger_Manager/fogger.c:283: && ((duration && !interval) || (duration > DMX_FOG_DURATION_CONSTANT))){
	mov	a,_tick_fogger_duration_65536_36
	jz	00263$
	mov	a,_tick_fogger_interval_65536_36
	jz	00259$
00263$:
	mov	a,_tick_fogger_duration_65536_36
	add	a,#0xff - 0xe6
	jnc	00260$
00259$:
;	../Fogger_Manager/fogger.c:285: if(!(tock % power)){
	mov	b,_tick_fogger_power_65536_36
	mov	a,_tick_fogger_tock_65536_36
	div	ab
	mov	a,b
	jnz	00242$
;	../Fogger_Manager/fogger.c:286: power_pump(PUMP_ON);
	mov	dpl,#0x01
	lcall	_power_pump
	ljmp	00270$
00242$:
;	../Fogger_Manager/fogger.c:288: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	lcall	_power_pump
	ljmp	00270$
00260$:
;	../Fogger_Manager/fogger.c:291: } else if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
	mov	dpl,#0x10
	lcall	_get_runtime_data
	mov	a,dpl
	jnz	00256$
;	../Fogger_Manager/fogger.c:292: && (!duration)){
	mov	a,_tick_fogger_duration_65536_36
;	../Fogger_Manager/fogger.c:293: power_pump(PUMP_OFF);
	jnz	00256$
	mov	dpl,a
	lcall	_power_pump
	ljmp	00270$
00256$:
;	../Fogger_Manager/fogger.c:296: if(!(tock % 8)){
	mov	r6,_tick_fogger_tock_65536_36
	mov	r7,#0x00
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00245$
;	../Fogger_Manager/fogger.c:297: Timer--;
	dec	_Timer
00245$:
;	../Fogger_Manager/fogger.c:300: if(Timer == 0x00){
	mov	a,_Timer
	jnz	00253$
;	../Fogger_Manager/fogger.c:301: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
	mov	a,_Interval_Or_Duration
	jnz	00272$
	mov	r6,#0x01
	mov	r7,a
	sjmp	00273$
00272$:
	mov	r6,#0x00
	mov	r7,#0x00
00273$:
	mov	dpl,r6
	lcall	_power_pump
;	../Fogger_Manager/fogger.c:302: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
	mov	a,_Interval_Or_Duration
	jnz	00274$
	mov	r7,_tick_fogger_duration_65536_36
	sjmp	00275$
00274$:
	mov	r7,_tick_fogger_interval_65536_36
00275$:
	mov	_Timer,r7
;	../Fogger_Manager/fogger.c:303: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
	mov	a,_Interval_Or_Duration
	jnz	00276$
	mov	r6,#0xff
	mov	r7,a
	sjmp	00277$
00276$:
	mov	r6,#0x00
	mov	r7,#0x00
00277$:
	mov	_Interval_Or_Duration,r6
	sjmp	00270$
00253$:
;	../Fogger_Manager/fogger.c:305: if(Interval_Or_Duration == INTERVAL){
	mov	a,_Interval_Or_Duration
;	../Fogger_Manager/fogger.c:306: power_pump(PUMP_OFF);
	jnz	00250$
	mov	dpl,a
	lcall	_power_pump
	sjmp	00270$
00250$:
;	../Fogger_Manager/fogger.c:308: if(!(tock % power)){
	mov	b,_tick_fogger_power_65536_36
	mov	a,_tick_fogger_tock_65536_36
	div	ab
	mov	a,b
	jnz	00247$
;	../Fogger_Manager/fogger.c:309: power_pump(PUMP_ON);
	mov	dpl,#0x01
	lcall	_power_pump
	sjmp	00270$
00247$:
;	../Fogger_Manager/fogger.c:311: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	lcall	_power_pump
	sjmp	00270$
00266$:
;	../Fogger_Manager/fogger.c:319: power_pump(PUMP_OFF);
	mov	dpl,#0x00
	lcall	_power_pump
00270$:
;	../Fogger_Manager/fogger.c:322: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'power_pump'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:324: void power_pump(uint8_t action){
;	-----------------------------------------
;	 function power_pump
;	-----------------------------------------
_power_pump:
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:325: switch (action)
	cjne	r7,#0x01,00139$
	sjmp	00101$
00139$:
	cjne	r7,#0x02,00140$
	sjmp	00106$
00140$:
;	../Fogger_Manager/fogger.c:327: case PUMP_ON:
	cjne	r7,#0x03,00111$
	sjmp	00110$
00101$:
;	../Fogger_Manager/fogger.c:328: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
	mov	a,_Fluid_Level
	jz	00103$
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00103$
	cjne	r7,#0x00,00103$
;	../Fogger_Manager/fogger.c:329: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:330: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#0xfd
	ret
00103$:
;	../Fogger_Manager/fogger.c:332: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:334: break;
;	../Fogger_Manager/fogger.c:335: case PUMP_OVERRIDE:
	ret
00106$:
;	../Fogger_Manager/fogger.c:336: if(get_heated() == HEATED){
	mov	r6,_Heat_Flag
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00108$
	cjne	r7,#0x00,00108$
;	../Fogger_Manager/fogger.c:337: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:338: Heat_Flag &= ~HOT_FLAG;
	anl	_Heat_Flag,#0xfd
	ret
00108$:
;	../Fogger_Manager/fogger.c:340: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:342: break;
;	../Fogger_Manager/fogger.c:343: case PUMP_MASTER_OVERRIDE:
	ret
00110$:
;	../Fogger_Manager/fogger.c:344: P2_5 = 0;
;	assignBit
	clr	_P2_5
;	../Fogger_Manager/fogger.c:345: break;
;	../Fogger_Manager/fogger.c:346: default:
	ret
00111$:
;	../Fogger_Manager/fogger.c:347: P2_5 = 1;
;	assignBit
	setb	_P2_5
;	../Fogger_Manager/fogger.c:349: }
;	../Fogger_Manager/fogger.c:350: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'power_heater'
;------------------------------------------------------------
;action                    Allocated to registers r7 
;------------------------------------------------------------
;	../Fogger_Manager/fogger.c:352: void power_heater(uint8_t action){
;	-----------------------------------------
;	 function power_heater
;	-----------------------------------------
_power_heater:
	mov	r7,dpl
;	../Fogger_Manager/fogger.c:353: switch (action)
	cjne	r7,#0x01,00102$
;	../Fogger_Manager/fogger.c:356: Heat_Flag |= HEAT_DISABLE_FLAG;
	mov	r6,_Heat_Flag
	orl	ar6,#0x10
	mov	_Heat_Flag,r6
;	../Fogger_Manager/fogger.c:357: break;
;	../Fogger_Manager/fogger.c:358: default:
	ret
00102$:
;	../Fogger_Manager/fogger.c:359: Heat_Flag &= ~HEAT_DISABLE_FLAG;
	anl	_Heat_Flag,#0xef
;	../Fogger_Manager/fogger.c:361: }
;	../Fogger_Manager/fogger.c:362: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
