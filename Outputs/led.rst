                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module led
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_runtime_data
                                     12 	.globl _CPRL2
                                     13 	.globl _CT2
                                     14 	.globl _TR2
                                     15 	.globl _EXEN2
                                     16 	.globl _TCLK
                                     17 	.globl _RCLK
                                     18 	.globl _REN
                                     19 	.globl _SM2
                                     20 	.globl _SM1
                                     21 	.globl _SM0
                                     22 	.globl _RCK
                                     23 	.globl _SER
                                     24 	.globl _SCK
                                     25 	.globl _RI
                                     26 	.globl _ES
                                     27 	.globl _ET0
                                     28 	.globl _EA
                                     29 	.globl _P3_7
                                     30 	.globl _P3_6
                                     31 	.globl _P3_5
                                     32 	.globl _P3_4
                                     33 	.globl _P3_3
                                     34 	.globl _P3_2
                                     35 	.globl _P3_1
                                     36 	.globl _P3_0
                                     37 	.globl _P2_7
                                     38 	.globl _P2_6
                                     39 	.globl _P2_5
                                     40 	.globl _P2_4
                                     41 	.globl _P2_3
                                     42 	.globl _P2_2
                                     43 	.globl _P2_1
                                     44 	.globl _P2_0
                                     45 	.globl _P1_7
                                     46 	.globl _P1_6
                                     47 	.globl _P1_5
                                     48 	.globl _P1_4
                                     49 	.globl _P1_3
                                     50 	.globl _P1_2
                                     51 	.globl _P1_1
                                     52 	.globl _P1_0
                                     53 	.globl _P0_7
                                     54 	.globl _P0_6
                                     55 	.globl _P0_5
                                     56 	.globl _P0_4
                                     57 	.globl _P0_3
                                     58 	.globl _P0_2
                                     59 	.globl _P0_1
                                     60 	.globl _P0_0
                                     61 	.globl _IAP_ADRH
                                     62 	.globl _IAP_ADRL
                                     63 	.globl _IAPEN
                                     64 	.globl _TH0
                                     65 	.globl _TL0
                                     66 	.globl _CKCON
                                     67 	.globl _TMOD
                                     68 	.globl _TCON
                                     69 	.globl _PWMDATA17L
                                     70 	.globl _PWMDATA17H
                                     71 	.globl _PWMDATA14L
                                     72 	.globl _PWMDATA14H
                                     73 	.globl _PWMDATA11L
                                     74 	.globl _PWMDATA11H
                                     75 	.globl _PWM_EA2
                                     76 	.globl _PWM_EA1
                                     77 	.globl _SBUF
                                     78 	.globl _TL3
                                     79 	.globl _TH3
                                     80 	.globl _T2CON
                                     81 	.globl _RCAP2H
                                     82 	.globl _RCAP2L
                                     83 	.globl _SCON
                                     84 	.globl _P1_OPT
                                     85 	.globl _ADCVAL2
                                     86 	.globl _ADCVAL1
                                     87 	.globl _ADCSEL
                                     88 	.globl _EXIF
                                     89 	.globl _EIE
                                     90 	.globl _IE
                                     91 	.globl _P3
                                     92 	.globl _P2
                                     93 	.globl _P1
                                     94 	.globl _P0
                                     95 	.globl _PCLKSEL
                                     96 	.globl _CHIPCON
                                     97 	.globl _play_macro_PARM_3
                                     98 	.globl _play_macro_PARM_2
                                     99 	.globl _tick_led
                                    100 	.globl _dmx_to_macro
                                    101 	.globl _play_macro
                                    102 	.globl _color_wheel
                                    103 	.globl _whiteout
                                    104 	.globl _blackout
                                    105 	.globl _rngU32
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
                                    207 ; internal ram data
                                    208 ;--------------------------------------------------------
                                    209 	.area DSEG    (DATA)
      000039                        210 _tick_led_on_65536_16:
      000039                        211 	.ds 1
      00003A                        212 _tick_led_sloc0_1_0:
      00003A                        213 	.ds 4
      00003E                        214 _play_macro_tock_65536_50:
      00003E                        215 	.ds 1
      00003F                        216 _play_macro_primaryCount_65536_50:
      00003F                        217 	.ds 1
      000040                        218 _play_macro_secondaryCount_65536_50:
      000040                        219 	.ds 1
      000041                        220 _play_macro_direction_65536_50:
      000041                        221 	.ds 1
      000042                        222 _play_macro_PARM_2:
      000042                        223 	.ds 1
      000043                        224 _play_macro_PARM_3:
      000043                        225 	.ds 1
      000044                        226 _play_macro_tick_65536_49:
      000044                        227 	.ds 4
      000048                        228 _play_macro_rng_65536_50:
      000048                        229 	.ds 4
      00004C                        230 _play_macro_changed_65536_50:
      00004C                        231 	.ds 1
      00004D                        232 _rngU32_past_65536_101:
      00004D                        233 	.ds 4
      000051                        234 _rngU32_present_65536_101:
      000051                        235 	.ds 4
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 	.area	OSEG    (OVR,DATA)
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; absolute internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area IABS    (ABS,DATA)
                                    249 	.area IABS    (ABS,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; bit data
                                    252 ;--------------------------------------------------------
                                    253 	.area BSEG    (BIT)
                                    254 ;--------------------------------------------------------
                                    255 ; paged external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area PSEG    (PAG,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XSEG    (XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XABS    (ABS,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external initialized ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XISEG   (XDATA)
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT0 (CODE)
                                    272 	.area GSINIT1 (CODE)
                                    273 	.area GSINIT2 (CODE)
                                    274 	.area GSINIT3 (CODE)
                                    275 	.area GSINIT4 (CODE)
                                    276 	.area GSINIT5 (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area CSEG    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; global & static initialisations
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 ;------------------------------------------------------------
                                    288 ;Allocation info for local variables in function 'tick_led'
                                    289 ;------------------------------------------------------------
                                    290 ;on                        Allocated with name '_tick_led_on_65536_16'
                                    291 ;tick                      Allocated to registers r4 r5 r6 r7 
                                    292 ;value                     Allocated to registers r3 
                                    293 ;strobe                    Allocated to registers r3 
                                    294 ;sloc0                     Allocated with name '_tick_led_sloc0_1_0'
                                    295 ;------------------------------------------------------------
                                    296 ;	../LED_Manager/led.c:22: static uint8_t on = 0;
      0000CE 75 39 00         [24]  297 	mov	_tick_led_on_65536_16,#0x00
                                    298 ;------------------------------------------------------------
                                    299 ;Allocation info for local variables in function 'play_macro'
                                    300 ;------------------------------------------------------------
                                    301 ;tock                      Allocated with name '_play_macro_tock_65536_50'
                                    302 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_50'
                                    303 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_50'
                                    304 ;direction                 Allocated with name '_play_macro_direction_65536_50'
                                    305 ;macro                     Allocated with name '_play_macro_PARM_2'
                                    306 ;macro_speed               Allocated with name '_play_macro_PARM_3'
                                    307 ;tick                      Allocated with name '_play_macro_tick_65536_49'
                                    308 ;rng                       Allocated with name '_play_macro_rng_65536_50'
                                    309 ;changed                   Allocated with name '_play_macro_changed_65536_50'
                                    310 ;------------------------------------------------------------
                                    311 ;	../LED_Manager/led.c:123: static uint8_t tock = 0;
      0000D1 75 3E 00         [24]  312 	mov	_play_macro_tock_65536_50,#0x00
                                    313 ;	../LED_Manager/led.c:124: static uint8_t primaryCount = 0;
      0000D4 75 3F 00         [24]  314 	mov	_play_macro_primaryCount_65536_50,#0x00
                                    315 ;	../LED_Manager/led.c:125: static uint8_t secondaryCount = 0;
      0000D7 75 40 00         [24]  316 	mov	_play_macro_secondaryCount_65536_50,#0x00
                                    317 ;	../LED_Manager/led.c:126: static uint8_t direction = 0;
      0000DA 75 41 00         [24]  318 	mov	_play_macro_direction_65536_50,#0x00
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'rngU32'
                                    321 ;------------------------------------------------------------
                                    322 ;past                      Allocated with name '_rngU32_past_65536_101'
                                    323 ;present                   Allocated with name '_rngU32_present_65536_101'
                                    324 ;------------------------------------------------------------
                                    325 ;	../LED_Manager/led.c:321: static uint32_t past = 1;
      0000DD 75 4D 01         [24]  326 	mov	_rngU32_past_65536_101,#0x01
      0000E0 E4               [12]  327 	clr	a
      0000E1 F5 4E            [12]  328 	mov	(_rngU32_past_65536_101 + 1),a
      0000E3 F5 4F            [12]  329 	mov	(_rngU32_past_65536_101 + 2),a
      0000E5 F5 50            [12]  330 	mov	(_rngU32_past_65536_101 + 3),a
                                    331 ;	../LED_Manager/led.c:322: static uint32_t present = 1;
      0000E7 75 51 01         [24]  332 	mov	_rngU32_present_65536_101,#0x01
      0000EA F5 52            [12]  333 	mov	(_rngU32_present_65536_101 + 1),a
      0000EC F5 53            [12]  334 	mov	(_rngU32_present_65536_101 + 2),a
      0000EE F5 54            [12]  335 	mov	(_rngU32_present_65536_101 + 3),a
                                    336 ;--------------------------------------------------------
                                    337 ; Home
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
                                    340 	.area HOME    (CODE)
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'tick_led'
                                    347 ;------------------------------------------------------------
                                    348 ;on                        Allocated with name '_tick_led_on_65536_16'
                                    349 ;tick                      Allocated to registers r4 r5 r6 r7 
                                    350 ;value                     Allocated to registers r3 
                                    351 ;strobe                    Allocated to registers r3 
                                    352 ;sloc0                     Allocated with name '_tick_led_sloc0_1_0'
                                    353 ;------------------------------------------------------------
                                    354 ;	../LED_Manager/led.c:21: void tick_led(uint32_t tick){
                                    355 ;	-----------------------------------------
                                    356 ;	 function tick_led
                                    357 ;	-----------------------------------------
      001DFF                        358 _tick_led:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
      001DFF AC 82            [24]  367 	mov	r4,dpl
      001E01 AD 83            [24]  368 	mov	r5,dph
      001E03 AE F0            [24]  369 	mov	r6,b
      001E05 FF               [12]  370 	mov	r7,a
                                    371 ;	../LED_Manager/led.c:26: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      001E06 75 82 10         [24]  372 	mov	dpl,#0x10
      001E09 C0 07            [24]  373 	push	ar7
      001E0B C0 06            [24]  374 	push	ar6
      001E0D C0 05            [24]  375 	push	ar5
      001E0F C0 04            [24]  376 	push	ar4
      001E11 12 27 6A         [24]  377 	lcall	_get_runtime_data
      001E14 E5 82            [12]  378 	mov	a,dpl
      001E16 D0 04            [24]  379 	pop	ar4
      001E18 D0 05            [24]  380 	pop	ar5
      001E1A D0 06            [24]  381 	pop	ar6
      001E1C D0 07            [24]  382 	pop	ar7
      001E1E 60 03            [24]  383 	jz	00211$
      001E20 02 1F 20         [24]  384 	ljmp	00137$
      001E23                        385 00211$:
                                    386 ;	../LED_Manager/led.c:27: switch(get_runtime_data(MODE_INDEX)){
      001E23 75 82 0E         [24]  387 	mov	dpl,#0x0e
      001E26 C0 07            [24]  388 	push	ar7
      001E28 C0 06            [24]  389 	push	ar6
      001E2A C0 05            [24]  390 	push	ar5
      001E2C C0 04            [24]  391 	push	ar4
      001E2E 12 27 6A         [24]  392 	lcall	_get_runtime_data
      001E31 AB 82            [24]  393 	mov	r3,dpl
      001E33 D0 04            [24]  394 	pop	ar4
      001E35 D0 05            [24]  395 	pop	ar5
      001E37 D0 06            [24]  396 	pop	ar6
      001E39 D0 07            [24]  397 	pop	ar7
      001E3B BB 00 02         [24]  398 	cjne	r3,#0x00,00212$
      001E3E 80 09            [24]  399 	sjmp	00101$
      001E40                        400 00212$:
      001E40 BB 01 03         [24]  401 	cjne	r3,#0x01,00213$
      001E43 02 1E E0         [24]  402 	ljmp	00116$
      001E46                        403 00213$:
      001E46 02 23 C8         [24]  404 	ljmp	_blackout
                                    405 ;	../LED_Manager/led.c:28: case OPTION_DMX_MODE_9:
      001E49                        406 00101$:
                                    407 ;	../LED_Manager/led.c:29: value = get_dmx_value(DMX_M9_MACRO_INDEX);
      001E49 AB 34            [24]  408 	mov	r3,(_DMX + 0x0007)
                                    409 ;	../LED_Manager/led.c:31: if(value >= DMX_MACRO_NONE){
      001E4B BB 14 00         [24]  410 	cjne	r3,#0x14,00214$
      001E4E                        411 00214$:
      001E4E 40 36            [24]  412 	jc	00114$
                                    413 ;	../LED_Manager/led.c:32: if(value < DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
      001E50 BB 94 00         [24]  414 	cjne	r3,#0x94,00216$
      001E53                        415 00216$:
      001E53 50 0C            [24]  416 	jnc	00103$
                                    417 ;	../LED_Manager/led.c:33: color_wheel((value - DMX_MACRO_NONE) << 1);
      001E55 8B 02            [24]  418 	mov	ar2,r3
      001E57 EA               [12]  419 	mov	a,r2
      001E58 24 EC            [12]  420 	add	a,#0xec
      001E5A 25 E0            [12]  421 	add	a,acc
      001E5C F5 82            [12]  422 	mov	dpl,a
      001E5E 02 23 66         [24]  423 	ljmp	_color_wheel
      001E61                        424 00103$:
                                    425 ;	../LED_Manager/led.c:35: play_macro(tick, dmx_to_macro(value), get_dmx_value(DMX_M9_MACRO_SPEED_INDEX));
      001E61 8B 82            [24]  426 	mov	dpl,r3
      001E63 C0 07            [24]  427 	push	ar7
      001E65 C0 06            [24]  428 	push	ar6
      001E67 C0 05            [24]  429 	push	ar5
      001E69 C0 04            [24]  430 	push	ar4
      001E6B 12 1F E5         [24]  431 	lcall	_dmx_to_macro
      001E6E 85 82 42         [24]  432 	mov	_play_macro_PARM_2,dpl
      001E71 D0 04            [24]  433 	pop	ar4
      001E73 D0 05            [24]  434 	pop	ar5
      001E75 D0 06            [24]  435 	pop	ar6
      001E77 D0 07            [24]  436 	pop	ar7
      001E79 85 35 43         [24]  437 	mov	_play_macro_PARM_3,(_DMX + 0x0008)
      001E7C 8C 82            [24]  438 	mov	dpl,r4
      001E7E 8D 83            [24]  439 	mov	dph,r5
      001E80 8E F0            [24]  440 	mov	b,r6
      001E82 EF               [12]  441 	mov	a,r7
      001E83 02 20 2A         [24]  442 	ljmp	_play_macro
      001E86                        443 00114$:
                                    444 ;	../LED_Manager/led.c:39: strobe = get_dmx_value(DMX_M9_STROBE_INDEX);
                                    445 ;	../LED_Manager/led.c:41: if(strobe){
      001E86 E5 33            [12]  446 	mov	a,(_DMX + 0x0006)
      001E88 FB               [12]  447 	mov	r3,a
      001E89 60 41            [24]  448 	jz	00108$
                                    449 ;	../LED_Manager/led.c:42: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      001E8B 7A 00            [12]  450 	mov	r2,#0x00
      001E8D EB               [12]  451 	mov	a,r3
      001E8E 2B               [12]  452 	add	a,r3
      001E8F FB               [12]  453 	mov	r3,a
      001E90 EA               [12]  454 	mov	a,r2
      001E91 33               [12]  455 	rlc	a
      001E92 FA               [12]  456 	mov	r2,a
      001E93 74 1C            [12]  457 	mov	a,#0x1c
      001E95 C3               [12]  458 	clr	c
      001E96 9B               [12]  459 	subb	a,r3
      001E97 FB               [12]  460 	mov	r3,a
      001E98 74 02            [12]  461 	mov	a,#0x02
      001E9A 9A               [12]  462 	subb	a,r2
      001E9B 8B 72            [24]  463 	mov	__modulong_PARM_2,r3
      001E9D F5 73            [12]  464 	mov	(__modulong_PARM_2 + 1),a
      001E9F 33               [12]  465 	rlc	a
      001EA0 95 E0            [12]  466 	subb	a,acc
      001EA2 F5 74            [12]  467 	mov	(__modulong_PARM_2 + 2),a
      001EA4 F5 75            [12]  468 	mov	(__modulong_PARM_2 + 3),a
      001EA6 8C 82            [24]  469 	mov	dpl,r4
      001EA8 8D 83            [24]  470 	mov	dph,r5
      001EAA 8E F0            [24]  471 	mov	b,r6
      001EAC EF               [12]  472 	mov	a,r7
      001EAD 12 2D 04         [24]  473 	lcall	__modulong
      001EB0 85 82 3A         [24]  474 	mov	_tick_led_sloc0_1_0,dpl
      001EB3 85 83 3B         [24]  475 	mov	(_tick_led_sloc0_1_0 + 1),dph
      001EB6 85 F0 3C         [24]  476 	mov	(_tick_led_sloc0_1_0 + 2),b
      001EB9 F5 3D            [12]  477 	mov	(_tick_led_sloc0_1_0 + 3),a
      001EBB E5 3A            [12]  478 	mov	a,_tick_led_sloc0_1_0
      001EBD 45 3B            [12]  479 	orl	a,(_tick_led_sloc0_1_0 + 1)
      001EBF 45 3C            [12]  480 	orl	a,(_tick_led_sloc0_1_0 + 2)
      001EC1 45 3D            [12]  481 	orl	a,(_tick_led_sloc0_1_0 + 3)
      001EC3 70 0A            [24]  482 	jnz	00109$
                                    483 ;	../LED_Manager/led.c:43: on = ~on;
      001EC5 E5 39            [12]  484 	mov	a,_tick_led_on_65536_16
      001EC7 F4               [12]  485 	cpl	a
      001EC8 F5 39            [12]  486 	mov	_tick_led_on_65536_16,a
      001ECA 80 03            [24]  487 	sjmp	00109$
      001ECC                        488 00108$:
                                    489 ;	../LED_Manager/led.c:46: on = 0xFF;
      001ECC 75 39 FF         [24]  490 	mov	_tick_led_on_65536_16,#0xff
      001ECF                        491 00109$:
                                    492 ;	../LED_Manager/led.c:49: if(on){
      001ECF E5 39            [12]  493 	mov	a,_tick_led_on_65536_16
      001ED1 60 0A            [24]  494 	jz	00111$
                                    495 ;	../LED_Manager/led.c:50: PWMDATA11H = get_dmx_value(DMX_M9_RED_INDEX);
      001ED3 85 30 BD         [24]  496 	mov	_PWMDATA11H,(_DMX + 0x0003)
                                    497 ;	../LED_Manager/led.c:51: PWMDATA17H = get_dmx_value(DMX_M9_GREEN_INDEX);
      001ED6 85 31 AD         [24]  498 	mov	_PWMDATA17H,(_DMX + 0x0004)
                                    499 ;	../LED_Manager/led.c:52: PWMDATA14H = get_dmx_value(DMX_M9_BLUE_INDEX);
      001ED9 85 32 B5         [24]  500 	mov	_PWMDATA14H,(_DMX + 0x0005)
      001EDC 22               [24]  501 	ret
      001EDD                        502 00111$:
                                    503 ;	../LED_Manager/led.c:54: blackout();
                                    504 ;	../LED_Manager/led.c:58: break;
      001EDD 02 23 C8         [24]  505 	ljmp	_blackout
                                    506 ;	../LED_Manager/led.c:59: case OPTION_DMX_MODE_3: /* Only macros */
      001EE0                        507 00116$:
                                    508 ;	../LED_Manager/led.c:60: value = get_dmx_value(DMX_M3_MACRO_INDEX);
      001EE0 AB 2E            [24]  509 	mov	r3,(_DMX + 0x0001)
                                    510 ;	../LED_Manager/led.c:61: if(value >= DMX_MACRO_NONE){
      001EE2 BB 14 00         [24]  511 	cjne	r3,#0x14,00221$
      001EE5                        512 00221$:
      001EE5 40 36            [24]  513 	jc	00121$
                                    514 ;	../LED_Manager/led.c:62: if(value < DMX_MACRO_COLOR_WHEEL){
      001EE7 BB 94 00         [24]  515 	cjne	r3,#0x94,00223$
      001EEA                        516 00223$:
      001EEA 50 0C            [24]  517 	jnc	00118$
                                    518 ;	../LED_Manager/led.c:63: color_wheel((value - DMX_MACRO_NONE) << 1);
      001EEC 8B 02            [24]  519 	mov	ar2,r3
      001EEE EA               [12]  520 	mov	a,r2
      001EEF 24 EC            [12]  521 	add	a,#0xec
      001EF1 25 E0            [12]  522 	add	a,acc
      001EF3 F5 82            [12]  523 	mov	dpl,a
      001EF5 02 23 66         [24]  524 	ljmp	_color_wheel
      001EF8                        525 00118$:
                                    526 ;	../LED_Manager/led.c:65: play_macro(tick, dmx_to_macro(value), get_dmx_value(DMX_M3_MACRO_SPEED_INDEX));
      001EF8 8B 82            [24]  527 	mov	dpl,r3
      001EFA C0 07            [24]  528 	push	ar7
      001EFC C0 06            [24]  529 	push	ar6
      001EFE C0 05            [24]  530 	push	ar5
      001F00 C0 04            [24]  531 	push	ar4
      001F02 12 1F E5         [24]  532 	lcall	_dmx_to_macro
      001F05 85 82 42         [24]  533 	mov	_play_macro_PARM_2,dpl
      001F08 D0 04            [24]  534 	pop	ar4
      001F0A D0 05            [24]  535 	pop	ar5
      001F0C D0 06            [24]  536 	pop	ar6
      001F0E D0 07            [24]  537 	pop	ar7
      001F10 85 2F 43         [24]  538 	mov	_play_macro_PARM_3,(_DMX + 0x0002)
      001F13 8C 82            [24]  539 	mov	dpl,r4
      001F15 8D 83            [24]  540 	mov	dph,r5
      001F17 8E F0            [24]  541 	mov	b,r6
      001F19 EF               [12]  542 	mov	a,r7
      001F1A 02 20 2A         [24]  543 	ljmp	_play_macro
      001F1D                        544 00121$:
                                    545 ;	../LED_Manager/led.c:68: blackout();
                                    546 ;	../LED_Manager/led.c:70: break;
                                    547 ;	../LED_Manager/led.c:71: default:
                                    548 ;	../LED_Manager/led.c:72: blackout();
                                    549 ;	../LED_Manager/led.c:74: }
      001F1D 02 23 C8         [24]  550 	ljmp	_blackout
      001F20                        551 00137$:
                                    552 ;	../LED_Manager/led.c:76: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
      001F20 75 82 03         [24]  553 	mov	dpl,#0x03
      001F23 C0 07            [24]  554 	push	ar7
      001F25 C0 06            [24]  555 	push	ar6
      001F27 C0 05            [24]  556 	push	ar5
      001F29 C0 04            [24]  557 	push	ar4
      001F2B 12 27 6A         [24]  558 	lcall	_get_runtime_data
      001F2E E5 82            [12]  559 	mov	a,dpl
      001F30 D0 04            [24]  560 	pop	ar4
      001F32 D0 05            [24]  561 	pop	ar5
      001F34 D0 06            [24]  562 	pop	ar6
      001F36 D0 07            [24]  563 	pop	ar7
      001F38 60 31            [24]  564 	jz	00134$
                                    565 ;	../LED_Manager/led.c:77: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
      001F3A 75 82 03         [24]  566 	mov	dpl,#0x03
      001F3D C0 07            [24]  567 	push	ar7
      001F3F C0 06            [24]  568 	push	ar6
      001F41 C0 05            [24]  569 	push	ar5
      001F43 C0 04            [24]  570 	push	ar4
      001F45 12 27 6A         [24]  571 	lcall	_get_runtime_data
      001F48 AB 82            [24]  572 	mov	r3,dpl
      001F4A 75 82 04         [24]  573 	mov	dpl,#0x04
      001F4D C0 03            [24]  574 	push	ar3
      001F4F 12 27 6A         [24]  575 	lcall	_get_runtime_data
      001F52 85 82 43         [24]  576 	mov	_play_macro_PARM_3,dpl
      001F55 D0 03            [24]  577 	pop	ar3
      001F57 D0 04            [24]  578 	pop	ar4
      001F59 D0 05            [24]  579 	pop	ar5
      001F5B D0 06            [24]  580 	pop	ar6
      001F5D D0 07            [24]  581 	pop	ar7
      001F5F 8B 42            [24]  582 	mov	_play_macro_PARM_2,r3
      001F61 8C 82            [24]  583 	mov	dpl,r4
      001F63 8D 83            [24]  584 	mov	dph,r5
      001F65 8E F0            [24]  585 	mov	b,r6
      001F67 EF               [12]  586 	mov	a,r7
      001F68 02 20 2A         [24]  587 	ljmp	_play_macro
      001F6B                        588 00134$:
                                    589 ;	../LED_Manager/led.c:80: strobe = get_runtime_data(STROBE_INDEX);
      001F6B 75 82 08         [24]  590 	mov	dpl,#0x08
      001F6E C0 07            [24]  591 	push	ar7
      001F70 C0 06            [24]  592 	push	ar6
      001F72 C0 05            [24]  593 	push	ar5
      001F74 C0 04            [24]  594 	push	ar4
      001F76 12 27 6A         [24]  595 	lcall	_get_runtime_data
      001F79 AB 82            [24]  596 	mov	r3,dpl
      001F7B D0 04            [24]  597 	pop	ar4
      001F7D D0 05            [24]  598 	pop	ar5
      001F7F D0 06            [24]  599 	pop	ar6
      001F81 D0 07            [24]  600 	pop	ar7
                                    601 ;	../LED_Manager/led.c:82: if(strobe){
      001F83 EB               [12]  602 	mov	a,r3
      001F84 60 39            [24]  603 	jz	00128$
                                    604 ;	../LED_Manager/led.c:83: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      001F86 7A 00            [12]  605 	mov	r2,#0x00
      001F88 EB               [12]  606 	mov	a,r3
      001F89 2B               [12]  607 	add	a,r3
      001F8A FB               [12]  608 	mov	r3,a
      001F8B EA               [12]  609 	mov	a,r2
      001F8C 33               [12]  610 	rlc	a
      001F8D FA               [12]  611 	mov	r2,a
      001F8E 74 1C            [12]  612 	mov	a,#0x1c
      001F90 C3               [12]  613 	clr	c
      001F91 9B               [12]  614 	subb	a,r3
      001F92 FB               [12]  615 	mov	r3,a
      001F93 74 02            [12]  616 	mov	a,#0x02
      001F95 9A               [12]  617 	subb	a,r2
      001F96 8B 72            [24]  618 	mov	__modulong_PARM_2,r3
      001F98 F5 73            [12]  619 	mov	(__modulong_PARM_2 + 1),a
      001F9A 33               [12]  620 	rlc	a
      001F9B 95 E0            [12]  621 	subb	a,acc
      001F9D F5 74            [12]  622 	mov	(__modulong_PARM_2 + 2),a
      001F9F F5 75            [12]  623 	mov	(__modulong_PARM_2 + 3),a
      001FA1 8C 82            [24]  624 	mov	dpl,r4
      001FA3 8D 83            [24]  625 	mov	dph,r5
      001FA5 8E F0            [24]  626 	mov	b,r6
      001FA7 EF               [12]  627 	mov	a,r7
      001FA8 12 2D 04         [24]  628 	lcall	__modulong
      001FAB AC 82            [24]  629 	mov	r4,dpl
      001FAD AD 83            [24]  630 	mov	r5,dph
      001FAF AE F0            [24]  631 	mov	r6,b
      001FB1 FF               [12]  632 	mov	r7,a
      001FB2 EC               [12]  633 	mov	a,r4
      001FB3 4D               [12]  634 	orl	a,r5
      001FB4 4E               [12]  635 	orl	a,r6
      001FB5 4F               [12]  636 	orl	a,r7
      001FB6 70 0A            [24]  637 	jnz	00129$
                                    638 ;	../LED_Manager/led.c:84: on = ~on;
      001FB8 E5 39            [12]  639 	mov	a,_tick_led_on_65536_16
      001FBA F4               [12]  640 	cpl	a
      001FBB F5 39            [12]  641 	mov	_tick_led_on_65536_16,a
      001FBD 80 03            [24]  642 	sjmp	00129$
      001FBF                        643 00128$:
                                    644 ;	../LED_Manager/led.c:87: on = 0xFF;
      001FBF 75 39 FF         [24]  645 	mov	_tick_led_on_65536_16,#0xff
      001FC2                        646 00129$:
                                    647 ;	../LED_Manager/led.c:90: if(on){
      001FC2 E5 39            [12]  648 	mov	a,_tick_led_on_65536_16
      001FC4 60 1C            [24]  649 	jz	00131$
                                    650 ;	../LED_Manager/led.c:91: PWMDATA11H = get_runtime_data(RED_INDEX);
      001FC6 75 82 05         [24]  651 	mov	dpl,#0x05
      001FC9 12 27 6A         [24]  652 	lcall	_get_runtime_data
      001FCC 85 82 BD         [24]  653 	mov	_PWMDATA11H,dpl
                                    654 ;	../LED_Manager/led.c:92: PWMDATA17H = get_runtime_data(GREEN_INDEX);
      001FCF 75 82 06         [24]  655 	mov	dpl,#0x06
      001FD2 12 27 6A         [24]  656 	lcall	_get_runtime_data
      001FD5 85 82 AD         [24]  657 	mov	_PWMDATA17H,dpl
                                    658 ;	../LED_Manager/led.c:93: PWMDATA14H = get_runtime_data(BLUE_INDEX);
      001FD8 75 82 07         [24]  659 	mov	dpl,#0x07
      001FDB 12 27 6A         [24]  660 	lcall	_get_runtime_data
      001FDE 85 82 B5         [24]  661 	mov	_PWMDATA14H,dpl
      001FE1 22               [24]  662 	ret
      001FE2                        663 00131$:
                                    664 ;	../LED_Manager/led.c:95: blackout();
                                    665 ;	../LED_Manager/led.c:99: }
      001FE2 02 23 C8         [24]  666 	ljmp	_blackout
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'dmx_to_macro'
                                    669 ;------------------------------------------------------------
                                    670 ;dmx_value                 Allocated to registers r7 
                                    671 ;------------------------------------------------------------
                                    672 ;	../LED_Manager/led.c:101: uint8_t dmx_to_macro(uint8_t dmx_value){
                                    673 ;	-----------------------------------------
                                    674 ;	 function dmx_to_macro
                                    675 ;	-----------------------------------------
      001FE5                        676 _dmx_to_macro:
      001FE5 AF 82            [24]  677 	mov	r7,dpl
                                    678 ;	../LED_Manager/led.c:103: if(dmx_value < DMX_MACRO_WHITE){
      001FE7 BF B4 00         [24]  679 	cjne	r7,#0xb4,00151$
      001FEA                        680 00151$:
      001FEA 50 04            [24]  681 	jnc	00119$
                                    682 ;	../LED_Manager/led.c:104: return OPTION_MACRO_WHITE;
      001FEC 75 82 21         [24]  683 	mov	dpl,#0x21
      001FEF 22               [24]  684 	ret
      001FF0                        685 00119$:
                                    686 ;	../LED_Manager/led.c:105: } else if(dmx_value < DMX_MACRO_RAINBOW){
      001FF0 BF BE 00         [24]  687 	cjne	r7,#0xbe,00153$
      001FF3                        688 00153$:
      001FF3 50 04            [24]  689 	jnc	00116$
                                    690 ;	../LED_Manager/led.c:106: return OPTION_MACRO_RAINBOW_DMX;
      001FF5 75 82 01         [24]  691 	mov	dpl,#0x01
      001FF8 22               [24]  692 	ret
      001FF9                        693 00116$:
                                    694 ;	../LED_Manager/led.c:107: } else if(dmx_value < DMX_MACRO_FIRE){
      001FF9 BF C8 00         [24]  695 	cjne	r7,#0xc8,00155$
      001FFC                        696 00155$:
      001FFC 50 04            [24]  697 	jnc	00113$
                                    698 ;	../LED_Manager/led.c:108: return OPTION_MACRO_FIRE_DMX;
      001FFE 75 82 02         [24]  699 	mov	dpl,#0x02
      002001 22               [24]  700 	ret
      002002                        701 00113$:
                                    702 ;	../LED_Manager/led.c:109: } else if(dmx_value < DMX_MACRO_WATER){
      002002 BF D2 00         [24]  703 	cjne	r7,#0xd2,00157$
      002005                        704 00157$:
      002005 50 04            [24]  705 	jnc	00110$
                                    706 ;	../LED_Manager/led.c:110: return OPTION_MACRO_WATER_DMX;
      002007 75 82 03         [24]  707 	mov	dpl,#0x03
      00200A 22               [24]  708 	ret
      00200B                        709 00110$:
                                    710 ;	../LED_Manager/led.c:111: } else if(dmx_value < DMX_MACRO_ACID){
      00200B BF DC 00         [24]  711 	cjne	r7,#0xdc,00159$
      00200E                        712 00159$:
      00200E 50 04            [24]  713 	jnc	00107$
                                    714 ;	../LED_Manager/led.c:112: return OPTION_MACRO_ACID_DMX;
      002010 75 82 04         [24]  715 	mov	dpl,#0x04
      002013 22               [24]  716 	ret
      002014                        717 00107$:
                                    718 ;	../LED_Manager/led.c:113: } else if(dmx_value < DMX_MACRO_ETHER){
      002014 BF E6 00         [24]  719 	cjne	r7,#0xe6,00161$
      002017                        720 00161$:
      002017 50 04            [24]  721 	jnc	00104$
                                    722 ;	../LED_Manager/led.c:114: return OPTION_MACRO_ETHER_DMX;
      002019 75 82 05         [24]  723 	mov	dpl,#0x05
      00201C 22               [24]  724 	ret
      00201D                        725 00104$:
                                    726 ;	../LED_Manager/led.c:115: } else if(dmx_value < DMX_MACRO_STORM){
      00201D BF F0 00         [24]  727 	cjne	r7,#0xf0,00163$
      002020                        728 00163$:
      002020 50 04            [24]  729 	jnc	00108$
                                    730 ;	../LED_Manager/led.c:116: return OPTION_MACRO_STORM_DMX;
      002022 75 82 06         [24]  731 	mov	dpl,#0x06
      002025 22               [24]  732 	ret
      002026                        733 00108$:
                                    734 ;	../LED_Manager/led.c:119: return 69; // ;)
      002026 75 82 45         [24]  735 	mov	dpl,#0x45
                                    736 ;	../LED_Manager/led.c:120: }
      002029 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'play_macro'
                                    740 ;------------------------------------------------------------
                                    741 ;tock                      Allocated with name '_play_macro_tock_65536_50'
                                    742 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_50'
                                    743 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_50'
                                    744 ;direction                 Allocated with name '_play_macro_direction_65536_50'
                                    745 ;macro                     Allocated with name '_play_macro_PARM_2'
                                    746 ;macro_speed               Allocated with name '_play_macro_PARM_3'
                                    747 ;tick                      Allocated with name '_play_macro_tick_65536_49'
                                    748 ;rng                       Allocated with name '_play_macro_rng_65536_50'
                                    749 ;changed                   Allocated with name '_play_macro_changed_65536_50'
                                    750 ;------------------------------------------------------------
                                    751 ;	../LED_Manager/led.c:122: void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
                                    752 ;	-----------------------------------------
                                    753 ;	 function play_macro
                                    754 ;	-----------------------------------------
      00202A                        755 _play_macro:
      00202A 85 82 44         [24]  756 	mov	_play_macro_tick_65536_49,dpl
      00202D 85 83 45         [24]  757 	mov	(_play_macro_tick_65536_49 + 1),dph
      002030 85 F0 46         [24]  758 	mov	(_play_macro_tick_65536_49 + 2),b
      002033 F5 47            [12]  759 	mov	(_play_macro_tick_65536_49 + 3),a
                                    760 ;	../LED_Manager/led.c:127: uint32_t rng = 0;
      002035 E4               [12]  761 	clr	a
      002036 F5 48            [12]  762 	mov	_play_macro_rng_65536_50,a
      002038 F5 49            [12]  763 	mov	(_play_macro_rng_65536_50 + 1),a
      00203A F5 4A            [12]  764 	mov	(_play_macro_rng_65536_50 + 2),a
      00203C F5 4B            [12]  765 	mov	(_play_macro_rng_65536_50 + 3),a
                                    766 ;	../LED_Manager/led.c:128: uint8_t changed = 0;
                                    767 ;	1-genFromRTrack replaced	mov	_play_macro_changed_65536_50,#0x00
      00203E F5 4C            [12]  768 	mov	_play_macro_changed_65536_50,a
                                    769 ;	../LED_Manager/led.c:132: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
      002040 E5 43            [12]  770 	mov	a,_play_macro_PARM_3
      002042 C3               [12]  771 	clr	c
      002043 13               [12]  772 	rrc	a
      002044 FE               [12]  773 	mov	r6,a
      002045 7D 00            [12]  774 	mov	r5,#0x00
      002047 74 85            [12]  775 	mov	a,#0x85
      002049 C3               [12]  776 	clr	c
      00204A 9E               [12]  777 	subb	a,r6
      00204B FE               [12]  778 	mov	r6,a
      00204C E4               [12]  779 	clr	a
      00204D 9D               [12]  780 	subb	a,r5
      00204E FD               [12]  781 	mov	r5,a
      00204F 8E 72            [24]  782 	mov	__modulong_PARM_2,r6
      002051 ED               [12]  783 	mov	a,r5
      002052 F5 73            [12]  784 	mov	(__modulong_PARM_2 + 1),a
      002054 33               [12]  785 	rlc	a
      002055 95 E0            [12]  786 	subb	a,acc
      002057 F5 74            [12]  787 	mov	(__modulong_PARM_2 + 2),a
      002059 F5 75            [12]  788 	mov	(__modulong_PARM_2 + 3),a
      00205B 85 44 82         [24]  789 	mov	dpl,_play_macro_tick_65536_49
      00205E 85 45 83         [24]  790 	mov	dph,(_play_macro_tick_65536_49 + 1)
      002061 85 46 F0         [24]  791 	mov	b,(_play_macro_tick_65536_49 + 2)
      002064 E5 47            [12]  792 	mov	a,(_play_macro_tick_65536_49 + 3)
      002066 12 2D 04         [24]  793 	lcall	__modulong
      002069 AC 82            [24]  794 	mov	r4,dpl
      00206B AD 83            [24]  795 	mov	r5,dph
      00206D AE F0            [24]  796 	mov	r6,b
      00206F FF               [12]  797 	mov	r7,a
      002070 EC               [12]  798 	mov	a,r4
      002071 4D               [12]  799 	orl	a,r5
      002072 4E               [12]  800 	orl	a,r6
      002073 4F               [12]  801 	orl	a,r7
      002074 70 13            [24]  802 	jnz	00102$
                                    803 ;	../LED_Manager/led.c:133: changed = 0xFF;
      002076 75 4C FF         [24]  804 	mov	_play_macro_changed_65536_50,#0xff
                                    805 ;	../LED_Manager/led.c:134: rng = rngU32(); /* TODO check back */
      002079 12 23 D2         [24]  806 	lcall	_rngU32
      00207C 85 82 48         [24]  807 	mov	_play_macro_rng_65536_50,dpl
      00207F 85 83 49         [24]  808 	mov	(_play_macro_rng_65536_50 + 1),dph
      002082 85 F0 4A         [24]  809 	mov	(_play_macro_rng_65536_50 + 2),b
      002085 F5 4B            [12]  810 	mov	(_play_macro_rng_65536_50 + 3),a
                                    811 ;	../LED_Manager/led.c:135: tock++;
      002087 05 3E            [12]  812 	inc	_play_macro_tock_65536_50
      002089                        813 00102$:
                                    814 ;	../LED_Manager/led.c:138: switch (macro)
      002089 74 01            [12]  815 	mov	a,#0x01
      00208B B5 42 02         [24]  816 	cjne	a,_play_macro_PARM_2,00344$
      00208E 80 42            [24]  817 	sjmp	00103$
      002090                        818 00344$:
      002090 74 02            [12]  819 	mov	a,#0x02
      002092 B5 42 02         [24]  820 	cjne	a,_play_macro_PARM_2,00345$
      002095 80 41            [24]  821 	sjmp	00104$
      002097                        822 00345$:
      002097 74 03            [12]  823 	mov	a,#0x03
      002099 B5 42 04         [24]  824 	cjne	a,_play_macro_PARM_2,00346$
      00209C 74 01            [12]  825 	mov	a,#0x01
      00209E 80 01            [24]  826 	sjmp	00347$
      0020A0                        827 00346$:
      0020A0 E4               [12]  828 	clr	a
      0020A1                        829 00347$:
      0020A1 FF               [12]  830 	mov	r7,a
      0020A2 60 03            [24]  831 	jz	00348$
      0020A4 02 21 7C         [24]  832 	ljmp	00120$
      0020A7                        833 00348$:
      0020A7 74 04            [12]  834 	mov	a,#0x04
      0020A9 B5 42 03         [24]  835 	cjne	a,_play_macro_PARM_2,00349$
      0020AC 02 21 7C         [24]  836 	ljmp	00120$
      0020AF                        837 00349$:
      0020AF 74 05            [12]  838 	mov	a,#0x05
      0020B1 B5 42 03         [24]  839 	cjne	a,_play_macro_PARM_2,00350$
      0020B4 02 21 7C         [24]  840 	ljmp	00120$
      0020B7                        841 00350$:
      0020B7 74 06            [12]  842 	mov	a,#0x06
      0020B9 B5 42 03         [24]  843 	cjne	a,_play_macro_PARM_2,00351$
      0020BC 02 22 3A         [24]  844 	ljmp	00151$
      0020BF                        845 00351$:
      0020BF 74 21            [12]  846 	mov	a,#0x21
      0020C1 B5 42 03         [24]  847 	cjne	a,_play_macro_PARM_2,00352$
      0020C4 02 22 9A         [24]  848 	ljmp	00165$
      0020C7                        849 00352$:
      0020C7 74 45            [12]  850 	mov	a,#0x45
      0020C9 B5 42 03         [24]  851 	cjne	a,_play_macro_PARM_2,00353$
      0020CC 02 22 9D         [24]  852 	ljmp	00166$
      0020CF                        853 00353$:
      0020CF 02 23 63         [24]  854 	ljmp	00185$
                                    855 ;	../LED_Manager/led.c:140: case OPTION_MACRO_RAINBOW_DMX: //rainbow
      0020D2                        856 00103$:
                                    857 ;	../LED_Manager/led.c:141: color_wheel(tock);
      0020D2 85 3E 82         [24]  858 	mov	dpl,_play_macro_tock_65536_50
                                    859 ;	../LED_Manager/led.c:142: break;
      0020D5 02 23 66         [24]  860 	ljmp	_color_wheel
                                    861 ;	../LED_Manager/led.c:143: case OPTION_MACRO_FIRE_DMX: //fire
      0020D8                        862 00104$:
                                    863 ;	../LED_Manager/led.c:144: if(changed) { 
      0020D8 E5 4C            [12]  864 	mov	a,_play_macro_changed_65536_50
      0020DA 70 01            [24]  865 	jnz	00354$
      0020DC 22               [24]  866 	ret
      0020DD                        867 00354$:
                                    868 ;	../LED_Manager/led.c:146: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
      0020DD 74 C9            [12]  869 	mov	a,#0x100 - 0x37
      0020DF 25 3F            [12]  870 	add	a,_play_macro_primaryCount_65536_50
      0020E1 40 0C            [24]  871 	jc	00106$
      0020E3 75 3F 37         [24]  872 	mov	_play_macro_primaryCount_65536_50,#0x37
      0020E6 AD 41            [24]  873 	mov	r5,_play_macro_direction_65536_50
      0020E8 7E 00            [12]  874 	mov	r6,#0x00
      0020EA 43 05 01         [24]  875 	orl	ar5,#0x01
      0020ED 8D 41            [24]  876 	mov	_play_macro_direction_65536_50,r5
      0020EF                        877 00106$:
                                    878 ;	../LED_Manager/led.c:147: if(direction & 0x01){
      0020EF E5 41            [12]  879 	mov	a,_play_macro_direction_65536_50
      0020F1 30 E0 0E         [24]  880 	jnb	acc.0,00114$
                                    881 ;	../LED_Manager/led.c:148: if(primaryCount == 255){
      0020F4 74 FF            [12]  882 	mov	a,#0xff
      0020F6 B5 3F 05         [24]  883 	cjne	a,_play_macro_primaryCount_65536_50,00108$
                                    884 ;	../LED_Manager/led.c:149: direction &= ~0x01;
      0020F9 53 41 FE         [24]  885 	anl	_play_macro_direction_65536_50,#0xfe
      0020FC 80 20            [24]  886 	sjmp	00115$
      0020FE                        887 00108$:
                                    888 ;	../LED_Manager/led.c:151: primaryCount++;
      0020FE 05 3F            [12]  889 	inc	_play_macro_primaryCount_65536_50
      002100 80 1C            [24]  890 	sjmp	00115$
      002102                        891 00114$:
                                    892 ;	../LED_Manager/led.c:154: if(primaryCount - 1 == 55){
      002102 AD 3F            [24]  893 	mov	r5,_play_macro_primaryCount_65536_50
      002104 7E 00            [12]  894 	mov	r6,#0x00
      002106 1D               [12]  895 	dec	r5
      002107 BD FF 01         [24]  896 	cjne	r5,#0xff,00359$
      00210A 1E               [12]  897 	dec	r6
      00210B                        898 00359$:
      00210B BD 37 0E         [24]  899 	cjne	r5,#0x37,00111$
      00210E BE 00 0B         [24]  900 	cjne	r6,#0x00,00111$
                                    901 ;	../LED_Manager/led.c:155: direction |= 0x01;
      002111 AD 41            [24]  902 	mov	r5,_play_macro_direction_65536_50
      002113 7E 00            [12]  903 	mov	r6,#0x00
      002115 43 05 01         [24]  904 	orl	ar5,#0x01
      002118 8D 41            [24]  905 	mov	_play_macro_direction_65536_50,r5
      00211A 80 02            [24]  906 	sjmp	00115$
      00211C                        907 00111$:
                                    908 ;	../LED_Manager/led.c:157: primaryCount--;
      00211C 15 3F            [12]  909 	dec	_play_macro_primaryCount_65536_50
      00211E                        910 00115$:
                                    911 ;	../LED_Manager/led.c:161: PWMDATA11H = primaryCount;
                                    912 ;	../LED_Manager/led.c:162: PWMDATA17H = (uint8_t) (rng % (primaryCount >> 2));
      00211E E5 3F            [12]  913 	mov	a,_play_macro_primaryCount_65536_50
      002120 F5 BD            [12]  914 	mov	_PWMDATA11H,a
      002122 03               [12]  915 	rr	a
      002123 03               [12]  916 	rr	a
      002124 54 3F            [12]  917 	anl	a,#0x3f
      002126 FE               [12]  918 	mov	r6,a
      002127 8E 72            [24]  919 	mov	__modulong_PARM_2,r6
      002129 75 73 00         [24]  920 	mov	(__modulong_PARM_2 + 1),#0x00
      00212C 75 74 00         [24]  921 	mov	(__modulong_PARM_2 + 2),#0x00
      00212F 75 75 00         [24]  922 	mov	(__modulong_PARM_2 + 3),#0x00
      002132 85 48 82         [24]  923 	mov	dpl,_play_macro_rng_65536_50
      002135 85 49 83         [24]  924 	mov	dph,(_play_macro_rng_65536_50 + 1)
      002138 85 4A F0         [24]  925 	mov	b,(_play_macro_rng_65536_50 + 2)
      00213B E5 4B            [12]  926 	mov	a,(_play_macro_rng_65536_50 + 3)
      00213D 12 2D 04         [24]  927 	lcall	__modulong
      002140 AB 82            [24]  928 	mov	r3,dpl
      002142 8B AD            [24]  929 	mov	_PWMDATA17H,r3
                                    930 ;	../LED_Manager/led.c:163: PWMDATA14H = (!(rng % 13)) ? PWMDATA17H > 1 : 0;
      002144 75 72 0D         [24]  931 	mov	__modulong_PARM_2,#0x0d
      002147 E4               [12]  932 	clr	a
      002148 F5 73            [12]  933 	mov	(__modulong_PARM_2 + 1),a
      00214A F5 74            [12]  934 	mov	(__modulong_PARM_2 + 2),a
      00214C F5 75            [12]  935 	mov	(__modulong_PARM_2 + 3),a
      00214E 85 48 82         [24]  936 	mov	dpl,_play_macro_rng_65536_50
      002151 85 49 83         [24]  937 	mov	dph,(_play_macro_rng_65536_50 + 1)
      002154 85 4A F0         [24]  938 	mov	b,(_play_macro_rng_65536_50 + 2)
      002157 E5 4B            [12]  939 	mov	a,(_play_macro_rng_65536_50 + 3)
      002159 12 2D 04         [24]  940 	lcall	__modulong
      00215C AB 82            [24]  941 	mov	r3,dpl
      00215E AC 83            [24]  942 	mov	r4,dph
      002160 AD F0            [24]  943 	mov	r5,b
      002162 FE               [12]  944 	mov	r6,a
      002163 EB               [12]  945 	mov	a,r3
      002164 4C               [12]  946 	orl	a,r4
      002165 4D               [12]  947 	orl	a,r5
      002166 4E               [12]  948 	orl	a,r6
      002167 70 0C            [24]  949 	jnz	00189$
      002169 C3               [12]  950 	clr	c
      00216A 74 01            [12]  951 	mov	a,#0x01
      00216C 95 AD            [12]  952 	subb	a,_PWMDATA17H
      00216E E4               [12]  953 	clr	a
      00216F 33               [12]  954 	rlc	a
      002170 FD               [12]  955 	mov	r5,a
      002171 7E 00            [12]  956 	mov	r6,#0x00
      002173 80 04            [24]  957 	sjmp	00190$
      002175                        958 00189$:
      002175 7D 00            [12]  959 	mov	r5,#0x00
      002177 7E 00            [12]  960 	mov	r6,#0x00
      002179                        961 00190$:
      002179 8D B5            [24]  962 	mov	_PWMDATA14H,r5
                                    963 ;	../LED_Manager/led.c:166: break;
      00217B 22               [24]  964 	ret
                                    965 ;	../LED_Manager/led.c:169: case OPTION_MACRO_ETHER_DMX:
      00217C                        966 00120$:
                                    967 ;	../LED_Manager/led.c:171: if(changed){
      00217C E5 4C            [12]  968 	mov	a,_play_macro_changed_65536_50
      00217E 70 01            [24]  969 	jnz	00363$
      002180 22               [24]  970 	ret
      002181                        971 00363$:
                                    972 ;	../LED_Manager/led.c:173: if(direction & 0x01){
      002181 E5 41            [12]  973 	mov	a,_play_macro_direction_65536_50
      002183 30 E0 14         [24]  974 	jnb	acc.0,00126$
                                    975 ;	../LED_Manager/led.c:174: primaryCount +=2;
      002186 AE 3F            [24]  976 	mov	r6,_play_macro_primaryCount_65536_50
      002188 74 02            [12]  977 	mov	a,#0x02
      00218A 2E               [12]  978 	add	a,r6
                                    979 ;	../LED_Manager/led.c:176: if(primaryCount < 75){
      00218B F5 3F            [12]  980 	mov	_play_macro_primaryCount_65536_50,a
      00218D C3               [12]  981 	clr	c
      00218E 94 4B            [12]  982 	subb	a,#0x4b
      002190 50 1F            [24]  983 	jnc	00127$
                                    984 ;	../LED_Manager/led.c:177: direction &= ~0x01;
      002192 53 41 FE         [24]  985 	anl	_play_macro_direction_65536_50,#0xfe
                                    986 ;	../LED_Manager/led.c:178: primaryCount = 255;
      002195 75 3F FF         [24]  987 	mov	_play_macro_primaryCount_65536_50,#0xff
      002198 80 17            [24]  988 	sjmp	00127$
      00219A                        989 00126$:
                                    990 ;	../LED_Manager/led.c:182: primaryCount -=2;
      00219A E5 3F            [12]  991 	mov	a,_play_macro_primaryCount_65536_50
      00219C FE               [12]  992 	mov	r6,a
      00219D 24 FE            [12]  993 	add	a,#0xfe
                                    994 ;	../LED_Manager/led.c:184: if(primaryCount <= 130){
      00219F F5 3F            [12]  995 	mov  _play_macro_primaryCount_65536_50,a
      0021A1 24 7D            [12]  996 	add	a,#0xff - 0x82
      0021A3 40 0C            [24]  997 	jc	00127$
                                    998 ;	../LED_Manager/led.c:185: direction |= 0x01;
      0021A5 AD 41            [24]  999 	mov	r5,_play_macro_direction_65536_50
      0021A7 7E 00            [12] 1000 	mov	r6,#0x00
      0021A9 43 05 01         [24] 1001 	orl	ar5,#0x01
      0021AC 8D 41            [24] 1002 	mov	_play_macro_direction_65536_50,r5
                                   1003 ;	../LED_Manager/led.c:186: primaryCount = 130;
      0021AE 75 3F 82         [24] 1004 	mov	_play_macro_primaryCount_65536_50,#0x82
      0021B1                       1005 00127$:
                                   1006 ;	../LED_Manager/led.c:190: if(rng % 21 == 0){
      0021B1 75 72 15         [24] 1007 	mov	__modulong_PARM_2,#0x15
      0021B4 E4               [12] 1008 	clr	a
      0021B5 F5 73            [12] 1009 	mov	(__modulong_PARM_2 + 1),a
      0021B7 F5 74            [12] 1010 	mov	(__modulong_PARM_2 + 2),a
      0021B9 F5 75            [12] 1011 	mov	(__modulong_PARM_2 + 3),a
      0021BB 85 48 82         [24] 1012 	mov	dpl,_play_macro_rng_65536_50
      0021BE 85 49 83         [24] 1013 	mov	dph,(_play_macro_rng_65536_50 + 1)
      0021C1 85 4A F0         [24] 1014 	mov	b,(_play_macro_rng_65536_50 + 2)
      0021C4 E5 4B            [12] 1015 	mov	a,(_play_macro_rng_65536_50 + 3)
      0021C6 C0 07            [24] 1016 	push	ar7
      0021C8 12 2D 04         [24] 1017 	lcall	__modulong
      0021CB AB 82            [24] 1018 	mov	r3,dpl
      0021CD AC 83            [24] 1019 	mov	r4,dph
      0021CF AD F0            [24] 1020 	mov	r5,b
      0021D1 FE               [12] 1021 	mov	r6,a
      0021D2 D0 07            [24] 1022 	pop	ar7
      0021D4 EB               [12] 1023 	mov	a,r3
      0021D5 4C               [12] 1024 	orl	a,r4
      0021D6 4D               [12] 1025 	orl	a,r5
      0021D7 4E               [12] 1026 	orl	a,r6
      0021D8 70 15            [24] 1027 	jnz	00139$
                                   1028 ;	../LED_Manager/led.c:191: if(direction & 0x10){
      0021DA E5 41            [12] 1029 	mov	a,_play_macro_direction_65536_50
      0021DC 30 E4 05         [24] 1030 	jnb	acc.4,00129$
                                   1031 ;	../LED_Manager/led.c:192: direction &= ~0x10;
      0021DF 53 41 EF         [24] 1032 	anl	_play_macro_direction_65536_50,#0xef
      0021E2 80 28            [24] 1033 	sjmp	00140$
      0021E4                       1034 00129$:
                                   1035 ;	../LED_Manager/led.c:194: direction |= 0x10;
      0021E4 AD 41            [24] 1036 	mov	r5,_play_macro_direction_65536_50
      0021E6 7E 00            [12] 1037 	mov	r6,#0x00
      0021E8 43 05 10         [24] 1038 	orl	ar5,#0x10
      0021EB 8D 41            [24] 1039 	mov	_play_macro_direction_65536_50,r5
      0021ED 80 1D            [24] 1040 	sjmp	00140$
      0021EF                       1041 00139$:
                                   1042 ;	../LED_Manager/led.c:197: if(direction & 0x10){
      0021EF E5 41            [12] 1043 	mov	a,_play_macro_direction_65536_50
      0021F1 30 E4 0D         [24] 1044 	jnb	acc.4,00136$
                                   1045 ;	../LED_Manager/led.c:198: secondaryCount++;
      0021F4 05 40            [12] 1046 	inc	_play_macro_secondaryCount_65536_50
                                   1047 ;	../LED_Manager/led.c:200: if(secondaryCount >= 34){
      0021F6 74 DE            [12] 1048 	mov	a,#0x100 - 0x22
      0021F8 25 40            [12] 1049 	add	a,_play_macro_secondaryCount_65536_50
      0021FA 50 10            [24] 1050 	jnc	00140$
                                   1051 ;	../LED_Manager/led.c:201: secondaryCount = 34;
      0021FC 75 40 22         [24] 1052 	mov	_play_macro_secondaryCount_65536_50,#0x22
      0021FF 80 0B            [24] 1053 	sjmp	00140$
      002201                       1054 00136$:
                                   1055 ;	../LED_Manager/led.c:205: secondaryCount--;
      002201 15 40            [12] 1056 	dec	_play_macro_secondaryCount_65536_50
                                   1057 ;	../LED_Manager/led.c:207: if(secondaryCount > 36){
      002203 E5 40            [12] 1058 	mov	a,_play_macro_secondaryCount_65536_50
      002205 24 DB            [12] 1059 	add	a,#0xff - 0x24
      002207 50 03            [24] 1060 	jnc	00140$
                                   1061 ;	../LED_Manager/led.c:208: secondaryCount = 0;
      002209 75 40 00         [24] 1062 	mov	_play_macro_secondaryCount_65536_50,#0x00
      00220C                       1063 00140$:
                                   1064 ;	../LED_Manager/led.c:213: if(macro == OPTION_MACRO_WATER_DMX){ //water
      00220C EF               [12] 1065 	mov	a,r7
      00220D 60 0A            [24] 1066 	jz	00147$
                                   1067 ;	../LED_Manager/led.c:214: PWMDATA11H = secondaryCount;
      00220F 85 40 BD         [24] 1068 	mov	_PWMDATA11H,_play_macro_secondaryCount_65536_50
                                   1069 ;	../LED_Manager/led.c:215: PWMDATA17H = secondaryCount;
      002212 85 40 AD         [24] 1070 	mov	_PWMDATA17H,_play_macro_secondaryCount_65536_50
                                   1071 ;	../LED_Manager/led.c:216: PWMDATA14H = primaryCount;
      002215 85 3F B5         [24] 1072 	mov	_PWMDATA14H,_play_macro_primaryCount_65536_50
      002218 22               [24] 1073 	ret
      002219                       1074 00147$:
                                   1075 ;	../LED_Manager/led.c:217: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
      002219 74 04            [12] 1076 	mov	a,#0x04
      00221B B5 42 0A         [24] 1077 	cjne	a,_play_macro_PARM_2,00144$
                                   1078 ;	../LED_Manager/led.c:218: PWMDATA11H = secondaryCount;
      00221E 85 40 BD         [24] 1079 	mov	_PWMDATA11H,_play_macro_secondaryCount_65536_50
                                   1080 ;	../LED_Manager/led.c:219: PWMDATA17H = primaryCount;
      002221 85 3F AD         [24] 1081 	mov	_PWMDATA17H,_play_macro_primaryCount_65536_50
                                   1082 ;	../LED_Manager/led.c:220: PWMDATA14H = 0;
      002224 75 B5 00         [24] 1083 	mov	_PWMDATA14H,#0x00
      002227 22               [24] 1084 	ret
      002228                       1085 00144$:
                                   1086 ;	../LED_Manager/led.c:221: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
      002228 74 05            [12] 1087 	mov	a,#0x05
      00222A B5 42 02         [24] 1088 	cjne	a,_play_macro_PARM_2,00375$
      00222D 80 01            [24] 1089 	sjmp	00376$
      00222F                       1090 00375$:
      00222F 22               [24] 1091 	ret
      002230                       1092 00376$:
                                   1093 ;	../LED_Manager/led.c:222: PWMDATA11H = primaryCount;
      002230 85 3F BD         [24] 1094 	mov	_PWMDATA11H,_play_macro_primaryCount_65536_50
                                   1095 ;	../LED_Manager/led.c:223: PWMDATA17H = secondaryCount;
      002233 85 40 AD         [24] 1096 	mov	_PWMDATA17H,_play_macro_secondaryCount_65536_50
                                   1097 ;	../LED_Manager/led.c:224: PWMDATA14H = primaryCount;
      002236 85 3F B5         [24] 1098 	mov	_PWMDATA14H,_play_macro_primaryCount_65536_50
                                   1099 ;	../LED_Manager/led.c:228: break;
      002239 22               [24] 1100 	ret
                                   1101 ;	../LED_Manager/led.c:229: case OPTION_MACRO_STORM_DMX: //storm
      00223A                       1102 00151$:
                                   1103 ;	../LED_Manager/led.c:230: if(changed){
      00223A E5 4C            [12] 1104 	mov	a,_play_macro_changed_65536_50
      00223C 70 01            [24] 1105 	jnz	00377$
      00223E 22               [24] 1106 	ret
      00223F                       1107 00377$:
                                   1108 ;	../LED_Manager/led.c:231: if(!(rng % STORM_FREQ)){
      00223F 75 72 59         [24] 1109 	mov	__modulong_PARM_2,#0x59
      002242 E4               [12] 1110 	clr	a
      002243 F5 73            [12] 1111 	mov	(__modulong_PARM_2 + 1),a
      002245 F5 74            [12] 1112 	mov	(__modulong_PARM_2 + 2),a
      002247 F5 75            [12] 1113 	mov	(__modulong_PARM_2 + 3),a
      002249 85 48 82         [24] 1114 	mov	dpl,_play_macro_rng_65536_50
      00224C 85 49 83         [24] 1115 	mov	dph,(_play_macro_rng_65536_50 + 1)
      00224F 85 4A F0         [24] 1116 	mov	b,(_play_macro_rng_65536_50 + 2)
      002252 E5 4B            [12] 1117 	mov	a,(_play_macro_rng_65536_50 + 3)
      002254 12 2D 04         [24] 1118 	lcall	__modulong
      002257 AC 82            [24] 1119 	mov	r4,dpl
      002259 AD 83            [24] 1120 	mov	r5,dph
      00225B AE F0            [24] 1121 	mov	r6,b
      00225D FF               [12] 1122 	mov	r7,a
      00225E EC               [12] 1123 	mov	a,r4
      00225F 4D               [12] 1124 	orl	a,r5
      002260 4E               [12] 1125 	orl	a,r6
      002261 4F               [12] 1126 	orl	a,r7
      002262 70 05            [24] 1127 	jnz	00161$
                                   1128 ;	../LED_Manager/led.c:232: primaryCount = 255;
      002264 75 3F FF         [24] 1129 	mov	_play_macro_primaryCount_65536_50,#0xff
      002267 80 27            [24] 1130 	sjmp	00162$
      002269                       1131 00161$:
                                   1132 ;	../LED_Manager/led.c:234: if(primaryCount > 200){
      002269 E5 3F            [12] 1133 	mov	a,_play_macro_primaryCount_65536_50
      00226B 24 37            [12] 1134 	add	a,#0xff - 0xc8
      00226D 50 04            [24] 1135 	jnc	00158$
                                   1136 ;	../LED_Manager/led.c:235: primaryCount--;
      00226F 15 3F            [12] 1137 	dec	_play_macro_primaryCount_65536_50
      002271 80 1D            [24] 1138 	sjmp	00162$
      002273                       1139 00158$:
                                   1140 ;	../LED_Manager/led.c:236: } else if(primaryCount > 130){
      002273 E5 3F            [12] 1141 	mov	a,_play_macro_primaryCount_65536_50
      002275 24 7D            [12] 1142 	add	a,#0xff - 0x82
      002277 50 09            [24] 1143 	jnc	00155$
                                   1144 ;	../LED_Manager/led.c:237: primaryCount-=2;
      002279 E5 3F            [12] 1145 	mov	a,_play_macro_primaryCount_65536_50
      00227B FF               [12] 1146 	mov	r7,a
      00227C 24 FE            [12] 1147 	add	a,#0xfe
      00227E F5 3F            [12] 1148 	mov	_play_macro_primaryCount_65536_50,a
      002280 80 0E            [24] 1149 	sjmp	00162$
      002282                       1150 00155$:
                                   1151 ;	../LED_Manager/led.c:239: primaryCount-=3;
      002282 E5 3F            [12] 1152 	mov	a,_play_macro_primaryCount_65536_50
      002284 FF               [12] 1153 	mov	r7,a
      002285 24 FD            [12] 1154 	add	a,#0xfd
                                   1155 ;	../LED_Manager/led.c:240: if(primaryCount > 200){
      002287 F5 3F            [12] 1156 	mov  _play_macro_primaryCount_65536_50,a
      002289 24 37            [12] 1157 	add	a,#0xff - 0xc8
      00228B 50 03            [24] 1158 	jnc	00162$
                                   1159 ;	../LED_Manager/led.c:241: primaryCount = 0;
      00228D 75 3F 00         [24] 1160 	mov	_play_macro_primaryCount_65536_50,#0x00
      002290                       1161 00162$:
                                   1162 ;	../LED_Manager/led.c:246: PWMDATA11H = primaryCount;
      002290 85 3F BD         [24] 1163 	mov	_PWMDATA11H,_play_macro_primaryCount_65536_50
                                   1164 ;	../LED_Manager/led.c:247: PWMDATA17H = primaryCount;
      002293 85 3F AD         [24] 1165 	mov	_PWMDATA17H,_play_macro_primaryCount_65536_50
                                   1166 ;	../LED_Manager/led.c:248: PWMDATA14H = primaryCount;
      002296 85 3F B5         [24] 1167 	mov	_PWMDATA14H,_play_macro_primaryCount_65536_50
                                   1168 ;	../LED_Manager/led.c:250: break;
      002299 22               [24] 1169 	ret
                                   1170 ;	../LED_Manager/led.c:251: case OPTION_MACRO_WHITE: //w
      00229A                       1171 00165$:
                                   1172 ;	../LED_Manager/led.c:252: whiteout();
                                   1173 ;	../LED_Manager/led.c:253: break;
      00229A 02 23 BE         [24] 1174 	ljmp	_whiteout
                                   1175 ;	../LED_Manager/led.c:254: case 69:
      00229D                       1176 00166$:
                                   1177 ;	../LED_Manager/led.c:255: if(tock < 32){
      00229D 74 E0            [12] 1178 	mov	a,#0x100 - 0x20
      00229F 25 3E            [12] 1179 	add	a,_play_macro_tock_65536_50
      0022A1 40 40            [24] 1180 	jc	00183$
                                   1181 ;	../LED_Manager/led.c:257: if(rng & (SH_B >> tock)){
      0022A3 85 3E F0         [24] 1182 	mov	b,_play_macro_tock_65536_50
      0022A6 05 F0            [12] 1183 	inc	b
      0022A8 7C 00            [12] 1184 	mov	r4,#0x00
      0022AA 7D 00            [12] 1185 	mov	r5,#0x00
      0022AC 7E 00            [12] 1186 	mov	r6,#0x00
      0022AE 7F 80            [12] 1187 	mov	r7,#0x80
      0022B0 80 0D            [24] 1188 	sjmp	00384$
      0022B2                       1189 00383$:
      0022B2 C3               [12] 1190 	clr	c
      0022B3 EF               [12] 1191 	mov	a,r7
      0022B4 13               [12] 1192 	rrc	a
      0022B5 FF               [12] 1193 	mov	r7,a
      0022B6 EE               [12] 1194 	mov	a,r6
      0022B7 13               [12] 1195 	rrc	a
      0022B8 FE               [12] 1196 	mov	r6,a
      0022B9 ED               [12] 1197 	mov	a,r5
      0022BA 13               [12] 1198 	rrc	a
      0022BB FD               [12] 1199 	mov	r5,a
      0022BC EC               [12] 1200 	mov	a,r4
      0022BD 13               [12] 1201 	rrc	a
      0022BE FC               [12] 1202 	mov	r4,a
      0022BF                       1203 00384$:
      0022BF D5 F0 F0         [24] 1204 	djnz	b,00383$
      0022C2 EC               [12] 1205 	mov	a,r4
      0022C3 54 BA            [12] 1206 	anl	a,#0xba
      0022C5 70 0F            [24] 1207 	jnz	00385$
      0022C7 ED               [12] 1208 	mov	a,r5
      0022C8 54 B8            [12] 1209 	anl	a,#0xb8
      0022CA 70 0A            [24] 1210 	jnz	00385$
      0022CC EE               [12] 1211 	mov	a,r6
      0022CD 54 3B            [12] 1212 	anl	a,#0x3b
      0022CF 70 05            [24] 1213 	jnz	00385$
      0022D1 EF               [12] 1214 	mov	a,r7
      0022D2 54 EE            [12] 1215 	anl	a,#0xee
      0022D4 60 0A            [24] 1216 	jz	00168$
      0022D6                       1217 00385$:
                                   1218 ;	../LED_Manager/led.c:258: PWMDATA11H = 0; //Aqua - Adam
      0022D6 75 BD 00         [24] 1219 	mov	_PWMDATA11H,#0x00
                                   1220 ;	../LED_Manager/led.c:259: PWMDATA17H = 255;
      0022D9 75 AD FF         [24] 1221 	mov	_PWMDATA17H,#0xff
                                   1222 ;	../LED_Manager/led.c:260: PWMDATA14H = 255;
      0022DC 75 B5 FF         [24] 1223 	mov	_PWMDATA14H,#0xff
      0022DF 22               [24] 1224 	ret
      0022E0                       1225 00168$:
                                   1226 ;	../LED_Manager/led.c:262: blackout();
      0022E0 02 23 C8         [24] 1227 	ljmp	_blackout
      0022E3                       1228 00183$:
                                   1229 ;	../LED_Manager/led.c:264: } else if(tock < 64){
      0022E3 74 C0            [12] 1230 	mov	a,#0x100 - 0x40
      0022E5 25 3E            [12] 1231 	add	a,_play_macro_tock_65536_50
      0022E7 40 3D            [24] 1232 	jc	00180$
                                   1233 ;	../LED_Manager/led.c:266: if(rng & (SH_B >> (tock - 32))){
      0022E9 E5 3E            [12] 1234 	mov	a,_play_macro_tock_65536_50
      0022EB 24 E0            [12] 1235 	add	a,#0xe0
      0022ED FF               [12] 1236 	mov	r7,a
      0022EE 8F F0            [24] 1237 	mov	b,r7
      0022F0 05 F0            [12] 1238 	inc	b
      0022F2 7F 00            [12] 1239 	mov	r7,#0x00
      0022F4 7E 00            [12] 1240 	mov	r6,#0x00
      0022F6 7D 00            [12] 1241 	mov	r5,#0x00
      0022F8 7C 80            [12] 1242 	mov	r4,#0x80
      0022FA 80 0D            [24] 1243 	sjmp	00388$
      0022FC                       1244 00387$:
      0022FC C3               [12] 1245 	clr	c
      0022FD EC               [12] 1246 	mov	a,r4
      0022FE 13               [12] 1247 	rrc	a
      0022FF FC               [12] 1248 	mov	r4,a
      002300 ED               [12] 1249 	mov	a,r5
      002301 13               [12] 1250 	rrc	a
      002302 FD               [12] 1251 	mov	r5,a
      002303 EE               [12] 1252 	mov	a,r6
      002304 13               [12] 1253 	rrc	a
      002305 FE               [12] 1254 	mov	r6,a
      002306 EF               [12] 1255 	mov	a,r7
      002307 13               [12] 1256 	rrc	a
      002308 FF               [12] 1257 	mov	r7,a
      002309                       1258 00388$:
      002309 D5 F0 F0         [24] 1259 	djnz	b,00387$
      00230C EF               [12] 1260 	mov	a,r7
      00230D 54 38            [12] 1261 	anl	a,#0x38
      00230F 70 0F            [24] 1262 	jnz	00389$
      002311 EE               [12] 1263 	mov	a,r6
      002312 54 BA            [12] 1264 	anl	a,#0xba
      002314 70 0A            [24] 1265 	jnz	00389$
      002316 ED               [12] 1266 	mov	a,r5
      002317 54 B8            [12] 1267 	anl	a,#0xb8
      002319 70 05            [24] 1268 	jnz	00389$
      00231B EC               [12] 1269 	mov	a,r4
      00231C 54 28            [12] 1270 	anl	a,#0x28
      00231E 60 03            [24] 1271 	jz	00171$
      002320                       1272 00389$:
                                   1273 ;	../LED_Manager/led.c:267: whiteout(); //White - Worth
      002320 02 23 BE         [24] 1274 	ljmp	_whiteout
      002323                       1275 00171$:
                                   1276 ;	../LED_Manager/led.c:269: blackout();
      002323 02 23 C8         [24] 1277 	ljmp	_blackout
      002326                       1278 00180$:
                                   1279 ;	../LED_Manager/led.c:271: } else if(tock < 83){
      002326 74 AD            [12] 1280 	mov	a,#0x100 - 0x53
      002328 25 3E            [12] 1281 	add	a,_play_macro_tock_65536_50
      00232A 40 33            [24] 1282 	jc	00177$
                                   1283 ;	../LED_Manager/led.c:273: if(rng & (SH_B >> (tock - 64))){
      00232C E5 3E            [12] 1284 	mov	a,_play_macro_tock_65536_50
      00232E 24 C0            [12] 1285 	add	a,#0xc0
      002330 FF               [12] 1286 	mov	r7,a
      002331 8F F0            [24] 1287 	mov	b,r7
      002333 05 F0            [12] 1288 	inc	b
      002335 7F 00            [12] 1289 	mov	r7,#0x00
      002337 7E 00            [12] 1290 	mov	r6,#0x00
      002339 7D 00            [12] 1291 	mov	r5,#0x00
      00233B 7C 80            [12] 1292 	mov	r4,#0x80
      00233D 80 0D            [24] 1293 	sjmp	00392$
      00233F                       1294 00391$:
      00233F C3               [12] 1295 	clr	c
      002340 EC               [12] 1296 	mov	a,r4
      002341 13               [12] 1297 	rrc	a
      002342 FC               [12] 1298 	mov	r4,a
      002343 ED               [12] 1299 	mov	a,r5
      002344 13               [12] 1300 	rrc	a
      002345 FD               [12] 1301 	mov	r5,a
      002346 EE               [12] 1302 	mov	a,r6
      002347 13               [12] 1303 	rrc	a
      002348 FE               [12] 1304 	mov	r6,a
      002349 EF               [12] 1305 	mov	a,r7
      00234A 13               [12] 1306 	rrc	a
      00234B FF               [12] 1307 	mov	r7,a
      00234C                       1308 00392$:
      00234C D5 F0 F0         [24] 1309 	djnz	b,00391$
      00234F ED               [12] 1310 	mov	a,r5
      002350 54 B8            [12] 1311 	anl	a,#0xb8
      002352 70 05            [24] 1312 	jnz	00393$
      002354 EC               [12] 1313 	mov	a,r4
      002355 54 EB            [12] 1314 	anl	a,#0xeb
      002357 60 03            [24] 1315 	jz	00174$
      002359                       1316 00393$:
                                   1317 ;	../LED_Manager/led.c:274: whiteout();
      002359 02 23 BE         [24] 1318 	ljmp	_whiteout
      00235C                       1319 00174$:
                                   1320 ;	../LED_Manager/led.c:276: blackout();
      00235C 02 23 C8         [24] 1321 	ljmp	_blackout
      00235F                       1322 00177$:
                                   1323 ;	../LED_Manager/led.c:279: tock = 0;
      00235F 75 3E 00         [24] 1324 	mov	_play_macro_tock_65536_50,#0x00
                                   1325 ;	../LED_Manager/led.c:281: break;
                                   1326 ;	../LED_Manager/led.c:282: default:
      002362 22               [24] 1327 	ret
      002363                       1328 00185$:
                                   1329 ;	../LED_Manager/led.c:283: blackout();
                                   1330 ;	../LED_Manager/led.c:284: }
                                   1331 ;	../LED_Manager/led.c:286: }
      002363 02 23 C8         [24] 1332 	ljmp	_blackout
                                   1333 ;------------------------------------------------------------
                                   1334 ;Allocation info for local variables in function 'color_wheel'
                                   1335 ;------------------------------------------------------------
                                   1336 ;color                     Allocated to registers r6 
                                   1337 ;------------------------------------------------------------
                                   1338 ;	../LED_Manager/led.c:288: void color_wheel(uint8_t color){
                                   1339 ;	-----------------------------------------
                                   1340 ;	 function color_wheel
                                   1341 ;	-----------------------------------------
      002366                       1342 _color_wheel:
      002366 AF 82            [24] 1343 	mov	r7,dpl
                                   1344 ;	../LED_Manager/led.c:290: if(color < 85){
      002368 BF 55 00         [24] 1345 	cjne	r7,#0x55,00119$
      00236B                       1346 00119$:
      00236B 50 18            [24] 1347 	jnc	00105$
                                   1348 ;	../LED_Manager/led.c:291: PWMDATA11H = color * 3;
      00236D EF               [12] 1349 	mov	a,r7
      00236E 75 F0 03         [24] 1350 	mov	b,#0x03
      002371 A4               [48] 1351 	mul	ab
      002372 F5 BD            [12] 1352 	mov	_PWMDATA11H,a
                                   1353 ;	../LED_Manager/led.c:292: PWMDATA17H = 255 - color * 3;
      002374 8F 06            [24] 1354 	mov	ar6,r7
      002376 EE               [12] 1355 	mov	a,r6
      002377 75 F0 03         [24] 1356 	mov	b,#0x03
      00237A A4               [48] 1357 	mul	ab
      00237B D3               [12] 1358 	setb	c
      00237C 94 FF            [12] 1359 	subb	a,#0xff
      00237E F4               [12] 1360 	cpl	a
      00237F F5 AD            [12] 1361 	mov	_PWMDATA17H,a
                                   1362 ;	../LED_Manager/led.c:293: PWMDATA14H = 0; 
      002381 75 B5 00         [24] 1363 	mov	_PWMDATA14H,#0x00
      002384 22               [24] 1364 	ret
      002385                       1365 00105$:
                                   1366 ;	../LED_Manager/led.c:294: } else if(color < 170){
      002385 BF AA 00         [24] 1367 	cjne	r7,#0xaa,00121$
      002388                       1368 00121$:
      002388 50 1B            [24] 1369 	jnc	00102$
                                   1370 ;	../LED_Manager/led.c:295: color -= 85;
      00238A 8F 06            [24] 1371 	mov	ar6,r7
      00238C EE               [12] 1372 	mov	a,r6
      00238D 24 AB            [12] 1373 	add	a,#0xab
                                   1374 ;	../LED_Manager/led.c:296: PWMDATA11H = 255 - color * 3;
      00238F FE               [12] 1375 	mov	r6,a
      002390 75 F0 03         [24] 1376 	mov	b,#0x03
      002393 A4               [48] 1377 	mul	ab
      002394 D3               [12] 1378 	setb	c
      002395 94 FF            [12] 1379 	subb	a,#0xff
      002397 F4               [12] 1380 	cpl	a
      002398 F5 BD            [12] 1381 	mov	_PWMDATA11H,a
                                   1382 ;	../LED_Manager/led.c:297: PWMDATA17H = 0;
      00239A 75 AD 00         [24] 1383 	mov	_PWMDATA17H,#0x00
                                   1384 ;	../LED_Manager/led.c:298: PWMDATA14H = color * 3; 
      00239D EE               [12] 1385 	mov	a,r6
      00239E 75 F0 03         [24] 1386 	mov	b,#0x03
      0023A1 A4               [48] 1387 	mul	ab
      0023A2 F5 B5            [12] 1388 	mov	_PWMDATA14H,a
      0023A4 22               [24] 1389 	ret
      0023A5                       1390 00102$:
                                   1391 ;	../LED_Manager/led.c:300: color -= 170;
      0023A5 EF               [12] 1392 	mov	a,r7
      0023A6 24 56            [12] 1393 	add	a,#0x56
                                   1394 ;	../LED_Manager/led.c:301: PWMDATA11H = 0;
                                   1395 ;	../LED_Manager/led.c:302: PWMDATA17H = color * 3;
      0023A8 FF               [12] 1396 	mov	r7,a
      0023A9 75 BD 00         [24] 1397 	mov	_PWMDATA11H,#0x00
      0023AC 75 F0 03         [24] 1398 	mov	b,#0x03
      0023AF A4               [48] 1399 	mul	ab
      0023B0 F5 AD            [12] 1400 	mov	_PWMDATA17H,a
                                   1401 ;	../LED_Manager/led.c:303: PWMDATA14H = 255 - color * 3;     
      0023B2 EF               [12] 1402 	mov	a,r7
      0023B3 75 F0 03         [24] 1403 	mov	b,#0x03
      0023B6 A4               [48] 1404 	mul	ab
      0023B7 D3               [12] 1405 	setb	c
      0023B8 94 FF            [12] 1406 	subb	a,#0xff
      0023BA F4               [12] 1407 	cpl	a
      0023BB F5 B5            [12] 1408 	mov	_PWMDATA14H,a
                                   1409 ;	../LED_Manager/led.c:305: }
      0023BD 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'whiteout'
                                   1413 ;------------------------------------------------------------
                                   1414 ;	../LED_Manager/led.c:307: void whiteout(){
                                   1415 ;	-----------------------------------------
                                   1416 ;	 function whiteout
                                   1417 ;	-----------------------------------------
      0023BE                       1418 _whiteout:
                                   1419 ;	../LED_Manager/led.c:308: PWMDATA11H = 255;
      0023BE 75 BD FF         [24] 1420 	mov	_PWMDATA11H,#0xff
                                   1421 ;	../LED_Manager/led.c:309: PWMDATA17H = 255;
      0023C1 75 AD FF         [24] 1422 	mov	_PWMDATA17H,#0xff
                                   1423 ;	../LED_Manager/led.c:310: PWMDATA14H = 255;
      0023C4 75 B5 FF         [24] 1424 	mov	_PWMDATA14H,#0xff
                                   1425 ;	../LED_Manager/led.c:311: }
      0023C7 22               [24] 1426 	ret
                                   1427 ;------------------------------------------------------------
                                   1428 ;Allocation info for local variables in function 'blackout'
                                   1429 ;------------------------------------------------------------
                                   1430 ;	../LED_Manager/led.c:313: void blackout(){
                                   1431 ;	-----------------------------------------
                                   1432 ;	 function blackout
                                   1433 ;	-----------------------------------------
      0023C8                       1434 _blackout:
                                   1435 ;	../LED_Manager/led.c:314: PWMDATA11H = 0;
      0023C8 75 BD 00         [24] 1436 	mov	_PWMDATA11H,#0x00
                                   1437 ;	../LED_Manager/led.c:315: PWMDATA17H = 0;
      0023CB 75 AD 00         [24] 1438 	mov	_PWMDATA17H,#0x00
                                   1439 ;	../LED_Manager/led.c:316: PWMDATA14H = 0;
      0023CE 75 B5 00         [24] 1440 	mov	_PWMDATA14H,#0x00
                                   1441 ;	../LED_Manager/led.c:317: }
      0023D1 22               [24] 1442 	ret
                                   1443 ;------------------------------------------------------------
                                   1444 ;Allocation info for local variables in function 'rngU32'
                                   1445 ;------------------------------------------------------------
                                   1446 ;past                      Allocated with name '_rngU32_past_65536_101'
                                   1447 ;present                   Allocated with name '_rngU32_present_65536_101'
                                   1448 ;------------------------------------------------------------
                                   1449 ;	../LED_Manager/led.c:320: uint32_t rngU32(){
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function rngU32
                                   1452 ;	-----------------------------------------
      0023D2                       1453 _rngU32:
                                   1454 ;	../LED_Manager/led.c:324: present = past + present;
      0023D2 E5 51            [12] 1455 	mov	a,_rngU32_present_65536_101
      0023D4 25 4D            [12] 1456 	add	a,_rngU32_past_65536_101
      0023D6 F5 51            [12] 1457 	mov	_rngU32_present_65536_101,a
      0023D8 E5 52            [12] 1458 	mov	a,(_rngU32_present_65536_101 + 1)
      0023DA 35 4E            [12] 1459 	addc	a,(_rngU32_past_65536_101 + 1)
      0023DC F5 52            [12] 1460 	mov	(_rngU32_present_65536_101 + 1),a
      0023DE E5 53            [12] 1461 	mov	a,(_rngU32_present_65536_101 + 2)
      0023E0 35 4F            [12] 1462 	addc	a,(_rngU32_past_65536_101 + 2)
      0023E2 F5 53            [12] 1463 	mov	(_rngU32_present_65536_101 + 2),a
      0023E4 E5 54            [12] 1464 	mov	a,(_rngU32_present_65536_101 + 3)
      0023E6 35 50            [12] 1465 	addc	a,(_rngU32_past_65536_101 + 3)
      0023E8 F5 54            [12] 1466 	mov	(_rngU32_present_65536_101 + 3),a
                                   1467 ;	../LED_Manager/led.c:325: past = present - past;
      0023EA E5 51            [12] 1468 	mov	a,_rngU32_present_65536_101
      0023EC C3               [12] 1469 	clr	c
      0023ED 95 4D            [12] 1470 	subb	a,_rngU32_past_65536_101
      0023EF F5 4D            [12] 1471 	mov	_rngU32_past_65536_101,a
      0023F1 E5 52            [12] 1472 	mov	a,(_rngU32_present_65536_101 + 1)
      0023F3 95 4E            [12] 1473 	subb	a,(_rngU32_past_65536_101 + 1)
      0023F5 F5 4E            [12] 1474 	mov	(_rngU32_past_65536_101 + 1),a
      0023F7 E5 53            [12] 1475 	mov	a,(_rngU32_present_65536_101 + 2)
      0023F9 95 4F            [12] 1476 	subb	a,(_rngU32_past_65536_101 + 2)
      0023FB F5 4F            [12] 1477 	mov	(_rngU32_past_65536_101 + 2),a
      0023FD E5 54            [12] 1478 	mov	a,(_rngU32_present_65536_101 + 3)
      0023FF 95 50            [12] 1479 	subb	a,(_rngU32_past_65536_101 + 3)
      002401 F5 50            [12] 1480 	mov	(_rngU32_past_65536_101 + 3),a
                                   1481 ;	../LED_Manager/led.c:327: return present;
      002403 85 51 82         [24] 1482 	mov	dpl,_rngU32_present_65536_101
      002406 85 52 83         [24] 1483 	mov	dph,(_rngU32_present_65536_101 + 1)
      002409 85 53 F0         [24] 1484 	mov	b,(_rngU32_present_65536_101 + 2)
      00240C E5 54            [12] 1485 	mov	a,(_rngU32_present_65536_101 + 3)
                                   1486 ;	../LED_Manager/led.c:328: }
      00240E 22               [24] 1487 	ret
                                   1488 	.area CSEG    (CODE)
                                   1489 	.area CONST   (CODE)
                                   1490 	.area XINIT   (CODE)
                                   1491 	.area CABS    (ABS,CODE)
