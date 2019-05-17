                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fogger
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_ui_state
                                     12 	.globl _get_adc_value
                                     13 	.globl _get_runtime_data
                                     14 	.globl _CPRL2
                                     15 	.globl _CT2
                                     16 	.globl _TR2
                                     17 	.globl _EXEN2
                                     18 	.globl _TCLK
                                     19 	.globl _RCLK
                                     20 	.globl _REN
                                     21 	.globl _SM2
                                     22 	.globl _SM1
                                     23 	.globl _SM0
                                     24 	.globl _RCK
                                     25 	.globl _SER
                                     26 	.globl _SCK
                                     27 	.globl _RI
                                     28 	.globl _ES
                                     29 	.globl _ET0
                                     30 	.globl _EA
                                     31 	.globl _P3_7
                                     32 	.globl _P3_6
                                     33 	.globl _P3_5
                                     34 	.globl _P3_4
                                     35 	.globl _P3_3
                                     36 	.globl _P3_2
                                     37 	.globl _P3_1
                                     38 	.globl _P3_0
                                     39 	.globl _P2_7
                                     40 	.globl _P2_6
                                     41 	.globl _P2_5
                                     42 	.globl _P2_4
                                     43 	.globl _P2_3
                                     44 	.globl _P2_2
                                     45 	.globl _P2_1
                                     46 	.globl _P2_0
                                     47 	.globl _P1_7
                                     48 	.globl _P1_6
                                     49 	.globl _P1_5
                                     50 	.globl _P1_4
                                     51 	.globl _P1_3
                                     52 	.globl _P1_2
                                     53 	.globl _P1_1
                                     54 	.globl _P1_0
                                     55 	.globl _P0_7
                                     56 	.globl _P0_6
                                     57 	.globl _P0_5
                                     58 	.globl _P0_4
                                     59 	.globl _P0_3
                                     60 	.globl _P0_2
                                     61 	.globl _P0_1
                                     62 	.globl _P0_0
                                     63 	.globl _IAP_ADRH
                                     64 	.globl _IAP_ADRL
                                     65 	.globl _IAPEN
                                     66 	.globl _TH0
                                     67 	.globl _TL0
                                     68 	.globl _CKCON
                                     69 	.globl _TMOD
                                     70 	.globl _TCON
                                     71 	.globl _PWMDATA17L
                                     72 	.globl _PWMDATA17H
                                     73 	.globl _PWMDATA14L
                                     74 	.globl _PWMDATA14H
                                     75 	.globl _PWMDATA11L
                                     76 	.globl _PWMDATA11H
                                     77 	.globl _PWM_EA2
                                     78 	.globl _PWM_EA1
                                     79 	.globl _SBUF
                                     80 	.globl _TL3
                                     81 	.globl _TH3
                                     82 	.globl _T2CON
                                     83 	.globl _RCAP2H
                                     84 	.globl _RCAP2L
                                     85 	.globl _SCON
                                     86 	.globl _P1_OPT
                                     87 	.globl _ADCVAL2
                                     88 	.globl _ADCVAL1
                                     89 	.globl _ADCSEL
                                     90 	.globl _EXIF
                                     91 	.globl _EIE
                                     92 	.globl _IE
                                     93 	.globl _P3
                                     94 	.globl _P2
                                     95 	.globl _P1
                                     96 	.globl _P0
                                     97 	.globl _PCLKSEL
                                     98 	.globl _CHIPCON
                                     99 	.globl _Fluid_Level
                                    100 	.globl _Heat_Flag
                                    101 	.globl _Playing
                                    102 	.globl _Interval_Or_Duration
                                    103 	.globl _Timer
                                    104 	.globl _tick_fogger
                                    105 	.globl _power_pump
                                    106 	.globl _power_heater
                                    107 ;--------------------------------------------------------
                                    108 ; special function registers
                                    109 ;--------------------------------------------------------
                                    110 	.area RSEG    (ABS,DATA)
      000000                        111 	.org 0x0000
                           0000BF   112 _CHIPCON	=	0x00bf
                           0000B7   113 _PCLKSEL	=	0x00b7
                           000080   114 _P0	=	0x0080
                           000090   115 _P1	=	0x0090
                           0000A0   116 _P2	=	0x00a0
                           0000B0   117 _P3	=	0x00b0
                           0000A8   118 _IE	=	0x00a8
                           0000E8   119 _EIE	=	0x00e8
                           000091   120 _EXIF	=	0x0091
                           0000DA   121 _ADCSEL	=	0x00da
                           0000DB   122 _ADCVAL1	=	0x00db
                           0000DC   123 _ADCVAL2	=	0x00dc
                           0000D9   124 _P1_OPT	=	0x00d9
                           000098   125 _SCON	=	0x0098
                           0000CA   126 _RCAP2L	=	0x00ca
                           0000CB   127 _RCAP2H	=	0x00cb
                           0000C8   128 _T2CON	=	0x00c8
                           00009B   129 _TH3	=	0x009b
                           00009A   130 _TL3	=	0x009a
                           000099   131 _SBUF	=	0x0099
                           0000D3   132 _PWM_EA1	=	0x00d3
                           0000D4   133 _PWM_EA2	=	0x00d4
                           0000BD   134 _PWMDATA11H	=	0x00bd
                           0000BE   135 _PWMDATA11L	=	0x00be
                           0000B5   136 _PWMDATA14H	=	0x00b5
                           0000B6   137 _PWMDATA14L	=	0x00b6
                           0000AD   138 _PWMDATA17H	=	0x00ad
                           0000AE   139 _PWMDATA17L	=	0x00ae
                           000088   140 _TCON	=	0x0088
                           000089   141 _TMOD	=	0x0089
                           00008E   142 _CKCON	=	0x008e
                           00008A   143 _TL0	=	0x008a
                           00008C   144 _TH0	=	0x008c
                           0000E4   145 _IAPEN	=	0x00e4
                           0000E5   146 _IAP_ADRL	=	0x00e5
                           0000E6   147 _IAP_ADRH	=	0x00e6
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           0000A0   169 _P2_0	=	0x00a0
                           0000A1   170 _P2_1	=	0x00a1
                           0000A2   171 _P2_2	=	0x00a2
                           0000A3   172 _P2_3	=	0x00a3
                           0000A4   173 _P2_4	=	0x00a4
                           0000A5   174 _P2_5	=	0x00a5
                           0000A6   175 _P2_6	=	0x00a6
                           0000A7   176 _P2_7	=	0x00a7
                           0000B0   177 _P3_0	=	0x00b0
                           0000B1   178 _P3_1	=	0x00b1
                           0000B2   179 _P3_2	=	0x00b2
                           0000B3   180 _P3_3	=	0x00b3
                           0000B4   181 _P3_4	=	0x00b4
                           0000B5   182 _P3_5	=	0x00b5
                           0000B6   183 _P3_6	=	0x00b6
                           0000B7   184 _P3_7	=	0x00b7
                           0000AF   185 _EA	=	0x00af
                           0000A9   186 _ET0	=	0x00a9
                           0000AC   187 _ES	=	0x00ac
                           000098   188 _RI	=	0x0098
                           000093   189 _SCK	=	0x0093
                           000095   190 _SER	=	0x0095
                           000092   191 _RCK	=	0x0092
                           00009F   192 _SM0	=	0x009f
                           00009E   193 _SM1	=	0x009e
                           00009D   194 _SM2	=	0x009d
                           00009C   195 _REN	=	0x009c
                           0000CD   196 _RCLK	=	0x00cd
                           0000CC   197 _TCLK	=	0x00cc
                           0000CB   198 _EXEN2	=	0x00cb
                           0000CA   199 _TR2	=	0x00ca
                           0000C9   200 _CT2	=	0x00c9
                           0000C8   201 _CPRL2	=	0x00c8
                                    202 ;--------------------------------------------------------
                                    203 ; overlayable register banks
                                    204 ;--------------------------------------------------------
                                    205 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        206 	.ds 8
                                    207 ;--------------------------------------------------------
                                    208 ; internal ram data
                                    209 ;--------------------------------------------------------
                                    210 	.area DSEG    (DATA)
      000067                        211 _Timer::
      000067                        212 	.ds 1
      000068                        213 _Interval_Or_Duration::
      000068                        214 	.ds 1
      000069                        215 _Playing::
      000069                        216 	.ds 1
      00006A                        217 _Heat_Flag::
      00006A                        218 	.ds 1
      00006B                        219 _Fluid_Level::
      00006B                        220 	.ds 1
      00006C                        221 _tick_fogger_fullCount_65536_36:
      00006C                        222 	.ds 1
      00006D                        223 _tick_fogger_on_65536_36:
      00006D                        224 	.ds 1
      00006E                        225 _tick_fogger_duration_65536_36:
      00006E                        226 	.ds 1
      00006F                        227 _tick_fogger_interval_65536_36:
      00006F                        228 	.ds 1
      000070                        229 _tick_fogger_power_65536_36:
      000070                        230 	.ds 1
      000071                        231 _tick_fogger_tock_65536_36:
      000071                        232 	.ds 1
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 	.area	OSEG    (OVR,DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; indirectly addressable internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area ISEG    (DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; absolute internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area IABS    (ABS,DATA)
                                    246 	.area IABS    (ABS,DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; bit data
                                    249 ;--------------------------------------------------------
                                    250 	.area BSEG    (BIT)
                                    251 ;--------------------------------------------------------
                                    252 ; paged external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area PSEG    (PAG,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XSEG    (XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XABS    (ABS,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external initialized ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XISEG   (XDATA)
                                    267 	.area HOME    (CODE)
                                    268 	.area GSINIT0 (CODE)
                                    269 	.area GSINIT1 (CODE)
                                    270 	.area GSINIT2 (CODE)
                                    271 	.area GSINIT3 (CODE)
                                    272 	.area GSINIT4 (CODE)
                                    273 	.area GSINIT5 (CODE)
                                    274 	.area GSINIT  (CODE)
                                    275 	.area GSFINAL (CODE)
                                    276 	.area CSEG    (CODE)
                                    277 ;--------------------------------------------------------
                                    278 ; global & static initialisations
                                    279 ;--------------------------------------------------------
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 ;------------------------------------------------------------
                                    285 ;Allocation info for local variables in function 'tick_fogger'
                                    286 ;------------------------------------------------------------
                                    287 ;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
                                    288 ;on                        Allocated with name '_tick_fogger_on_65536_36'
                                    289 ;duration                  Allocated with name '_tick_fogger_duration_65536_36'
                                    290 ;interval                  Allocated with name '_tick_fogger_interval_65536_36'
                                    291 ;power                     Allocated with name '_tick_fogger_power_65536_36'
                                    292 ;tock                      Allocated with name '_tick_fogger_tock_65536_36'
                                    293 ;temperature               Allocated to registers r6 r7 
                                    294 ;value                     Allocated to registers r7 
                                    295 ;------------------------------------------------------------
                                    296 ;	../Fogger_Manager/fogger.c:20: static uint8_t fullCount = 0;
      0000FE 75 6C 00         [24]  297 	mov	_tick_fogger_fullCount_65536_36,#0x00
                                    298 ;	../Fogger_Manager/fogger.c:21: static uint8_t on = 0x00; //to toggle lights
      000101 75 6D 00         [24]  299 	mov	_tick_fogger_on_65536_36,#0x00
                                    300 ;	../Fogger_Manager/fogger.c:28: static uint8_t tock = 0;
      000104 75 71 00         [24]  301 	mov	_tick_fogger_tock_65536_36,#0x00
                                    302 ;	../Fogger_Manager/fogger.c:14: uint8_t Playing = PAUSE;
      000107 75 69 00         [24]  303 	mov	_Playing,#0x00
                                    304 ;	../Fogger_Manager/fogger.c:15: uint8_t Heat_Flag = COLD_FLAG;
      00010A 75 6A 04         [24]  305 	mov	_Heat_Flag,#0x04
                                    306 ;	../Fogger_Manager/fogger.c:16: uint8_t Fluid_Level = TANK_FULL;
      00010D 75 6B 01         [24]  307 	mov	_Fluid_Level,#0x01
                                    308 ;--------------------------------------------------------
                                    309 ; Home
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area HOME    (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; code
                                    315 ;--------------------------------------------------------
                                    316 	.area CSEG    (CODE)
                                    317 ;------------------------------------------------------------
                                    318 ;Allocation info for local variables in function 'tick_fogger'
                                    319 ;------------------------------------------------------------
                                    320 ;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
                                    321 ;on                        Allocated with name '_tick_fogger_on_65536_36'
                                    322 ;duration                  Allocated with name '_tick_fogger_duration_65536_36'
                                    323 ;interval                  Allocated with name '_tick_fogger_interval_65536_36'
                                    324 ;power                     Allocated with name '_tick_fogger_power_65536_36'
                                    325 ;tock                      Allocated with name '_tick_fogger_tock_65536_36'
                                    326 ;temperature               Allocated to registers r6 r7 
                                    327 ;value                     Allocated to registers r7 
                                    328 ;------------------------------------------------------------
                                    329 ;	../Fogger_Manager/fogger.c:18: void tick_fogger(){
                                    330 ;	-----------------------------------------
                                    331 ;	 function tick_fogger
                                    332 ;	-----------------------------------------
      002884                        333 _tick_fogger:
                           000007   334 	ar7 = 0x07
                           000006   335 	ar6 = 0x06
                           000005   336 	ar5 = 0x05
                           000004   337 	ar4 = 0x04
                           000003   338 	ar3 = 0x03
                           000002   339 	ar2 = 0x02
                           000001   340 	ar1 = 0x01
                           000000   341 	ar0 = 0x00
                                    342 ;	../Fogger_Manager/fogger.c:34: temperature = get_adc_value(ADC_TEMPERATURE);
      002884 75 82 00         [24]  343 	mov	dpl,#0x00
      002887 12 04 54         [24]  344 	lcall	_get_adc_value
      00288A AE 82            [24]  345 	mov	r6,dpl
      00288C AF 83            [24]  346 	mov	r7,dph
                                    347 ;	../Fogger_Manager/fogger.c:36: if(temperature < HEAT_LOW){ /* Turn on heater full blast */
      00288E C3               [12]  348 	clr	c
      00288F EE               [12]  349 	mov	a,r6
      002890 94 A0            [12]  350 	subb	a,#0xa0
      002892 EF               [12]  351 	mov	a,r7
      002893 94 00            [12]  352 	subb	a,#0x00
      002895 50 05            [24]  353 	jnc	00107$
                                    354 ;	../Fogger_Manager/fogger.c:37: Heat_Flag = COLD_FLAG;
      002897 75 6A 04         [24]  355 	mov	_Heat_Flag,#0x04
      00289A 80 1E            [24]  356 	sjmp	00108$
      00289C                        357 00107$:
                                    358 ;	../Fogger_Manager/fogger.c:38: } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
      00289C C3               [12]  359 	clr	c
      00289D 74 B9            [12]  360 	mov	a,#0xb9
      00289F 9E               [12]  361 	subb	a,r6
      0028A0 E4               [12]  362 	clr	a
      0028A1 9F               [12]  363 	subb	a,r7
      0028A2 50 05            [24]  364 	jnc	00104$
                                    365 ;	../Fogger_Manager/fogger.c:40: Heat_Flag |= HEATED;
      0028A4 75 6A 82         [24]  366 	mov	_Heat_Flag,#0x82
      0028A7 80 11            [24]  367 	sjmp	00108$
      0028A9                        368 00104$:
                                    369 ;	../Fogger_Manager/fogger.c:41: } else if(temperature > HEAT_OK){ /* Set Heated */
      0028A9 C3               [12]  370 	clr	c
      0028AA 74 AF            [12]  371 	mov	a,#0xaf
      0028AC 9E               [12]  372 	subb	a,r6
      0028AD E4               [12]  373 	clr	a
      0028AE 9F               [12]  374 	subb	a,r7
      0028AF 50 09            [24]  375 	jnc	00108$
                                    376 ;	../Fogger_Manager/fogger.c:42: Heat_Flag |= HEATED;
      0028B1 AE 6A            [24]  377 	mov	r6,_Heat_Flag
      0028B3 7F 00            [12]  378 	mov	r7,#0x00
      0028B5 43 06 80         [24]  379 	orl	ar6,#0x80
      0028B8 8E 6A            [24]  380 	mov	_Heat_Flag,r6
      0028BA                        381 00108$:
                                    382 ;	../Fogger_Manager/fogger.c:46: if(get_ui_state() != WELCOME_STATE){
      0028BA 12 13 BE         [24]  383 	lcall	_get_ui_state
      0028BD AF 82            [24]  384 	mov	r7,dpl
      0028BF BF 45 02         [24]  385 	cjne	r7,#0x45,00603$
      0028C2 80 04            [24]  386 	sjmp	00113$
      0028C4                        387 00603$:
                                    388 ;	../Fogger_Manager/fogger.c:48: P3_4 = 1;
                                    389 ;	assignBit
      0028C4 D2 B4            [12]  390 	setb	_P3_4
                                    391 ;	../Fogger_Manager/fogger.c:49: P3_3 = 1;
                                    392 ;	assignBit
      0028C6 D2 B3            [12]  393 	setb	_P3_3
                                    394 ;	../Fogger_Manager/fogger.c:52: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
      0028C8                        395 00113$:
                                    396 ;	../Fogger_Manager/fogger.c:58: if(!P2_6){ // no fluid
      0028C8 20 A6 18         [24]  397 	jb	_P2_6,00125$
                                    398 ;	../Fogger_Manager/fogger.c:59: if(Fluid_Level == TANK_FULL){
      0028CB 74 01            [12]  399 	mov	a,#0x01
      0028CD B5 6B 0E         [24]  400 	cjne	a,_Fluid_Level,00117$
                                    401 ;	../Fogger_Manager/fogger.c:60: if(fullCount++ > REFILL_FLUID_COUNT){
      0028D0 AF 6C            [24]  402 	mov	r7,_tick_fogger_fullCount_65536_36
      0028D2 05 6C            [12]  403 	inc	_tick_fogger_fullCount_65536_36
      0028D4 EF               [12]  404 	mov	a,r7
      0028D5 24 DD            [12]  405 	add	a,#0xff - 0x22
      0028D7 50 1F            [24]  406 	jnc	00126$
                                    407 ;	../Fogger_Manager/fogger.c:61: Fluid_Level = TANK_EMPTY;
      0028D9 75 6B 00         [24]  408 	mov	_Fluid_Level,#0x00
      0028DC 80 1A            [24]  409 	sjmp	00126$
      0028DE                        410 00117$:
                                    411 ;	../Fogger_Manager/fogger.c:64: fullCount = 0;
      0028DE 75 6C 00         [24]  412 	mov	_tick_fogger_fullCount_65536_36,#0x00
      0028E1 80 15            [24]  413 	sjmp	00126$
      0028E3                        414 00125$:
                                    415 ;	../Fogger_Manager/fogger.c:67: if(Fluid_Level == TANK_EMPTY){
      0028E3 E5 6B            [12]  416 	mov	a,_Fluid_Level
      0028E5 70 0E            [24]  417 	jnz	00122$
                                    418 ;	../Fogger_Manager/fogger.c:68: if(fullCount++ > REFILL_FLUID_COUNT){
      0028E7 AF 6C            [24]  419 	mov	r7,_tick_fogger_fullCount_65536_36
      0028E9 05 6C            [12]  420 	inc	_tick_fogger_fullCount_65536_36
      0028EB EF               [12]  421 	mov	a,r7
      0028EC 24 DD            [12]  422 	add	a,#0xff - 0x22
      0028EE 50 08            [24]  423 	jnc	00126$
                                    424 ;	../Fogger_Manager/fogger.c:69: Fluid_Level = TANK_FULL;
      0028F0 75 6B 01         [24]  425 	mov	_Fluid_Level,#0x01
      0028F3 80 03            [24]  426 	sjmp	00126$
      0028F5                        427 00122$:
                                    428 ;	../Fogger_Manager/fogger.c:72: fullCount = 0;
      0028F5 75 6C 00         [24]  429 	mov	_tick_fogger_fullCount_65536_36,#0x00
      0028F8                        430 00126$:
                                    431 ;	../Fogger_Manager/fogger.c:77: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
      0028F8 75 82 0F         [24]  432 	mov	dpl,#0x0f
      0028FB 12 27 13         [24]  433 	lcall	_get_runtime_data
      0028FE E5 82            [12]  434 	mov	a,dpl
      002900 70 28            [24]  435 	jnz	00137$
                                    436 ;	../Fogger_Manager/fogger.c:78: if(Fluid_Level == TANK_EMPTY){ //flash on empty
      002902 E5 6B            [12]  437 	mov	a,_Fluid_Level
      002904 70 13            [24]  438 	jnz	00134$
                                    439 ;	../Fogger_Manager/fogger.c:79: on = ~on;
      002906 E5 6D            [12]  440 	mov	a,_tick_fogger_on_65536_36
      002908 F4               [12]  441 	cpl	a
                                    442 ;	../Fogger_Manager/fogger.c:81: if(on){
      002909 F5 6D            [12]  443 	mov	_tick_fogger_on_65536_36,a
      00290B 60 06            [24]  444 	jz	00128$
                                    445 ;	../Fogger_Manager/fogger.c:82: P1_0 = 0;
                                    446 ;	assignBit
      00290D C2 90            [12]  447 	clr	_P1_0
                                    448 ;	../Fogger_Manager/fogger.c:83: P2_0 = 1;
                                    449 ;	assignBit
      00290F D2 A0            [12]  450 	setb	_P2_0
      002911 80 1B            [24]  451 	sjmp	00138$
      002913                        452 00128$:
                                    453 ;	../Fogger_Manager/fogger.c:85: P1_0 = 1;
                                    454 ;	assignBit
      002913 D2 90            [12]  455 	setb	_P1_0
                                    456 ;	../Fogger_Manager/fogger.c:86: P2_0 = 1;
                                    457 ;	assignBit
      002915 D2 A0            [12]  458 	setb	_P2_0
      002917 80 15            [24]  459 	sjmp	00138$
      002919                        460 00134$:
                                    461 ;	../Fogger_Manager/fogger.c:89: if(get_heated()){ //heated not heated
      002919 E5 6A            [12]  462 	mov	a,_Heat_Flag
      00291B 30 E7 06         [24]  463 	jnb	acc.7,00131$
                                    464 ;	../Fogger_Manager/fogger.c:90: P1_0 = 0;
                                    465 ;	assignBit
      00291E C2 90            [12]  466 	clr	_P1_0
                                    467 ;	../Fogger_Manager/fogger.c:91: P2_0 = 1;
                                    468 ;	assignBit
      002920 D2 A0            [12]  469 	setb	_P2_0
      002922 80 0A            [24]  470 	sjmp	00138$
      002924                        471 00131$:
                                    472 ;	../Fogger_Manager/fogger.c:93: P1_0 = 1;
                                    473 ;	assignBit
      002924 D2 90            [12]  474 	setb	_P1_0
                                    475 ;	../Fogger_Manager/fogger.c:94: P2_0 = 0;
                                    476 ;	assignBit
      002926 C2 A0            [12]  477 	clr	_P2_0
      002928 80 04            [24]  478 	sjmp	00138$
      00292A                        479 00137$:
                                    480 ;	../Fogger_Manager/fogger.c:98: P1_0 = 1;
                                    481 ;	assignBit
      00292A D2 90            [12]  482 	setb	_P1_0
                                    483 ;	../Fogger_Manager/fogger.c:99: P2_0 = 1;
                                    484 ;	assignBit
      00292C D2 A0            [12]  485 	setb	_P2_0
      00292E                        486 00138$:
                                    487 ;	../Fogger_Manager/fogger.c:104: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00292E 75 82 10         [24]  488 	mov	dpl,#0x10
      002931 12 27 13         [24]  489 	lcall	_get_runtime_data
      002934 E5 82            [12]  490 	mov	a,dpl
      002936 60 03            [24]  491 	jz	00614$
      002938 02 2B 2B         [24]  492 	ljmp	00245$
      00293B                        493 00614$:
                                    494 ;	../Fogger_Manager/fogger.c:105: if(has_dmx()){
      00293B E5 36            [12]  495 	mov	a,_Has_DMX
      00293D 70 03            [24]  496 	jnz	00615$
      00293F 02 2B 26         [24]  497 	ljmp	00236$
      002942                        498 00615$:
                                    499 ;	../Fogger_Manager/fogger.c:106: Playing = PLAY;
      002942 75 69 01         [24]  500 	mov	_Playing,#0x01
                                    501 ;	../Fogger_Manager/fogger.c:108: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_9)
      002945 75 82 0E         [24]  502 	mov	dpl,#0x0e
      002948 12 27 13         [24]  503 	lcall	_get_runtime_data
      00294B E5 82            [12]  504 	mov	a,dpl
      00294D 70 49            [24]  505 	jnz	00233$
                                    506 ;	../Fogger_Manager/fogger.c:110: value = get_dmx_value(DMX_M9_POWER_INDEX);
      00294F AF 2D            [24]  507 	mov	r7,_DMX
                                    508 ;	../Fogger_Manager/fogger.c:112: if(value < DMX_FOG_OFF){
      002951 BF 14 00         [24]  509 	cjne	r7,#0x14,00617$
      002954                        510 00617$:
      002954 50 05            [24]  511 	jnc	00146$
                                    512 ;	../Fogger_Manager/fogger.c:113: Playing = PAUSE;
      002956 75 69 00         [24]  513 	mov	_Playing,#0x00
      002959 80 14            [24]  514 	sjmp	00147$
      00295B                        515 00146$:
                                    516 ;	../Fogger_Manager/fogger.c:114: } else if(value < DMX_FOG_LOW){
      00295B BF 64 00         [24]  517 	cjne	r7,#0x64,00619$
      00295E                        518 00619$:
      00295E 50 04            [24]  519 	jnc	00143$
                                    520 ;	../Fogger_Manager/fogger.c:115: value = FOG_LO;
      002960 7F 04            [12]  521 	mov	r7,#0x04
      002962 80 0B            [24]  522 	sjmp	00147$
      002964                        523 00143$:
                                    524 ;	../Fogger_Manager/fogger.c:116: } else if(value < DMX_FOG_MEDIUM){
      002964 BF C8 00         [24]  525 	cjne	r7,#0xc8,00621$
      002967                        526 00621$:
      002967 50 04            [24]  527 	jnc	00140$
                                    528 ;	../Fogger_Manager/fogger.c:117: value = FOG_MED;
      002969 7F 02            [12]  529 	mov	r7,#0x02
      00296B 80 02            [24]  530 	sjmp	00147$
      00296D                        531 00140$:
                                    532 ;	../Fogger_Manager/fogger.c:119: value = FOG_HIGH;
      00296D 7F 01            [12]  533 	mov	r7,#0x01
      00296F                        534 00147$:
                                    535 ;	../Fogger_Manager/fogger.c:122: if(value != power){
      00296F EF               [12]  536 	mov	a,r7
      002970 B5 70 02         [24]  537 	cjne	a,_tick_fogger_power_65536_36,00623$
      002973 80 02            [24]  538 	sjmp	00149$
      002975                        539 00623$:
                                    540 ;	../Fogger_Manager/fogger.c:123: power = value;
      002975 8F 70            [24]  541 	mov	_tick_fogger_power_65536_36,r7
      002977                        542 00149$:
                                    543 ;	../Fogger_Manager/fogger.c:126: value = get_dmx_value(DMX_M9_DURATION_INDEX);
                                    544 ;	../Fogger_Manager/fogger.c:128: if(value != duration){
      002977 E5 2E            [12]  545 	mov	a,(_DMX + 0x0001)
      002979 FF               [12]  546 	mov	r7,a
      00297A B5 6E 02         [24]  547 	cjne	a,_tick_fogger_duration_65536_36,00624$
      00297D 80 08            [24]  548 	sjmp	00151$
      00297F                        549 00624$:
                                    550 ;	../Fogger_Manager/fogger.c:129: duration = value;
      00297F 8F 6E            [24]  551 	mov	_tick_fogger_duration_65536_36,r7
                                    552 ;	../Fogger_Manager/fogger.c:130: Timer = duration;
      002981 85 6E 67         [24]  553 	mov	_Timer,_tick_fogger_duration_65536_36
                                    554 ;	../Fogger_Manager/fogger.c:131: Interval_Or_Duration = DURATION;
      002984 75 68 FF         [24]  555 	mov	_Interval_Or_Duration,#0xff
      002987                        556 00151$:
                                    557 ;	../Fogger_Manager/fogger.c:134: value = get_dmx_value(DMX_M9_INTERVAL_INDEX);
                                    558 ;	../Fogger_Manager/fogger.c:136: if(value != interval){
      002987 E5 2F            [12]  559 	mov	a,(_DMX + 0x0002)
      002989 FF               [12]  560 	mov	r7,a
      00298A B5 6F 03         [24]  561 	cjne	a,_tick_fogger_interval_65536_36,00625$
      00298D 02 2B 71         [24]  562 	ljmp	00246$
      002990                        563 00625$:
                                    564 ;	../Fogger_Manager/fogger.c:137: interval = value;
      002990 8F 6F            [24]  565 	mov	_tick_fogger_interval_65536_36,r7
                                    566 ;	../Fogger_Manager/fogger.c:138: Playing = RESET;
      002992 75 69 02         [24]  567 	mov	_Playing,#0x02
      002995 02 2B 71         [24]  568 	ljmp	00246$
      002998                        569 00233$:
                                    570 ;	../Fogger_Manager/fogger.c:145: power = FOG_HIGH;
      002998 75 70 01         [24]  571 	mov	_tick_fogger_power_65536_36,#0x01
                                    572 ;	../Fogger_Manager/fogger.c:147: value = get_dmx_value(DMX_M1_FOG_INDEX);
      00299B AF 2D            [24]  573 	mov	r7,_DMX
                                    574 ;	../Fogger_Manager/fogger.c:150: if(value < DMX_FOG_OFF){
      00299D BF 14 00         [24]  575 	cjne	r7,#0x14,00626$
      0029A0                        576 00626$:
      0029A0 50 06            [24]  577 	jnc	00230$
                                    578 ;	../Fogger_Manager/fogger.c:151: Playing = PAUSE;
      0029A2 75 69 00         [24]  579 	mov	_Playing,#0x00
      0029A5 02 2B 71         [24]  580 	ljmp	00246$
      0029A8                        581 00230$:
                                    582 ;	../Fogger_Manager/fogger.c:153: } else if(value < DMX_FOG_3_8){
      0029A8 BF 28 00         [24]  583 	cjne	r7,#0x28,00628$
      0029AB                        584 00628$:
      0029AB 50 19            [24]  585 	jnc	00227$
                                    586 ;	../Fogger_Manager/fogger.c:154: if(duration != 3 || interval != 8){
      0029AD 74 03            [12]  587 	mov	a,#0x03
      0029AF B5 6E 08         [24]  588 	cjne	a,_tick_fogger_duration_65536_36,00154$
      0029B2 74 08            [12]  589 	mov	a,#0x08
      0029B4 B5 6F 03         [24]  590 	cjne	a,_tick_fogger_interval_65536_36,00632$
      0029B7 02 2B 71         [24]  591 	ljmp	00246$
      0029BA                        592 00632$:
      0029BA                        593 00154$:
                                    594 ;	../Fogger_Manager/fogger.c:155: duration = 3;
      0029BA 75 6E 03         [24]  595 	mov	_tick_fogger_duration_65536_36,#0x03
                                    596 ;	../Fogger_Manager/fogger.c:156: interval = 8;
      0029BD 75 6F 08         [24]  597 	mov	_tick_fogger_interval_65536_36,#0x08
                                    598 ;	../Fogger_Manager/fogger.c:157: Playing = RESET;
      0029C0 75 69 02         [24]  599 	mov	_Playing,#0x02
      0029C3 02 2B 71         [24]  600 	ljmp	00246$
      0029C6                        601 00227$:
                                    602 ;	../Fogger_Manager/fogger.c:159: } else if(value < DMX_FOG_3_13){
      0029C6 BF 3C 00         [24]  603 	cjne	r7,#0x3c,00633$
      0029C9                        604 00633$:
      0029C9 50 19            [24]  605 	jnc	00224$
                                    606 ;	../Fogger_Manager/fogger.c:160: if(duration != 3 || interval != 13){
      0029CB 74 03            [12]  607 	mov	a,#0x03
      0029CD B5 6E 08         [24]  608 	cjne	a,_tick_fogger_duration_65536_36,00157$
      0029D0 74 0D            [12]  609 	mov	a,#0x0d
      0029D2 B5 6F 03         [24]  610 	cjne	a,_tick_fogger_interval_65536_36,00637$
      0029D5 02 2B 71         [24]  611 	ljmp	00246$
      0029D8                        612 00637$:
      0029D8                        613 00157$:
                                    614 ;	../Fogger_Manager/fogger.c:161: duration = 3;
      0029D8 75 6E 03         [24]  615 	mov	_tick_fogger_duration_65536_36,#0x03
                                    616 ;	../Fogger_Manager/fogger.c:162: interval = 13;
      0029DB 75 6F 0D         [24]  617 	mov	_tick_fogger_interval_65536_36,#0x0d
                                    618 ;	../Fogger_Manager/fogger.c:163: Playing = RESET;
      0029DE 75 69 02         [24]  619 	mov	_Playing,#0x02
      0029E1 02 2B 71         [24]  620 	ljmp	00246$
      0029E4                        621 00224$:
                                    622 ;	../Fogger_Manager/fogger.c:165: } else if(value < DMX_FOG_3_21){
      0029E4 BF 50 00         [24]  623 	cjne	r7,#0x50,00638$
      0029E7                        624 00638$:
      0029E7 E4               [12]  625 	clr	a
      0029E8 33               [12]  626 	rlc	a
      0029E9 FE               [12]  627 	mov	r6,a
      0029EA 60 19            [24]  628 	jz	00221$
                                    629 ;	../Fogger_Manager/fogger.c:166: if(duration != 3 || interval != 21){
      0029EC 74 03            [12]  630 	mov	a,#0x03
      0029EE B5 6E 08         [24]  631 	cjne	a,_tick_fogger_duration_65536_36,00160$
      0029F1 74 15            [12]  632 	mov	a,#0x15
      0029F3 B5 6F 03         [24]  633 	cjne	a,_tick_fogger_interval_65536_36,00642$
      0029F6 02 2B 71         [24]  634 	ljmp	00246$
      0029F9                        635 00642$:
      0029F9                        636 00160$:
                                    637 ;	../Fogger_Manager/fogger.c:167: duration = 3;
      0029F9 75 6E 03         [24]  638 	mov	_tick_fogger_duration_65536_36,#0x03
                                    639 ;	../Fogger_Manager/fogger.c:168: interval = 21;
      0029FC 75 6F 15         [24]  640 	mov	_tick_fogger_interval_65536_36,#0x15
                                    641 ;	../Fogger_Manager/fogger.c:169: Playing = RESET;
      0029FF 75 69 02         [24]  642 	mov	_Playing,#0x02
      002A02 02 2B 71         [24]  643 	ljmp	00246$
      002A05                        644 00221$:
                                    645 ;	../Fogger_Manager/fogger.c:171: } else if(value < DMX_FOG_3_21){
      002A05 EE               [12]  646 	mov	a,r6
      002A06 60 19            [24]  647 	jz	00218$
                                    648 ;	../Fogger_Manager/fogger.c:172: if(duration != 3 || interval != 21){
      002A08 74 03            [12]  649 	mov	a,#0x03
      002A0A B5 6E 08         [24]  650 	cjne	a,_tick_fogger_duration_65536_36,00163$
      002A0D 74 15            [12]  651 	mov	a,#0x15
      002A0F B5 6F 03         [24]  652 	cjne	a,_tick_fogger_interval_65536_36,00646$
      002A12 02 2B 71         [24]  653 	ljmp	00246$
      002A15                        654 00646$:
      002A15                        655 00163$:
                                    656 ;	../Fogger_Manager/fogger.c:173: duration = 3;
      002A15 75 6E 03         [24]  657 	mov	_tick_fogger_duration_65536_36,#0x03
                                    658 ;	../Fogger_Manager/fogger.c:174: interval = 21;
      002A18 75 6F 15         [24]  659 	mov	_tick_fogger_interval_65536_36,#0x15
                                    660 ;	../Fogger_Manager/fogger.c:175: Playing = RESET;
      002A1B 75 69 02         [24]  661 	mov	_Playing,#0x02
      002A1E 02 2B 71         [24]  662 	ljmp	00246$
      002A21                        663 00218$:
                                    664 ;	../Fogger_Manager/fogger.c:177: } else if(value < DMX_FOG_3_34){
      002A21 BF 64 00         [24]  665 	cjne	r7,#0x64,00647$
      002A24                        666 00647$:
      002A24 50 19            [24]  667 	jnc	00215$
                                    668 ;	../Fogger_Manager/fogger.c:178: if(duration != 3 || interval != 34){
      002A26 74 03            [12]  669 	mov	a,#0x03
      002A28 B5 6E 08         [24]  670 	cjne	a,_tick_fogger_duration_65536_36,00166$
      002A2B 74 22            [12]  671 	mov	a,#0x22
      002A2D B5 6F 03         [24]  672 	cjne	a,_tick_fogger_interval_65536_36,00651$
      002A30 02 2B 71         [24]  673 	ljmp	00246$
      002A33                        674 00651$:
      002A33                        675 00166$:
                                    676 ;	../Fogger_Manager/fogger.c:179: duration = 3;
      002A33 75 6E 03         [24]  677 	mov	_tick_fogger_duration_65536_36,#0x03
                                    678 ;	../Fogger_Manager/fogger.c:180: interval = 34;
      002A36 75 6F 22         [24]  679 	mov	_tick_fogger_interval_65536_36,#0x22
                                    680 ;	../Fogger_Manager/fogger.c:181: Playing = RESET;
      002A39 75 69 02         [24]  681 	mov	_Playing,#0x02
      002A3C 02 2B 71         [24]  682 	ljmp	00246$
      002A3F                        683 00215$:
                                    684 ;	../Fogger_Manager/fogger.c:183: } else if(value < DMX_FOG_3_55){
      002A3F BF 78 00         [24]  685 	cjne	r7,#0x78,00652$
      002A42                        686 00652$:
      002A42 50 19            [24]  687 	jnc	00212$
                                    688 ;	../Fogger_Manager/fogger.c:184: if(duration != 3 || interval != 55){
      002A44 74 03            [12]  689 	mov	a,#0x03
      002A46 B5 6E 08         [24]  690 	cjne	a,_tick_fogger_duration_65536_36,00169$
      002A49 74 37            [12]  691 	mov	a,#0x37
      002A4B B5 6F 03         [24]  692 	cjne	a,_tick_fogger_interval_65536_36,00656$
      002A4E 02 2B 71         [24]  693 	ljmp	00246$
      002A51                        694 00656$:
      002A51                        695 00169$:
                                    696 ;	../Fogger_Manager/fogger.c:185: duration = 3;
      002A51 75 6E 03         [24]  697 	mov	_tick_fogger_duration_65536_36,#0x03
                                    698 ;	../Fogger_Manager/fogger.c:186: interval = 55;
      002A54 75 6F 37         [24]  699 	mov	_tick_fogger_interval_65536_36,#0x37
                                    700 ;	../Fogger_Manager/fogger.c:187: Playing = RESET;
      002A57 75 69 02         [24]  701 	mov	_Playing,#0x02
      002A5A 02 2B 71         [24]  702 	ljmp	00246$
      002A5D                        703 00212$:
                                    704 ;	../Fogger_Manager/fogger.c:189: } else if(value < DMX_FOG_8_21){
      002A5D BF 8C 00         [24]  705 	cjne	r7,#0x8c,00657$
      002A60                        706 00657$:
      002A60 50 19            [24]  707 	jnc	00209$
                                    708 ;	../Fogger_Manager/fogger.c:190: if(duration != 8 || interval != 21){
      002A62 74 08            [12]  709 	mov	a,#0x08
      002A64 B5 6E 08         [24]  710 	cjne	a,_tick_fogger_duration_65536_36,00172$
      002A67 74 15            [12]  711 	mov	a,#0x15
      002A69 B5 6F 03         [24]  712 	cjne	a,_tick_fogger_interval_65536_36,00661$
      002A6C 02 2B 71         [24]  713 	ljmp	00246$
      002A6F                        714 00661$:
      002A6F                        715 00172$:
                                    716 ;	../Fogger_Manager/fogger.c:191: duration = 8;
      002A6F 75 6E 08         [24]  717 	mov	_tick_fogger_duration_65536_36,#0x08
                                    718 ;	../Fogger_Manager/fogger.c:192: interval = 21;
      002A72 75 6F 15         [24]  719 	mov	_tick_fogger_interval_65536_36,#0x15
                                    720 ;	../Fogger_Manager/fogger.c:193: Playing = RESET;
      002A75 75 69 02         [24]  721 	mov	_Playing,#0x02
      002A78 02 2B 71         [24]  722 	ljmp	00246$
      002A7B                        723 00209$:
                                    724 ;	../Fogger_Manager/fogger.c:195: } else if(value < DMX_FOG_8_34){
      002A7B BF A0 00         [24]  725 	cjne	r7,#0xa0,00662$
      002A7E                        726 00662$:
      002A7E 50 19            [24]  727 	jnc	00206$
                                    728 ;	../Fogger_Manager/fogger.c:196: if(duration != 8 || interval != 34){
      002A80 74 08            [12]  729 	mov	a,#0x08
      002A82 B5 6E 08         [24]  730 	cjne	a,_tick_fogger_duration_65536_36,00175$
      002A85 74 22            [12]  731 	mov	a,#0x22
      002A87 B5 6F 03         [24]  732 	cjne	a,_tick_fogger_interval_65536_36,00666$
      002A8A 02 2B 71         [24]  733 	ljmp	00246$
      002A8D                        734 00666$:
      002A8D                        735 00175$:
                                    736 ;	../Fogger_Manager/fogger.c:197: duration = 8;
      002A8D 75 6E 08         [24]  737 	mov	_tick_fogger_duration_65536_36,#0x08
                                    738 ;	../Fogger_Manager/fogger.c:198: interval = 34;
      002A90 75 6F 22         [24]  739 	mov	_tick_fogger_interval_65536_36,#0x22
                                    740 ;	../Fogger_Manager/fogger.c:199: Playing = RESET;
      002A93 75 69 02         [24]  741 	mov	_Playing,#0x02
      002A96 02 2B 71         [24]  742 	ljmp	00246$
      002A99                        743 00206$:
                                    744 ;	../Fogger_Manager/fogger.c:201: } else if(value < DMX_FOG_8_55){
      002A99 BF B4 00         [24]  745 	cjne	r7,#0xb4,00667$
      002A9C                        746 00667$:
      002A9C 50 19            [24]  747 	jnc	00203$
                                    748 ;	../Fogger_Manager/fogger.c:202: if(duration != 8 || interval != 55){
      002A9E 74 08            [12]  749 	mov	a,#0x08
      002AA0 B5 6E 08         [24]  750 	cjne	a,_tick_fogger_duration_65536_36,00178$
      002AA3 74 37            [12]  751 	mov	a,#0x37
      002AA5 B5 6F 03         [24]  752 	cjne	a,_tick_fogger_interval_65536_36,00671$
      002AA8 02 2B 71         [24]  753 	ljmp	00246$
      002AAB                        754 00671$:
      002AAB                        755 00178$:
                                    756 ;	../Fogger_Manager/fogger.c:203: duration = 8;
      002AAB 75 6E 08         [24]  757 	mov	_tick_fogger_duration_65536_36,#0x08
                                    758 ;	../Fogger_Manager/fogger.c:204: interval = 55;
      002AAE 75 6F 37         [24]  759 	mov	_tick_fogger_interval_65536_36,#0x37
                                    760 ;	../Fogger_Manager/fogger.c:205: Playing = RESET;
      002AB1 75 69 02         [24]  761 	mov	_Playing,#0x02
      002AB4 02 2B 71         [24]  762 	ljmp	00246$
      002AB7                        763 00203$:
                                    764 ;	../Fogger_Manager/fogger.c:207: } else if(value < DMX_FOG_8_89){
      002AB7 BF C8 00         [24]  765 	cjne	r7,#0xc8,00672$
      002ABA                        766 00672$:
      002ABA 50 19            [24]  767 	jnc	00200$
                                    768 ;	../Fogger_Manager/fogger.c:208: if(duration != 8 || interval != 89){
      002ABC 74 08            [12]  769 	mov	a,#0x08
      002ABE B5 6E 08         [24]  770 	cjne	a,_tick_fogger_duration_65536_36,00181$
      002AC1 74 59            [12]  771 	mov	a,#0x59
      002AC3 B5 6F 03         [24]  772 	cjne	a,_tick_fogger_interval_65536_36,00676$
      002AC6 02 2B 71         [24]  773 	ljmp	00246$
      002AC9                        774 00676$:
      002AC9                        775 00181$:
                                    776 ;	../Fogger_Manager/fogger.c:209: duration = 8;
      002AC9 75 6E 08         [24]  777 	mov	_tick_fogger_duration_65536_36,#0x08
                                    778 ;	../Fogger_Manager/fogger.c:210: interval = 89;
      002ACC 75 6F 59         [24]  779 	mov	_tick_fogger_interval_65536_36,#0x59
                                    780 ;	../Fogger_Manager/fogger.c:211: Playing = RESET;
      002ACF 75 69 02         [24]  781 	mov	_Playing,#0x02
      002AD2 02 2B 71         [24]  782 	ljmp	00246$
      002AD5                        783 00200$:
                                    784 ;	../Fogger_Manager/fogger.c:213: } else if(value < DMX_FOG_8_144){
      002AD5 BF DC 00         [24]  785 	cjne	r7,#0xdc,00677$
      002AD8                        786 00677$:
      002AD8 50 19            [24]  787 	jnc	00197$
                                    788 ;	../Fogger_Manager/fogger.c:214: if(duration != 8 || interval != 144){
      002ADA 74 08            [12]  789 	mov	a,#0x08
      002ADC B5 6E 08         [24]  790 	cjne	a,_tick_fogger_duration_65536_36,00184$
      002ADF 74 90            [12]  791 	mov	a,#0x90
      002AE1 B5 6F 03         [24]  792 	cjne	a,_tick_fogger_interval_65536_36,00681$
      002AE4 02 2B 71         [24]  793 	ljmp	00246$
      002AE7                        794 00681$:
      002AE7                        795 00184$:
                                    796 ;	../Fogger_Manager/fogger.c:215: duration = 8;
      002AE7 75 6E 08         [24]  797 	mov	_tick_fogger_duration_65536_36,#0x08
                                    798 ;	../Fogger_Manager/fogger.c:216: interval = 144;
      002AEA 75 6F 90         [24]  799 	mov	_tick_fogger_interval_65536_36,#0x90
                                    800 ;	../Fogger_Manager/fogger.c:217: Playing = RESET;
      002AED 75 69 02         [24]  801 	mov	_Playing,#0x02
      002AF0 02 2B 71         [24]  802 	ljmp	00246$
      002AF3                        803 00197$:
                                    804 ;	../Fogger_Manager/fogger.c:219: } else if(value < DMX_FOG_21_55){
      002AF3 BF F0 00         [24]  805 	cjne	r7,#0xf0,00682$
      002AF6                        806 00682$:
      002AF6 50 17            [24]  807 	jnc	00194$
                                    808 ;	../Fogger_Manager/fogger.c:220: if(duration != 21 || interval != 55){
      002AF8 74 15            [12]  809 	mov	a,#0x15
      002AFA B5 6E 07         [24]  810 	cjne	a,_tick_fogger_duration_65536_36,00187$
      002AFD 74 37            [12]  811 	mov	a,#0x37
      002AFF B5 6F 02         [24]  812 	cjne	a,_tick_fogger_interval_65536_36,00686$
      002B02 80 6D            [24]  813 	sjmp	00246$
      002B04                        814 00686$:
      002B04                        815 00187$:
                                    816 ;	../Fogger_Manager/fogger.c:221: duration = 21;
      002B04 75 6E 15         [24]  817 	mov	_tick_fogger_duration_65536_36,#0x15
                                    818 ;	../Fogger_Manager/fogger.c:222: interval = 55;
      002B07 75 6F 37         [24]  819 	mov	_tick_fogger_interval_65536_36,#0x37
                                    820 ;	../Fogger_Manager/fogger.c:223: Playing = RESET;
      002B0A 75 69 02         [24]  821 	mov	_Playing,#0x02
      002B0D 80 62            [24]  822 	sjmp	00246$
      002B0F                        823 00194$:
                                    824 ;	../Fogger_Manager/fogger.c:226: if(duration !=  21|| interval != 89){
      002B0F 74 15            [12]  825 	mov	a,#0x15
      002B11 B5 6E 07         [24]  826 	cjne	a,_tick_fogger_duration_65536_36,00190$
      002B14 74 59            [12]  827 	mov	a,#0x59
      002B16 B5 6F 02         [24]  828 	cjne	a,_tick_fogger_interval_65536_36,00689$
      002B19 80 56            [24]  829 	sjmp	00246$
      002B1B                        830 00689$:
      002B1B                        831 00190$:
                                    832 ;	../Fogger_Manager/fogger.c:227: duration = 21;
      002B1B 75 6E 15         [24]  833 	mov	_tick_fogger_duration_65536_36,#0x15
                                    834 ;	../Fogger_Manager/fogger.c:228: interval = 89;
      002B1E 75 6F 59         [24]  835 	mov	_tick_fogger_interval_65536_36,#0x59
                                    836 ;	../Fogger_Manager/fogger.c:229: Playing = RESET;
      002B21 75 69 02         [24]  837 	mov	_Playing,#0x02
      002B24 80 4B            [24]  838 	sjmp	00246$
      002B26                        839 00236$:
                                    840 ;	../Fogger_Manager/fogger.c:235: Playing = RESET;
      002B26 75 69 02         [24]  841 	mov	_Playing,#0x02
      002B29 80 46            [24]  842 	sjmp	00246$
      002B2B                        843 00245$:
                                    844 ;	../Fogger_Manager/fogger.c:238: value = get_runtime_data(FOG_POWER_INDEX);
      002B2B 75 82 00         [24]  845 	mov	dpl,#0x00
      002B2E 12 27 13         [24]  846 	lcall	_get_runtime_data
      002B31 AF 82            [24]  847 	mov	r7,dpl
                                    848 ;	../Fogger_Manager/fogger.c:242: value = 0x01 << value;
      002B33 8F F0            [24]  849 	mov	b,r7
      002B35 05 F0            [12]  850 	inc	b
      002B37 74 01            [12]  851 	mov	a,#0x01
      002B39 80 02            [24]  852 	sjmp	00692$
      002B3B                        853 00690$:
      002B3B 25 E0            [12]  854 	add	a,acc
      002B3D                        855 00692$:
      002B3D D5 F0 FB         [24]  856 	djnz	b,00690$
                                    857 ;	../Fogger_Manager/fogger.c:244: if(value != power){
      002B40 FF               [12]  858 	mov	r7,a
      002B41 B5 70 02         [24]  859 	cjne	a,_tick_fogger_power_65536_36,00693$
      002B44 80 05            [24]  860 	sjmp	00239$
      002B46                        861 00693$:
                                    862 ;	../Fogger_Manager/fogger.c:245: power = value;
      002B46 8F 70            [24]  863 	mov	_tick_fogger_power_65536_36,r7
                                    864 ;	../Fogger_Manager/fogger.c:246: Playing = RESET;
      002B48 75 69 02         [24]  865 	mov	_Playing,#0x02
      002B4B                        866 00239$:
                                    867 ;	../Fogger_Manager/fogger.c:249: value = get_runtime_data(FOG_DURATION_INDEX);
      002B4B 75 82 01         [24]  868 	mov	dpl,#0x01
      002B4E 12 27 13         [24]  869 	lcall	_get_runtime_data
                                    870 ;	../Fogger_Manager/fogger.c:251: if(value != duration){
      002B51 E5 82            [12]  871 	mov	a,dpl
      002B53 FF               [12]  872 	mov	r7,a
      002B54 B5 6E 02         [24]  873 	cjne	a,_tick_fogger_duration_65536_36,00694$
      002B57 80 05            [24]  874 	sjmp	00241$
      002B59                        875 00694$:
                                    876 ;	../Fogger_Manager/fogger.c:252: duration = value;
      002B59 8F 6E            [24]  877 	mov	_tick_fogger_duration_65536_36,r7
                                    878 ;	../Fogger_Manager/fogger.c:253: Playing = RESET;
      002B5B 75 69 02         [24]  879 	mov	_Playing,#0x02
      002B5E                        880 00241$:
                                    881 ;	../Fogger_Manager/fogger.c:256: value = get_runtime_data(FOG_INTERVAL_INDEX);
      002B5E 75 82 02         [24]  882 	mov	dpl,#0x02
      002B61 12 27 13         [24]  883 	lcall	_get_runtime_data
                                    884 ;	../Fogger_Manager/fogger.c:258: if(value != interval){
      002B64 E5 82            [12]  885 	mov	a,dpl
      002B66 FF               [12]  886 	mov	r7,a
      002B67 B5 6F 02         [24]  887 	cjne	a,_tick_fogger_interval_65536_36,00695$
      002B6A 80 05            [24]  888 	sjmp	00246$
      002B6C                        889 00695$:
                                    890 ;	../Fogger_Manager/fogger.c:259: interval = value;
      002B6C 8F 6F            [24]  891 	mov	_tick_fogger_interval_65536_36,r7
                                    892 ;	../Fogger_Manager/fogger.c:260: Playing = RESET;
      002B6E 75 69 02         [24]  893 	mov	_Playing,#0x02
      002B71                        894 00246$:
                                    895 ;	../Fogger_Manager/fogger.c:265: if(Playing == RESET){
      002B71 74 02            [12]  896 	mov	a,#0x02
      002B73 B5 69 09         [24]  897 	cjne	a,_Playing,00248$
                                    898 ;	../Fogger_Manager/fogger.c:266: Playing = PAUSE;
      002B76 75 69 00         [24]  899 	mov	_Playing,#0x00
                                    900 ;	../Fogger_Manager/fogger.c:267: Timer = interval;
      002B79 85 6F 67         [24]  901 	mov	_Timer,_tick_fogger_interval_65536_36
                                    902 ;	../Fogger_Manager/fogger.c:268: Interval_Or_Duration = INTERVAL;
      002B7C 75 68 00         [24]  903 	mov	_Interval_Or_Duration,#0x00
      002B7F                        904 00248$:
                                    905 ;	../Fogger_Manager/fogger.c:272: if(Playing){
      002B7F E5 69            [12]  906 	mov	a,_Playing
      002B81 70 03            [24]  907 	jnz	00698$
      002B83 02 2C 26         [24]  908 	ljmp	00270$
      002B86                        909 00698$:
                                    910 ;	../Fogger_Manager/fogger.c:273: tock++;
      002B86 05 71            [12]  911 	inc	_tick_fogger_tock_65536_36
                                    912 ;	../Fogger_Manager/fogger.c:275: if(!get_runtime_data(OP_MODE_INDEX)
      002B88 75 82 10         [24]  913 	mov	dpl,#0x10
      002B8B 12 27 13         [24]  914 	lcall	_get_runtime_data
      002B8E E5 82            [12]  915 	mov	a,dpl
      002B90 70 28            [24]  916 	jnz	00264$
                                    917 ;	../Fogger_Manager/fogger.c:276: && get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_9
      002B92 75 82 0E         [24]  918 	mov	dpl,#0x0e
      002B95 12 27 13         [24]  919 	lcall	_get_runtime_data
      002B98 E5 82            [12]  920 	mov	a,dpl
      002B9A 70 1E            [24]  921 	jnz	00264$
                                    922 ;	../Fogger_Manager/fogger.c:277: && (!duration || !interval)){
      002B9C E5 6E            [12]  923 	mov	a,_tick_fogger_duration_65536_36
      002B9E 60 04            [24]  924 	jz	00263$
      002BA0 E5 6F            [12]  925 	mov	a,_tick_fogger_interval_65536_36
      002BA2 70 16            [24]  926 	jnz	00264$
      002BA4                        927 00263$:
                                    928 ;	../Fogger_Manager/fogger.c:279: if(!(tock % power)){
      002BA4 85 70 F0         [24]  929 	mov	b,_tick_fogger_power_65536_36
      002BA7 E5 71            [12]  930 	mov	a,_tick_fogger_tock_65536_36
      002BA9 84               [48]  931 	div	ab
      002BAA E5 F0            [12]  932 	mov	a,b
      002BAC 70 06            [24]  933 	jnz	00250$
                                    934 ;	../Fogger_Manager/fogger.c:280: power_pump(PUMP_ON);
      002BAE 75 82 01         [24]  935 	mov	dpl,#0x01
      002BB1 02 2C 2C         [24]  936 	ljmp	_power_pump
      002BB4                        937 00250$:
                                    938 ;	../Fogger_Manager/fogger.c:282: power_pump(PUMP_OFF);
      002BB4 75 82 00         [24]  939 	mov	dpl,#0x00
      002BB7 02 2C 2C         [24]  940 	ljmp	_power_pump
      002BBA                        941 00264$:
                                    942 ;	../Fogger_Manager/fogger.c:286: if(!(tock % 8)){
      002BBA AE 71            [24]  943 	mov	r6,_tick_fogger_tock_65536_36
      002BBC 7F 00            [12]  944 	mov	r7,#0x00
      002BBE 75 72 08         [24]  945 	mov	__modsint_PARM_2,#0x08
                                    946 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      002BC1 8F 73            [24]  947 	mov	(__modsint_PARM_2 + 1),r7
      002BC3 8E 82            [24]  948 	mov	dpl,r6
      002BC5 8F 83            [24]  949 	mov	dph,r7
      002BC7 12 2D B6         [24]  950 	lcall	__modsint
      002BCA E5 82            [12]  951 	mov	a,dpl
      002BCC 85 83 F0         [24]  952 	mov	b,dph
      002BCF 45 F0            [12]  953 	orl	a,b
      002BD1 70 02            [24]  954 	jnz	00253$
                                    955 ;	../Fogger_Manager/fogger.c:287: Timer--;
      002BD3 15 67            [12]  956 	dec	_Timer
      002BD5                        957 00253$:
                                    958 ;	../Fogger_Manager/fogger.c:290: if(Timer == 0x00){
      002BD5 E5 67            [12]  959 	mov	a,_Timer
      002BD7 70 2E            [24]  960 	jnz	00261$
                                    961 ;	../Fogger_Manager/fogger.c:291: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
      002BD9 E5 68            [12]  962 	mov	a,_Interval_Or_Duration
      002BDB 70 05            [24]  963 	jnz	00274$
      002BDD 7E 01            [12]  964 	mov	r6,#0x01
      002BDF FF               [12]  965 	mov	r7,a
      002BE0 80 04            [24]  966 	sjmp	00275$
      002BE2                        967 00274$:
      002BE2 7E 00            [12]  968 	mov	r6,#0x00
      002BE4 7F 00            [12]  969 	mov	r7,#0x00
      002BE6                        970 00275$:
      002BE6 8E 82            [24]  971 	mov	dpl,r6
      002BE8 12 2C 2C         [24]  972 	lcall	_power_pump
                                    973 ;	../Fogger_Manager/fogger.c:292: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
      002BEB E5 68            [12]  974 	mov	a,_Interval_Or_Duration
      002BED 70 04            [24]  975 	jnz	00276$
      002BEF AF 6E            [24]  976 	mov	r7,_tick_fogger_duration_65536_36
      002BF1 80 02            [24]  977 	sjmp	00277$
      002BF3                        978 00276$:
      002BF3 AF 6F            [24]  979 	mov	r7,_tick_fogger_interval_65536_36
      002BF5                        980 00277$:
      002BF5 8F 67            [24]  981 	mov	_Timer,r7
                                    982 ;	../Fogger_Manager/fogger.c:293: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
      002BF7 E5 68            [12]  983 	mov	a,_Interval_Or_Duration
      002BF9 70 05            [24]  984 	jnz	00278$
      002BFB 7E FF            [12]  985 	mov	r6,#0xff
      002BFD FF               [12]  986 	mov	r7,a
      002BFE 80 04            [24]  987 	sjmp	00279$
      002C00                        988 00278$:
      002C00 7E 00            [12]  989 	mov	r6,#0x00
      002C02 7F 00            [12]  990 	mov	r7,#0x00
      002C04                        991 00279$:
      002C04 8E 68            [24]  992 	mov	_Interval_Or_Duration,r6
      002C06 22               [24]  993 	ret
      002C07                        994 00261$:
                                    995 ;	../Fogger_Manager/fogger.c:295: if(Interval_Or_Duration == INTERVAL){
      002C07 E5 68            [12]  996 	mov	a,_Interval_Or_Duration
                                    997 ;	../Fogger_Manager/fogger.c:296: power_pump(PUMP_OFF);
      002C09 70 05            [24]  998 	jnz	00258$
      002C0B F5 82            [12]  999 	mov	dpl,a
      002C0D 02 2C 2C         [24] 1000 	ljmp	_power_pump
      002C10                       1001 00258$:
                                   1002 ;	../Fogger_Manager/fogger.c:298: if(!(tock % power)){
      002C10 85 70 F0         [24] 1003 	mov	b,_tick_fogger_power_65536_36
      002C13 E5 71            [12] 1004 	mov	a,_tick_fogger_tock_65536_36
      002C15 84               [48] 1005 	div	ab
      002C16 E5 F0            [12] 1006 	mov	a,b
      002C18 70 06            [24] 1007 	jnz	00255$
                                   1008 ;	../Fogger_Manager/fogger.c:299: power_pump(PUMP_ON);
      002C1A 75 82 01         [24] 1009 	mov	dpl,#0x01
      002C1D 02 2C 2C         [24] 1010 	ljmp	_power_pump
      002C20                       1011 00255$:
                                   1012 ;	../Fogger_Manager/fogger.c:301: power_pump(PUMP_OFF);
      002C20 75 82 00         [24] 1013 	mov	dpl,#0x00
      002C23 02 2C 2C         [24] 1014 	ljmp	_power_pump
      002C26                       1015 00270$:
                                   1016 ;	../Fogger_Manager/fogger.c:309: power_pump(PUMP_OFF);
      002C26 75 82 00         [24] 1017 	mov	dpl,#0x00
                                   1018 ;	../Fogger_Manager/fogger.c:312: }
      002C29 02 2C 2C         [24] 1019 	ljmp	_power_pump
                                   1020 ;------------------------------------------------------------
                                   1021 ;Allocation info for local variables in function 'power_pump'
                                   1022 ;------------------------------------------------------------
                                   1023 ;action                    Allocated to registers r7 
                                   1024 ;------------------------------------------------------------
                                   1025 ;	../Fogger_Manager/fogger.c:314: void power_pump(uint8_t action){
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function power_pump
                                   1028 ;	-----------------------------------------
      002C2C                       1029 _power_pump:
      002C2C AF 82            [24] 1030 	mov	r7,dpl
                                   1031 ;	../Fogger_Manager/fogger.c:315: switch (action)
      002C2E BF 01 02         [24] 1032 	cjne	r7,#0x01,00139$
      002C31 80 0A            [24] 1033 	sjmp	00101$
      002C33                       1034 00139$:
      002C33 BF 02 02         [24] 1035 	cjne	r7,#0x02,00140$
      002C36 80 1F            [24] 1036 	sjmp	00106$
      002C38                       1037 00140$:
                                   1038 ;	../Fogger_Manager/fogger.c:317: case PUMP_ON:
      002C38 BF 03 35         [24] 1039 	cjne	r7,#0x03,00111$
      002C3B 80 30            [24] 1040 	sjmp	00110$
      002C3D                       1041 00101$:
                                   1042 ;	../Fogger_Manager/fogger.c:318: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
      002C3D E5 6B            [12] 1043 	mov	a,_Fluid_Level
      002C3F 60 13            [24] 1044 	jz	00103$
      002C41 AE 6A            [24] 1045 	mov	r6,_Heat_Flag
      002C43 53 06 80         [24] 1046 	anl	ar6,#0x80
      002C46 7F 00            [12] 1047 	mov	r7,#0x00
      002C48 BE 80 09         [24] 1048 	cjne	r6,#0x80,00103$
      002C4B BF 00 06         [24] 1049 	cjne	r7,#0x00,00103$
                                   1050 ;	../Fogger_Manager/fogger.c:319: P2_5 = 0;
                                   1051 ;	assignBit
      002C4E C2 A5            [12] 1052 	clr	_P2_5
                                   1053 ;	../Fogger_Manager/fogger.c:320: Heat_Flag &= ~HOT_FLAG;
      002C50 53 6A FD         [24] 1054 	anl	_Heat_Flag,#0xfd
      002C53 22               [24] 1055 	ret
      002C54                       1056 00103$:
                                   1057 ;	../Fogger_Manager/fogger.c:322: P2_5 = 1;
                                   1058 ;	assignBit
      002C54 D2 A5            [12] 1059 	setb	_P2_5
                                   1060 ;	../Fogger_Manager/fogger.c:324: break;
                                   1061 ;	../Fogger_Manager/fogger.c:325: case PUMP_OVERRIDE:
      002C56 22               [24] 1062 	ret
      002C57                       1063 00106$:
                                   1064 ;	../Fogger_Manager/fogger.c:326: if(get_heated() == HEATED){
      002C57 AE 6A            [24] 1065 	mov	r6,_Heat_Flag
      002C59 53 06 80         [24] 1066 	anl	ar6,#0x80
      002C5C 7F 00            [12] 1067 	mov	r7,#0x00
      002C5E BE 80 09         [24] 1068 	cjne	r6,#0x80,00108$
      002C61 BF 00 06         [24] 1069 	cjne	r7,#0x00,00108$
                                   1070 ;	../Fogger_Manager/fogger.c:327: P2_5 = 0;
                                   1071 ;	assignBit
      002C64 C2 A5            [12] 1072 	clr	_P2_5
                                   1073 ;	../Fogger_Manager/fogger.c:328: Heat_Flag &= ~HOT_FLAG;
      002C66 53 6A FD         [24] 1074 	anl	_Heat_Flag,#0xfd
      002C69 22               [24] 1075 	ret
      002C6A                       1076 00108$:
                                   1077 ;	../Fogger_Manager/fogger.c:330: P2_5 = 1;
                                   1078 ;	assignBit
      002C6A D2 A5            [12] 1079 	setb	_P2_5
                                   1080 ;	../Fogger_Manager/fogger.c:332: break;
                                   1081 ;	../Fogger_Manager/fogger.c:333: case PUMP_MASTER_OVERRIDE:
      002C6C 22               [24] 1082 	ret
      002C6D                       1083 00110$:
                                   1084 ;	../Fogger_Manager/fogger.c:334: P2_5 = 0;
                                   1085 ;	assignBit
      002C6D C2 A5            [12] 1086 	clr	_P2_5
                                   1087 ;	../Fogger_Manager/fogger.c:335: break;
                                   1088 ;	../Fogger_Manager/fogger.c:336: default:
      002C6F 22               [24] 1089 	ret
      002C70                       1090 00111$:
                                   1091 ;	../Fogger_Manager/fogger.c:337: P2_5 = 1;
                                   1092 ;	assignBit
      002C70 D2 A5            [12] 1093 	setb	_P2_5
                                   1094 ;	../Fogger_Manager/fogger.c:339: }
                                   1095 ;	../Fogger_Manager/fogger.c:340: }
      002C72 22               [24] 1096 	ret
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'power_heater'
                                   1099 ;------------------------------------------------------------
                                   1100 ;action                    Allocated to registers r7 
                                   1101 ;------------------------------------------------------------
                                   1102 ;	../Fogger_Manager/fogger.c:342: void power_heater(uint8_t action){
                                   1103 ;	-----------------------------------------
                                   1104 ;	 function power_heater
                                   1105 ;	-----------------------------------------
      002C73                       1106 _power_heater:
      002C73 AF 82            [24] 1107 	mov	r7,dpl
                                   1108 ;	../Fogger_Manager/fogger.c:343: switch (action)
      002C75 BF 01 08         [24] 1109 	cjne	r7,#0x01,00102$
                                   1110 ;	../Fogger_Manager/fogger.c:346: Heat_Flag |= HEAT_DISABLE_FLAG;
      002C78 AE 6A            [24] 1111 	mov	r6,_Heat_Flag
      002C7A 43 06 80         [24] 1112 	orl	ar6,#0x80
      002C7D 8E 6A            [24] 1113 	mov	_Heat_Flag,r6
                                   1114 ;	../Fogger_Manager/fogger.c:347: break;
                                   1115 ;	../Fogger_Manager/fogger.c:348: default:
      002C7F 22               [24] 1116 	ret
      002C80                       1117 00102$:
                                   1118 ;	../Fogger_Manager/fogger.c:349: Heat_Flag &= ~HEAT_DISABLE_FLAG;
      002C80 53 6A 7F         [24] 1119 	anl	_Heat_Flag,#0x7f
                                   1120 ;	../Fogger_Manager/fogger.c:351: }
                                   1121 ;	../Fogger_Manager/fogger.c:352: }
      002C83 22               [24] 1122 	ret
                                   1123 	.area CSEG    (CODE)
                                   1124 	.area CONST   (CODE)
                                   1125 	.area XINIT   (CODE)
                                   1126 	.area CABS    (ABS,CODE)
