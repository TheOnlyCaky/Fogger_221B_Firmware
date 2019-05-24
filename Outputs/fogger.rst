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
      0030C6                        368 _tick_fogger:
                           000007   369 	ar7 = 0x07
                           000006   370 	ar6 = 0x06
                           000005   371 	ar5 = 0x05
                           000004   372 	ar4 = 0x04
                           000003   373 	ar3 = 0x03
                           000002   374 	ar2 = 0x02
                           000001   375 	ar1 = 0x01
                           000000   376 	ar0 = 0x00
      0030C6 C0 1A            [24]  377 	push	_bp
      0030C8 E5 81            [12]  378 	mov	a,sp
      0030CA F5 1A            [12]  379 	mov	_bp,a
      0030CC 24 04            [12]  380 	add	a,#0x04
      0030CE F5 81            [12]  381 	mov	sp,a
                                    382 ;	../Fogger_Manager/fogger.c:24: uint32_t runningAverage = 0;
      0030D0 A8 1A            [24]  383 	mov	r0,_bp
      0030D2 08               [12]  384 	inc	r0
      0030D3 E4               [12]  385 	clr	a
      0030D4 F6               [12]  386 	mov	@r0,a
      0030D5 08               [12]  387 	inc	r0
      0030D6 F6               [12]  388 	mov	@r0,a
      0030D7 08               [12]  389 	inc	r0
      0030D8 F6               [12]  390 	mov	@r0,a
      0030D9 08               [12]  391 	inc	r0
      0030DA F6               [12]  392 	mov	@r0,a
                                    393 ;	../Fogger_Manager/fogger.c:36: temperature[tick++ % MOVING_AVERAGE] = get_adc_value(ADC_TEMPERATURE);
      0030DB AB 5B            [24]  394 	mov	r3,_tick_fogger_tick_65536_36
      0030DD 05 5B            [12]  395 	inc	_tick_fogger_tick_65536_36
      0030DF 53 03 03         [24]  396 	anl	ar3,#0x03
      0030E2 EB               [12]  397 	mov	a,r3
      0030E3 2B               [12]  398 	add	a,r3
      0030E4 24 53            [12]  399 	add	a,#_tick_fogger_temperature_65536_36
      0030E6 F9               [12]  400 	mov	r1,a
      0030E7 75 82 00         [24]  401 	mov	dpl,#0x00
      0030EA C0 01            [24]  402 	push	ar1
      0030EC 12 04 81         [24]  403 	lcall	_get_adc_value
      0030EF E5 82            [12]  404 	mov	a,dpl
      0030F1 85 83 F0         [24]  405 	mov	b,dph
      0030F4 D0 01            [24]  406 	pop	ar1
      0030F6 F7               [12]  407 	mov	@r1,a
      0030F7 09               [12]  408 	inc	r1
      0030F8 A7 F0            [24]  409 	mov	@r1,b
                                    410 ;	../Fogger_Manager/fogger.c:38: for(value = 0; value < MOVING_AVERAGE; value++){
      0030FA 7B 00            [12]  411 	mov	r3,#0x00
      0030FC                        412 00263$:
                                    413 ;	../Fogger_Manager/fogger.c:39: if(!value){
      0030FC EB               [12]  414 	mov	a,r3
      0030FD 70 1F            [24]  415 	jnz	00102$
                                    416 ;	../Fogger_Manager/fogger.c:40: runningAverage = temperature[value];
      0030FF EB               [12]  417 	mov	a,r3
      003100 2B               [12]  418 	add	a,r3
      003101 24 53            [12]  419 	add	a,#_tick_fogger_temperature_65536_36
      003103 F9               [12]  420 	mov	r1,a
      003104 C0 03            [24]  421 	push	ar3
      003106 87 02            [24]  422 	mov	ar2,@r1
      003108 09               [12]  423 	inc	r1
      003109 87 03            [24]  424 	mov	ar3,@r1
      00310B 19               [12]  425 	dec	r1
      00310C A8 1A            [24]  426 	mov	r0,_bp
      00310E 08               [12]  427 	inc	r0
      00310F A6 02            [24]  428 	mov	@r0,ar2
      003111 08               [12]  429 	inc	r0
      003112 A6 03            [24]  430 	mov	@r0,ar3
      003114 08               [12]  431 	inc	r0
      003115 76 00            [12]  432 	mov	@r0,#0x00
      003117 08               [12]  433 	inc	r0
      003118 76 00            [12]  434 	mov	@r0,#0x00
      00311A D0 03            [24]  435 	pop	ar3
      00311C 80 25            [24]  436 	sjmp	00264$
      00311E                        437 00102$:
                                    438 ;	../Fogger_Manager/fogger.c:42: runningAverage += temperature[value];
      00311E EB               [12]  439 	mov	a,r3
      00311F 2B               [12]  440 	add	a,r3
      003120 24 53            [12]  441 	add	a,#_tick_fogger_temperature_65536_36
      003122 F9               [12]  442 	mov	r1,a
      003123 C0 03            [24]  443 	push	ar3
      003125 87 02            [24]  444 	mov	ar2,@r1
      003127 09               [12]  445 	inc	r1
      003128 87 03            [24]  446 	mov	ar3,@r1
      00312A 19               [12]  447 	dec	r1
      00312B 7E 00            [12]  448 	mov	r6,#0x00
      00312D 7F 00            [12]  449 	mov	r7,#0x00
      00312F A8 1A            [24]  450 	mov	r0,_bp
      003131 08               [12]  451 	inc	r0
      003132 EA               [12]  452 	mov	a,r2
      003133 26               [12]  453 	add	a,@r0
      003134 F6               [12]  454 	mov	@r0,a
      003135 EB               [12]  455 	mov	a,r3
      003136 08               [12]  456 	inc	r0
      003137 36               [12]  457 	addc	a,@r0
      003138 F6               [12]  458 	mov	@r0,a
      003139 EE               [12]  459 	mov	a,r6
      00313A 08               [12]  460 	inc	r0
      00313B 36               [12]  461 	addc	a,@r0
      00313C F6               [12]  462 	mov	@r0,a
      00313D EF               [12]  463 	mov	a,r7
      00313E 08               [12]  464 	inc	r0
      00313F 36               [12]  465 	addc	a,@r0
      003140 F6               [12]  466 	mov	@r0,a
                                    467 ;	../Fogger_Manager/fogger.c:312: power_pump(PUMP_OFF);
      003141 D0 03            [24]  468 	pop	ar3
                                    469 ;	../Fogger_Manager/fogger.c:42: runningAverage += temperature[value];
      003143                        470 00264$:
                                    471 ;	../Fogger_Manager/fogger.c:38: for(value = 0; value < MOVING_AVERAGE; value++){
      003143 0B               [12]  472 	inc	r3
      003144 BB 04 00         [24]  473 	cjne	r3,#0x04,00590$
      003147                        474 00590$:
      003147 40 B3            [24]  475 	jc	00263$
                                    476 ;	../Fogger_Manager/fogger.c:46: runningAverage = runningAverage >> MOVING_AVERAGE_SHIFT;
      003149 A8 1A            [24]  477 	mov	r0,_bp
      00314B 08               [12]  478 	inc	r0
      00314C 08               [12]  479 	inc	r0
      00314D 08               [12]  480 	inc	r0
      00314E 08               [12]  481 	inc	r0
      00314F E6               [12]  482 	mov	a,@r0
      003150 C3               [12]  483 	clr	c
      003151 13               [12]  484 	rrc	a
      003152 FF               [12]  485 	mov	r7,a
      003153 18               [12]  486 	dec	r0
      003154 E6               [12]  487 	mov	a,@r0
      003155 13               [12]  488 	rrc	a
      003156 FE               [12]  489 	mov	r6,a
      003157 18               [12]  490 	dec	r0
      003158 E6               [12]  491 	mov	a,@r0
      003159 13               [12]  492 	rrc	a
      00315A FD               [12]  493 	mov	r5,a
      00315B 18               [12]  494 	dec	r0
      00315C E6               [12]  495 	mov	a,@r0
      00315D 13               [12]  496 	rrc	a
      00315E FC               [12]  497 	mov	r4,a
      00315F EF               [12]  498 	mov	a,r7
      003160 C3               [12]  499 	clr	c
      003161 13               [12]  500 	rrc	a
      003162 FF               [12]  501 	mov	r7,a
      003163 EE               [12]  502 	mov	a,r6
      003164 13               [12]  503 	rrc	a
      003165 FE               [12]  504 	mov	r6,a
      003166 ED               [12]  505 	mov	a,r5
      003167 13               [12]  506 	rrc	a
      003168 FD               [12]  507 	mov	r5,a
      003169 EC               [12]  508 	mov	a,r4
      00316A 13               [12]  509 	rrc	a
                                    510 ;	../Fogger_Manager/fogger.c:48: if(runningAverage < HEAT_LOW){ /* Turn on heater full blast */
      00316B FC               [12]  511 	mov	r4,a
      00316C C3               [12]  512 	clr	c
      00316D 94 8C            [12]  513 	subb	a,#0x8c
      00316F ED               [12]  514 	mov	a,r5
      003170 94 00            [12]  515 	subb	a,#0x00
      003172 EE               [12]  516 	mov	a,r6
      003173 94 00            [12]  517 	subb	a,#0x00
      003175 EF               [12]  518 	mov	a,r7
      003176 94 00            [12]  519 	subb	a,#0x00
      003178 50 05            [24]  520 	jnc	00111$
                                    521 ;	../Fogger_Manager/fogger.c:49: Heat_Flag &= ~HEATED;
                                    522 ;	../Fogger_Manager/fogger.c:50: Heat_Flag &= ~HOT_FLAG;
      00317A 53 4F 7D         [24]  523 	anl	_Heat_Flag,#(0x7f&0xfd)
      00317D 80 31            [24]  524 	sjmp	00112$
      00317F                        525 00111$:
                                    526 ;	../Fogger_Manager/fogger.c:51: } else if(runningAverage > HEAT_HIGH){ /* Turn off Heater */
      00317F C3               [12]  527 	clr	c
      003180 74 B9            [12]  528 	mov	a,#0xb9
      003182 9C               [12]  529 	subb	a,r4
      003183 E4               [12]  530 	clr	a
      003184 9D               [12]  531 	subb	a,r5
      003185 E4               [12]  532 	clr	a
      003186 9E               [12]  533 	subb	a,r6
      003187 E4               [12]  534 	clr	a
      003188 9F               [12]  535 	subb	a,r7
      003189 50 10            [24]  536 	jnc	00108$
                                    537 ;	../Fogger_Manager/fogger.c:52: Heat_Flag |= HOT_FLAG;
      00318B AA 4F            [24]  538 	mov	r2,_Heat_Flag
      00318D 43 02 02         [24]  539 	orl	ar2,#0x02
                                    540 ;	../Fogger_Manager/fogger.c:53: Heat_Flag |= HEATED;
      003190 8A 4F            [24]  541 	mov  _Heat_Flag,r2
      003192 7B 00            [12]  542 	mov	r3,#0x00
      003194 43 02 80         [24]  543 	orl	ar2,#0x80
      003197 8A 4F            [24]  544 	mov	_Heat_Flag,r2
      003199 80 15            [24]  545 	sjmp	00112$
      00319B                        546 00108$:
                                    547 ;	../Fogger_Manager/fogger.c:54: } else if(runningAverage > HEAT_OK){ /* Set Heated */
      00319B C3               [12]  548 	clr	c
      00319C 74 AA            [12]  549 	mov	a,#0xaa
      00319E 9C               [12]  550 	subb	a,r4
      00319F E4               [12]  551 	clr	a
      0031A0 9D               [12]  552 	subb	a,r5
      0031A1 E4               [12]  553 	clr	a
      0031A2 9E               [12]  554 	subb	a,r6
      0031A3 E4               [12]  555 	clr	a
      0031A4 9F               [12]  556 	subb	a,r7
      0031A5 50 09            [24]  557 	jnc	00112$
                                    558 ;	../Fogger_Manager/fogger.c:55: Heat_Flag |= HEATED;
      0031A7 AE 4F            [24]  559 	mov	r6,_Heat_Flag
      0031A9 7F 00            [12]  560 	mov	r7,#0x00
      0031AB 43 06 80         [24]  561 	orl	ar6,#0x80
      0031AE 8E 4F            [24]  562 	mov	_Heat_Flag,r6
      0031B0                        563 00112$:
                                    564 ;	../Fogger_Manager/fogger.c:59: if(Heat_Flag & HEAT_DISABLE_FLAG){
      0031B0 E5 4F            [12]  565 	mov	a,_Heat_Flag
      0031B2 30 E4 06         [24]  566 	jnb	acc.4,00114$
                                    567 ;	../Fogger_Manager/fogger.c:60: P3_4 = 1;
                                    568 ;	assignBit
      0031B5 D2 B4            [12]  569 	setb	_P3_4
                                    570 ;	../Fogger_Manager/fogger.c:61: P3_3 = 1;
                                    571 ;	assignBit
      0031B7 D2 B3            [12]  572 	setb	_P3_3
      0031B9 80 0A            [24]  573 	sjmp	00115$
      0031BB                        574 00114$:
                                    575 ;	../Fogger_Manager/fogger.c:63: P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
      0031BB E5 4F            [12]  576 	mov	a,_Heat_Flag
      0031BD A2 E1            [12]  577 	mov	c,acc[1]
                                    578 ;	assignBit
                                    579 ;	../Fogger_Manager/fogger.c:64: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
                                    580 ;	assignBit
      0031BF 92 00            [24]  581 	mov	b0,c
      0031C1 92 B4            [24]  582 	mov	_P3_4,c
      0031C3 92 B3            [24]  583 	mov	_P3_3,c
      0031C5                        584 00115$:
                                    585 ;	../Fogger_Manager/fogger.c:68: if(!P2_6){ // no fluid
      0031C5 20 A6 18         [24]  586 	jb	_P2_6,00127$
                                    587 ;	../Fogger_Manager/fogger.c:69: if(Fluid_Level == TANK_FULL){
      0031C8 74 01            [12]  588 	mov	a,#0x01
      0031CA B5 50 0E         [24]  589 	cjne	a,_Fluid_Level,00119$
                                    590 ;	../Fogger_Manager/fogger.c:70: if(fullCount++ > EMPTY_FLUID_COUNT){
      0031CD AF 51            [24]  591 	mov	r7,_tick_fogger_fullCount_65536_36
      0031CF 05 51            [12]  592 	inc	_tick_fogger_fullCount_65536_36
      0031D1 EF               [12]  593 	mov	a,r7
      0031D2 24 F2            [12]  594 	add	a,#0xff - 0x0d
      0031D4 50 1F            [24]  595 	jnc	00128$
                                    596 ;	../Fogger_Manager/fogger.c:71: Fluid_Level = TANK_EMPTY;
      0031D6 75 50 00         [24]  597 	mov	_Fluid_Level,#0x00
      0031D9 80 1A            [24]  598 	sjmp	00128$
      0031DB                        599 00119$:
                                    600 ;	../Fogger_Manager/fogger.c:74: fullCount = 0;
      0031DB 75 51 00         [24]  601 	mov	_tick_fogger_fullCount_65536_36,#0x00
      0031DE 80 15            [24]  602 	sjmp	00128$
      0031E0                        603 00127$:
                                    604 ;	../Fogger_Manager/fogger.c:77: if(Fluid_Level == TANK_EMPTY){
      0031E0 E5 50            [12]  605 	mov	a,_Fluid_Level
      0031E2 70 0E            [24]  606 	jnz	00124$
                                    607 ;	../Fogger_Manager/fogger.c:78: if(fullCount++ > REFILL_FLUID_COUNT){
      0031E4 AF 51            [24]  608 	mov	r7,_tick_fogger_fullCount_65536_36
      0031E6 05 51            [12]  609 	inc	_tick_fogger_fullCount_65536_36
      0031E8 EF               [12]  610 	mov	a,r7
      0031E9 24 DD            [12]  611 	add	a,#0xff - 0x22
      0031EB 50 08            [24]  612 	jnc	00128$
                                    613 ;	../Fogger_Manager/fogger.c:79: Fluid_Level = TANK_FULL;
      0031ED 75 50 01         [24]  614 	mov	_Fluid_Level,#0x01
      0031F0 80 03            [24]  615 	sjmp	00128$
      0031F2                        616 00124$:
                                    617 ;	../Fogger_Manager/fogger.c:82: fullCount = 0;
      0031F2 75 51 00         [24]  618 	mov	_tick_fogger_fullCount_65536_36,#0x00
      0031F5                        619 00128$:
                                    620 ;	../Fogger_Manager/fogger.c:87: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
      0031F5 75 82 0F         [24]  621 	mov	dpl,#0x0f
      0031F8 12 2F 00         [24]  622 	lcall	_get_runtime_data
      0031FB E5 82            [12]  623 	mov	a,dpl
      0031FD 70 28            [24]  624 	jnz	00139$
                                    625 ;	../Fogger_Manager/fogger.c:88: if(Fluid_Level == TANK_EMPTY){ //flash on empty
      0031FF E5 50            [12]  626 	mov	a,_Fluid_Level
      003201 70 13            [24]  627 	jnz	00136$
                                    628 ;	../Fogger_Manager/fogger.c:89: on = ~on;
      003203 E5 52            [12]  629 	mov	a,_tick_fogger_on_65536_36
      003205 F4               [12]  630 	cpl	a
                                    631 ;	../Fogger_Manager/fogger.c:91: if(on){
      003206 F5 52            [12]  632 	mov	_tick_fogger_on_65536_36,a
      003208 60 06            [24]  633 	jz	00130$
                                    634 ;	../Fogger_Manager/fogger.c:92: P1_0 = 0;
                                    635 ;	assignBit
      00320A C2 90            [12]  636 	clr	_P1_0
                                    637 ;	../Fogger_Manager/fogger.c:93: P2_0 = 1;
                                    638 ;	assignBit
      00320C D2 A0            [12]  639 	setb	_P2_0
      00320E 80 1B            [24]  640 	sjmp	00140$
      003210                        641 00130$:
                                    642 ;	../Fogger_Manager/fogger.c:95: P1_0 = 1;
                                    643 ;	assignBit
      003210 D2 90            [12]  644 	setb	_P1_0
                                    645 ;	../Fogger_Manager/fogger.c:96: P2_0 = 1;
                                    646 ;	assignBit
      003212 D2 A0            [12]  647 	setb	_P2_0
      003214 80 15            [24]  648 	sjmp	00140$
      003216                        649 00136$:
                                    650 ;	../Fogger_Manager/fogger.c:99: if(get_heated()){ //heated not heated
      003216 E5 4F            [12]  651 	mov	a,_Heat_Flag
      003218 30 E7 06         [24]  652 	jnb	acc.7,00133$
                                    653 ;	../Fogger_Manager/fogger.c:100: P1_0 = 0;
                                    654 ;	assignBit
      00321B C2 90            [12]  655 	clr	_P1_0
                                    656 ;	../Fogger_Manager/fogger.c:101: P2_0 = 1;
                                    657 ;	assignBit
      00321D D2 A0            [12]  658 	setb	_P2_0
      00321F 80 0A            [24]  659 	sjmp	00140$
      003221                        660 00133$:
                                    661 ;	../Fogger_Manager/fogger.c:103: P1_0 = 1;
                                    662 ;	assignBit
      003221 D2 90            [12]  663 	setb	_P1_0
                                    664 ;	../Fogger_Manager/fogger.c:104: P2_0 = 0;
                                    665 ;	assignBit
      003223 C2 A0            [12]  666 	clr	_P2_0
      003225 80 04            [24]  667 	sjmp	00140$
      003227                        668 00139$:
                                    669 ;	../Fogger_Manager/fogger.c:108: P1_0 = 1;
                                    670 ;	assignBit
      003227 D2 90            [12]  671 	setb	_P1_0
                                    672 ;	../Fogger_Manager/fogger.c:109: P2_0 = 1;
                                    673 ;	assignBit
      003229 D2 A0            [12]  674 	setb	_P2_0
      00322B                        675 00140$:
                                    676 ;	../Fogger_Manager/fogger.c:114: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00322B 75 82 10         [24]  677 	mov	dpl,#0x10
      00322E 12 2F 00         [24]  678 	lcall	_get_runtime_data
      003231 E5 82            [12]  679 	mov	a,dpl
      003233 60 03            [24]  680 	jz	00606$
      003235 02 33 FB         [24]  681 	ljmp	00237$
      003238                        682 00606$:
                                    683 ;	../Fogger_Manager/fogger.c:115: if(has_dmx()){
      003238 E5 2C            [12]  684 	mov	a,_Has_DMX
      00323A 70 03            [24]  685 	jnz	00607$
      00323C 02 33 F6         [24]  686 	ljmp	00228$
      00323F                        687 00607$:
                                    688 ;	../Fogger_Manager/fogger.c:116: Playing = PLAY;
      00323F 75 4E 01         [24]  689 	mov	_Playing,#0x01
                                    690 ;	../Fogger_Manager/fogger.c:117: power = FOG_HIGH;
      003242 75 5E 01         [24]  691 	mov	_tick_fogger_power_65536_36,#0x01
                                    692 ;	../Fogger_Manager/fogger.c:118: power_heater(HEATER_ENABLE);
      003245 75 82 00         [24]  693 	mov	dpl,#0x00
      003248 12 35 56         [24]  694 	lcall	_power_heater
                                    695 ;	../Fogger_Manager/fogger.c:120: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
      00324B 75 82 0E         [24]  696 	mov	dpl,#0x0e
      00324E 12 2F 00         [24]  697 	lcall	_get_runtime_data
      003251 E5 82            [12]  698 	mov	a,dpl
      003253 70 57            [24]  699 	jnz	00225$
                                    700 ;	../Fogger_Manager/fogger.c:122: value = get_dmx_value(DMX_M11_POWER_INDEX);
      003255 AF 21            [24]  701 	mov	r7,_DMX
                                    702 ;	../Fogger_Manager/fogger.c:124: if(value < DMX_FOG_OFF){
      003257 BF 14 00         [24]  703 	cjne	r7,#0x14,00609$
      00325A                        704 00609$:
      00325A 50 05            [24]  705 	jnc	00148$
                                    706 ;	../Fogger_Manager/fogger.c:125: Playing = PAUSE;
      00325C 75 4E 00         [24]  707 	mov	_Playing,#0x00
      00325F 80 14            [24]  708 	sjmp	00149$
      003261                        709 00148$:
                                    710 ;	../Fogger_Manager/fogger.c:126: } else if(value < DMX_FOG_LOW){
      003261 BF 64 00         [24]  711 	cjne	r7,#0x64,00611$
      003264                        712 00611$:
      003264 50 04            [24]  713 	jnc	00145$
                                    714 ;	../Fogger_Manager/fogger.c:127: value = FOG_LO;
      003266 7F 04            [12]  715 	mov	r7,#0x04
      003268 80 0B            [24]  716 	sjmp	00149$
      00326A                        717 00145$:
                                    718 ;	../Fogger_Manager/fogger.c:128: } else if(value < DMX_FOG_MEDIUM){
      00326A BF C8 00         [24]  719 	cjne	r7,#0xc8,00613$
      00326D                        720 00613$:
      00326D 50 04            [24]  721 	jnc	00142$
                                    722 ;	../Fogger_Manager/fogger.c:129: value = FOG_MED;
      00326F 7F 02            [12]  723 	mov	r7,#0x02
      003271 80 02            [24]  724 	sjmp	00149$
      003273                        725 00142$:
                                    726 ;	../Fogger_Manager/fogger.c:131: value = FOG_HIGH;
      003273 7F 01            [12]  727 	mov	r7,#0x01
      003275                        728 00149$:
                                    729 ;	../Fogger_Manager/fogger.c:134: if(value != power){
      003275 EF               [12]  730 	mov	a,r7
      003276 B5 5E 02         [24]  731 	cjne	a,_tick_fogger_power_65536_36,00615$
      003279 80 02            [24]  732 	sjmp	00151$
      00327B                        733 00615$:
                                    734 ;	../Fogger_Manager/fogger.c:135: power = value;
      00327B 8F 5E            [24]  735 	mov	_tick_fogger_power_65536_36,r7
      00327D                        736 00151$:
                                    737 ;	../Fogger_Manager/fogger.c:138: value = get_dmx_value(DMX_M11_DURATION_INDEX);
                                    738 ;	../Fogger_Manager/fogger.c:140: if(value != duration){
      00327D E5 22            [12]  739 	mov	a,(_DMX + 0x0001)
      00327F FF               [12]  740 	mov	r7,a
      003280 B5 5C 02         [24]  741 	cjne	a,_tick_fogger_duration_65536_36,00616$
      003283 80 08            [24]  742 	sjmp	00153$
      003285                        743 00616$:
                                    744 ;	../Fogger_Manager/fogger.c:141: duration = value;
      003285 8F 5C            [24]  745 	mov	_tick_fogger_duration_65536_36,r7
                                    746 ;	../Fogger_Manager/fogger.c:142: Timer = duration;
      003287 85 5C 4C         [24]  747 	mov	_Timer,_tick_fogger_duration_65536_36
                                    748 ;	../Fogger_Manager/fogger.c:143: Interval_Or_Duration = DURATION;
      00328A 75 4D FF         [24]  749 	mov	_Interval_Or_Duration,#0xff
      00328D                        750 00153$:
                                    751 ;	../Fogger_Manager/fogger.c:146: value = get_dmx_value(DMX_M11_INTERVAL_INDEX);
                                    752 ;	../Fogger_Manager/fogger.c:148: if(value != interval){
      00328D E5 23            [12]  753 	mov	a,(_DMX + 0x0002)
      00328F FF               [12]  754 	mov	r7,a
      003290 B5 5D 02         [24]  755 	cjne	a,_tick_fogger_interval_65536_36,00617$
      003293 80 05            [24]  756 	sjmp	00155$
      003295                        757 00617$:
                                    758 ;	../Fogger_Manager/fogger.c:149: interval = value;
      003295 8F 5D            [24]  759 	mov	_tick_fogger_interval_65536_36,r7
                                    760 ;	../Fogger_Manager/fogger.c:150: Playing = RESET;
      003297 75 4E 02         [24]  761 	mov	_Playing,#0x02
      00329A                        762 00155$:
                                    763 ;	../Fogger_Manager/fogger.c:153: value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);
                                    764 ;	../Fogger_Manager/fogger.c:155: if(value >= DMX_HEATER_OFF){
      00329A 74 80            [12]  765 	mov	a,#0x100 - 0x80
      00329C 25 2B            [12]  766 	add	a,(_DMX + 0x000a)
      00329E 40 03            [24]  767 	jc	00618$
      0032A0 02 34 46         [24]  768 	ljmp	00238$
      0032A3                        769 00618$:
                                    770 ;	../Fogger_Manager/fogger.c:156: power_heater(HEATER_DISABLE);
      0032A3 75 82 01         [24]  771 	mov	dpl,#0x01
      0032A6 12 35 56         [24]  772 	lcall	_power_heater
      0032A9 02 34 46         [24]  773 	ljmp	00238$
      0032AC                        774 00225$:
                                    775 ;	../Fogger_Manager/fogger.c:163: value = get_dmx_value(DMX_M1_FOG_INDEX);
      0032AC AF 21            [24]  776 	mov	r7,_DMX
                                    777 ;	../Fogger_Manager/fogger.c:166: if(value < DMX_FOG_OFF){
      0032AE BF 14 00         [24]  778 	cjne	r7,#0x14,00619$
      0032B1                        779 00619$:
      0032B1 50 06            [24]  780 	jnc	00222$
                                    781 ;	../Fogger_Manager/fogger.c:167: Playing = PAUSE;
      0032B3 75 4E 00         [24]  782 	mov	_Playing,#0x00
      0032B6 02 34 46         [24]  783 	ljmp	00238$
      0032B9                        784 00222$:
                                    785 ;	../Fogger_Manager/fogger.c:169: } else if(value < DMX_FOG_3_13){
      0032B9 BF 28 00         [24]  786 	cjne	r7,#0x28,00621$
      0032BC                        787 00621$:
      0032BC 50 19            [24]  788 	jnc	00219$
                                    789 ;	../Fogger_Manager/fogger.c:170: if(duration != 3 || interval != 13){
      0032BE 74 03            [12]  790 	mov	a,#0x03
      0032C0 B5 5C 08         [24]  791 	cjne	a,_tick_fogger_duration_65536_36,00158$
      0032C3 74 0D            [12]  792 	mov	a,#0x0d
      0032C5 B5 5D 03         [24]  793 	cjne	a,_tick_fogger_interval_65536_36,00625$
      0032C8 02 34 46         [24]  794 	ljmp	00238$
      0032CB                        795 00625$:
      0032CB                        796 00158$:
                                    797 ;	../Fogger_Manager/fogger.c:171: duration = 3;
      0032CB 75 5C 03         [24]  798 	mov	_tick_fogger_duration_65536_36,#0x03
                                    799 ;	../Fogger_Manager/fogger.c:172: interval = 13;
      0032CE 75 5D 0D         [24]  800 	mov	_tick_fogger_interval_65536_36,#0x0d
                                    801 ;	../Fogger_Manager/fogger.c:173: Playing = RESET;
      0032D1 75 4E 02         [24]  802 	mov	_Playing,#0x02
      0032D4 02 34 46         [24]  803 	ljmp	00238$
      0032D7                        804 00219$:
                                    805 ;	../Fogger_Manager/fogger.c:175: } else if(value < DMX_FOG_3_21){
      0032D7 BF 3C 00         [24]  806 	cjne	r7,#0x3c,00626$
      0032DA                        807 00626$:
      0032DA 50 19            [24]  808 	jnc	00216$
                                    809 ;	../Fogger_Manager/fogger.c:176: if(duration != 3 || interval != 21){
      0032DC 74 03            [12]  810 	mov	a,#0x03
      0032DE B5 5C 08         [24]  811 	cjne	a,_tick_fogger_duration_65536_36,00161$
      0032E1 74 15            [12]  812 	mov	a,#0x15
      0032E3 B5 5D 03         [24]  813 	cjne	a,_tick_fogger_interval_65536_36,00630$
      0032E6 02 34 46         [24]  814 	ljmp	00238$
      0032E9                        815 00630$:
      0032E9                        816 00161$:
                                    817 ;	../Fogger_Manager/fogger.c:177: duration = 3;
      0032E9 75 5C 03         [24]  818 	mov	_tick_fogger_duration_65536_36,#0x03
                                    819 ;	../Fogger_Manager/fogger.c:178: interval = 21;
      0032EC 75 5D 15         [24]  820 	mov	_tick_fogger_interval_65536_36,#0x15
                                    821 ;	../Fogger_Manager/fogger.c:179: Playing = RESET;
      0032EF 75 4E 02         [24]  822 	mov	_Playing,#0x02
      0032F2 02 34 46         [24]  823 	ljmp	00238$
      0032F5                        824 00216$:
                                    825 ;	../Fogger_Manager/fogger.c:181: } else if(value < DMX_FOG_3_34){
      0032F5 BF 50 00         [24]  826 	cjne	r7,#0x50,00631$
      0032F8                        827 00631$:
      0032F8 50 19            [24]  828 	jnc	00213$
                                    829 ;	../Fogger_Manager/fogger.c:182: if(duration != 3 || interval != 34){
      0032FA 74 03            [12]  830 	mov	a,#0x03
      0032FC B5 5C 08         [24]  831 	cjne	a,_tick_fogger_duration_65536_36,00164$
      0032FF 74 22            [12]  832 	mov	a,#0x22
      003301 B5 5D 03         [24]  833 	cjne	a,_tick_fogger_interval_65536_36,00635$
      003304 02 34 46         [24]  834 	ljmp	00238$
      003307                        835 00635$:
      003307                        836 00164$:
                                    837 ;	../Fogger_Manager/fogger.c:183: duration = 3;
      003307 75 5C 03         [24]  838 	mov	_tick_fogger_duration_65536_36,#0x03
                                    839 ;	../Fogger_Manager/fogger.c:184: interval = 34;
      00330A 75 5D 22         [24]  840 	mov	_tick_fogger_interval_65536_36,#0x22
                                    841 ;	../Fogger_Manager/fogger.c:185: Playing = RESET;
      00330D 75 4E 02         [24]  842 	mov	_Playing,#0x02
      003310 02 34 46         [24]  843 	ljmp	00238$
      003313                        844 00213$:
                                    845 ;	../Fogger_Manager/fogger.c:187: } else if(value < DMX_FOG_3_55){
      003313 BF 64 00         [24]  846 	cjne	r7,#0x64,00636$
      003316                        847 00636$:
      003316 50 19            [24]  848 	jnc	00210$
                                    849 ;	../Fogger_Manager/fogger.c:188: if(duration != 3 || interval != 55){
      003318 74 03            [12]  850 	mov	a,#0x03
      00331A B5 5C 08         [24]  851 	cjne	a,_tick_fogger_duration_65536_36,00167$
      00331D 74 37            [12]  852 	mov	a,#0x37
      00331F B5 5D 03         [24]  853 	cjne	a,_tick_fogger_interval_65536_36,00640$
      003322 02 34 46         [24]  854 	ljmp	00238$
      003325                        855 00640$:
      003325                        856 00167$:
                                    857 ;	../Fogger_Manager/fogger.c:189: duration = 3;
      003325 75 5C 03         [24]  858 	mov	_tick_fogger_duration_65536_36,#0x03
                                    859 ;	../Fogger_Manager/fogger.c:190: interval = 55;
      003328 75 5D 37         [24]  860 	mov	_tick_fogger_interval_65536_36,#0x37
                                    861 ;	../Fogger_Manager/fogger.c:191: Playing = RESET;
      00332B 75 4E 02         [24]  862 	mov	_Playing,#0x02
      00332E 02 34 46         [24]  863 	ljmp	00238$
      003331                        864 00210$:
                                    865 ;	../Fogger_Manager/fogger.c:193: } else if(value < DMX_FOG_8_21){
      003331 BF 78 00         [24]  866 	cjne	r7,#0x78,00641$
      003334                        867 00641$:
      003334 50 19            [24]  868 	jnc	00207$
                                    869 ;	../Fogger_Manager/fogger.c:194: if(duration != 8 || interval != 21){
      003336 74 08            [12]  870 	mov	a,#0x08
      003338 B5 5C 08         [24]  871 	cjne	a,_tick_fogger_duration_65536_36,00170$
      00333B 74 15            [12]  872 	mov	a,#0x15
      00333D B5 5D 03         [24]  873 	cjne	a,_tick_fogger_interval_65536_36,00645$
      003340 02 34 46         [24]  874 	ljmp	00238$
      003343                        875 00645$:
      003343                        876 00170$:
                                    877 ;	../Fogger_Manager/fogger.c:195: duration = 8;
      003343 75 5C 08         [24]  878 	mov	_tick_fogger_duration_65536_36,#0x08
                                    879 ;	../Fogger_Manager/fogger.c:196: interval = 21;
      003346 75 5D 15         [24]  880 	mov	_tick_fogger_interval_65536_36,#0x15
                                    881 ;	../Fogger_Manager/fogger.c:197: Playing = RESET;
      003349 75 4E 02         [24]  882 	mov	_Playing,#0x02
      00334C 02 34 46         [24]  883 	ljmp	00238$
      00334F                        884 00207$:
                                    885 ;	../Fogger_Manager/fogger.c:199: } else if(value < DMX_FOG_8_34){
      00334F BF 8C 00         [24]  886 	cjne	r7,#0x8c,00646$
      003352                        887 00646$:
      003352 50 19            [24]  888 	jnc	00204$
                                    889 ;	../Fogger_Manager/fogger.c:200: if(duration != 8 || interval != 34){
      003354 74 08            [12]  890 	mov	a,#0x08
      003356 B5 5C 08         [24]  891 	cjne	a,_tick_fogger_duration_65536_36,00173$
      003359 74 22            [12]  892 	mov	a,#0x22
      00335B B5 5D 03         [24]  893 	cjne	a,_tick_fogger_interval_65536_36,00650$
      00335E 02 34 46         [24]  894 	ljmp	00238$
      003361                        895 00650$:
      003361                        896 00173$:
                                    897 ;	../Fogger_Manager/fogger.c:201: duration = 8;
      003361 75 5C 08         [24]  898 	mov	_tick_fogger_duration_65536_36,#0x08
                                    899 ;	../Fogger_Manager/fogger.c:202: interval = 34;
      003364 75 5D 22         [24]  900 	mov	_tick_fogger_interval_65536_36,#0x22
                                    901 ;	../Fogger_Manager/fogger.c:203: Playing = RESET;
      003367 75 4E 02         [24]  902 	mov	_Playing,#0x02
      00336A 02 34 46         [24]  903 	ljmp	00238$
      00336D                        904 00204$:
                                    905 ;	../Fogger_Manager/fogger.c:205: } else if(value < DMX_FOG_8_55){
      00336D BF A0 00         [24]  906 	cjne	r7,#0xa0,00651$
      003370                        907 00651$:
      003370 50 19            [24]  908 	jnc	00201$
                                    909 ;	../Fogger_Manager/fogger.c:206: if(duration != 8 || interval != 55){
      003372 74 08            [12]  910 	mov	a,#0x08
      003374 B5 5C 08         [24]  911 	cjne	a,_tick_fogger_duration_65536_36,00176$
      003377 74 37            [12]  912 	mov	a,#0x37
      003379 B5 5D 03         [24]  913 	cjne	a,_tick_fogger_interval_65536_36,00655$
      00337C 02 34 46         [24]  914 	ljmp	00238$
      00337F                        915 00655$:
      00337F                        916 00176$:
                                    917 ;	../Fogger_Manager/fogger.c:207: duration = 8;
      00337F 75 5C 08         [24]  918 	mov	_tick_fogger_duration_65536_36,#0x08
                                    919 ;	../Fogger_Manager/fogger.c:208: interval = 55;
      003382 75 5D 37         [24]  920 	mov	_tick_fogger_interval_65536_36,#0x37
                                    921 ;	../Fogger_Manager/fogger.c:209: Playing = RESET;
      003385 75 4E 02         [24]  922 	mov	_Playing,#0x02
      003388 02 34 46         [24]  923 	ljmp	00238$
      00338B                        924 00201$:
                                    925 ;	../Fogger_Manager/fogger.c:211: } else if(value < DMX_FOG_8_89){
      00338B BF B4 00         [24]  926 	cjne	r7,#0xb4,00656$
      00338E                        927 00656$:
      00338E 50 19            [24]  928 	jnc	00198$
                                    929 ;	../Fogger_Manager/fogger.c:212: if(duration != 8 || interval != 89){
      003390 74 08            [12]  930 	mov	a,#0x08
      003392 B5 5C 08         [24]  931 	cjne	a,_tick_fogger_duration_65536_36,00179$
      003395 74 59            [12]  932 	mov	a,#0x59
      003397 B5 5D 03         [24]  933 	cjne	a,_tick_fogger_interval_65536_36,00660$
      00339A 02 34 46         [24]  934 	ljmp	00238$
      00339D                        935 00660$:
      00339D                        936 00179$:
                                    937 ;	../Fogger_Manager/fogger.c:213: duration = 8;
      00339D 75 5C 08         [24]  938 	mov	_tick_fogger_duration_65536_36,#0x08
                                    939 ;	../Fogger_Manager/fogger.c:214: interval = 89;
      0033A0 75 5D 59         [24]  940 	mov	_tick_fogger_interval_65536_36,#0x59
                                    941 ;	../Fogger_Manager/fogger.c:215: Playing = RESET;
      0033A3 75 4E 02         [24]  942 	mov	_Playing,#0x02
      0033A6 02 34 46         [24]  943 	ljmp	00238$
      0033A9                        944 00198$:
                                    945 ;	../Fogger_Manager/fogger.c:217: } else if(value < DMX_FOG_8_144){
      0033A9 BF C8 00         [24]  946 	cjne	r7,#0xc8,00661$
      0033AC                        947 00661$:
      0033AC 50 19            [24]  948 	jnc	00195$
                                    949 ;	../Fogger_Manager/fogger.c:218: if(duration != 8 || interval != 144){
      0033AE 74 08            [12]  950 	mov	a,#0x08
      0033B0 B5 5C 08         [24]  951 	cjne	a,_tick_fogger_duration_65536_36,00182$
      0033B3 74 90            [12]  952 	mov	a,#0x90
      0033B5 B5 5D 03         [24]  953 	cjne	a,_tick_fogger_interval_65536_36,00665$
      0033B8 02 34 46         [24]  954 	ljmp	00238$
      0033BB                        955 00665$:
      0033BB                        956 00182$:
                                    957 ;	../Fogger_Manager/fogger.c:219: duration = 8;
      0033BB 75 5C 08         [24]  958 	mov	_tick_fogger_duration_65536_36,#0x08
                                    959 ;	../Fogger_Manager/fogger.c:220: interval = 144;
      0033BE 75 5D 90         [24]  960 	mov	_tick_fogger_interval_65536_36,#0x90
                                    961 ;	../Fogger_Manager/fogger.c:221: Playing = RESET;
      0033C1 75 4E 02         [24]  962 	mov	_Playing,#0x02
      0033C4 02 34 46         [24]  963 	ljmp	00238$
      0033C7                        964 00195$:
                                    965 ;	../Fogger_Manager/fogger.c:223: } else if(value < DMX_FOG_21_55){
      0033C7 BF DC 00         [24]  966 	cjne	r7,#0xdc,00666$
      0033CA                        967 00666$:
      0033CA 50 17            [24]  968 	jnc	00192$
                                    969 ;	../Fogger_Manager/fogger.c:224: if(duration != 21 || interval != 55){
      0033CC 74 15            [12]  970 	mov	a,#0x15
      0033CE B5 5C 07         [24]  971 	cjne	a,_tick_fogger_duration_65536_36,00185$
      0033D1 74 37            [12]  972 	mov	a,#0x37
      0033D3 B5 5D 02         [24]  973 	cjne	a,_tick_fogger_interval_65536_36,00670$
      0033D6 80 6E            [24]  974 	sjmp	00238$
      0033D8                        975 00670$:
      0033D8                        976 00185$:
                                    977 ;	../Fogger_Manager/fogger.c:225: duration = 21;
      0033D8 75 5C 15         [24]  978 	mov	_tick_fogger_duration_65536_36,#0x15
                                    979 ;	../Fogger_Manager/fogger.c:226: interval = 55;
      0033DB 75 5D 37         [24]  980 	mov	_tick_fogger_interval_65536_36,#0x37
                                    981 ;	../Fogger_Manager/fogger.c:227: Playing = RESET;
      0033DE 75 4E 02         [24]  982 	mov	_Playing,#0x02
      0033E1 80 63            [24]  983 	sjmp	00238$
      0033E3                        984 00192$:
                                    985 ;	../Fogger_Manager/fogger.c:230: if(duration !=  0 || interval != 0){
      0033E3 E5 5C            [12]  986 	mov	a,_tick_fogger_duration_65536_36
      0033E5 70 04            [24]  987 	jnz	00188$
      0033E7 E5 5D            [12]  988 	mov	a,_tick_fogger_interval_65536_36
      0033E9 60 5B            [24]  989 	jz	00238$
      0033EB                        990 00188$:
                                    991 ;	../Fogger_Manager/fogger.c:231: duration = 0;
      0033EB 75 5C 00         [24]  992 	mov	_tick_fogger_duration_65536_36,#0x00
                                    993 ;	../Fogger_Manager/fogger.c:232: interval = 0;
      0033EE 75 5D 00         [24]  994 	mov	_tick_fogger_interval_65536_36,#0x00
                                    995 ;	../Fogger_Manager/fogger.c:233: Playing = RESET;
      0033F1 75 4E 02         [24]  996 	mov	_Playing,#0x02
      0033F4 80 50            [24]  997 	sjmp	00238$
      0033F6                        998 00228$:
                                    999 ;	../Fogger_Manager/fogger.c:239: Playing = RESET;
      0033F6 75 4E 02         [24] 1000 	mov	_Playing,#0x02
      0033F9 80 4B            [24] 1001 	sjmp	00238$
      0033FB                       1002 00237$:
                                   1003 ;	../Fogger_Manager/fogger.c:242: value = get_runtime_data(FOG_POWER_INDEX);
      0033FB 75 82 00         [24] 1004 	mov	dpl,#0x00
      0033FE 12 2F 00         [24] 1005 	lcall	_get_runtime_data
      003401 AF 82            [24] 1006 	mov	r7,dpl
                                   1007 ;	../Fogger_Manager/fogger.c:246: value = 0x01 << (2 - value);
      003403 74 02            [12] 1008 	mov	a,#0x02
      003405 C3               [12] 1009 	clr	c
      003406 9F               [12] 1010 	subb	a,r7
      003407 FF               [12] 1011 	mov	r7,a
      003408 8F F0            [24] 1012 	mov	b,r7
      00340A 05 F0            [12] 1013 	inc	b
      00340C 74 01            [12] 1014 	mov	a,#0x01
      00340E 80 02            [24] 1015 	sjmp	00675$
      003410                       1016 00673$:
      003410 25 E0            [12] 1017 	add	a,acc
      003412                       1018 00675$:
      003412 D5 F0 FB         [24] 1019 	djnz	b,00673$
                                   1020 ;	../Fogger_Manager/fogger.c:248: if(value != power){
      003415 FF               [12] 1021 	mov	r7,a
      003416 B5 5E 02         [24] 1022 	cjne	a,_tick_fogger_power_65536_36,00676$
      003419 80 05            [24] 1023 	sjmp	00231$
      00341B                       1024 00676$:
                                   1025 ;	../Fogger_Manager/fogger.c:249: power = value;
      00341B 8F 5E            [24] 1026 	mov	_tick_fogger_power_65536_36,r7
                                   1027 ;	../Fogger_Manager/fogger.c:250: Playing = RESET;
      00341D 75 4E 02         [24] 1028 	mov	_Playing,#0x02
      003420                       1029 00231$:
                                   1030 ;	../Fogger_Manager/fogger.c:253: value = get_runtime_data(FOG_DURATION_INDEX);
      003420 75 82 01         [24] 1031 	mov	dpl,#0x01
      003423 12 2F 00         [24] 1032 	lcall	_get_runtime_data
                                   1033 ;	../Fogger_Manager/fogger.c:255: if(value != duration){
      003426 E5 82            [12] 1034 	mov	a,dpl
      003428 FF               [12] 1035 	mov	r7,a
      003429 B5 5C 02         [24] 1036 	cjne	a,_tick_fogger_duration_65536_36,00677$
      00342C 80 05            [24] 1037 	sjmp	00233$
      00342E                       1038 00677$:
                                   1039 ;	../Fogger_Manager/fogger.c:256: duration = value;
      00342E 8F 5C            [24] 1040 	mov	_tick_fogger_duration_65536_36,r7
                                   1041 ;	../Fogger_Manager/fogger.c:257: Playing = RESET;
      003430 75 4E 02         [24] 1042 	mov	_Playing,#0x02
      003433                       1043 00233$:
                                   1044 ;	../Fogger_Manager/fogger.c:260: value = get_runtime_data(FOG_INTERVAL_INDEX);
      003433 75 82 02         [24] 1045 	mov	dpl,#0x02
      003436 12 2F 00         [24] 1046 	lcall	_get_runtime_data
                                   1047 ;	../Fogger_Manager/fogger.c:262: if(value != interval){
      003439 E5 82            [12] 1048 	mov	a,dpl
      00343B FF               [12] 1049 	mov	r7,a
      00343C B5 5D 02         [24] 1050 	cjne	a,_tick_fogger_interval_65536_36,00678$
      00343F 80 05            [24] 1051 	sjmp	00238$
      003441                       1052 00678$:
                                   1053 ;	../Fogger_Manager/fogger.c:263: interval = value;
      003441 8F 5D            [24] 1054 	mov	_tick_fogger_interval_65536_36,r7
                                   1055 ;	../Fogger_Manager/fogger.c:264: Playing = RESET;
      003443 75 4E 02         [24] 1056 	mov	_Playing,#0x02
      003446                       1057 00238$:
                                   1058 ;	../Fogger_Manager/fogger.c:269: if(Playing == RESET){
      003446 74 02            [12] 1059 	mov	a,#0x02
      003448 B5 4E 09         [24] 1060 	cjne	a,_Playing,00240$
                                   1061 ;	../Fogger_Manager/fogger.c:270: Playing = PAUSE;
      00344B 75 4E 00         [24] 1062 	mov	_Playing,#0x00
                                   1063 ;	../Fogger_Manager/fogger.c:271: Timer = interval;
      00344E 85 5D 4C         [24] 1064 	mov	_Timer,_tick_fogger_interval_65536_36
                                   1065 ;	../Fogger_Manager/fogger.c:272: Interval_Or_Duration = INTERVAL;
      003451 75 4D 00         [24] 1066 	mov	_Interval_Or_Duration,#0x00
      003454                       1067 00240$:
                                   1068 ;	../Fogger_Manager/fogger.c:276: if(Playing){
      003454 E5 4E            [12] 1069 	mov	a,_Playing
      003456 70 03            [24] 1070 	jnz	00681$
      003458 02 35 03         [24] 1071 	ljmp	00261$
      00345B                       1072 00681$:
                                   1073 ;	../Fogger_Manager/fogger.c:277: tock++;
      00345B 05 5F            [12] 1074 	inc	_tick_fogger_tock_65536_36
                                   1075 ;	../Fogger_Manager/fogger.c:279: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
      00345D 75 82 10         [24] 1076 	mov	dpl,#0x10
      003460 12 2F 00         [24] 1077 	lcall	_get_runtime_data
      003463 E5 82            [12] 1078 	mov	a,dpl
      003465 70 24            [24] 1079 	jnz	00256$
                                   1080 ;	../Fogger_Manager/fogger.c:280: && (!duration || !interval)){
      003467 E5 5C            [12] 1081 	mov	a,_tick_fogger_duration_65536_36
      003469 60 04            [24] 1082 	jz	00255$
      00346B E5 5D            [12] 1083 	mov	a,_tick_fogger_interval_65536_36
      00346D 70 1C            [24] 1084 	jnz	00256$
      00346F                       1085 00255$:
                                   1086 ;	../Fogger_Manager/fogger.c:282: if(!(tock % power)){
      00346F 85 5E F0         [24] 1087 	mov	b,_tick_fogger_power_65536_36
      003472 E5 5F            [12] 1088 	mov	a,_tick_fogger_tock_65536_36
      003474 84               [48] 1089 	div	ab
      003475 E5 F0            [12] 1090 	mov	a,b
      003477 70 09            [24] 1091 	jnz	00242$
                                   1092 ;	../Fogger_Manager/fogger.c:283: power_pump(PUMP_ON);
      003479 75 82 01         [24] 1093 	mov	dpl,#0x01
      00347C 12 35 0F         [24] 1094 	lcall	_power_pump
      00347F 02 35 09         [24] 1095 	ljmp	00265$
      003482                       1096 00242$:
                                   1097 ;	../Fogger_Manager/fogger.c:285: power_pump(PUMP_OFF);
      003482 75 82 00         [24] 1098 	mov	dpl,#0x00
      003485 12 35 0F         [24] 1099 	lcall	_power_pump
      003488 02 35 09         [24] 1100 	ljmp	00265$
      00348B                       1101 00256$:
                                   1102 ;	../Fogger_Manager/fogger.c:289: if(!(tock % 8)){
      00348B AE 5F            [24] 1103 	mov	r6,_tick_fogger_tock_65536_36
      00348D 7F 00            [12] 1104 	mov	r7,#0x00
      00348F 74 08            [12] 1105 	mov	a,#0x08
      003491 C0 E0            [24] 1106 	push	acc
      003493 E4               [12] 1107 	clr	a
      003494 C0 E0            [24] 1108 	push	acc
      003496 8E 82            [24] 1109 	mov	dpl,r6
      003498 8F 83            [24] 1110 	mov	dph,r7
      00349A 12 36 48         [24] 1111 	lcall	__modsint
      00349D AE 82            [24] 1112 	mov	r6,dpl
      00349F AF 83            [24] 1113 	mov	r7,dph
      0034A1 15 81            [12] 1114 	dec	sp
      0034A3 15 81            [12] 1115 	dec	sp
      0034A5 EE               [12] 1116 	mov	a,r6
      0034A6 4F               [12] 1117 	orl	a,r7
      0034A7 70 02            [24] 1118 	jnz	00245$
                                   1119 ;	../Fogger_Manager/fogger.c:290: Timer--;
      0034A9 15 4C            [12] 1120 	dec	_Timer
      0034AB                       1121 00245$:
                                   1122 ;	../Fogger_Manager/fogger.c:293: if(Timer == 0x00){
      0034AB E5 4C            [12] 1123 	mov	a,_Timer
      0034AD 70 2F            [24] 1124 	jnz	00253$
                                   1125 ;	../Fogger_Manager/fogger.c:294: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
      0034AF E5 4D            [12] 1126 	mov	a,_Interval_Or_Duration
      0034B1 70 05            [24] 1127 	jnz	00267$
      0034B3 7E 01            [12] 1128 	mov	r6,#0x01
      0034B5 FF               [12] 1129 	mov	r7,a
      0034B6 80 04            [24] 1130 	sjmp	00268$
      0034B8                       1131 00267$:
      0034B8 7E 00            [12] 1132 	mov	r6,#0x00
      0034BA 7F 00            [12] 1133 	mov	r7,#0x00
      0034BC                       1134 00268$:
      0034BC 8E 82            [24] 1135 	mov	dpl,r6
      0034BE 12 35 0F         [24] 1136 	lcall	_power_pump
                                   1137 ;	../Fogger_Manager/fogger.c:295: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
      0034C1 E5 4D            [12] 1138 	mov	a,_Interval_Or_Duration
      0034C3 70 04            [24] 1139 	jnz	00269$
      0034C5 AF 5C            [24] 1140 	mov	r7,_tick_fogger_duration_65536_36
      0034C7 80 02            [24] 1141 	sjmp	00270$
      0034C9                       1142 00269$:
      0034C9 AF 5D            [24] 1143 	mov	r7,_tick_fogger_interval_65536_36
      0034CB                       1144 00270$:
      0034CB 8F 4C            [24] 1145 	mov	_Timer,r7
                                   1146 ;	../Fogger_Manager/fogger.c:296: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
      0034CD E5 4D            [12] 1147 	mov	a,_Interval_Or_Duration
      0034CF 70 05            [24] 1148 	jnz	00271$
      0034D1 7E FF            [12] 1149 	mov	r6,#0xff
      0034D3 FF               [12] 1150 	mov	r7,a
      0034D4 80 04            [24] 1151 	sjmp	00272$
      0034D6                       1152 00271$:
      0034D6 7E 00            [12] 1153 	mov	r6,#0x00
      0034D8 7F 00            [12] 1154 	mov	r7,#0x00
      0034DA                       1155 00272$:
      0034DA 8E 4D            [24] 1156 	mov	_Interval_Or_Duration,r6
      0034DC 80 2B            [24] 1157 	sjmp	00265$
      0034DE                       1158 00253$:
                                   1159 ;	../Fogger_Manager/fogger.c:298: if(Interval_Or_Duration == INTERVAL){
      0034DE E5 4D            [12] 1160 	mov	a,_Interval_Or_Duration
                                   1161 ;	../Fogger_Manager/fogger.c:299: power_pump(PUMP_OFF);
      0034E0 70 07            [24] 1162 	jnz	00250$
      0034E2 F5 82            [12] 1163 	mov	dpl,a
      0034E4 12 35 0F         [24] 1164 	lcall	_power_pump
      0034E7 80 20            [24] 1165 	sjmp	00265$
      0034E9                       1166 00250$:
                                   1167 ;	../Fogger_Manager/fogger.c:301: if(!(tock % power)){
      0034E9 85 5E F0         [24] 1168 	mov	b,_tick_fogger_power_65536_36
      0034EC E5 5F            [12] 1169 	mov	a,_tick_fogger_tock_65536_36
      0034EE 84               [48] 1170 	div	ab
      0034EF E5 F0            [12] 1171 	mov	a,b
      0034F1 70 08            [24] 1172 	jnz	00247$
                                   1173 ;	../Fogger_Manager/fogger.c:302: power_pump(PUMP_ON);
      0034F3 75 82 01         [24] 1174 	mov	dpl,#0x01
      0034F6 12 35 0F         [24] 1175 	lcall	_power_pump
      0034F9 80 0E            [24] 1176 	sjmp	00265$
      0034FB                       1177 00247$:
                                   1178 ;	../Fogger_Manager/fogger.c:304: power_pump(PUMP_OFF);
      0034FB 75 82 00         [24] 1179 	mov	dpl,#0x00
      0034FE 12 35 0F         [24] 1180 	lcall	_power_pump
      003501 80 06            [24] 1181 	sjmp	00265$
      003503                       1182 00261$:
                                   1183 ;	../Fogger_Manager/fogger.c:312: power_pump(PUMP_OFF);
      003503 75 82 00         [24] 1184 	mov	dpl,#0x00
      003506 12 35 0F         [24] 1185 	lcall	_power_pump
      003509                       1186 00265$:
                                   1187 ;	../Fogger_Manager/fogger.c:315: }
      003509 85 1A 81         [24] 1188 	mov	sp,_bp
      00350C D0 1A            [24] 1189 	pop	_bp
      00350E 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'power_pump'
                                   1193 ;------------------------------------------------------------
                                   1194 ;action                    Allocated to registers r7 
                                   1195 ;------------------------------------------------------------
                                   1196 ;	../Fogger_Manager/fogger.c:317: void power_pump(uint8_t action){
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function power_pump
                                   1199 ;	-----------------------------------------
      00350F                       1200 _power_pump:
      00350F AF 82            [24] 1201 	mov	r7,dpl
                                   1202 ;	../Fogger_Manager/fogger.c:318: switch (action)
      003511 BF 01 02         [24] 1203 	cjne	r7,#0x01,00139$
      003514 80 0A            [24] 1204 	sjmp	00101$
      003516                       1205 00139$:
      003516 BF 02 02         [24] 1206 	cjne	r7,#0x02,00140$
      003519 80 1F            [24] 1207 	sjmp	00106$
      00351B                       1208 00140$:
                                   1209 ;	../Fogger_Manager/fogger.c:320: case PUMP_ON:
      00351B BF 03 35         [24] 1210 	cjne	r7,#0x03,00111$
      00351E 80 30            [24] 1211 	sjmp	00110$
      003520                       1212 00101$:
                                   1213 ;	../Fogger_Manager/fogger.c:321: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
      003520 E5 50            [12] 1214 	mov	a,_Fluid_Level
      003522 60 13            [24] 1215 	jz	00103$
      003524 AE 4F            [24] 1216 	mov	r6,_Heat_Flag
      003526 53 06 80         [24] 1217 	anl	ar6,#0x80
      003529 7F 00            [12] 1218 	mov	r7,#0x00
      00352B BE 80 09         [24] 1219 	cjne	r6,#0x80,00103$
      00352E BF 00 06         [24] 1220 	cjne	r7,#0x00,00103$
                                   1221 ;	../Fogger_Manager/fogger.c:322: P2_5 = 0;
                                   1222 ;	assignBit
      003531 C2 A5            [12] 1223 	clr	_P2_5
                                   1224 ;	../Fogger_Manager/fogger.c:323: Heat_Flag &= ~HOT_FLAG;
      003533 53 4F FD         [24] 1225 	anl	_Heat_Flag,#0xfd
      003536 22               [24] 1226 	ret
      003537                       1227 00103$:
                                   1228 ;	../Fogger_Manager/fogger.c:325: P2_5 = 1;
                                   1229 ;	assignBit
      003537 D2 A5            [12] 1230 	setb	_P2_5
                                   1231 ;	../Fogger_Manager/fogger.c:327: break;
                                   1232 ;	../Fogger_Manager/fogger.c:328: case PUMP_OVERRIDE:
      003539 22               [24] 1233 	ret
      00353A                       1234 00106$:
                                   1235 ;	../Fogger_Manager/fogger.c:329: if(get_heated() == HEATED){
      00353A AE 4F            [24] 1236 	mov	r6,_Heat_Flag
      00353C 53 06 80         [24] 1237 	anl	ar6,#0x80
      00353F 7F 00            [12] 1238 	mov	r7,#0x00
      003541 BE 80 09         [24] 1239 	cjne	r6,#0x80,00108$
      003544 BF 00 06         [24] 1240 	cjne	r7,#0x00,00108$
                                   1241 ;	../Fogger_Manager/fogger.c:330: P2_5 = 0;
                                   1242 ;	assignBit
      003547 C2 A5            [12] 1243 	clr	_P2_5
                                   1244 ;	../Fogger_Manager/fogger.c:331: Heat_Flag &= ~HOT_FLAG;
      003549 53 4F FD         [24] 1245 	anl	_Heat_Flag,#0xfd
      00354C 22               [24] 1246 	ret
      00354D                       1247 00108$:
                                   1248 ;	../Fogger_Manager/fogger.c:333: P2_5 = 1;
                                   1249 ;	assignBit
      00354D D2 A5            [12] 1250 	setb	_P2_5
                                   1251 ;	../Fogger_Manager/fogger.c:335: break;
                                   1252 ;	../Fogger_Manager/fogger.c:336: case PUMP_MASTER_OVERRIDE:
      00354F 22               [24] 1253 	ret
      003550                       1254 00110$:
                                   1255 ;	../Fogger_Manager/fogger.c:337: P2_5 = 0;
                                   1256 ;	assignBit
      003550 C2 A5            [12] 1257 	clr	_P2_5
                                   1258 ;	../Fogger_Manager/fogger.c:338: break;
                                   1259 ;	../Fogger_Manager/fogger.c:339: default:
      003552 22               [24] 1260 	ret
      003553                       1261 00111$:
                                   1262 ;	../Fogger_Manager/fogger.c:340: P2_5 = 1;
                                   1263 ;	assignBit
      003553 D2 A5            [12] 1264 	setb	_P2_5
                                   1265 ;	../Fogger_Manager/fogger.c:342: }
                                   1266 ;	../Fogger_Manager/fogger.c:343: }
      003555 22               [24] 1267 	ret
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'power_heater'
                                   1270 ;------------------------------------------------------------
                                   1271 ;action                    Allocated to registers r7 
                                   1272 ;------------------------------------------------------------
                                   1273 ;	../Fogger_Manager/fogger.c:345: void power_heater(uint8_t action){
                                   1274 ;	-----------------------------------------
                                   1275 ;	 function power_heater
                                   1276 ;	-----------------------------------------
      003556                       1277 _power_heater:
      003556 AF 82            [24] 1278 	mov	r7,dpl
                                   1279 ;	../Fogger_Manager/fogger.c:346: switch (action)
      003558 BF 01 08         [24] 1280 	cjne	r7,#0x01,00102$
                                   1281 ;	../Fogger_Manager/fogger.c:349: Heat_Flag |= HEAT_DISABLE_FLAG;
      00355B AE 4F            [24] 1282 	mov	r6,_Heat_Flag
      00355D 43 06 10         [24] 1283 	orl	ar6,#0x10
      003560 8E 4F            [24] 1284 	mov	_Heat_Flag,r6
                                   1285 ;	../Fogger_Manager/fogger.c:350: break;
                                   1286 ;	../Fogger_Manager/fogger.c:351: default:
      003562 22               [24] 1287 	ret
      003563                       1288 00102$:
                                   1289 ;	../Fogger_Manager/fogger.c:352: Heat_Flag &= ~HEAT_DISABLE_FLAG;
      003563 53 4F EF         [24] 1290 	anl	_Heat_Flag,#0xef
                                   1291 ;	../Fogger_Manager/fogger.c:354: }
                                   1292 ;	../Fogger_Manager/fogger.c:355: }
      003566 22               [24] 1293 	ret
                                   1294 	.area CSEG    (CODE)
                                   1295 	.area CONST   (CODE)
                                   1296 	.area XINIT   (CODE)
                                   1297 	.area CABS    (ABS,CODE)
