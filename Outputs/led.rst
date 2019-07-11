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
      000034                        219 _rngU32_past_65536_107:
      000034                        220 	.ds 4
      000038                        221 _rngU32_present_65536_107:
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
                                    307 ;past                      Allocated with name '_rngU32_past_65536_107'
                                    308 ;present                   Allocated with name '_rngU32_present_65536_107'
                                    309 ;------------------------------------------------------------
                                    310 ;	../LED_Manager/led.c:316: static uint32_t past = 1;
      0000DD 75 34 01         [24]  311 	mov	_rngU32_past_65536_107,#0x01
      0000E0 E4               [12]  312 	clr	a
      0000E1 F5 35            [12]  313 	mov	(_rngU32_past_65536_107 + 1),a
      0000E3 F5 36            [12]  314 	mov	(_rngU32_past_65536_107 + 2),a
      0000E5 F5 37            [12]  315 	mov	(_rngU32_past_65536_107 + 3),a
                                    316 ;	../LED_Manager/led.c:317: static uint32_t present = 1;
      0000E7 75 38 01         [24]  317 	mov	_rngU32_present_65536_107,#0x01
      0000EA F5 39            [12]  318 	mov	(_rngU32_present_65536_107 + 1),a
      0000EC F5 3A            [12]  319 	mov	(_rngU32_present_65536_107 + 2),a
      0000EE F5 3B            [12]  320 	mov	(_rngU32_present_65536_107 + 3),a
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
      0023C2                        343 _tick_led:
                           000007   344 	ar7 = 0x07
                           000006   345 	ar6 = 0x06
                           000005   346 	ar5 = 0x05
                           000004   347 	ar4 = 0x04
                           000003   348 	ar3 = 0x03
                           000002   349 	ar2 = 0x02
                           000001   350 	ar1 = 0x01
                           000000   351 	ar0 = 0x00
      0023C2 C0 1A            [24]  352 	push	_bp
      0023C4 85 81 1A         [24]  353 	mov	_bp,sp
      0023C7 C0 82            [24]  354 	push	dpl
      0023C9 C0 83            [24]  355 	push	dph
      0023CB C0 F0            [24]  356 	push	b
      0023CD C0 E0            [24]  357 	push	acc
                                    358 ;	../LED_Manager/led.c:27: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0023CF 75 82 10         [24]  359 	mov	dpl,#0x10
      0023D2 12 2F 91         [24]  360 	lcall	_get_runtime_data
      0023D5 E5 82            [12]  361 	mov	a,dpl
      0023D7 60 03            [24]  362 	jz	00227$
      0023D9 02 25 35         [24]  363 	ljmp	00143$
      0023DC                        364 00227$:
                                    365 ;	../LED_Manager/led.c:28: switch(get_runtime_data(MODE_INDEX)){
      0023DC 75 82 0E         [24]  366 	mov	dpl,#0x0e
      0023DF 12 2F 91         [24]  367 	lcall	_get_runtime_data
      0023E2 AB 82            [24]  368 	mov	r3,dpl
      0023E4 BB 00 02         [24]  369 	cjne	r3,#0x00,00228$
      0023E7 80 09            [24]  370 	sjmp	00101$
      0023E9                        371 00228$:
      0023E9 BB 01 03         [24]  372 	cjne	r3,#0x01,00229$
      0023EC 02 24 C4         [24]  373 	ljmp	00119$
      0023EF                        374 00229$:
      0023EF 02 25 2F         [24]  375 	ljmp	00129$
                                    376 ;	../LED_Manager/led.c:29: case OPTION_DMX_MODE_11:
      0023F2                        377 00101$:
                                    378 ;	../LED_Manager/led.c:30: value = get_dmx_value(DMX_M11_MACRO_INDEX);
                                    379 ;	../LED_Manager/led.c:32: if(value > DMX_MACRO_NONE){
      0023F2 E5 29            [12]  380 	mov	a,(_DMX + 0x0008)
      0023F4 FB               [12]  381 	mov	r3,a
      0023F5 24 EB            [12]  382 	add	a,#0xff - 0x14
      0023F7 50 5E            [24]  383 	jnc	00117$
                                    384 ;	../LED_Manager/led.c:33: if(value <= DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
      0023F9 EB               [12]  385 	mov	a,r3
      0023FA 24 6B            [12]  386 	add	a,#0xff - 0x94
      0023FC 40 0F            [24]  387 	jc	00106$
                                    388 ;	../LED_Manager/led.c:34: color_wheel((value - DMX_MACRO_NONE - 1) << 1);
      0023FE 8B 02            [24]  389 	mov	ar2,r3
      002400 EA               [12]  390 	mov	a,r2
      002401 24 EB            [12]  391 	add	a,#0xeb
      002403 25 E0            [12]  392 	add	a,acc
      002405 F5 82            [12]  393 	mov	dpl,a
      002407 12 2A 3B         [24]  394 	lcall	_color_wheel
      00240A 02 25 EA         [24]  395 	ljmp	00145$
      00240D                        396 00106$:
                                    397 ;	../LED_Manager/led.c:36: dimmer = get_dmx_value(DMX_M11_MACRO_SPEED_INDEX);
                                    398 ;	../LED_Manager/led.c:38: if(dimmer > 10){
      00240D E5 2A            [12]  399 	mov	a,(_DMX + 0x0009)
      00240F FA               [12]  400 	mov	r2,a
      002410 24 F5            [12]  401 	add	a,#0xff - 0x0a
      002412 50 26            [24]  402 	jnc	00103$
                                    403 ;	../LED_Manager/led.c:39: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      002414 EA               [12]  404 	mov	a,r2
      002415 24 FB            [12]  405 	add	a,#0xfb
      002417 FA               [12]  406 	mov	r2,a
      002418 8B 82            [24]  407 	mov	dpl,r3
      00241A C0 02            [24]  408 	push	ar2
      00241C 12 25 F0         [24]  409 	lcall	_dmx_to_macro
      00241F AF 82            [24]  410 	mov	r7,dpl
      002421 C0 07            [24]  411 	push	ar7
      002423 A8 1A            [24]  412 	mov	r0,_bp
      002425 08               [12]  413 	inc	r0
      002426 86 82            [24]  414 	mov	dpl,@r0
      002428 08               [12]  415 	inc	r0
      002429 86 83            [24]  416 	mov	dph,@r0
      00242B 08               [12]  417 	inc	r0
      00242C 86 F0            [24]  418 	mov	b,@r0
      00242E 08               [12]  419 	inc	r0
      00242F E6               [12]  420 	mov	a,@r0
      002430 12 26 35         [24]  421 	lcall	_play_macro
      002433 15 81            [12]  422 	dec	sp
      002435 15 81            [12]  423 	dec	sp
      002437 02 25 EA         [24]  424 	ljmp	00145$
      00243A                        425 00103$:
                                    426 ;	../LED_Manager/led.c:41: play_macro(1, dmx_to_macro(value), 0xFF);
      00243A 8B 82            [24]  427 	mov	dpl,r3
      00243C 12 25 F0         [24]  428 	lcall	_dmx_to_macro
      00243F AF 82            [24]  429 	mov	r7,dpl
      002441 74 FF            [12]  430 	mov	a,#0xff
      002443 C0 E0            [24]  431 	push	acc
      002445 C0 07            [24]  432 	push	ar7
      002447 90 00 01         [24]  433 	mov	dptr,#(0x01&0x00ff)
      00244A E4               [12]  434 	clr	a
      00244B F5 F0            [12]  435 	mov	b,a
      00244D 12 26 35         [24]  436 	lcall	_play_macro
      002450 15 81            [12]  437 	dec	sp
      002452 15 81            [12]  438 	dec	sp
      002454 02 25 EA         [24]  439 	ljmp	00145$
      002457                        440 00117$:
                                    441 ;	../LED_Manager/led.c:46: strobe = get_dmx_value(DMX_M11_STROBE_INDEX);
                                    442 ;	../LED_Manager/led.c:48: if(strobe > 10){
      002457 E5 28            [12]  443 	mov	a,(_DMX + 0x0007)
      002459 FF               [12]  444 	mov	r7,a
      00245A 24 F5            [12]  445 	add	a,#0xff - 0x0a
      00245C 50 48            [24]  446 	jnc	00111$
                                    447 ;	../LED_Manager/led.c:49: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      00245E 7E 00            [12]  448 	mov	r6,#0x00
      002460 EF               [12]  449 	mov	a,r7
      002461 2F               [12]  450 	add	a,r7
      002462 FF               [12]  451 	mov	r7,a
      002463 EE               [12]  452 	mov	a,r6
      002464 33               [12]  453 	rlc	a
      002465 FE               [12]  454 	mov	r6,a
      002466 74 1C            [12]  455 	mov	a,#0x1c
      002468 C3               [12]  456 	clr	c
      002469 9F               [12]  457 	subb	a,r7
      00246A FF               [12]  458 	mov	r7,a
      00246B 74 02            [12]  459 	mov	a,#0x02
      00246D 9E               [12]  460 	subb	a,r6
      00246E FE               [12]  461 	mov	r6,a
      00246F 33               [12]  462 	rlc	a
      002470 95 E0            [12]  463 	subb	a,acc
      002472 FD               [12]  464 	mov	r5,a
      002473 FC               [12]  465 	mov	r4,a
      002474 C0 07            [24]  466 	push	ar7
      002476 C0 06            [24]  467 	push	ar6
      002478 C0 05            [24]  468 	push	ar5
      00247A C0 04            [24]  469 	push	ar4
      00247C A8 1A            [24]  470 	mov	r0,_bp
      00247E 08               [12]  471 	inc	r0
      00247F 86 82            [24]  472 	mov	dpl,@r0
      002481 08               [12]  473 	inc	r0
      002482 86 83            [24]  474 	mov	dph,@r0
      002484 08               [12]  475 	inc	r0
      002485 86 F0            [24]  476 	mov	b,@r0
      002487 08               [12]  477 	inc	r0
      002488 E6               [12]  478 	mov	a,@r0
      002489 12 36 68         [24]  479 	lcall	__modulong
      00248C AC 82            [24]  480 	mov	r4,dpl
      00248E AD 83            [24]  481 	mov	r5,dph
      002490 AE F0            [24]  482 	mov	r6,b
      002492 FF               [12]  483 	mov	r7,a
      002493 E5 81            [12]  484 	mov	a,sp
      002495 24 FC            [12]  485 	add	a,#0xfc
      002497 F5 81            [12]  486 	mov	sp,a
      002499 EC               [12]  487 	mov	a,r4
      00249A 4D               [12]  488 	orl	a,r5
      00249B 4E               [12]  489 	orl	a,r6
      00249C 4F               [12]  490 	orl	a,r7
      00249D 70 0A            [24]  491 	jnz	00112$
                                    492 ;	../LED_Manager/led.c:50: on = ~on;
      00249F E5 2F            [12]  493 	mov	a,_tick_led_on_65536_17
      0024A1 F4               [12]  494 	cpl	a
      0024A2 F5 2F            [12]  495 	mov	_tick_led_on_65536_17,a
      0024A4 80 03            [24]  496 	sjmp	00112$
      0024A6                        497 00111$:
                                    498 ;	../LED_Manager/led.c:53: on = 0xFF;
      0024A6 75 2F FF         [24]  499 	mov	_tick_led_on_65536_17,#0xff
      0024A9                        500 00112$:
                                    501 ;	../LED_Manager/led.c:56: if(on){
      0024A9 E5 2F            [12]  502 	mov	a,_tick_led_on_65536_17
      0024AB 60 11            [24]  503 	jz	00114$
                                    504 ;	../LED_Manager/led.c:60: get_dmx_value(DMX_M11_BLUE_INDEX));
                                    505 ;	../LED_Manager/led.c:59: get_dmx_value(DMX_M11_GREEN_INDEX),
                                    506 ;	../LED_Manager/led.c:58: set_leds(get_dmx_value(DMX_M11_RED_INDEX),
      0024AD 85 25 82         [24]  507 	mov	dpl,(_DMX + 0x0004)
      0024B0 C0 27            [24]  508 	push	(_DMX + 0x0006)
      0024B2 C0 26            [24]  509 	push	(_DMX + 0x0005)
      0024B4 12 2B 0C         [24]  510 	lcall	_set_leds
      0024B7 15 81            [12]  511 	dec	sp
      0024B9 15 81            [12]  512 	dec	sp
      0024BB 02 25 EA         [24]  513 	ljmp	00145$
      0024BE                        514 00114$:
                                    515 ;	../LED_Manager/led.c:63: blackout();
      0024BE 12 2A BF         [24]  516 	lcall	_blackout
                                    517 ;	../LED_Manager/led.c:67: break;
      0024C1 02 25 EA         [24]  518 	ljmp	00145$
                                    519 ;	../LED_Manager/led.c:68: case OPTION_DMX_MODE_3: /* Only macros */
      0024C4                        520 00119$:
                                    521 ;	../LED_Manager/led.c:69: value = get_dmx_value(DMX_M3_MACRO_INDEX);
                                    522 ;	../LED_Manager/led.c:70: if(value > DMX_MACRO_NONE){
      0024C4 E5 22            [12]  523 	mov	a,(_DMX + 0x0001)
      0024C6 FF               [12]  524 	mov	r7,a
      0024C7 24 EB            [12]  525 	add	a,#0xff - 0x14
      0024C9 50 5E            [24]  526 	jnc	00127$
                                    527 ;	../LED_Manager/led.c:71: if(value < DMX_MACRO_COLOR_WHEEL){
      0024CB BF 94 00         [24]  528 	cjne	r7,#0x94,00237$
      0024CE                        529 00237$:
      0024CE 50 0F            [24]  530 	jnc	00124$
                                    531 ;	../LED_Manager/led.c:72: color_wheel((value - DMX_MACRO_NONE - 1) << 1);
      0024D0 8F 06            [24]  532 	mov	ar6,r7
      0024D2 EE               [12]  533 	mov	a,r6
      0024D3 24 EB            [12]  534 	add	a,#0xeb
      0024D5 25 E0            [12]  535 	add	a,acc
      0024D7 F5 82            [12]  536 	mov	dpl,a
      0024D9 12 2A 3B         [24]  537 	lcall	_color_wheel
      0024DC 02 25 EA         [24]  538 	ljmp	00145$
      0024DF                        539 00124$:
                                    540 ;	../LED_Manager/led.c:74: dimmer = get_dmx_value(DMX_M3_MACRO_SPEED_INDEX);
                                    541 ;	../LED_Manager/led.c:76: if(dimmer > 10){
      0024DF E5 23            [12]  542 	mov	a,(_DMX + 0x0002)
      0024E1 FE               [12]  543 	mov	r6,a
      0024E2 24 F5            [12]  544 	add	a,#0xff - 0x0a
      0024E4 50 26            [24]  545 	jnc	00121$
                                    546 ;	../LED_Manager/led.c:77: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      0024E6 EE               [12]  547 	mov	a,r6
      0024E7 24 FB            [12]  548 	add	a,#0xfb
      0024E9 FE               [12]  549 	mov	r6,a
      0024EA 8F 82            [24]  550 	mov	dpl,r7
      0024EC C0 06            [24]  551 	push	ar6
      0024EE 12 25 F0         [24]  552 	lcall	_dmx_to_macro
      0024F1 AD 82            [24]  553 	mov	r5,dpl
      0024F3 C0 05            [24]  554 	push	ar5
      0024F5 A8 1A            [24]  555 	mov	r0,_bp
      0024F7 08               [12]  556 	inc	r0
      0024F8 86 82            [24]  557 	mov	dpl,@r0
      0024FA 08               [12]  558 	inc	r0
      0024FB 86 83            [24]  559 	mov	dph,@r0
      0024FD 08               [12]  560 	inc	r0
      0024FE 86 F0            [24]  561 	mov	b,@r0
      002500 08               [12]  562 	inc	r0
      002501 E6               [12]  563 	mov	a,@r0
      002502 12 26 35         [24]  564 	lcall	_play_macro
      002505 15 81            [12]  565 	dec	sp
      002507 15 81            [12]  566 	dec	sp
      002509 02 25 EA         [24]  567 	ljmp	00145$
      00250C                        568 00121$:
                                    569 ;	../LED_Manager/led.c:79: play_macro(1, dmx_to_macro(value), 0xFF);
      00250C 8F 82            [24]  570 	mov	dpl,r7
      00250E 12 25 F0         [24]  571 	lcall	_dmx_to_macro
      002511 AF 82            [24]  572 	mov	r7,dpl
      002513 74 FF            [12]  573 	mov	a,#0xff
      002515 C0 E0            [24]  574 	push	acc
      002517 C0 07            [24]  575 	push	ar7
      002519 90 00 01         [24]  576 	mov	dptr,#(0x01&0x00ff)
      00251C E4               [12]  577 	clr	a
      00251D F5 F0            [12]  578 	mov	b,a
      00251F 12 26 35         [24]  579 	lcall	_play_macro
      002522 15 81            [12]  580 	dec	sp
      002524 15 81            [12]  581 	dec	sp
      002526 02 25 EA         [24]  582 	ljmp	00145$
      002529                        583 00127$:
                                    584 ;	../LED_Manager/led.c:83: blackout();
      002529 12 2A BF         [24]  585 	lcall	_blackout
                                    586 ;	../LED_Manager/led.c:85: break;
      00252C 02 25 EA         [24]  587 	ljmp	00145$
                                    588 ;	../LED_Manager/led.c:86: default:
      00252F                        589 00129$:
                                    590 ;	../LED_Manager/led.c:87: blackout();
      00252F 12 2A BF         [24]  591 	lcall	_blackout
                                    592 ;	../LED_Manager/led.c:89: }
      002532 02 25 EA         [24]  593 	ljmp	00145$
      002535                        594 00143$:
                                    595 ;	../LED_Manager/led.c:91: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
      002535 75 82 03         [24]  596 	mov	dpl,#0x03
      002538 12 2F 91         [24]  597 	lcall	_get_runtime_data
      00253B E5 82            [12]  598 	mov	a,dpl
      00253D 60 2B            [24]  599 	jz	00140$
                                    600 ;	../LED_Manager/led.c:92: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
      00253F 75 82 04         [24]  601 	mov	dpl,#0x04
      002542 12 2F 91         [24]  602 	lcall	_get_runtime_data
      002545 AF 82            [24]  603 	mov	r7,dpl
      002547 75 82 03         [24]  604 	mov	dpl,#0x03
      00254A C0 07            [24]  605 	push	ar7
      00254C 12 2F 91         [24]  606 	lcall	_get_runtime_data
      00254F AE 82            [24]  607 	mov	r6,dpl
      002551 C0 06            [24]  608 	push	ar6
      002553 A8 1A            [24]  609 	mov	r0,_bp
      002555 08               [12]  610 	inc	r0
      002556 86 82            [24]  611 	mov	dpl,@r0
      002558 08               [12]  612 	inc	r0
      002559 86 83            [24]  613 	mov	dph,@r0
      00255B 08               [12]  614 	inc	r0
      00255C 86 F0            [24]  615 	mov	b,@r0
      00255E 08               [12]  616 	inc	r0
      00255F E6               [12]  617 	mov	a,@r0
      002560 12 26 35         [24]  618 	lcall	_play_macro
      002563 15 81            [12]  619 	dec	sp
      002565 15 81            [12]  620 	dec	sp
      002567 02 25 EA         [24]  621 	ljmp	00145$
      00256A                        622 00140$:
                                    623 ;	../LED_Manager/led.c:95: strobe = get_runtime_data(STROBE_INDEX);
      00256A 75 82 08         [24]  624 	mov	dpl,#0x08
      00256D 12 2F 91         [24]  625 	lcall	_get_runtime_data
                                    626 ;	../LED_Manager/led.c:97: if(strobe){
      002570 E5 82            [12]  627 	mov	a,dpl
      002572 FF               [12]  628 	mov	r7,a
      002573 60 48            [24]  629 	jz	00134$
                                    630 ;	../LED_Manager/led.c:98: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      002575 7E 00            [12]  631 	mov	r6,#0x00
      002577 EF               [12]  632 	mov	a,r7
      002578 2F               [12]  633 	add	a,r7
      002579 FF               [12]  634 	mov	r7,a
      00257A EE               [12]  635 	mov	a,r6
      00257B 33               [12]  636 	rlc	a
      00257C FE               [12]  637 	mov	r6,a
      00257D 74 1C            [12]  638 	mov	a,#0x1c
      00257F C3               [12]  639 	clr	c
      002580 9F               [12]  640 	subb	a,r7
      002581 FF               [12]  641 	mov	r7,a
      002582 74 02            [12]  642 	mov	a,#0x02
      002584 9E               [12]  643 	subb	a,r6
      002585 FE               [12]  644 	mov	r6,a
      002586 33               [12]  645 	rlc	a
      002587 95 E0            [12]  646 	subb	a,acc
      002589 FD               [12]  647 	mov	r5,a
      00258A FC               [12]  648 	mov	r4,a
      00258B C0 07            [24]  649 	push	ar7
      00258D C0 06            [24]  650 	push	ar6
      00258F C0 05            [24]  651 	push	ar5
      002591 C0 04            [24]  652 	push	ar4
      002593 A8 1A            [24]  653 	mov	r0,_bp
      002595 08               [12]  654 	inc	r0
      002596 86 82            [24]  655 	mov	dpl,@r0
      002598 08               [12]  656 	inc	r0
      002599 86 83            [24]  657 	mov	dph,@r0
      00259B 08               [12]  658 	inc	r0
      00259C 86 F0            [24]  659 	mov	b,@r0
      00259E 08               [12]  660 	inc	r0
      00259F E6               [12]  661 	mov	a,@r0
      0025A0 12 36 68         [24]  662 	lcall	__modulong
      0025A3 AC 82            [24]  663 	mov	r4,dpl
      0025A5 AD 83            [24]  664 	mov	r5,dph
      0025A7 AE F0            [24]  665 	mov	r6,b
      0025A9 FF               [12]  666 	mov	r7,a
      0025AA E5 81            [12]  667 	mov	a,sp
      0025AC 24 FC            [12]  668 	add	a,#0xfc
      0025AE F5 81            [12]  669 	mov	sp,a
      0025B0 EC               [12]  670 	mov	a,r4
      0025B1 4D               [12]  671 	orl	a,r5
      0025B2 4E               [12]  672 	orl	a,r6
      0025B3 4F               [12]  673 	orl	a,r7
      0025B4 70 0A            [24]  674 	jnz	00135$
                                    675 ;	../LED_Manager/led.c:99: on = ~on;
      0025B6 E5 2F            [12]  676 	mov	a,_tick_led_on_65536_17
      0025B8 F4               [12]  677 	cpl	a
      0025B9 F5 2F            [12]  678 	mov	_tick_led_on_65536_17,a
      0025BB 80 03            [24]  679 	sjmp	00135$
      0025BD                        680 00134$:
                                    681 ;	../LED_Manager/led.c:102: on = 0xFF;
      0025BD 75 2F FF         [24]  682 	mov	_tick_led_on_65536_17,#0xff
      0025C0                        683 00135$:
                                    684 ;	../LED_Manager/led.c:105: if(on){
      0025C0 E5 2F            [12]  685 	mov	a,_tick_led_on_65536_17
      0025C2 60 23            [24]  686 	jz	00137$
                                    687 ;	../LED_Manager/led.c:106: set_leds(get_runtime_data(RED_INDEX), get_runtime_data(GREEN_INDEX), get_runtime_data(BLUE_INDEX));
      0025C4 75 82 07         [24]  688 	mov	dpl,#0x07
      0025C7 12 2F 91         [24]  689 	lcall	_get_runtime_data
      0025CA AF 82            [24]  690 	mov	r7,dpl
      0025CC 75 82 06         [24]  691 	mov	dpl,#0x06
      0025CF C0 07            [24]  692 	push	ar7
      0025D1 12 2F 91         [24]  693 	lcall	_get_runtime_data
      0025D4 AE 82            [24]  694 	mov	r6,dpl
      0025D6 75 82 05         [24]  695 	mov	dpl,#0x05
      0025D9 C0 06            [24]  696 	push	ar6
      0025DB 12 2F 91         [24]  697 	lcall	_get_runtime_data
      0025DE 12 2B 0C         [24]  698 	lcall	_set_leds
      0025E1 15 81            [12]  699 	dec	sp
      0025E3 15 81            [12]  700 	dec	sp
      0025E5 80 03            [24]  701 	sjmp	00145$
      0025E7                        702 00137$:
                                    703 ;	../LED_Manager/led.c:108: blackout();
      0025E7 12 2A BF         [24]  704 	lcall	_blackout
      0025EA                        705 00145$:
                                    706 ;	../LED_Manager/led.c:112: }
      0025EA 85 1A 81         [24]  707 	mov	sp,_bp
      0025ED D0 1A            [24]  708 	pop	_bp
      0025EF 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'dmx_to_macro'
                                    712 ;------------------------------------------------------------
                                    713 ;dmx_value                 Allocated to registers r7 
                                    714 ;------------------------------------------------------------
                                    715 ;	../LED_Manager/led.c:114: uint8_t dmx_to_macro(uint8_t dmx_value){
                                    716 ;	-----------------------------------------
                                    717 ;	 function dmx_to_macro
                                    718 ;	-----------------------------------------
      0025F0                        719 _dmx_to_macro:
                                    720 ;	../LED_Manager/led.c:116: if(dmx_value <= DMX_MACRO_WHITE){
      0025F0 E5 82            [12]  721 	mov	a,dpl
      0025F2 FF               [12]  722 	mov	r7,a
      0025F3 24 4B            [12]  723 	add	a,#0xff - 0xb4
      0025F5 40 04            [24]  724 	jc	00119$
                                    725 ;	../LED_Manager/led.c:117: return OPTION_MACRO_WHITE;
      0025F7 75 82 21         [24]  726 	mov	dpl,#0x21
      0025FA 22               [24]  727 	ret
      0025FB                        728 00119$:
                                    729 ;	../LED_Manager/led.c:118: } else if(dmx_value <= DMX_MACRO_RAINBOW){
      0025FB EF               [12]  730 	mov	a,r7
      0025FC 24 41            [12]  731 	add	a,#0xff - 0xbe
      0025FE 40 04            [24]  732 	jc	00116$
                                    733 ;	../LED_Manager/led.c:119: return OPTION_MACRO_RAINBOW_DMX;
      002600 75 82 01         [24]  734 	mov	dpl,#0x01
      002603 22               [24]  735 	ret
      002604                        736 00116$:
                                    737 ;	../LED_Manager/led.c:120: } else if(dmx_value <= DMX_MACRO_FIRE){
      002604 EF               [12]  738 	mov	a,r7
      002605 24 37            [12]  739 	add	a,#0xff - 0xc8
      002607 40 04            [24]  740 	jc	00113$
                                    741 ;	../LED_Manager/led.c:121: return OPTION_MACRO_FIRE_DMX;
      002609 75 82 02         [24]  742 	mov	dpl,#0x02
      00260C 22               [24]  743 	ret
      00260D                        744 00113$:
                                    745 ;	../LED_Manager/led.c:122: } else if(dmx_value <= DMX_MACRO_WATER){
      00260D EF               [12]  746 	mov	a,r7
      00260E 24 2D            [12]  747 	add	a,#0xff - 0xd2
      002610 40 04            [24]  748 	jc	00110$
                                    749 ;	../LED_Manager/led.c:123: return OPTION_MACRO_WATER_DMX;
      002612 75 82 03         [24]  750 	mov	dpl,#0x03
      002615 22               [24]  751 	ret
      002616                        752 00110$:
                                    753 ;	../LED_Manager/led.c:124: } else if(dmx_value <= DMX_MACRO_ACID){
      002616 EF               [12]  754 	mov	a,r7
      002617 24 23            [12]  755 	add	a,#0xff - 0xdc
      002619 40 04            [24]  756 	jc	00107$
                                    757 ;	../LED_Manager/led.c:125: return OPTION_MACRO_ACID_DMX;
      00261B 75 82 04         [24]  758 	mov	dpl,#0x04
      00261E 22               [24]  759 	ret
      00261F                        760 00107$:
                                    761 ;	../LED_Manager/led.c:126: } else if(dmx_value <= DMX_MACRO_ETHER){
      00261F EF               [12]  762 	mov	a,r7
      002620 24 19            [12]  763 	add	a,#0xff - 0xe6
      002622 40 04            [24]  764 	jc	00104$
                                    765 ;	../LED_Manager/led.c:127: return OPTION_MACRO_ETHER_DMX;
      002624 75 82 05         [24]  766 	mov	dpl,#0x05
      002627 22               [24]  767 	ret
      002628                        768 00104$:
                                    769 ;	../LED_Manager/led.c:128: } else if(dmx_value <= DMX_MACRO_STORM){
      002628 EF               [12]  770 	mov	a,r7
      002629 24 0F            [12]  771 	add	a,#0xff - 0xf0
      00262B 40 04            [24]  772 	jc	00108$
                                    773 ;	../LED_Manager/led.c:129: return OPTION_MACRO_STORM_DMX;
      00262D 75 82 06         [24]  774 	mov	dpl,#0x06
      002630 22               [24]  775 	ret
      002631                        776 00108$:
                                    777 ;	../LED_Manager/led.c:132: return 69; // ;)
      002631 75 82 45         [24]  778 	mov	dpl,#0x45
                                    779 ;	../LED_Manager/led.c:133: }
      002634 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'play_macro'
                                    783 ;------------------------------------------------------------
                                    784 ;macro                     Allocated to stack - _bp -3
                                    785 ;macro_speed               Allocated to stack - _bp -4
                                    786 ;tick                      Allocated to stack - _bp +1
                                    787 ;rng                       Allocated to stack - _bp +5
                                    788 ;changed                   Allocated to registers r3 
                                    789 ;tock                      Allocated with name '_play_macro_tock_65536_55'
                                    790 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
                                    791 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
                                    792 ;direction                 Allocated with name '_play_macro_direction_65536_55'
                                    793 ;------------------------------------------------------------
                                    794 ;	../LED_Manager/led.c:135: void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
                                    795 ;	-----------------------------------------
                                    796 ;	 function play_macro
                                    797 ;	-----------------------------------------
      002635                        798 _play_macro:
      002635 C0 1A            [24]  799 	push	_bp
      002637 85 81 1A         [24]  800 	mov	_bp,sp
      00263A C0 82            [24]  801 	push	dpl
      00263C C0 83            [24]  802 	push	dph
      00263E C0 F0            [24]  803 	push	b
      002640 C0 E0            [24]  804 	push	acc
      002642 E5 81            [12]  805 	mov	a,sp
      002644 24 04            [12]  806 	add	a,#0x04
      002646 F5 81            [12]  807 	mov	sp,a
                                    808 ;	../LED_Manager/led.c:140: uint32_t rng = 0;
      002648 E5 1A            [12]  809 	mov	a,_bp
      00264A 24 05            [12]  810 	add	a,#0x05
      00264C F8               [12]  811 	mov	r0,a
      00264D E4               [12]  812 	clr	a
      00264E F6               [12]  813 	mov	@r0,a
      00264F 08               [12]  814 	inc	r0
      002650 F6               [12]  815 	mov	@r0,a
      002651 08               [12]  816 	inc	r0
      002652 F6               [12]  817 	mov	@r0,a
      002653 08               [12]  818 	inc	r0
      002654 F6               [12]  819 	mov	@r0,a
                                    820 ;	../LED_Manager/led.c:141: uint8_t changed = 0;
      002655 7B 00            [12]  821 	mov	r3,#0x00
                                    822 ;	../LED_Manager/led.c:144: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
      002657 E5 1A            [12]  823 	mov	a,_bp
      002659 24 FC            [12]  824 	add	a,#0xfc
      00265B F8               [12]  825 	mov	r0,a
      00265C E6               [12]  826 	mov	a,@r0
      00265D C3               [12]  827 	clr	c
      00265E 13               [12]  828 	rrc	a
      00265F FC               [12]  829 	mov	r4,a
      002660 7D 00            [12]  830 	mov	r5,#0x00
      002662 74 85            [12]  831 	mov	a,#0x85
      002664 C3               [12]  832 	clr	c
      002665 9C               [12]  833 	subb	a,r4
      002666 FC               [12]  834 	mov	r4,a
      002667 E4               [12]  835 	clr	a
      002668 9D               [12]  836 	subb	a,r5
      002669 FD               [12]  837 	mov	r5,a
      00266A 33               [12]  838 	rlc	a
      00266B 95 E0            [12]  839 	subb	a,acc
      00266D FE               [12]  840 	mov	r6,a
      00266E FF               [12]  841 	mov	r7,a
      00266F C0 03            [24]  842 	push	ar3
      002671 C0 04            [24]  843 	push	ar4
      002673 C0 05            [24]  844 	push	ar5
      002675 C0 06            [24]  845 	push	ar6
      002677 C0 07            [24]  846 	push	ar7
      002679 A8 1A            [24]  847 	mov	r0,_bp
      00267B 08               [12]  848 	inc	r0
      00267C 86 82            [24]  849 	mov	dpl,@r0
      00267E 08               [12]  850 	inc	r0
      00267F 86 83            [24]  851 	mov	dph,@r0
      002681 08               [12]  852 	inc	r0
      002682 86 F0            [24]  853 	mov	b,@r0
      002684 08               [12]  854 	inc	r0
      002685 E6               [12]  855 	mov	a,@r0
      002686 12 36 68         [24]  856 	lcall	__modulong
      002689 AC 82            [24]  857 	mov	r4,dpl
      00268B AD 83            [24]  858 	mov	r5,dph
      00268D AE F0            [24]  859 	mov	r6,b
      00268F FF               [12]  860 	mov	r7,a
      002690 E5 81            [12]  861 	mov	a,sp
      002692 24 FC            [12]  862 	add	a,#0xfc
      002694 F5 81            [12]  863 	mov	sp,a
      002696 D0 03            [24]  864 	pop	ar3
      002698 EC               [12]  865 	mov	a,r4
      002699 4D               [12]  866 	orl	a,r5
      00269A 4E               [12]  867 	orl	a,r6
      00269B 4F               [12]  868 	orl	a,r7
      00269C 70 37            [24]  869 	jnz	00104$
                                    870 ;	../LED_Manager/led.c:145: changed = 0xFF;
      00269E 7B FF            [12]  871 	mov	r3,#0xff
                                    872 ;	../LED_Manager/led.c:146: rng = 0;
      0026A0 E5 1A            [12]  873 	mov	a,_bp
      0026A2 24 05            [12]  874 	add	a,#0x05
      0026A4 F8               [12]  875 	mov	r0,a
      0026A5 E4               [12]  876 	clr	a
      0026A6 F6               [12]  877 	mov	@r0,a
      0026A7 08               [12]  878 	inc	r0
      0026A8 F6               [12]  879 	mov	@r0,a
      0026A9 08               [12]  880 	inc	r0
      0026AA F6               [12]  881 	mov	@r0,a
      0026AB 08               [12]  882 	inc	r0
      0026AC F6               [12]  883 	mov	@r0,a
                                    884 ;	../LED_Manager/led.c:148: if(macro_speed){
      0026AD E5 1A            [12]  885 	mov	a,_bp
      0026AF 24 FC            [12]  886 	add	a,#0xfc
      0026B1 F8               [12]  887 	mov	r0,a
      0026B2 E6               [12]  888 	mov	a,@r0
      0026B3 60 20            [24]  889 	jz	00104$
                                    890 ;	../LED_Manager/led.c:149: tock++;
      0026B5 05 30            [12]  891 	inc	_play_macro_tock_65536_55
                                    892 ;	../LED_Manager/led.c:150: rng = rngU32();
      0026B7 C0 03            [24]  893 	push	ar3
      0026B9 12 2A CF         [24]  894 	lcall	_rngU32
      0026BC AC 82            [24]  895 	mov	r4,dpl
      0026BE AD 83            [24]  896 	mov	r5,dph
      0026C0 AE F0            [24]  897 	mov	r6,b
      0026C2 FF               [12]  898 	mov	r7,a
      0026C3 D0 03            [24]  899 	pop	ar3
      0026C5 E5 1A            [12]  900 	mov	a,_bp
      0026C7 24 05            [12]  901 	add	a,#0x05
      0026C9 F8               [12]  902 	mov	r0,a
      0026CA A6 04            [24]  903 	mov	@r0,ar4
      0026CC 08               [12]  904 	inc	r0
      0026CD A6 05            [24]  905 	mov	@r0,ar5
      0026CF 08               [12]  906 	inc	r0
      0026D0 A6 06            [24]  907 	mov	@r0,ar6
      0026D2 08               [12]  908 	inc	r0
      0026D3 A6 07            [24]  909 	mov	@r0,ar7
      0026D5                        910 00104$:
                                    911 ;	../LED_Manager/led.c:154: switch (macro)
      0026D5 E5 1A            [12]  912 	mov	a,_bp
      0026D7 24 FD            [12]  913 	add	a,#0xfd
      0026D9 F8               [12]  914 	mov	r0,a
      0026DA B6 01 02         [24]  915 	cjne	@r0,#0x01,00351$
      0026DD 80 54            [24]  916 	sjmp	00105$
      0026DF                        917 00351$:
      0026DF E5 1A            [12]  918 	mov	a,_bp
      0026E1 24 FD            [12]  919 	add	a,#0xfd
      0026E3 F8               [12]  920 	mov	r0,a
      0026E4 B6 02 02         [24]  921 	cjne	@r0,#0x02,00352$
      0026E7 80 53            [24]  922 	sjmp	00106$
      0026E9                        923 00352$:
      0026E9 E5 1A            [12]  924 	mov	a,_bp
      0026EB 24 FD            [12]  925 	add	a,#0xfd
      0026ED F8               [12]  926 	mov	r0,a
      0026EE E4               [12]  927 	clr	a
      0026EF B6 03 01         [24]  928 	cjne	@r0,#0x03,00353$
      0026F2 04               [12]  929 	inc	a
      0026F3                        930 00353$:
      0026F3 FF               [12]  931 	mov	r7,a
      0026F4 60 03            [24]  932 	jz	00355$
      0026F6 02 28 03         [24]  933 	ljmp	00122$
      0026F9                        934 00355$:
      0026F9 E5 1A            [12]  935 	mov	a,_bp
      0026FB 24 FD            [12]  936 	add	a,#0xfd
      0026FD F8               [12]  937 	mov	r0,a
      0026FE B6 04 03         [24]  938 	cjne	@r0,#0x04,00356$
      002701 02 28 03         [24]  939 	ljmp	00122$
      002704                        940 00356$:
      002704 E5 1A            [12]  941 	mov	a,_bp
      002706 24 FD            [12]  942 	add	a,#0xfd
      002708 F8               [12]  943 	mov	r0,a
      002709 B6 05 03         [24]  944 	cjne	@r0,#0x05,00357$
      00270C 02 28 03         [24]  945 	ljmp	00122$
      00270F                        946 00357$:
      00270F E5 1A            [12]  947 	mov	a,_bp
      002711 24 FD            [12]  948 	add	a,#0xfd
      002713 F8               [12]  949 	mov	r0,a
      002714 B6 06 03         [24]  950 	cjne	@r0,#0x06,00358$
      002717 02 28 EB         [24]  951 	ljmp	00153$
      00271A                        952 00358$:
      00271A E5 1A            [12]  953 	mov	a,_bp
      00271C 24 FD            [12]  954 	add	a,#0xfd
      00271E F8               [12]  955 	mov	r0,a
      00271F B6 21 03         [24]  956 	cjne	@r0,#0x21,00359$
      002722 02 29 5E         [24]  957 	ljmp	00167$
      002725                        958 00359$:
      002725 E5 1A            [12]  959 	mov	a,_bp
      002727 24 FD            [12]  960 	add	a,#0xfd
      002729 F8               [12]  961 	mov	r0,a
      00272A B6 45 03         [24]  962 	cjne	@r0,#0x45,00360$
      00272D 02 29 64         [24]  963 	ljmp	00168$
      002730                        964 00360$:
      002730 02 2A 32         [24]  965 	ljmp	00187$
                                    966 ;	../LED_Manager/led.c:156: case OPTION_MACRO_RAINBOW_DMX: //rainbow
      002733                        967 00105$:
                                    968 ;	../LED_Manager/led.c:157: color_wheel(tock);
      002733 85 30 82         [24]  969 	mov	dpl,_play_macro_tock_65536_55
      002736 12 2A 3B         [24]  970 	lcall	_color_wheel
                                    971 ;	../LED_Manager/led.c:158: break;
      002739 02 2A 35         [24]  972 	ljmp	00189$
                                    973 ;	../LED_Manager/led.c:159: case OPTION_MACRO_FIRE_DMX: //fire
      00273C                        974 00106$:
                                    975 ;	../LED_Manager/led.c:160: if(changed) { 
      00273C EB               [12]  976 	mov	a,r3
      00273D 70 03            [24]  977 	jnz	00361$
      00273F 02 2A 35         [24]  978 	ljmp	00189$
      002742                        979 00361$:
                                    980 ;	../LED_Manager/led.c:162: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
      002742 74 C9            [12]  981 	mov	a,#0x100 - 0x37
      002744 25 31            [12]  982 	add	a,_play_macro_primaryCount_65536_55
      002746 40 0C            [24]  983 	jc	00108$
      002748 75 31 37         [24]  984 	mov	_play_macro_primaryCount_65536_55,#0x37
      00274B AD 33            [24]  985 	mov	r5,_play_macro_direction_65536_55
      00274D 7E 00            [12]  986 	mov	r6,#0x00
      00274F 43 05 01         [24]  987 	orl	ar5,#0x01
      002752 8D 33            [24]  988 	mov	_play_macro_direction_65536_55,r5
      002754                        989 00108$:
                                    990 ;	../LED_Manager/led.c:163: if(direction & 0x01){
      002754 E5 33            [12]  991 	mov	a,_play_macro_direction_65536_55
      002756 30 E0 0E         [24]  992 	jnb	acc.0,00116$
                                    993 ;	../LED_Manager/led.c:164: if(primaryCount == 255){
      002759 74 FF            [12]  994 	mov	a,#0xff
      00275B B5 31 05         [24]  995 	cjne	a,_play_macro_primaryCount_65536_55,00110$
                                    996 ;	../LED_Manager/led.c:165: direction &= ~0x01;
      00275E 53 33 FE         [24]  997 	anl	_play_macro_direction_65536_55,#0xfe
      002761 80 20            [24]  998 	sjmp	00117$
      002763                        999 00110$:
                                   1000 ;	../LED_Manager/led.c:167: primaryCount++;
      002763 05 31            [12] 1001 	inc	_play_macro_primaryCount_65536_55
      002765 80 1C            [24] 1002 	sjmp	00117$
      002767                       1003 00116$:
                                   1004 ;	../LED_Manager/led.c:170: if(primaryCount - 1 == 55){
      002767 AD 31            [24] 1005 	mov	r5,_play_macro_primaryCount_65536_55
      002769 7E 00            [12] 1006 	mov	r6,#0x00
      00276B 1D               [12] 1007 	dec	r5
      00276C BD FF 01         [24] 1008 	cjne	r5,#0xff,00366$
      00276F 1E               [12] 1009 	dec	r6
      002770                       1010 00366$:
      002770 BD 37 0E         [24] 1011 	cjne	r5,#0x37,00113$
      002773 BE 00 0B         [24] 1012 	cjne	r6,#0x00,00113$
                                   1013 ;	../LED_Manager/led.c:171: direction |= 0x01;
      002776 AD 33            [24] 1014 	mov	r5,_play_macro_direction_65536_55
      002778 7E 00            [12] 1015 	mov	r6,#0x00
      00277A 43 05 01         [24] 1016 	orl	ar5,#0x01
      00277D 8D 33            [24] 1017 	mov	_play_macro_direction_65536_55,r5
      00277F 80 02            [24] 1018 	sjmp	00117$
      002781                       1019 00113$:
                                   1020 ;	../LED_Manager/led.c:173: primaryCount--;
      002781 15 31            [12] 1021 	dec	_play_macro_primaryCount_65536_55
      002783                       1022 00117$:
                                   1023 ;	../LED_Manager/led.c:177: set_leds(primaryCount, (uint8_t) (rng % (primaryCount >> 2)), (!(rng % 13)) ? PWMDATA17H > 1 : 0);
      002783 74 0D            [12] 1024 	mov	a,#0x0d
      002785 C0 E0            [24] 1025 	push	acc
      002787 E4               [12] 1026 	clr	a
      002788 C0 E0            [24] 1027 	push	acc
      00278A C0 E0            [24] 1028 	push	acc
      00278C C0 E0            [24] 1029 	push	acc
      00278E E5 1A            [12] 1030 	mov	a,_bp
      002790 24 05            [12] 1031 	add	a,#0x05
      002792 F8               [12] 1032 	mov	r0,a
      002793 86 82            [24] 1033 	mov	dpl,@r0
      002795 08               [12] 1034 	inc	r0
      002796 86 83            [24] 1035 	mov	dph,@r0
      002798 08               [12] 1036 	inc	r0
      002799 86 F0            [24] 1037 	mov	b,@r0
      00279B 08               [12] 1038 	inc	r0
      00279C E6               [12] 1039 	mov	a,@r0
      00279D 12 36 68         [24] 1040 	lcall	__modulong
      0027A0 AB 82            [24] 1041 	mov	r3,dpl
      0027A2 AC 83            [24] 1042 	mov	r4,dph
      0027A4 AD F0            [24] 1043 	mov	r5,b
      0027A6 FE               [12] 1044 	mov	r6,a
      0027A7 E5 81            [12] 1045 	mov	a,sp
      0027A9 24 FC            [12] 1046 	add	a,#0xfc
      0027AB F5 81            [12] 1047 	mov	sp,a
      0027AD EB               [12] 1048 	mov	a,r3
      0027AE 4C               [12] 1049 	orl	a,r4
      0027AF 4D               [12] 1050 	orl	a,r5
      0027B0 4E               [12] 1051 	orl	a,r6
      0027B1 70 0C            [24] 1052 	jnz	00191$
      0027B3 C3               [12] 1053 	clr	c
      0027B4 74 01            [12] 1054 	mov	a,#0x01
      0027B6 95 AD            [12] 1055 	subb	a,_PWMDATA17H
      0027B8 E4               [12] 1056 	clr	a
      0027B9 33               [12] 1057 	rlc	a
      0027BA FD               [12] 1058 	mov	r5,a
      0027BB 7E 00            [12] 1059 	mov	r6,#0x00
      0027BD 80 04            [24] 1060 	sjmp	00192$
      0027BF                       1061 00191$:
      0027BF 7D 00            [12] 1062 	mov	r5,#0x00
      0027C1 7E 00            [12] 1063 	mov	r6,#0x00
      0027C3                       1064 00192$:
      0027C3 E5 31            [12] 1065 	mov	a,_play_macro_primaryCount_65536_55
      0027C5 03               [12] 1066 	rr	a
      0027C6 03               [12] 1067 	rr	a
      0027C7 54 3F            [12] 1068 	anl	a,#0x3f
      0027C9 FE               [12] 1069 	mov	r6,a
      0027CA 7C 00            [12] 1070 	mov	r4,#0x00
      0027CC 7B 00            [12] 1071 	mov	r3,#0x00
      0027CE 7A 00            [12] 1072 	mov	r2,#0x00
      0027D0 C0 05            [24] 1073 	push	ar5
      0027D2 C0 06            [24] 1074 	push	ar6
      0027D4 C0 04            [24] 1075 	push	ar4
      0027D6 C0 03            [24] 1076 	push	ar3
      0027D8 C0 02            [24] 1077 	push	ar2
      0027DA E5 1A            [12] 1078 	mov	a,_bp
      0027DC 24 05            [12] 1079 	add	a,#0x05
      0027DE F8               [12] 1080 	mov	r0,a
      0027DF 86 82            [24] 1081 	mov	dpl,@r0
      0027E1 08               [12] 1082 	inc	r0
      0027E2 86 83            [24] 1083 	mov	dph,@r0
      0027E4 08               [12] 1084 	inc	r0
      0027E5 86 F0            [24] 1085 	mov	b,@r0
      0027E7 08               [12] 1086 	inc	r0
      0027E8 E6               [12] 1087 	mov	a,@r0
      0027E9 12 36 68         [24] 1088 	lcall	__modulong
      0027EC AA 82            [24] 1089 	mov	r2,dpl
      0027EE E5 81            [12] 1090 	mov	a,sp
      0027F0 24 FC            [12] 1091 	add	a,#0xfc
      0027F2 F5 81            [12] 1092 	mov	sp,a
      0027F4 C0 02            [24] 1093 	push	ar2
      0027F6 85 31 82         [24] 1094 	mov	dpl,_play_macro_primaryCount_65536_55
      0027F9 12 2B 0C         [24] 1095 	lcall	_set_leds
      0027FC 15 81            [12] 1096 	dec	sp
      0027FE 15 81            [12] 1097 	dec	sp
                                   1098 ;	../LED_Manager/led.c:180: break;
      002800 02 2A 35         [24] 1099 	ljmp	00189$
                                   1100 ;	../LED_Manager/led.c:183: case OPTION_MACRO_ETHER_DMX:
      002803                       1101 00122$:
                                   1102 ;	../LED_Manager/led.c:185: if(changed){
      002803 EB               [12] 1103 	mov	a,r3
      002804 70 03            [24] 1104 	jnz	00370$
      002806 02 2A 35         [24] 1105 	ljmp	00189$
      002809                       1106 00370$:
                                   1107 ;	../LED_Manager/led.c:187: if(direction & 0x01){
      002809 E5 33            [12] 1108 	mov	a,_play_macro_direction_65536_55
      00280B 30 E0 14         [24] 1109 	jnb	acc.0,00128$
                                   1110 ;	../LED_Manager/led.c:188: primaryCount +=2;
      00280E AE 31            [24] 1111 	mov	r6,_play_macro_primaryCount_65536_55
      002810 74 02            [12] 1112 	mov	a,#0x02
      002812 2E               [12] 1113 	add	a,r6
                                   1114 ;	../LED_Manager/led.c:190: if(primaryCount < 75){
      002813 F5 31            [12] 1115 	mov	_play_macro_primaryCount_65536_55,a
      002815 C3               [12] 1116 	clr	c
      002816 94 4B            [12] 1117 	subb	a,#0x4b
      002818 50 1F            [24] 1118 	jnc	00129$
                                   1119 ;	../LED_Manager/led.c:191: direction &= ~0x01;
      00281A 53 33 FE         [24] 1120 	anl	_play_macro_direction_65536_55,#0xfe
                                   1121 ;	../LED_Manager/led.c:192: primaryCount = 255;
      00281D 75 31 FF         [24] 1122 	mov	_play_macro_primaryCount_65536_55,#0xff
      002820 80 17            [24] 1123 	sjmp	00129$
      002822                       1124 00128$:
                                   1125 ;	../LED_Manager/led.c:196: primaryCount -=2;
      002822 E5 31            [12] 1126 	mov	a,_play_macro_primaryCount_65536_55
      002824 FE               [12] 1127 	mov	r6,a
      002825 24 FE            [12] 1128 	add	a,#0xfe
                                   1129 ;	../LED_Manager/led.c:198: if(primaryCount <= 130){
      002827 F5 31            [12] 1130 	mov  _play_macro_primaryCount_65536_55,a
      002829 24 7D            [12] 1131 	add	a,#0xff - 0x82
      00282B 40 0C            [24] 1132 	jc	00129$
                                   1133 ;	../LED_Manager/led.c:199: direction |= 0x01;
      00282D AD 33            [24] 1134 	mov	r5,_play_macro_direction_65536_55
      00282F 7E 00            [12] 1135 	mov	r6,#0x00
      002831 43 05 01         [24] 1136 	orl	ar5,#0x01
      002834 8D 33            [24] 1137 	mov	_play_macro_direction_65536_55,r5
                                   1138 ;	../LED_Manager/led.c:200: primaryCount = 130;
      002836 75 31 82         [24] 1139 	mov	_play_macro_primaryCount_65536_55,#0x82
      002839                       1140 00129$:
                                   1141 ;	../LED_Manager/led.c:204: if(rng % 21 == 0){
      002839 C0 07            [24] 1142 	push	ar7
      00283B 74 15            [12] 1143 	mov	a,#0x15
      00283D C0 E0            [24] 1144 	push	acc
      00283F E4               [12] 1145 	clr	a
      002840 C0 E0            [24] 1146 	push	acc
      002842 C0 E0            [24] 1147 	push	acc
      002844 C0 E0            [24] 1148 	push	acc
      002846 E5 1A            [12] 1149 	mov	a,_bp
      002848 24 05            [12] 1150 	add	a,#0x05
      00284A F8               [12] 1151 	mov	r0,a
      00284B 86 82            [24] 1152 	mov	dpl,@r0
      00284D 08               [12] 1153 	inc	r0
      00284E 86 83            [24] 1154 	mov	dph,@r0
      002850 08               [12] 1155 	inc	r0
      002851 86 F0            [24] 1156 	mov	b,@r0
      002853 08               [12] 1157 	inc	r0
      002854 E6               [12] 1158 	mov	a,@r0
      002855 12 36 68         [24] 1159 	lcall	__modulong
      002858 AB 82            [24] 1160 	mov	r3,dpl
      00285A AC 83            [24] 1161 	mov	r4,dph
      00285C AD F0            [24] 1162 	mov	r5,b
      00285E FE               [12] 1163 	mov	r6,a
      00285F E5 81            [12] 1164 	mov	a,sp
      002861 24 FC            [12] 1165 	add	a,#0xfc
      002863 F5 81            [12] 1166 	mov	sp,a
      002865 D0 07            [24] 1167 	pop	ar7
      002867 EB               [12] 1168 	mov	a,r3
      002868 4C               [12] 1169 	orl	a,r4
      002869 4D               [12] 1170 	orl	a,r5
      00286A 4E               [12] 1171 	orl	a,r6
      00286B 70 15            [24] 1172 	jnz	00141$
                                   1173 ;	../LED_Manager/led.c:205: if(direction & 0x10){
      00286D E5 33            [12] 1174 	mov	a,_play_macro_direction_65536_55
      00286F 30 E4 05         [24] 1175 	jnb	acc.4,00131$
                                   1176 ;	../LED_Manager/led.c:206: direction &= ~0x10;
      002872 53 33 EF         [24] 1177 	anl	_play_macro_direction_65536_55,#0xef
      002875 80 28            [24] 1178 	sjmp	00142$
      002877                       1179 00131$:
                                   1180 ;	../LED_Manager/led.c:208: direction |= 0x10;
      002877 AD 33            [24] 1181 	mov	r5,_play_macro_direction_65536_55
      002879 7E 00            [12] 1182 	mov	r6,#0x00
      00287B 43 05 10         [24] 1183 	orl	ar5,#0x10
      00287E 8D 33            [24] 1184 	mov	_play_macro_direction_65536_55,r5
      002880 80 1D            [24] 1185 	sjmp	00142$
      002882                       1186 00141$:
                                   1187 ;	../LED_Manager/led.c:211: if(direction & 0x10){
      002882 E5 33            [12] 1188 	mov	a,_play_macro_direction_65536_55
      002884 30 E4 0D         [24] 1189 	jnb	acc.4,00138$
                                   1190 ;	../LED_Manager/led.c:212: secondaryCount++;
      002887 05 32            [12] 1191 	inc	_play_macro_secondaryCount_65536_55
                                   1192 ;	../LED_Manager/led.c:214: if(secondaryCount >= 34){
      002889 74 DE            [12] 1193 	mov	a,#0x100 - 0x22
      00288B 25 32            [12] 1194 	add	a,_play_macro_secondaryCount_65536_55
      00288D 50 10            [24] 1195 	jnc	00142$
                                   1196 ;	../LED_Manager/led.c:215: secondaryCount = 34;
      00288F 75 32 22         [24] 1197 	mov	_play_macro_secondaryCount_65536_55,#0x22
      002892 80 0B            [24] 1198 	sjmp	00142$
      002894                       1199 00138$:
                                   1200 ;	../LED_Manager/led.c:219: secondaryCount--;
      002894 15 32            [12] 1201 	dec	_play_macro_secondaryCount_65536_55
                                   1202 ;	../LED_Manager/led.c:221: if(secondaryCount > 36){
      002896 E5 32            [12] 1203 	mov	a,_play_macro_secondaryCount_65536_55
      002898 24 DB            [12] 1204 	add	a,#0xff - 0x24
      00289A 50 03            [24] 1205 	jnc	00142$
                                   1206 ;	../LED_Manager/led.c:222: secondaryCount = 0;
      00289C 75 32 00         [24] 1207 	mov	_play_macro_secondaryCount_65536_55,#0x00
      00289F                       1208 00142$:
                                   1209 ;	../LED_Manager/led.c:227: if(macro == OPTION_MACRO_WATER_DMX){ //water
      00289F EF               [12] 1210 	mov	a,r7
      0028A0 60 11            [24] 1211 	jz	00149$
                                   1212 ;	../LED_Manager/led.c:228: set_leds(secondaryCount, secondaryCount, primaryCount);
      0028A2 C0 31            [24] 1213 	push	_play_macro_primaryCount_65536_55
      0028A4 C0 32            [24] 1214 	push	_play_macro_secondaryCount_65536_55
      0028A6 85 32 82         [24] 1215 	mov	dpl,_play_macro_secondaryCount_65536_55
      0028A9 12 2B 0C         [24] 1216 	lcall	_set_leds
      0028AC 15 81            [12] 1217 	dec	sp
      0028AE 15 81            [12] 1218 	dec	sp
      0028B0 02 2A 35         [24] 1219 	ljmp	00189$
      0028B3                       1220 00149$:
                                   1221 ;	../LED_Manager/led.c:229: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
      0028B3 E5 1A            [12] 1222 	mov	a,_bp
      0028B5 24 FD            [12] 1223 	add	a,#0xfd
      0028B7 F8               [12] 1224 	mov	r0,a
      0028B8 B6 04 12         [24] 1225 	cjne	@r0,#0x04,00146$
                                   1226 ;	../LED_Manager/led.c:230: set_leds(secondaryCount, primaryCount, 0);
      0028BB E4               [12] 1227 	clr	a
      0028BC C0 E0            [24] 1228 	push	acc
      0028BE C0 31            [24] 1229 	push	_play_macro_primaryCount_65536_55
      0028C0 85 32 82         [24] 1230 	mov	dpl,_play_macro_secondaryCount_65536_55
      0028C3 12 2B 0C         [24] 1231 	lcall	_set_leds
      0028C6 15 81            [12] 1232 	dec	sp
      0028C8 15 81            [12] 1233 	dec	sp
      0028CA 02 2A 35         [24] 1234 	ljmp	00189$
      0028CD                       1235 00146$:
                                   1236 ;	../LED_Manager/led.c:231: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
      0028CD E5 1A            [12] 1237 	mov	a,_bp
      0028CF 24 FD            [12] 1238 	add	a,#0xfd
      0028D1 F8               [12] 1239 	mov	r0,a
      0028D2 B6 05 02         [24] 1240 	cjne	@r0,#0x05,00382$
      0028D5 80 03            [24] 1241 	sjmp	00383$
      0028D7                       1242 00382$:
      0028D7 02 2A 35         [24] 1243 	ljmp	00189$
      0028DA                       1244 00383$:
                                   1245 ;	../LED_Manager/led.c:232: set_leds(primaryCount, secondaryCount, primaryCount);
      0028DA C0 31            [24] 1246 	push	_play_macro_primaryCount_65536_55
      0028DC C0 32            [24] 1247 	push	_play_macro_secondaryCount_65536_55
      0028DE 85 31 82         [24] 1248 	mov	dpl,_play_macro_primaryCount_65536_55
      0028E1 12 2B 0C         [24] 1249 	lcall	_set_leds
      0028E4 15 81            [12] 1250 	dec	sp
      0028E6 15 81            [12] 1251 	dec	sp
                                   1252 ;	../LED_Manager/led.c:236: break;
      0028E8 02 2A 35         [24] 1253 	ljmp	00189$
                                   1254 ;	../LED_Manager/led.c:237: case OPTION_MACRO_STORM_DMX: //storm
      0028EB                       1255 00153$:
                                   1256 ;	../LED_Manager/led.c:238: if(changed){
      0028EB EB               [12] 1257 	mov	a,r3
      0028EC 70 03            [24] 1258 	jnz	00384$
      0028EE 02 2A 35         [24] 1259 	ljmp	00189$
      0028F1                       1260 00384$:
                                   1261 ;	../LED_Manager/led.c:239: if(!(rng % STORM_FREQ)){
      0028F1 74 59            [12] 1262 	mov	a,#0x59
      0028F3 C0 E0            [24] 1263 	push	acc
      0028F5 E4               [12] 1264 	clr	a
      0028F6 C0 E0            [24] 1265 	push	acc
      0028F8 C0 E0            [24] 1266 	push	acc
      0028FA C0 E0            [24] 1267 	push	acc
      0028FC E5 1A            [12] 1268 	mov	a,_bp
      0028FE 24 05            [12] 1269 	add	a,#0x05
      002900 F8               [12] 1270 	mov	r0,a
      002901 86 82            [24] 1271 	mov	dpl,@r0
      002903 08               [12] 1272 	inc	r0
      002904 86 83            [24] 1273 	mov	dph,@r0
      002906 08               [12] 1274 	inc	r0
      002907 86 F0            [24] 1275 	mov	b,@r0
      002909 08               [12] 1276 	inc	r0
      00290A E6               [12] 1277 	mov	a,@r0
      00290B 12 36 68         [24] 1278 	lcall	__modulong
      00290E AC 82            [24] 1279 	mov	r4,dpl
      002910 AD 83            [24] 1280 	mov	r5,dph
      002912 AE F0            [24] 1281 	mov	r6,b
      002914 FF               [12] 1282 	mov	r7,a
      002915 E5 81            [12] 1283 	mov	a,sp
      002917 24 FC            [12] 1284 	add	a,#0xfc
      002919 F5 81            [12] 1285 	mov	sp,a
      00291B EC               [12] 1286 	mov	a,r4
      00291C 4D               [12] 1287 	orl	a,r5
      00291D 4E               [12] 1288 	orl	a,r6
      00291E 4F               [12] 1289 	orl	a,r7
      00291F 70 05            [24] 1290 	jnz	00163$
                                   1291 ;	../LED_Manager/led.c:240: primaryCount = 255;
      002921 75 31 FF         [24] 1292 	mov	_play_macro_primaryCount_65536_55,#0xff
      002924 80 27            [24] 1293 	sjmp	00164$
      002926                       1294 00163$:
                                   1295 ;	../LED_Manager/led.c:242: if(primaryCount > 200){
      002926 E5 31            [12] 1296 	mov	a,_play_macro_primaryCount_65536_55
      002928 24 37            [12] 1297 	add	a,#0xff - 0xc8
      00292A 50 04            [24] 1298 	jnc	00160$
                                   1299 ;	../LED_Manager/led.c:243: primaryCount--;
      00292C 15 31            [12] 1300 	dec	_play_macro_primaryCount_65536_55
      00292E 80 1D            [24] 1301 	sjmp	00164$
      002930                       1302 00160$:
                                   1303 ;	../LED_Manager/led.c:244: } else if(primaryCount > 130){
      002930 E5 31            [12] 1304 	mov	a,_play_macro_primaryCount_65536_55
      002932 24 7D            [12] 1305 	add	a,#0xff - 0x82
      002934 50 09            [24] 1306 	jnc	00157$
                                   1307 ;	../LED_Manager/led.c:245: primaryCount-=2;
      002936 E5 31            [12] 1308 	mov	a,_play_macro_primaryCount_65536_55
      002938 FF               [12] 1309 	mov	r7,a
      002939 24 FE            [12] 1310 	add	a,#0xfe
      00293B F5 31            [12] 1311 	mov	_play_macro_primaryCount_65536_55,a
      00293D 80 0E            [24] 1312 	sjmp	00164$
      00293F                       1313 00157$:
                                   1314 ;	../LED_Manager/led.c:247: primaryCount-=3;
      00293F E5 31            [12] 1315 	mov	a,_play_macro_primaryCount_65536_55
      002941 FF               [12] 1316 	mov	r7,a
      002942 24 FD            [12] 1317 	add	a,#0xfd
                                   1318 ;	../LED_Manager/led.c:248: if(primaryCount > 200){
      002944 F5 31            [12] 1319 	mov  _play_macro_primaryCount_65536_55,a
      002946 24 37            [12] 1320 	add	a,#0xff - 0xc8
      002948 50 03            [24] 1321 	jnc	00164$
                                   1322 ;	../LED_Manager/led.c:249: primaryCount = 0;
      00294A 75 31 00         [24] 1323 	mov	_play_macro_primaryCount_65536_55,#0x00
      00294D                       1324 00164$:
                                   1325 ;	../LED_Manager/led.c:254: set_leds(primaryCount, primaryCount, primaryCount);
      00294D C0 31            [24] 1326 	push	_play_macro_primaryCount_65536_55
      00294F C0 31            [24] 1327 	push	_play_macro_primaryCount_65536_55
      002951 85 31 82         [24] 1328 	mov	dpl,_play_macro_primaryCount_65536_55
      002954 12 2B 0C         [24] 1329 	lcall	_set_leds
      002957 15 81            [12] 1330 	dec	sp
      002959 15 81            [12] 1331 	dec	sp
                                   1332 ;	../LED_Manager/led.c:257: break;
      00295B 02 2A 35         [24] 1333 	ljmp	00189$
                                   1334 ;	../LED_Manager/led.c:258: case OPTION_MACRO_WHITE: //w
      00295E                       1335 00167$:
                                   1336 ;	../LED_Manager/led.c:259: whiteout();
      00295E 12 2A AE         [24] 1337 	lcall	_whiteout
                                   1338 ;	../LED_Manager/led.c:260: break;
      002961 02 2A 35         [24] 1339 	ljmp	00189$
                                   1340 ;	../LED_Manager/led.c:261: case 69:
      002964                       1341 00168$:
                                   1342 ;	../LED_Manager/led.c:262: if(tock < 32){
      002964 74 E0            [12] 1343 	mov	a,#0x100 - 0x20
      002966 25 30            [12] 1344 	add	a,_play_macro_tock_65536_55
      002968 40 3F            [24] 1345 	jc	00185$
                                   1346 ;	../LED_Manager/led.c:264: if(rng & (SH_B >> tock)){
      00296A 85 30 F0         [24] 1347 	mov	b,_play_macro_tock_65536_55
      00296D 05 F0            [12] 1348 	inc	b
      00296F 7C 00            [12] 1349 	mov	r4,#0x00
      002971 7D 00            [12] 1350 	mov	r5,#0x00
      002973 7E 00            [12] 1351 	mov	r6,#0x00
      002975 7F 80            [12] 1352 	mov	r7,#0x80
      002977 80 0D            [24] 1353 	sjmp	00391$
      002979                       1354 00390$:
      002979 C3               [12] 1355 	clr	c
      00297A EF               [12] 1356 	mov	a,r7
      00297B 13               [12] 1357 	rrc	a
      00297C FF               [12] 1358 	mov	r7,a
      00297D EE               [12] 1359 	mov	a,r6
      00297E 13               [12] 1360 	rrc	a
      00297F FE               [12] 1361 	mov	r6,a
      002980 ED               [12] 1362 	mov	a,r5
      002981 13               [12] 1363 	rrc	a
      002982 FD               [12] 1364 	mov	r5,a
      002983 EC               [12] 1365 	mov	a,r4
      002984 13               [12] 1366 	rrc	a
      002985 FC               [12] 1367 	mov	r4,a
      002986                       1368 00391$:
      002986 D5 F0 F0         [24] 1369 	djnz	b,00390$
      002989 EC               [12] 1370 	mov	a,r4
      00298A 54 BA            [12] 1371 	anl	a,#0xba
      00298C 70 0F            [24] 1372 	jnz	00392$
      00298E ED               [12] 1373 	mov	a,r5
      00298F 54 B8            [12] 1374 	anl	a,#0xb8
      002991 70 0A            [24] 1375 	jnz	00392$
      002993 EE               [12] 1376 	mov	a,r6
      002994 54 3B            [12] 1377 	anl	a,#0x3b
      002996 70 05            [24] 1378 	jnz	00392$
      002998 EF               [12] 1379 	mov	a,r7
      002999 54 EE            [12] 1380 	anl	a,#0xee
      00299B 60 06            [24] 1381 	jz	00170$
      00299D                       1382 00392$:
                                   1383 ;	../LED_Manager/led.c:265: whiteout(); //White - Worth
      00299D 12 2A AE         [24] 1384 	lcall	_whiteout
      0029A0 02 2A 35         [24] 1385 	ljmp	00189$
      0029A3                       1386 00170$:
                                   1387 ;	../LED_Manager/led.c:267: blackout();
      0029A3 12 2A BF         [24] 1388 	lcall	_blackout
      0029A6 02 2A 35         [24] 1389 	ljmp	00189$
      0029A9                       1390 00185$:
                                   1391 ;	../LED_Manager/led.c:269: } else if(tock < 64){
      0029A9 74 C0            [12] 1392 	mov	a,#0x100 - 0x40
      0029AB 25 30            [12] 1393 	add	a,_play_macro_tock_65536_55
      0029AD 40 41            [24] 1394 	jc	00182$
                                   1395 ;	../LED_Manager/led.c:271: if(rng & (SH_B >> (tock - 32))){
      0029AF E5 30            [12] 1396 	mov	a,_play_macro_tock_65536_55
      0029B1 24 E0            [12] 1397 	add	a,#0xe0
      0029B3 FF               [12] 1398 	mov	r7,a
      0029B4 8F F0            [24] 1399 	mov	b,r7
      0029B6 05 F0            [12] 1400 	inc	b
      0029B8 7F 00            [12] 1401 	mov	r7,#0x00
      0029BA 7E 00            [12] 1402 	mov	r6,#0x00
      0029BC 7D 00            [12] 1403 	mov	r5,#0x00
      0029BE 7C 80            [12] 1404 	mov	r4,#0x80
      0029C0 80 0D            [24] 1405 	sjmp	00395$
      0029C2                       1406 00394$:
      0029C2 C3               [12] 1407 	clr	c
      0029C3 EC               [12] 1408 	mov	a,r4
      0029C4 13               [12] 1409 	rrc	a
      0029C5 FC               [12] 1410 	mov	r4,a
      0029C6 ED               [12] 1411 	mov	a,r5
      0029C7 13               [12] 1412 	rrc	a
      0029C8 FD               [12] 1413 	mov	r5,a
      0029C9 EE               [12] 1414 	mov	a,r6
      0029CA 13               [12] 1415 	rrc	a
      0029CB FE               [12] 1416 	mov	r6,a
      0029CC EF               [12] 1417 	mov	a,r7
      0029CD 13               [12] 1418 	rrc	a
      0029CE FF               [12] 1419 	mov	r7,a
      0029CF                       1420 00395$:
      0029CF D5 F0 F0         [24] 1421 	djnz	b,00394$
      0029D2 EF               [12] 1422 	mov	a,r7
      0029D3 54 38            [12] 1423 	anl	a,#0x38
      0029D5 70 0F            [24] 1424 	jnz	00396$
      0029D7 EE               [12] 1425 	mov	a,r6
      0029D8 54 BA            [12] 1426 	anl	a,#0xba
      0029DA 70 0A            [24] 1427 	jnz	00396$
      0029DC ED               [12] 1428 	mov	a,r5
      0029DD 54 B8            [12] 1429 	anl	a,#0xb8
      0029DF 70 05            [24] 1430 	jnz	00396$
      0029E1 EC               [12] 1431 	mov	a,r4
      0029E2 54 28            [12] 1432 	anl	a,#0x28
      0029E4 60 05            [24] 1433 	jz	00173$
      0029E6                       1434 00396$:
                                   1435 ;	../LED_Manager/led.c:272: whiteout(); //White - Worth
      0029E6 12 2A AE         [24] 1436 	lcall	_whiteout
      0029E9 80 4A            [24] 1437 	sjmp	00189$
      0029EB                       1438 00173$:
                                   1439 ;	../LED_Manager/led.c:274: blackout();
      0029EB 12 2A BF         [24] 1440 	lcall	_blackout
      0029EE 80 45            [24] 1441 	sjmp	00189$
      0029F0                       1442 00182$:
                                   1443 ;	../LED_Manager/led.c:276: } else if(tock < 83){
      0029F0 74 AD            [12] 1444 	mov	a,#0x100 - 0x53
      0029F2 25 30            [12] 1445 	add	a,_play_macro_tock_65536_55
      0029F4 40 37            [24] 1446 	jc	00179$
                                   1447 ;	../LED_Manager/led.c:278: if(rng & (SH_B >> (tock - 64))){
      0029F6 E5 30            [12] 1448 	mov	a,_play_macro_tock_65536_55
      0029F8 24 C0            [12] 1449 	add	a,#0xc0
      0029FA FF               [12] 1450 	mov	r7,a
      0029FB 8F F0            [24] 1451 	mov	b,r7
      0029FD 05 F0            [12] 1452 	inc	b
      0029FF 7F 00            [12] 1453 	mov	r7,#0x00
      002A01 7E 00            [12] 1454 	mov	r6,#0x00
      002A03 7D 00            [12] 1455 	mov	r5,#0x00
      002A05 7C 80            [12] 1456 	mov	r4,#0x80
      002A07 80 0D            [24] 1457 	sjmp	00399$
      002A09                       1458 00398$:
      002A09 C3               [12] 1459 	clr	c
      002A0A EC               [12] 1460 	mov	a,r4
      002A0B 13               [12] 1461 	rrc	a
      002A0C FC               [12] 1462 	mov	r4,a
      002A0D ED               [12] 1463 	mov	a,r5
      002A0E 13               [12] 1464 	rrc	a
      002A0F FD               [12] 1465 	mov	r5,a
      002A10 EE               [12] 1466 	mov	a,r6
      002A11 13               [12] 1467 	rrc	a
      002A12 FE               [12] 1468 	mov	r6,a
      002A13 EF               [12] 1469 	mov	a,r7
      002A14 13               [12] 1470 	rrc	a
      002A15 FF               [12] 1471 	mov	r7,a
      002A16                       1472 00399$:
      002A16 D5 F0 F0         [24] 1473 	djnz	b,00398$
      002A19 ED               [12] 1474 	mov	a,r5
      002A1A 54 B8            [12] 1475 	anl	a,#0xb8
      002A1C 70 05            [24] 1476 	jnz	00400$
      002A1E EC               [12] 1477 	mov	a,r4
      002A1F 54 EB            [12] 1478 	anl	a,#0xeb
      002A21 60 05            [24] 1479 	jz	00176$
      002A23                       1480 00400$:
                                   1481 ;	../LED_Manager/led.c:279: whiteout();
      002A23 12 2A AE         [24] 1482 	lcall	_whiteout
      002A26 80 0D            [24] 1483 	sjmp	00189$
      002A28                       1484 00176$:
                                   1485 ;	../LED_Manager/led.c:281: blackout();
      002A28 12 2A BF         [24] 1486 	lcall	_blackout
      002A2B 80 08            [24] 1487 	sjmp	00189$
      002A2D                       1488 00179$:
                                   1489 ;	../LED_Manager/led.c:284: tock = 0;
      002A2D 75 30 00         [24] 1490 	mov	_play_macro_tock_65536_55,#0x00
                                   1491 ;	../LED_Manager/led.c:286: break;
                                   1492 ;	../LED_Manager/led.c:287: default:
      002A30 80 03            [24] 1493 	sjmp	00189$
      002A32                       1494 00187$:
                                   1495 ;	../LED_Manager/led.c:288: blackout();
      002A32 12 2A BF         [24] 1496 	lcall	_blackout
                                   1497 ;	../LED_Manager/led.c:289: }
      002A35                       1498 00189$:
                                   1499 ;	../LED_Manager/led.c:291: }
      002A35 85 1A 81         [24] 1500 	mov	sp,_bp
      002A38 D0 1A            [24] 1501 	pop	_bp
      002A3A 22               [24] 1502 	ret
                                   1503 ;------------------------------------------------------------
                                   1504 ;Allocation info for local variables in function 'color_wheel'
                                   1505 ;------------------------------------------------------------
                                   1506 ;color                     Allocated to registers r6 
                                   1507 ;------------------------------------------------------------
                                   1508 ;	../LED_Manager/led.c:293: void color_wheel(uint8_t color){
                                   1509 ;	-----------------------------------------
                                   1510 ;	 function color_wheel
                                   1511 ;	-----------------------------------------
      002A3B                       1512 _color_wheel:
      002A3B AF 82            [24] 1513 	mov	r7,dpl
                                   1514 ;	../LED_Manager/led.c:295: if(color < 85){
      002A3D BF 55 00         [24] 1515 	cjne	r7,#0x55,00119$
      002A40                       1516 00119$:
      002A40 50 20            [24] 1517 	jnc	00105$
                                   1518 ;	../LED_Manager/led.c:296: set_leds(color * 3, 255 - color * 3, 0);
      002A42 8F 06            [24] 1519 	mov	ar6,r7
      002A44 EE               [12] 1520 	mov	a,r6
      002A45 75 F0 03         [24] 1521 	mov	b,#0x03
      002A48 A4               [48] 1522 	mul	ab
      002A49 D3               [12] 1523 	setb	c
      002A4A 94 FF            [12] 1524 	subb	a,#0xff
      002A4C F4               [12] 1525 	cpl	a
      002A4D FE               [12] 1526 	mov	r6,a
      002A4E EF               [12] 1527 	mov	a,r7
      002A4F 75 F0 03         [24] 1528 	mov	b,#0x03
      002A52 A4               [48] 1529 	mul	ab
      002A53 F5 82            [12] 1530 	mov	dpl,a
      002A55 E4               [12] 1531 	clr	a
      002A56 C0 E0            [24] 1532 	push	acc
      002A58 C0 06            [24] 1533 	push	ar6
      002A5A 12 2B 0C         [24] 1534 	lcall	_set_leds
      002A5D 15 81            [12] 1535 	dec	sp
      002A5F 15 81            [12] 1536 	dec	sp
      002A61 22               [24] 1537 	ret
      002A62                       1538 00105$:
                                   1539 ;	../LED_Manager/led.c:297: } else if(color < 170){
      002A62 BF AA 00         [24] 1540 	cjne	r7,#0xaa,00121$
      002A65                       1541 00121$:
      002A65 50 23            [24] 1542 	jnc	00102$
                                   1543 ;	../LED_Manager/led.c:298: color -= 85;
      002A67 8F 06            [24] 1544 	mov	ar6,r7
      002A69 EE               [12] 1545 	mov	a,r6
      002A6A 24 AB            [12] 1546 	add	a,#0xab
                                   1547 ;	../LED_Manager/led.c:299: set_leds(255 - color * 3, 0, color * 3);
      002A6C FE               [12] 1548 	mov	r6,a
      002A6D 75 F0 03         [24] 1549 	mov	b,#0x03
      002A70 A4               [48] 1550 	mul	ab
      002A71 FD               [12] 1551 	mov	r5,a
      002A72 EE               [12] 1552 	mov	a,r6
      002A73 75 F0 03         [24] 1553 	mov	b,#0x03
      002A76 A4               [48] 1554 	mul	ab
      002A77 D3               [12] 1555 	setb	c
      002A78 94 FF            [12] 1556 	subb	a,#0xff
      002A7A F4               [12] 1557 	cpl	a
      002A7B F5 82            [12] 1558 	mov	dpl,a
      002A7D C0 05            [24] 1559 	push	ar5
      002A7F E4               [12] 1560 	clr	a
      002A80 C0 E0            [24] 1561 	push	acc
      002A82 12 2B 0C         [24] 1562 	lcall	_set_leds
      002A85 15 81            [12] 1563 	dec	sp
      002A87 15 81            [12] 1564 	dec	sp
      002A89 22               [24] 1565 	ret
      002A8A                       1566 00102$:
                                   1567 ;	../LED_Manager/led.c:301: color -= 170;
      002A8A EF               [12] 1568 	mov	a,r7
      002A8B 24 56            [12] 1569 	add	a,#0x56
                                   1570 ;	../LED_Manager/led.c:302: set_leds(0, color * 3, 255 - color * 3);
      002A8D FF               [12] 1571 	mov	r7,a
      002A8E FE               [12] 1572 	mov	r6,a
      002A8F EE               [12] 1573 	mov	a,r6
      002A90 75 F0 03         [24] 1574 	mov	b,#0x03
      002A93 A4               [48] 1575 	mul	ab
      002A94 D3               [12] 1576 	setb	c
      002A95 94 FF            [12] 1577 	subb	a,#0xff
      002A97 F4               [12] 1578 	cpl	a
      002A98 FE               [12] 1579 	mov	r6,a
      002A99 EF               [12] 1580 	mov	a,r7
      002A9A 75 F0 03         [24] 1581 	mov	b,#0x03
      002A9D A4               [48] 1582 	mul	ab
      002A9E FF               [12] 1583 	mov	r7,a
      002A9F C0 06            [24] 1584 	push	ar6
      002AA1 C0 07            [24] 1585 	push	ar7
      002AA3 75 82 00         [24] 1586 	mov	dpl,#0x00
      002AA6 12 2B 0C         [24] 1587 	lcall	_set_leds
      002AA9 15 81            [12] 1588 	dec	sp
      002AAB 15 81            [12] 1589 	dec	sp
                                   1590 ;	../LED_Manager/led.c:304: }
      002AAD 22               [24] 1591 	ret
                                   1592 ;------------------------------------------------------------
                                   1593 ;Allocation info for local variables in function 'whiteout'
                                   1594 ;------------------------------------------------------------
                                   1595 ;	../LED_Manager/led.c:306: void whiteout(){
                                   1596 ;	-----------------------------------------
                                   1597 ;	 function whiteout
                                   1598 ;	-----------------------------------------
      002AAE                       1599 _whiteout:
                                   1600 ;	../LED_Manager/led.c:307: set_leds(0xFF, 0xFF, 0xFF);
      002AAE 74 FF            [12] 1601 	mov	a,#0xff
      002AB0 C0 E0            [24] 1602 	push	acc
      002AB2 C0 E0            [24] 1603 	push	acc
      002AB4 75 82 FF         [24] 1604 	mov	dpl,#0xff
      002AB7 12 2B 0C         [24] 1605 	lcall	_set_leds
      002ABA 15 81            [12] 1606 	dec	sp
      002ABC 15 81            [12] 1607 	dec	sp
                                   1608 ;	../LED_Manager/led.c:308: }
      002ABE 22               [24] 1609 	ret
                                   1610 ;------------------------------------------------------------
                                   1611 ;Allocation info for local variables in function 'blackout'
                                   1612 ;------------------------------------------------------------
                                   1613 ;	../LED_Manager/led.c:310: void blackout(){
                                   1614 ;	-----------------------------------------
                                   1615 ;	 function blackout
                                   1616 ;	-----------------------------------------
      002ABF                       1617 _blackout:
                                   1618 ;	../LED_Manager/led.c:311: set_leds(0,0,0);
      002ABF E4               [12] 1619 	clr	a
      002AC0 C0 E0            [24] 1620 	push	acc
      002AC2 C0 E0            [24] 1621 	push	acc
      002AC4 75 82 00         [24] 1622 	mov	dpl,#0x00
      002AC7 12 2B 0C         [24] 1623 	lcall	_set_leds
      002ACA 15 81            [12] 1624 	dec	sp
      002ACC 15 81            [12] 1625 	dec	sp
                                   1626 ;	../LED_Manager/led.c:312: }
      002ACE 22               [24] 1627 	ret
                                   1628 ;------------------------------------------------------------
                                   1629 ;Allocation info for local variables in function 'rngU32'
                                   1630 ;------------------------------------------------------------
                                   1631 ;past                      Allocated with name '_rngU32_past_65536_107'
                                   1632 ;present                   Allocated with name '_rngU32_present_65536_107'
                                   1633 ;------------------------------------------------------------
                                   1634 ;	../LED_Manager/led.c:315: uint32_t rngU32(){
                                   1635 ;	-----------------------------------------
                                   1636 ;	 function rngU32
                                   1637 ;	-----------------------------------------
      002ACF                       1638 _rngU32:
                                   1639 ;	../LED_Manager/led.c:319: present = past + present;
      002ACF E5 38            [12] 1640 	mov	a,_rngU32_present_65536_107
      002AD1 25 34            [12] 1641 	add	a,_rngU32_past_65536_107
      002AD3 F5 38            [12] 1642 	mov	_rngU32_present_65536_107,a
      002AD5 E5 39            [12] 1643 	mov	a,(_rngU32_present_65536_107 + 1)
      002AD7 35 35            [12] 1644 	addc	a,(_rngU32_past_65536_107 + 1)
      002AD9 F5 39            [12] 1645 	mov	(_rngU32_present_65536_107 + 1),a
      002ADB E5 3A            [12] 1646 	mov	a,(_rngU32_present_65536_107 + 2)
      002ADD 35 36            [12] 1647 	addc	a,(_rngU32_past_65536_107 + 2)
      002ADF F5 3A            [12] 1648 	mov	(_rngU32_present_65536_107 + 2),a
      002AE1 E5 3B            [12] 1649 	mov	a,(_rngU32_present_65536_107 + 3)
      002AE3 35 37            [12] 1650 	addc	a,(_rngU32_past_65536_107 + 3)
      002AE5 F5 3B            [12] 1651 	mov	(_rngU32_present_65536_107 + 3),a
                                   1652 ;	../LED_Manager/led.c:320: past = present - past;
      002AE7 E5 38            [12] 1653 	mov	a,_rngU32_present_65536_107
      002AE9 C3               [12] 1654 	clr	c
      002AEA 95 34            [12] 1655 	subb	a,_rngU32_past_65536_107
      002AEC F5 34            [12] 1656 	mov	_rngU32_past_65536_107,a
      002AEE E5 39            [12] 1657 	mov	a,(_rngU32_present_65536_107 + 1)
      002AF0 95 35            [12] 1658 	subb	a,(_rngU32_past_65536_107 + 1)
      002AF2 F5 35            [12] 1659 	mov	(_rngU32_past_65536_107 + 1),a
      002AF4 E5 3A            [12] 1660 	mov	a,(_rngU32_present_65536_107 + 2)
      002AF6 95 36            [12] 1661 	subb	a,(_rngU32_past_65536_107 + 2)
      002AF8 F5 36            [12] 1662 	mov	(_rngU32_past_65536_107 + 2),a
      002AFA E5 3B            [12] 1663 	mov	a,(_rngU32_present_65536_107 + 3)
      002AFC 95 37            [12] 1664 	subb	a,(_rngU32_past_65536_107 + 3)
      002AFE F5 37            [12] 1665 	mov	(_rngU32_past_65536_107 + 3),a
                                   1666 ;	../LED_Manager/led.c:322: return present;
      002B00 85 38 82         [24] 1667 	mov	dpl,_rngU32_present_65536_107
      002B03 85 39 83         [24] 1668 	mov	dph,(_rngU32_present_65536_107 + 1)
      002B06 85 3A F0         [24] 1669 	mov	b,(_rngU32_present_65536_107 + 2)
      002B09 E5 3B            [12] 1670 	mov	a,(_rngU32_present_65536_107 + 3)
                                   1671 ;	../LED_Manager/led.c:323: }
      002B0B 22               [24] 1672 	ret
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'set_leds'
                                   1675 ;------------------------------------------------------------
                                   1676 ;green                     Allocated to stack - _bp -3
                                   1677 ;blue                      Allocated to stack - _bp -4
                                   1678 ;red                       Allocated to registers r7 
                                   1679 ;dimmer                    Allocated to registers r6 
                                   1680 ;------------------------------------------------------------
                                   1681 ;	../LED_Manager/led.c:325: void set_leds(uint8_t red, uint8_t green, uint8_t blue){
                                   1682 ;	-----------------------------------------
                                   1683 ;	 function set_leds
                                   1684 ;	-----------------------------------------
      002B0C                       1685 _set_leds:
      002B0C C0 1A            [24] 1686 	push	_bp
      002B0E 85 81 1A         [24] 1687 	mov	_bp,sp
      002B11 AF 82            [24] 1688 	mov	r7,dpl
                                   1689 ;	../LED_Manager/led.c:326: uint8_t dimmer = 0xFF;
      002B13 7E FF            [12] 1690 	mov	r6,#0xff
                                   1691 ;	../LED_Manager/led.c:328: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002B15 75 82 10         [24] 1692 	mov	dpl,#0x10
      002B18 C0 07            [24] 1693 	push	ar7
      002B1A C0 06            [24] 1694 	push	ar6
      002B1C 12 2F 91         [24] 1695 	lcall	_get_runtime_data
      002B1F E5 82            [12] 1696 	mov	a,dpl
      002B21 D0 06            [24] 1697 	pop	ar6
      002B23 D0 07            [24] 1698 	pop	ar7
      002B25 70 14            [24] 1699 	jnz	00104$
                                   1700 ;	../LED_Manager/led.c:329: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11){
      002B27 75 82 0E         [24] 1701 	mov	dpl,#0x0e
      002B2A C0 07            [24] 1702 	push	ar7
      002B2C C0 06            [24] 1703 	push	ar6
      002B2E 12 2F 91         [24] 1704 	lcall	_get_runtime_data
      002B31 E5 82            [12] 1705 	mov	a,dpl
      002B33 D0 06            [24] 1706 	pop	ar6
      002B35 D0 07            [24] 1707 	pop	ar7
      002B37 70 02            [24] 1708 	jnz	00104$
                                   1709 ;	../LED_Manager/led.c:330: dimmer = get_dmx_value(DMX_M11_DIMMER_INDEX);
      002B39 AE 24            [24] 1710 	mov	r6,(_DMX + 0x0003)
      002B3B                       1711 00104$:
                                   1712 ;	../LED_Manager/led.c:334: if(dimmer == 0xFF){
      002B3B BE FF 12         [24] 1713 	cjne	r6,#0xff,00106$
                                   1714 ;	../LED_Manager/led.c:335: PWMDATA11H = red;
      002B3E 8F BD            [24] 1715 	mov	_PWMDATA11H,r7
                                   1716 ;	../LED_Manager/led.c:336: PWMDATA17H = green;
      002B40 E5 1A            [12] 1717 	mov	a,_bp
      002B42 24 FD            [12] 1718 	add	a,#0xfd
      002B44 F8               [12] 1719 	mov	r0,a
      002B45 86 AD            [24] 1720 	mov	_PWMDATA17H,@r0
                                   1721 ;	../LED_Manager/led.c:337: PWMDATA14H = blue;
      002B47 E5 1A            [12] 1722 	mov	a,_bp
      002B49 24 FC            [12] 1723 	add	a,#0xfc
      002B4B F8               [12] 1724 	mov	r0,a
      002B4C 86 B5            [24] 1725 	mov	_PWMDATA14H,@r0
      002B4E 80 59            [24] 1726 	sjmp	00108$
      002B50                       1727 00106$:
                                   1728 ;	../LED_Manager/led.c:339: PWMDATA11H = ((uint8_t)((((uint16_t) red) * ((uint16_t)dimmer)) >> 8));
      002B50 7D 00            [12] 1729 	mov	r5,#0x00
      002B52 7C 00            [12] 1730 	mov	r4,#0x00
      002B54 C0 06            [24] 1731 	push	ar6
      002B56 C0 04            [24] 1732 	push	ar4
      002B58 C0 06            [24] 1733 	push	ar6
      002B5A C0 04            [24] 1734 	push	ar4
      002B5C 8F 82            [24] 1735 	mov	dpl,r7
      002B5E 8D 83            [24] 1736 	mov	dph,r5
      002B60 12 36 46         [24] 1737 	lcall	__mulint
      002B63 AF 83            [24] 1738 	mov	r7,dph
      002B65 15 81            [12] 1739 	dec	sp
      002B67 15 81            [12] 1740 	dec	sp
      002B69 D0 04            [24] 1741 	pop	ar4
      002B6B D0 06            [24] 1742 	pop	ar6
      002B6D 8F BD            [24] 1743 	mov	_PWMDATA11H,r7
                                   1744 ;	../LED_Manager/led.c:340: PWMDATA17H = ((uint8_t)((((uint16_t) green) * ((uint16_t)dimmer)) >> 8));
      002B6F E5 1A            [12] 1745 	mov	a,_bp
      002B71 24 FD            [12] 1746 	add	a,#0xfd
      002B73 F8               [12] 1747 	mov	r0,a
      002B74 86 05            [24] 1748 	mov	ar5,@r0
      002B76 7F 00            [12] 1749 	mov	r7,#0x00
      002B78 C0 06            [24] 1750 	push	ar6
      002B7A C0 04            [24] 1751 	push	ar4
      002B7C C0 06            [24] 1752 	push	ar6
      002B7E C0 04            [24] 1753 	push	ar4
      002B80 8D 82            [24] 1754 	mov	dpl,r5
      002B82 8F 83            [24] 1755 	mov	dph,r7
      002B84 12 36 46         [24] 1756 	lcall	__mulint
      002B87 AF 83            [24] 1757 	mov	r7,dph
      002B89 15 81            [12] 1758 	dec	sp
      002B8B 15 81            [12] 1759 	dec	sp
      002B8D 8F AD            [24] 1760 	mov	_PWMDATA17H,r7
                                   1761 ;	../LED_Manager/led.c:341: PWMDATA14H = ((uint8_t)((((uint16_t) blue) * ((uint16_t)dimmer)) >> 8));
      002B8F E5 1A            [12] 1762 	mov	a,_bp
      002B91 24 FC            [12] 1763 	add	a,#0xfc
      002B93 F8               [12] 1764 	mov	r0,a
      002B94 86 05            [24] 1765 	mov	ar5,@r0
      002B96 7F 00            [12] 1766 	mov	r7,#0x00
      002B98 8D 82            [24] 1767 	mov	dpl,r5
      002B9A 8F 83            [24] 1768 	mov	dph,r7
      002B9C 12 36 46         [24] 1769 	lcall	__mulint
      002B9F AE 82            [24] 1770 	mov	r6,dpl
      002BA1 AF 83            [24] 1771 	mov	r7,dph
      002BA3 15 81            [12] 1772 	dec	sp
      002BA5 15 81            [12] 1773 	dec	sp
      002BA7 8F B5            [24] 1774 	mov	_PWMDATA14H,r7
      002BA9                       1775 00108$:
                                   1776 ;	../LED_Manager/led.c:343: }
      002BA9 D0 1A            [24] 1777 	pop	_bp
      002BAB 22               [24] 1778 	ret
                                   1779 	.area CSEG    (CODE)
                                   1780 	.area CONST   (CODE)
                                   1781 	.area XINIT   (CODE)
                                   1782 	.area CABS    (ABS,CODE)
