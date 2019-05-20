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
      000069                        211 _Timer::
      000069                        212 	.ds 1
      00006A                        213 _Interval_Or_Duration::
      00006A                        214 	.ds 1
      00006B                        215 _Playing::
      00006B                        216 	.ds 1
      00006C                        217 _Heat_Flag::
      00006C                        218 	.ds 1
      00006D                        219 _Fluid_Level::
      00006D                        220 	.ds 1
      00006E                        221 _tick_fogger_fullCount_65536_36:
      00006E                        222 	.ds 1
      00006F                        223 _tick_fogger_on_65536_36:
      00006F                        224 	.ds 1
      000070                        225 _tick_fogger_duration_65536_36:
      000070                        226 	.ds 1
      000071                        227 _tick_fogger_interval_65536_36:
      000071                        228 	.ds 1
      000072                        229 _tick_fogger_power_65536_36:
      000072                        230 	.ds 1
      000073                        231 _tick_fogger_tock_65536_36:
      000073                        232 	.ds 1
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
      0000FE 75 6E 00         [24]  297 	mov	_tick_fogger_fullCount_65536_36,#0x00
                                    298 ;	../Fogger_Manager/fogger.c:21: static uint8_t on = 0x00; //to toggle lights
      000101 75 6F 00         [24]  299 	mov	_tick_fogger_on_65536_36,#0x00
                                    300 ;	../Fogger_Manager/fogger.c:28: static uint8_t tock = 0;
      000104 75 73 00         [24]  301 	mov	_tick_fogger_tock_65536_36,#0x00
                                    302 ;	../Fogger_Manager/fogger.c:14: uint8_t Playing = PAUSE;
      000107 75 6B 00         [24]  303 	mov	_Playing,#0x00
                                    304 ;	../Fogger_Manager/fogger.c:15: uint8_t Heat_Flag = COLD_FLAG;
      00010A 75 6C 04         [24]  305 	mov	_Heat_Flag,#0x04
                                    306 ;	../Fogger_Manager/fogger.c:16: uint8_t Fluid_Level = TANK_FULL;
      00010D 75 6D 01         [24]  307 	mov	_Fluid_Level,#0x01
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
      002A30                        333 _tick_fogger:
                           000007   334 	ar7 = 0x07
                           000006   335 	ar6 = 0x06
                           000005   336 	ar5 = 0x05
                           000004   337 	ar4 = 0x04
                           000003   338 	ar3 = 0x03
                           000002   339 	ar2 = 0x02
                           000001   340 	ar1 = 0x01
                           000000   341 	ar0 = 0x00
                                    342 ;	../Fogger_Manager/fogger.c:34: temperature = get_adc_value(ADC_TEMPERATURE);
      002A30 75 82 00         [24]  343 	mov	dpl,#0x00
      002A33 12 04 54         [24]  344 	lcall	_get_adc_value
      002A36 AE 82            [24]  345 	mov	r6,dpl
      002A38 AF 83            [24]  346 	mov	r7,dph
                                    347 ;	../Fogger_Manager/fogger.c:36: if(temperature < HEAT_LOW){ /* Turn on heater full blast */
      002A3A C3               [12]  348 	clr	c
      002A3B EE               [12]  349 	mov	a,r6
      002A3C 94 A0            [12]  350 	subb	a,#0xa0
      002A3E EF               [12]  351 	mov	a,r7
      002A3F 94 00            [12]  352 	subb	a,#0x00
      002A41 50 05            [24]  353 	jnc	00107$
                                    354 ;	../Fogger_Manager/fogger.c:37: Heat_Flag &= ~HEATED;
                                    355 ;	../Fogger_Manager/fogger.c:38: Heat_Flag &= ~HOT_FLAG;
      002A43 53 6C 7D         [24]  356 	anl	_Heat_Flag,#(0x7f&0xfd)
      002A46 80 29            [24]  357 	sjmp	00108$
      002A48                        358 00107$:
                                    359 ;	../Fogger_Manager/fogger.c:39: } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
      002A48 C3               [12]  360 	clr	c
      002A49 74 B9            [12]  361 	mov	a,#0xb9
      002A4B 9E               [12]  362 	subb	a,r6
      002A4C E4               [12]  363 	clr	a
      002A4D 9F               [12]  364 	subb	a,r7
      002A4E 50 10            [24]  365 	jnc	00104$
                                    366 ;	../Fogger_Manager/fogger.c:40: Heat_Flag |= HOT_FLAG;
      002A50 AC 6C            [24]  367 	mov	r4,_Heat_Flag
      002A52 43 04 02         [24]  368 	orl	ar4,#0x02
                                    369 ;	../Fogger_Manager/fogger.c:41: Heat_Flag |= HEATED;
      002A55 8C 6C            [24]  370 	mov  _Heat_Flag,r4
      002A57 7D 00            [12]  371 	mov	r5,#0x00
      002A59 43 04 80         [24]  372 	orl	ar4,#0x80
      002A5C 8C 6C            [24]  373 	mov	_Heat_Flag,r4
      002A5E 80 11            [24]  374 	sjmp	00108$
      002A60                        375 00104$:
                                    376 ;	../Fogger_Manager/fogger.c:42: } else if(temperature > HEAT_OK){ /* Set Heated */
      002A60 C3               [12]  377 	clr	c
      002A61 74 AF            [12]  378 	mov	a,#0xaf
      002A63 9E               [12]  379 	subb	a,r6
      002A64 E4               [12]  380 	clr	a
      002A65 9F               [12]  381 	subb	a,r7
      002A66 50 09            [24]  382 	jnc	00108$
                                    383 ;	../Fogger_Manager/fogger.c:43: Heat_Flag |= HEATED;
      002A68 AE 6C            [24]  384 	mov	r6,_Heat_Flag
      002A6A 7F 00            [12]  385 	mov	r7,#0x00
      002A6C 43 06 80         [24]  386 	orl	ar6,#0x80
      002A6F 8E 6C            [24]  387 	mov	_Heat_Flag,r6
      002A71                        388 00108$:
                                    389 ;	../Fogger_Manager/fogger.c:47: if(get_ui_state() != WELCOME_STATE){
      002A71 12 14 72         [24]  390 	lcall	_get_ui_state
      002A74 AF 82            [24]  391 	mov	r7,dpl
      002A76 BF 45 02         [24]  392 	cjne	r7,#0x45,00597$
      002A79 80 1A            [24]  393 	sjmp	00113$
      002A7B                        394 00597$:
                                    395 ;	../Fogger_Manager/fogger.c:48: if(Heat_Flag & HEAT_DISABLE_FLAG){
      002A7B E5 6C            [12]  396 	mov	a,_Heat_Flag
      002A7D 30 E4 06         [24]  397 	jnb	acc.4,00110$
                                    398 ;	../Fogger_Manager/fogger.c:49: P3_4 = 1;
                                    399 ;	assignBit
      002A80 D2 B4            [12]  400 	setb	_P3_4
                                    401 ;	../Fogger_Manager/fogger.c:50: P3_3 = 1;
                                    402 ;	assignBit
      002A82 D2 B3            [12]  403 	setb	_P3_3
      002A84 80 0F            [24]  404 	sjmp	00113$
      002A86                        405 00110$:
                                    406 ;	../Fogger_Manager/fogger.c:52: P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
      002A86 E5 6C            [12]  407 	mov	a,_Heat_Flag
      002A88 03               [12]  408 	rr	a
      002A89 54 01            [12]  409 	anl	a,#0x01
                                    410 ;	assignBit
      002A8B FF               [12]  411 	mov	r7,a
      002A8C 24 FF            [12]  412 	add	a,#0xff
      002A8E 92 B4            [24]  413 	mov	_P3_4,c
                                    414 ;	../Fogger_Manager/fogger.c:53: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
                                    415 ;	assignBit
      002A90 EF               [12]  416 	mov	a,r7
      002A91 24 FF            [12]  417 	add	a,#0xff
      002A93 92 B3            [24]  418 	mov	_P3_3,c
      002A95                        419 00113$:
                                    420 ;	../Fogger_Manager/fogger.c:59: if(!P2_6){ // no fluid
      002A95 20 A6 18         [24]  421 	jb	_P2_6,00125$
                                    422 ;	../Fogger_Manager/fogger.c:60: if(Fluid_Level == TANK_FULL){
      002A98 74 01            [12]  423 	mov	a,#0x01
      002A9A B5 6D 0E         [24]  424 	cjne	a,_Fluid_Level,00117$
                                    425 ;	../Fogger_Manager/fogger.c:61: if(fullCount++ > REFILL_FLUID_COUNT){
      002A9D AF 6E            [24]  426 	mov	r7,_tick_fogger_fullCount_65536_36
      002A9F 05 6E            [12]  427 	inc	_tick_fogger_fullCount_65536_36
      002AA1 EF               [12]  428 	mov	a,r7
      002AA2 24 DD            [12]  429 	add	a,#0xff - 0x22
      002AA4 50 1F            [24]  430 	jnc	00126$
                                    431 ;	../Fogger_Manager/fogger.c:62: Fluid_Level = TANK_EMPTY;
      002AA6 75 6D 00         [24]  432 	mov	_Fluid_Level,#0x00
      002AA9 80 1A            [24]  433 	sjmp	00126$
      002AAB                        434 00117$:
                                    435 ;	../Fogger_Manager/fogger.c:65: fullCount = 0;
      002AAB 75 6E 00         [24]  436 	mov	_tick_fogger_fullCount_65536_36,#0x00
      002AAE 80 15            [24]  437 	sjmp	00126$
      002AB0                        438 00125$:
                                    439 ;	../Fogger_Manager/fogger.c:68: if(Fluid_Level == TANK_EMPTY){
      002AB0 E5 6D            [12]  440 	mov	a,_Fluid_Level
      002AB2 70 0E            [24]  441 	jnz	00122$
                                    442 ;	../Fogger_Manager/fogger.c:69: if(fullCount++ > REFILL_FLUID_COUNT){
      002AB4 AF 6E            [24]  443 	mov	r7,_tick_fogger_fullCount_65536_36
      002AB6 05 6E            [12]  444 	inc	_tick_fogger_fullCount_65536_36
      002AB8 EF               [12]  445 	mov	a,r7
      002AB9 24 DD            [12]  446 	add	a,#0xff - 0x22
      002ABB 50 08            [24]  447 	jnc	00126$
                                    448 ;	../Fogger_Manager/fogger.c:70: Fluid_Level = TANK_FULL;
      002ABD 75 6D 01         [24]  449 	mov	_Fluid_Level,#0x01
      002AC0 80 03            [24]  450 	sjmp	00126$
      002AC2                        451 00122$:
                                    452 ;	../Fogger_Manager/fogger.c:73: fullCount = 0;
      002AC2 75 6E 00         [24]  453 	mov	_tick_fogger_fullCount_65536_36,#0x00
      002AC5                        454 00126$:
                                    455 ;	../Fogger_Manager/fogger.c:78: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
      002AC5 75 82 0F         [24]  456 	mov	dpl,#0x0f
      002AC8 12 28 BF         [24]  457 	lcall	_get_runtime_data
      002ACB E5 82            [12]  458 	mov	a,dpl
      002ACD 70 28            [24]  459 	jnz	00137$
                                    460 ;	../Fogger_Manager/fogger.c:79: if(Fluid_Level == TANK_EMPTY){ //flash on empty
      002ACF E5 6D            [12]  461 	mov	a,_Fluid_Level
      002AD1 70 13            [24]  462 	jnz	00134$
                                    463 ;	../Fogger_Manager/fogger.c:80: on = ~on;
      002AD3 E5 6F            [12]  464 	mov	a,_tick_fogger_on_65536_36
      002AD5 F4               [12]  465 	cpl	a
                                    466 ;	../Fogger_Manager/fogger.c:82: if(on){
      002AD6 F5 6F            [12]  467 	mov	_tick_fogger_on_65536_36,a
      002AD8 60 06            [24]  468 	jz	00128$
                                    469 ;	../Fogger_Manager/fogger.c:83: P1_0 = 0;
                                    470 ;	assignBit
      002ADA C2 90            [12]  471 	clr	_P1_0
                                    472 ;	../Fogger_Manager/fogger.c:84: P2_0 = 1;
                                    473 ;	assignBit
      002ADC D2 A0            [12]  474 	setb	_P2_0
      002ADE 80 1B            [24]  475 	sjmp	00138$
      002AE0                        476 00128$:
                                    477 ;	../Fogger_Manager/fogger.c:86: P1_0 = 1;
                                    478 ;	assignBit
      002AE0 D2 90            [12]  479 	setb	_P1_0
                                    480 ;	../Fogger_Manager/fogger.c:87: P2_0 = 1;
                                    481 ;	assignBit
      002AE2 D2 A0            [12]  482 	setb	_P2_0
      002AE4 80 15            [24]  483 	sjmp	00138$
      002AE6                        484 00134$:
                                    485 ;	../Fogger_Manager/fogger.c:90: if(get_heated()){ //heated not heated
      002AE6 E5 6C            [12]  486 	mov	a,_Heat_Flag
      002AE8 30 E7 06         [24]  487 	jnb	acc.7,00131$
                                    488 ;	../Fogger_Manager/fogger.c:91: P1_0 = 0;
                                    489 ;	assignBit
      002AEB C2 90            [12]  490 	clr	_P1_0
                                    491 ;	../Fogger_Manager/fogger.c:92: P2_0 = 1;
                                    492 ;	assignBit
      002AED D2 A0            [12]  493 	setb	_P2_0
      002AEF 80 0A            [24]  494 	sjmp	00138$
      002AF1                        495 00131$:
                                    496 ;	../Fogger_Manager/fogger.c:94: P1_0 = 1;
                                    497 ;	assignBit
      002AF1 D2 90            [12]  498 	setb	_P1_0
                                    499 ;	../Fogger_Manager/fogger.c:95: P2_0 = 0;
                                    500 ;	assignBit
      002AF3 C2 A0            [12]  501 	clr	_P2_0
      002AF5 80 04            [24]  502 	sjmp	00138$
      002AF7                        503 00137$:
                                    504 ;	../Fogger_Manager/fogger.c:99: P1_0 = 1;
                                    505 ;	assignBit
      002AF7 D2 90            [12]  506 	setb	_P1_0
                                    507 ;	../Fogger_Manager/fogger.c:100: P2_0 = 1;
                                    508 ;	assignBit
      002AF9 D2 A0            [12]  509 	setb	_P2_0
      002AFB                        510 00138$:
                                    511 ;	../Fogger_Manager/fogger.c:105: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002AFB 75 82 10         [24]  512 	mov	dpl,#0x10
      002AFE 12 28 BF         [24]  513 	lcall	_get_runtime_data
      002B01 E5 82            [12]  514 	mov	a,dpl
      002B03 60 03            [24]  515 	jz	00609$
      002B05 02 2C E1         [24]  516 	ljmp	00240$
      002B08                        517 00609$:
                                    518 ;	../Fogger_Manager/fogger.c:106: if(has_dmx()){
      002B08 E5 36            [12]  519 	mov	a,_Has_DMX
      002B0A 70 03            [24]  520 	jnz	00610$
      002B0C 02 2C DC         [24]  521 	ljmp	00231$
      002B0F                        522 00610$:
                                    523 ;	../Fogger_Manager/fogger.c:107: Playing = PLAY;
      002B0F 75 6B 01         [24]  524 	mov	_Playing,#0x01
                                    525 ;	../Fogger_Manager/fogger.c:109: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
      002B12 75 82 0E         [24]  526 	mov	dpl,#0x0e
      002B15 12 28 BF         [24]  527 	lcall	_get_runtime_data
      002B18 E5 82            [12]  528 	mov	a,dpl
      002B1A 70 73            [24]  529 	jnz	00228$
                                    530 ;	../Fogger_Manager/fogger.c:111: value = get_dmx_value(DMX_M11_POWER_INDEX);
      002B1C AF 2D            [24]  531 	mov	r7,_DMX
                                    532 ;	../Fogger_Manager/fogger.c:113: if(value < DMX_FOG_OFF){
      002B1E BF 14 00         [24]  533 	cjne	r7,#0x14,00612$
      002B21                        534 00612$:
      002B21 50 05            [24]  535 	jnc	00146$
                                    536 ;	../Fogger_Manager/fogger.c:114: Playing = PAUSE;
      002B23 75 6B 00         [24]  537 	mov	_Playing,#0x00
      002B26 80 14            [24]  538 	sjmp	00147$
      002B28                        539 00146$:
                                    540 ;	../Fogger_Manager/fogger.c:115: } else if(value < DMX_FOG_LOW){
      002B28 BF 64 00         [24]  541 	cjne	r7,#0x64,00614$
      002B2B                        542 00614$:
      002B2B 50 04            [24]  543 	jnc	00143$
                                    544 ;	../Fogger_Manager/fogger.c:116: value = FOG_LO;
      002B2D 7F 04            [12]  545 	mov	r7,#0x04
      002B2F 80 0B            [24]  546 	sjmp	00147$
      002B31                        547 00143$:
                                    548 ;	../Fogger_Manager/fogger.c:117: } else if(value < DMX_FOG_MEDIUM){
      002B31 BF C8 00         [24]  549 	cjne	r7,#0xc8,00616$
      002B34                        550 00616$:
      002B34 50 04            [24]  551 	jnc	00140$
                                    552 ;	../Fogger_Manager/fogger.c:118: value = FOG_MED;
      002B36 7F 02            [12]  553 	mov	r7,#0x02
      002B38 80 02            [24]  554 	sjmp	00147$
      002B3A                        555 00140$:
                                    556 ;	../Fogger_Manager/fogger.c:120: value = FOG_HIGH;
      002B3A 7F 01            [12]  557 	mov	r7,#0x01
      002B3C                        558 00147$:
                                    559 ;	../Fogger_Manager/fogger.c:123: if(value != power){
      002B3C EF               [12]  560 	mov	a,r7
      002B3D B5 72 02         [24]  561 	cjne	a,_tick_fogger_power_65536_36,00618$
      002B40 80 02            [24]  562 	sjmp	00149$
      002B42                        563 00618$:
                                    564 ;	../Fogger_Manager/fogger.c:124: power = value;
      002B42 8F 72            [24]  565 	mov	_tick_fogger_power_65536_36,r7
      002B44                        566 00149$:
                                    567 ;	../Fogger_Manager/fogger.c:127: value = get_dmx_value(DMX_M11_DURATION_INDEX);
                                    568 ;	../Fogger_Manager/fogger.c:129: if(value != duration){
      002B44 E5 2E            [12]  569 	mov	a,(_DMX + 0x0001)
      002B46 FF               [12]  570 	mov	r7,a
      002B47 B5 70 02         [24]  571 	cjne	a,_tick_fogger_duration_65536_36,00619$
      002B4A 80 08            [24]  572 	sjmp	00151$
      002B4C                        573 00619$:
                                    574 ;	../Fogger_Manager/fogger.c:130: duration = value;
      002B4C 8F 70            [24]  575 	mov	_tick_fogger_duration_65536_36,r7
                                    576 ;	../Fogger_Manager/fogger.c:131: Timer = duration;
      002B4E 85 70 69         [24]  577 	mov	_Timer,_tick_fogger_duration_65536_36
                                    578 ;	../Fogger_Manager/fogger.c:132: Interval_Or_Duration = DURATION;
      002B51 75 6A FF         [24]  579 	mov	_Interval_Or_Duration,#0xff
      002B54                        580 00151$:
                                    581 ;	../Fogger_Manager/fogger.c:135: value = get_dmx_value(DMX_M11_INTERVAL_INDEX);
                                    582 ;	../Fogger_Manager/fogger.c:137: if(value != interval){
      002B54 E5 2F            [12]  583 	mov	a,(_DMX + 0x0002)
      002B56 FF               [12]  584 	mov	r7,a
      002B57 B5 71 02         [24]  585 	cjne	a,_tick_fogger_interval_65536_36,00620$
      002B5A 80 05            [24]  586 	sjmp	00153$
      002B5C                        587 00620$:
                                    588 ;	../Fogger_Manager/fogger.c:138: interval = value;
      002B5C 8F 71            [24]  589 	mov	_tick_fogger_interval_65536_36,r7
                                    590 ;	../Fogger_Manager/fogger.c:139: Playing = RESET;
      002B5E 75 6B 02         [24]  591 	mov	_Playing,#0x02
      002B61                        592 00153$:
                                    593 ;	../Fogger_Manager/fogger.c:142: value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);
      002B61 AF 37            [24]  594 	mov	r7,(_DMX + 0x000a)
                                    595 ;	../Fogger_Manager/fogger.c:144: if(value >= DMX_HEATER_OFF && get_heater_enabled()){
      002B63 BF 80 00         [24]  596 	cjne	r7,#0x80,00621$
      002B66                        597 00621$:
      002B66 40 0E            [24]  598 	jc	00158$
      002B68 E5 6C            [12]  599 	mov	a,_Heat_Flag
      002B6A 20 E4 09         [24]  600 	jb	acc.4,00158$
                                    601 ;	../Fogger_Manager/fogger.c:145: power_heater(HEATER_DISABLE);
      002B6D 75 82 01         [24]  602 	mov	dpl,#0x01
      002B70 12 2E 1F         [24]  603 	lcall	_power_heater
      002B73 02 2D 27         [24]  604 	ljmp	00241$
      002B76                        605 00158$:
                                    606 ;	../Fogger_Manager/fogger.c:146: } else if(value < DMX_HEATER_OFF && !get_heater_enabled()){
      002B76 BF 80 00         [24]  607 	cjne	r7,#0x80,00624$
      002B79                        608 00624$:
      002B79 40 03            [24]  609 	jc	00625$
      002B7B 02 2D 27         [24]  610 	ljmp	00241$
      002B7E                        611 00625$:
      002B7E E5 6C            [12]  612 	mov	a,_Heat_Flag
      002B80 20 E4 03         [24]  613 	jb	acc.4,00626$
      002B83 02 2D 27         [24]  614 	ljmp	00241$
      002B86                        615 00626$:
                                    616 ;	../Fogger_Manager/fogger.c:147: power_heater(HEATER_ENABLE);
      002B86 75 82 00         [24]  617 	mov	dpl,#0x00
      002B89 12 2E 1F         [24]  618 	lcall	_power_heater
      002B8C 02 2D 27         [24]  619 	ljmp	00241$
      002B8F                        620 00228$:
                                    621 ;	../Fogger_Manager/fogger.c:154: power = FOG_HIGH;
      002B8F 75 72 01         [24]  622 	mov	_tick_fogger_power_65536_36,#0x01
                                    623 ;	../Fogger_Manager/fogger.c:156: value = get_dmx_value(DMX_M1_FOG_INDEX);
      002B92 AF 2D            [24]  624 	mov	r7,_DMX
                                    625 ;	../Fogger_Manager/fogger.c:159: if(value < DMX_FOG_OFF){
      002B94 BF 14 00         [24]  626 	cjne	r7,#0x14,00627$
      002B97                        627 00627$:
      002B97 50 06            [24]  628 	jnc	00225$
                                    629 ;	../Fogger_Manager/fogger.c:160: Playing = PAUSE;
      002B99 75 6B 00         [24]  630 	mov	_Playing,#0x00
      002B9C 02 2D 27         [24]  631 	ljmp	00241$
      002B9F                        632 00225$:
                                    633 ;	../Fogger_Manager/fogger.c:162: } else if(value < DMX_FOG_3_13){
      002B9F BF 28 00         [24]  634 	cjne	r7,#0x28,00629$
      002BA2                        635 00629$:
      002BA2 50 19            [24]  636 	jnc	00222$
                                    637 ;	../Fogger_Manager/fogger.c:163: if(duration != 3 || interval != 13){
      002BA4 74 03            [12]  638 	mov	a,#0x03
      002BA6 B5 70 08         [24]  639 	cjne	a,_tick_fogger_duration_65536_36,00161$
      002BA9 74 0D            [12]  640 	mov	a,#0x0d
      002BAB B5 71 03         [24]  641 	cjne	a,_tick_fogger_interval_65536_36,00633$
      002BAE 02 2D 27         [24]  642 	ljmp	00241$
      002BB1                        643 00633$:
      002BB1                        644 00161$:
                                    645 ;	../Fogger_Manager/fogger.c:164: duration = 3;
      002BB1 75 70 03         [24]  646 	mov	_tick_fogger_duration_65536_36,#0x03
                                    647 ;	../Fogger_Manager/fogger.c:165: interval = 13;
      002BB4 75 71 0D         [24]  648 	mov	_tick_fogger_interval_65536_36,#0x0d
                                    649 ;	../Fogger_Manager/fogger.c:166: Playing = RESET;
      002BB7 75 6B 02         [24]  650 	mov	_Playing,#0x02
      002BBA 02 2D 27         [24]  651 	ljmp	00241$
      002BBD                        652 00222$:
                                    653 ;	../Fogger_Manager/fogger.c:168: } else if(value < DMX_FOG_3_21){
      002BBD BF 3C 00         [24]  654 	cjne	r7,#0x3c,00634$
      002BC0                        655 00634$:
      002BC0 50 19            [24]  656 	jnc	00219$
                                    657 ;	../Fogger_Manager/fogger.c:169: if(duration != 3 || interval != 21){
      002BC2 74 03            [12]  658 	mov	a,#0x03
      002BC4 B5 70 08         [24]  659 	cjne	a,_tick_fogger_duration_65536_36,00164$
      002BC7 74 15            [12]  660 	mov	a,#0x15
      002BC9 B5 71 03         [24]  661 	cjne	a,_tick_fogger_interval_65536_36,00638$
      002BCC 02 2D 27         [24]  662 	ljmp	00241$
      002BCF                        663 00638$:
      002BCF                        664 00164$:
                                    665 ;	../Fogger_Manager/fogger.c:170: duration = 3;
      002BCF 75 70 03         [24]  666 	mov	_tick_fogger_duration_65536_36,#0x03
                                    667 ;	../Fogger_Manager/fogger.c:171: interval = 21;
      002BD2 75 71 15         [24]  668 	mov	_tick_fogger_interval_65536_36,#0x15
                                    669 ;	../Fogger_Manager/fogger.c:172: Playing = RESET;
      002BD5 75 6B 02         [24]  670 	mov	_Playing,#0x02
      002BD8 02 2D 27         [24]  671 	ljmp	00241$
      002BDB                        672 00219$:
                                    673 ;	../Fogger_Manager/fogger.c:174: } else if(value < DMX_FOG_3_34){
      002BDB BF 50 00         [24]  674 	cjne	r7,#0x50,00639$
      002BDE                        675 00639$:
      002BDE 50 19            [24]  676 	jnc	00216$
                                    677 ;	../Fogger_Manager/fogger.c:175: if(duration != 3 || interval != 34){
      002BE0 74 03            [12]  678 	mov	a,#0x03
      002BE2 B5 70 08         [24]  679 	cjne	a,_tick_fogger_duration_65536_36,00167$
      002BE5 74 22            [12]  680 	mov	a,#0x22
      002BE7 B5 71 03         [24]  681 	cjne	a,_tick_fogger_interval_65536_36,00643$
      002BEA 02 2D 27         [24]  682 	ljmp	00241$
      002BED                        683 00643$:
      002BED                        684 00167$:
                                    685 ;	../Fogger_Manager/fogger.c:176: duration = 3;
      002BED 75 70 03         [24]  686 	mov	_tick_fogger_duration_65536_36,#0x03
                                    687 ;	../Fogger_Manager/fogger.c:177: interval = 34;
      002BF0 75 71 22         [24]  688 	mov	_tick_fogger_interval_65536_36,#0x22
                                    689 ;	../Fogger_Manager/fogger.c:178: Playing = RESET;
      002BF3 75 6B 02         [24]  690 	mov	_Playing,#0x02
      002BF6 02 2D 27         [24]  691 	ljmp	00241$
      002BF9                        692 00216$:
                                    693 ;	../Fogger_Manager/fogger.c:180: } else if(value < DMX_FOG_3_55){
      002BF9 BF 64 00         [24]  694 	cjne	r7,#0x64,00644$
      002BFC                        695 00644$:
      002BFC 50 19            [24]  696 	jnc	00213$
                                    697 ;	../Fogger_Manager/fogger.c:181: if(duration != 3 || interval != 55){
      002BFE 74 03            [12]  698 	mov	a,#0x03
      002C00 B5 70 08         [24]  699 	cjne	a,_tick_fogger_duration_65536_36,00170$
      002C03 74 37            [12]  700 	mov	a,#0x37
      002C05 B5 71 03         [24]  701 	cjne	a,_tick_fogger_interval_65536_36,00648$
      002C08 02 2D 27         [24]  702 	ljmp	00241$
      002C0B                        703 00648$:
      002C0B                        704 00170$:
                                    705 ;	../Fogger_Manager/fogger.c:182: duration = 3;
      002C0B 75 70 03         [24]  706 	mov	_tick_fogger_duration_65536_36,#0x03
                                    707 ;	../Fogger_Manager/fogger.c:183: interval = 55;
      002C0E 75 71 37         [24]  708 	mov	_tick_fogger_interval_65536_36,#0x37
                                    709 ;	../Fogger_Manager/fogger.c:184: Playing = RESET;
      002C11 75 6B 02         [24]  710 	mov	_Playing,#0x02
      002C14 02 2D 27         [24]  711 	ljmp	00241$
      002C17                        712 00213$:
                                    713 ;	../Fogger_Manager/fogger.c:186: } else if(value < DMX_FOG_8_21){
      002C17 BF 78 00         [24]  714 	cjne	r7,#0x78,00649$
      002C1A                        715 00649$:
      002C1A 50 19            [24]  716 	jnc	00210$
                                    717 ;	../Fogger_Manager/fogger.c:187: if(duration != 8 || interval != 21){
      002C1C 74 08            [12]  718 	mov	a,#0x08
      002C1E B5 70 08         [24]  719 	cjne	a,_tick_fogger_duration_65536_36,00173$
      002C21 74 15            [12]  720 	mov	a,#0x15
      002C23 B5 71 03         [24]  721 	cjne	a,_tick_fogger_interval_65536_36,00653$
      002C26 02 2D 27         [24]  722 	ljmp	00241$
      002C29                        723 00653$:
      002C29                        724 00173$:
                                    725 ;	../Fogger_Manager/fogger.c:188: duration = 8;
      002C29 75 70 08         [24]  726 	mov	_tick_fogger_duration_65536_36,#0x08
                                    727 ;	../Fogger_Manager/fogger.c:189: interval = 21;
      002C2C 75 71 15         [24]  728 	mov	_tick_fogger_interval_65536_36,#0x15
                                    729 ;	../Fogger_Manager/fogger.c:190: Playing = RESET;
      002C2F 75 6B 02         [24]  730 	mov	_Playing,#0x02
      002C32 02 2D 27         [24]  731 	ljmp	00241$
      002C35                        732 00210$:
                                    733 ;	../Fogger_Manager/fogger.c:192: } else if(value < DMX_FOG_8_34){
      002C35 BF 8C 00         [24]  734 	cjne	r7,#0x8c,00654$
      002C38                        735 00654$:
      002C38 50 19            [24]  736 	jnc	00207$
                                    737 ;	../Fogger_Manager/fogger.c:193: if(duration != 8 || interval != 34){
      002C3A 74 08            [12]  738 	mov	a,#0x08
      002C3C B5 70 08         [24]  739 	cjne	a,_tick_fogger_duration_65536_36,00176$
      002C3F 74 22            [12]  740 	mov	a,#0x22
      002C41 B5 71 03         [24]  741 	cjne	a,_tick_fogger_interval_65536_36,00658$
      002C44 02 2D 27         [24]  742 	ljmp	00241$
      002C47                        743 00658$:
      002C47                        744 00176$:
                                    745 ;	../Fogger_Manager/fogger.c:194: duration = 8;
      002C47 75 70 08         [24]  746 	mov	_tick_fogger_duration_65536_36,#0x08
                                    747 ;	../Fogger_Manager/fogger.c:195: interval = 34;
      002C4A 75 71 22         [24]  748 	mov	_tick_fogger_interval_65536_36,#0x22
                                    749 ;	../Fogger_Manager/fogger.c:196: Playing = RESET;
      002C4D 75 6B 02         [24]  750 	mov	_Playing,#0x02
      002C50 02 2D 27         [24]  751 	ljmp	00241$
      002C53                        752 00207$:
                                    753 ;	../Fogger_Manager/fogger.c:198: } else if(value < DMX_FOG_8_55){
      002C53 BF A0 00         [24]  754 	cjne	r7,#0xa0,00659$
      002C56                        755 00659$:
      002C56 50 19            [24]  756 	jnc	00204$
                                    757 ;	../Fogger_Manager/fogger.c:199: if(duration != 8 || interval != 55){
      002C58 74 08            [12]  758 	mov	a,#0x08
      002C5A B5 70 08         [24]  759 	cjne	a,_tick_fogger_duration_65536_36,00179$
      002C5D 74 37            [12]  760 	mov	a,#0x37
      002C5F B5 71 03         [24]  761 	cjne	a,_tick_fogger_interval_65536_36,00663$
      002C62 02 2D 27         [24]  762 	ljmp	00241$
      002C65                        763 00663$:
      002C65                        764 00179$:
                                    765 ;	../Fogger_Manager/fogger.c:200: duration = 8;
      002C65 75 70 08         [24]  766 	mov	_tick_fogger_duration_65536_36,#0x08
                                    767 ;	../Fogger_Manager/fogger.c:201: interval = 55;
      002C68 75 71 37         [24]  768 	mov	_tick_fogger_interval_65536_36,#0x37
                                    769 ;	../Fogger_Manager/fogger.c:202: Playing = RESET;
      002C6B 75 6B 02         [24]  770 	mov	_Playing,#0x02
      002C6E 02 2D 27         [24]  771 	ljmp	00241$
      002C71                        772 00204$:
                                    773 ;	../Fogger_Manager/fogger.c:204: } else if(value < DMX_FOG_8_89){
      002C71 BF B4 00         [24]  774 	cjne	r7,#0xb4,00664$
      002C74                        775 00664$:
      002C74 50 19            [24]  776 	jnc	00201$
                                    777 ;	../Fogger_Manager/fogger.c:205: if(duration != 8 || interval != 89){
      002C76 74 08            [12]  778 	mov	a,#0x08
      002C78 B5 70 08         [24]  779 	cjne	a,_tick_fogger_duration_65536_36,00182$
      002C7B 74 59            [12]  780 	mov	a,#0x59
      002C7D B5 71 03         [24]  781 	cjne	a,_tick_fogger_interval_65536_36,00668$
      002C80 02 2D 27         [24]  782 	ljmp	00241$
      002C83                        783 00668$:
      002C83                        784 00182$:
                                    785 ;	../Fogger_Manager/fogger.c:206: duration = 8;
      002C83 75 70 08         [24]  786 	mov	_tick_fogger_duration_65536_36,#0x08
                                    787 ;	../Fogger_Manager/fogger.c:207: interval = 89;
      002C86 75 71 59         [24]  788 	mov	_tick_fogger_interval_65536_36,#0x59
                                    789 ;	../Fogger_Manager/fogger.c:208: Playing = RESET;
      002C89 75 6B 02         [24]  790 	mov	_Playing,#0x02
      002C8C 02 2D 27         [24]  791 	ljmp	00241$
      002C8F                        792 00201$:
                                    793 ;	../Fogger_Manager/fogger.c:210: } else if(value < DMX_FOG_8_144){
      002C8F BF C8 00         [24]  794 	cjne	r7,#0xc8,00669$
      002C92                        795 00669$:
      002C92 50 19            [24]  796 	jnc	00198$
                                    797 ;	../Fogger_Manager/fogger.c:211: if(duration != 8 || interval != 144){
      002C94 74 08            [12]  798 	mov	a,#0x08
      002C96 B5 70 08         [24]  799 	cjne	a,_tick_fogger_duration_65536_36,00185$
      002C99 74 90            [12]  800 	mov	a,#0x90
      002C9B B5 71 03         [24]  801 	cjne	a,_tick_fogger_interval_65536_36,00673$
      002C9E 02 2D 27         [24]  802 	ljmp	00241$
      002CA1                        803 00673$:
      002CA1                        804 00185$:
                                    805 ;	../Fogger_Manager/fogger.c:212: duration = 8;
      002CA1 75 70 08         [24]  806 	mov	_tick_fogger_duration_65536_36,#0x08
                                    807 ;	../Fogger_Manager/fogger.c:213: interval = 144;
      002CA4 75 71 90         [24]  808 	mov	_tick_fogger_interval_65536_36,#0x90
                                    809 ;	../Fogger_Manager/fogger.c:214: Playing = RESET;
      002CA7 75 6B 02         [24]  810 	mov	_Playing,#0x02
      002CAA 02 2D 27         [24]  811 	ljmp	00241$
      002CAD                        812 00198$:
                                    813 ;	../Fogger_Manager/fogger.c:216: } else if(value < DMX_FOG_21_55){
      002CAD BF DC 00         [24]  814 	cjne	r7,#0xdc,00674$
      002CB0                        815 00674$:
      002CB0 50 17            [24]  816 	jnc	00195$
                                    817 ;	../Fogger_Manager/fogger.c:217: if(duration != 21 || interval != 55){
      002CB2 74 15            [12]  818 	mov	a,#0x15
      002CB4 B5 70 07         [24]  819 	cjne	a,_tick_fogger_duration_65536_36,00188$
      002CB7 74 37            [12]  820 	mov	a,#0x37
      002CB9 B5 71 02         [24]  821 	cjne	a,_tick_fogger_interval_65536_36,00678$
      002CBC 80 69            [24]  822 	sjmp	00241$
      002CBE                        823 00678$:
      002CBE                        824 00188$:
                                    825 ;	../Fogger_Manager/fogger.c:218: duration = 21;
      002CBE 75 70 15         [24]  826 	mov	_tick_fogger_duration_65536_36,#0x15
                                    827 ;	../Fogger_Manager/fogger.c:219: interval = 55;
      002CC1 75 71 37         [24]  828 	mov	_tick_fogger_interval_65536_36,#0x37
                                    829 ;	../Fogger_Manager/fogger.c:220: Playing = RESET;
      002CC4 75 6B 02         [24]  830 	mov	_Playing,#0x02
      002CC7 80 5E            [24]  831 	sjmp	00241$
      002CC9                        832 00195$:
                                    833 ;	../Fogger_Manager/fogger.c:223: if(duration !=  0 || interval != 0){
      002CC9 E5 70            [12]  834 	mov	a,_tick_fogger_duration_65536_36
      002CCB 70 04            [24]  835 	jnz	00191$
      002CCD E5 71            [12]  836 	mov	a,_tick_fogger_interval_65536_36
      002CCF 60 56            [24]  837 	jz	00241$
      002CD1                        838 00191$:
                                    839 ;	../Fogger_Manager/fogger.c:224: duration = 0;
      002CD1 75 70 00         [24]  840 	mov	_tick_fogger_duration_65536_36,#0x00
                                    841 ;	../Fogger_Manager/fogger.c:225: interval = 0;
      002CD4 75 71 00         [24]  842 	mov	_tick_fogger_interval_65536_36,#0x00
                                    843 ;	../Fogger_Manager/fogger.c:226: Playing = RESET;
      002CD7 75 6B 02         [24]  844 	mov	_Playing,#0x02
      002CDA 80 4B            [24]  845 	sjmp	00241$
      002CDC                        846 00231$:
                                    847 ;	../Fogger_Manager/fogger.c:232: Playing = RESET;
      002CDC 75 6B 02         [24]  848 	mov	_Playing,#0x02
      002CDF 80 46            [24]  849 	sjmp	00241$
      002CE1                        850 00240$:
                                    851 ;	../Fogger_Manager/fogger.c:235: value = get_runtime_data(FOG_POWER_INDEX);
      002CE1 75 82 00         [24]  852 	mov	dpl,#0x00
      002CE4 12 28 BF         [24]  853 	lcall	_get_runtime_data
      002CE7 AF 82            [24]  854 	mov	r7,dpl
                                    855 ;	../Fogger_Manager/fogger.c:239: value = 0x01 << value;
      002CE9 8F F0            [24]  856 	mov	b,r7
      002CEB 05 F0            [12]  857 	inc	b
      002CED 74 01            [12]  858 	mov	a,#0x01
      002CEF 80 02            [24]  859 	sjmp	00683$
      002CF1                        860 00681$:
      002CF1 25 E0            [12]  861 	add	a,acc
      002CF3                        862 00683$:
      002CF3 D5 F0 FB         [24]  863 	djnz	b,00681$
                                    864 ;	../Fogger_Manager/fogger.c:241: if(value != power){
      002CF6 FF               [12]  865 	mov	r7,a
      002CF7 B5 72 02         [24]  866 	cjne	a,_tick_fogger_power_65536_36,00684$
      002CFA 80 05            [24]  867 	sjmp	00234$
      002CFC                        868 00684$:
                                    869 ;	../Fogger_Manager/fogger.c:242: power = value;
      002CFC 8F 72            [24]  870 	mov	_tick_fogger_power_65536_36,r7
                                    871 ;	../Fogger_Manager/fogger.c:243: Playing = RESET;
      002CFE 75 6B 02         [24]  872 	mov	_Playing,#0x02
      002D01                        873 00234$:
                                    874 ;	../Fogger_Manager/fogger.c:246: value = get_runtime_data(FOG_DURATION_INDEX);
      002D01 75 82 01         [24]  875 	mov	dpl,#0x01
      002D04 12 28 BF         [24]  876 	lcall	_get_runtime_data
                                    877 ;	../Fogger_Manager/fogger.c:248: if(value != duration){
      002D07 E5 82            [12]  878 	mov	a,dpl
      002D09 FF               [12]  879 	mov	r7,a
      002D0A B5 70 02         [24]  880 	cjne	a,_tick_fogger_duration_65536_36,00685$
      002D0D 80 05            [24]  881 	sjmp	00236$
      002D0F                        882 00685$:
                                    883 ;	../Fogger_Manager/fogger.c:249: duration = value;
      002D0F 8F 70            [24]  884 	mov	_tick_fogger_duration_65536_36,r7
                                    885 ;	../Fogger_Manager/fogger.c:250: Playing = RESET;
      002D11 75 6B 02         [24]  886 	mov	_Playing,#0x02
      002D14                        887 00236$:
                                    888 ;	../Fogger_Manager/fogger.c:253: value = get_runtime_data(FOG_INTERVAL_INDEX);
      002D14 75 82 02         [24]  889 	mov	dpl,#0x02
      002D17 12 28 BF         [24]  890 	lcall	_get_runtime_data
                                    891 ;	../Fogger_Manager/fogger.c:255: if(value != interval){
      002D1A E5 82            [12]  892 	mov	a,dpl
      002D1C FF               [12]  893 	mov	r7,a
      002D1D B5 71 02         [24]  894 	cjne	a,_tick_fogger_interval_65536_36,00686$
      002D20 80 05            [24]  895 	sjmp	00241$
      002D22                        896 00686$:
                                    897 ;	../Fogger_Manager/fogger.c:256: interval = value;
      002D22 8F 71            [24]  898 	mov	_tick_fogger_interval_65536_36,r7
                                    899 ;	../Fogger_Manager/fogger.c:257: Playing = RESET;
      002D24 75 6B 02         [24]  900 	mov	_Playing,#0x02
      002D27                        901 00241$:
                                    902 ;	../Fogger_Manager/fogger.c:262: if(Playing == RESET){
      002D27 74 02            [12]  903 	mov	a,#0x02
      002D29 B5 6B 09         [24]  904 	cjne	a,_Playing,00243$
                                    905 ;	../Fogger_Manager/fogger.c:263: Playing = PAUSE;
      002D2C 75 6B 00         [24]  906 	mov	_Playing,#0x00
                                    907 ;	../Fogger_Manager/fogger.c:264: Timer = interval;
      002D2F 85 71 69         [24]  908 	mov	_Timer,_tick_fogger_interval_65536_36
                                    909 ;	../Fogger_Manager/fogger.c:265: Interval_Or_Duration = INTERVAL;
      002D32 75 6A 00         [24]  910 	mov	_Interval_Or_Duration,#0x00
      002D35                        911 00243$:
                                    912 ;	../Fogger_Manager/fogger.c:269: if(Playing){
      002D35 E5 6B            [12]  913 	mov	a,_Playing
      002D37 70 03            [24]  914 	jnz	00689$
      002D39 02 2D D2         [24]  915 	ljmp	00264$
      002D3C                        916 00689$:
                                    917 ;	../Fogger_Manager/fogger.c:270: tock++;
      002D3C 05 73            [12]  918 	inc	_tick_fogger_tock_65536_36
                                    919 ;	../Fogger_Manager/fogger.c:272: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
      002D3E 75 82 10         [24]  920 	mov	dpl,#0x10
      002D41 12 28 BF         [24]  921 	lcall	_get_runtime_data
      002D44 E5 82            [12]  922 	mov	a,dpl
      002D46 70 1E            [24]  923 	jnz	00259$
                                    924 ;	../Fogger_Manager/fogger.c:273: && (!duration || !interval)){
      002D48 E5 70            [12]  925 	mov	a,_tick_fogger_duration_65536_36
      002D4A 60 04            [24]  926 	jz	00258$
      002D4C E5 71            [12]  927 	mov	a,_tick_fogger_interval_65536_36
      002D4E 70 16            [24]  928 	jnz	00259$
      002D50                        929 00258$:
                                    930 ;	../Fogger_Manager/fogger.c:275: if(!(tock % power)){
      002D50 85 72 F0         [24]  931 	mov	b,_tick_fogger_power_65536_36
      002D53 E5 73            [12]  932 	mov	a,_tick_fogger_tock_65536_36
      002D55 84               [48]  933 	div	ab
      002D56 E5 F0            [12]  934 	mov	a,b
      002D58 70 06            [24]  935 	jnz	00245$
                                    936 ;	../Fogger_Manager/fogger.c:276: power_pump(PUMP_ON);
      002D5A 75 82 01         [24]  937 	mov	dpl,#0x01
      002D5D 02 2D D8         [24]  938 	ljmp	_power_pump
      002D60                        939 00245$:
                                    940 ;	../Fogger_Manager/fogger.c:278: power_pump(PUMP_OFF);
      002D60 75 82 00         [24]  941 	mov	dpl,#0x00
      002D63 02 2D D8         [24]  942 	ljmp	_power_pump
      002D66                        943 00259$:
                                    944 ;	../Fogger_Manager/fogger.c:282: if(!(tock % 8)){
      002D66 AE 73            [24]  945 	mov	r6,_tick_fogger_tock_65536_36
      002D68 7F 00            [12]  946 	mov	r7,#0x00
      002D6A 75 74 08         [24]  947 	mov	__modsint_PARM_2,#0x08
                                    948 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      002D6D 8F 75            [24]  949 	mov	(__modsint_PARM_2 + 1),r7
      002D6F 8E 82            [24]  950 	mov	dpl,r6
      002D71 8F 83            [24]  951 	mov	dph,r7
      002D73 12 2F 62         [24]  952 	lcall	__modsint
      002D76 E5 82            [12]  953 	mov	a,dpl
      002D78 85 83 F0         [24]  954 	mov	b,dph
      002D7B 45 F0            [12]  955 	orl	a,b
      002D7D 70 02            [24]  956 	jnz	00248$
                                    957 ;	../Fogger_Manager/fogger.c:283: Timer--;
      002D7F 15 69            [12]  958 	dec	_Timer
      002D81                        959 00248$:
                                    960 ;	../Fogger_Manager/fogger.c:286: if(Timer == 0x00){
      002D81 E5 69            [12]  961 	mov	a,_Timer
      002D83 70 2E            [24]  962 	jnz	00256$
                                    963 ;	../Fogger_Manager/fogger.c:287: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
      002D85 E5 6A            [12]  964 	mov	a,_Interval_Or_Duration
      002D87 70 05            [24]  965 	jnz	00268$
      002D89 7E 01            [12]  966 	mov	r6,#0x01
      002D8B FF               [12]  967 	mov	r7,a
      002D8C 80 04            [24]  968 	sjmp	00269$
      002D8E                        969 00268$:
      002D8E 7E 00            [12]  970 	mov	r6,#0x00
      002D90 7F 00            [12]  971 	mov	r7,#0x00
      002D92                        972 00269$:
      002D92 8E 82            [24]  973 	mov	dpl,r6
      002D94 12 2D D8         [24]  974 	lcall	_power_pump
                                    975 ;	../Fogger_Manager/fogger.c:288: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
      002D97 E5 6A            [12]  976 	mov	a,_Interval_Or_Duration
      002D99 70 04            [24]  977 	jnz	00270$
      002D9B AF 70            [24]  978 	mov	r7,_tick_fogger_duration_65536_36
      002D9D 80 02            [24]  979 	sjmp	00271$
      002D9F                        980 00270$:
      002D9F AF 71            [24]  981 	mov	r7,_tick_fogger_interval_65536_36
      002DA1                        982 00271$:
      002DA1 8F 69            [24]  983 	mov	_Timer,r7
                                    984 ;	../Fogger_Manager/fogger.c:289: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
      002DA3 E5 6A            [12]  985 	mov	a,_Interval_Or_Duration
      002DA5 70 05            [24]  986 	jnz	00272$
      002DA7 7E FF            [12]  987 	mov	r6,#0xff
      002DA9 FF               [12]  988 	mov	r7,a
      002DAA 80 04            [24]  989 	sjmp	00273$
      002DAC                        990 00272$:
      002DAC 7E 00            [12]  991 	mov	r6,#0x00
      002DAE 7F 00            [12]  992 	mov	r7,#0x00
      002DB0                        993 00273$:
      002DB0 8E 6A            [24]  994 	mov	_Interval_Or_Duration,r6
      002DB2 22               [24]  995 	ret
      002DB3                        996 00256$:
                                    997 ;	../Fogger_Manager/fogger.c:291: if(Interval_Or_Duration == INTERVAL){
      002DB3 E5 6A            [12]  998 	mov	a,_Interval_Or_Duration
                                    999 ;	../Fogger_Manager/fogger.c:292: power_pump(PUMP_OFF);
      002DB5 70 05            [24] 1000 	jnz	00253$
      002DB7 F5 82            [12] 1001 	mov	dpl,a
      002DB9 02 2D D8         [24] 1002 	ljmp	_power_pump
      002DBC                       1003 00253$:
                                   1004 ;	../Fogger_Manager/fogger.c:294: if(!(tock % power)){
      002DBC 85 72 F0         [24] 1005 	mov	b,_tick_fogger_power_65536_36
      002DBF E5 73            [12] 1006 	mov	a,_tick_fogger_tock_65536_36
      002DC1 84               [48] 1007 	div	ab
      002DC2 E5 F0            [12] 1008 	mov	a,b
      002DC4 70 06            [24] 1009 	jnz	00250$
                                   1010 ;	../Fogger_Manager/fogger.c:295: power_pump(PUMP_ON);
      002DC6 75 82 01         [24] 1011 	mov	dpl,#0x01
      002DC9 02 2D D8         [24] 1012 	ljmp	_power_pump
      002DCC                       1013 00250$:
                                   1014 ;	../Fogger_Manager/fogger.c:297: power_pump(PUMP_OFF);
      002DCC 75 82 00         [24] 1015 	mov	dpl,#0x00
      002DCF 02 2D D8         [24] 1016 	ljmp	_power_pump
      002DD2                       1017 00264$:
                                   1018 ;	../Fogger_Manager/fogger.c:305: power_pump(PUMP_OFF);
      002DD2 75 82 00         [24] 1019 	mov	dpl,#0x00
                                   1020 ;	../Fogger_Manager/fogger.c:308: }
      002DD5 02 2D D8         [24] 1021 	ljmp	_power_pump
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'power_pump'
                                   1024 ;------------------------------------------------------------
                                   1025 ;action                    Allocated to registers r7 
                                   1026 ;------------------------------------------------------------
                                   1027 ;	../Fogger_Manager/fogger.c:310: void power_pump(uint8_t action){
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function power_pump
                                   1030 ;	-----------------------------------------
      002DD8                       1031 _power_pump:
      002DD8 AF 82            [24] 1032 	mov	r7,dpl
                                   1033 ;	../Fogger_Manager/fogger.c:311: switch (action)
      002DDA BF 01 02         [24] 1034 	cjne	r7,#0x01,00139$
      002DDD 80 0A            [24] 1035 	sjmp	00101$
      002DDF                       1036 00139$:
      002DDF BF 02 02         [24] 1037 	cjne	r7,#0x02,00140$
      002DE2 80 1F            [24] 1038 	sjmp	00106$
      002DE4                       1039 00140$:
                                   1040 ;	../Fogger_Manager/fogger.c:313: case PUMP_ON:
      002DE4 BF 03 35         [24] 1041 	cjne	r7,#0x03,00111$
      002DE7 80 30            [24] 1042 	sjmp	00110$
      002DE9                       1043 00101$:
                                   1044 ;	../Fogger_Manager/fogger.c:314: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
      002DE9 E5 6D            [12] 1045 	mov	a,_Fluid_Level
      002DEB 60 13            [24] 1046 	jz	00103$
      002DED AE 6C            [24] 1047 	mov	r6,_Heat_Flag
      002DEF 53 06 80         [24] 1048 	anl	ar6,#0x80
      002DF2 7F 00            [12] 1049 	mov	r7,#0x00
      002DF4 BE 80 09         [24] 1050 	cjne	r6,#0x80,00103$
      002DF7 BF 00 06         [24] 1051 	cjne	r7,#0x00,00103$
                                   1052 ;	../Fogger_Manager/fogger.c:315: P2_5 = 0;
                                   1053 ;	assignBit
      002DFA C2 A5            [12] 1054 	clr	_P2_5
                                   1055 ;	../Fogger_Manager/fogger.c:316: Heat_Flag &= ~HOT_FLAG;
      002DFC 53 6C FD         [24] 1056 	anl	_Heat_Flag,#0xfd
      002DFF 22               [24] 1057 	ret
      002E00                       1058 00103$:
                                   1059 ;	../Fogger_Manager/fogger.c:318: P2_5 = 1;
                                   1060 ;	assignBit
      002E00 D2 A5            [12] 1061 	setb	_P2_5
                                   1062 ;	../Fogger_Manager/fogger.c:320: break;
                                   1063 ;	../Fogger_Manager/fogger.c:321: case PUMP_OVERRIDE:
      002E02 22               [24] 1064 	ret
      002E03                       1065 00106$:
                                   1066 ;	../Fogger_Manager/fogger.c:322: if(get_heated() == HEATED){
      002E03 AE 6C            [24] 1067 	mov	r6,_Heat_Flag
      002E05 53 06 80         [24] 1068 	anl	ar6,#0x80
      002E08 7F 00            [12] 1069 	mov	r7,#0x00
      002E0A BE 80 09         [24] 1070 	cjne	r6,#0x80,00108$
      002E0D BF 00 06         [24] 1071 	cjne	r7,#0x00,00108$
                                   1072 ;	../Fogger_Manager/fogger.c:323: P2_5 = 0;
                                   1073 ;	assignBit
      002E10 C2 A5            [12] 1074 	clr	_P2_5
                                   1075 ;	../Fogger_Manager/fogger.c:324: Heat_Flag &= ~HOT_FLAG;
      002E12 53 6C FD         [24] 1076 	anl	_Heat_Flag,#0xfd
      002E15 22               [24] 1077 	ret
      002E16                       1078 00108$:
                                   1079 ;	../Fogger_Manager/fogger.c:326: P2_5 = 1;
                                   1080 ;	assignBit
      002E16 D2 A5            [12] 1081 	setb	_P2_5
                                   1082 ;	../Fogger_Manager/fogger.c:328: break;
                                   1083 ;	../Fogger_Manager/fogger.c:329: case PUMP_MASTER_OVERRIDE:
      002E18 22               [24] 1084 	ret
      002E19                       1085 00110$:
                                   1086 ;	../Fogger_Manager/fogger.c:330: P2_5 = 0;
                                   1087 ;	assignBit
      002E19 C2 A5            [12] 1088 	clr	_P2_5
                                   1089 ;	../Fogger_Manager/fogger.c:331: break;
                                   1090 ;	../Fogger_Manager/fogger.c:332: default:
      002E1B 22               [24] 1091 	ret
      002E1C                       1092 00111$:
                                   1093 ;	../Fogger_Manager/fogger.c:333: P2_5 = 1;
                                   1094 ;	assignBit
      002E1C D2 A5            [12] 1095 	setb	_P2_5
                                   1096 ;	../Fogger_Manager/fogger.c:335: }
                                   1097 ;	../Fogger_Manager/fogger.c:336: }
      002E1E 22               [24] 1098 	ret
                                   1099 ;------------------------------------------------------------
                                   1100 ;Allocation info for local variables in function 'power_heater'
                                   1101 ;------------------------------------------------------------
                                   1102 ;action                    Allocated to registers r7 
                                   1103 ;------------------------------------------------------------
                                   1104 ;	../Fogger_Manager/fogger.c:338: void power_heater(uint8_t action){
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function power_heater
                                   1107 ;	-----------------------------------------
      002E1F                       1108 _power_heater:
      002E1F AF 82            [24] 1109 	mov	r7,dpl
                                   1110 ;	../Fogger_Manager/fogger.c:339: switch (action)
      002E21 BF 01 08         [24] 1111 	cjne	r7,#0x01,00102$
                                   1112 ;	../Fogger_Manager/fogger.c:342: Heat_Flag |= HEAT_DISABLE_FLAG;
      002E24 AE 6C            [24] 1113 	mov	r6,_Heat_Flag
      002E26 43 06 10         [24] 1114 	orl	ar6,#0x10
      002E29 8E 6C            [24] 1115 	mov	_Heat_Flag,r6
                                   1116 ;	../Fogger_Manager/fogger.c:343: break;
                                   1117 ;	../Fogger_Manager/fogger.c:344: default:
      002E2B 22               [24] 1118 	ret
      002E2C                       1119 00102$:
                                   1120 ;	../Fogger_Manager/fogger.c:345: Heat_Flag &= ~HEAT_DISABLE_FLAG;
      002E2C 53 6C EF         [24] 1121 	anl	_Heat_Flag,#0xef
                                   1122 ;	../Fogger_Manager/fogger.c:347: }
                                   1123 ;	../Fogger_Manager/fogger.c:348: }
      002E2F 22               [24] 1124 	ret
                                   1125 	.area CSEG    (CODE)
                                   1126 	.area CONST   (CODE)
                                   1127 	.area XINIT   (CODE)
                                   1128 	.area CABS    (ABS,CODE)
