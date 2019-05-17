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
      0028DB                        333 _tick_fogger:
                           000007   334 	ar7 = 0x07
                           000006   335 	ar6 = 0x06
                           000005   336 	ar5 = 0x05
                           000004   337 	ar4 = 0x04
                           000003   338 	ar3 = 0x03
                           000002   339 	ar2 = 0x02
                           000001   340 	ar1 = 0x01
                           000000   341 	ar0 = 0x00
                                    342 ;	../Fogger_Manager/fogger.c:34: temperature = get_adc_value(ADC_TEMPERATURE);
      0028DB 75 82 00         [24]  343 	mov	dpl,#0x00
      0028DE 12 04 54         [24]  344 	lcall	_get_adc_value
      0028E1 AE 82            [24]  345 	mov	r6,dpl
      0028E3 AF 83            [24]  346 	mov	r7,dph
                                    347 ;	../Fogger_Manager/fogger.c:36: if(temperature < HEAT_LOW){ /* Turn on heater full blast */
      0028E5 C3               [12]  348 	clr	c
      0028E6 EE               [12]  349 	mov	a,r6
      0028E7 94 A0            [12]  350 	subb	a,#0xa0
      0028E9 EF               [12]  351 	mov	a,r7
      0028EA 94 00            [12]  352 	subb	a,#0x00
      0028EC 50 05            [24]  353 	jnc	00107$
                                    354 ;	../Fogger_Manager/fogger.c:37: Heat_Flag = COLD_FLAG;
      0028EE 75 6A 04         [24]  355 	mov	_Heat_Flag,#0x04
      0028F1 80 1E            [24]  356 	sjmp	00108$
      0028F3                        357 00107$:
                                    358 ;	../Fogger_Manager/fogger.c:38: } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
      0028F3 C3               [12]  359 	clr	c
      0028F4 74 B9            [12]  360 	mov	a,#0xb9
      0028F6 9E               [12]  361 	subb	a,r6
      0028F7 E4               [12]  362 	clr	a
      0028F8 9F               [12]  363 	subb	a,r7
      0028F9 50 05            [24]  364 	jnc	00104$
                                    365 ;	../Fogger_Manager/fogger.c:40: Heat_Flag |= HEATED;
      0028FB 75 6A 82         [24]  366 	mov	_Heat_Flag,#0x82
      0028FE 80 11            [24]  367 	sjmp	00108$
      002900                        368 00104$:
                                    369 ;	../Fogger_Manager/fogger.c:41: } else if(temperature > HEAT_OK){ /* Set Heated */
      002900 C3               [12]  370 	clr	c
      002901 74 AF            [12]  371 	mov	a,#0xaf
      002903 9E               [12]  372 	subb	a,r6
      002904 E4               [12]  373 	clr	a
      002905 9F               [12]  374 	subb	a,r7
      002906 50 09            [24]  375 	jnc	00108$
                                    376 ;	../Fogger_Manager/fogger.c:42: Heat_Flag |= HEATED;
      002908 AE 6A            [24]  377 	mov	r6,_Heat_Flag
      00290A 7F 00            [12]  378 	mov	r7,#0x00
      00290C 43 06 80         [24]  379 	orl	ar6,#0x80
      00290F 8E 6A            [24]  380 	mov	_Heat_Flag,r6
      002911                        381 00108$:
                                    382 ;	../Fogger_Manager/fogger.c:46: if(get_ui_state() != WELCOME_STATE){
      002911 12 14 15         [24]  383 	lcall	_get_ui_state
      002914 AF 82            [24]  384 	mov	r7,dpl
      002916 BF 45 02         [24]  385 	cjne	r7,#0x45,00603$
      002919 80 04            [24]  386 	sjmp	00113$
      00291B                        387 00603$:
                                    388 ;	../Fogger_Manager/fogger.c:48: P3_4 = 1;
                                    389 ;	assignBit
      00291B D2 B4            [12]  390 	setb	_P3_4
                                    391 ;	../Fogger_Manager/fogger.c:49: P3_3 = 1;
                                    392 ;	assignBit
      00291D D2 B3            [12]  393 	setb	_P3_3
                                    394 ;	../Fogger_Manager/fogger.c:52: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
      00291F                        395 00113$:
                                    396 ;	../Fogger_Manager/fogger.c:58: if(!P2_6){ // no fluid
      00291F 20 A6 18         [24]  397 	jb	_P2_6,00125$
                                    398 ;	../Fogger_Manager/fogger.c:59: if(Fluid_Level == TANK_FULL){
      002922 74 01            [12]  399 	mov	a,#0x01
      002924 B5 6B 0E         [24]  400 	cjne	a,_Fluid_Level,00117$
                                    401 ;	../Fogger_Manager/fogger.c:60: if(fullCount++ > REFILL_FLUID_COUNT){
      002927 AF 6C            [24]  402 	mov	r7,_tick_fogger_fullCount_65536_36
      002929 05 6C            [12]  403 	inc	_tick_fogger_fullCount_65536_36
      00292B EF               [12]  404 	mov	a,r7
      00292C 24 DD            [12]  405 	add	a,#0xff - 0x22
      00292E 50 1F            [24]  406 	jnc	00126$
                                    407 ;	../Fogger_Manager/fogger.c:61: Fluid_Level = TANK_EMPTY;
      002930 75 6B 00         [24]  408 	mov	_Fluid_Level,#0x00
      002933 80 1A            [24]  409 	sjmp	00126$
      002935                        410 00117$:
                                    411 ;	../Fogger_Manager/fogger.c:64: fullCount = 0;
      002935 75 6C 00         [24]  412 	mov	_tick_fogger_fullCount_65536_36,#0x00
      002938 80 15            [24]  413 	sjmp	00126$
      00293A                        414 00125$:
                                    415 ;	../Fogger_Manager/fogger.c:67: if(Fluid_Level == TANK_EMPTY){
      00293A E5 6B            [12]  416 	mov	a,_Fluid_Level
      00293C 70 0E            [24]  417 	jnz	00122$
                                    418 ;	../Fogger_Manager/fogger.c:68: if(fullCount++ > REFILL_FLUID_COUNT){
      00293E AF 6C            [24]  419 	mov	r7,_tick_fogger_fullCount_65536_36
      002940 05 6C            [12]  420 	inc	_tick_fogger_fullCount_65536_36
      002942 EF               [12]  421 	mov	a,r7
      002943 24 DD            [12]  422 	add	a,#0xff - 0x22
      002945 50 08            [24]  423 	jnc	00126$
                                    424 ;	../Fogger_Manager/fogger.c:69: Fluid_Level = TANK_FULL;
      002947 75 6B 01         [24]  425 	mov	_Fluid_Level,#0x01
      00294A 80 03            [24]  426 	sjmp	00126$
      00294C                        427 00122$:
                                    428 ;	../Fogger_Manager/fogger.c:72: fullCount = 0;
      00294C 75 6C 00         [24]  429 	mov	_tick_fogger_fullCount_65536_36,#0x00
      00294F                        430 00126$:
                                    431 ;	../Fogger_Manager/fogger.c:77: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
      00294F 75 82 0F         [24]  432 	mov	dpl,#0x0f
      002952 12 27 6A         [24]  433 	lcall	_get_runtime_data
      002955 E5 82            [12]  434 	mov	a,dpl
      002957 70 28            [24]  435 	jnz	00137$
                                    436 ;	../Fogger_Manager/fogger.c:78: if(Fluid_Level == TANK_EMPTY){ //flash on empty
      002959 E5 6B            [12]  437 	mov	a,_Fluid_Level
      00295B 70 13            [24]  438 	jnz	00134$
                                    439 ;	../Fogger_Manager/fogger.c:79: on = ~on;
      00295D E5 6D            [12]  440 	mov	a,_tick_fogger_on_65536_36
      00295F F4               [12]  441 	cpl	a
                                    442 ;	../Fogger_Manager/fogger.c:81: if(on){
      002960 F5 6D            [12]  443 	mov	_tick_fogger_on_65536_36,a
      002962 60 06            [24]  444 	jz	00128$
                                    445 ;	../Fogger_Manager/fogger.c:82: P1_0 = 0;
                                    446 ;	assignBit
      002964 C2 90            [12]  447 	clr	_P1_0
                                    448 ;	../Fogger_Manager/fogger.c:83: P2_0 = 1;
                                    449 ;	assignBit
      002966 D2 A0            [12]  450 	setb	_P2_0
      002968 80 1B            [24]  451 	sjmp	00138$
      00296A                        452 00128$:
                                    453 ;	../Fogger_Manager/fogger.c:85: P1_0 = 1;
                                    454 ;	assignBit
      00296A D2 90            [12]  455 	setb	_P1_0
                                    456 ;	../Fogger_Manager/fogger.c:86: P2_0 = 1;
                                    457 ;	assignBit
      00296C D2 A0            [12]  458 	setb	_P2_0
      00296E 80 15            [24]  459 	sjmp	00138$
      002970                        460 00134$:
                                    461 ;	../Fogger_Manager/fogger.c:89: if(get_heated()){ //heated not heated
      002970 E5 6A            [12]  462 	mov	a,_Heat_Flag
      002972 30 E7 06         [24]  463 	jnb	acc.7,00131$
                                    464 ;	../Fogger_Manager/fogger.c:90: P1_0 = 0;
                                    465 ;	assignBit
      002975 C2 90            [12]  466 	clr	_P1_0
                                    467 ;	../Fogger_Manager/fogger.c:91: P2_0 = 1;
                                    468 ;	assignBit
      002977 D2 A0            [12]  469 	setb	_P2_0
      002979 80 0A            [24]  470 	sjmp	00138$
      00297B                        471 00131$:
                                    472 ;	../Fogger_Manager/fogger.c:93: P1_0 = 1;
                                    473 ;	assignBit
      00297B D2 90            [12]  474 	setb	_P1_0
                                    475 ;	../Fogger_Manager/fogger.c:94: P2_0 = 0;
                                    476 ;	assignBit
      00297D C2 A0            [12]  477 	clr	_P2_0
      00297F 80 04            [24]  478 	sjmp	00138$
      002981                        479 00137$:
                                    480 ;	../Fogger_Manager/fogger.c:98: P1_0 = 1;
                                    481 ;	assignBit
      002981 D2 90            [12]  482 	setb	_P1_0
                                    483 ;	../Fogger_Manager/fogger.c:99: P2_0 = 1;
                                    484 ;	assignBit
      002983 D2 A0            [12]  485 	setb	_P2_0
      002985                        486 00138$:
                                    487 ;	../Fogger_Manager/fogger.c:104: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002985 75 82 10         [24]  488 	mov	dpl,#0x10
      002988 12 27 6A         [24]  489 	lcall	_get_runtime_data
      00298B E5 82            [12]  490 	mov	a,dpl
      00298D 60 03            [24]  491 	jz	00614$
      00298F 02 2B 82         [24]  492 	ljmp	00245$
      002992                        493 00614$:
                                    494 ;	../Fogger_Manager/fogger.c:105: if(has_dmx()){
      002992 E5 36            [12]  495 	mov	a,_Has_DMX
      002994 70 03            [24]  496 	jnz	00615$
      002996 02 2B 7D         [24]  497 	ljmp	00236$
      002999                        498 00615$:
                                    499 ;	../Fogger_Manager/fogger.c:106: Playing = PLAY;
      002999 75 69 01         [24]  500 	mov	_Playing,#0x01
                                    501 ;	../Fogger_Manager/fogger.c:108: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_9)
      00299C 75 82 0E         [24]  502 	mov	dpl,#0x0e
      00299F 12 27 6A         [24]  503 	lcall	_get_runtime_data
      0029A2 E5 82            [12]  504 	mov	a,dpl
      0029A4 70 49            [24]  505 	jnz	00233$
                                    506 ;	../Fogger_Manager/fogger.c:110: value = get_dmx_value(DMX_M9_POWER_INDEX);
      0029A6 AF 2D            [24]  507 	mov	r7,_DMX
                                    508 ;	../Fogger_Manager/fogger.c:112: if(value < DMX_FOG_OFF){
      0029A8 BF 14 00         [24]  509 	cjne	r7,#0x14,00617$
      0029AB                        510 00617$:
      0029AB 50 05            [24]  511 	jnc	00146$
                                    512 ;	../Fogger_Manager/fogger.c:113: Playing = PAUSE;
      0029AD 75 69 00         [24]  513 	mov	_Playing,#0x00
      0029B0 80 14            [24]  514 	sjmp	00147$
      0029B2                        515 00146$:
                                    516 ;	../Fogger_Manager/fogger.c:114: } else if(value < DMX_FOG_LOW){
      0029B2 BF 64 00         [24]  517 	cjne	r7,#0x64,00619$
      0029B5                        518 00619$:
      0029B5 50 04            [24]  519 	jnc	00143$
                                    520 ;	../Fogger_Manager/fogger.c:115: value = FOG_LO;
      0029B7 7F 04            [12]  521 	mov	r7,#0x04
      0029B9 80 0B            [24]  522 	sjmp	00147$
      0029BB                        523 00143$:
                                    524 ;	../Fogger_Manager/fogger.c:116: } else if(value < DMX_FOG_MEDIUM){
      0029BB BF C8 00         [24]  525 	cjne	r7,#0xc8,00621$
      0029BE                        526 00621$:
      0029BE 50 04            [24]  527 	jnc	00140$
                                    528 ;	../Fogger_Manager/fogger.c:117: value = FOG_MED;
      0029C0 7F 02            [12]  529 	mov	r7,#0x02
      0029C2 80 02            [24]  530 	sjmp	00147$
      0029C4                        531 00140$:
                                    532 ;	../Fogger_Manager/fogger.c:119: value = FOG_HIGH;
      0029C4 7F 01            [12]  533 	mov	r7,#0x01
      0029C6                        534 00147$:
                                    535 ;	../Fogger_Manager/fogger.c:122: if(value != power){
      0029C6 EF               [12]  536 	mov	a,r7
      0029C7 B5 70 02         [24]  537 	cjne	a,_tick_fogger_power_65536_36,00623$
      0029CA 80 02            [24]  538 	sjmp	00149$
      0029CC                        539 00623$:
                                    540 ;	../Fogger_Manager/fogger.c:123: power = value;
      0029CC 8F 70            [24]  541 	mov	_tick_fogger_power_65536_36,r7
      0029CE                        542 00149$:
                                    543 ;	../Fogger_Manager/fogger.c:126: value = get_dmx_value(DMX_M9_DURATION_INDEX);
                                    544 ;	../Fogger_Manager/fogger.c:128: if(value != duration){
      0029CE E5 2E            [12]  545 	mov	a,(_DMX + 0x0001)
      0029D0 FF               [12]  546 	mov	r7,a
      0029D1 B5 6E 02         [24]  547 	cjne	a,_tick_fogger_duration_65536_36,00624$
      0029D4 80 08            [24]  548 	sjmp	00151$
      0029D6                        549 00624$:
                                    550 ;	../Fogger_Manager/fogger.c:129: duration = value;
      0029D6 8F 6E            [24]  551 	mov	_tick_fogger_duration_65536_36,r7
                                    552 ;	../Fogger_Manager/fogger.c:130: Timer = duration;
      0029D8 85 6E 67         [24]  553 	mov	_Timer,_tick_fogger_duration_65536_36
                                    554 ;	../Fogger_Manager/fogger.c:131: Interval_Or_Duration = DURATION;
      0029DB 75 68 FF         [24]  555 	mov	_Interval_Or_Duration,#0xff
      0029DE                        556 00151$:
                                    557 ;	../Fogger_Manager/fogger.c:134: value = get_dmx_value(DMX_M9_INTERVAL_INDEX);
                                    558 ;	../Fogger_Manager/fogger.c:136: if(value != interval){
      0029DE E5 2F            [12]  559 	mov	a,(_DMX + 0x0002)
      0029E0 FF               [12]  560 	mov	r7,a
      0029E1 B5 6F 03         [24]  561 	cjne	a,_tick_fogger_interval_65536_36,00625$
      0029E4 02 2B C8         [24]  562 	ljmp	00246$
      0029E7                        563 00625$:
                                    564 ;	../Fogger_Manager/fogger.c:137: interval = value;
      0029E7 8F 6F            [24]  565 	mov	_tick_fogger_interval_65536_36,r7
                                    566 ;	../Fogger_Manager/fogger.c:138: Playing = RESET;
      0029E9 75 69 02         [24]  567 	mov	_Playing,#0x02
      0029EC 02 2B C8         [24]  568 	ljmp	00246$
      0029EF                        569 00233$:
                                    570 ;	../Fogger_Manager/fogger.c:145: power = FOG_HIGH;
      0029EF 75 70 01         [24]  571 	mov	_tick_fogger_power_65536_36,#0x01
                                    572 ;	../Fogger_Manager/fogger.c:147: value = get_dmx_value(DMX_M1_FOG_INDEX);
      0029F2 AF 2D            [24]  573 	mov	r7,_DMX
                                    574 ;	../Fogger_Manager/fogger.c:150: if(value < DMX_FOG_OFF){
      0029F4 BF 14 00         [24]  575 	cjne	r7,#0x14,00626$
      0029F7                        576 00626$:
      0029F7 50 06            [24]  577 	jnc	00230$
                                    578 ;	../Fogger_Manager/fogger.c:151: Playing = PAUSE;
      0029F9 75 69 00         [24]  579 	mov	_Playing,#0x00
      0029FC 02 2B C8         [24]  580 	ljmp	00246$
      0029FF                        581 00230$:
                                    582 ;	../Fogger_Manager/fogger.c:153: } else if(value < DMX_FOG_3_8){
      0029FF BF 28 00         [24]  583 	cjne	r7,#0x28,00628$
      002A02                        584 00628$:
      002A02 50 19            [24]  585 	jnc	00227$
                                    586 ;	../Fogger_Manager/fogger.c:154: if(duration != 3 || interval != 8){
      002A04 74 03            [12]  587 	mov	a,#0x03
      002A06 B5 6E 08         [24]  588 	cjne	a,_tick_fogger_duration_65536_36,00154$
      002A09 74 08            [12]  589 	mov	a,#0x08
      002A0B B5 6F 03         [24]  590 	cjne	a,_tick_fogger_interval_65536_36,00632$
      002A0E 02 2B C8         [24]  591 	ljmp	00246$
      002A11                        592 00632$:
      002A11                        593 00154$:
                                    594 ;	../Fogger_Manager/fogger.c:155: duration = 3;
      002A11 75 6E 03         [24]  595 	mov	_tick_fogger_duration_65536_36,#0x03
                                    596 ;	../Fogger_Manager/fogger.c:156: interval = 8;
      002A14 75 6F 08         [24]  597 	mov	_tick_fogger_interval_65536_36,#0x08
                                    598 ;	../Fogger_Manager/fogger.c:157: Playing = RESET;
      002A17 75 69 02         [24]  599 	mov	_Playing,#0x02
      002A1A 02 2B C8         [24]  600 	ljmp	00246$
      002A1D                        601 00227$:
                                    602 ;	../Fogger_Manager/fogger.c:159: } else if(value < DMX_FOG_3_13){
      002A1D BF 3C 00         [24]  603 	cjne	r7,#0x3c,00633$
      002A20                        604 00633$:
      002A20 50 19            [24]  605 	jnc	00224$
                                    606 ;	../Fogger_Manager/fogger.c:160: if(duration != 3 || interval != 13){
      002A22 74 03            [12]  607 	mov	a,#0x03
      002A24 B5 6E 08         [24]  608 	cjne	a,_tick_fogger_duration_65536_36,00157$
      002A27 74 0D            [12]  609 	mov	a,#0x0d
      002A29 B5 6F 03         [24]  610 	cjne	a,_tick_fogger_interval_65536_36,00637$
      002A2C 02 2B C8         [24]  611 	ljmp	00246$
      002A2F                        612 00637$:
      002A2F                        613 00157$:
                                    614 ;	../Fogger_Manager/fogger.c:161: duration = 3;
      002A2F 75 6E 03         [24]  615 	mov	_tick_fogger_duration_65536_36,#0x03
                                    616 ;	../Fogger_Manager/fogger.c:162: interval = 13;
      002A32 75 6F 0D         [24]  617 	mov	_tick_fogger_interval_65536_36,#0x0d
                                    618 ;	../Fogger_Manager/fogger.c:163: Playing = RESET;
      002A35 75 69 02         [24]  619 	mov	_Playing,#0x02
      002A38 02 2B C8         [24]  620 	ljmp	00246$
      002A3B                        621 00224$:
                                    622 ;	../Fogger_Manager/fogger.c:165: } else if(value < DMX_FOG_3_21){
      002A3B BF 50 00         [24]  623 	cjne	r7,#0x50,00638$
      002A3E                        624 00638$:
      002A3E E4               [12]  625 	clr	a
      002A3F 33               [12]  626 	rlc	a
      002A40 FE               [12]  627 	mov	r6,a
      002A41 60 19            [24]  628 	jz	00221$
                                    629 ;	../Fogger_Manager/fogger.c:166: if(duration != 3 || interval != 21){
      002A43 74 03            [12]  630 	mov	a,#0x03
      002A45 B5 6E 08         [24]  631 	cjne	a,_tick_fogger_duration_65536_36,00160$
      002A48 74 15            [12]  632 	mov	a,#0x15
      002A4A B5 6F 03         [24]  633 	cjne	a,_tick_fogger_interval_65536_36,00642$
      002A4D 02 2B C8         [24]  634 	ljmp	00246$
      002A50                        635 00642$:
      002A50                        636 00160$:
                                    637 ;	../Fogger_Manager/fogger.c:167: duration = 3;
      002A50 75 6E 03         [24]  638 	mov	_tick_fogger_duration_65536_36,#0x03
                                    639 ;	../Fogger_Manager/fogger.c:168: interval = 21;
      002A53 75 6F 15         [24]  640 	mov	_tick_fogger_interval_65536_36,#0x15
                                    641 ;	../Fogger_Manager/fogger.c:169: Playing = RESET;
      002A56 75 69 02         [24]  642 	mov	_Playing,#0x02
      002A59 02 2B C8         [24]  643 	ljmp	00246$
      002A5C                        644 00221$:
                                    645 ;	../Fogger_Manager/fogger.c:171: } else if(value < DMX_FOG_3_21){
      002A5C EE               [12]  646 	mov	a,r6
      002A5D 60 19            [24]  647 	jz	00218$
                                    648 ;	../Fogger_Manager/fogger.c:172: if(duration != 3 || interval != 21){
      002A5F 74 03            [12]  649 	mov	a,#0x03
      002A61 B5 6E 08         [24]  650 	cjne	a,_tick_fogger_duration_65536_36,00163$
      002A64 74 15            [12]  651 	mov	a,#0x15
      002A66 B5 6F 03         [24]  652 	cjne	a,_tick_fogger_interval_65536_36,00646$
      002A69 02 2B C8         [24]  653 	ljmp	00246$
      002A6C                        654 00646$:
      002A6C                        655 00163$:
                                    656 ;	../Fogger_Manager/fogger.c:173: duration = 3;
      002A6C 75 6E 03         [24]  657 	mov	_tick_fogger_duration_65536_36,#0x03
                                    658 ;	../Fogger_Manager/fogger.c:174: interval = 21;
      002A6F 75 6F 15         [24]  659 	mov	_tick_fogger_interval_65536_36,#0x15
                                    660 ;	../Fogger_Manager/fogger.c:175: Playing = RESET;
      002A72 75 69 02         [24]  661 	mov	_Playing,#0x02
      002A75 02 2B C8         [24]  662 	ljmp	00246$
      002A78                        663 00218$:
                                    664 ;	../Fogger_Manager/fogger.c:177: } else if(value < DMX_FOG_3_34){
      002A78 BF 64 00         [24]  665 	cjne	r7,#0x64,00647$
      002A7B                        666 00647$:
      002A7B 50 19            [24]  667 	jnc	00215$
                                    668 ;	../Fogger_Manager/fogger.c:178: if(duration != 3 || interval != 34){
      002A7D 74 03            [12]  669 	mov	a,#0x03
      002A7F B5 6E 08         [24]  670 	cjne	a,_tick_fogger_duration_65536_36,00166$
      002A82 74 22            [12]  671 	mov	a,#0x22
      002A84 B5 6F 03         [24]  672 	cjne	a,_tick_fogger_interval_65536_36,00651$
      002A87 02 2B C8         [24]  673 	ljmp	00246$
      002A8A                        674 00651$:
      002A8A                        675 00166$:
                                    676 ;	../Fogger_Manager/fogger.c:179: duration = 3;
      002A8A 75 6E 03         [24]  677 	mov	_tick_fogger_duration_65536_36,#0x03
                                    678 ;	../Fogger_Manager/fogger.c:180: interval = 34;
      002A8D 75 6F 22         [24]  679 	mov	_tick_fogger_interval_65536_36,#0x22
                                    680 ;	../Fogger_Manager/fogger.c:181: Playing = RESET;
      002A90 75 69 02         [24]  681 	mov	_Playing,#0x02
      002A93 02 2B C8         [24]  682 	ljmp	00246$
      002A96                        683 00215$:
                                    684 ;	../Fogger_Manager/fogger.c:183: } else if(value < DMX_FOG_3_55){
      002A96 BF 78 00         [24]  685 	cjne	r7,#0x78,00652$
      002A99                        686 00652$:
      002A99 50 19            [24]  687 	jnc	00212$
                                    688 ;	../Fogger_Manager/fogger.c:184: if(duration != 3 || interval != 55){
      002A9B 74 03            [12]  689 	mov	a,#0x03
      002A9D B5 6E 08         [24]  690 	cjne	a,_tick_fogger_duration_65536_36,00169$
      002AA0 74 37            [12]  691 	mov	a,#0x37
      002AA2 B5 6F 03         [24]  692 	cjne	a,_tick_fogger_interval_65536_36,00656$
      002AA5 02 2B C8         [24]  693 	ljmp	00246$
      002AA8                        694 00656$:
      002AA8                        695 00169$:
                                    696 ;	../Fogger_Manager/fogger.c:185: duration = 3;
      002AA8 75 6E 03         [24]  697 	mov	_tick_fogger_duration_65536_36,#0x03
                                    698 ;	../Fogger_Manager/fogger.c:186: interval = 55;
      002AAB 75 6F 37         [24]  699 	mov	_tick_fogger_interval_65536_36,#0x37
                                    700 ;	../Fogger_Manager/fogger.c:187: Playing = RESET;
      002AAE 75 69 02         [24]  701 	mov	_Playing,#0x02
      002AB1 02 2B C8         [24]  702 	ljmp	00246$
      002AB4                        703 00212$:
                                    704 ;	../Fogger_Manager/fogger.c:189: } else if(value < DMX_FOG_8_21){
      002AB4 BF 8C 00         [24]  705 	cjne	r7,#0x8c,00657$
      002AB7                        706 00657$:
      002AB7 50 19            [24]  707 	jnc	00209$
                                    708 ;	../Fogger_Manager/fogger.c:190: if(duration != 8 || interval != 21){
      002AB9 74 08            [12]  709 	mov	a,#0x08
      002ABB B5 6E 08         [24]  710 	cjne	a,_tick_fogger_duration_65536_36,00172$
      002ABE 74 15            [12]  711 	mov	a,#0x15
      002AC0 B5 6F 03         [24]  712 	cjne	a,_tick_fogger_interval_65536_36,00661$
      002AC3 02 2B C8         [24]  713 	ljmp	00246$
      002AC6                        714 00661$:
      002AC6                        715 00172$:
                                    716 ;	../Fogger_Manager/fogger.c:191: duration = 8;
      002AC6 75 6E 08         [24]  717 	mov	_tick_fogger_duration_65536_36,#0x08
                                    718 ;	../Fogger_Manager/fogger.c:192: interval = 21;
      002AC9 75 6F 15         [24]  719 	mov	_tick_fogger_interval_65536_36,#0x15
                                    720 ;	../Fogger_Manager/fogger.c:193: Playing = RESET;
      002ACC 75 69 02         [24]  721 	mov	_Playing,#0x02
      002ACF 02 2B C8         [24]  722 	ljmp	00246$
      002AD2                        723 00209$:
                                    724 ;	../Fogger_Manager/fogger.c:195: } else if(value < DMX_FOG_8_34){
      002AD2 BF A0 00         [24]  725 	cjne	r7,#0xa0,00662$
      002AD5                        726 00662$:
      002AD5 50 19            [24]  727 	jnc	00206$
                                    728 ;	../Fogger_Manager/fogger.c:196: if(duration != 8 || interval != 34){
      002AD7 74 08            [12]  729 	mov	a,#0x08
      002AD9 B5 6E 08         [24]  730 	cjne	a,_tick_fogger_duration_65536_36,00175$
      002ADC 74 22            [12]  731 	mov	a,#0x22
      002ADE B5 6F 03         [24]  732 	cjne	a,_tick_fogger_interval_65536_36,00666$
      002AE1 02 2B C8         [24]  733 	ljmp	00246$
      002AE4                        734 00666$:
      002AE4                        735 00175$:
                                    736 ;	../Fogger_Manager/fogger.c:197: duration = 8;
      002AE4 75 6E 08         [24]  737 	mov	_tick_fogger_duration_65536_36,#0x08
                                    738 ;	../Fogger_Manager/fogger.c:198: interval = 34;
      002AE7 75 6F 22         [24]  739 	mov	_tick_fogger_interval_65536_36,#0x22
                                    740 ;	../Fogger_Manager/fogger.c:199: Playing = RESET;
      002AEA 75 69 02         [24]  741 	mov	_Playing,#0x02
      002AED 02 2B C8         [24]  742 	ljmp	00246$
      002AF0                        743 00206$:
                                    744 ;	../Fogger_Manager/fogger.c:201: } else if(value < DMX_FOG_8_55){
      002AF0 BF B4 00         [24]  745 	cjne	r7,#0xb4,00667$
      002AF3                        746 00667$:
      002AF3 50 19            [24]  747 	jnc	00203$
                                    748 ;	../Fogger_Manager/fogger.c:202: if(duration != 8 || interval != 55){
      002AF5 74 08            [12]  749 	mov	a,#0x08
      002AF7 B5 6E 08         [24]  750 	cjne	a,_tick_fogger_duration_65536_36,00178$
      002AFA 74 37            [12]  751 	mov	a,#0x37
      002AFC B5 6F 03         [24]  752 	cjne	a,_tick_fogger_interval_65536_36,00671$
      002AFF 02 2B C8         [24]  753 	ljmp	00246$
      002B02                        754 00671$:
      002B02                        755 00178$:
                                    756 ;	../Fogger_Manager/fogger.c:203: duration = 8;
      002B02 75 6E 08         [24]  757 	mov	_tick_fogger_duration_65536_36,#0x08
                                    758 ;	../Fogger_Manager/fogger.c:204: interval = 55;
      002B05 75 6F 37         [24]  759 	mov	_tick_fogger_interval_65536_36,#0x37
                                    760 ;	../Fogger_Manager/fogger.c:205: Playing = RESET;
      002B08 75 69 02         [24]  761 	mov	_Playing,#0x02
      002B0B 02 2B C8         [24]  762 	ljmp	00246$
      002B0E                        763 00203$:
                                    764 ;	../Fogger_Manager/fogger.c:207: } else if(value < DMX_FOG_8_89){
      002B0E BF C8 00         [24]  765 	cjne	r7,#0xc8,00672$
      002B11                        766 00672$:
      002B11 50 19            [24]  767 	jnc	00200$
                                    768 ;	../Fogger_Manager/fogger.c:208: if(duration != 8 || interval != 89){
      002B13 74 08            [12]  769 	mov	a,#0x08
      002B15 B5 6E 08         [24]  770 	cjne	a,_tick_fogger_duration_65536_36,00181$
      002B18 74 59            [12]  771 	mov	a,#0x59
      002B1A B5 6F 03         [24]  772 	cjne	a,_tick_fogger_interval_65536_36,00676$
      002B1D 02 2B C8         [24]  773 	ljmp	00246$
      002B20                        774 00676$:
      002B20                        775 00181$:
                                    776 ;	../Fogger_Manager/fogger.c:209: duration = 8;
      002B20 75 6E 08         [24]  777 	mov	_tick_fogger_duration_65536_36,#0x08
                                    778 ;	../Fogger_Manager/fogger.c:210: interval = 89;
      002B23 75 6F 59         [24]  779 	mov	_tick_fogger_interval_65536_36,#0x59
                                    780 ;	../Fogger_Manager/fogger.c:211: Playing = RESET;
      002B26 75 69 02         [24]  781 	mov	_Playing,#0x02
      002B29 02 2B C8         [24]  782 	ljmp	00246$
      002B2C                        783 00200$:
                                    784 ;	../Fogger_Manager/fogger.c:213: } else if(value < DMX_FOG_8_144){
      002B2C BF DC 00         [24]  785 	cjne	r7,#0xdc,00677$
      002B2F                        786 00677$:
      002B2F 50 19            [24]  787 	jnc	00197$
                                    788 ;	../Fogger_Manager/fogger.c:214: if(duration != 8 || interval != 144){
      002B31 74 08            [12]  789 	mov	a,#0x08
      002B33 B5 6E 08         [24]  790 	cjne	a,_tick_fogger_duration_65536_36,00184$
      002B36 74 90            [12]  791 	mov	a,#0x90
      002B38 B5 6F 03         [24]  792 	cjne	a,_tick_fogger_interval_65536_36,00681$
      002B3B 02 2B C8         [24]  793 	ljmp	00246$
      002B3E                        794 00681$:
      002B3E                        795 00184$:
                                    796 ;	../Fogger_Manager/fogger.c:215: duration = 8;
      002B3E 75 6E 08         [24]  797 	mov	_tick_fogger_duration_65536_36,#0x08
                                    798 ;	../Fogger_Manager/fogger.c:216: interval = 144;
      002B41 75 6F 90         [24]  799 	mov	_tick_fogger_interval_65536_36,#0x90
                                    800 ;	../Fogger_Manager/fogger.c:217: Playing = RESET;
      002B44 75 69 02         [24]  801 	mov	_Playing,#0x02
      002B47 02 2B C8         [24]  802 	ljmp	00246$
      002B4A                        803 00197$:
                                    804 ;	../Fogger_Manager/fogger.c:219: } else if(value < DMX_FOG_21_55){
      002B4A BF F0 00         [24]  805 	cjne	r7,#0xf0,00682$
      002B4D                        806 00682$:
      002B4D 50 17            [24]  807 	jnc	00194$
                                    808 ;	../Fogger_Manager/fogger.c:220: if(duration != 21 || interval != 55){
      002B4F 74 15            [12]  809 	mov	a,#0x15
      002B51 B5 6E 07         [24]  810 	cjne	a,_tick_fogger_duration_65536_36,00187$
      002B54 74 37            [12]  811 	mov	a,#0x37
      002B56 B5 6F 02         [24]  812 	cjne	a,_tick_fogger_interval_65536_36,00686$
      002B59 80 6D            [24]  813 	sjmp	00246$
      002B5B                        814 00686$:
      002B5B                        815 00187$:
                                    816 ;	../Fogger_Manager/fogger.c:221: duration = 21;
      002B5B 75 6E 15         [24]  817 	mov	_tick_fogger_duration_65536_36,#0x15
                                    818 ;	../Fogger_Manager/fogger.c:222: interval = 55;
      002B5E 75 6F 37         [24]  819 	mov	_tick_fogger_interval_65536_36,#0x37
                                    820 ;	../Fogger_Manager/fogger.c:223: Playing = RESET;
      002B61 75 69 02         [24]  821 	mov	_Playing,#0x02
      002B64 80 62            [24]  822 	sjmp	00246$
      002B66                        823 00194$:
                                    824 ;	../Fogger_Manager/fogger.c:226: if(duration !=  21|| interval != 89){
      002B66 74 15            [12]  825 	mov	a,#0x15
      002B68 B5 6E 07         [24]  826 	cjne	a,_tick_fogger_duration_65536_36,00190$
      002B6B 74 59            [12]  827 	mov	a,#0x59
      002B6D B5 6F 02         [24]  828 	cjne	a,_tick_fogger_interval_65536_36,00689$
      002B70 80 56            [24]  829 	sjmp	00246$
      002B72                        830 00689$:
      002B72                        831 00190$:
                                    832 ;	../Fogger_Manager/fogger.c:227: duration = 21;
      002B72 75 6E 15         [24]  833 	mov	_tick_fogger_duration_65536_36,#0x15
                                    834 ;	../Fogger_Manager/fogger.c:228: interval = 89;
      002B75 75 6F 59         [24]  835 	mov	_tick_fogger_interval_65536_36,#0x59
                                    836 ;	../Fogger_Manager/fogger.c:229: Playing = RESET;
      002B78 75 69 02         [24]  837 	mov	_Playing,#0x02
      002B7B 80 4B            [24]  838 	sjmp	00246$
      002B7D                        839 00236$:
                                    840 ;	../Fogger_Manager/fogger.c:235: Playing = RESET;
      002B7D 75 69 02         [24]  841 	mov	_Playing,#0x02
      002B80 80 46            [24]  842 	sjmp	00246$
      002B82                        843 00245$:
                                    844 ;	../Fogger_Manager/fogger.c:238: value = get_runtime_data(FOG_POWER_INDEX);
      002B82 75 82 00         [24]  845 	mov	dpl,#0x00
      002B85 12 27 6A         [24]  846 	lcall	_get_runtime_data
      002B88 AF 82            [24]  847 	mov	r7,dpl
                                    848 ;	../Fogger_Manager/fogger.c:242: value = 0x01 << value;
      002B8A 8F F0            [24]  849 	mov	b,r7
      002B8C 05 F0            [12]  850 	inc	b
      002B8E 74 01            [12]  851 	mov	a,#0x01
      002B90 80 02            [24]  852 	sjmp	00692$
      002B92                        853 00690$:
      002B92 25 E0            [12]  854 	add	a,acc
      002B94                        855 00692$:
      002B94 D5 F0 FB         [24]  856 	djnz	b,00690$
                                    857 ;	../Fogger_Manager/fogger.c:244: if(value != power){
      002B97 FF               [12]  858 	mov	r7,a
      002B98 B5 70 02         [24]  859 	cjne	a,_tick_fogger_power_65536_36,00693$
      002B9B 80 05            [24]  860 	sjmp	00239$
      002B9D                        861 00693$:
                                    862 ;	../Fogger_Manager/fogger.c:245: power = value;
      002B9D 8F 70            [24]  863 	mov	_tick_fogger_power_65536_36,r7
                                    864 ;	../Fogger_Manager/fogger.c:246: Playing = RESET;
      002B9F 75 69 02         [24]  865 	mov	_Playing,#0x02
      002BA2                        866 00239$:
                                    867 ;	../Fogger_Manager/fogger.c:249: value = get_runtime_data(FOG_DURATION_INDEX);
      002BA2 75 82 01         [24]  868 	mov	dpl,#0x01
      002BA5 12 27 6A         [24]  869 	lcall	_get_runtime_data
                                    870 ;	../Fogger_Manager/fogger.c:251: if(value != duration){
      002BA8 E5 82            [12]  871 	mov	a,dpl
      002BAA FF               [12]  872 	mov	r7,a
      002BAB B5 6E 02         [24]  873 	cjne	a,_tick_fogger_duration_65536_36,00694$
      002BAE 80 05            [24]  874 	sjmp	00241$
      002BB0                        875 00694$:
                                    876 ;	../Fogger_Manager/fogger.c:252: duration = value;
      002BB0 8F 6E            [24]  877 	mov	_tick_fogger_duration_65536_36,r7
                                    878 ;	../Fogger_Manager/fogger.c:253: Playing = RESET;
      002BB2 75 69 02         [24]  879 	mov	_Playing,#0x02
      002BB5                        880 00241$:
                                    881 ;	../Fogger_Manager/fogger.c:256: value = get_runtime_data(FOG_INTERVAL_INDEX);
      002BB5 75 82 02         [24]  882 	mov	dpl,#0x02
      002BB8 12 27 6A         [24]  883 	lcall	_get_runtime_data
                                    884 ;	../Fogger_Manager/fogger.c:258: if(value != interval){
      002BBB E5 82            [12]  885 	mov	a,dpl
      002BBD FF               [12]  886 	mov	r7,a
      002BBE B5 6F 02         [24]  887 	cjne	a,_tick_fogger_interval_65536_36,00695$
      002BC1 80 05            [24]  888 	sjmp	00246$
      002BC3                        889 00695$:
                                    890 ;	../Fogger_Manager/fogger.c:259: interval = value;
      002BC3 8F 6F            [24]  891 	mov	_tick_fogger_interval_65536_36,r7
                                    892 ;	../Fogger_Manager/fogger.c:260: Playing = RESET;
      002BC5 75 69 02         [24]  893 	mov	_Playing,#0x02
      002BC8                        894 00246$:
                                    895 ;	../Fogger_Manager/fogger.c:265: if(Playing == RESET){
      002BC8 74 02            [12]  896 	mov	a,#0x02
      002BCA B5 69 09         [24]  897 	cjne	a,_Playing,00248$
                                    898 ;	../Fogger_Manager/fogger.c:266: Playing = PAUSE;
      002BCD 75 69 00         [24]  899 	mov	_Playing,#0x00
                                    900 ;	../Fogger_Manager/fogger.c:267: Timer = interval;
      002BD0 85 6F 67         [24]  901 	mov	_Timer,_tick_fogger_interval_65536_36
                                    902 ;	../Fogger_Manager/fogger.c:268: Interval_Or_Duration = INTERVAL;
      002BD3 75 68 00         [24]  903 	mov	_Interval_Or_Duration,#0x00
      002BD6                        904 00248$:
                                    905 ;	../Fogger_Manager/fogger.c:272: if(Playing){
      002BD6 E5 69            [12]  906 	mov	a,_Playing
      002BD8 70 03            [24]  907 	jnz	00698$
      002BDA 02 2C 7D         [24]  908 	ljmp	00270$
      002BDD                        909 00698$:
                                    910 ;	../Fogger_Manager/fogger.c:273: tock++;
      002BDD 05 71            [12]  911 	inc	_tick_fogger_tock_65536_36
                                    912 ;	../Fogger_Manager/fogger.c:275: if(!get_runtime_data(OP_MODE_INDEX)
      002BDF 75 82 10         [24]  913 	mov	dpl,#0x10
      002BE2 12 27 6A         [24]  914 	lcall	_get_runtime_data
      002BE5 E5 82            [12]  915 	mov	a,dpl
      002BE7 70 28            [24]  916 	jnz	00264$
                                    917 ;	../Fogger_Manager/fogger.c:276: && get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_9
      002BE9 75 82 0E         [24]  918 	mov	dpl,#0x0e
      002BEC 12 27 6A         [24]  919 	lcall	_get_runtime_data
      002BEF E5 82            [12]  920 	mov	a,dpl
      002BF1 70 1E            [24]  921 	jnz	00264$
                                    922 ;	../Fogger_Manager/fogger.c:277: && (!duration || !interval)){
      002BF3 E5 6E            [12]  923 	mov	a,_tick_fogger_duration_65536_36
      002BF5 60 04            [24]  924 	jz	00263$
      002BF7 E5 6F            [12]  925 	mov	a,_tick_fogger_interval_65536_36
      002BF9 70 16            [24]  926 	jnz	00264$
      002BFB                        927 00263$:
                                    928 ;	../Fogger_Manager/fogger.c:279: if(!(tock % power)){
      002BFB 85 70 F0         [24]  929 	mov	b,_tick_fogger_power_65536_36
      002BFE E5 71            [12]  930 	mov	a,_tick_fogger_tock_65536_36
      002C00 84               [48]  931 	div	ab
      002C01 E5 F0            [12]  932 	mov	a,b
      002C03 70 06            [24]  933 	jnz	00250$
                                    934 ;	../Fogger_Manager/fogger.c:280: power_pump(PUMP_ON);
      002C05 75 82 01         [24]  935 	mov	dpl,#0x01
      002C08 02 2C 83         [24]  936 	ljmp	_power_pump
      002C0B                        937 00250$:
                                    938 ;	../Fogger_Manager/fogger.c:282: power_pump(PUMP_OFF);
      002C0B 75 82 00         [24]  939 	mov	dpl,#0x00
      002C0E 02 2C 83         [24]  940 	ljmp	_power_pump
      002C11                        941 00264$:
                                    942 ;	../Fogger_Manager/fogger.c:286: if(!(tock % 8)){
      002C11 AE 71            [24]  943 	mov	r6,_tick_fogger_tock_65536_36
      002C13 7F 00            [12]  944 	mov	r7,#0x00
      002C15 75 72 08         [24]  945 	mov	__modsint_PARM_2,#0x08
                                    946 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      002C18 8F 73            [24]  947 	mov	(__modsint_PARM_2 + 1),r7
      002C1A 8E 82            [24]  948 	mov	dpl,r6
      002C1C 8F 83            [24]  949 	mov	dph,r7
      002C1E 12 2E 0D         [24]  950 	lcall	__modsint
      002C21 E5 82            [12]  951 	mov	a,dpl
      002C23 85 83 F0         [24]  952 	mov	b,dph
      002C26 45 F0            [12]  953 	orl	a,b
      002C28 70 02            [24]  954 	jnz	00253$
                                    955 ;	../Fogger_Manager/fogger.c:287: Timer--;
      002C2A 15 67            [12]  956 	dec	_Timer
      002C2C                        957 00253$:
                                    958 ;	../Fogger_Manager/fogger.c:290: if(Timer == 0x00){
      002C2C E5 67            [12]  959 	mov	a,_Timer
      002C2E 70 2E            [24]  960 	jnz	00261$
                                    961 ;	../Fogger_Manager/fogger.c:291: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
      002C30 E5 68            [12]  962 	mov	a,_Interval_Or_Duration
      002C32 70 05            [24]  963 	jnz	00274$
      002C34 7E 01            [12]  964 	mov	r6,#0x01
      002C36 FF               [12]  965 	mov	r7,a
      002C37 80 04            [24]  966 	sjmp	00275$
      002C39                        967 00274$:
      002C39 7E 00            [12]  968 	mov	r6,#0x00
      002C3B 7F 00            [12]  969 	mov	r7,#0x00
      002C3D                        970 00275$:
      002C3D 8E 82            [24]  971 	mov	dpl,r6
      002C3F 12 2C 83         [24]  972 	lcall	_power_pump
                                    973 ;	../Fogger_Manager/fogger.c:292: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
      002C42 E5 68            [12]  974 	mov	a,_Interval_Or_Duration
      002C44 70 04            [24]  975 	jnz	00276$
      002C46 AF 6E            [24]  976 	mov	r7,_tick_fogger_duration_65536_36
      002C48 80 02            [24]  977 	sjmp	00277$
      002C4A                        978 00276$:
      002C4A AF 6F            [24]  979 	mov	r7,_tick_fogger_interval_65536_36
      002C4C                        980 00277$:
      002C4C 8F 67            [24]  981 	mov	_Timer,r7
                                    982 ;	../Fogger_Manager/fogger.c:293: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
      002C4E E5 68            [12]  983 	mov	a,_Interval_Or_Duration
      002C50 70 05            [24]  984 	jnz	00278$
      002C52 7E FF            [12]  985 	mov	r6,#0xff
      002C54 FF               [12]  986 	mov	r7,a
      002C55 80 04            [24]  987 	sjmp	00279$
      002C57                        988 00278$:
      002C57 7E 00            [12]  989 	mov	r6,#0x00
      002C59 7F 00            [12]  990 	mov	r7,#0x00
      002C5B                        991 00279$:
      002C5B 8E 68            [24]  992 	mov	_Interval_Or_Duration,r6
      002C5D 22               [24]  993 	ret
      002C5E                        994 00261$:
                                    995 ;	../Fogger_Manager/fogger.c:295: if(Interval_Or_Duration == INTERVAL){
      002C5E E5 68            [12]  996 	mov	a,_Interval_Or_Duration
                                    997 ;	../Fogger_Manager/fogger.c:296: power_pump(PUMP_OFF);
      002C60 70 05            [24]  998 	jnz	00258$
      002C62 F5 82            [12]  999 	mov	dpl,a
      002C64 02 2C 83         [24] 1000 	ljmp	_power_pump
      002C67                       1001 00258$:
                                   1002 ;	../Fogger_Manager/fogger.c:298: if(!(tock % power)){
      002C67 85 70 F0         [24] 1003 	mov	b,_tick_fogger_power_65536_36
      002C6A E5 71            [12] 1004 	mov	a,_tick_fogger_tock_65536_36
      002C6C 84               [48] 1005 	div	ab
      002C6D E5 F0            [12] 1006 	mov	a,b
      002C6F 70 06            [24] 1007 	jnz	00255$
                                   1008 ;	../Fogger_Manager/fogger.c:299: power_pump(PUMP_ON);
      002C71 75 82 01         [24] 1009 	mov	dpl,#0x01
      002C74 02 2C 83         [24] 1010 	ljmp	_power_pump
      002C77                       1011 00255$:
                                   1012 ;	../Fogger_Manager/fogger.c:301: power_pump(PUMP_OFF);
      002C77 75 82 00         [24] 1013 	mov	dpl,#0x00
      002C7A 02 2C 83         [24] 1014 	ljmp	_power_pump
      002C7D                       1015 00270$:
                                   1016 ;	../Fogger_Manager/fogger.c:309: power_pump(PUMP_OFF);
      002C7D 75 82 00         [24] 1017 	mov	dpl,#0x00
                                   1018 ;	../Fogger_Manager/fogger.c:312: }
      002C80 02 2C 83         [24] 1019 	ljmp	_power_pump
                                   1020 ;------------------------------------------------------------
                                   1021 ;Allocation info for local variables in function 'power_pump'
                                   1022 ;------------------------------------------------------------
                                   1023 ;action                    Allocated to registers r7 
                                   1024 ;------------------------------------------------------------
                                   1025 ;	../Fogger_Manager/fogger.c:314: void power_pump(uint8_t action){
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function power_pump
                                   1028 ;	-----------------------------------------
      002C83                       1029 _power_pump:
      002C83 AF 82            [24] 1030 	mov	r7,dpl
                                   1031 ;	../Fogger_Manager/fogger.c:315: switch (action)
      002C85 BF 01 02         [24] 1032 	cjne	r7,#0x01,00139$
      002C88 80 0A            [24] 1033 	sjmp	00101$
      002C8A                       1034 00139$:
      002C8A BF 02 02         [24] 1035 	cjne	r7,#0x02,00140$
      002C8D 80 1F            [24] 1036 	sjmp	00106$
      002C8F                       1037 00140$:
                                   1038 ;	../Fogger_Manager/fogger.c:317: case PUMP_ON:
      002C8F BF 03 35         [24] 1039 	cjne	r7,#0x03,00111$
      002C92 80 30            [24] 1040 	sjmp	00110$
      002C94                       1041 00101$:
                                   1042 ;	../Fogger_Manager/fogger.c:318: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
      002C94 E5 6B            [12] 1043 	mov	a,_Fluid_Level
      002C96 60 13            [24] 1044 	jz	00103$
      002C98 AE 6A            [24] 1045 	mov	r6,_Heat_Flag
      002C9A 53 06 80         [24] 1046 	anl	ar6,#0x80
      002C9D 7F 00            [12] 1047 	mov	r7,#0x00
      002C9F BE 80 09         [24] 1048 	cjne	r6,#0x80,00103$
      002CA2 BF 00 06         [24] 1049 	cjne	r7,#0x00,00103$
                                   1050 ;	../Fogger_Manager/fogger.c:319: P2_5 = 0;
                                   1051 ;	assignBit
      002CA5 C2 A5            [12] 1052 	clr	_P2_5
                                   1053 ;	../Fogger_Manager/fogger.c:320: Heat_Flag &= ~HOT_FLAG;
      002CA7 53 6A FD         [24] 1054 	anl	_Heat_Flag,#0xfd
      002CAA 22               [24] 1055 	ret
      002CAB                       1056 00103$:
                                   1057 ;	../Fogger_Manager/fogger.c:322: P2_5 = 1;
                                   1058 ;	assignBit
      002CAB D2 A5            [12] 1059 	setb	_P2_5
                                   1060 ;	../Fogger_Manager/fogger.c:324: break;
                                   1061 ;	../Fogger_Manager/fogger.c:325: case PUMP_OVERRIDE:
      002CAD 22               [24] 1062 	ret
      002CAE                       1063 00106$:
                                   1064 ;	../Fogger_Manager/fogger.c:326: if(get_heated() == HEATED){
      002CAE AE 6A            [24] 1065 	mov	r6,_Heat_Flag
      002CB0 53 06 80         [24] 1066 	anl	ar6,#0x80
      002CB3 7F 00            [12] 1067 	mov	r7,#0x00
      002CB5 BE 80 09         [24] 1068 	cjne	r6,#0x80,00108$
      002CB8 BF 00 06         [24] 1069 	cjne	r7,#0x00,00108$
                                   1070 ;	../Fogger_Manager/fogger.c:327: P2_5 = 0;
                                   1071 ;	assignBit
      002CBB C2 A5            [12] 1072 	clr	_P2_5
                                   1073 ;	../Fogger_Manager/fogger.c:328: Heat_Flag &= ~HOT_FLAG;
      002CBD 53 6A FD         [24] 1074 	anl	_Heat_Flag,#0xfd
      002CC0 22               [24] 1075 	ret
      002CC1                       1076 00108$:
                                   1077 ;	../Fogger_Manager/fogger.c:330: P2_5 = 1;
                                   1078 ;	assignBit
      002CC1 D2 A5            [12] 1079 	setb	_P2_5
                                   1080 ;	../Fogger_Manager/fogger.c:332: break;
                                   1081 ;	../Fogger_Manager/fogger.c:333: case PUMP_MASTER_OVERRIDE:
      002CC3 22               [24] 1082 	ret
      002CC4                       1083 00110$:
                                   1084 ;	../Fogger_Manager/fogger.c:334: P2_5 = 0;
                                   1085 ;	assignBit
      002CC4 C2 A5            [12] 1086 	clr	_P2_5
                                   1087 ;	../Fogger_Manager/fogger.c:335: break;
                                   1088 ;	../Fogger_Manager/fogger.c:336: default:
      002CC6 22               [24] 1089 	ret
      002CC7                       1090 00111$:
                                   1091 ;	../Fogger_Manager/fogger.c:337: P2_5 = 1;
                                   1092 ;	assignBit
      002CC7 D2 A5            [12] 1093 	setb	_P2_5
                                   1094 ;	../Fogger_Manager/fogger.c:339: }
                                   1095 ;	../Fogger_Manager/fogger.c:340: }
      002CC9 22               [24] 1096 	ret
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'power_heater'
                                   1099 ;------------------------------------------------------------
                                   1100 ;action                    Allocated to registers r7 
                                   1101 ;------------------------------------------------------------
                                   1102 ;	../Fogger_Manager/fogger.c:342: void power_heater(uint8_t action){
                                   1103 ;	-----------------------------------------
                                   1104 ;	 function power_heater
                                   1105 ;	-----------------------------------------
      002CCA                       1106 _power_heater:
      002CCA AF 82            [24] 1107 	mov	r7,dpl
                                   1108 ;	../Fogger_Manager/fogger.c:343: switch (action)
      002CCC BF 01 08         [24] 1109 	cjne	r7,#0x01,00102$
                                   1110 ;	../Fogger_Manager/fogger.c:346: Heat_Flag |= HEAT_DISABLE_FLAG;
      002CCF AE 6A            [24] 1111 	mov	r6,_Heat_Flag
      002CD1 43 06 80         [24] 1112 	orl	ar6,#0x80
      002CD4 8E 6A            [24] 1113 	mov	_Heat_Flag,r6
                                   1114 ;	../Fogger_Manager/fogger.c:347: break;
                                   1115 ;	../Fogger_Manager/fogger.c:348: default:
      002CD6 22               [24] 1116 	ret
      002CD7                       1117 00102$:
                                   1118 ;	../Fogger_Manager/fogger.c:349: Heat_Flag &= ~HEAT_DISABLE_FLAG;
      002CD7 53 6A 7F         [24] 1119 	anl	_Heat_Flag,#0x7f
                                   1120 ;	../Fogger_Manager/fogger.c:351: }
                                   1121 ;	../Fogger_Manager/fogger.c:352: }
      002CDA 22               [24] 1122 	ret
                                   1123 	.area CSEG    (CODE)
                                   1124 	.area CONST   (CODE)
                                   1125 	.area XINIT   (CODE)
                                   1126 	.area CABS    (ABS,CODE)
