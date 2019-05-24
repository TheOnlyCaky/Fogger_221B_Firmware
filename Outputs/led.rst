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
                                     97 	.globl _tick_led
                                     98 	.globl _dmx_to_macro
                                     99 	.globl _play_macro
                                    100 	.globl _color_wheel
                                    101 	.globl _whiteout
                                    102 	.globl _blackout
                                    103 	.globl _rngU32
                                    104 	.globl _set_leds
                                    105 ;--------------------------------------------------------
                                    106 ; special function registers
                                    107 ;--------------------------------------------------------
                                    108 	.area RSEG    (ABS,DATA)
      000000                        109 	.org 0x0000
                           0000BF   110 _CHIPCON	=	0x00bf
                           0000B7   111 _PCLKSEL	=	0x00b7
                           000080   112 _P0	=	0x0080
                           000090   113 _P1	=	0x0090
                           0000A0   114 _P2	=	0x00a0
                           0000B0   115 _P3	=	0x00b0
                           0000A8   116 _IE	=	0x00a8
                           0000E8   117 _EIE	=	0x00e8
                           000091   118 _EXIF	=	0x0091
                           0000DA   119 _ADCSEL	=	0x00da
                           0000DB   120 _ADCVAL1	=	0x00db
                           0000DC   121 _ADCVAL2	=	0x00dc
                           0000D9   122 _P1_OPT	=	0x00d9
                           000098   123 _SCON	=	0x0098
                           0000CA   124 _RCAP2L	=	0x00ca
                           0000CB   125 _RCAP2H	=	0x00cb
                           0000C8   126 _T2CON	=	0x00c8
                           00009B   127 _TH3	=	0x009b
                           00009A   128 _TL3	=	0x009a
                           000099   129 _SBUF	=	0x0099
                           0000D3   130 _PWM_EA1	=	0x00d3
                           0000D4   131 _PWM_EA2	=	0x00d4
                           0000BD   132 _PWMDATA11H	=	0x00bd
                           0000BE   133 _PWMDATA11L	=	0x00be
                           0000B5   134 _PWMDATA14H	=	0x00b5
                           0000B6   135 _PWMDATA14L	=	0x00b6
                           0000AD   136 _PWMDATA17H	=	0x00ad
                           0000AE   137 _PWMDATA17L	=	0x00ae
                           000088   138 _TCON	=	0x0088
                           000089   139 _TMOD	=	0x0089
                           00008E   140 _CKCON	=	0x008e
                           00008A   141 _TL0	=	0x008a
                           00008C   142 _TH0	=	0x008c
                           0000E4   143 _IAPEN	=	0x00e4
                           0000E5   144 _IAP_ADRL	=	0x00e5
                           0000E6   145 _IAP_ADRH	=	0x00e6
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           0000A0   167 _P2_0	=	0x00a0
                           0000A1   168 _P2_1	=	0x00a1
                           0000A2   169 _P2_2	=	0x00a2
                           0000A3   170 _P2_3	=	0x00a3
                           0000A4   171 _P2_4	=	0x00a4
                           0000A5   172 _P2_5	=	0x00a5
                           0000A6   173 _P2_6	=	0x00a6
                           0000A7   174 _P2_7	=	0x00a7
                           0000B0   175 _P3_0	=	0x00b0
                           0000B1   176 _P3_1	=	0x00b1
                           0000B2   177 _P3_2	=	0x00b2
                           0000B3   178 _P3_3	=	0x00b3
                           0000B4   179 _P3_4	=	0x00b4
                           0000B5   180 _P3_5	=	0x00b5
                           0000B6   181 _P3_6	=	0x00b6
                           0000B7   182 _P3_7	=	0x00b7
                           0000AF   183 _EA	=	0x00af
                           0000A9   184 _ET0	=	0x00a9
                           0000AC   185 _ES	=	0x00ac
                           000098   186 _RI	=	0x0098
                           000093   187 _SCK	=	0x0093
                           000095   188 _SER	=	0x0095
                           000092   189 _RCK	=	0x0092
                           00009F   190 _SM0	=	0x009f
                           00009E   191 _SM1	=	0x009e
                           00009D   192 _SM2	=	0x009d
                           00009C   193 _REN	=	0x009c
                           0000CD   194 _RCLK	=	0x00cd
                           0000CC   195 _TCLK	=	0x00cc
                           0000CB   196 _EXEN2	=	0x00cb
                           0000CA   197 _TR2	=	0x00ca
                           0000C9   198 _CT2	=	0x00c9
                           0000C8   199 _CPRL2	=	0x00c8
                                    200 ;--------------------------------------------------------
                                    201 ; overlayable register banks
                                    202 ;--------------------------------------------------------
                                    203 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        204 	.ds 8
                                    205 ;--------------------------------------------------------
                                    206 ; internal ram data
                                    207 ;--------------------------------------------------------
                                    208 	.area DSEG    (DATA)
      00002F                        209 _tick_led_on_65536_17:
      00002F                        210 	.ds 1
      000030                        211 _play_macro_tock_65536_55:
      000030                        212 	.ds 1
      000031                        213 _play_macro_primaryCount_65536_55:
      000031                        214 	.ds 1
      000032                        215 _play_macro_secondaryCount_65536_55:
      000032                        216 	.ds 1
      000033                        217 _play_macro_direction_65536_55:
      000033                        218 	.ds 1
      000034                        219 _rngU32_past_65536_106:
      000034                        220 	.ds 4
      000038                        221 _rngU32_present_65536_106:
      000038                        222 	.ds 4
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable items in internal ram 
                                    225 ;--------------------------------------------------------
                                    226 ;--------------------------------------------------------
                                    227 ; indirectly addressable internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area ISEG    (DATA)
                                    230 ;--------------------------------------------------------
                                    231 ; absolute internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area IABS    (ABS,DATA)
                                    234 	.area IABS    (ABS,DATA)
                                    235 ;--------------------------------------------------------
                                    236 ; bit data
                                    237 ;--------------------------------------------------------
                                    238 	.area BSEG    (BIT)
                                    239 ;--------------------------------------------------------
                                    240 ; paged external ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area PSEG    (PAG,XDATA)
                                    243 ;--------------------------------------------------------
                                    244 ; external ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area XSEG    (XDATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area XABS    (ABS,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; external initialized ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XISEG   (XDATA)
                                    255 	.area HOME    (CODE)
                                    256 	.area GSINIT0 (CODE)
                                    257 	.area GSINIT1 (CODE)
                                    258 	.area GSINIT2 (CODE)
                                    259 	.area GSINIT3 (CODE)
                                    260 	.area GSINIT4 (CODE)
                                    261 	.area GSINIT5 (CODE)
                                    262 	.area GSINIT  (CODE)
                                    263 	.area GSFINAL (CODE)
                                    264 	.area CSEG    (CODE)
                                    265 ;--------------------------------------------------------
                                    266 ; global & static initialisations
                                    267 ;--------------------------------------------------------
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT  (CODE)
                                    270 	.area GSFINAL (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 ;------------------------------------------------------------
                                    273 ;Allocation info for local variables in function 'tick_led'
                                    274 ;------------------------------------------------------------
                                    275 ;tick                      Allocated to stack - _bp +1
                                    276 ;dimmer                    Allocated to registers r6 
                                    277 ;value                     Allocated to registers r7 
                                    278 ;strobe                    Allocated to registers r7 
                                    279 ;on                        Allocated with name '_tick_led_on_65536_17'
                                    280 ;------------------------------------------------------------
                                    281 ;	../LED_Manager/led.c:22: static uint8_t on = 0;
      0000CE 75 2F 00         [24]  282 	mov	_tick_led_on_65536_17,#0x00
                                    283 ;------------------------------------------------------------
                                    284 ;Allocation info for local variables in function 'play_macro'
                                    285 ;------------------------------------------------------------
                                    286 ;macro                     Allocated to stack - _bp -3
                                    287 ;macro_speed               Allocated to stack - _bp -4
                                    288 ;tick                      Allocated to stack - _bp +1
                                    289 ;rng                       Allocated to stack - _bp +5
                                    290 ;changed                   Allocated to registers r3 
                                    291 ;tock                      Allocated with name '_play_macro_tock_65536_55'
                                    292 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
                                    293 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
                                    294 ;direction                 Allocated with name '_play_macro_direction_65536_55'
                                    295 ;------------------------------------------------------------
                                    296 ;	../LED_Manager/led.c:136: static uint8_t tock = 0;
      0000D1 75 30 00         [24]  297 	mov	_play_macro_tock_65536_55,#0x00
                                    298 ;	../LED_Manager/led.c:137: static uint8_t primaryCount = 0;
      0000D4 75 31 00         [24]  299 	mov	_play_macro_primaryCount_65536_55,#0x00
                                    300 ;	../LED_Manager/led.c:138: static uint8_t secondaryCount = 0;
      0000D7 75 32 00         [24]  301 	mov	_play_macro_secondaryCount_65536_55,#0x00
                                    302 ;	../LED_Manager/led.c:139: static uint8_t direction = 0;
      0000DA 75 33 00         [24]  303 	mov	_play_macro_direction_65536_55,#0x00
                                    304 ;------------------------------------------------------------
                                    305 ;Allocation info for local variables in function 'rngU32'
                                    306 ;------------------------------------------------------------
                                    307 ;past                      Allocated with name '_rngU32_past_65536_106'
                                    308 ;present                   Allocated with name '_rngU32_present_65536_106'
                                    309 ;------------------------------------------------------------
                                    310 ;	../LED_Manager/led.c:313: static uint32_t past = 1;
      0000DD 75 34 01         [24]  311 	mov	_rngU32_past_65536_106,#0x01
      0000E0 E4               [12]  312 	clr	a
      0000E1 F5 35            [12]  313 	mov	(_rngU32_past_65536_106 + 1),a
      0000E3 F5 36            [12]  314 	mov	(_rngU32_past_65536_106 + 2),a
      0000E5 F5 37            [12]  315 	mov	(_rngU32_past_65536_106 + 3),a
                                    316 ;	../LED_Manager/led.c:314: static uint32_t present = 1;
      0000E7 75 38 01         [24]  317 	mov	_rngU32_present_65536_106,#0x01
      0000EA F5 39            [12]  318 	mov	(_rngU32_present_65536_106 + 1),a
      0000EC F5 3A            [12]  319 	mov	(_rngU32_present_65536_106 + 2),a
      0000EE F5 3B            [12]  320 	mov	(_rngU32_present_65536_106 + 3),a
                                    321 ;--------------------------------------------------------
                                    322 ; Home
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area HOME    (CODE)
                                    326 ;--------------------------------------------------------
                                    327 ; code
                                    328 ;--------------------------------------------------------
                                    329 	.area CSEG    (CODE)
                                    330 ;------------------------------------------------------------
                                    331 ;Allocation info for local variables in function 'tick_led'
                                    332 ;------------------------------------------------------------
                                    333 ;tick                      Allocated to stack - _bp +1
                                    334 ;dimmer                    Allocated to registers r6 
                                    335 ;value                     Allocated to registers r7 
                                    336 ;strobe                    Allocated to registers r7 
                                    337 ;on                        Allocated with name '_tick_led_on_65536_17'
                                    338 ;------------------------------------------------------------
                                    339 ;	../LED_Manager/led.c:21: void tick_led(uint32_t tick){
                                    340 ;	-----------------------------------------
                                    341 ;	 function tick_led
                                    342 ;	-----------------------------------------
      002348                        343 _tick_led:
                           000007   344 	ar7 = 0x07
                           000006   345 	ar6 = 0x06
                           000005   346 	ar5 = 0x05
                           000004   347 	ar4 = 0x04
                           000003   348 	ar3 = 0x03
                           000002   349 	ar2 = 0x02
                           000001   350 	ar1 = 0x01
                           000000   351 	ar0 = 0x00
      002348 C0 1A            [24]  352 	push	_bp
      00234A 85 81 1A         [24]  353 	mov	_bp,sp
      00234D C0 82            [24]  354 	push	dpl
      00234F C0 83            [24]  355 	push	dph
      002351 C0 F0            [24]  356 	push	b
      002353 C0 E0            [24]  357 	push	acc
                                    358 ;	../LED_Manager/led.c:27: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002355 75 82 10         [24]  359 	mov	dpl,#0x10
      002358 12 2F 00         [24]  360 	lcall	_get_runtime_data
      00235B E5 82            [12]  361 	mov	a,dpl
      00235D 60 03            [24]  362 	jz	00227$
      00235F 02 24 B9         [24]  363 	ljmp	00143$
      002362                        364 00227$:
                                    365 ;	../LED_Manager/led.c:28: switch(get_runtime_data(MODE_INDEX)){
      002362 75 82 0E         [24]  366 	mov	dpl,#0x0e
      002365 12 2F 00         [24]  367 	lcall	_get_runtime_data
      002368 AB 82            [24]  368 	mov	r3,dpl
      00236A BB 00 02         [24]  369 	cjne	r3,#0x00,00228$
      00236D 80 09            [24]  370 	sjmp	00101$
      00236F                        371 00228$:
      00236F BB 01 03         [24]  372 	cjne	r3,#0x01,00229$
      002372 02 24 48         [24]  373 	ljmp	00119$
      002375                        374 00229$:
      002375 02 24 B3         [24]  375 	ljmp	00129$
                                    376 ;	../LED_Manager/led.c:29: case OPTION_DMX_MODE_11:
      002378                        377 00101$:
                                    378 ;	../LED_Manager/led.c:30: value = get_dmx_value(DMX_M11_MACRO_INDEX);
      002378 AB 29            [24]  379 	mov	r3,(_DMX + 0x0008)
                                    380 ;	../LED_Manager/led.c:32: if(value >= DMX_MACRO_NONE){
      00237A BB 14 00         [24]  381 	cjne	r3,#0x14,00230$
      00237D                        382 00230$:
      00237D 40 5E            [24]  383 	jc	00117$
                                    384 ;	../LED_Manager/led.c:33: if(value < DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
      00237F BB 94 00         [24]  385 	cjne	r3,#0x94,00232$
      002382                        386 00232$:
      002382 50 0F            [24]  387 	jnc	00106$
                                    388 ;	../LED_Manager/led.c:34: color_wheel((value - DMX_MACRO_NONE) << 1);
      002384 8B 02            [24]  389 	mov	ar2,r3
      002386 EA               [12]  390 	mov	a,r2
      002387 24 EC            [12]  391 	add	a,#0xec
      002389 25 E0            [12]  392 	add	a,acc
      00238B F5 82            [12]  393 	mov	dpl,a
      00238D 12 29 AA         [24]  394 	lcall	_color_wheel
      002390 02 25 6E         [24]  395 	ljmp	00145$
      002393                        396 00106$:
                                    397 ;	../LED_Manager/led.c:36: dimmer = get_dmx_value(DMX_M11_MACRO_SPEED_INDEX);
                                    398 ;	../LED_Manager/led.c:38: if(dimmer > 10){
      002393 E5 2A            [12]  399 	mov	a,(_DMX + 0x0009)
      002395 FA               [12]  400 	mov	r2,a
      002396 24 F5            [12]  401 	add	a,#0xff - 0x0a
      002398 50 26            [24]  402 	jnc	00103$
                                    403 ;	../LED_Manager/led.c:39: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      00239A EA               [12]  404 	mov	a,r2
      00239B 24 FB            [12]  405 	add	a,#0xfb
      00239D FA               [12]  406 	mov	r2,a
      00239E 8B 82            [24]  407 	mov	dpl,r3
      0023A0 C0 02            [24]  408 	push	ar2
      0023A2 12 25 74         [24]  409 	lcall	_dmx_to_macro
      0023A5 AF 82            [24]  410 	mov	r7,dpl
      0023A7 C0 07            [24]  411 	push	ar7
      0023A9 A8 1A            [24]  412 	mov	r0,_bp
      0023AB 08               [12]  413 	inc	r0
      0023AC 86 82            [24]  414 	mov	dpl,@r0
      0023AE 08               [12]  415 	inc	r0
      0023AF 86 83            [24]  416 	mov	dph,@r0
      0023B1 08               [12]  417 	inc	r0
      0023B2 86 F0            [24]  418 	mov	b,@r0
      0023B4 08               [12]  419 	inc	r0
      0023B5 E6               [12]  420 	mov	a,@r0
      0023B6 12 25 B9         [24]  421 	lcall	_play_macro
      0023B9 15 81            [12]  422 	dec	sp
      0023BB 15 81            [12]  423 	dec	sp
      0023BD 02 25 6E         [24]  424 	ljmp	00145$
      0023C0                        425 00103$:
                                    426 ;	../LED_Manager/led.c:41: play_macro(1, dmx_to_macro(value), 0xFF);
      0023C0 8B 82            [24]  427 	mov	dpl,r3
      0023C2 12 25 74         [24]  428 	lcall	_dmx_to_macro
      0023C5 AF 82            [24]  429 	mov	r7,dpl
      0023C7 74 FF            [12]  430 	mov	a,#0xff
      0023C9 C0 E0            [24]  431 	push	acc
      0023CB C0 07            [24]  432 	push	ar7
      0023CD 90 00 01         [24]  433 	mov	dptr,#(0x01&0x00ff)
      0023D0 E4               [12]  434 	clr	a
      0023D1 F5 F0            [12]  435 	mov	b,a
      0023D3 12 25 B9         [24]  436 	lcall	_play_macro
      0023D6 15 81            [12]  437 	dec	sp
      0023D8 15 81            [12]  438 	dec	sp
      0023DA 02 25 6E         [24]  439 	ljmp	00145$
      0023DD                        440 00117$:
                                    441 ;	../LED_Manager/led.c:46: strobe = get_dmx_value(DMX_M11_STROBE_INDEX);
                                    442 ;	../LED_Manager/led.c:48: if(strobe){
      0023DD E5 28            [12]  443 	mov	a,(_DMX + 0x0007)
      0023DF FF               [12]  444 	mov	r7,a
      0023E0 60 48            [24]  445 	jz	00111$
                                    446 ;	../LED_Manager/led.c:49: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      0023E2 7E 00            [12]  447 	mov	r6,#0x00
      0023E4 EF               [12]  448 	mov	a,r7
      0023E5 2F               [12]  449 	add	a,r7
      0023E6 FF               [12]  450 	mov	r7,a
      0023E7 EE               [12]  451 	mov	a,r6
      0023E8 33               [12]  452 	rlc	a
      0023E9 FE               [12]  453 	mov	r6,a
      0023EA 74 1C            [12]  454 	mov	a,#0x1c
      0023EC C3               [12]  455 	clr	c
      0023ED 9F               [12]  456 	subb	a,r7
      0023EE FF               [12]  457 	mov	r7,a
      0023EF 74 02            [12]  458 	mov	a,#0x02
      0023F1 9E               [12]  459 	subb	a,r6
      0023F2 FE               [12]  460 	mov	r6,a
      0023F3 33               [12]  461 	rlc	a
      0023F4 95 E0            [12]  462 	subb	a,acc
      0023F6 FD               [12]  463 	mov	r5,a
      0023F7 FC               [12]  464 	mov	r4,a
      0023F8 C0 07            [24]  465 	push	ar7
      0023FA C0 06            [24]  466 	push	ar6
      0023FC C0 05            [24]  467 	push	ar5
      0023FE C0 04            [24]  468 	push	ar4
      002400 A8 1A            [24]  469 	mov	r0,_bp
      002402 08               [12]  470 	inc	r0
      002403 86 82            [24]  471 	mov	dpl,@r0
      002405 08               [12]  472 	inc	r0
      002406 86 83            [24]  473 	mov	dph,@r0
      002408 08               [12]  474 	inc	r0
      002409 86 F0            [24]  475 	mov	b,@r0
      00240B 08               [12]  476 	inc	r0
      00240C E6               [12]  477 	mov	a,@r0
      00240D 12 35 BA         [24]  478 	lcall	__modulong
      002410 AC 82            [24]  479 	mov	r4,dpl
      002412 AD 83            [24]  480 	mov	r5,dph
      002414 AE F0            [24]  481 	mov	r6,b
      002416 FF               [12]  482 	mov	r7,a
      002417 E5 81            [12]  483 	mov	a,sp
      002419 24 FC            [12]  484 	add	a,#0xfc
      00241B F5 81            [12]  485 	mov	sp,a
      00241D EC               [12]  486 	mov	a,r4
      00241E 4D               [12]  487 	orl	a,r5
      00241F 4E               [12]  488 	orl	a,r6
      002420 4F               [12]  489 	orl	a,r7
      002421 70 0A            [24]  490 	jnz	00112$
                                    491 ;	../LED_Manager/led.c:50: on = ~on;
      002423 E5 2F            [12]  492 	mov	a,_tick_led_on_65536_17
      002425 F4               [12]  493 	cpl	a
      002426 F5 2F            [12]  494 	mov	_tick_led_on_65536_17,a
      002428 80 03            [24]  495 	sjmp	00112$
      00242A                        496 00111$:
                                    497 ;	../LED_Manager/led.c:53: on = 0xFF;
      00242A 75 2F FF         [24]  498 	mov	_tick_led_on_65536_17,#0xff
      00242D                        499 00112$:
                                    500 ;	../LED_Manager/led.c:56: if(on){
      00242D E5 2F            [12]  501 	mov	a,_tick_led_on_65536_17
      00242F 60 11            [24]  502 	jz	00114$
                                    503 ;	../LED_Manager/led.c:60: get_dmx_value(DMX_M11_BLUE_INDEX));
                                    504 ;	../LED_Manager/led.c:59: get_dmx_value(DMX_M11_GREEN_INDEX),
                                    505 ;	../LED_Manager/led.c:58: set_leds(get_dmx_value(DMX_M11_RED_INDEX),
      002431 85 25 82         [24]  506 	mov	dpl,(_DMX + 0x0004)
      002434 C0 27            [24]  507 	push	(_DMX + 0x0006)
      002436 C0 26            [24]  508 	push	(_DMX + 0x0005)
      002438 12 2A 7B         [24]  509 	lcall	_set_leds
      00243B 15 81            [12]  510 	dec	sp
      00243D 15 81            [12]  511 	dec	sp
      00243F 02 25 6E         [24]  512 	ljmp	00145$
      002442                        513 00114$:
                                    514 ;	../LED_Manager/led.c:63: blackout();
      002442 12 2A 2E         [24]  515 	lcall	_blackout
                                    516 ;	../LED_Manager/led.c:67: break;
      002445 02 25 6E         [24]  517 	ljmp	00145$
                                    518 ;	../LED_Manager/led.c:68: case OPTION_DMX_MODE_3: /* Only macros */
      002448                        519 00119$:
                                    520 ;	../LED_Manager/led.c:69: value = get_dmx_value(DMX_M3_MACRO_INDEX);
      002448 AF 22            [24]  521 	mov	r7,(_DMX + 0x0001)
                                    522 ;	../LED_Manager/led.c:70: if(value >= DMX_MACRO_NONE){
      00244A BF 14 00         [24]  523 	cjne	r7,#0x14,00238$
      00244D                        524 00238$:
      00244D 40 5E            [24]  525 	jc	00127$
                                    526 ;	../LED_Manager/led.c:71: if(value < DMX_MACRO_COLOR_WHEEL){
      00244F BF 94 00         [24]  527 	cjne	r7,#0x94,00240$
      002452                        528 00240$:
      002452 50 0F            [24]  529 	jnc	00124$
                                    530 ;	../LED_Manager/led.c:72: color_wheel((value - DMX_MACRO_NONE) << 1);
      002454 8F 06            [24]  531 	mov	ar6,r7
      002456 EE               [12]  532 	mov	a,r6
      002457 24 EC            [12]  533 	add	a,#0xec
      002459 25 E0            [12]  534 	add	a,acc
      00245B F5 82            [12]  535 	mov	dpl,a
      00245D 12 29 AA         [24]  536 	lcall	_color_wheel
      002460 02 25 6E         [24]  537 	ljmp	00145$
      002463                        538 00124$:
                                    539 ;	../LED_Manager/led.c:74: dimmer = get_dmx_value(DMX_M3_MACRO_SPEED_INDEX);
                                    540 ;	../LED_Manager/led.c:76: if(dimmer > 10){
      002463 E5 23            [12]  541 	mov	a,(_DMX + 0x0002)
      002465 FE               [12]  542 	mov	r6,a
      002466 24 F5            [12]  543 	add	a,#0xff - 0x0a
      002468 50 26            [24]  544 	jnc	00121$
                                    545 ;	../LED_Manager/led.c:77: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      00246A EE               [12]  546 	mov	a,r6
      00246B 24 FB            [12]  547 	add	a,#0xfb
      00246D FE               [12]  548 	mov	r6,a
      00246E 8F 82            [24]  549 	mov	dpl,r7
      002470 C0 06            [24]  550 	push	ar6
      002472 12 25 74         [24]  551 	lcall	_dmx_to_macro
      002475 AD 82            [24]  552 	mov	r5,dpl
      002477 C0 05            [24]  553 	push	ar5
      002479 A8 1A            [24]  554 	mov	r0,_bp
      00247B 08               [12]  555 	inc	r0
      00247C 86 82            [24]  556 	mov	dpl,@r0
      00247E 08               [12]  557 	inc	r0
      00247F 86 83            [24]  558 	mov	dph,@r0
      002481 08               [12]  559 	inc	r0
      002482 86 F0            [24]  560 	mov	b,@r0
      002484 08               [12]  561 	inc	r0
      002485 E6               [12]  562 	mov	a,@r0
      002486 12 25 B9         [24]  563 	lcall	_play_macro
      002489 15 81            [12]  564 	dec	sp
      00248B 15 81            [12]  565 	dec	sp
      00248D 02 25 6E         [24]  566 	ljmp	00145$
      002490                        567 00121$:
                                    568 ;	../LED_Manager/led.c:79: play_macro(1, dmx_to_macro(value), 0xFF);
      002490 8F 82            [24]  569 	mov	dpl,r7
      002492 12 25 74         [24]  570 	lcall	_dmx_to_macro
      002495 AF 82            [24]  571 	mov	r7,dpl
      002497 74 FF            [12]  572 	mov	a,#0xff
      002499 C0 E0            [24]  573 	push	acc
      00249B C0 07            [24]  574 	push	ar7
      00249D 90 00 01         [24]  575 	mov	dptr,#(0x01&0x00ff)
      0024A0 E4               [12]  576 	clr	a
      0024A1 F5 F0            [12]  577 	mov	b,a
      0024A3 12 25 B9         [24]  578 	lcall	_play_macro
      0024A6 15 81            [12]  579 	dec	sp
      0024A8 15 81            [12]  580 	dec	sp
      0024AA 02 25 6E         [24]  581 	ljmp	00145$
      0024AD                        582 00127$:
                                    583 ;	../LED_Manager/led.c:83: blackout();
      0024AD 12 2A 2E         [24]  584 	lcall	_blackout
                                    585 ;	../LED_Manager/led.c:85: break;
      0024B0 02 25 6E         [24]  586 	ljmp	00145$
                                    587 ;	../LED_Manager/led.c:86: default:
      0024B3                        588 00129$:
                                    589 ;	../LED_Manager/led.c:87: blackout();
      0024B3 12 2A 2E         [24]  590 	lcall	_blackout
                                    591 ;	../LED_Manager/led.c:89: }
      0024B6 02 25 6E         [24]  592 	ljmp	00145$
      0024B9                        593 00143$:
                                    594 ;	../LED_Manager/led.c:91: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
      0024B9 75 82 03         [24]  595 	mov	dpl,#0x03
      0024BC 12 2F 00         [24]  596 	lcall	_get_runtime_data
      0024BF E5 82            [12]  597 	mov	a,dpl
      0024C1 60 2B            [24]  598 	jz	00140$
                                    599 ;	../LED_Manager/led.c:92: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
      0024C3 75 82 04         [24]  600 	mov	dpl,#0x04
      0024C6 12 2F 00         [24]  601 	lcall	_get_runtime_data
      0024C9 AF 82            [24]  602 	mov	r7,dpl
      0024CB 75 82 03         [24]  603 	mov	dpl,#0x03
      0024CE C0 07            [24]  604 	push	ar7
      0024D0 12 2F 00         [24]  605 	lcall	_get_runtime_data
      0024D3 AE 82            [24]  606 	mov	r6,dpl
      0024D5 C0 06            [24]  607 	push	ar6
      0024D7 A8 1A            [24]  608 	mov	r0,_bp
      0024D9 08               [12]  609 	inc	r0
      0024DA 86 82            [24]  610 	mov	dpl,@r0
      0024DC 08               [12]  611 	inc	r0
      0024DD 86 83            [24]  612 	mov	dph,@r0
      0024DF 08               [12]  613 	inc	r0
      0024E0 86 F0            [24]  614 	mov	b,@r0
      0024E2 08               [12]  615 	inc	r0
      0024E3 E6               [12]  616 	mov	a,@r0
      0024E4 12 25 B9         [24]  617 	lcall	_play_macro
      0024E7 15 81            [12]  618 	dec	sp
      0024E9 15 81            [12]  619 	dec	sp
      0024EB 02 25 6E         [24]  620 	ljmp	00145$
      0024EE                        621 00140$:
                                    622 ;	../LED_Manager/led.c:95: strobe = get_runtime_data(STROBE_INDEX);
      0024EE 75 82 08         [24]  623 	mov	dpl,#0x08
      0024F1 12 2F 00         [24]  624 	lcall	_get_runtime_data
                                    625 ;	../LED_Manager/led.c:97: if(strobe){
      0024F4 E5 82            [12]  626 	mov	a,dpl
      0024F6 FF               [12]  627 	mov	r7,a
      0024F7 60 48            [24]  628 	jz	00134$
                                    629 ;	../LED_Manager/led.c:98: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      0024F9 7E 00            [12]  630 	mov	r6,#0x00
      0024FB EF               [12]  631 	mov	a,r7
      0024FC 2F               [12]  632 	add	a,r7
      0024FD FF               [12]  633 	mov	r7,a
      0024FE EE               [12]  634 	mov	a,r6
      0024FF 33               [12]  635 	rlc	a
      002500 FE               [12]  636 	mov	r6,a
      002501 74 1C            [12]  637 	mov	a,#0x1c
      002503 C3               [12]  638 	clr	c
      002504 9F               [12]  639 	subb	a,r7
      002505 FF               [12]  640 	mov	r7,a
      002506 74 02            [12]  641 	mov	a,#0x02
      002508 9E               [12]  642 	subb	a,r6
      002509 FE               [12]  643 	mov	r6,a
      00250A 33               [12]  644 	rlc	a
      00250B 95 E0            [12]  645 	subb	a,acc
      00250D FD               [12]  646 	mov	r5,a
      00250E FC               [12]  647 	mov	r4,a
      00250F C0 07            [24]  648 	push	ar7
      002511 C0 06            [24]  649 	push	ar6
      002513 C0 05            [24]  650 	push	ar5
      002515 C0 04            [24]  651 	push	ar4
      002517 A8 1A            [24]  652 	mov	r0,_bp
      002519 08               [12]  653 	inc	r0
      00251A 86 82            [24]  654 	mov	dpl,@r0
      00251C 08               [12]  655 	inc	r0
      00251D 86 83            [24]  656 	mov	dph,@r0
      00251F 08               [12]  657 	inc	r0
      002520 86 F0            [24]  658 	mov	b,@r0
      002522 08               [12]  659 	inc	r0
      002523 E6               [12]  660 	mov	a,@r0
      002524 12 35 BA         [24]  661 	lcall	__modulong
      002527 AC 82            [24]  662 	mov	r4,dpl
      002529 AD 83            [24]  663 	mov	r5,dph
      00252B AE F0            [24]  664 	mov	r6,b
      00252D FF               [12]  665 	mov	r7,a
      00252E E5 81            [12]  666 	mov	a,sp
      002530 24 FC            [12]  667 	add	a,#0xfc
      002532 F5 81            [12]  668 	mov	sp,a
      002534 EC               [12]  669 	mov	a,r4
      002535 4D               [12]  670 	orl	a,r5
      002536 4E               [12]  671 	orl	a,r6
      002537 4F               [12]  672 	orl	a,r7
      002538 70 0A            [24]  673 	jnz	00135$
                                    674 ;	../LED_Manager/led.c:99: on = ~on;
      00253A E5 2F            [12]  675 	mov	a,_tick_led_on_65536_17
      00253C F4               [12]  676 	cpl	a
      00253D F5 2F            [12]  677 	mov	_tick_led_on_65536_17,a
      00253F 80 03            [24]  678 	sjmp	00135$
      002541                        679 00134$:
                                    680 ;	../LED_Manager/led.c:102: on = 0xFF;
      002541 75 2F FF         [24]  681 	mov	_tick_led_on_65536_17,#0xff
      002544                        682 00135$:
                                    683 ;	../LED_Manager/led.c:105: if(on){
      002544 E5 2F            [12]  684 	mov	a,_tick_led_on_65536_17
      002546 60 23            [24]  685 	jz	00137$
                                    686 ;	../LED_Manager/led.c:106: set_leds(get_runtime_data(RED_INDEX), get_runtime_data(GREEN_INDEX), get_runtime_data(BLUE_INDEX));
      002548 75 82 07         [24]  687 	mov	dpl,#0x07
      00254B 12 2F 00         [24]  688 	lcall	_get_runtime_data
      00254E AF 82            [24]  689 	mov	r7,dpl
      002550 75 82 06         [24]  690 	mov	dpl,#0x06
      002553 C0 07            [24]  691 	push	ar7
      002555 12 2F 00         [24]  692 	lcall	_get_runtime_data
      002558 AE 82            [24]  693 	mov	r6,dpl
      00255A 75 82 05         [24]  694 	mov	dpl,#0x05
      00255D C0 06            [24]  695 	push	ar6
      00255F 12 2F 00         [24]  696 	lcall	_get_runtime_data
      002562 12 2A 7B         [24]  697 	lcall	_set_leds
      002565 15 81            [12]  698 	dec	sp
      002567 15 81            [12]  699 	dec	sp
      002569 80 03            [24]  700 	sjmp	00145$
      00256B                        701 00137$:
                                    702 ;	../LED_Manager/led.c:108: blackout();
      00256B 12 2A 2E         [24]  703 	lcall	_blackout
      00256E                        704 00145$:
                                    705 ;	../LED_Manager/led.c:112: }
      00256E 85 1A 81         [24]  706 	mov	sp,_bp
      002571 D0 1A            [24]  707 	pop	_bp
      002573 22               [24]  708 	ret
                                    709 ;------------------------------------------------------------
                                    710 ;Allocation info for local variables in function 'dmx_to_macro'
                                    711 ;------------------------------------------------------------
                                    712 ;dmx_value                 Allocated to registers r7 
                                    713 ;------------------------------------------------------------
                                    714 ;	../LED_Manager/led.c:114: uint8_t dmx_to_macro(uint8_t dmx_value){
                                    715 ;	-----------------------------------------
                                    716 ;	 function dmx_to_macro
                                    717 ;	-----------------------------------------
      002574                        718 _dmx_to_macro:
      002574 AF 82            [24]  719 	mov	r7,dpl
                                    720 ;	../LED_Manager/led.c:116: if(dmx_value < DMX_MACRO_WHITE){
      002576 BF B4 00         [24]  721 	cjne	r7,#0xb4,00151$
      002579                        722 00151$:
      002579 50 04            [24]  723 	jnc	00119$
                                    724 ;	../LED_Manager/led.c:117: return OPTION_MACRO_WHITE;
      00257B 75 82 21         [24]  725 	mov	dpl,#0x21
      00257E 22               [24]  726 	ret
      00257F                        727 00119$:
                                    728 ;	../LED_Manager/led.c:118: } else if(dmx_value < DMX_MACRO_RAINBOW){
      00257F BF BE 00         [24]  729 	cjne	r7,#0xbe,00153$
      002582                        730 00153$:
      002582 50 04            [24]  731 	jnc	00116$
                                    732 ;	../LED_Manager/led.c:119: return OPTION_MACRO_RAINBOW_DMX;
      002584 75 82 01         [24]  733 	mov	dpl,#0x01
      002587 22               [24]  734 	ret
      002588                        735 00116$:
                                    736 ;	../LED_Manager/led.c:120: } else if(dmx_value < DMX_MACRO_FIRE){
      002588 BF C8 00         [24]  737 	cjne	r7,#0xc8,00155$
      00258B                        738 00155$:
      00258B 50 04            [24]  739 	jnc	00113$
                                    740 ;	../LED_Manager/led.c:121: return OPTION_MACRO_FIRE_DMX;
      00258D 75 82 02         [24]  741 	mov	dpl,#0x02
      002590 22               [24]  742 	ret
      002591                        743 00113$:
                                    744 ;	../LED_Manager/led.c:122: } else if(dmx_value < DMX_MACRO_WATER){
      002591 BF D2 00         [24]  745 	cjne	r7,#0xd2,00157$
      002594                        746 00157$:
      002594 50 04            [24]  747 	jnc	00110$
                                    748 ;	../LED_Manager/led.c:123: return OPTION_MACRO_WATER_DMX;
      002596 75 82 03         [24]  749 	mov	dpl,#0x03
      002599 22               [24]  750 	ret
      00259A                        751 00110$:
                                    752 ;	../LED_Manager/led.c:124: } else if(dmx_value < DMX_MACRO_ACID){
      00259A BF DC 00         [24]  753 	cjne	r7,#0xdc,00159$
      00259D                        754 00159$:
      00259D 50 04            [24]  755 	jnc	00107$
                                    756 ;	../LED_Manager/led.c:125: return OPTION_MACRO_ACID_DMX;
      00259F 75 82 04         [24]  757 	mov	dpl,#0x04
      0025A2 22               [24]  758 	ret
      0025A3                        759 00107$:
                                    760 ;	../LED_Manager/led.c:126: } else if(dmx_value < DMX_MACRO_ETHER){
      0025A3 BF E6 00         [24]  761 	cjne	r7,#0xe6,00161$
      0025A6                        762 00161$:
      0025A6 50 04            [24]  763 	jnc	00104$
                                    764 ;	../LED_Manager/led.c:127: return OPTION_MACRO_ETHER_DMX;
      0025A8 75 82 05         [24]  765 	mov	dpl,#0x05
      0025AB 22               [24]  766 	ret
      0025AC                        767 00104$:
                                    768 ;	../LED_Manager/led.c:128: } else if(dmx_value < DMX_MACRO_STORM){
      0025AC BF F0 00         [24]  769 	cjne	r7,#0xf0,00163$
      0025AF                        770 00163$:
      0025AF 50 04            [24]  771 	jnc	00108$
                                    772 ;	../LED_Manager/led.c:129: return OPTION_MACRO_STORM_DMX;
      0025B1 75 82 06         [24]  773 	mov	dpl,#0x06
      0025B4 22               [24]  774 	ret
      0025B5                        775 00108$:
                                    776 ;	../LED_Manager/led.c:132: return 69; // ;)
      0025B5 75 82 45         [24]  777 	mov	dpl,#0x45
                                    778 ;	../LED_Manager/led.c:133: }
      0025B8 22               [24]  779 	ret
                                    780 ;------------------------------------------------------------
                                    781 ;Allocation info for local variables in function 'play_macro'
                                    782 ;------------------------------------------------------------
                                    783 ;macro                     Allocated to stack - _bp -3
                                    784 ;macro_speed               Allocated to stack - _bp -4
                                    785 ;tick                      Allocated to stack - _bp +1
                                    786 ;rng                       Allocated to stack - _bp +5
                                    787 ;changed                   Allocated to registers r3 
                                    788 ;tock                      Allocated with name '_play_macro_tock_65536_55'
                                    789 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
                                    790 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
                                    791 ;direction                 Allocated with name '_play_macro_direction_65536_55'
                                    792 ;------------------------------------------------------------
                                    793 ;	../LED_Manager/led.c:135: void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
                                    794 ;	-----------------------------------------
                                    795 ;	 function play_macro
                                    796 ;	-----------------------------------------
      0025B9                        797 _play_macro:
      0025B9 C0 1A            [24]  798 	push	_bp
      0025BB 85 81 1A         [24]  799 	mov	_bp,sp
      0025BE C0 82            [24]  800 	push	dpl
      0025C0 C0 83            [24]  801 	push	dph
      0025C2 C0 F0            [24]  802 	push	b
      0025C4 C0 E0            [24]  803 	push	acc
      0025C6 E5 81            [12]  804 	mov	a,sp
      0025C8 24 04            [12]  805 	add	a,#0x04
      0025CA F5 81            [12]  806 	mov	sp,a
                                    807 ;	../LED_Manager/led.c:140: uint32_t rng = 0;
      0025CC E5 1A            [12]  808 	mov	a,_bp
      0025CE 24 05            [12]  809 	add	a,#0x05
      0025D0 F8               [12]  810 	mov	r0,a
      0025D1 E4               [12]  811 	clr	a
      0025D2 F6               [12]  812 	mov	@r0,a
      0025D3 08               [12]  813 	inc	r0
      0025D4 F6               [12]  814 	mov	@r0,a
      0025D5 08               [12]  815 	inc	r0
      0025D6 F6               [12]  816 	mov	@r0,a
      0025D7 08               [12]  817 	inc	r0
      0025D8 F6               [12]  818 	mov	@r0,a
                                    819 ;	../LED_Manager/led.c:141: uint8_t changed = 0;
      0025D9 7B 00            [12]  820 	mov	r3,#0x00
                                    821 ;	../LED_Manager/led.c:145: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
      0025DB E5 1A            [12]  822 	mov	a,_bp
      0025DD 24 FC            [12]  823 	add	a,#0xfc
      0025DF F8               [12]  824 	mov	r0,a
      0025E0 E6               [12]  825 	mov	a,@r0
      0025E1 C3               [12]  826 	clr	c
      0025E2 13               [12]  827 	rrc	a
      0025E3 FC               [12]  828 	mov	r4,a
      0025E4 7D 00            [12]  829 	mov	r5,#0x00
      0025E6 74 85            [12]  830 	mov	a,#0x85
      0025E8 C3               [12]  831 	clr	c
      0025E9 9C               [12]  832 	subb	a,r4
      0025EA FC               [12]  833 	mov	r4,a
      0025EB E4               [12]  834 	clr	a
      0025EC 9D               [12]  835 	subb	a,r5
      0025ED FD               [12]  836 	mov	r5,a
      0025EE 33               [12]  837 	rlc	a
      0025EF 95 E0            [12]  838 	subb	a,acc
      0025F1 FE               [12]  839 	mov	r6,a
      0025F2 FF               [12]  840 	mov	r7,a
      0025F3 C0 03            [24]  841 	push	ar3
      0025F5 C0 04            [24]  842 	push	ar4
      0025F7 C0 05            [24]  843 	push	ar5
      0025F9 C0 06            [24]  844 	push	ar6
      0025FB C0 07            [24]  845 	push	ar7
      0025FD A8 1A            [24]  846 	mov	r0,_bp
      0025FF 08               [12]  847 	inc	r0
      002600 86 82            [24]  848 	mov	dpl,@r0
      002602 08               [12]  849 	inc	r0
      002603 86 83            [24]  850 	mov	dph,@r0
      002605 08               [12]  851 	inc	r0
      002606 86 F0            [24]  852 	mov	b,@r0
      002608 08               [12]  853 	inc	r0
      002609 E6               [12]  854 	mov	a,@r0
      00260A 12 35 BA         [24]  855 	lcall	__modulong
      00260D AC 82            [24]  856 	mov	r4,dpl
      00260F AD 83            [24]  857 	mov	r5,dph
      002611 AE F0            [24]  858 	mov	r6,b
      002613 FF               [12]  859 	mov	r7,a
      002614 E5 81            [12]  860 	mov	a,sp
      002616 24 FC            [12]  861 	add	a,#0xfc
      002618 F5 81            [12]  862 	mov	sp,a
      00261A D0 03            [24]  863 	pop	ar3
      00261C EC               [12]  864 	mov	a,r4
      00261D 4D               [12]  865 	orl	a,r5
      00261E 4E               [12]  866 	orl	a,r6
      00261F 4F               [12]  867 	orl	a,r7
      002620 70 22            [24]  868 	jnz	00102$
                                    869 ;	../LED_Manager/led.c:146: changed = 0xFF;
      002622 7B FF            [12]  870 	mov	r3,#0xff
                                    871 ;	../LED_Manager/led.c:147: rng = rngU32(); /* TODO check back */
      002624 C0 03            [24]  872 	push	ar3
      002626 12 2A 3E         [24]  873 	lcall	_rngU32
      002629 AC 82            [24]  874 	mov	r4,dpl
      00262B AD 83            [24]  875 	mov	r5,dph
      00262D AE F0            [24]  876 	mov	r6,b
      00262F FF               [12]  877 	mov	r7,a
      002630 D0 03            [24]  878 	pop	ar3
      002632 E5 1A            [12]  879 	mov	a,_bp
      002634 24 05            [12]  880 	add	a,#0x05
      002636 F8               [12]  881 	mov	r0,a
      002637 A6 04            [24]  882 	mov	@r0,ar4
      002639 08               [12]  883 	inc	r0
      00263A A6 05            [24]  884 	mov	@r0,ar5
      00263C 08               [12]  885 	inc	r0
      00263D A6 06            [24]  886 	mov	@r0,ar6
      00263F 08               [12]  887 	inc	r0
      002640 A6 07            [24]  888 	mov	@r0,ar7
                                    889 ;	../LED_Manager/led.c:148: tock++;
      002642 05 30            [12]  890 	inc	_play_macro_tock_65536_55
      002644                        891 00102$:
                                    892 ;	../LED_Manager/led.c:151: switch (macro)
      002644 E5 1A            [12]  893 	mov	a,_bp
      002646 24 FD            [12]  894 	add	a,#0xfd
      002648 F8               [12]  895 	mov	r0,a
      002649 B6 01 02         [24]  896 	cjne	@r0,#0x01,00344$
      00264C 80 54            [24]  897 	sjmp	00103$
      00264E                        898 00344$:
      00264E E5 1A            [12]  899 	mov	a,_bp
      002650 24 FD            [12]  900 	add	a,#0xfd
      002652 F8               [12]  901 	mov	r0,a
      002653 B6 02 02         [24]  902 	cjne	@r0,#0x02,00345$
      002656 80 53            [24]  903 	sjmp	00104$
      002658                        904 00345$:
      002658 E5 1A            [12]  905 	mov	a,_bp
      00265A 24 FD            [12]  906 	add	a,#0xfd
      00265C F8               [12]  907 	mov	r0,a
      00265D E4               [12]  908 	clr	a
      00265E B6 03 01         [24]  909 	cjne	@r0,#0x03,00346$
      002661 04               [12]  910 	inc	a
      002662                        911 00346$:
      002662 FF               [12]  912 	mov	r7,a
      002663 60 03            [24]  913 	jz	00348$
      002665 02 27 72         [24]  914 	ljmp	00120$
      002668                        915 00348$:
      002668 E5 1A            [12]  916 	mov	a,_bp
      00266A 24 FD            [12]  917 	add	a,#0xfd
      00266C F8               [12]  918 	mov	r0,a
      00266D B6 04 03         [24]  919 	cjne	@r0,#0x04,00349$
      002670 02 27 72         [24]  920 	ljmp	00120$
      002673                        921 00349$:
      002673 E5 1A            [12]  922 	mov	a,_bp
      002675 24 FD            [12]  923 	add	a,#0xfd
      002677 F8               [12]  924 	mov	r0,a
      002678 B6 05 03         [24]  925 	cjne	@r0,#0x05,00350$
      00267B 02 27 72         [24]  926 	ljmp	00120$
      00267E                        927 00350$:
      00267E E5 1A            [12]  928 	mov	a,_bp
      002680 24 FD            [12]  929 	add	a,#0xfd
      002682 F8               [12]  930 	mov	r0,a
      002683 B6 06 03         [24]  931 	cjne	@r0,#0x06,00351$
      002686 02 28 5A         [24]  932 	ljmp	00151$
      002689                        933 00351$:
      002689 E5 1A            [12]  934 	mov	a,_bp
      00268B 24 FD            [12]  935 	add	a,#0xfd
      00268D F8               [12]  936 	mov	r0,a
      00268E B6 21 03         [24]  937 	cjne	@r0,#0x21,00352$
      002691 02 28 CD         [24]  938 	ljmp	00165$
      002694                        939 00352$:
      002694 E5 1A            [12]  940 	mov	a,_bp
      002696 24 FD            [12]  941 	add	a,#0xfd
      002698 F8               [12]  942 	mov	r0,a
      002699 B6 45 03         [24]  943 	cjne	@r0,#0x45,00353$
      00269C 02 28 D3         [24]  944 	ljmp	00166$
      00269F                        945 00353$:
      00269F 02 29 A1         [24]  946 	ljmp	00185$
                                    947 ;	../LED_Manager/led.c:153: case OPTION_MACRO_RAINBOW_DMX: //rainbow
      0026A2                        948 00103$:
                                    949 ;	../LED_Manager/led.c:154: color_wheel(tock);
      0026A2 85 30 82         [24]  950 	mov	dpl,_play_macro_tock_65536_55
      0026A5 12 29 AA         [24]  951 	lcall	_color_wheel
                                    952 ;	../LED_Manager/led.c:155: break;
      0026A8 02 29 A4         [24]  953 	ljmp	00187$
                                    954 ;	../LED_Manager/led.c:156: case OPTION_MACRO_FIRE_DMX: //fire
      0026AB                        955 00104$:
                                    956 ;	../LED_Manager/led.c:157: if(changed) { 
      0026AB EB               [12]  957 	mov	a,r3
      0026AC 70 03            [24]  958 	jnz	00354$
      0026AE 02 29 A4         [24]  959 	ljmp	00187$
      0026B1                        960 00354$:
                                    961 ;	../LED_Manager/led.c:159: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
      0026B1 74 C9            [12]  962 	mov	a,#0x100 - 0x37
      0026B3 25 31            [12]  963 	add	a,_play_macro_primaryCount_65536_55
      0026B5 40 0C            [24]  964 	jc	00106$
      0026B7 75 31 37         [24]  965 	mov	_play_macro_primaryCount_65536_55,#0x37
      0026BA AD 33            [24]  966 	mov	r5,_play_macro_direction_65536_55
      0026BC 7E 00            [12]  967 	mov	r6,#0x00
      0026BE 43 05 01         [24]  968 	orl	ar5,#0x01
      0026C1 8D 33            [24]  969 	mov	_play_macro_direction_65536_55,r5
      0026C3                        970 00106$:
                                    971 ;	../LED_Manager/led.c:160: if(direction & 0x01){
      0026C3 E5 33            [12]  972 	mov	a,_play_macro_direction_65536_55
      0026C5 30 E0 0E         [24]  973 	jnb	acc.0,00114$
                                    974 ;	../LED_Manager/led.c:161: if(primaryCount == 255){
      0026C8 74 FF            [12]  975 	mov	a,#0xff
      0026CA B5 31 05         [24]  976 	cjne	a,_play_macro_primaryCount_65536_55,00108$
                                    977 ;	../LED_Manager/led.c:162: direction &= ~0x01;
      0026CD 53 33 FE         [24]  978 	anl	_play_macro_direction_65536_55,#0xfe
      0026D0 80 20            [24]  979 	sjmp	00115$
      0026D2                        980 00108$:
                                    981 ;	../LED_Manager/led.c:164: primaryCount++;
      0026D2 05 31            [12]  982 	inc	_play_macro_primaryCount_65536_55
      0026D4 80 1C            [24]  983 	sjmp	00115$
      0026D6                        984 00114$:
                                    985 ;	../LED_Manager/led.c:167: if(primaryCount - 1 == 55){
      0026D6 AD 31            [24]  986 	mov	r5,_play_macro_primaryCount_65536_55
      0026D8 7E 00            [12]  987 	mov	r6,#0x00
      0026DA 1D               [12]  988 	dec	r5
      0026DB BD FF 01         [24]  989 	cjne	r5,#0xff,00359$
      0026DE 1E               [12]  990 	dec	r6
      0026DF                        991 00359$:
      0026DF BD 37 0E         [24]  992 	cjne	r5,#0x37,00111$
      0026E2 BE 00 0B         [24]  993 	cjne	r6,#0x00,00111$
                                    994 ;	../LED_Manager/led.c:168: direction |= 0x01;
      0026E5 AD 33            [24]  995 	mov	r5,_play_macro_direction_65536_55
      0026E7 7E 00            [12]  996 	mov	r6,#0x00
      0026E9 43 05 01         [24]  997 	orl	ar5,#0x01
      0026EC 8D 33            [24]  998 	mov	_play_macro_direction_65536_55,r5
      0026EE 80 02            [24]  999 	sjmp	00115$
      0026F0                       1000 00111$:
                                   1001 ;	../LED_Manager/led.c:170: primaryCount--;
      0026F0 15 31            [12] 1002 	dec	_play_macro_primaryCount_65536_55
      0026F2                       1003 00115$:
                                   1004 ;	../LED_Manager/led.c:174: set_leds(primaryCount, (uint8_t) (rng % (primaryCount >> 2)), (!(rng % 13)) ? PWMDATA17H > 1 : 0);
      0026F2 74 0D            [12] 1005 	mov	a,#0x0d
      0026F4 C0 E0            [24] 1006 	push	acc
      0026F6 E4               [12] 1007 	clr	a
      0026F7 C0 E0            [24] 1008 	push	acc
      0026F9 C0 E0            [24] 1009 	push	acc
      0026FB C0 E0            [24] 1010 	push	acc
      0026FD E5 1A            [12] 1011 	mov	a,_bp
      0026FF 24 05            [12] 1012 	add	a,#0x05
      002701 F8               [12] 1013 	mov	r0,a
      002702 86 82            [24] 1014 	mov	dpl,@r0
      002704 08               [12] 1015 	inc	r0
      002705 86 83            [24] 1016 	mov	dph,@r0
      002707 08               [12] 1017 	inc	r0
      002708 86 F0            [24] 1018 	mov	b,@r0
      00270A 08               [12] 1019 	inc	r0
      00270B E6               [12] 1020 	mov	a,@r0
      00270C 12 35 BA         [24] 1021 	lcall	__modulong
      00270F AB 82            [24] 1022 	mov	r3,dpl
      002711 AC 83            [24] 1023 	mov	r4,dph
      002713 AD F0            [24] 1024 	mov	r5,b
      002715 FE               [12] 1025 	mov	r6,a
      002716 E5 81            [12] 1026 	mov	a,sp
      002718 24 FC            [12] 1027 	add	a,#0xfc
      00271A F5 81            [12] 1028 	mov	sp,a
      00271C EB               [12] 1029 	mov	a,r3
      00271D 4C               [12] 1030 	orl	a,r4
      00271E 4D               [12] 1031 	orl	a,r5
      00271F 4E               [12] 1032 	orl	a,r6
      002720 70 0C            [24] 1033 	jnz	00189$
      002722 C3               [12] 1034 	clr	c
      002723 74 01            [12] 1035 	mov	a,#0x01
      002725 95 AD            [12] 1036 	subb	a,_PWMDATA17H
      002727 E4               [12] 1037 	clr	a
      002728 33               [12] 1038 	rlc	a
      002729 FD               [12] 1039 	mov	r5,a
      00272A 7E 00            [12] 1040 	mov	r6,#0x00
      00272C 80 04            [24] 1041 	sjmp	00190$
      00272E                       1042 00189$:
      00272E 7D 00            [12] 1043 	mov	r5,#0x00
      002730 7E 00            [12] 1044 	mov	r6,#0x00
      002732                       1045 00190$:
      002732 E5 31            [12] 1046 	mov	a,_play_macro_primaryCount_65536_55
      002734 03               [12] 1047 	rr	a
      002735 03               [12] 1048 	rr	a
      002736 54 3F            [12] 1049 	anl	a,#0x3f
      002738 FE               [12] 1050 	mov	r6,a
      002739 7C 00            [12] 1051 	mov	r4,#0x00
      00273B 7B 00            [12] 1052 	mov	r3,#0x00
      00273D 7A 00            [12] 1053 	mov	r2,#0x00
      00273F C0 05            [24] 1054 	push	ar5
      002741 C0 06            [24] 1055 	push	ar6
      002743 C0 04            [24] 1056 	push	ar4
      002745 C0 03            [24] 1057 	push	ar3
      002747 C0 02            [24] 1058 	push	ar2
      002749 E5 1A            [12] 1059 	mov	a,_bp
      00274B 24 05            [12] 1060 	add	a,#0x05
      00274D F8               [12] 1061 	mov	r0,a
      00274E 86 82            [24] 1062 	mov	dpl,@r0
      002750 08               [12] 1063 	inc	r0
      002751 86 83            [24] 1064 	mov	dph,@r0
      002753 08               [12] 1065 	inc	r0
      002754 86 F0            [24] 1066 	mov	b,@r0
      002756 08               [12] 1067 	inc	r0
      002757 E6               [12] 1068 	mov	a,@r0
      002758 12 35 BA         [24] 1069 	lcall	__modulong
      00275B AA 82            [24] 1070 	mov	r2,dpl
      00275D E5 81            [12] 1071 	mov	a,sp
      00275F 24 FC            [12] 1072 	add	a,#0xfc
      002761 F5 81            [12] 1073 	mov	sp,a
      002763 C0 02            [24] 1074 	push	ar2
      002765 85 31 82         [24] 1075 	mov	dpl,_play_macro_primaryCount_65536_55
      002768 12 2A 7B         [24] 1076 	lcall	_set_leds
      00276B 15 81            [12] 1077 	dec	sp
      00276D 15 81            [12] 1078 	dec	sp
                                   1079 ;	../LED_Manager/led.c:177: break;
      00276F 02 29 A4         [24] 1080 	ljmp	00187$
                                   1081 ;	../LED_Manager/led.c:180: case OPTION_MACRO_ETHER_DMX:
      002772                       1082 00120$:
                                   1083 ;	../LED_Manager/led.c:182: if(changed){
      002772 EB               [12] 1084 	mov	a,r3
      002773 70 03            [24] 1085 	jnz	00363$
      002775 02 29 A4         [24] 1086 	ljmp	00187$
      002778                       1087 00363$:
                                   1088 ;	../LED_Manager/led.c:184: if(direction & 0x01){
      002778 E5 33            [12] 1089 	mov	a,_play_macro_direction_65536_55
      00277A 30 E0 14         [24] 1090 	jnb	acc.0,00126$
                                   1091 ;	../LED_Manager/led.c:185: primaryCount +=2;
      00277D AE 31            [24] 1092 	mov	r6,_play_macro_primaryCount_65536_55
      00277F 74 02            [12] 1093 	mov	a,#0x02
      002781 2E               [12] 1094 	add	a,r6
                                   1095 ;	../LED_Manager/led.c:187: if(primaryCount < 75){
      002782 F5 31            [12] 1096 	mov	_play_macro_primaryCount_65536_55,a
      002784 C3               [12] 1097 	clr	c
      002785 94 4B            [12] 1098 	subb	a,#0x4b
      002787 50 1F            [24] 1099 	jnc	00127$
                                   1100 ;	../LED_Manager/led.c:188: direction &= ~0x01;
      002789 53 33 FE         [24] 1101 	anl	_play_macro_direction_65536_55,#0xfe
                                   1102 ;	../LED_Manager/led.c:189: primaryCount = 255;
      00278C 75 31 FF         [24] 1103 	mov	_play_macro_primaryCount_65536_55,#0xff
      00278F 80 17            [24] 1104 	sjmp	00127$
      002791                       1105 00126$:
                                   1106 ;	../LED_Manager/led.c:193: primaryCount -=2;
      002791 E5 31            [12] 1107 	mov	a,_play_macro_primaryCount_65536_55
      002793 FE               [12] 1108 	mov	r6,a
      002794 24 FE            [12] 1109 	add	a,#0xfe
                                   1110 ;	../LED_Manager/led.c:195: if(primaryCount <= 130){
      002796 F5 31            [12] 1111 	mov  _play_macro_primaryCount_65536_55,a
      002798 24 7D            [12] 1112 	add	a,#0xff - 0x82
      00279A 40 0C            [24] 1113 	jc	00127$
                                   1114 ;	../LED_Manager/led.c:196: direction |= 0x01;
      00279C AD 33            [24] 1115 	mov	r5,_play_macro_direction_65536_55
      00279E 7E 00            [12] 1116 	mov	r6,#0x00
      0027A0 43 05 01         [24] 1117 	orl	ar5,#0x01
      0027A3 8D 33            [24] 1118 	mov	_play_macro_direction_65536_55,r5
                                   1119 ;	../LED_Manager/led.c:197: primaryCount = 130;
      0027A5 75 31 82         [24] 1120 	mov	_play_macro_primaryCount_65536_55,#0x82
      0027A8                       1121 00127$:
                                   1122 ;	../LED_Manager/led.c:201: if(rng % 21 == 0){
      0027A8 C0 07            [24] 1123 	push	ar7
      0027AA 74 15            [12] 1124 	mov	a,#0x15
      0027AC C0 E0            [24] 1125 	push	acc
      0027AE E4               [12] 1126 	clr	a
      0027AF C0 E0            [24] 1127 	push	acc
      0027B1 C0 E0            [24] 1128 	push	acc
      0027B3 C0 E0            [24] 1129 	push	acc
      0027B5 E5 1A            [12] 1130 	mov	a,_bp
      0027B7 24 05            [12] 1131 	add	a,#0x05
      0027B9 F8               [12] 1132 	mov	r0,a
      0027BA 86 82            [24] 1133 	mov	dpl,@r0
      0027BC 08               [12] 1134 	inc	r0
      0027BD 86 83            [24] 1135 	mov	dph,@r0
      0027BF 08               [12] 1136 	inc	r0
      0027C0 86 F0            [24] 1137 	mov	b,@r0
      0027C2 08               [12] 1138 	inc	r0
      0027C3 E6               [12] 1139 	mov	a,@r0
      0027C4 12 35 BA         [24] 1140 	lcall	__modulong
      0027C7 AB 82            [24] 1141 	mov	r3,dpl
      0027C9 AC 83            [24] 1142 	mov	r4,dph
      0027CB AD F0            [24] 1143 	mov	r5,b
      0027CD FE               [12] 1144 	mov	r6,a
      0027CE E5 81            [12] 1145 	mov	a,sp
      0027D0 24 FC            [12] 1146 	add	a,#0xfc
      0027D2 F5 81            [12] 1147 	mov	sp,a
      0027D4 D0 07            [24] 1148 	pop	ar7
      0027D6 EB               [12] 1149 	mov	a,r3
      0027D7 4C               [12] 1150 	orl	a,r4
      0027D8 4D               [12] 1151 	orl	a,r5
      0027D9 4E               [12] 1152 	orl	a,r6
      0027DA 70 15            [24] 1153 	jnz	00139$
                                   1154 ;	../LED_Manager/led.c:202: if(direction & 0x10){
      0027DC E5 33            [12] 1155 	mov	a,_play_macro_direction_65536_55
      0027DE 30 E4 05         [24] 1156 	jnb	acc.4,00129$
                                   1157 ;	../LED_Manager/led.c:203: direction &= ~0x10;
      0027E1 53 33 EF         [24] 1158 	anl	_play_macro_direction_65536_55,#0xef
      0027E4 80 28            [24] 1159 	sjmp	00140$
      0027E6                       1160 00129$:
                                   1161 ;	../LED_Manager/led.c:205: direction |= 0x10;
      0027E6 AD 33            [24] 1162 	mov	r5,_play_macro_direction_65536_55
      0027E8 7E 00            [12] 1163 	mov	r6,#0x00
      0027EA 43 05 10         [24] 1164 	orl	ar5,#0x10
      0027ED 8D 33            [24] 1165 	mov	_play_macro_direction_65536_55,r5
      0027EF 80 1D            [24] 1166 	sjmp	00140$
      0027F1                       1167 00139$:
                                   1168 ;	../LED_Manager/led.c:208: if(direction & 0x10){
      0027F1 E5 33            [12] 1169 	mov	a,_play_macro_direction_65536_55
      0027F3 30 E4 0D         [24] 1170 	jnb	acc.4,00136$
                                   1171 ;	../LED_Manager/led.c:209: secondaryCount++;
      0027F6 05 32            [12] 1172 	inc	_play_macro_secondaryCount_65536_55
                                   1173 ;	../LED_Manager/led.c:211: if(secondaryCount >= 34){
      0027F8 74 DE            [12] 1174 	mov	a,#0x100 - 0x22
      0027FA 25 32            [12] 1175 	add	a,_play_macro_secondaryCount_65536_55
      0027FC 50 10            [24] 1176 	jnc	00140$
                                   1177 ;	../LED_Manager/led.c:212: secondaryCount = 34;
      0027FE 75 32 22         [24] 1178 	mov	_play_macro_secondaryCount_65536_55,#0x22
      002801 80 0B            [24] 1179 	sjmp	00140$
      002803                       1180 00136$:
                                   1181 ;	../LED_Manager/led.c:216: secondaryCount--;
      002803 15 32            [12] 1182 	dec	_play_macro_secondaryCount_65536_55
                                   1183 ;	../LED_Manager/led.c:218: if(secondaryCount > 36){
      002805 E5 32            [12] 1184 	mov	a,_play_macro_secondaryCount_65536_55
      002807 24 DB            [12] 1185 	add	a,#0xff - 0x24
      002809 50 03            [24] 1186 	jnc	00140$
                                   1187 ;	../LED_Manager/led.c:219: secondaryCount = 0;
      00280B 75 32 00         [24] 1188 	mov	_play_macro_secondaryCount_65536_55,#0x00
      00280E                       1189 00140$:
                                   1190 ;	../LED_Manager/led.c:224: if(macro == OPTION_MACRO_WATER_DMX){ //water
      00280E EF               [12] 1191 	mov	a,r7
      00280F 60 11            [24] 1192 	jz	00147$
                                   1193 ;	../LED_Manager/led.c:225: set_leds(secondaryCount, secondaryCount, primaryCount);
      002811 C0 31            [24] 1194 	push	_play_macro_primaryCount_65536_55
      002813 C0 32            [24] 1195 	push	_play_macro_secondaryCount_65536_55
      002815 85 32 82         [24] 1196 	mov	dpl,_play_macro_secondaryCount_65536_55
      002818 12 2A 7B         [24] 1197 	lcall	_set_leds
      00281B 15 81            [12] 1198 	dec	sp
      00281D 15 81            [12] 1199 	dec	sp
      00281F 02 29 A4         [24] 1200 	ljmp	00187$
      002822                       1201 00147$:
                                   1202 ;	../LED_Manager/led.c:226: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
      002822 E5 1A            [12] 1203 	mov	a,_bp
      002824 24 FD            [12] 1204 	add	a,#0xfd
      002826 F8               [12] 1205 	mov	r0,a
      002827 B6 04 12         [24] 1206 	cjne	@r0,#0x04,00144$
                                   1207 ;	../LED_Manager/led.c:227: set_leds(secondaryCount, primaryCount, 0);
      00282A E4               [12] 1208 	clr	a
      00282B C0 E0            [24] 1209 	push	acc
      00282D C0 31            [24] 1210 	push	_play_macro_primaryCount_65536_55
      00282F 85 32 82         [24] 1211 	mov	dpl,_play_macro_secondaryCount_65536_55
      002832 12 2A 7B         [24] 1212 	lcall	_set_leds
      002835 15 81            [12] 1213 	dec	sp
      002837 15 81            [12] 1214 	dec	sp
      002839 02 29 A4         [24] 1215 	ljmp	00187$
      00283C                       1216 00144$:
                                   1217 ;	../LED_Manager/led.c:228: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
      00283C E5 1A            [12] 1218 	mov	a,_bp
      00283E 24 FD            [12] 1219 	add	a,#0xfd
      002840 F8               [12] 1220 	mov	r0,a
      002841 B6 05 02         [24] 1221 	cjne	@r0,#0x05,00375$
      002844 80 03            [24] 1222 	sjmp	00376$
      002846                       1223 00375$:
      002846 02 29 A4         [24] 1224 	ljmp	00187$
      002849                       1225 00376$:
                                   1226 ;	../LED_Manager/led.c:229: set_leds(primaryCount, secondaryCount, primaryCount);
      002849 C0 31            [24] 1227 	push	_play_macro_primaryCount_65536_55
      00284B C0 32            [24] 1228 	push	_play_macro_secondaryCount_65536_55
      00284D 85 31 82         [24] 1229 	mov	dpl,_play_macro_primaryCount_65536_55
      002850 12 2A 7B         [24] 1230 	lcall	_set_leds
      002853 15 81            [12] 1231 	dec	sp
      002855 15 81            [12] 1232 	dec	sp
                                   1233 ;	../LED_Manager/led.c:233: break;
      002857 02 29 A4         [24] 1234 	ljmp	00187$
                                   1235 ;	../LED_Manager/led.c:234: case OPTION_MACRO_STORM_DMX: //storm
      00285A                       1236 00151$:
                                   1237 ;	../LED_Manager/led.c:235: if(changed){
      00285A EB               [12] 1238 	mov	a,r3
      00285B 70 03            [24] 1239 	jnz	00377$
      00285D 02 29 A4         [24] 1240 	ljmp	00187$
      002860                       1241 00377$:
                                   1242 ;	../LED_Manager/led.c:236: if(!(rng % STORM_FREQ)){
      002860 74 59            [12] 1243 	mov	a,#0x59
      002862 C0 E0            [24] 1244 	push	acc
      002864 E4               [12] 1245 	clr	a
      002865 C0 E0            [24] 1246 	push	acc
      002867 C0 E0            [24] 1247 	push	acc
      002869 C0 E0            [24] 1248 	push	acc
      00286B E5 1A            [12] 1249 	mov	a,_bp
      00286D 24 05            [12] 1250 	add	a,#0x05
      00286F F8               [12] 1251 	mov	r0,a
      002870 86 82            [24] 1252 	mov	dpl,@r0
      002872 08               [12] 1253 	inc	r0
      002873 86 83            [24] 1254 	mov	dph,@r0
      002875 08               [12] 1255 	inc	r0
      002876 86 F0            [24] 1256 	mov	b,@r0
      002878 08               [12] 1257 	inc	r0
      002879 E6               [12] 1258 	mov	a,@r0
      00287A 12 35 BA         [24] 1259 	lcall	__modulong
      00287D AC 82            [24] 1260 	mov	r4,dpl
      00287F AD 83            [24] 1261 	mov	r5,dph
      002881 AE F0            [24] 1262 	mov	r6,b
      002883 FF               [12] 1263 	mov	r7,a
      002884 E5 81            [12] 1264 	mov	a,sp
      002886 24 FC            [12] 1265 	add	a,#0xfc
      002888 F5 81            [12] 1266 	mov	sp,a
      00288A EC               [12] 1267 	mov	a,r4
      00288B 4D               [12] 1268 	orl	a,r5
      00288C 4E               [12] 1269 	orl	a,r6
      00288D 4F               [12] 1270 	orl	a,r7
      00288E 70 05            [24] 1271 	jnz	00161$
                                   1272 ;	../LED_Manager/led.c:237: primaryCount = 255;
      002890 75 31 FF         [24] 1273 	mov	_play_macro_primaryCount_65536_55,#0xff
      002893 80 27            [24] 1274 	sjmp	00162$
      002895                       1275 00161$:
                                   1276 ;	../LED_Manager/led.c:239: if(primaryCount > 200){
      002895 E5 31            [12] 1277 	mov	a,_play_macro_primaryCount_65536_55
      002897 24 37            [12] 1278 	add	a,#0xff - 0xc8
      002899 50 04            [24] 1279 	jnc	00158$
                                   1280 ;	../LED_Manager/led.c:240: primaryCount--;
      00289B 15 31            [12] 1281 	dec	_play_macro_primaryCount_65536_55
      00289D 80 1D            [24] 1282 	sjmp	00162$
      00289F                       1283 00158$:
                                   1284 ;	../LED_Manager/led.c:241: } else if(primaryCount > 130){
      00289F E5 31            [12] 1285 	mov	a,_play_macro_primaryCount_65536_55
      0028A1 24 7D            [12] 1286 	add	a,#0xff - 0x82
      0028A3 50 09            [24] 1287 	jnc	00155$
                                   1288 ;	../LED_Manager/led.c:242: primaryCount-=2;
      0028A5 E5 31            [12] 1289 	mov	a,_play_macro_primaryCount_65536_55
      0028A7 FF               [12] 1290 	mov	r7,a
      0028A8 24 FE            [12] 1291 	add	a,#0xfe
      0028AA F5 31            [12] 1292 	mov	_play_macro_primaryCount_65536_55,a
      0028AC 80 0E            [24] 1293 	sjmp	00162$
      0028AE                       1294 00155$:
                                   1295 ;	../LED_Manager/led.c:244: primaryCount-=3;
      0028AE E5 31            [12] 1296 	mov	a,_play_macro_primaryCount_65536_55
      0028B0 FF               [12] 1297 	mov	r7,a
      0028B1 24 FD            [12] 1298 	add	a,#0xfd
                                   1299 ;	../LED_Manager/led.c:245: if(primaryCount > 200){
      0028B3 F5 31            [12] 1300 	mov  _play_macro_primaryCount_65536_55,a
      0028B5 24 37            [12] 1301 	add	a,#0xff - 0xc8
      0028B7 50 03            [24] 1302 	jnc	00162$
                                   1303 ;	../LED_Manager/led.c:246: primaryCount = 0;
      0028B9 75 31 00         [24] 1304 	mov	_play_macro_primaryCount_65536_55,#0x00
      0028BC                       1305 00162$:
                                   1306 ;	../LED_Manager/led.c:251: set_leds(primaryCount, primaryCount, primaryCount);
      0028BC C0 31            [24] 1307 	push	_play_macro_primaryCount_65536_55
      0028BE C0 31            [24] 1308 	push	_play_macro_primaryCount_65536_55
      0028C0 85 31 82         [24] 1309 	mov	dpl,_play_macro_primaryCount_65536_55
      0028C3 12 2A 7B         [24] 1310 	lcall	_set_leds
      0028C6 15 81            [12] 1311 	dec	sp
      0028C8 15 81            [12] 1312 	dec	sp
                                   1313 ;	../LED_Manager/led.c:254: break;
      0028CA 02 29 A4         [24] 1314 	ljmp	00187$
                                   1315 ;	../LED_Manager/led.c:255: case OPTION_MACRO_WHITE: //w
      0028CD                       1316 00165$:
                                   1317 ;	../LED_Manager/led.c:256: whiteout();
      0028CD 12 2A 1D         [24] 1318 	lcall	_whiteout
                                   1319 ;	../LED_Manager/led.c:257: break;
      0028D0 02 29 A4         [24] 1320 	ljmp	00187$
                                   1321 ;	../LED_Manager/led.c:258: case 69:
      0028D3                       1322 00166$:
                                   1323 ;	../LED_Manager/led.c:259: if(tock < 32){
      0028D3 74 E0            [12] 1324 	mov	a,#0x100 - 0x20
      0028D5 25 30            [12] 1325 	add	a,_play_macro_tock_65536_55
      0028D7 40 3F            [24] 1326 	jc	00183$
                                   1327 ;	../LED_Manager/led.c:261: if(rng & (SH_B >> tock)){
      0028D9 85 30 F0         [24] 1328 	mov	b,_play_macro_tock_65536_55
      0028DC 05 F0            [12] 1329 	inc	b
      0028DE 7C 00            [12] 1330 	mov	r4,#0x00
      0028E0 7D 00            [12] 1331 	mov	r5,#0x00
      0028E2 7E 00            [12] 1332 	mov	r6,#0x00
      0028E4 7F 80            [12] 1333 	mov	r7,#0x80
      0028E6 80 0D            [24] 1334 	sjmp	00384$
      0028E8                       1335 00383$:
      0028E8 C3               [12] 1336 	clr	c
      0028E9 EF               [12] 1337 	mov	a,r7
      0028EA 13               [12] 1338 	rrc	a
      0028EB FF               [12] 1339 	mov	r7,a
      0028EC EE               [12] 1340 	mov	a,r6
      0028ED 13               [12] 1341 	rrc	a
      0028EE FE               [12] 1342 	mov	r6,a
      0028EF ED               [12] 1343 	mov	a,r5
      0028F0 13               [12] 1344 	rrc	a
      0028F1 FD               [12] 1345 	mov	r5,a
      0028F2 EC               [12] 1346 	mov	a,r4
      0028F3 13               [12] 1347 	rrc	a
      0028F4 FC               [12] 1348 	mov	r4,a
      0028F5                       1349 00384$:
      0028F5 D5 F0 F0         [24] 1350 	djnz	b,00383$
      0028F8 EC               [12] 1351 	mov	a,r4
      0028F9 54 BA            [12] 1352 	anl	a,#0xba
      0028FB 70 0F            [24] 1353 	jnz	00385$
      0028FD ED               [12] 1354 	mov	a,r5
      0028FE 54 B8            [12] 1355 	anl	a,#0xb8
      002900 70 0A            [24] 1356 	jnz	00385$
      002902 EE               [12] 1357 	mov	a,r6
      002903 54 3B            [12] 1358 	anl	a,#0x3b
      002905 70 05            [24] 1359 	jnz	00385$
      002907 EF               [12] 1360 	mov	a,r7
      002908 54 EE            [12] 1361 	anl	a,#0xee
      00290A 60 06            [24] 1362 	jz	00168$
      00290C                       1363 00385$:
                                   1364 ;	../LED_Manager/led.c:262: whiteout(); //White - Worth
      00290C 12 2A 1D         [24] 1365 	lcall	_whiteout
      00290F 02 29 A4         [24] 1366 	ljmp	00187$
      002912                       1367 00168$:
                                   1368 ;	../LED_Manager/led.c:264: blackout();
      002912 12 2A 2E         [24] 1369 	lcall	_blackout
      002915 02 29 A4         [24] 1370 	ljmp	00187$
      002918                       1371 00183$:
                                   1372 ;	../LED_Manager/led.c:266: } else if(tock < 64){
      002918 74 C0            [12] 1373 	mov	a,#0x100 - 0x40
      00291A 25 30            [12] 1374 	add	a,_play_macro_tock_65536_55
      00291C 40 41            [24] 1375 	jc	00180$
                                   1376 ;	../LED_Manager/led.c:268: if(rng & (SH_B >> (tock - 32))){
      00291E E5 30            [12] 1377 	mov	a,_play_macro_tock_65536_55
      002920 24 E0            [12] 1378 	add	a,#0xe0
      002922 FF               [12] 1379 	mov	r7,a
      002923 8F F0            [24] 1380 	mov	b,r7
      002925 05 F0            [12] 1381 	inc	b
      002927 7F 00            [12] 1382 	mov	r7,#0x00
      002929 7E 00            [12] 1383 	mov	r6,#0x00
      00292B 7D 00            [12] 1384 	mov	r5,#0x00
      00292D 7C 80            [12] 1385 	mov	r4,#0x80
      00292F 80 0D            [24] 1386 	sjmp	00388$
      002931                       1387 00387$:
      002931 C3               [12] 1388 	clr	c
      002932 EC               [12] 1389 	mov	a,r4
      002933 13               [12] 1390 	rrc	a
      002934 FC               [12] 1391 	mov	r4,a
      002935 ED               [12] 1392 	mov	a,r5
      002936 13               [12] 1393 	rrc	a
      002937 FD               [12] 1394 	mov	r5,a
      002938 EE               [12] 1395 	mov	a,r6
      002939 13               [12] 1396 	rrc	a
      00293A FE               [12] 1397 	mov	r6,a
      00293B EF               [12] 1398 	mov	a,r7
      00293C 13               [12] 1399 	rrc	a
      00293D FF               [12] 1400 	mov	r7,a
      00293E                       1401 00388$:
      00293E D5 F0 F0         [24] 1402 	djnz	b,00387$
      002941 EF               [12] 1403 	mov	a,r7
      002942 54 38            [12] 1404 	anl	a,#0x38
      002944 70 0F            [24] 1405 	jnz	00389$
      002946 EE               [12] 1406 	mov	a,r6
      002947 54 BA            [12] 1407 	anl	a,#0xba
      002949 70 0A            [24] 1408 	jnz	00389$
      00294B ED               [12] 1409 	mov	a,r5
      00294C 54 B8            [12] 1410 	anl	a,#0xb8
      00294E 70 05            [24] 1411 	jnz	00389$
      002950 EC               [12] 1412 	mov	a,r4
      002951 54 28            [12] 1413 	anl	a,#0x28
      002953 60 05            [24] 1414 	jz	00171$
      002955                       1415 00389$:
                                   1416 ;	../LED_Manager/led.c:269: whiteout(); //White - Worth
      002955 12 2A 1D         [24] 1417 	lcall	_whiteout
      002958 80 4A            [24] 1418 	sjmp	00187$
      00295A                       1419 00171$:
                                   1420 ;	../LED_Manager/led.c:271: blackout();
      00295A 12 2A 2E         [24] 1421 	lcall	_blackout
      00295D 80 45            [24] 1422 	sjmp	00187$
      00295F                       1423 00180$:
                                   1424 ;	../LED_Manager/led.c:273: } else if(tock < 83){
      00295F 74 AD            [12] 1425 	mov	a,#0x100 - 0x53
      002961 25 30            [12] 1426 	add	a,_play_macro_tock_65536_55
      002963 40 37            [24] 1427 	jc	00177$
                                   1428 ;	../LED_Manager/led.c:275: if(rng & (SH_B >> (tock - 64))){
      002965 E5 30            [12] 1429 	mov	a,_play_macro_tock_65536_55
      002967 24 C0            [12] 1430 	add	a,#0xc0
      002969 FF               [12] 1431 	mov	r7,a
      00296A 8F F0            [24] 1432 	mov	b,r7
      00296C 05 F0            [12] 1433 	inc	b
      00296E 7F 00            [12] 1434 	mov	r7,#0x00
      002970 7E 00            [12] 1435 	mov	r6,#0x00
      002972 7D 00            [12] 1436 	mov	r5,#0x00
      002974 7C 80            [12] 1437 	mov	r4,#0x80
      002976 80 0D            [24] 1438 	sjmp	00392$
      002978                       1439 00391$:
      002978 C3               [12] 1440 	clr	c
      002979 EC               [12] 1441 	mov	a,r4
      00297A 13               [12] 1442 	rrc	a
      00297B FC               [12] 1443 	mov	r4,a
      00297C ED               [12] 1444 	mov	a,r5
      00297D 13               [12] 1445 	rrc	a
      00297E FD               [12] 1446 	mov	r5,a
      00297F EE               [12] 1447 	mov	a,r6
      002980 13               [12] 1448 	rrc	a
      002981 FE               [12] 1449 	mov	r6,a
      002982 EF               [12] 1450 	mov	a,r7
      002983 13               [12] 1451 	rrc	a
      002984 FF               [12] 1452 	mov	r7,a
      002985                       1453 00392$:
      002985 D5 F0 F0         [24] 1454 	djnz	b,00391$
      002988 ED               [12] 1455 	mov	a,r5
      002989 54 B8            [12] 1456 	anl	a,#0xb8
      00298B 70 05            [24] 1457 	jnz	00393$
      00298D EC               [12] 1458 	mov	a,r4
      00298E 54 EB            [12] 1459 	anl	a,#0xeb
      002990 60 05            [24] 1460 	jz	00174$
      002992                       1461 00393$:
                                   1462 ;	../LED_Manager/led.c:276: whiteout();
      002992 12 2A 1D         [24] 1463 	lcall	_whiteout
      002995 80 0D            [24] 1464 	sjmp	00187$
      002997                       1465 00174$:
                                   1466 ;	../LED_Manager/led.c:278: blackout();
      002997 12 2A 2E         [24] 1467 	lcall	_blackout
      00299A 80 08            [24] 1468 	sjmp	00187$
      00299C                       1469 00177$:
                                   1470 ;	../LED_Manager/led.c:281: tock = 0;
      00299C 75 30 00         [24] 1471 	mov	_play_macro_tock_65536_55,#0x00
                                   1472 ;	../LED_Manager/led.c:283: break;
                                   1473 ;	../LED_Manager/led.c:284: default:
      00299F 80 03            [24] 1474 	sjmp	00187$
      0029A1                       1475 00185$:
                                   1476 ;	../LED_Manager/led.c:285: blackout();
      0029A1 12 2A 2E         [24] 1477 	lcall	_blackout
                                   1478 ;	../LED_Manager/led.c:286: }
      0029A4                       1479 00187$:
                                   1480 ;	../LED_Manager/led.c:288: }
      0029A4 85 1A 81         [24] 1481 	mov	sp,_bp
      0029A7 D0 1A            [24] 1482 	pop	_bp
      0029A9 22               [24] 1483 	ret
                                   1484 ;------------------------------------------------------------
                                   1485 ;Allocation info for local variables in function 'color_wheel'
                                   1486 ;------------------------------------------------------------
                                   1487 ;color                     Allocated to registers r6 
                                   1488 ;------------------------------------------------------------
                                   1489 ;	../LED_Manager/led.c:290: void color_wheel(uint8_t color){
                                   1490 ;	-----------------------------------------
                                   1491 ;	 function color_wheel
                                   1492 ;	-----------------------------------------
      0029AA                       1493 _color_wheel:
      0029AA AF 82            [24] 1494 	mov	r7,dpl
                                   1495 ;	../LED_Manager/led.c:292: if(color < 85){
      0029AC BF 55 00         [24] 1496 	cjne	r7,#0x55,00119$
      0029AF                       1497 00119$:
      0029AF 50 20            [24] 1498 	jnc	00105$
                                   1499 ;	../LED_Manager/led.c:293: set_leds(color * 3, 255 - color * 3, 0);
      0029B1 8F 06            [24] 1500 	mov	ar6,r7
      0029B3 EE               [12] 1501 	mov	a,r6
      0029B4 75 F0 03         [24] 1502 	mov	b,#0x03
      0029B7 A4               [48] 1503 	mul	ab
      0029B8 D3               [12] 1504 	setb	c
      0029B9 94 FF            [12] 1505 	subb	a,#0xff
      0029BB F4               [12] 1506 	cpl	a
      0029BC FE               [12] 1507 	mov	r6,a
      0029BD EF               [12] 1508 	mov	a,r7
      0029BE 75 F0 03         [24] 1509 	mov	b,#0x03
      0029C1 A4               [48] 1510 	mul	ab
      0029C2 F5 82            [12] 1511 	mov	dpl,a
      0029C4 E4               [12] 1512 	clr	a
      0029C5 C0 E0            [24] 1513 	push	acc
      0029C7 C0 06            [24] 1514 	push	ar6
      0029C9 12 2A 7B         [24] 1515 	lcall	_set_leds
      0029CC 15 81            [12] 1516 	dec	sp
      0029CE 15 81            [12] 1517 	dec	sp
      0029D0 22               [24] 1518 	ret
      0029D1                       1519 00105$:
                                   1520 ;	../LED_Manager/led.c:294: } else if(color < 170){
      0029D1 BF AA 00         [24] 1521 	cjne	r7,#0xaa,00121$
      0029D4                       1522 00121$:
      0029D4 50 23            [24] 1523 	jnc	00102$
                                   1524 ;	../LED_Manager/led.c:295: color -= 85;
      0029D6 8F 06            [24] 1525 	mov	ar6,r7
      0029D8 EE               [12] 1526 	mov	a,r6
      0029D9 24 AB            [12] 1527 	add	a,#0xab
                                   1528 ;	../LED_Manager/led.c:296: set_leds(255 - color * 3, 0, color * 3);
      0029DB FE               [12] 1529 	mov	r6,a
      0029DC 75 F0 03         [24] 1530 	mov	b,#0x03
      0029DF A4               [48] 1531 	mul	ab
      0029E0 FD               [12] 1532 	mov	r5,a
      0029E1 EE               [12] 1533 	mov	a,r6
      0029E2 75 F0 03         [24] 1534 	mov	b,#0x03
      0029E5 A4               [48] 1535 	mul	ab
      0029E6 D3               [12] 1536 	setb	c
      0029E7 94 FF            [12] 1537 	subb	a,#0xff
      0029E9 F4               [12] 1538 	cpl	a
      0029EA F5 82            [12] 1539 	mov	dpl,a
      0029EC C0 05            [24] 1540 	push	ar5
      0029EE E4               [12] 1541 	clr	a
      0029EF C0 E0            [24] 1542 	push	acc
      0029F1 12 2A 7B         [24] 1543 	lcall	_set_leds
      0029F4 15 81            [12] 1544 	dec	sp
      0029F6 15 81            [12] 1545 	dec	sp
      0029F8 22               [24] 1546 	ret
      0029F9                       1547 00102$:
                                   1548 ;	../LED_Manager/led.c:298: color -= 170;
      0029F9 EF               [12] 1549 	mov	a,r7
      0029FA 24 56            [12] 1550 	add	a,#0x56
                                   1551 ;	../LED_Manager/led.c:299: set_leds(0, color * 3, 255 - color * 3);
      0029FC FF               [12] 1552 	mov	r7,a
      0029FD FE               [12] 1553 	mov	r6,a
      0029FE EE               [12] 1554 	mov	a,r6
      0029FF 75 F0 03         [24] 1555 	mov	b,#0x03
      002A02 A4               [48] 1556 	mul	ab
      002A03 D3               [12] 1557 	setb	c
      002A04 94 FF            [12] 1558 	subb	a,#0xff
      002A06 F4               [12] 1559 	cpl	a
      002A07 FE               [12] 1560 	mov	r6,a
      002A08 EF               [12] 1561 	mov	a,r7
      002A09 75 F0 03         [24] 1562 	mov	b,#0x03
      002A0C A4               [48] 1563 	mul	ab
      002A0D FF               [12] 1564 	mov	r7,a
      002A0E C0 06            [24] 1565 	push	ar6
      002A10 C0 07            [24] 1566 	push	ar7
      002A12 75 82 00         [24] 1567 	mov	dpl,#0x00
      002A15 12 2A 7B         [24] 1568 	lcall	_set_leds
      002A18 15 81            [12] 1569 	dec	sp
      002A1A 15 81            [12] 1570 	dec	sp
                                   1571 ;	../LED_Manager/led.c:301: }
      002A1C 22               [24] 1572 	ret
                                   1573 ;------------------------------------------------------------
                                   1574 ;Allocation info for local variables in function 'whiteout'
                                   1575 ;------------------------------------------------------------
                                   1576 ;	../LED_Manager/led.c:303: void whiteout(){
                                   1577 ;	-----------------------------------------
                                   1578 ;	 function whiteout
                                   1579 ;	-----------------------------------------
      002A1D                       1580 _whiteout:
                                   1581 ;	../LED_Manager/led.c:304: set_leds(0xFF, 0xFF, 0xFF);
      002A1D 74 FF            [12] 1582 	mov	a,#0xff
      002A1F C0 E0            [24] 1583 	push	acc
      002A21 C0 E0            [24] 1584 	push	acc
      002A23 75 82 FF         [24] 1585 	mov	dpl,#0xff
      002A26 12 2A 7B         [24] 1586 	lcall	_set_leds
      002A29 15 81            [12] 1587 	dec	sp
      002A2B 15 81            [12] 1588 	dec	sp
                                   1589 ;	../LED_Manager/led.c:305: }
      002A2D 22               [24] 1590 	ret
                                   1591 ;------------------------------------------------------------
                                   1592 ;Allocation info for local variables in function 'blackout'
                                   1593 ;------------------------------------------------------------
                                   1594 ;	../LED_Manager/led.c:307: void blackout(){
                                   1595 ;	-----------------------------------------
                                   1596 ;	 function blackout
                                   1597 ;	-----------------------------------------
      002A2E                       1598 _blackout:
                                   1599 ;	../LED_Manager/led.c:308: set_leds(0,0,0);
      002A2E E4               [12] 1600 	clr	a
      002A2F C0 E0            [24] 1601 	push	acc
      002A31 C0 E0            [24] 1602 	push	acc
      002A33 75 82 00         [24] 1603 	mov	dpl,#0x00
      002A36 12 2A 7B         [24] 1604 	lcall	_set_leds
      002A39 15 81            [12] 1605 	dec	sp
      002A3B 15 81            [12] 1606 	dec	sp
                                   1607 ;	../LED_Manager/led.c:309: }
      002A3D 22               [24] 1608 	ret
                                   1609 ;------------------------------------------------------------
                                   1610 ;Allocation info for local variables in function 'rngU32'
                                   1611 ;------------------------------------------------------------
                                   1612 ;past                      Allocated with name '_rngU32_past_65536_106'
                                   1613 ;present                   Allocated with name '_rngU32_present_65536_106'
                                   1614 ;------------------------------------------------------------
                                   1615 ;	../LED_Manager/led.c:312: uint32_t rngU32(){
                                   1616 ;	-----------------------------------------
                                   1617 ;	 function rngU32
                                   1618 ;	-----------------------------------------
      002A3E                       1619 _rngU32:
                                   1620 ;	../LED_Manager/led.c:316: present = past + present;
      002A3E E5 38            [12] 1621 	mov	a,_rngU32_present_65536_106
      002A40 25 34            [12] 1622 	add	a,_rngU32_past_65536_106
      002A42 F5 38            [12] 1623 	mov	_rngU32_present_65536_106,a
      002A44 E5 39            [12] 1624 	mov	a,(_rngU32_present_65536_106 + 1)
      002A46 35 35            [12] 1625 	addc	a,(_rngU32_past_65536_106 + 1)
      002A48 F5 39            [12] 1626 	mov	(_rngU32_present_65536_106 + 1),a
      002A4A E5 3A            [12] 1627 	mov	a,(_rngU32_present_65536_106 + 2)
      002A4C 35 36            [12] 1628 	addc	a,(_rngU32_past_65536_106 + 2)
      002A4E F5 3A            [12] 1629 	mov	(_rngU32_present_65536_106 + 2),a
      002A50 E5 3B            [12] 1630 	mov	a,(_rngU32_present_65536_106 + 3)
      002A52 35 37            [12] 1631 	addc	a,(_rngU32_past_65536_106 + 3)
      002A54 F5 3B            [12] 1632 	mov	(_rngU32_present_65536_106 + 3),a
                                   1633 ;	../LED_Manager/led.c:317: past = present - past;
      002A56 E5 38            [12] 1634 	mov	a,_rngU32_present_65536_106
      002A58 C3               [12] 1635 	clr	c
      002A59 95 34            [12] 1636 	subb	a,_rngU32_past_65536_106
      002A5B F5 34            [12] 1637 	mov	_rngU32_past_65536_106,a
      002A5D E5 39            [12] 1638 	mov	a,(_rngU32_present_65536_106 + 1)
      002A5F 95 35            [12] 1639 	subb	a,(_rngU32_past_65536_106 + 1)
      002A61 F5 35            [12] 1640 	mov	(_rngU32_past_65536_106 + 1),a
      002A63 E5 3A            [12] 1641 	mov	a,(_rngU32_present_65536_106 + 2)
      002A65 95 36            [12] 1642 	subb	a,(_rngU32_past_65536_106 + 2)
      002A67 F5 36            [12] 1643 	mov	(_rngU32_past_65536_106 + 2),a
      002A69 E5 3B            [12] 1644 	mov	a,(_rngU32_present_65536_106 + 3)
      002A6B 95 37            [12] 1645 	subb	a,(_rngU32_past_65536_106 + 3)
      002A6D F5 37            [12] 1646 	mov	(_rngU32_past_65536_106 + 3),a
                                   1647 ;	../LED_Manager/led.c:319: return present;
      002A6F 85 38 82         [24] 1648 	mov	dpl,_rngU32_present_65536_106
      002A72 85 39 83         [24] 1649 	mov	dph,(_rngU32_present_65536_106 + 1)
      002A75 85 3A F0         [24] 1650 	mov	b,(_rngU32_present_65536_106 + 2)
      002A78 E5 3B            [12] 1651 	mov	a,(_rngU32_present_65536_106 + 3)
                                   1652 ;	../LED_Manager/led.c:320: }
      002A7A 22               [24] 1653 	ret
                                   1654 ;------------------------------------------------------------
                                   1655 ;Allocation info for local variables in function 'set_leds'
                                   1656 ;------------------------------------------------------------
                                   1657 ;green                     Allocated to stack - _bp -3
                                   1658 ;blue                      Allocated to stack - _bp -4
                                   1659 ;red                       Allocated to registers r7 
                                   1660 ;dimmer                    Allocated to registers r6 
                                   1661 ;------------------------------------------------------------
                                   1662 ;	../LED_Manager/led.c:322: void set_leds(uint8_t red, uint8_t green, uint8_t blue){
                                   1663 ;	-----------------------------------------
                                   1664 ;	 function set_leds
                                   1665 ;	-----------------------------------------
      002A7B                       1666 _set_leds:
      002A7B C0 1A            [24] 1667 	push	_bp
      002A7D 85 81 1A         [24] 1668 	mov	_bp,sp
      002A80 AF 82            [24] 1669 	mov	r7,dpl
                                   1670 ;	../LED_Manager/led.c:323: uint8_t dimmer = 0xFF;
      002A82 7E FF            [12] 1671 	mov	r6,#0xff
                                   1672 ;	../LED_Manager/led.c:325: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002A84 75 82 10         [24] 1673 	mov	dpl,#0x10
      002A87 C0 07            [24] 1674 	push	ar7
      002A89 C0 06            [24] 1675 	push	ar6
      002A8B 12 2F 00         [24] 1676 	lcall	_get_runtime_data
      002A8E E5 82            [12] 1677 	mov	a,dpl
      002A90 D0 06            [24] 1678 	pop	ar6
      002A92 D0 07            [24] 1679 	pop	ar7
      002A94 70 14            [24] 1680 	jnz	00104$
                                   1681 ;	../LED_Manager/led.c:326: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11){
      002A96 75 82 0E         [24] 1682 	mov	dpl,#0x0e
      002A99 C0 07            [24] 1683 	push	ar7
      002A9B C0 06            [24] 1684 	push	ar6
      002A9D 12 2F 00         [24] 1685 	lcall	_get_runtime_data
      002AA0 E5 82            [12] 1686 	mov	a,dpl
      002AA2 D0 06            [24] 1687 	pop	ar6
      002AA4 D0 07            [24] 1688 	pop	ar7
      002AA6 70 02            [24] 1689 	jnz	00104$
                                   1690 ;	../LED_Manager/led.c:327: dimmer = get_dmx_value(DMX_M11_DIMMER_INDEX);
      002AA8 AE 24            [24] 1691 	mov	r6,(_DMX + 0x0003)
      002AAA                       1692 00104$:
                                   1693 ;	../LED_Manager/led.c:331: if(dimmer == 0xFF){
      002AAA BE FF 12         [24] 1694 	cjne	r6,#0xff,00106$
                                   1695 ;	../LED_Manager/led.c:332: PWMDATA11H = red;
      002AAD 8F BD            [24] 1696 	mov	_PWMDATA11H,r7
                                   1697 ;	../LED_Manager/led.c:333: PWMDATA17H = green;
      002AAF E5 1A            [12] 1698 	mov	a,_bp
      002AB1 24 FD            [12] 1699 	add	a,#0xfd
      002AB3 F8               [12] 1700 	mov	r0,a
      002AB4 86 AD            [24] 1701 	mov	_PWMDATA17H,@r0
                                   1702 ;	../LED_Manager/led.c:334: PWMDATA14H = blue;
      002AB6 E5 1A            [12] 1703 	mov	a,_bp
      002AB8 24 FC            [12] 1704 	add	a,#0xfc
      002ABA F8               [12] 1705 	mov	r0,a
      002ABB 86 B5            [24] 1706 	mov	_PWMDATA14H,@r0
      002ABD 80 59            [24] 1707 	sjmp	00108$
      002ABF                       1708 00106$:
                                   1709 ;	../LED_Manager/led.c:336: PWMDATA11H = ((uint8_t)((((uint16_t) red) * ((uint16_t)dimmer)) >> 8));
      002ABF 7D 00            [12] 1710 	mov	r5,#0x00
      002AC1 7C 00            [12] 1711 	mov	r4,#0x00
      002AC3 C0 06            [24] 1712 	push	ar6
      002AC5 C0 04            [24] 1713 	push	ar4
      002AC7 C0 06            [24] 1714 	push	ar6
      002AC9 C0 04            [24] 1715 	push	ar4
      002ACB 8F 82            [24] 1716 	mov	dpl,r7
      002ACD 8D 83            [24] 1717 	mov	dph,r5
      002ACF 12 35 98         [24] 1718 	lcall	__mulint
      002AD2 AF 83            [24] 1719 	mov	r7,dph
      002AD4 15 81            [12] 1720 	dec	sp
      002AD6 15 81            [12] 1721 	dec	sp
      002AD8 D0 04            [24] 1722 	pop	ar4
      002ADA D0 06            [24] 1723 	pop	ar6
      002ADC 8F BD            [24] 1724 	mov	_PWMDATA11H,r7
                                   1725 ;	../LED_Manager/led.c:337: PWMDATA17H = ((uint8_t)((((uint16_t) green) * ((uint16_t)dimmer)) >> 8));
      002ADE E5 1A            [12] 1726 	mov	a,_bp
      002AE0 24 FD            [12] 1727 	add	a,#0xfd
      002AE2 F8               [12] 1728 	mov	r0,a
      002AE3 86 05            [24] 1729 	mov	ar5,@r0
      002AE5 7F 00            [12] 1730 	mov	r7,#0x00
      002AE7 C0 06            [24] 1731 	push	ar6
      002AE9 C0 04            [24] 1732 	push	ar4
      002AEB C0 06            [24] 1733 	push	ar6
      002AED C0 04            [24] 1734 	push	ar4
      002AEF 8D 82            [24] 1735 	mov	dpl,r5
      002AF1 8F 83            [24] 1736 	mov	dph,r7
      002AF3 12 35 98         [24] 1737 	lcall	__mulint
      002AF6 AF 83            [24] 1738 	mov	r7,dph
      002AF8 15 81            [12] 1739 	dec	sp
      002AFA 15 81            [12] 1740 	dec	sp
      002AFC 8F AD            [24] 1741 	mov	_PWMDATA17H,r7
                                   1742 ;	../LED_Manager/led.c:338: PWMDATA14H = ((uint8_t)((((uint16_t) blue) * ((uint16_t)dimmer)) >> 8));
      002AFE E5 1A            [12] 1743 	mov	a,_bp
      002B00 24 FC            [12] 1744 	add	a,#0xfc
      002B02 F8               [12] 1745 	mov	r0,a
      002B03 86 05            [24] 1746 	mov	ar5,@r0
      002B05 7F 00            [12] 1747 	mov	r7,#0x00
      002B07 8D 82            [24] 1748 	mov	dpl,r5
      002B09 8F 83            [24] 1749 	mov	dph,r7
      002B0B 12 35 98         [24] 1750 	lcall	__mulint
      002B0E AE 82            [24] 1751 	mov	r6,dpl
      002B10 AF 83            [24] 1752 	mov	r7,dph
      002B12 15 81            [12] 1753 	dec	sp
      002B14 15 81            [12] 1754 	dec	sp
      002B16 8F B5            [24] 1755 	mov	_PWMDATA14H,r7
      002B18                       1756 00108$:
                                   1757 ;	../LED_Manager/led.c:340: }
      002B18 D0 1A            [24] 1758 	pop	_bp
      002B1A 22               [24] 1759 	ret
                                   1760 	.area CSEG    (CODE)
                                   1761 	.area CONST   (CODE)
                                   1762 	.area XINIT   (CODE)
                                   1763 	.area CABS    (ABS,CODE)
