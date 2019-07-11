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
                                     11 	.globl _get_adc_value
                                     12 	.globl _get_runtime_data
                                     13 	.globl _CPRL2
                                     14 	.globl _CT2
                                     15 	.globl _TR2
                                     16 	.globl _EXEN2
                                     17 	.globl _TCLK
                                     18 	.globl _RCLK
                                     19 	.globl _REN
                                     20 	.globl _SM2
                                     21 	.globl _SM1
                                     22 	.globl _SM0
                                     23 	.globl _RCK
                                     24 	.globl _SER
                                     25 	.globl _SCK
                                     26 	.globl _RI
                                     27 	.globl _ES
                                     28 	.globl _ET0
                                     29 	.globl _EA
                                     30 	.globl _P3_7
                                     31 	.globl _P3_6
                                     32 	.globl _P3_5
                                     33 	.globl _P3_4
                                     34 	.globl _P3_3
                                     35 	.globl _P3_2
                                     36 	.globl _P3_1
                                     37 	.globl _P3_0
                                     38 	.globl _P2_7
                                     39 	.globl _P2_6
                                     40 	.globl _P2_5
                                     41 	.globl _P2_4
                                     42 	.globl _P2_3
                                     43 	.globl _P2_2
                                     44 	.globl _P2_1
                                     45 	.globl _P2_0
                                     46 	.globl _P1_7
                                     47 	.globl _P1_6
                                     48 	.globl _P1_5
                                     49 	.globl _P1_4
                                     50 	.globl _P1_3
                                     51 	.globl _P1_2
                                     52 	.globl _P1_1
                                     53 	.globl _P1_0
                                     54 	.globl _P0_7
                                     55 	.globl _P0_6
                                     56 	.globl _P0_5
                                     57 	.globl _P0_4
                                     58 	.globl _P0_3
                                     59 	.globl _P0_2
                                     60 	.globl _P0_1
                                     61 	.globl _P0_0
                                     62 	.globl _IAP_ADRH
                                     63 	.globl _IAP_ADRL
                                     64 	.globl _IAPEN
                                     65 	.globl _TH0
                                     66 	.globl _TL0
                                     67 	.globl _CKCON
                                     68 	.globl _TMOD
                                     69 	.globl _TCON
                                     70 	.globl _PWMDATA17L
                                     71 	.globl _PWMDATA17H
                                     72 	.globl _PWMDATA14L
                                     73 	.globl _PWMDATA14H
                                     74 	.globl _PWMDATA11L
                                     75 	.globl _PWMDATA11H
                                     76 	.globl _PWM_EA2
                                     77 	.globl _PWM_EA1
                                     78 	.globl _SBUF
                                     79 	.globl _TL3
                                     80 	.globl _TH3
                                     81 	.globl _T2CON
                                     82 	.globl _RCAP2H
                                     83 	.globl _RCAP2L
                                     84 	.globl _SCON
                                     85 	.globl _P1_OPT
                                     86 	.globl _ADCVAL2
                                     87 	.globl _ADCVAL1
                                     88 	.globl _ADCSEL
                                     89 	.globl _EXIF
                                     90 	.globl _EIE
                                     91 	.globl _IE
                                     92 	.globl _P3
                                     93 	.globl _P2
                                     94 	.globl _P1
                                     95 	.globl _P0
                                     96 	.globl _PCLKSEL
                                     97 	.globl _CHIPCON
                                     98 	.globl _Fluid_Level
                                     99 	.globl _Heat_Flag
                                    100 	.globl _Playing
                                    101 	.globl _Interval_Or_Duration
                                    102 	.globl _Timer
                                    103 	.globl _tick_fogger
                                    104 	.globl _power_pump
                                    105 	.globl _power_heater
                                    106 ;--------------------------------------------------------
                                    107 ; special function registers
                                    108 ;--------------------------------------------------------
                                    109 	.area RSEG    (ABS,DATA)
      000000                        110 	.org 0x0000
                           0000BF   111 _CHIPCON	=	0x00bf
                           0000B7   112 _PCLKSEL	=	0x00b7
                           000080   113 _P0	=	0x0080
                           000090   114 _P1	=	0x0090
                           0000A0   115 _P2	=	0x00a0
                           0000B0   116 _P3	=	0x00b0
                           0000A8   117 _IE	=	0x00a8
                           0000E8   118 _EIE	=	0x00e8
                           000091   119 _EXIF	=	0x0091
                           0000DA   120 _ADCSEL	=	0x00da
                           0000DB   121 _ADCVAL1	=	0x00db
                           0000DC   122 _ADCVAL2	=	0x00dc
                           0000D9   123 _P1_OPT	=	0x00d9
                           000098   124 _SCON	=	0x0098
                           0000CA   125 _RCAP2L	=	0x00ca
                           0000CB   126 _RCAP2H	=	0x00cb
                           0000C8   127 _T2CON	=	0x00c8
                           00009B   128 _TH3	=	0x009b
                           00009A   129 _TL3	=	0x009a
                           000099   130 _SBUF	=	0x0099
                           0000D3   131 _PWM_EA1	=	0x00d3
                           0000D4   132 _PWM_EA2	=	0x00d4
                           0000BD   133 _PWMDATA11H	=	0x00bd
                           0000BE   134 _PWMDATA11L	=	0x00be
                           0000B5   135 _PWMDATA14H	=	0x00b5
                           0000B6   136 _PWMDATA14L	=	0x00b6
                           0000AD   137 _PWMDATA17H	=	0x00ad
                           0000AE   138 _PWMDATA17L	=	0x00ae
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008E   141 _CKCON	=	0x008e
                           00008A   142 _TL0	=	0x008a
                           00008C   143 _TH0	=	0x008c
                           0000E4   144 _IAPEN	=	0x00e4
                           0000E5   145 _IAP_ADRL	=	0x00e5
                           0000E6   146 _IAP_ADRH	=	0x00e6
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           0000A0   168 _P2_0	=	0x00a0
                           0000A1   169 _P2_1	=	0x00a1
                           0000A2   170 _P2_2	=	0x00a2
                           0000A3   171 _P2_3	=	0x00a3
                           0000A4   172 _P2_4	=	0x00a4
                           0000A5   173 _P2_5	=	0x00a5
                           0000A6   174 _P2_6	=	0x00a6
                           0000A7   175 _P2_7	=	0x00a7
                           0000B0   176 _P3_0	=	0x00b0
                           0000B1   177 _P3_1	=	0x00b1
                           0000B2   178 _P3_2	=	0x00b2
                           0000B3   179 _P3_3	=	0x00b3
                           0000B4   180 _P3_4	=	0x00b4
                           0000B5   181 _P3_5	=	0x00b5
                           0000B6   182 _P3_6	=	0x00b6
                           0000B7   183 _P3_7	=	0x00b7
                           0000AF   184 _EA	=	0x00af
                           0000A9   185 _ET0	=	0x00a9
                           0000AC   186 _ES	=	0x00ac
                           000098   187 _RI	=	0x0098
                           000093   188 _SCK	=	0x0093
                           000095   189 _SER	=	0x0095
                           000092   190 _RCK	=	0x0092
                           00009F   191 _SM0	=	0x009f
                           00009E   192 _SM1	=	0x009e
                           00009D   193 _SM2	=	0x009d
                           00009C   194 _REN	=	0x009c
                           0000CD   195 _RCLK	=	0x00cd
                           0000CC   196 _TCLK	=	0x00cc
                           0000CB   197 _EXEN2	=	0x00cb
                           0000CA   198 _TR2	=	0x00ca
                           0000C9   199 _CT2	=	0x00c9
                           0000C8   200 _CPRL2	=	0x00c8
                                    201 ;--------------------------------------------------------
                                    202 ; overlayable register banks
                                    203 ;--------------------------------------------------------
                                    204 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        205 	.ds 8
                                    206 ;--------------------------------------------------------
                                    207 ; overlayable bit register bank
                                    208 ;--------------------------------------------------------
                                    209 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        210 bits:
      000020                        211 	.ds 1
                           008000   212 	b0 = bits[0]
                           008100   213 	b1 = bits[1]
                           008200   214 	b2 = bits[2]
                           008300   215 	b3 = bits[3]
                           008400   216 	b4 = bits[4]
                           008500   217 	b5 = bits[5]
                           008600   218 	b6 = bits[6]
                           008700   219 	b7 = bits[7]
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
      00004C                        224 _Timer::
      00004C                        225 	.ds 1
      00004D                        226 _Interval_Or_Duration::
      00004D                        227 	.ds 1
      00004E                        228 _Playing::
      00004E                        229 	.ds 1
      00004F                        230 _Heat_Flag::
      00004F                        231 	.ds 1
      000050                        232 _Fluid_Level::
      000050                        233 	.ds 1
      000051                        234 _tick_fogger_fullCount_65536_36:
      000051                        235 	.ds 1
      000052                        236 _tick_fogger_on_65536_36:
      000052                        237 	.ds 1
      000053                        238 _tick_fogger_temperature_65536_36:
      000053                        239 	.ds 8
      00005B                        240 _tick_fogger_tick_65536_36:
      00005B                        241 	.ds 1
      00005C                        242 _tick_fogger_duration_65536_36:
      00005C                        243 	.ds 1
      00005D                        244 _tick_fogger_interval_65536_36:
      00005D                        245 	.ds 1
      00005E                        246 _tick_fogger_power_65536_36:
      00005E                        247 	.ds 1
      00005F                        248 _tick_fogger_tock_65536_36:
      00005F                        249 	.ds 1
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area IABS    (ABS,DATA)
                                    261 	.area IABS    (ABS,DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; bit data
                                    264 ;--------------------------------------------------------
                                    265 	.area BSEG    (BIT)
                                    266 ;--------------------------------------------------------
                                    267 ; paged external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area PSEG    (PAG,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XSEG    (XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XABS    (ABS,XDATA)
                                    278 ;--------------------------------------------------------
                                    279 ; external initialized ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area XISEG   (XDATA)
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT0 (CODE)
                                    284 	.area GSINIT1 (CODE)
                                    285 	.area GSINIT2 (CODE)
                                    286 	.area GSINIT3 (CODE)
                                    287 	.area GSINIT4 (CODE)
                                    288 	.area GSINIT5 (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area CSEG    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 ;------------------------------------------------------------
                                    300 ;Allocation info for local variables in function 'tick_fogger'
                                    301 ;------------------------------------------------------------
                                    302 ;runningAverage            Allocated to registers r4 r5 r6 r7 
                                    303 ;value                     Allocated to registers r7 
                                    304 ;sloc0                     Allocated to stack - _bp +1
                                    305 ;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
                                    306 ;on                        Allocated with name '_tick_fogger_on_65536_36'
                                    307 ;temperature               Allocated with name '_tick_fogger_temperature_65536_36'
                                    308 ;tick                      Allocated with name '_tick_fogger_tick_65536_36'
                                    309 ;duration                  Allocated with name '_tick_fogger_duration_65536_36'
                                    310 ;interval                  Allocated with name '_tick_fogger_interval_65536_36'
                                    311 ;power                     Allocated with name '_tick_fogger_power_65536_36'
                                    312 ;tock                      Allocated with name '_tick_fogger_tock_65536_36'
                                    313 ;------------------------------------------------------------
                                    314 ;	../Fogger_Manager/fogger.c:20: static uint8_t fullCount = 0;
                                    315 ;	../Fogger_Manager/fogger.c:21: static uint8_t on = 0x00; //to toggle lights
                                    316 ;	../Fogger_Manager/fogger.c:22: static uint16_t temperature[MOVING_AVERAGE] = {0, 0, 0, 0};
      0000FE E4               [12]  317 	clr	a
      0000FF F5 51            [12]  318 	mov	_tick_fogger_fullCount_65536_36,a
      000101 F5 52            [12]  319 	mov	_tick_fogger_on_65536_36,a
      000103 F5 53            [12]  320 	mov	(_tick_fogger_temperature_65536_36 + 0),a
      000105 F5 54            [12]  321 	mov	(_tick_fogger_temperature_65536_36 + 1),a
      000107 F5 55            [12]  322 	mov	((_tick_fogger_temperature_65536_36 + 0x0002) + 0),a
      000109 F5 56            [12]  323 	mov	((_tick_fogger_temperature_65536_36 + 0x0002) + 1),a
      00010B F5 57            [12]  324 	mov	((_tick_fogger_temperature_65536_36 + 0x0004) + 0),a
      00010D F5 58            [12]  325 	mov	((_tick_fogger_temperature_65536_36 + 0x0004) + 1),a
      00010F F5 59            [12]  326 	mov	((_tick_fogger_temperature_65536_36 + 0x0006) + 0),a
      000111 F5 5A            [12]  327 	mov	((_tick_fogger_temperature_65536_36 + 0x0006) + 1),a
                                    328 ;	../Fogger_Manager/fogger.c:23: static uint8_t tick = 0;
                                    329 ;	1-genFromRTrack replaced	mov	_tick_fogger_tick_65536_36,#0x00
      000113 F5 5B            [12]  330 	mov	_tick_fogger_tick_65536_36,a
                                    331 ;	../Fogger_Manager/fogger.c:30: static uint8_t tock = 0;
                                    332 ;	1-genFromRTrack replaced	mov	_tick_fogger_tock_65536_36,#0x00
      000115 F5 5F            [12]  333 	mov	_tick_fogger_tock_65536_36,a
                                    334 ;	../Fogger_Manager/fogger.c:14: uint8_t Playing = PAUSE;
      000117 75 4E 00         [24]  335 	mov	_Playing,#0x00
                                    336 ;	../Fogger_Manager/fogger.c:15: uint8_t Heat_Flag = COLD_FLAG;
      00011A 75 4F 04         [24]  337 	mov	_Heat_Flag,#0x04
                                    338 ;	../Fogger_Manager/fogger.c:16: uint8_t Fluid_Level = TANK_FULL;
      00011D 75 50 01         [24]  339 	mov	_Fluid_Level,#0x01
                                    340 ;--------------------------------------------------------
                                    341 ; Home
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area HOME    (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; code
                                    347 ;--------------------------------------------------------
                                    348 	.area CSEG    (CODE)
                                    349 ;------------------------------------------------------------
                                    350 ;Allocation info for local variables in function 'tick_fogger'
                                    351 ;------------------------------------------------------------
                                    352 ;runningAverage            Allocated to registers r4 r5 r6 r7 
                                    353 ;value                     Allocated to registers r7 
                                    354 ;sloc0                     Allocated to stack - _bp +1
                                    355 ;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
                                    356 ;on                        Allocated with name '_tick_fogger_on_65536_36'
                                    357 ;temperature               Allocated with name '_tick_fogger_temperature_65536_36'
                                    358 ;tick                      Allocated with name '_tick_fogger_tick_65536_36'
                                    359 ;duration                  Allocated with name '_tick_fogger_duration_65536_36'
                                    360 ;interval                  Allocated with name '_tick_fogger_interval_65536_36'
                                    361 ;power                     Allocated with name '_tick_fogger_power_65536_36'
                                    362 ;tock                      Allocated with name '_tick_fogger_tock_65536_36'
                                    363 ;------------------------------------------------------------
                                    364 ;	../Fogger_Manager/fogger.c:18: void tick_fogger(){
                                    365 ;	-----------------------------------------
                                    366 ;	 function tick_fogger
                                    367 ;	-----------------------------------------
      003157                        368 _tick_fogger:
                           000007   369 	ar7 = 0x07
                           000006   370 	ar6 = 0x06
                           000005   371 	ar5 = 0x05
                           000004   372 	ar4 = 0x04
                           000003   373 	ar3 = 0x03
                           000002   374 	ar2 = 0x02
                           000001   375 	ar1 = 0x01
                           000000   376 	ar0 = 0x00
      003157 C0 1A            [24]  377 	push	_bp
      003159 E5 81            [12]  378 	mov	a,sp
      00315B F5 1A            [12]  379 	mov	_bp,a
      00315D 24 04            [12]  380 	add	a,#0x04
      00315F F5 81            [12]  381 	mov	sp,a
                                    382 ;	../Fogger_Manager/fogger.c:24: uint32_t runningAverage = 0;
      003161 A8 1A            [24]  383 	mov	r0,_bp
      003163 08               [12]  384 	inc	r0
      003164 E4               [12]  385 	clr	a
      003165 F6               [12]  386 	mov	@r0,a
      003166 08               [12]  387 	inc	r0
      003167 F6               [12]  388 	mov	@r0,a
      003168 08               [12]  389 	inc	r0
      003169 F6               [12]  390 	mov	@r0,a
      00316A 08               [12]  391 	inc	r0
      00316B F6               [12]  392 	mov	@r0,a
                                    393 ;	../Fogger_Manager/fogger.c:36: temperature[tick++ % MOVING_AVERAGE] = get_adc_value(ADC_TEMPERATURE);
      00316C AB 5B            [24]  394 	mov	r3,_tick_fogger_tick_65536_36
      00316E 05 5B            [12]  395 	inc	_tick_fogger_tick_65536_36
      003170 53 03 03         [24]  396 	anl	ar3,#0x03
      003173 EB               [12]  397 	mov	a,r3
      003174 2B               [12]  398 	add	a,r3
      003175 24 53            [12]  399 	add	a,#_tick_fogger_temperature_65536_36
      003177 F9               [12]  400 	mov	r1,a
      003178 75 82 00         [24]  401 	mov	dpl,#0x00
      00317B C0 01            [24]  402 	push	ar1
      00317D 12 04 81         [24]  403 	lcall	_get_adc_value
      003180 E5 82            [12]  404 	mov	a,dpl
      003182 85 83 F0         [24]  405 	mov	b,dph
      003185 D0 01            [24]  406 	pop	ar1
      003187 F7               [12]  407 	mov	@r1,a
      003188 09               [12]  408 	inc	r1
      003189 A7 F0            [24]  409 	mov	@r1,b
                                    410 ;	../Fogger_Manager/fogger.c:38: for(value = 0; value < MOVING_AVERAGE; value++){
      00318B 7B 00            [12]  411 	mov	r3,#0x00
      00318D                        412 00268$:
                                    413 ;	../Fogger_Manager/fogger.c:39: if(!value){
      00318D EB               [12]  414 	mov	a,r3
      00318E 70 1F            [24]  415 	jnz	00102$
                                    416 ;	../Fogger_Manager/fogger.c:40: runningAverage = temperature[value];
      003190 EB               [12]  417 	mov	a,r3
      003191 2B               [12]  418 	add	a,r3
      003192 24 53            [12]  419 	add	a,#_tick_fogger_temperature_65536_36
      003194 F9               [12]  420 	mov	r1,a
      003195 C0 03            [24]  421 	push	ar3
      003197 87 02            [24]  422 	mov	ar2,@r1
      003199 09               [12]  423 	inc	r1
      00319A 87 03            [24]  424 	mov	ar3,@r1
      00319C 19               [12]  425 	dec	r1
      00319D A8 1A            [24]  426 	mov	r0,_bp
      00319F 08               [12]  427 	inc	r0
      0031A0 A6 02            [24]  428 	mov	@r0,ar2
      0031A2 08               [12]  429 	inc	r0
      0031A3 A6 03            [24]  430 	mov	@r0,ar3
      0031A5 08               [12]  431 	inc	r0
      0031A6 76 00            [12]  432 	mov	@r0,#0x00
      0031A8 08               [12]  433 	inc	r0
      0031A9 76 00            [12]  434 	mov	@r0,#0x00
      0031AB D0 03            [24]  435 	pop	ar3
      0031AD 80 25            [24]  436 	sjmp	00269$
      0031AF                        437 00102$:
                                    438 ;	../Fogger_Manager/fogger.c:42: runningAverage += temperature[value];
      0031AF EB               [12]  439 	mov	a,r3
      0031B0 2B               [12]  440 	add	a,r3
      0031B1 24 53            [12]  441 	add	a,#_tick_fogger_temperature_65536_36
      0031B3 F9               [12]  442 	mov	r1,a
      0031B4 C0 03            [24]  443 	push	ar3
      0031B6 87 02            [24]  444 	mov	ar2,@r1
      0031B8 09               [12]  445 	inc	r1
      0031B9 87 03            [24]  446 	mov	ar3,@r1
      0031BB 19               [12]  447 	dec	r1
      0031BC 7E 00            [12]  448 	mov	r6,#0x00
      0031BE 7F 00            [12]  449 	mov	r7,#0x00
      0031C0 A8 1A            [24]  450 	mov	r0,_bp
      0031C2 08               [12]  451 	inc	r0
      0031C3 EA               [12]  452 	mov	a,r2
      0031C4 26               [12]  453 	add	a,@r0
      0031C5 F6               [12]  454 	mov	@r0,a
      0031C6 EB               [12]  455 	mov	a,r3
      0031C7 08               [12]  456 	inc	r0
      0031C8 36               [12]  457 	addc	a,@r0
      0031C9 F6               [12]  458 	mov	@r0,a
      0031CA EE               [12]  459 	mov	a,r6
      0031CB 08               [12]  460 	inc	r0
      0031CC 36               [12]  461 	addc	a,@r0
      0031CD F6               [12]  462 	mov	@r0,a
      0031CE EF               [12]  463 	mov	a,r7
      0031CF 08               [12]  464 	inc	r0
      0031D0 36               [12]  465 	addc	a,@r0
      0031D1 F6               [12]  466 	mov	@r0,a
                                    467 ;	../Fogger_Manager/fogger.c:319: power_pump(PUMP_OFF);
      0031D2 D0 03            [24]  468 	pop	ar3
                                    469 ;	../Fogger_Manager/fogger.c:42: runningAverage += temperature[value];
      0031D4                        470 00269$:
                                    471 ;	../Fogger_Manager/fogger.c:38: for(value = 0; value < MOVING_AVERAGE; value++){
      0031D4 0B               [12]  472 	inc	r3
      0031D5 BB 04 00         [24]  473 	cjne	r3,#0x04,00605$
      0031D8                        474 00605$:
      0031D8 40 B3            [24]  475 	jc	00268$
                                    476 ;	../Fogger_Manager/fogger.c:46: runningAverage = runningAverage >> MOVING_AVERAGE_SHIFT;
      0031DA A8 1A            [24]  477 	mov	r0,_bp
      0031DC 08               [12]  478 	inc	r0
      0031DD 08               [12]  479 	inc	r0
      0031DE 08               [12]  480 	inc	r0
      0031DF 08               [12]  481 	inc	r0
      0031E0 E6               [12]  482 	mov	a,@r0
      0031E1 C3               [12]  483 	clr	c
      0031E2 13               [12]  484 	rrc	a
      0031E3 FF               [12]  485 	mov	r7,a
      0031E4 18               [12]  486 	dec	r0
      0031E5 E6               [12]  487 	mov	a,@r0
      0031E6 13               [12]  488 	rrc	a
      0031E7 FE               [12]  489 	mov	r6,a
      0031E8 18               [12]  490 	dec	r0
      0031E9 E6               [12]  491 	mov	a,@r0
      0031EA 13               [12]  492 	rrc	a
      0031EB FD               [12]  493 	mov	r5,a
      0031EC 18               [12]  494 	dec	r0
      0031ED E6               [12]  495 	mov	a,@r0
      0031EE 13               [12]  496 	rrc	a
      0031EF FC               [12]  497 	mov	r4,a
      0031F0 EF               [12]  498 	mov	a,r7
      0031F1 C3               [12]  499 	clr	c
      0031F2 13               [12]  500 	rrc	a
      0031F3 FF               [12]  501 	mov	r7,a
      0031F4 EE               [12]  502 	mov	a,r6
      0031F5 13               [12]  503 	rrc	a
      0031F6 FE               [12]  504 	mov	r6,a
      0031F7 ED               [12]  505 	mov	a,r5
      0031F8 13               [12]  506 	rrc	a
      0031F9 FD               [12]  507 	mov	r5,a
      0031FA EC               [12]  508 	mov	a,r4
      0031FB 13               [12]  509 	rrc	a
                                    510 ;	../Fogger_Manager/fogger.c:48: if(runningAverage < HEAT_LOW){ /* Turn on heater full blast */
      0031FC FC               [12]  511 	mov	r4,a
      0031FD C3               [12]  512 	clr	c
      0031FE 94 8C            [12]  513 	subb	a,#0x8c
      003200 ED               [12]  514 	mov	a,r5
      003201 94 00            [12]  515 	subb	a,#0x00
      003203 EE               [12]  516 	mov	a,r6
      003204 94 00            [12]  517 	subb	a,#0x00
      003206 EF               [12]  518 	mov	a,r7
      003207 94 00            [12]  519 	subb	a,#0x00
      003209 50 05            [24]  520 	jnc	00111$
                                    521 ;	../Fogger_Manager/fogger.c:49: Heat_Flag &= ~HEATED;
                                    522 ;	../Fogger_Manager/fogger.c:50: Heat_Flag &= ~HOT_FLAG;
      00320B 53 4F 7D         [24]  523 	anl	_Heat_Flag,#(0x7f&0xfd)
      00320E 80 31            [24]  524 	sjmp	00112$
      003210                        525 00111$:
                                    526 ;	../Fogger_Manager/fogger.c:51: } else if(runningAverage > HEAT_HIGH){ /* Turn off Heater */
      003210 C3               [12]  527 	clr	c
      003211 74 B9            [12]  528 	mov	a,#0xb9
      003213 9C               [12]  529 	subb	a,r4
      003214 E4               [12]  530 	clr	a
      003215 9D               [12]  531 	subb	a,r5
      003216 E4               [12]  532 	clr	a
      003217 9E               [12]  533 	subb	a,r6
      003218 E4               [12]  534 	clr	a
      003219 9F               [12]  535 	subb	a,r7
      00321A 50 10            [24]  536 	jnc	00108$
                                    537 ;	../Fogger_Manager/fogger.c:52: Heat_Flag |= HOT_FLAG;
      00321C AA 4F            [24]  538 	mov	r2,_Heat_Flag
      00321E 43 02 02         [24]  539 	orl	ar2,#0x02
                                    540 ;	../Fogger_Manager/fogger.c:53: Heat_Flag |= HEATED;
      003221 8A 4F            [24]  541 	mov  _Heat_Flag,r2
      003223 7B 00            [12]  542 	mov	r3,#0x00
      003225 43 02 80         [24]  543 	orl	ar2,#0x80
      003228 8A 4F            [24]  544 	mov	_Heat_Flag,r2
      00322A 80 15            [24]  545 	sjmp	00112$
      00322C                        546 00108$:
                                    547 ;	../Fogger_Manager/fogger.c:54: } else if(runningAverage > HEAT_OK){ /* Set Heated */
      00322C C3               [12]  548 	clr	c
      00322D 74 AA            [12]  549 	mov	a,#0xaa
      00322F 9C               [12]  550 	subb	a,r4
      003230 E4               [12]  551 	clr	a
      003231 9D               [12]  552 	subb	a,r5
      003232 E4               [12]  553 	clr	a
      003233 9E               [12]  554 	subb	a,r6
      003234 E4               [12]  555 	clr	a
      003235 9F               [12]  556 	subb	a,r7
      003236 50 09            [24]  557 	jnc	00112$
                                    558 ;	../Fogger_Manager/fogger.c:55: Heat_Flag |= HEATED;
      003238 AE 4F            [24]  559 	mov	r6,_Heat_Flag
      00323A 7F 00            [12]  560 	mov	r7,#0x00
      00323C 43 06 80         [24]  561 	orl	ar6,#0x80
      00323F 8E 4F            [24]  562 	mov	_Heat_Flag,r6
      003241                        563 00112$:
                                    564 ;	../Fogger_Manager/fogger.c:59: if(Heat_Flag & HEAT_DISABLE_FLAG){
      003241 E5 4F            [12]  565 	mov	a,_Heat_Flag
      003243 30 E4 06         [24]  566 	jnb	acc.4,00114$
                                    567 ;	../Fogger_Manager/fogger.c:60: P3_4 = 1;
                                    568 ;	assignBit
      003246 D2 B4            [12]  569 	setb	_P3_4
                                    570 ;	../Fogger_Manager/fogger.c:61: P3_3 = 1;
                                    571 ;	assignBit
      003248 D2 B3            [12]  572 	setb	_P3_3
      00324A 80 0A            [24]  573 	sjmp	00115$
      00324C                        574 00114$:
                                    575 ;	../Fogger_Manager/fogger.c:63: P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
      00324C E5 4F            [12]  576 	mov	a,_Heat_Flag
      00324E A2 E1            [12]  577 	mov	c,acc[1]
                                    578 ;	assignBit
                                    579 ;	../Fogger_Manager/fogger.c:64: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
                                    580 ;	assignBit
      003250 92 00            [24]  581 	mov	b0,c
      003252 92 B4            [24]  582 	mov	_P3_4,c
      003254 92 B3            [24]  583 	mov	_P3_3,c
      003256                        584 00115$:
                                    585 ;	../Fogger_Manager/fogger.c:68: if(!P2_6){ // no fluid
      003256 20 A6 18         [24]  586 	jb	_P2_6,00127$
                                    587 ;	../Fogger_Manager/fogger.c:69: if(Fluid_Level == TANK_FULL){
      003259 74 01            [12]  588 	mov	a,#0x01
      00325B B5 50 0E         [24]  589 	cjne	a,_Fluid_Level,00119$
                                    590 ;	../Fogger_Manager/fogger.c:70: if(fullCount++ > EMPTY_FLUID_COUNT){
      00325E AF 51            [24]  591 	mov	r7,_tick_fogger_fullCount_65536_36
      003260 05 51            [12]  592 	inc	_tick_fogger_fullCount_65536_36
      003262 EF               [12]  593 	mov	a,r7
      003263 24 F2            [12]  594 	add	a,#0xff - 0x0d
      003265 50 1F            [24]  595 	jnc	00128$
                                    596 ;	../Fogger_Manager/fogger.c:71: Fluid_Level = TANK_EMPTY;
      003267 75 50 00         [24]  597 	mov	_Fluid_Level,#0x00
      00326A 80 1A            [24]  598 	sjmp	00128$
      00326C                        599 00119$:
                                    600 ;	../Fogger_Manager/fogger.c:74: fullCount = 0;
      00326C 75 51 00         [24]  601 	mov	_tick_fogger_fullCount_65536_36,#0x00
      00326F 80 15            [24]  602 	sjmp	00128$
      003271                        603 00127$:
                                    604 ;	../Fogger_Manager/fogger.c:77: if(Fluid_Level == TANK_EMPTY){
      003271 E5 50            [12]  605 	mov	a,_Fluid_Level
      003273 70 0E            [24]  606 	jnz	00124$
                                    607 ;	../Fogger_Manager/fogger.c:78: if(fullCount++ > REFILL_FLUID_COUNT){
      003275 AF 51            [24]  608 	mov	r7,_tick_fogger_fullCount_65536_36
      003277 05 51            [12]  609 	inc	_tick_fogger_fullCount_65536_36
      003279 EF               [12]  610 	mov	a,r7
      00327A 24 DD            [12]  611 	add	a,#0xff - 0x22
      00327C 50 08            [24]  612 	jnc	00128$
                                    613 ;	../Fogger_Manager/fogger.c:79: Fluid_Level = TANK_FULL;
      00327E 75 50 01         [24]  614 	mov	_Fluid_Level,#0x01
      003281 80 03            [24]  615 	sjmp	00128$
      003283                        616 00124$:
                                    617 ;	../Fogger_Manager/fogger.c:82: fullCount = 0;
      003283 75 51 00         [24]  618 	mov	_tick_fogger_fullCount_65536_36,#0x00
      003286                        619 00128$:
                                    620 ;	../Fogger_Manager/fogger.c:87: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
      003286 75 82 0F         [24]  621 	mov	dpl,#0x0f
      003289 12 2F 91         [24]  622 	lcall	_get_runtime_data
      00328C E5 82            [12]  623 	mov	a,dpl
      00328E 70 28            [24]  624 	jnz	00139$
                                    625 ;	../Fogger_Manager/fogger.c:88: if(Fluid_Level == TANK_EMPTY){ //flash on empty
      003290 E5 50            [12]  626 	mov	a,_Fluid_Level
      003292 70 13            [24]  627 	jnz	00136$
                                    628 ;	../Fogger_Manager/fogger.c:89: on = ~on;
      003294 E5 52            [12]  629 	mov	a,_tick_fogger_on_65536_36
      003296 F4               [12]  630 	cpl	a
                                    631 ;	../Fogger_Manager/fogger.c:91: if(on){
      003297 F5 52            [12]  632 	mov	_tick_fogger_on_65536_36,a
      003299 60 06            [24]  633 	jz	00130$
                                    634 ;	../Fogger_Manager/fogger.c:92: P1_0 = 0;
                                    635 ;	assignBit
      00329B C2 90            [12]  636 	clr	_P1_0
                                    637 ;	../Fogger_Manager/fogger.c:93: P2_0 = 1;
                                    638 ;	assignBit
      00329D D2 A0            [12]  639 	setb	_P2_0
      00329F 80 1B            [24]  640 	sjmp	00140$
      0032A1                        641 00130$:
                                    642 ;	../Fogger_Manager/fogger.c:95: P1_0 = 1;
                                    643 ;	assignBit
      0032A1 D2 90            [12]  644 	setb	_P1_0
                                    645 ;	../Fogger_Manager/fogger.c:96: P2_0 = 1;
                                    646 ;	assignBit
      0032A3 D2 A0            [12]  647 	setb	_P2_0
      0032A5 80 15            [24]  648 	sjmp	00140$
      0032A7                        649 00136$:
                                    650 ;	../Fogger_Manager/fogger.c:99: if(get_heated()){ //heated not heated
      0032A7 E5 4F            [12]  651 	mov	a,_Heat_Flag
      0032A9 30 E7 06         [24]  652 	jnb	acc.7,00133$
                                    653 ;	../Fogger_Manager/fogger.c:100: P1_0 = 0;
                                    654 ;	assignBit
      0032AC C2 90            [12]  655 	clr	_P1_0
                                    656 ;	../Fogger_Manager/fogger.c:101: P2_0 = 1;
                                    657 ;	assignBit
      0032AE D2 A0            [12]  658 	setb	_P2_0
      0032B0 80 0A            [24]  659 	sjmp	00140$
      0032B2                        660 00133$:
                                    661 ;	../Fogger_Manager/fogger.c:103: P1_0 = 1;
                                    662 ;	assignBit
      0032B2 D2 90            [12]  663 	setb	_P1_0
                                    664 ;	../Fogger_Manager/fogger.c:104: P2_0 = 0;
                                    665 ;	assignBit
      0032B4 C2 A0            [12]  666 	clr	_P2_0
      0032B6 80 04            [24]  667 	sjmp	00140$
      0032B8                        668 00139$:
                                    669 ;	../Fogger_Manager/fogger.c:108: P1_0 = 1;
                                    670 ;	assignBit
      0032B8 D2 90            [12]  671 	setb	_P1_0
                                    672 ;	../Fogger_Manager/fogger.c:109: P2_0 = 1;
                                    673 ;	assignBit
      0032BA D2 A0            [12]  674 	setb	_P2_0
      0032BC                        675 00140$:
                                    676 ;	../Fogger_Manager/fogger.c:115: power_heater(HEATER_ENABLE);
      0032BC 75 82 00         [24]  677 	mov	dpl,#0x00
      0032BF 12 36 04         [24]  678 	lcall	_power_heater
                                    679 ;	../Fogger_Manager/fogger.c:117: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0032C2 75 82 10         [24]  680 	mov	dpl,#0x10
      0032C5 12 2F 91         [24]  681 	lcall	_get_runtime_data
      0032C8 E5 82            [12]  682 	mov	a,dpl
      0032CA 60 03            [24]  683 	jz	00621$
      0032CC 02 34 8D         [24]  684 	ljmp	00237$
      0032CF                        685 00621$:
                                    686 ;	../Fogger_Manager/fogger.c:118: if(has_dmx()){
      0032CF E5 2C            [12]  687 	mov	a,_Has_DMX
      0032D1 70 03            [24]  688 	jnz	00622$
      0032D3 02 34 88         [24]  689 	ljmp	00228$
      0032D6                        690 00622$:
                                    691 ;	../Fogger_Manager/fogger.c:119: Playing = PLAY;
      0032D6 75 4E 01         [24]  692 	mov	_Playing,#0x01
                                    693 ;	../Fogger_Manager/fogger.c:120: power = FOG_HIGH;
      0032D9 75 5E 01         [24]  694 	mov	_tick_fogger_power_65536_36,#0x01
                                    695 ;	../Fogger_Manager/fogger.c:122: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
      0032DC 75 82 0E         [24]  696 	mov	dpl,#0x0e
      0032DF 12 2F 91         [24]  697 	lcall	_get_runtime_data
      0032E2 E5 82            [12]  698 	mov	a,dpl
      0032E4 70 57            [24]  699 	jnz	00225$
                                    700 ;	../Fogger_Manager/fogger.c:125: value = get_dmx_value(DMX_M11_POWER_INDEX);
                                    701 ;	../Fogger_Manager/fogger.c:127: if(value <= DMX_FOG_OFF){
      0032E6 E5 21            [12]  702 	mov	a,_DMX
      0032E8 FF               [12]  703 	mov	r7,a
      0032E9 24 EB            [12]  704 	add	a,#0xff - 0x14
      0032EB 40 05            [24]  705 	jc	00148$
                                    706 ;	../Fogger_Manager/fogger.c:128: Playing = PAUSE;
      0032ED 75 4E 00         [24]  707 	mov	_Playing,#0x00
      0032F0 80 14            [24]  708 	sjmp	00149$
      0032F2                        709 00148$:
                                    710 ;	../Fogger_Manager/fogger.c:129: } else if(value <= DMX_FOG_LOW){
      0032F2 EF               [12]  711 	mov	a,r7
      0032F3 24 9B            [12]  712 	add	a,#0xff - 0x64
      0032F5 40 04            [24]  713 	jc	00145$
                                    714 ;	../Fogger_Manager/fogger.c:130: value = FOG_LO;
      0032F7 7F 04            [12]  715 	mov	r7,#0x04
      0032F9 80 0B            [24]  716 	sjmp	00149$
      0032FB                        717 00145$:
                                    718 ;	../Fogger_Manager/fogger.c:131: } else if(value <= DMX_FOG_MEDIUM){
      0032FB EF               [12]  719 	mov	a,r7
      0032FC 24 37            [12]  720 	add	a,#0xff - 0xc8
      0032FE 40 04            [24]  721 	jc	00142$
                                    722 ;	../Fogger_Manager/fogger.c:132: value = FOG_MED;
      003300 7F 02            [12]  723 	mov	r7,#0x02
      003302 80 02            [24]  724 	sjmp	00149$
      003304                        725 00142$:
                                    726 ;	../Fogger_Manager/fogger.c:134: value = FOG_HIGH;
      003304 7F 01            [12]  727 	mov	r7,#0x01
      003306                        728 00149$:
                                    729 ;	../Fogger_Manager/fogger.c:137: if(value != power){
      003306 EF               [12]  730 	mov	a,r7
      003307 B5 5E 02         [24]  731 	cjne	a,_tick_fogger_power_65536_36,00627$
      00330A 80 02            [24]  732 	sjmp	00151$
      00330C                        733 00627$:
                                    734 ;	../Fogger_Manager/fogger.c:138: power = value;
      00330C 8F 5E            [24]  735 	mov	_tick_fogger_power_65536_36,r7
      00330E                        736 00151$:
                                    737 ;	../Fogger_Manager/fogger.c:141: value = get_dmx_value(DMX_M11_DURATION_INDEX);
                                    738 ;	../Fogger_Manager/fogger.c:143: if(value != duration){
      00330E E5 22            [12]  739 	mov	a,(_DMX + 0x0001)
      003310 FF               [12]  740 	mov	r7,a
      003311 B5 5C 02         [24]  741 	cjne	a,_tick_fogger_duration_65536_36,00628$
      003314 80 08            [24]  742 	sjmp	00153$
      003316                        743 00628$:
                                    744 ;	../Fogger_Manager/fogger.c:144: duration = value;
      003316 8F 5C            [24]  745 	mov	_tick_fogger_duration_65536_36,r7
                                    746 ;	../Fogger_Manager/fogger.c:145: Timer = duration;
      003318 85 5C 4C         [24]  747 	mov	_Timer,_tick_fogger_duration_65536_36
                                    748 ;	../Fogger_Manager/fogger.c:146: Interval_Or_Duration = DURATION;
      00331B 75 4D FF         [24]  749 	mov	_Interval_Or_Duration,#0xff
      00331E                        750 00153$:
                                    751 ;	../Fogger_Manager/fogger.c:149: value = get_dmx_value(DMX_M11_INTERVAL_INDEX);
                                    752 ;	../Fogger_Manager/fogger.c:151: if(value != interval){
      00331E E5 23            [12]  753 	mov	a,(_DMX + 0x0002)
      003320 FF               [12]  754 	mov	r7,a
      003321 B5 5D 02         [24]  755 	cjne	a,_tick_fogger_interval_65536_36,00629$
      003324 80 05            [24]  756 	sjmp	00155$
      003326                        757 00629$:
                                    758 ;	../Fogger_Manager/fogger.c:152: interval = value;
      003326 8F 5D            [24]  759 	mov	_tick_fogger_interval_65536_36,r7
                                    760 ;	../Fogger_Manager/fogger.c:153: Playing = RESET;
      003328 75 4E 02         [24]  761 	mov	_Playing,#0x02
      00332B                        762 00155$:
                                    763 ;	../Fogger_Manager/fogger.c:156: value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);
                                    764 ;	../Fogger_Manager/fogger.c:158: if(value > DMX_HEATER_OFF){
      00332B E5 2B            [12]  765 	mov	a,(_DMX + 0x000a)
      00332D 24 7F            [12]  766 	add	a,#0xff - 0x80
      00332F 40 03            [24]  767 	jc	00630$
      003331 02 34 D8         [24]  768 	ljmp	00238$
      003334                        769 00630$:
                                    770 ;	../Fogger_Manager/fogger.c:159: power_heater(HEATER_DISABLE);
      003334 75 82 01         [24]  771 	mov	dpl,#0x01
      003337 12 36 04         [24]  772 	lcall	_power_heater
      00333A 02 34 D8         [24]  773 	ljmp	00238$
      00333D                        774 00225$:
                                    775 ;	../Fogger_Manager/fogger.c:166: value = get_dmx_value(DMX_M1_FOG_INDEX);
                                    776 ;	../Fogger_Manager/fogger.c:169: if(value <= DMX_FOG_OFF){
      00333D E5 21            [12]  777 	mov	a,_DMX
      00333F FF               [12]  778 	mov	r7,a
      003340 24 EB            [12]  779 	add	a,#0xff - 0x14
      003342 40 06            [24]  780 	jc	00222$
                                    781 ;	../Fogger_Manager/fogger.c:170: Playing = PAUSE;
      003344 75 4E 00         [24]  782 	mov	_Playing,#0x00
      003347 02 34 D8         [24]  783 	ljmp	00238$
      00334A                        784 00222$:
                                    785 ;	../Fogger_Manager/fogger.c:172: } else if(value <= DMX_FOG_3_13){
      00334A EF               [12]  786 	mov	a,r7
      00334B 24 D7            [12]  787 	add	a,#0xff - 0x28
      00334D 40 19            [24]  788 	jc	00219$
                                    789 ;	../Fogger_Manager/fogger.c:173: if(duration != 3 || interval != 13){
      00334F 74 03            [12]  790 	mov	a,#0x03
      003351 B5 5C 08         [24]  791 	cjne	a,_tick_fogger_duration_65536_36,00158$
      003354 74 0D            [12]  792 	mov	a,#0x0d
      003356 B5 5D 03         [24]  793 	cjne	a,_tick_fogger_interval_65536_36,00635$
      003359 02 34 D8         [24]  794 	ljmp	00238$
      00335C                        795 00635$:
      00335C                        796 00158$:
                                    797 ;	../Fogger_Manager/fogger.c:174: duration = 3;
      00335C 75 5C 03         [24]  798 	mov	_tick_fogger_duration_65536_36,#0x03
                                    799 ;	../Fogger_Manager/fogger.c:175: interval = 13;
      00335F 75 5D 0D         [24]  800 	mov	_tick_fogger_interval_65536_36,#0x0d
                                    801 ;	../Fogger_Manager/fogger.c:176: Playing = RESET;
      003362 75 4E 02         [24]  802 	mov	_Playing,#0x02
      003365 02 34 D8         [24]  803 	ljmp	00238$
      003368                        804 00219$:
                                    805 ;	../Fogger_Manager/fogger.c:178: } else if(value <= DMX_FOG_3_21){
      003368 EF               [12]  806 	mov	a,r7
      003369 24 C3            [12]  807 	add	a,#0xff - 0x3c
      00336B 40 19            [24]  808 	jc	00216$
                                    809 ;	../Fogger_Manager/fogger.c:179: if(duration != 3 || interval != 21){
      00336D 74 03            [12]  810 	mov	a,#0x03
      00336F B5 5C 08         [24]  811 	cjne	a,_tick_fogger_duration_65536_36,00161$
      003372 74 15            [12]  812 	mov	a,#0x15
      003374 B5 5D 03         [24]  813 	cjne	a,_tick_fogger_interval_65536_36,00639$
      003377 02 34 D8         [24]  814 	ljmp	00238$
      00337A                        815 00639$:
      00337A                        816 00161$:
                                    817 ;	../Fogger_Manager/fogger.c:180: duration = 3;
      00337A 75 5C 03         [24]  818 	mov	_tick_fogger_duration_65536_36,#0x03
                                    819 ;	../Fogger_Manager/fogger.c:181: interval = 21;
      00337D 75 5D 15         [24]  820 	mov	_tick_fogger_interval_65536_36,#0x15
                                    821 ;	../Fogger_Manager/fogger.c:182: Playing = RESET;
      003380 75 4E 02         [24]  822 	mov	_Playing,#0x02
      003383 02 34 D8         [24]  823 	ljmp	00238$
      003386                        824 00216$:
                                    825 ;	../Fogger_Manager/fogger.c:184: } else if(value <= DMX_FOG_3_34){
      003386 EF               [12]  826 	mov	a,r7
      003387 24 AF            [12]  827 	add	a,#0xff - 0x50
      003389 40 19            [24]  828 	jc	00213$
                                    829 ;	../Fogger_Manager/fogger.c:185: if(duration != 3 || interval != 34){
      00338B 74 03            [12]  830 	mov	a,#0x03
      00338D B5 5C 08         [24]  831 	cjne	a,_tick_fogger_duration_65536_36,00164$
      003390 74 22            [12]  832 	mov	a,#0x22
      003392 B5 5D 03         [24]  833 	cjne	a,_tick_fogger_interval_65536_36,00643$
      003395 02 34 D8         [24]  834 	ljmp	00238$
      003398                        835 00643$:
      003398                        836 00164$:
                                    837 ;	../Fogger_Manager/fogger.c:186: duration = 3;
      003398 75 5C 03         [24]  838 	mov	_tick_fogger_duration_65536_36,#0x03
                                    839 ;	../Fogger_Manager/fogger.c:187: interval = 34;
      00339B 75 5D 22         [24]  840 	mov	_tick_fogger_interval_65536_36,#0x22
                                    841 ;	../Fogger_Manager/fogger.c:188: Playing = RESET;
      00339E 75 4E 02         [24]  842 	mov	_Playing,#0x02
      0033A1 02 34 D8         [24]  843 	ljmp	00238$
      0033A4                        844 00213$:
                                    845 ;	../Fogger_Manager/fogger.c:190: } else if(value <= DMX_FOG_3_55){
      0033A4 EF               [12]  846 	mov	a,r7
      0033A5 24 9B            [12]  847 	add	a,#0xff - 0x64
      0033A7 40 19            [24]  848 	jc	00210$
                                    849 ;	../Fogger_Manager/fogger.c:191: if(duration != 3 || interval != 55){
      0033A9 74 03            [12]  850 	mov	a,#0x03
      0033AB B5 5C 08         [24]  851 	cjne	a,_tick_fogger_duration_65536_36,00167$
      0033AE 74 37            [12]  852 	mov	a,#0x37
      0033B0 B5 5D 03         [24]  853 	cjne	a,_tick_fogger_interval_65536_36,00647$
      0033B3 02 34 D8         [24]  854 	ljmp	00238$
      0033B6                        855 00647$:
      0033B6                        856 00167$:
                                    857 ;	../Fogger_Manager/fogger.c:192: duration = 3;
      0033B6 75 5C 03         [24]  858 	mov	_tick_fogger_duration_65536_36,#0x03
                                    859 ;	../Fogger_Manager/fogger.c:193: interval = 55;
      0033B9 75 5D 37         [24]  860 	mov	_tick_fogger_interval_65536_36,#0x37
                                    861 ;	../Fogger_Manager/fogger.c:194: Playing = RESET;
      0033BC 75 4E 02         [24]  862 	mov	_Playing,#0x02
      0033BF 02 34 D8         [24]  863 	ljmp	00238$
      0033C2                        864 00210$:
                                    865 ;	../Fogger_Manager/fogger.c:196: } else if(value <= DMX_FOG_8_21){
      0033C2 EF               [12]  866 	mov	a,r7
      0033C3 24 87            [12]  867 	add	a,#0xff - 0x78
      0033C5 40 19            [24]  868 	jc	00207$
                                    869 ;	../Fogger_Manager/fogger.c:197: if(duration != 8 || interval != 21){
      0033C7 74 08            [12]  870 	mov	a,#0x08
      0033C9 B5 5C 08         [24]  871 	cjne	a,_tick_fogger_duration_65536_36,00170$
      0033CC 74 15            [12]  872 	mov	a,#0x15
      0033CE B5 5D 03         [24]  873 	cjne	a,_tick_fogger_interval_65536_36,00651$
      0033D1 02 34 D8         [24]  874 	ljmp	00238$
      0033D4                        875 00651$:
      0033D4                        876 00170$:
                                    877 ;	../Fogger_Manager/fogger.c:198: duration = 8;
      0033D4 75 5C 08         [24]  878 	mov	_tick_fogger_duration_65536_36,#0x08
                                    879 ;	../Fogger_Manager/fogger.c:199: interval = 21;
      0033D7 75 5D 15         [24]  880 	mov	_tick_fogger_interval_65536_36,#0x15
                                    881 ;	../Fogger_Manager/fogger.c:200: Playing = RESET;
      0033DA 75 4E 02         [24]  882 	mov	_Playing,#0x02
      0033DD 02 34 D8         [24]  883 	ljmp	00238$
      0033E0                        884 00207$:
                                    885 ;	../Fogger_Manager/fogger.c:202: } else if(value <= DMX_FOG_8_34){
      0033E0 EF               [12]  886 	mov	a,r7
      0033E1 24 73            [12]  887 	add	a,#0xff - 0x8c
      0033E3 40 19            [24]  888 	jc	00204$
                                    889 ;	../Fogger_Manager/fogger.c:203: if(duration != 8 || interval != 34){
      0033E5 74 08            [12]  890 	mov	a,#0x08
      0033E7 B5 5C 08         [24]  891 	cjne	a,_tick_fogger_duration_65536_36,00173$
      0033EA 74 22            [12]  892 	mov	a,#0x22
      0033EC B5 5D 03         [24]  893 	cjne	a,_tick_fogger_interval_65536_36,00655$
      0033EF 02 34 D8         [24]  894 	ljmp	00238$
      0033F2                        895 00655$:
      0033F2                        896 00173$:
                                    897 ;	../Fogger_Manager/fogger.c:204: duration = 8;
      0033F2 75 5C 08         [24]  898 	mov	_tick_fogger_duration_65536_36,#0x08
                                    899 ;	../Fogger_Manager/fogger.c:205: interval = 34;
      0033F5 75 5D 22         [24]  900 	mov	_tick_fogger_interval_65536_36,#0x22
                                    901 ;	../Fogger_Manager/fogger.c:206: Playing = RESET;
      0033F8 75 4E 02         [24]  902 	mov	_Playing,#0x02
      0033FB 02 34 D8         [24]  903 	ljmp	00238$
      0033FE                        904 00204$:
                                    905 ;	../Fogger_Manager/fogger.c:208: } else if(value <= DMX_FOG_8_55){
      0033FE EF               [12]  906 	mov	a,r7
      0033FF 24 5F            [12]  907 	add	a,#0xff - 0xa0
      003401 40 19            [24]  908 	jc	00201$
                                    909 ;	../Fogger_Manager/fogger.c:209: if(duration != 8 || interval != 55){
      003403 74 08            [12]  910 	mov	a,#0x08
      003405 B5 5C 08         [24]  911 	cjne	a,_tick_fogger_duration_65536_36,00176$
      003408 74 37            [12]  912 	mov	a,#0x37
      00340A B5 5D 03         [24]  913 	cjne	a,_tick_fogger_interval_65536_36,00659$
      00340D 02 34 D8         [24]  914 	ljmp	00238$
      003410                        915 00659$:
      003410                        916 00176$:
                                    917 ;	../Fogger_Manager/fogger.c:210: duration = 8;
      003410 75 5C 08         [24]  918 	mov	_tick_fogger_duration_65536_36,#0x08
                                    919 ;	../Fogger_Manager/fogger.c:211: interval = 55;
      003413 75 5D 37         [24]  920 	mov	_tick_fogger_interval_65536_36,#0x37
                                    921 ;	../Fogger_Manager/fogger.c:212: Playing = RESET;
      003416 75 4E 02         [24]  922 	mov	_Playing,#0x02
      003419 02 34 D8         [24]  923 	ljmp	00238$
      00341C                        924 00201$:
                                    925 ;	../Fogger_Manager/fogger.c:214: } else if(value <= DMX_FOG_8_89){
      00341C EF               [12]  926 	mov	a,r7
      00341D 24 4B            [12]  927 	add	a,#0xff - 0xb4
      00341F 40 19            [24]  928 	jc	00198$
                                    929 ;	../Fogger_Manager/fogger.c:215: if(duration != 8 || interval != 89){
      003421 74 08            [12]  930 	mov	a,#0x08
      003423 B5 5C 08         [24]  931 	cjne	a,_tick_fogger_duration_65536_36,00179$
      003426 74 59            [12]  932 	mov	a,#0x59
      003428 B5 5D 03         [24]  933 	cjne	a,_tick_fogger_interval_65536_36,00663$
      00342B 02 34 D8         [24]  934 	ljmp	00238$
      00342E                        935 00663$:
      00342E                        936 00179$:
                                    937 ;	../Fogger_Manager/fogger.c:216: duration = 8;
      00342E 75 5C 08         [24]  938 	mov	_tick_fogger_duration_65536_36,#0x08
                                    939 ;	../Fogger_Manager/fogger.c:217: interval = 89;
      003431 75 5D 59         [24]  940 	mov	_tick_fogger_interval_65536_36,#0x59
                                    941 ;	../Fogger_Manager/fogger.c:218: Playing = RESET;
      003434 75 4E 02         [24]  942 	mov	_Playing,#0x02
      003437 02 34 D8         [24]  943 	ljmp	00238$
      00343A                        944 00198$:
                                    945 ;	../Fogger_Manager/fogger.c:220: } else if(value <= DMX_FOG_8_144){
      00343A EF               [12]  946 	mov	a,r7
      00343B 24 37            [12]  947 	add	a,#0xff - 0xc8
      00343D 40 19            [24]  948 	jc	00195$
                                    949 ;	../Fogger_Manager/fogger.c:221: if(duration != 8 || interval != 144){
      00343F 74 08            [12]  950 	mov	a,#0x08
      003441 B5 5C 08         [24]  951 	cjne	a,_tick_fogger_duration_65536_36,00182$
      003444 74 90            [12]  952 	mov	a,#0x90
      003446 B5 5D 03         [24]  953 	cjne	a,_tick_fogger_interval_65536_36,00667$
      003449 02 34 D8         [24]  954 	ljmp	00238$
      00344C                        955 00667$:
      00344C                        956 00182$:
                                    957 ;	../Fogger_Manager/fogger.c:222: duration = 8;
      00344C 75 5C 08         [24]  958 	mov	_tick_fogger_duration_65536_36,#0x08
                                    959 ;	../Fogger_Manager/fogger.c:223: interval = 144;
      00344F 75 5D 90         [24]  960 	mov	_tick_fogger_interval_65536_36,#0x90
                                    961 ;	../Fogger_Manager/fogger.c:224: Playing = RESET;
      003452 75 4E 02         [24]  962 	mov	_Playing,#0x02
      003455 02 34 D8         [24]  963 	ljmp	00238$
      003458                        964 00195$:
                                    965 ;	../Fogger_Manager/fogger.c:226: } else if(value <= DMX_FOG_21_55){
      003458 EF               [12]  966 	mov	a,r7
      003459 24 23            [12]  967 	add	a,#0xff - 0xdc
      00345B 40 17            [24]  968 	jc	00192$
                                    969 ;	../Fogger_Manager/fogger.c:227: if(duration != 21 || interval != 55){
      00345D 74 15            [12]  970 	mov	a,#0x15
      00345F B5 5C 07         [24]  971 	cjne	a,_tick_fogger_duration_65536_36,00185$
      003462 74 37            [12]  972 	mov	a,#0x37
      003464 B5 5D 02         [24]  973 	cjne	a,_tick_fogger_interval_65536_36,00671$
      003467 80 6F            [24]  974 	sjmp	00238$
      003469                        975 00671$:
      003469                        976 00185$:
                                    977 ;	../Fogger_Manager/fogger.c:228: duration = 21;
      003469 75 5C 15         [24]  978 	mov	_tick_fogger_duration_65536_36,#0x15
                                    979 ;	../Fogger_Manager/fogger.c:229: interval = 55;
      00346C 75 5D 37         [24]  980 	mov	_tick_fogger_interval_65536_36,#0x37
                                    981 ;	../Fogger_Manager/fogger.c:230: Playing = RESET;
      00346F 75 4E 02         [24]  982 	mov	_Playing,#0x02
      003472 80 64            [24]  983 	sjmp	00238$
      003474                        984 00192$:
                                    985 ;	../Fogger_Manager/fogger.c:233: if(duration != 0xFF || interval != 0){
      003474 74 FF            [12]  986 	mov	a,#0xff
      003476 B5 5C 04         [24]  987 	cjne	a,_tick_fogger_duration_65536_36,00188$
      003479 E5 5D            [12]  988 	mov	a,_tick_fogger_interval_65536_36
      00347B 60 5B            [24]  989 	jz	00238$
      00347D                        990 00188$:
                                    991 ;	../Fogger_Manager/fogger.c:234: duration = 0xFF;
      00347D 75 5C FF         [24]  992 	mov	_tick_fogger_duration_65536_36,#0xff
                                    993 ;	../Fogger_Manager/fogger.c:235: interval = 0;
      003480 75 5D 00         [24]  994 	mov	_tick_fogger_interval_65536_36,#0x00
                                    995 ;	../Fogger_Manager/fogger.c:236: Playing = RESET;
      003483 75 4E 02         [24]  996 	mov	_Playing,#0x02
      003486 80 50            [24]  997 	sjmp	00238$
      003488                        998 00228$:
                                    999 ;	../Fogger_Manager/fogger.c:242: Playing = RESET;
      003488 75 4E 02         [24] 1000 	mov	_Playing,#0x02
      00348B 80 4B            [24] 1001 	sjmp	00238$
      00348D                       1002 00237$:
                                   1003 ;	../Fogger_Manager/fogger.c:245: value = get_runtime_data(FOG_POWER_INDEX);
      00348D 75 82 00         [24] 1004 	mov	dpl,#0x00
      003490 12 2F 91         [24] 1005 	lcall	_get_runtime_data
      003493 AF 82            [24] 1006 	mov	r7,dpl
                                   1007 ;	../Fogger_Manager/fogger.c:249: value = 0x01 << (2 - value);
      003495 74 02            [12] 1008 	mov	a,#0x02
      003497 C3               [12] 1009 	clr	c
      003498 9F               [12] 1010 	subb	a,r7
      003499 FF               [12] 1011 	mov	r7,a
      00349A 8F F0            [24] 1012 	mov	b,r7
      00349C 05 F0            [12] 1013 	inc	b
      00349E 74 01            [12] 1014 	mov	a,#0x01
      0034A0 80 02            [24] 1015 	sjmp	00677$
      0034A2                       1016 00675$:
      0034A2 25 E0            [12] 1017 	add	a,acc
      0034A4                       1018 00677$:
      0034A4 D5 F0 FB         [24] 1019 	djnz	b,00675$
                                   1020 ;	../Fogger_Manager/fogger.c:251: if(value != power){
      0034A7 FF               [12] 1021 	mov	r7,a
      0034A8 B5 5E 02         [24] 1022 	cjne	a,_tick_fogger_power_65536_36,00678$
      0034AB 80 05            [24] 1023 	sjmp	00231$
      0034AD                       1024 00678$:
                                   1025 ;	../Fogger_Manager/fogger.c:252: power = value;
      0034AD 8F 5E            [24] 1026 	mov	_tick_fogger_power_65536_36,r7
                                   1027 ;	../Fogger_Manager/fogger.c:253: Playing = RESET;
      0034AF 75 4E 02         [24] 1028 	mov	_Playing,#0x02
      0034B2                       1029 00231$:
                                   1030 ;	../Fogger_Manager/fogger.c:256: value = get_runtime_data(FOG_DURATION_INDEX);
      0034B2 75 82 01         [24] 1031 	mov	dpl,#0x01
      0034B5 12 2F 91         [24] 1032 	lcall	_get_runtime_data
                                   1033 ;	../Fogger_Manager/fogger.c:258: if(value != duration){
      0034B8 E5 82            [12] 1034 	mov	a,dpl
      0034BA FF               [12] 1035 	mov	r7,a
      0034BB B5 5C 02         [24] 1036 	cjne	a,_tick_fogger_duration_65536_36,00679$
      0034BE 80 05            [24] 1037 	sjmp	00233$
      0034C0                       1038 00679$:
                                   1039 ;	../Fogger_Manager/fogger.c:259: duration = value;
      0034C0 8F 5C            [24] 1040 	mov	_tick_fogger_duration_65536_36,r7
                                   1041 ;	../Fogger_Manager/fogger.c:260: Playing = RESET;
      0034C2 75 4E 02         [24] 1042 	mov	_Playing,#0x02
      0034C5                       1043 00233$:
                                   1044 ;	../Fogger_Manager/fogger.c:263: value = get_runtime_data(FOG_INTERVAL_INDEX);
      0034C5 75 82 02         [24] 1045 	mov	dpl,#0x02
      0034C8 12 2F 91         [24] 1046 	lcall	_get_runtime_data
                                   1047 ;	../Fogger_Manager/fogger.c:265: if(value != interval){
      0034CB E5 82            [12] 1048 	mov	a,dpl
      0034CD FF               [12] 1049 	mov	r7,a
      0034CE B5 5D 02         [24] 1050 	cjne	a,_tick_fogger_interval_65536_36,00680$
      0034D1 80 05            [24] 1051 	sjmp	00238$
      0034D3                       1052 00680$:
                                   1053 ;	../Fogger_Manager/fogger.c:266: interval = value;
      0034D3 8F 5D            [24] 1054 	mov	_tick_fogger_interval_65536_36,r7
                                   1055 ;	../Fogger_Manager/fogger.c:267: Playing = RESET;
      0034D5 75 4E 02         [24] 1056 	mov	_Playing,#0x02
      0034D8                       1057 00238$:
                                   1058 ;	../Fogger_Manager/fogger.c:272: if(Playing == RESET){
      0034D8 74 02            [12] 1059 	mov	a,#0x02
      0034DA B5 4E 09         [24] 1060 	cjne	a,_Playing,00240$
                                   1061 ;	../Fogger_Manager/fogger.c:273: Playing = PAUSE;
      0034DD 75 4E 00         [24] 1062 	mov	_Playing,#0x00
                                   1063 ;	../Fogger_Manager/fogger.c:274: Timer = interval;
      0034E0 85 5D 4C         [24] 1064 	mov	_Timer,_tick_fogger_interval_65536_36
                                   1065 ;	../Fogger_Manager/fogger.c:275: Interval_Or_Duration = INTERVAL;
      0034E3 75 4D 00         [24] 1066 	mov	_Interval_Or_Duration,#0x00
      0034E6                       1067 00240$:
                                   1068 ;	../Fogger_Manager/fogger.c:279: if(Playing){
      0034E6 E5 4E            [12] 1069 	mov	a,_Playing
      0034E8 70 03            [24] 1070 	jnz	00683$
      0034EA 02 35 B1         [24] 1071 	ljmp	00266$
      0034ED                       1072 00683$:
                                   1073 ;	../Fogger_Manager/fogger.c:280: tock++;
      0034ED 05 5F            [12] 1074 	inc	_tick_fogger_tock_65536_36
                                   1075 ;	../Fogger_Manager/fogger.c:282: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
      0034EF 75 82 10         [24] 1076 	mov	dpl,#0x10
      0034F2 12 2F 91         [24] 1077 	lcall	_get_runtime_data
      0034F5 E5 82            [12] 1078 	mov	a,dpl
      0034F7 70 2A            [24] 1079 	jnz	00260$
                                   1080 ;	../Fogger_Manager/fogger.c:283: && ((duration && !interval) || (duration > DMX_FOG_DURATION_CONSTANT))){
      0034F9 E5 5C            [12] 1081 	mov	a,_tick_fogger_duration_65536_36
      0034FB 60 04            [24] 1082 	jz	00263$
      0034FD E5 5D            [12] 1083 	mov	a,_tick_fogger_interval_65536_36
      0034FF 60 06            [24] 1084 	jz	00259$
      003501                       1085 00263$:
      003501 E5 5C            [12] 1086 	mov	a,_tick_fogger_duration_65536_36
      003503 24 19            [12] 1087 	add	a,#0xff - 0xe6
      003505 50 1C            [24] 1088 	jnc	00260$
      003507                       1089 00259$:
                                   1090 ;	../Fogger_Manager/fogger.c:285: if(!(tock % power)){
      003507 85 5E F0         [24] 1091 	mov	b,_tick_fogger_power_65536_36
      00350A E5 5F            [12] 1092 	mov	a,_tick_fogger_tock_65536_36
      00350C 84               [48] 1093 	div	ab
      00350D E5 F0            [12] 1094 	mov	a,b
      00350F 70 09            [24] 1095 	jnz	00242$
                                   1096 ;	../Fogger_Manager/fogger.c:286: power_pump(PUMP_ON);
      003511 75 82 01         [24] 1097 	mov	dpl,#0x01
      003514 12 35 BD         [24] 1098 	lcall	_power_pump
      003517 02 35 B7         [24] 1099 	ljmp	00270$
      00351A                       1100 00242$:
                                   1101 ;	../Fogger_Manager/fogger.c:288: power_pump(PUMP_OFF);
      00351A 75 82 00         [24] 1102 	mov	dpl,#0x00
      00351D 12 35 BD         [24] 1103 	lcall	_power_pump
      003520 02 35 B7         [24] 1104 	ljmp	00270$
      003523                       1105 00260$:
                                   1106 ;	../Fogger_Manager/fogger.c:291: } else if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
      003523 75 82 10         [24] 1107 	mov	dpl,#0x10
      003526 12 2F 91         [24] 1108 	lcall	_get_runtime_data
      003529 E5 82            [12] 1109 	mov	a,dpl
      00352B 70 0C            [24] 1110 	jnz	00256$
                                   1111 ;	../Fogger_Manager/fogger.c:292: && (!duration)){
      00352D E5 5C            [12] 1112 	mov	a,_tick_fogger_duration_65536_36
                                   1113 ;	../Fogger_Manager/fogger.c:293: power_pump(PUMP_OFF);
      00352F 70 08            [24] 1114 	jnz	00256$
      003531 F5 82            [12] 1115 	mov	dpl,a
      003533 12 35 BD         [24] 1116 	lcall	_power_pump
      003536 02 35 B7         [24] 1117 	ljmp	00270$
      003539                       1118 00256$:
                                   1119 ;	../Fogger_Manager/fogger.c:296: if(!(tock % 8)){
      003539 AE 5F            [24] 1120 	mov	r6,_tick_fogger_tock_65536_36
      00353B 7F 00            [12] 1121 	mov	r7,#0x00
      00353D 74 08            [12] 1122 	mov	a,#0x08
      00353F C0 E0            [24] 1123 	push	acc
      003541 E4               [12] 1124 	clr	a
      003542 C0 E0            [24] 1125 	push	acc
      003544 8E 82            [24] 1126 	mov	dpl,r6
      003546 8F 83            [24] 1127 	mov	dph,r7
      003548 12 36 F6         [24] 1128 	lcall	__modsint
      00354B AE 82            [24] 1129 	mov	r6,dpl
      00354D AF 83            [24] 1130 	mov	r7,dph
      00354F 15 81            [12] 1131 	dec	sp
      003551 15 81            [12] 1132 	dec	sp
      003553 EE               [12] 1133 	mov	a,r6
      003554 4F               [12] 1134 	orl	a,r7
      003555 70 02            [24] 1135 	jnz	00245$
                                   1136 ;	../Fogger_Manager/fogger.c:297: Timer--;
      003557 15 4C            [12] 1137 	dec	_Timer
      003559                       1138 00245$:
                                   1139 ;	../Fogger_Manager/fogger.c:300: if(Timer == 0x00){
      003559 E5 4C            [12] 1140 	mov	a,_Timer
      00355B 70 2F            [24] 1141 	jnz	00253$
                                   1142 ;	../Fogger_Manager/fogger.c:301: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
      00355D E5 4D            [12] 1143 	mov	a,_Interval_Or_Duration
      00355F 70 05            [24] 1144 	jnz	00272$
      003561 7E 01            [12] 1145 	mov	r6,#0x01
      003563 FF               [12] 1146 	mov	r7,a
      003564 80 04            [24] 1147 	sjmp	00273$
      003566                       1148 00272$:
      003566 7E 00            [12] 1149 	mov	r6,#0x00
      003568 7F 00            [12] 1150 	mov	r7,#0x00
      00356A                       1151 00273$:
      00356A 8E 82            [24] 1152 	mov	dpl,r6
      00356C 12 35 BD         [24] 1153 	lcall	_power_pump
                                   1154 ;	../Fogger_Manager/fogger.c:302: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
      00356F E5 4D            [12] 1155 	mov	a,_Interval_Or_Duration
      003571 70 04            [24] 1156 	jnz	00274$
      003573 AF 5C            [24] 1157 	mov	r7,_tick_fogger_duration_65536_36
      003575 80 02            [24] 1158 	sjmp	00275$
      003577                       1159 00274$:
      003577 AF 5D            [24] 1160 	mov	r7,_tick_fogger_interval_65536_36
      003579                       1161 00275$:
      003579 8F 4C            [24] 1162 	mov	_Timer,r7
                                   1163 ;	../Fogger_Manager/fogger.c:303: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
      00357B E5 4D            [12] 1164 	mov	a,_Interval_Or_Duration
      00357D 70 05            [24] 1165 	jnz	00276$
      00357F 7E FF            [12] 1166 	mov	r6,#0xff
      003581 FF               [12] 1167 	mov	r7,a
      003582 80 04            [24] 1168 	sjmp	00277$
      003584                       1169 00276$:
      003584 7E 00            [12] 1170 	mov	r6,#0x00
      003586 7F 00            [12] 1171 	mov	r7,#0x00
      003588                       1172 00277$:
      003588 8E 4D            [24] 1173 	mov	_Interval_Or_Duration,r6
      00358A 80 2B            [24] 1174 	sjmp	00270$
      00358C                       1175 00253$:
                                   1176 ;	../Fogger_Manager/fogger.c:305: if(Interval_Or_Duration == INTERVAL){
      00358C E5 4D            [12] 1177 	mov	a,_Interval_Or_Duration
                                   1178 ;	../Fogger_Manager/fogger.c:306: power_pump(PUMP_OFF);
      00358E 70 07            [24] 1179 	jnz	00250$
      003590 F5 82            [12] 1180 	mov	dpl,a
      003592 12 35 BD         [24] 1181 	lcall	_power_pump
      003595 80 20            [24] 1182 	sjmp	00270$
      003597                       1183 00250$:
                                   1184 ;	../Fogger_Manager/fogger.c:308: if(!(tock % power)){
      003597 85 5E F0         [24] 1185 	mov	b,_tick_fogger_power_65536_36
      00359A E5 5F            [12] 1186 	mov	a,_tick_fogger_tock_65536_36
      00359C 84               [48] 1187 	div	ab
      00359D E5 F0            [12] 1188 	mov	a,b
      00359F 70 08            [24] 1189 	jnz	00247$
                                   1190 ;	../Fogger_Manager/fogger.c:309: power_pump(PUMP_ON);
      0035A1 75 82 01         [24] 1191 	mov	dpl,#0x01
      0035A4 12 35 BD         [24] 1192 	lcall	_power_pump
      0035A7 80 0E            [24] 1193 	sjmp	00270$
      0035A9                       1194 00247$:
                                   1195 ;	../Fogger_Manager/fogger.c:311: power_pump(PUMP_OFF);
      0035A9 75 82 00         [24] 1196 	mov	dpl,#0x00
      0035AC 12 35 BD         [24] 1197 	lcall	_power_pump
      0035AF 80 06            [24] 1198 	sjmp	00270$
      0035B1                       1199 00266$:
                                   1200 ;	../Fogger_Manager/fogger.c:319: power_pump(PUMP_OFF);
      0035B1 75 82 00         [24] 1201 	mov	dpl,#0x00
      0035B4 12 35 BD         [24] 1202 	lcall	_power_pump
      0035B7                       1203 00270$:
                                   1204 ;	../Fogger_Manager/fogger.c:322: }
      0035B7 85 1A 81         [24] 1205 	mov	sp,_bp
      0035BA D0 1A            [24] 1206 	pop	_bp
      0035BC 22               [24] 1207 	ret
                                   1208 ;------------------------------------------------------------
                                   1209 ;Allocation info for local variables in function 'power_pump'
                                   1210 ;------------------------------------------------------------
                                   1211 ;action                    Allocated to registers r7 
                                   1212 ;------------------------------------------------------------
                                   1213 ;	../Fogger_Manager/fogger.c:324: void power_pump(uint8_t action){
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function power_pump
                                   1216 ;	-----------------------------------------
      0035BD                       1217 _power_pump:
      0035BD AF 82            [24] 1218 	mov	r7,dpl
                                   1219 ;	../Fogger_Manager/fogger.c:325: switch (action)
      0035BF BF 01 02         [24] 1220 	cjne	r7,#0x01,00139$
      0035C2 80 0A            [24] 1221 	sjmp	00101$
      0035C4                       1222 00139$:
      0035C4 BF 02 02         [24] 1223 	cjne	r7,#0x02,00140$
      0035C7 80 1F            [24] 1224 	sjmp	00106$
      0035C9                       1225 00140$:
                                   1226 ;	../Fogger_Manager/fogger.c:327: case PUMP_ON:
      0035C9 BF 03 35         [24] 1227 	cjne	r7,#0x03,00111$
      0035CC 80 30            [24] 1228 	sjmp	00110$
      0035CE                       1229 00101$:
                                   1230 ;	../Fogger_Manager/fogger.c:328: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
      0035CE E5 50            [12] 1231 	mov	a,_Fluid_Level
      0035D0 60 13            [24] 1232 	jz	00103$
      0035D2 AE 4F            [24] 1233 	mov	r6,_Heat_Flag
      0035D4 53 06 80         [24] 1234 	anl	ar6,#0x80
      0035D7 7F 00            [12] 1235 	mov	r7,#0x00
      0035D9 BE 80 09         [24] 1236 	cjne	r6,#0x80,00103$
      0035DC BF 00 06         [24] 1237 	cjne	r7,#0x00,00103$
                                   1238 ;	../Fogger_Manager/fogger.c:329: P2_5 = 0;
                                   1239 ;	assignBit
      0035DF C2 A5            [12] 1240 	clr	_P2_5
                                   1241 ;	../Fogger_Manager/fogger.c:330: Heat_Flag &= ~HOT_FLAG;
      0035E1 53 4F FD         [24] 1242 	anl	_Heat_Flag,#0xfd
      0035E4 22               [24] 1243 	ret
      0035E5                       1244 00103$:
                                   1245 ;	../Fogger_Manager/fogger.c:332: P2_5 = 1;
                                   1246 ;	assignBit
      0035E5 D2 A5            [12] 1247 	setb	_P2_5
                                   1248 ;	../Fogger_Manager/fogger.c:334: break;
                                   1249 ;	../Fogger_Manager/fogger.c:335: case PUMP_OVERRIDE:
      0035E7 22               [24] 1250 	ret
      0035E8                       1251 00106$:
                                   1252 ;	../Fogger_Manager/fogger.c:336: if(get_heated() == HEATED){
      0035E8 AE 4F            [24] 1253 	mov	r6,_Heat_Flag
      0035EA 53 06 80         [24] 1254 	anl	ar6,#0x80
      0035ED 7F 00            [12] 1255 	mov	r7,#0x00
      0035EF BE 80 09         [24] 1256 	cjne	r6,#0x80,00108$
      0035F2 BF 00 06         [24] 1257 	cjne	r7,#0x00,00108$
                                   1258 ;	../Fogger_Manager/fogger.c:337: P2_5 = 0;
                                   1259 ;	assignBit
      0035F5 C2 A5            [12] 1260 	clr	_P2_5
                                   1261 ;	../Fogger_Manager/fogger.c:338: Heat_Flag &= ~HOT_FLAG;
      0035F7 53 4F FD         [24] 1262 	anl	_Heat_Flag,#0xfd
      0035FA 22               [24] 1263 	ret
      0035FB                       1264 00108$:
                                   1265 ;	../Fogger_Manager/fogger.c:340: P2_5 = 1;
                                   1266 ;	assignBit
      0035FB D2 A5            [12] 1267 	setb	_P2_5
                                   1268 ;	../Fogger_Manager/fogger.c:342: break;
                                   1269 ;	../Fogger_Manager/fogger.c:343: case PUMP_MASTER_OVERRIDE:
      0035FD 22               [24] 1270 	ret
      0035FE                       1271 00110$:
                                   1272 ;	../Fogger_Manager/fogger.c:344: P2_5 = 0;
                                   1273 ;	assignBit
      0035FE C2 A5            [12] 1274 	clr	_P2_5
                                   1275 ;	../Fogger_Manager/fogger.c:345: break;
                                   1276 ;	../Fogger_Manager/fogger.c:346: default:
      003600 22               [24] 1277 	ret
      003601                       1278 00111$:
                                   1279 ;	../Fogger_Manager/fogger.c:347: P2_5 = 1;
                                   1280 ;	assignBit
      003601 D2 A5            [12] 1281 	setb	_P2_5
                                   1282 ;	../Fogger_Manager/fogger.c:349: }
                                   1283 ;	../Fogger_Manager/fogger.c:350: }
      003603 22               [24] 1284 	ret
                                   1285 ;------------------------------------------------------------
                                   1286 ;Allocation info for local variables in function 'power_heater'
                                   1287 ;------------------------------------------------------------
                                   1288 ;action                    Allocated to registers r7 
                                   1289 ;------------------------------------------------------------
                                   1290 ;	../Fogger_Manager/fogger.c:352: void power_heater(uint8_t action){
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function power_heater
                                   1293 ;	-----------------------------------------
      003604                       1294 _power_heater:
      003604 AF 82            [24] 1295 	mov	r7,dpl
                                   1296 ;	../Fogger_Manager/fogger.c:353: switch (action)
      003606 BF 01 08         [24] 1297 	cjne	r7,#0x01,00102$
                                   1298 ;	../Fogger_Manager/fogger.c:356: Heat_Flag |= HEAT_DISABLE_FLAG;
      003609 AE 4F            [24] 1299 	mov	r6,_Heat_Flag
      00360B 43 06 10         [24] 1300 	orl	ar6,#0x10
      00360E 8E 4F            [24] 1301 	mov	_Heat_Flag,r6
                                   1302 ;	../Fogger_Manager/fogger.c:357: break;
                                   1303 ;	../Fogger_Manager/fogger.c:358: default:
      003610 22               [24] 1304 	ret
      003611                       1305 00102$:
                                   1306 ;	../Fogger_Manager/fogger.c:359: Heat_Flag &= ~HEAT_DISABLE_FLAG;
      003611 53 4F EF         [24] 1307 	anl	_Heat_Flag,#0xef
                                   1308 ;	../Fogger_Manager/fogger.c:361: }
                                   1309 ;	../Fogger_Manager/fogger.c:362: }
      003614 22               [24] 1310 	ret
                                   1311 	.area CSEG    (CODE)
                                   1312 	.area CONST   (CODE)
                                   1313 	.area XINIT   (CODE)
                                   1314 	.area CABS    (ABS,CODE)
