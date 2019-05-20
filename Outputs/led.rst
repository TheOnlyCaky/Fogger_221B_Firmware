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
                                     97 	.globl _set_leds_PARM_3
                                     98 	.globl _set_leds_PARM_2
                                     99 	.globl _play_macro_PARM_3
                                    100 	.globl _play_macro_PARM_2
                                    101 	.globl _tick_led
                                    102 	.globl _dmx_to_macro
                                    103 	.globl _play_macro
                                    104 	.globl _color_wheel
                                    105 	.globl _whiteout
                                    106 	.globl _blackout
                                    107 	.globl _rngU32
                                    108 	.globl _set_leds
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           0000BF   114 _CHIPCON	=	0x00bf
                           0000B7   115 _PCLKSEL	=	0x00b7
                           000080   116 _P0	=	0x0080
                           000090   117 _P1	=	0x0090
                           0000A0   118 _P2	=	0x00a0
                           0000B0   119 _P3	=	0x00b0
                           0000A8   120 _IE	=	0x00a8
                           0000E8   121 _EIE	=	0x00e8
                           000091   122 _EXIF	=	0x0091
                           0000DA   123 _ADCSEL	=	0x00da
                           0000DB   124 _ADCVAL1	=	0x00db
                           0000DC   125 _ADCVAL2	=	0x00dc
                           0000D9   126 _P1_OPT	=	0x00d9
                           000098   127 _SCON	=	0x0098
                           0000CA   128 _RCAP2L	=	0x00ca
                           0000CB   129 _RCAP2H	=	0x00cb
                           0000C8   130 _T2CON	=	0x00c8
                           00009B   131 _TH3	=	0x009b
                           00009A   132 _TL3	=	0x009a
                           000099   133 _SBUF	=	0x0099
                           0000D3   134 _PWM_EA1	=	0x00d3
                           0000D4   135 _PWM_EA2	=	0x00d4
                           0000BD   136 _PWMDATA11H	=	0x00bd
                           0000BE   137 _PWMDATA11L	=	0x00be
                           0000B5   138 _PWMDATA14H	=	0x00b5
                           0000B6   139 _PWMDATA14L	=	0x00b6
                           0000AD   140 _PWMDATA17H	=	0x00ad
                           0000AE   141 _PWMDATA17L	=	0x00ae
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008E   144 _CKCON	=	0x008e
                           00008A   145 _TL0	=	0x008a
                           00008C   146 _TH0	=	0x008c
                           0000E4   147 _IAPEN	=	0x00e4
                           0000E5   148 _IAP_ADRL	=	0x00e5
                           0000E6   149 _IAP_ADRH	=	0x00e6
                                    150 ;--------------------------------------------------------
                                    151 ; special function bits
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           000080   155 _P0_0	=	0x0080
                           000081   156 _P0_1	=	0x0081
                           000082   157 _P0_2	=	0x0082
                           000083   158 _P0_3	=	0x0083
                           000084   159 _P0_4	=	0x0084
                           000085   160 _P0_5	=	0x0085
                           000086   161 _P0_6	=	0x0086
                           000087   162 _P0_7	=	0x0087
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           0000A0   171 _P2_0	=	0x00a0
                           0000A1   172 _P2_1	=	0x00a1
                           0000A2   173 _P2_2	=	0x00a2
                           0000A3   174 _P2_3	=	0x00a3
                           0000A4   175 _P2_4	=	0x00a4
                           0000A5   176 _P2_5	=	0x00a5
                           0000A6   177 _P2_6	=	0x00a6
                           0000A7   178 _P2_7	=	0x00a7
                           0000B0   179 _P3_0	=	0x00b0
                           0000B1   180 _P3_1	=	0x00b1
                           0000B2   181 _P3_2	=	0x00b2
                           0000B3   182 _P3_3	=	0x00b3
                           0000B4   183 _P3_4	=	0x00b4
                           0000B5   184 _P3_5	=	0x00b5
                           0000B6   185 _P3_6	=	0x00b6
                           0000B7   186 _P3_7	=	0x00b7
                           0000AF   187 _EA	=	0x00af
                           0000A9   188 _ET0	=	0x00a9
                           0000AC   189 _ES	=	0x00ac
                           000098   190 _RI	=	0x0098
                           000093   191 _SCK	=	0x0093
                           000095   192 _SER	=	0x0095
                           000092   193 _RCK	=	0x0092
                           00009F   194 _SM0	=	0x009f
                           00009E   195 _SM1	=	0x009e
                           00009D   196 _SM2	=	0x009d
                           00009C   197 _REN	=	0x009c
                           0000CD   198 _RCLK	=	0x00cd
                           0000CC   199 _TCLK	=	0x00cc
                           0000CB   200 _EXEN2	=	0x00cb
                           0000CA   201 _TR2	=	0x00ca
                           0000C9   202 _CT2	=	0x00c9
                           0000C8   203 _CPRL2	=	0x00c8
                                    204 ;--------------------------------------------------------
                                    205 ; overlayable register banks
                                    206 ;--------------------------------------------------------
                                    207 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        208 	.ds 8
                                    209 ;--------------------------------------------------------
                                    210 ; internal ram data
                                    211 ;--------------------------------------------------------
                                    212 	.area DSEG    (DATA)
      000039                        213 _tick_led_on_65536_17:
      000039                        214 	.ds 1
      00003A                        215 _tick_led_sloc0_1_0:
      00003A                        216 	.ds 4
      00003E                        217 _play_macro_tock_65536_55:
      00003E                        218 	.ds 1
      00003F                        219 _play_macro_primaryCount_65536_55:
      00003F                        220 	.ds 1
      000040                        221 _play_macro_secondaryCount_65536_55:
      000040                        222 	.ds 1
      000041                        223 _play_macro_direction_65536_55:
      000041                        224 	.ds 1
      000042                        225 _play_macro_PARM_2:
      000042                        226 	.ds 1
      000043                        227 _play_macro_PARM_3:
      000043                        228 	.ds 1
      000044                        229 _play_macro_tick_65536_54:
      000044                        230 	.ds 4
      000048                        231 _play_macro_rng_65536_55:
      000048                        232 	.ds 4
      00004C                        233 _play_macro_changed_65536_55:
      00004C                        234 	.ds 1
      00004D                        235 _rngU32_past_65536_106:
      00004D                        236 	.ds 4
      000051                        237 _rngU32_present_65536_106:
      000051                        238 	.ds 4
      000055                        239 _set_leds_PARM_2:
      000055                        240 	.ds 1
      000056                        241 _set_leds_PARM_3:
      000056                        242 	.ds 1
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram 
                                    245 ;--------------------------------------------------------
                                    246 	.area	OSEG    (OVR,DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; global & static initialisations
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 ;------------------------------------------------------------
                                    294 ;Allocation info for local variables in function 'tick_led'
                                    295 ;------------------------------------------------------------
                                    296 ;on                        Allocated with name '_tick_led_on_65536_17'
                                    297 ;tick                      Allocated to registers r4 r5 r6 r7 
                                    298 ;dimmer                    Allocated to registers r2 
                                    299 ;value                     Allocated to registers r3 
                                    300 ;strobe                    Allocated to registers r3 
                                    301 ;sloc0                     Allocated with name '_tick_led_sloc0_1_0'
                                    302 ;------------------------------------------------------------
                                    303 ;	../LED_Manager/led.c:22: static uint8_t on = 0;
      0000CE 75 39 00         [24]  304 	mov	_tick_led_on_65536_17,#0x00
                                    305 ;------------------------------------------------------------
                                    306 ;Allocation info for local variables in function 'play_macro'
                                    307 ;------------------------------------------------------------
                                    308 ;tock                      Allocated with name '_play_macro_tock_65536_55'
                                    309 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
                                    310 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
                                    311 ;direction                 Allocated with name '_play_macro_direction_65536_55'
                                    312 ;macro                     Allocated with name '_play_macro_PARM_2'
                                    313 ;macro_speed               Allocated with name '_play_macro_PARM_3'
                                    314 ;tick                      Allocated with name '_play_macro_tick_65536_54'
                                    315 ;rng                       Allocated with name '_play_macro_rng_65536_55'
                                    316 ;changed                   Allocated with name '_play_macro_changed_65536_55'
                                    317 ;------------------------------------------------------------
                                    318 ;	../LED_Manager/led.c:136: static uint8_t tock = 0;
      0000D1 75 3E 00         [24]  319 	mov	_play_macro_tock_65536_55,#0x00
                                    320 ;	../LED_Manager/led.c:137: static uint8_t primaryCount = 0;
      0000D4 75 3F 00         [24]  321 	mov	_play_macro_primaryCount_65536_55,#0x00
                                    322 ;	../LED_Manager/led.c:138: static uint8_t secondaryCount = 0;
      0000D7 75 40 00         [24]  323 	mov	_play_macro_secondaryCount_65536_55,#0x00
                                    324 ;	../LED_Manager/led.c:139: static uint8_t direction = 0;
      0000DA 75 41 00         [24]  325 	mov	_play_macro_direction_65536_55,#0x00
                                    326 ;------------------------------------------------------------
                                    327 ;Allocation info for local variables in function 'rngU32'
                                    328 ;------------------------------------------------------------
                                    329 ;past                      Allocated with name '_rngU32_past_65536_106'
                                    330 ;present                   Allocated with name '_rngU32_present_65536_106'
                                    331 ;------------------------------------------------------------
                                    332 ;	../LED_Manager/led.c:313: static uint32_t past = 1;
      0000DD 75 4D 01         [24]  333 	mov	_rngU32_past_65536_106,#0x01
      0000E0 E4               [12]  334 	clr	a
      0000E1 F5 4E            [12]  335 	mov	(_rngU32_past_65536_106 + 1),a
      0000E3 F5 4F            [12]  336 	mov	(_rngU32_past_65536_106 + 2),a
      0000E5 F5 50            [12]  337 	mov	(_rngU32_past_65536_106 + 3),a
                                    338 ;	../LED_Manager/led.c:314: static uint32_t present = 1;
      0000E7 75 51 01         [24]  339 	mov	_rngU32_present_65536_106,#0x01
      0000EA F5 52            [12]  340 	mov	(_rngU32_present_65536_106 + 1),a
      0000EC F5 53            [12]  341 	mov	(_rngU32_present_65536_106 + 2),a
      0000EE F5 54            [12]  342 	mov	(_rngU32_present_65536_106 + 3),a
                                    343 ;--------------------------------------------------------
                                    344 ; Home
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area HOME    (CODE)
                                    348 ;--------------------------------------------------------
                                    349 ; code
                                    350 ;--------------------------------------------------------
                                    351 	.area CSEG    (CODE)
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'tick_led'
                                    354 ;------------------------------------------------------------
                                    355 ;on                        Allocated with name '_tick_led_on_65536_17'
                                    356 ;tick                      Allocated to registers r4 r5 r6 r7 
                                    357 ;dimmer                    Allocated to registers r2 
                                    358 ;value                     Allocated to registers r3 
                                    359 ;strobe                    Allocated to registers r3 
                                    360 ;sloc0                     Allocated with name '_tick_led_sloc0_1_0'
                                    361 ;------------------------------------------------------------
                                    362 ;	../LED_Manager/led.c:21: void tick_led(uint32_t tick){
                                    363 ;	-----------------------------------------
                                    364 ;	 function tick_led
                                    365 ;	-----------------------------------------
      001E70                        366 _tick_led:
                           000007   367 	ar7 = 0x07
                           000006   368 	ar6 = 0x06
                           000005   369 	ar5 = 0x05
                           000004   370 	ar4 = 0x04
                           000003   371 	ar3 = 0x03
                           000002   372 	ar2 = 0x02
                           000001   373 	ar1 = 0x01
                           000000   374 	ar0 = 0x00
      001E70 AC 82            [24]  375 	mov	r4,dpl
      001E72 AD 83            [24]  376 	mov	r5,dph
      001E74 AE F0            [24]  377 	mov	r6,b
      001E76 FF               [12]  378 	mov	r7,a
                                    379 ;	../LED_Manager/led.c:27: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      001E77 75 82 10         [24]  380 	mov	dpl,#0x10
      001E7A C0 07            [24]  381 	push	ar7
      001E7C C0 06            [24]  382 	push	ar6
      001E7E C0 05            [24]  383 	push	ar5
      001E80 C0 04            [24]  384 	push	ar4
      001E82 12 28 BF         [24]  385 	lcall	_get_runtime_data
      001E85 E5 82            [12]  386 	mov	a,dpl
      001E87 D0 04            [24]  387 	pop	ar4
      001E89 D0 05            [24]  388 	pop	ar5
      001E8B D0 06            [24]  389 	pop	ar6
      001E8D D0 07            [24]  390 	pop	ar7
      001E8F 60 03            [24]  391 	jz	00227$
      001E91 02 1F D5         [24]  392 	ljmp	00143$
      001E94                        393 00227$:
                                    394 ;	../LED_Manager/led.c:28: switch(get_runtime_data(MODE_INDEX)){
      001E94 75 82 0E         [24]  395 	mov	dpl,#0x0e
      001E97 C0 07            [24]  396 	push	ar7
      001E99 C0 06            [24]  397 	push	ar6
      001E9B C0 05            [24]  398 	push	ar5
      001E9D C0 04            [24]  399 	push	ar4
      001E9F 12 28 BF         [24]  400 	lcall	_get_runtime_data
      001EA2 AB 82            [24]  401 	mov	r3,dpl
      001EA4 D0 04            [24]  402 	pop	ar4
      001EA6 D0 05            [24]  403 	pop	ar5
      001EA8 D0 06            [24]  404 	pop	ar6
      001EAA D0 07            [24]  405 	pop	ar7
      001EAC BB 00 02         [24]  406 	cjne	r3,#0x00,00228$
      001EAF 80 09            [24]  407 	sjmp	00101$
      001EB1                        408 00228$:
      001EB1 BB 01 03         [24]  409 	cjne	r3,#0x01,00229$
      001EB4 02 1F 74         [24]  410 	ljmp	00119$
      001EB7                        411 00229$:
      001EB7 02 24 9B         [24]  412 	ljmp	_blackout
                                    413 ;	../LED_Manager/led.c:29: case OPTION_DMX_MODE_11:
      001EBA                        414 00101$:
                                    415 ;	../LED_Manager/led.c:30: value = get_dmx_value(DMX_M11_MACRO_INDEX);
      001EBA AB 35            [24]  416 	mov	r3,(_DMX + 0x0008)
                                    417 ;	../LED_Manager/led.c:32: if(value >= DMX_MACRO_NONE){
      001EBC BB 14 00         [24]  418 	cjne	r3,#0x14,00230$
      001EBF                        419 00230$:
      001EBF 40 57            [24]  420 	jc	00117$
                                    421 ;	../LED_Manager/led.c:33: if(value < DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
      001EC1 BB 94 00         [24]  422 	cjne	r3,#0x94,00232$
      001EC4                        423 00232$:
      001EC4 50 0C            [24]  424 	jnc	00106$
                                    425 ;	../LED_Manager/led.c:34: color_wheel((value - DMX_MACRO_NONE) << 1);
      001EC6 8B 02            [24]  426 	mov	ar2,r3
      001EC8 EA               [12]  427 	mov	a,r2
      001EC9 24 EC            [12]  428 	add	a,#0xec
      001ECB 25 E0            [12]  429 	add	a,acc
      001ECD F5 82            [12]  430 	mov	dpl,a
      001ECF 02 24 2F         [24]  431 	ljmp	_color_wheel
      001ED2                        432 00106$:
                                    433 ;	../LED_Manager/led.c:36: dimmer = get_dmx_value(DMX_M11_MACRO_SPEED_INDEX);
                                    434 ;	../LED_Manager/led.c:38: if(dimmer > 10){
      001ED2 E5 36            [12]  435 	mov	a,(_DMX + 0x0009)
      001ED4 FA               [12]  436 	mov	r2,a
      001ED5 24 F5            [12]  437 	add	a,#0xff - 0x0a
      001ED7 50 2B            [24]  438 	jnc	00103$
                                    439 ;	../LED_Manager/led.c:39: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      001ED9 8B 82            [24]  440 	mov	dpl,r3
      001EDB C0 07            [24]  441 	push	ar7
      001EDD C0 06            [24]  442 	push	ar6
      001EDF C0 05            [24]  443 	push	ar5
      001EE1 C0 04            [24]  444 	push	ar4
      001EE3 C0 02            [24]  445 	push	ar2
      001EE5 12 20 A6         [24]  446 	lcall	_dmx_to_macro
      001EE8 85 82 42         [24]  447 	mov	_play_macro_PARM_2,dpl
      001EEB D0 02            [24]  448 	pop	ar2
      001EED D0 04            [24]  449 	pop	ar4
      001EEF D0 05            [24]  450 	pop	ar5
      001EF1 D0 06            [24]  451 	pop	ar6
      001EF3 D0 07            [24]  452 	pop	ar7
      001EF5 EA               [12]  453 	mov	a,r2
      001EF6 24 FB            [12]  454 	add	a,#0xfb
      001EF8 F5 43            [12]  455 	mov	_play_macro_PARM_3,a
      001EFA 8C 82            [24]  456 	mov	dpl,r4
      001EFC 8D 83            [24]  457 	mov	dph,r5
      001EFE 8E F0            [24]  458 	mov	b,r6
      001F00 EF               [12]  459 	mov	a,r7
      001F01 02 20 EB         [24]  460 	ljmp	_play_macro
      001F04                        461 00103$:
                                    462 ;	../LED_Manager/led.c:41: play_macro(0, dmx_to_macro(value), 0);
      001F04 8B 82            [24]  463 	mov	dpl,r3
      001F06 12 20 A6         [24]  464 	lcall	_dmx_to_macro
      001F09 85 82 42         [24]  465 	mov	_play_macro_PARM_2,dpl
      001F0C 75 43 00         [24]  466 	mov	_play_macro_PARM_3,#0x00
      001F0F 90 00 00         [24]  467 	mov	dptr,#(0x00&0x00ff)
      001F12 E4               [12]  468 	clr	a
      001F13 F5 F0            [12]  469 	mov	b,a
      001F15 02 20 EB         [24]  470 	ljmp	_play_macro
      001F18                        471 00117$:
                                    472 ;	../LED_Manager/led.c:46: strobe = get_dmx_value(DMX_M11_STROBE_INDEX);
                                    473 ;	../LED_Manager/led.c:48: if(strobe){
      001F18 E5 34            [12]  474 	mov	a,(_DMX + 0x0007)
      001F1A FB               [12]  475 	mov	r3,a
      001F1B 60 41            [24]  476 	jz	00111$
                                    477 ;	../LED_Manager/led.c:49: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      001F1D 7A 00            [12]  478 	mov	r2,#0x00
      001F1F EB               [12]  479 	mov	a,r3
      001F20 2B               [12]  480 	add	a,r3
      001F21 FB               [12]  481 	mov	r3,a
      001F22 EA               [12]  482 	mov	a,r2
      001F23 33               [12]  483 	rlc	a
      001F24 FA               [12]  484 	mov	r2,a
      001F25 74 1C            [12]  485 	mov	a,#0x1c
      001F27 C3               [12]  486 	clr	c
      001F28 9B               [12]  487 	subb	a,r3
      001F29 FB               [12]  488 	mov	r3,a
      001F2A 74 02            [12]  489 	mov	a,#0x02
      001F2C 9A               [12]  490 	subb	a,r2
      001F2D 8B 74            [24]  491 	mov	__modulong_PARM_2,r3
      001F2F F5 75            [12]  492 	mov	(__modulong_PARM_2 + 1),a
      001F31 33               [12]  493 	rlc	a
      001F32 95 E0            [12]  494 	subb	a,acc
      001F34 F5 76            [12]  495 	mov	(__modulong_PARM_2 + 2),a
      001F36 F5 77            [12]  496 	mov	(__modulong_PARM_2 + 3),a
      001F38 8C 82            [24]  497 	mov	dpl,r4
      001F3A 8D 83            [24]  498 	mov	dph,r5
      001F3C 8E F0            [24]  499 	mov	b,r6
      001F3E EF               [12]  500 	mov	a,r7
      001F3F 12 2E 59         [24]  501 	lcall	__modulong
      001F42 85 82 3A         [24]  502 	mov	_tick_led_sloc0_1_0,dpl
      001F45 85 83 3B         [24]  503 	mov	(_tick_led_sloc0_1_0 + 1),dph
      001F48 85 F0 3C         [24]  504 	mov	(_tick_led_sloc0_1_0 + 2),b
      001F4B F5 3D            [12]  505 	mov	(_tick_led_sloc0_1_0 + 3),a
      001F4D E5 3A            [12]  506 	mov	a,_tick_led_sloc0_1_0
      001F4F 45 3B            [12]  507 	orl	a,(_tick_led_sloc0_1_0 + 1)
      001F51 45 3C            [12]  508 	orl	a,(_tick_led_sloc0_1_0 + 2)
      001F53 45 3D            [12]  509 	orl	a,(_tick_led_sloc0_1_0 + 3)
      001F55 70 0A            [24]  510 	jnz	00112$
                                    511 ;	../LED_Manager/led.c:50: on = ~on;
      001F57 E5 39            [12]  512 	mov	a,_tick_led_on_65536_17
      001F59 F4               [12]  513 	cpl	a
      001F5A F5 39            [12]  514 	mov	_tick_led_on_65536_17,a
      001F5C 80 03            [24]  515 	sjmp	00112$
      001F5E                        516 00111$:
                                    517 ;	../LED_Manager/led.c:53: on = 0xFF;
      001F5E 75 39 FF         [24]  518 	mov	_tick_led_on_65536_17,#0xff
      001F61                        519 00112$:
                                    520 ;	../LED_Manager/led.c:56: if(on){
      001F61 E5 39            [12]  521 	mov	a,_tick_led_on_65536_17
      001F63 60 0C            [24]  522 	jz	00114$
                                    523 ;	../LED_Manager/led.c:58: set_leds(get_dmx_value(DMX_M11_RED_INDEX),
      001F65 85 31 82         [24]  524 	mov	dpl,(_DMX + 0x0004)
                                    525 ;	../LED_Manager/led.c:59: get_dmx_value(DMX_M11_GREEN_INDEX),
      001F68 85 32 55         [24]  526 	mov	_set_leds_PARM_2,(_DMX + 0x0005)
                                    527 ;	../LED_Manager/led.c:60: get_dmx_value(DMX_M11_BLUE_INDEX));
      001F6B 85 33 56         [24]  528 	mov	_set_leds_PARM_3,(_DMX + 0x0006)
      001F6E 02 24 E4         [24]  529 	ljmp	_set_leds
      001F71                        530 00114$:
                                    531 ;	../LED_Manager/led.c:63: blackout();
                                    532 ;	../LED_Manager/led.c:67: break;
      001F71 02 24 9B         [24]  533 	ljmp	_blackout
                                    534 ;	../LED_Manager/led.c:68: case OPTION_DMX_MODE_3: /* Only macros */
      001F74                        535 00119$:
                                    536 ;	../LED_Manager/led.c:69: value = get_dmx_value(DMX_M3_MACRO_INDEX);
      001F74 AB 2E            [24]  537 	mov	r3,(_DMX + 0x0001)
                                    538 ;	../LED_Manager/led.c:70: if(value >= DMX_MACRO_NONE){
      001F76 BB 14 00         [24]  539 	cjne	r3,#0x14,00238$
      001F79                        540 00238$:
      001F79 40 57            [24]  541 	jc	00127$
                                    542 ;	../LED_Manager/led.c:71: if(value < DMX_MACRO_COLOR_WHEEL){
      001F7B BB 94 00         [24]  543 	cjne	r3,#0x94,00240$
      001F7E                        544 00240$:
      001F7E 50 0C            [24]  545 	jnc	00124$
                                    546 ;	../LED_Manager/led.c:72: color_wheel((value - DMX_MACRO_NONE) << 1);
      001F80 8B 02            [24]  547 	mov	ar2,r3
      001F82 EA               [12]  548 	mov	a,r2
      001F83 24 EC            [12]  549 	add	a,#0xec
      001F85 25 E0            [12]  550 	add	a,acc
      001F87 F5 82            [12]  551 	mov	dpl,a
      001F89 02 24 2F         [24]  552 	ljmp	_color_wheel
      001F8C                        553 00124$:
                                    554 ;	../LED_Manager/led.c:74: dimmer = get_dmx_value(DMX_M3_MACRO_SPEED_INDEX);
                                    555 ;	../LED_Manager/led.c:76: if(dimmer > 10){
      001F8C E5 2F            [12]  556 	mov	a,(_DMX + 0x0002)
      001F8E FA               [12]  557 	mov	r2,a
      001F8F 24 F5            [12]  558 	add	a,#0xff - 0x0a
      001F91 50 2B            [24]  559 	jnc	00121$
                                    560 ;	../LED_Manager/led.c:77: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      001F93 8B 82            [24]  561 	mov	dpl,r3
      001F95 C0 07            [24]  562 	push	ar7
      001F97 C0 06            [24]  563 	push	ar6
      001F99 C0 05            [24]  564 	push	ar5
      001F9B C0 04            [24]  565 	push	ar4
      001F9D C0 02            [24]  566 	push	ar2
      001F9F 12 20 A6         [24]  567 	lcall	_dmx_to_macro
      001FA2 85 82 42         [24]  568 	mov	_play_macro_PARM_2,dpl
      001FA5 D0 02            [24]  569 	pop	ar2
      001FA7 D0 04            [24]  570 	pop	ar4
      001FA9 D0 05            [24]  571 	pop	ar5
      001FAB D0 06            [24]  572 	pop	ar6
      001FAD D0 07            [24]  573 	pop	ar7
      001FAF EA               [12]  574 	mov	a,r2
      001FB0 24 FB            [12]  575 	add	a,#0xfb
      001FB2 F5 43            [12]  576 	mov	_play_macro_PARM_3,a
      001FB4 8C 82            [24]  577 	mov	dpl,r4
      001FB6 8D 83            [24]  578 	mov	dph,r5
      001FB8 8E F0            [24]  579 	mov	b,r6
      001FBA EF               [12]  580 	mov	a,r7
      001FBB 02 20 EB         [24]  581 	ljmp	_play_macro
      001FBE                        582 00121$:
                                    583 ;	../LED_Manager/led.c:79: play_macro(0, dmx_to_macro(value), 0);
      001FBE 8B 82            [24]  584 	mov	dpl,r3
      001FC0 12 20 A6         [24]  585 	lcall	_dmx_to_macro
      001FC3 85 82 42         [24]  586 	mov	_play_macro_PARM_2,dpl
      001FC6 75 43 00         [24]  587 	mov	_play_macro_PARM_3,#0x00
      001FC9 90 00 00         [24]  588 	mov	dptr,#(0x00&0x00ff)
      001FCC E4               [12]  589 	clr	a
      001FCD F5 F0            [12]  590 	mov	b,a
      001FCF 02 20 EB         [24]  591 	ljmp	_play_macro
      001FD2                        592 00127$:
                                    593 ;	../LED_Manager/led.c:83: blackout();
                                    594 ;	../LED_Manager/led.c:85: break;
                                    595 ;	../LED_Manager/led.c:86: default:
                                    596 ;	../LED_Manager/led.c:87: blackout();
                                    597 ;	../LED_Manager/led.c:89: }
      001FD2 02 24 9B         [24]  598 	ljmp	_blackout
      001FD5                        599 00143$:
                                    600 ;	../LED_Manager/led.c:91: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
      001FD5 75 82 03         [24]  601 	mov	dpl,#0x03
      001FD8 C0 07            [24]  602 	push	ar7
      001FDA C0 06            [24]  603 	push	ar6
      001FDC C0 05            [24]  604 	push	ar5
      001FDE C0 04            [24]  605 	push	ar4
      001FE0 12 28 BF         [24]  606 	lcall	_get_runtime_data
      001FE3 E5 82            [12]  607 	mov	a,dpl
      001FE5 D0 04            [24]  608 	pop	ar4
      001FE7 D0 05            [24]  609 	pop	ar5
      001FE9 D0 06            [24]  610 	pop	ar6
      001FEB D0 07            [24]  611 	pop	ar7
      001FED 60 31            [24]  612 	jz	00140$
                                    613 ;	../LED_Manager/led.c:92: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
      001FEF 75 82 03         [24]  614 	mov	dpl,#0x03
      001FF2 C0 07            [24]  615 	push	ar7
      001FF4 C0 06            [24]  616 	push	ar6
      001FF6 C0 05            [24]  617 	push	ar5
      001FF8 C0 04            [24]  618 	push	ar4
      001FFA 12 28 BF         [24]  619 	lcall	_get_runtime_data
      001FFD AB 82            [24]  620 	mov	r3,dpl
      001FFF 75 82 04         [24]  621 	mov	dpl,#0x04
      002002 C0 03            [24]  622 	push	ar3
      002004 12 28 BF         [24]  623 	lcall	_get_runtime_data
      002007 85 82 43         [24]  624 	mov	_play_macro_PARM_3,dpl
      00200A D0 03            [24]  625 	pop	ar3
      00200C D0 04            [24]  626 	pop	ar4
      00200E D0 05            [24]  627 	pop	ar5
      002010 D0 06            [24]  628 	pop	ar6
      002012 D0 07            [24]  629 	pop	ar7
      002014 8B 42            [24]  630 	mov	_play_macro_PARM_2,r3
      002016 8C 82            [24]  631 	mov	dpl,r4
      002018 8D 83            [24]  632 	mov	dph,r5
      00201A 8E F0            [24]  633 	mov	b,r6
      00201C EF               [12]  634 	mov	a,r7
      00201D 02 20 EB         [24]  635 	ljmp	_play_macro
      002020                        636 00140$:
                                    637 ;	../LED_Manager/led.c:95: strobe = get_runtime_data(STROBE_INDEX);
      002020 75 82 08         [24]  638 	mov	dpl,#0x08
      002023 C0 07            [24]  639 	push	ar7
      002025 C0 06            [24]  640 	push	ar6
      002027 C0 05            [24]  641 	push	ar5
      002029 C0 04            [24]  642 	push	ar4
      00202B 12 28 BF         [24]  643 	lcall	_get_runtime_data
      00202E AB 82            [24]  644 	mov	r3,dpl
      002030 D0 04            [24]  645 	pop	ar4
      002032 D0 05            [24]  646 	pop	ar5
      002034 D0 06            [24]  647 	pop	ar6
      002036 D0 07            [24]  648 	pop	ar7
                                    649 ;	../LED_Manager/led.c:97: if(strobe){
      002038 EB               [12]  650 	mov	a,r3
      002039 60 39            [24]  651 	jz	00134$
                                    652 ;	../LED_Manager/led.c:98: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      00203B 7A 00            [12]  653 	mov	r2,#0x00
      00203D EB               [12]  654 	mov	a,r3
      00203E 2B               [12]  655 	add	a,r3
      00203F FB               [12]  656 	mov	r3,a
      002040 EA               [12]  657 	mov	a,r2
      002041 33               [12]  658 	rlc	a
      002042 FA               [12]  659 	mov	r2,a
      002043 74 1C            [12]  660 	mov	a,#0x1c
      002045 C3               [12]  661 	clr	c
      002046 9B               [12]  662 	subb	a,r3
      002047 FB               [12]  663 	mov	r3,a
      002048 74 02            [12]  664 	mov	a,#0x02
      00204A 9A               [12]  665 	subb	a,r2
      00204B 8B 74            [24]  666 	mov	__modulong_PARM_2,r3
      00204D F5 75            [12]  667 	mov	(__modulong_PARM_2 + 1),a
      00204F 33               [12]  668 	rlc	a
      002050 95 E0            [12]  669 	subb	a,acc
      002052 F5 76            [12]  670 	mov	(__modulong_PARM_2 + 2),a
      002054 F5 77            [12]  671 	mov	(__modulong_PARM_2 + 3),a
      002056 8C 82            [24]  672 	mov	dpl,r4
      002058 8D 83            [24]  673 	mov	dph,r5
      00205A 8E F0            [24]  674 	mov	b,r6
      00205C EF               [12]  675 	mov	a,r7
      00205D 12 2E 59         [24]  676 	lcall	__modulong
      002060 AC 82            [24]  677 	mov	r4,dpl
      002062 AD 83            [24]  678 	mov	r5,dph
      002064 AE F0            [24]  679 	mov	r6,b
      002066 FF               [12]  680 	mov	r7,a
      002067 EC               [12]  681 	mov	a,r4
      002068 4D               [12]  682 	orl	a,r5
      002069 4E               [12]  683 	orl	a,r6
      00206A 4F               [12]  684 	orl	a,r7
      00206B 70 0A            [24]  685 	jnz	00135$
                                    686 ;	../LED_Manager/led.c:99: on = ~on;
      00206D E5 39            [12]  687 	mov	a,_tick_led_on_65536_17
      00206F F4               [12]  688 	cpl	a
      002070 F5 39            [12]  689 	mov	_tick_led_on_65536_17,a
      002072 80 03            [24]  690 	sjmp	00135$
      002074                        691 00134$:
                                    692 ;	../LED_Manager/led.c:102: on = 0xFF;
      002074 75 39 FF         [24]  693 	mov	_tick_led_on_65536_17,#0xff
      002077                        694 00135$:
                                    695 ;	../LED_Manager/led.c:105: if(on){
      002077 E5 39            [12]  696 	mov	a,_tick_led_on_65536_17
      002079 60 28            [24]  697 	jz	00137$
                                    698 ;	../LED_Manager/led.c:106: set_leds(get_runtime_data(RED_INDEX), get_runtime_data(GREEN_INDEX), get_runtime_data(BLUE_INDEX));
      00207B 75 82 05         [24]  699 	mov	dpl,#0x05
      00207E 12 28 BF         [24]  700 	lcall	_get_runtime_data
      002081 AF 82            [24]  701 	mov	r7,dpl
      002083 75 82 06         [24]  702 	mov	dpl,#0x06
      002086 C0 07            [24]  703 	push	ar7
      002088 12 28 BF         [24]  704 	lcall	_get_runtime_data
      00208B AE 82            [24]  705 	mov	r6,dpl
      00208D 75 82 07         [24]  706 	mov	dpl,#0x07
      002090 C0 06            [24]  707 	push	ar6
      002092 12 28 BF         [24]  708 	lcall	_get_runtime_data
      002095 85 82 56         [24]  709 	mov	_set_leds_PARM_3,dpl
      002098 D0 06            [24]  710 	pop	ar6
      00209A D0 07            [24]  711 	pop	ar7
      00209C 8E 55            [24]  712 	mov	_set_leds_PARM_2,r6
      00209E 8F 82            [24]  713 	mov	dpl,r7
      0020A0 02 24 E4         [24]  714 	ljmp	_set_leds
      0020A3                        715 00137$:
                                    716 ;	../LED_Manager/led.c:108: blackout();
                                    717 ;	../LED_Manager/led.c:112: }
      0020A3 02 24 9B         [24]  718 	ljmp	_blackout
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'dmx_to_macro'
                                    721 ;------------------------------------------------------------
                                    722 ;dmx_value                 Allocated to registers r7 
                                    723 ;------------------------------------------------------------
                                    724 ;	../LED_Manager/led.c:114: uint8_t dmx_to_macro(uint8_t dmx_value){
                                    725 ;	-----------------------------------------
                                    726 ;	 function dmx_to_macro
                                    727 ;	-----------------------------------------
      0020A6                        728 _dmx_to_macro:
      0020A6 AF 82            [24]  729 	mov	r7,dpl
                                    730 ;	../LED_Manager/led.c:116: if(dmx_value < DMX_MACRO_WHITE){
      0020A8 BF B4 00         [24]  731 	cjne	r7,#0xb4,00151$
      0020AB                        732 00151$:
      0020AB 50 04            [24]  733 	jnc	00119$
                                    734 ;	../LED_Manager/led.c:117: return OPTION_MACRO_WHITE;
      0020AD 75 82 21         [24]  735 	mov	dpl,#0x21
      0020B0 22               [24]  736 	ret
      0020B1                        737 00119$:
                                    738 ;	../LED_Manager/led.c:118: } else if(dmx_value < DMX_MACRO_RAINBOW){
      0020B1 BF BE 00         [24]  739 	cjne	r7,#0xbe,00153$
      0020B4                        740 00153$:
      0020B4 50 04            [24]  741 	jnc	00116$
                                    742 ;	../LED_Manager/led.c:119: return OPTION_MACRO_RAINBOW_DMX;
      0020B6 75 82 01         [24]  743 	mov	dpl,#0x01
      0020B9 22               [24]  744 	ret
      0020BA                        745 00116$:
                                    746 ;	../LED_Manager/led.c:120: } else if(dmx_value < DMX_MACRO_FIRE){
      0020BA BF C8 00         [24]  747 	cjne	r7,#0xc8,00155$
      0020BD                        748 00155$:
      0020BD 50 04            [24]  749 	jnc	00113$
                                    750 ;	../LED_Manager/led.c:121: return OPTION_MACRO_FIRE_DMX;
      0020BF 75 82 02         [24]  751 	mov	dpl,#0x02
      0020C2 22               [24]  752 	ret
      0020C3                        753 00113$:
                                    754 ;	../LED_Manager/led.c:122: } else if(dmx_value < DMX_MACRO_WATER){
      0020C3 BF D2 00         [24]  755 	cjne	r7,#0xd2,00157$
      0020C6                        756 00157$:
      0020C6 50 04            [24]  757 	jnc	00110$
                                    758 ;	../LED_Manager/led.c:123: return OPTION_MACRO_WATER_DMX;
      0020C8 75 82 03         [24]  759 	mov	dpl,#0x03
      0020CB 22               [24]  760 	ret
      0020CC                        761 00110$:
                                    762 ;	../LED_Manager/led.c:124: } else if(dmx_value < DMX_MACRO_ACID){
      0020CC BF DC 00         [24]  763 	cjne	r7,#0xdc,00159$
      0020CF                        764 00159$:
      0020CF 50 04            [24]  765 	jnc	00107$
                                    766 ;	../LED_Manager/led.c:125: return OPTION_MACRO_ACID_DMX;
      0020D1 75 82 04         [24]  767 	mov	dpl,#0x04
      0020D4 22               [24]  768 	ret
      0020D5                        769 00107$:
                                    770 ;	../LED_Manager/led.c:126: } else if(dmx_value < DMX_MACRO_ETHER){
      0020D5 BF E6 00         [24]  771 	cjne	r7,#0xe6,00161$
      0020D8                        772 00161$:
      0020D8 50 04            [24]  773 	jnc	00104$
                                    774 ;	../LED_Manager/led.c:127: return OPTION_MACRO_ETHER_DMX;
      0020DA 75 82 05         [24]  775 	mov	dpl,#0x05
      0020DD 22               [24]  776 	ret
      0020DE                        777 00104$:
                                    778 ;	../LED_Manager/led.c:128: } else if(dmx_value < DMX_MACRO_STORM){
      0020DE BF F0 00         [24]  779 	cjne	r7,#0xf0,00163$
      0020E1                        780 00163$:
      0020E1 50 04            [24]  781 	jnc	00108$
                                    782 ;	../LED_Manager/led.c:129: return OPTION_MACRO_STORM_DMX;
      0020E3 75 82 06         [24]  783 	mov	dpl,#0x06
      0020E6 22               [24]  784 	ret
      0020E7                        785 00108$:
                                    786 ;	../LED_Manager/led.c:132: return 69; // ;)
      0020E7 75 82 45         [24]  787 	mov	dpl,#0x45
                                    788 ;	../LED_Manager/led.c:133: }
      0020EA 22               [24]  789 	ret
                                    790 ;------------------------------------------------------------
                                    791 ;Allocation info for local variables in function 'play_macro'
                                    792 ;------------------------------------------------------------
                                    793 ;tock                      Allocated with name '_play_macro_tock_65536_55'
                                    794 ;primaryCount              Allocated with name '_play_macro_primaryCount_65536_55'
                                    795 ;secondaryCount            Allocated with name '_play_macro_secondaryCount_65536_55'
                                    796 ;direction                 Allocated with name '_play_macro_direction_65536_55'
                                    797 ;macro                     Allocated with name '_play_macro_PARM_2'
                                    798 ;macro_speed               Allocated with name '_play_macro_PARM_3'
                                    799 ;tick                      Allocated with name '_play_macro_tick_65536_54'
                                    800 ;rng                       Allocated with name '_play_macro_rng_65536_55'
                                    801 ;changed                   Allocated with name '_play_macro_changed_65536_55'
                                    802 ;------------------------------------------------------------
                                    803 ;	../LED_Manager/led.c:135: void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
                                    804 ;	-----------------------------------------
                                    805 ;	 function play_macro
                                    806 ;	-----------------------------------------
      0020EB                        807 _play_macro:
      0020EB 85 82 44         [24]  808 	mov	_play_macro_tick_65536_54,dpl
      0020EE 85 83 45         [24]  809 	mov	(_play_macro_tick_65536_54 + 1),dph
      0020F1 85 F0 46         [24]  810 	mov	(_play_macro_tick_65536_54 + 2),b
      0020F4 F5 47            [12]  811 	mov	(_play_macro_tick_65536_54 + 3),a
                                    812 ;	../LED_Manager/led.c:140: uint32_t rng = 0;
      0020F6 E4               [12]  813 	clr	a
      0020F7 F5 48            [12]  814 	mov	_play_macro_rng_65536_55,a
      0020F9 F5 49            [12]  815 	mov	(_play_macro_rng_65536_55 + 1),a
      0020FB F5 4A            [12]  816 	mov	(_play_macro_rng_65536_55 + 2),a
      0020FD F5 4B            [12]  817 	mov	(_play_macro_rng_65536_55 + 3),a
                                    818 ;	../LED_Manager/led.c:141: uint8_t changed = 0;
                                    819 ;	1-genFromRTrack replaced	mov	_play_macro_changed_65536_55,#0x00
      0020FF F5 4C            [12]  820 	mov	_play_macro_changed_65536_55,a
                                    821 ;	../LED_Manager/led.c:145: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
      002101 E5 43            [12]  822 	mov	a,_play_macro_PARM_3
      002103 C3               [12]  823 	clr	c
      002104 13               [12]  824 	rrc	a
      002105 FE               [12]  825 	mov	r6,a
      002106 7D 00            [12]  826 	mov	r5,#0x00
      002108 74 85            [12]  827 	mov	a,#0x85
      00210A C3               [12]  828 	clr	c
      00210B 9E               [12]  829 	subb	a,r6
      00210C FE               [12]  830 	mov	r6,a
      00210D E4               [12]  831 	clr	a
      00210E 9D               [12]  832 	subb	a,r5
      00210F FD               [12]  833 	mov	r5,a
      002110 8E 74            [24]  834 	mov	__modulong_PARM_2,r6
      002112 ED               [12]  835 	mov	a,r5
      002113 F5 75            [12]  836 	mov	(__modulong_PARM_2 + 1),a
      002115 33               [12]  837 	rlc	a
      002116 95 E0            [12]  838 	subb	a,acc
      002118 F5 76            [12]  839 	mov	(__modulong_PARM_2 + 2),a
      00211A F5 77            [12]  840 	mov	(__modulong_PARM_2 + 3),a
      00211C 85 44 82         [24]  841 	mov	dpl,_play_macro_tick_65536_54
      00211F 85 45 83         [24]  842 	mov	dph,(_play_macro_tick_65536_54 + 1)
      002122 85 46 F0         [24]  843 	mov	b,(_play_macro_tick_65536_54 + 2)
      002125 E5 47            [12]  844 	mov	a,(_play_macro_tick_65536_54 + 3)
      002127 12 2E 59         [24]  845 	lcall	__modulong
      00212A AC 82            [24]  846 	mov	r4,dpl
      00212C AD 83            [24]  847 	mov	r5,dph
      00212E AE F0            [24]  848 	mov	r6,b
      002130 FF               [12]  849 	mov	r7,a
      002131 EC               [12]  850 	mov	a,r4
      002132 4D               [12]  851 	orl	a,r5
      002133 4E               [12]  852 	orl	a,r6
      002134 4F               [12]  853 	orl	a,r7
      002135 70 13            [24]  854 	jnz	00102$
                                    855 ;	../LED_Manager/led.c:146: changed = 0xFF;
      002137 75 4C FF         [24]  856 	mov	_play_macro_changed_65536_55,#0xff
                                    857 ;	../LED_Manager/led.c:147: rng = rngU32(); /* TODO check back */
      00213A 12 24 A7         [24]  858 	lcall	_rngU32
      00213D 85 82 48         [24]  859 	mov	_play_macro_rng_65536_55,dpl
      002140 85 83 49         [24]  860 	mov	(_play_macro_rng_65536_55 + 1),dph
      002143 85 F0 4A         [24]  861 	mov	(_play_macro_rng_65536_55 + 2),b
      002146 F5 4B            [12]  862 	mov	(_play_macro_rng_65536_55 + 3),a
                                    863 ;	../LED_Manager/led.c:148: tock++;
      002148 05 3E            [12]  864 	inc	_play_macro_tock_65536_55
      00214A                        865 00102$:
                                    866 ;	../LED_Manager/led.c:151: switch (macro)
      00214A 74 01            [12]  867 	mov	a,#0x01
      00214C B5 42 02         [24]  868 	cjne	a,_play_macro_PARM_2,00344$
      00214F 80 42            [24]  869 	sjmp	00103$
      002151                        870 00344$:
      002151 74 02            [12]  871 	mov	a,#0x02
      002153 B5 42 02         [24]  872 	cjne	a,_play_macro_PARM_2,00345$
      002156 80 41            [24]  873 	sjmp	00104$
      002158                        874 00345$:
      002158 74 03            [12]  875 	mov	a,#0x03
      00215A B5 42 04         [24]  876 	cjne	a,_play_macro_PARM_2,00346$
      00215D 74 01            [12]  877 	mov	a,#0x01
      00215F 80 01            [24]  878 	sjmp	00347$
      002161                        879 00346$:
      002161 E4               [12]  880 	clr	a
      002162                        881 00347$:
      002162 FF               [12]  882 	mov	r7,a
      002163 60 03            [24]  883 	jz	00348$
      002165 02 22 44         [24]  884 	ljmp	00120$
      002168                        885 00348$:
      002168 74 04            [12]  886 	mov	a,#0x04
      00216A B5 42 03         [24]  887 	cjne	a,_play_macro_PARM_2,00349$
      00216D 02 22 44         [24]  888 	ljmp	00120$
      002170                        889 00349$:
      002170 74 05            [12]  890 	mov	a,#0x05
      002172 B5 42 03         [24]  891 	cjne	a,_play_macro_PARM_2,00350$
      002175 02 22 44         [24]  892 	ljmp	00120$
      002178                        893 00350$:
      002178 74 06            [12]  894 	mov	a,#0x06
      00217A B5 42 03         [24]  895 	cjne	a,_play_macro_PARM_2,00351$
      00217D 02 23 08         [24]  896 	ljmp	00151$
      002180                        897 00351$:
      002180 74 21            [12]  898 	mov	a,#0x21
      002182 B5 42 03         [24]  899 	cjne	a,_play_macro_PARM_2,00352$
      002185 02 23 6A         [24]  900 	ljmp	00165$
      002188                        901 00352$:
      002188 74 45            [12]  902 	mov	a,#0x45
      00218A B5 42 03         [24]  903 	cjne	a,_play_macro_PARM_2,00353$
      00218D 02 23 6D         [24]  904 	ljmp	00166$
      002190                        905 00353$:
      002190 02 24 2C         [24]  906 	ljmp	00185$
                                    907 ;	../LED_Manager/led.c:153: case OPTION_MACRO_RAINBOW_DMX: //rainbow
      002193                        908 00103$:
                                    909 ;	../LED_Manager/led.c:154: color_wheel(tock);
      002193 85 3E 82         [24]  910 	mov	dpl,_play_macro_tock_65536_55
                                    911 ;	../LED_Manager/led.c:155: break;
      002196 02 24 2F         [24]  912 	ljmp	_color_wheel
                                    913 ;	../LED_Manager/led.c:156: case OPTION_MACRO_FIRE_DMX: //fire
      002199                        914 00104$:
                                    915 ;	../LED_Manager/led.c:157: if(changed) { 
      002199 E5 4C            [12]  916 	mov	a,_play_macro_changed_65536_55
      00219B 70 01            [24]  917 	jnz	00354$
      00219D 22               [24]  918 	ret
      00219E                        919 00354$:
                                    920 ;	../LED_Manager/led.c:159: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
      00219E 74 C9            [12]  921 	mov	a,#0x100 - 0x37
      0021A0 25 3F            [12]  922 	add	a,_play_macro_primaryCount_65536_55
      0021A2 40 0C            [24]  923 	jc	00106$
      0021A4 75 3F 37         [24]  924 	mov	_play_macro_primaryCount_65536_55,#0x37
      0021A7 AD 41            [24]  925 	mov	r5,_play_macro_direction_65536_55
      0021A9 7E 00            [12]  926 	mov	r6,#0x00
      0021AB 43 05 01         [24]  927 	orl	ar5,#0x01
      0021AE 8D 41            [24]  928 	mov	_play_macro_direction_65536_55,r5
      0021B0                        929 00106$:
                                    930 ;	../LED_Manager/led.c:160: if(direction & 0x01){
      0021B0 E5 41            [12]  931 	mov	a,_play_macro_direction_65536_55
      0021B2 30 E0 0E         [24]  932 	jnb	acc.0,00114$
                                    933 ;	../LED_Manager/led.c:161: if(primaryCount == 255){
      0021B5 74 FF            [12]  934 	mov	a,#0xff
      0021B7 B5 3F 05         [24]  935 	cjne	a,_play_macro_primaryCount_65536_55,00108$
                                    936 ;	../LED_Manager/led.c:162: direction &= ~0x01;
      0021BA 53 41 FE         [24]  937 	anl	_play_macro_direction_65536_55,#0xfe
      0021BD 80 20            [24]  938 	sjmp	00115$
      0021BF                        939 00108$:
                                    940 ;	../LED_Manager/led.c:164: primaryCount++;
      0021BF 05 3F            [12]  941 	inc	_play_macro_primaryCount_65536_55
      0021C1 80 1C            [24]  942 	sjmp	00115$
      0021C3                        943 00114$:
                                    944 ;	../LED_Manager/led.c:167: if(primaryCount - 1 == 55){
      0021C3 AD 3F            [24]  945 	mov	r5,_play_macro_primaryCount_65536_55
      0021C5 7E 00            [12]  946 	mov	r6,#0x00
      0021C7 1D               [12]  947 	dec	r5
      0021C8 BD FF 01         [24]  948 	cjne	r5,#0xff,00359$
      0021CB 1E               [12]  949 	dec	r6
      0021CC                        950 00359$:
      0021CC BD 37 0E         [24]  951 	cjne	r5,#0x37,00111$
      0021CF BE 00 0B         [24]  952 	cjne	r6,#0x00,00111$
                                    953 ;	../LED_Manager/led.c:168: direction |= 0x01;
      0021D2 AD 41            [24]  954 	mov	r5,_play_macro_direction_65536_55
      0021D4 7E 00            [12]  955 	mov	r6,#0x00
      0021D6 43 05 01         [24]  956 	orl	ar5,#0x01
      0021D9 8D 41            [24]  957 	mov	_play_macro_direction_65536_55,r5
      0021DB 80 02            [24]  958 	sjmp	00115$
      0021DD                        959 00111$:
                                    960 ;	../LED_Manager/led.c:170: primaryCount--;
      0021DD 15 3F            [12]  961 	dec	_play_macro_primaryCount_65536_55
      0021DF                        962 00115$:
                                    963 ;	../LED_Manager/led.c:174: set_leds(primaryCount, (uint8_t) (rng % (primaryCount >> 2)), (!(rng % 13)) ? PWMDATA17H > 1 : 0);
      0021DF E5 3F            [12]  964 	mov	a,_play_macro_primaryCount_65536_55
      0021E1 03               [12]  965 	rr	a
      0021E2 03               [12]  966 	rr	a
      0021E3 54 3F            [12]  967 	anl	a,#0x3f
      0021E5 FE               [12]  968 	mov	r6,a
      0021E6 8E 74            [24]  969 	mov	__modulong_PARM_2,r6
      0021E8 75 75 00         [24]  970 	mov	(__modulong_PARM_2 + 1),#0x00
      0021EB 75 76 00         [24]  971 	mov	(__modulong_PARM_2 + 2),#0x00
      0021EE 75 77 00         [24]  972 	mov	(__modulong_PARM_2 + 3),#0x00
      0021F1 85 48 82         [24]  973 	mov	dpl,_play_macro_rng_65536_55
      0021F4 85 49 83         [24]  974 	mov	dph,(_play_macro_rng_65536_55 + 1)
      0021F7 85 4A F0         [24]  975 	mov	b,(_play_macro_rng_65536_55 + 2)
      0021FA E5 4B            [12]  976 	mov	a,(_play_macro_rng_65536_55 + 3)
      0021FC 12 2E 59         [24]  977 	lcall	__modulong
      0021FF AB 82            [24]  978 	mov	r3,dpl
      002201 75 74 0D         [24]  979 	mov	__modulong_PARM_2,#0x0d
      002204 E4               [12]  980 	clr	a
      002205 F5 75            [12]  981 	mov	(__modulong_PARM_2 + 1),a
      002207 F5 76            [12]  982 	mov	(__modulong_PARM_2 + 2),a
      002209 F5 77            [12]  983 	mov	(__modulong_PARM_2 + 3),a
      00220B 85 48 82         [24]  984 	mov	dpl,_play_macro_rng_65536_55
      00220E 85 49 83         [24]  985 	mov	dph,(_play_macro_rng_65536_55 + 1)
      002211 85 4A F0         [24]  986 	mov	b,(_play_macro_rng_65536_55 + 2)
      002214 E5 4B            [12]  987 	mov	a,(_play_macro_rng_65536_55 + 3)
      002216 C0 03            [24]  988 	push	ar3
      002218 12 2E 59         [24]  989 	lcall	__modulong
      00221B AA 82            [24]  990 	mov	r2,dpl
      00221D AC 83            [24]  991 	mov	r4,dph
      00221F AD F0            [24]  992 	mov	r5,b
      002221 FE               [12]  993 	mov	r6,a
      002222 D0 03            [24]  994 	pop	ar3
      002224 EA               [12]  995 	mov	a,r2
      002225 4C               [12]  996 	orl	a,r4
      002226 4D               [12]  997 	orl	a,r5
      002227 4E               [12]  998 	orl	a,r6
      002228 70 0C            [24]  999 	jnz	00189$
      00222A C3               [12] 1000 	clr	c
      00222B 74 01            [12] 1001 	mov	a,#0x01
      00222D 95 AD            [12] 1002 	subb	a,_PWMDATA17H
      00222F E4               [12] 1003 	clr	a
      002230 33               [12] 1004 	rlc	a
      002231 FD               [12] 1005 	mov	r5,a
      002232 7E 00            [12] 1006 	mov	r6,#0x00
      002234 80 04            [24] 1007 	sjmp	00190$
      002236                       1008 00189$:
      002236 7D 00            [12] 1009 	mov	r5,#0x00
      002238 7E 00            [12] 1010 	mov	r6,#0x00
      00223A                       1011 00190$:
      00223A 8D 56            [24] 1012 	mov	_set_leds_PARM_3,r5
      00223C 8B 55            [24] 1013 	mov	_set_leds_PARM_2,r3
      00223E 85 3F 82         [24] 1014 	mov	dpl,_play_macro_primaryCount_65536_55
                                   1015 ;	../LED_Manager/led.c:177: break;
      002241 02 24 E4         [24] 1016 	ljmp	_set_leds
                                   1017 ;	../LED_Manager/led.c:180: case OPTION_MACRO_ETHER_DMX:
      002244                       1018 00120$:
                                   1019 ;	../LED_Manager/led.c:182: if(changed){
      002244 E5 4C            [12] 1020 	mov	a,_play_macro_changed_65536_55
      002246 70 01            [24] 1021 	jnz	00363$
      002248 22               [24] 1022 	ret
      002249                       1023 00363$:
                                   1024 ;	../LED_Manager/led.c:184: if(direction & 0x01){
      002249 E5 41            [12] 1025 	mov	a,_play_macro_direction_65536_55
      00224B 30 E0 14         [24] 1026 	jnb	acc.0,00126$
                                   1027 ;	../LED_Manager/led.c:185: primaryCount +=2;
      00224E AE 3F            [24] 1028 	mov	r6,_play_macro_primaryCount_65536_55
      002250 74 02            [12] 1029 	mov	a,#0x02
      002252 2E               [12] 1030 	add	a,r6
                                   1031 ;	../LED_Manager/led.c:187: if(primaryCount < 75){
      002253 F5 3F            [12] 1032 	mov	_play_macro_primaryCount_65536_55,a
      002255 C3               [12] 1033 	clr	c
      002256 94 4B            [12] 1034 	subb	a,#0x4b
      002258 50 1F            [24] 1035 	jnc	00127$
                                   1036 ;	../LED_Manager/led.c:188: direction &= ~0x01;
      00225A 53 41 FE         [24] 1037 	anl	_play_macro_direction_65536_55,#0xfe
                                   1038 ;	../LED_Manager/led.c:189: primaryCount = 255;
      00225D 75 3F FF         [24] 1039 	mov	_play_macro_primaryCount_65536_55,#0xff
      002260 80 17            [24] 1040 	sjmp	00127$
      002262                       1041 00126$:
                                   1042 ;	../LED_Manager/led.c:193: primaryCount -=2;
      002262 E5 3F            [12] 1043 	mov	a,_play_macro_primaryCount_65536_55
      002264 FE               [12] 1044 	mov	r6,a
      002265 24 FE            [12] 1045 	add	a,#0xfe
                                   1046 ;	../LED_Manager/led.c:195: if(primaryCount <= 130){
      002267 F5 3F            [12] 1047 	mov  _play_macro_primaryCount_65536_55,a
      002269 24 7D            [12] 1048 	add	a,#0xff - 0x82
      00226B 40 0C            [24] 1049 	jc	00127$
                                   1050 ;	../LED_Manager/led.c:196: direction |= 0x01;
      00226D AD 41            [24] 1051 	mov	r5,_play_macro_direction_65536_55
      00226F 7E 00            [12] 1052 	mov	r6,#0x00
      002271 43 05 01         [24] 1053 	orl	ar5,#0x01
      002274 8D 41            [24] 1054 	mov	_play_macro_direction_65536_55,r5
                                   1055 ;	../LED_Manager/led.c:197: primaryCount = 130;
      002276 75 3F 82         [24] 1056 	mov	_play_macro_primaryCount_65536_55,#0x82
      002279                       1057 00127$:
                                   1058 ;	../LED_Manager/led.c:201: if(rng % 21 == 0){
      002279 75 74 15         [24] 1059 	mov	__modulong_PARM_2,#0x15
      00227C E4               [12] 1060 	clr	a
      00227D F5 75            [12] 1061 	mov	(__modulong_PARM_2 + 1),a
      00227F F5 76            [12] 1062 	mov	(__modulong_PARM_2 + 2),a
      002281 F5 77            [12] 1063 	mov	(__modulong_PARM_2 + 3),a
      002283 85 48 82         [24] 1064 	mov	dpl,_play_macro_rng_65536_55
      002286 85 49 83         [24] 1065 	mov	dph,(_play_macro_rng_65536_55 + 1)
      002289 85 4A F0         [24] 1066 	mov	b,(_play_macro_rng_65536_55 + 2)
      00228C E5 4B            [12] 1067 	mov	a,(_play_macro_rng_65536_55 + 3)
      00228E C0 07            [24] 1068 	push	ar7
      002290 12 2E 59         [24] 1069 	lcall	__modulong
      002293 AB 82            [24] 1070 	mov	r3,dpl
      002295 AC 83            [24] 1071 	mov	r4,dph
      002297 AD F0            [24] 1072 	mov	r5,b
      002299 FE               [12] 1073 	mov	r6,a
      00229A D0 07            [24] 1074 	pop	ar7
      00229C EB               [12] 1075 	mov	a,r3
      00229D 4C               [12] 1076 	orl	a,r4
      00229E 4D               [12] 1077 	orl	a,r5
      00229F 4E               [12] 1078 	orl	a,r6
      0022A0 70 15            [24] 1079 	jnz	00139$
                                   1080 ;	../LED_Manager/led.c:202: if(direction & 0x10){
      0022A2 E5 41            [12] 1081 	mov	a,_play_macro_direction_65536_55
      0022A4 30 E4 05         [24] 1082 	jnb	acc.4,00129$
                                   1083 ;	../LED_Manager/led.c:203: direction &= ~0x10;
      0022A7 53 41 EF         [24] 1084 	anl	_play_macro_direction_65536_55,#0xef
      0022AA 80 28            [24] 1085 	sjmp	00140$
      0022AC                       1086 00129$:
                                   1087 ;	../LED_Manager/led.c:205: direction |= 0x10;
      0022AC AD 41            [24] 1088 	mov	r5,_play_macro_direction_65536_55
      0022AE 7E 00            [12] 1089 	mov	r6,#0x00
      0022B0 43 05 10         [24] 1090 	orl	ar5,#0x10
      0022B3 8D 41            [24] 1091 	mov	_play_macro_direction_65536_55,r5
      0022B5 80 1D            [24] 1092 	sjmp	00140$
      0022B7                       1093 00139$:
                                   1094 ;	../LED_Manager/led.c:208: if(direction & 0x10){
      0022B7 E5 41            [12] 1095 	mov	a,_play_macro_direction_65536_55
      0022B9 30 E4 0D         [24] 1096 	jnb	acc.4,00136$
                                   1097 ;	../LED_Manager/led.c:209: secondaryCount++;
      0022BC 05 40            [12] 1098 	inc	_play_macro_secondaryCount_65536_55
                                   1099 ;	../LED_Manager/led.c:211: if(secondaryCount >= 34){
      0022BE 74 DE            [12] 1100 	mov	a,#0x100 - 0x22
      0022C0 25 40            [12] 1101 	add	a,_play_macro_secondaryCount_65536_55
      0022C2 50 10            [24] 1102 	jnc	00140$
                                   1103 ;	../LED_Manager/led.c:212: secondaryCount = 34;
      0022C4 75 40 22         [24] 1104 	mov	_play_macro_secondaryCount_65536_55,#0x22
      0022C7 80 0B            [24] 1105 	sjmp	00140$
      0022C9                       1106 00136$:
                                   1107 ;	../LED_Manager/led.c:216: secondaryCount--;
      0022C9 15 40            [12] 1108 	dec	_play_macro_secondaryCount_65536_55
                                   1109 ;	../LED_Manager/led.c:218: if(secondaryCount > 36){
      0022CB E5 40            [12] 1110 	mov	a,_play_macro_secondaryCount_65536_55
      0022CD 24 DB            [12] 1111 	add	a,#0xff - 0x24
      0022CF 50 03            [24] 1112 	jnc	00140$
                                   1113 ;	../LED_Manager/led.c:219: secondaryCount = 0;
      0022D1 75 40 00         [24] 1114 	mov	_play_macro_secondaryCount_65536_55,#0x00
      0022D4                       1115 00140$:
                                   1116 ;	../LED_Manager/led.c:224: if(macro == OPTION_MACRO_WATER_DMX){ //water
      0022D4 EF               [12] 1117 	mov	a,r7
      0022D5 60 0C            [24] 1118 	jz	00147$
                                   1119 ;	../LED_Manager/led.c:225: set_leds(secondaryCount, secondaryCount, primaryCount);
      0022D7 85 40 55         [24] 1120 	mov	_set_leds_PARM_2,_play_macro_secondaryCount_65536_55
      0022DA 85 3F 56         [24] 1121 	mov	_set_leds_PARM_3,_play_macro_primaryCount_65536_55
      0022DD 85 40 82         [24] 1122 	mov	dpl,_play_macro_secondaryCount_65536_55
      0022E0 02 24 E4         [24] 1123 	ljmp	_set_leds
      0022E3                       1124 00147$:
                                   1125 ;	../LED_Manager/led.c:226: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
      0022E3 74 04            [12] 1126 	mov	a,#0x04
      0022E5 B5 42 0C         [24] 1127 	cjne	a,_play_macro_PARM_2,00144$
                                   1128 ;	../LED_Manager/led.c:227: set_leds(secondaryCount, primaryCount, 0);
      0022E8 85 3F 55         [24] 1129 	mov	_set_leds_PARM_2,_play_macro_primaryCount_65536_55
      0022EB 75 56 00         [24] 1130 	mov	_set_leds_PARM_3,#0x00
      0022EE 85 40 82         [24] 1131 	mov	dpl,_play_macro_secondaryCount_65536_55
      0022F1 02 24 E4         [24] 1132 	ljmp	_set_leds
      0022F4                       1133 00144$:
                                   1134 ;	../LED_Manager/led.c:228: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
      0022F4 74 05            [12] 1135 	mov	a,#0x05
      0022F6 B5 42 02         [24] 1136 	cjne	a,_play_macro_PARM_2,00375$
      0022F9 80 01            [24] 1137 	sjmp	00376$
      0022FB                       1138 00375$:
      0022FB 22               [24] 1139 	ret
      0022FC                       1140 00376$:
                                   1141 ;	../LED_Manager/led.c:229: set_leds(primaryCount, secondaryCount, primaryCount);
      0022FC 85 40 55         [24] 1142 	mov	_set_leds_PARM_2,_play_macro_secondaryCount_65536_55
      0022FF 85 3F 56         [24] 1143 	mov	_set_leds_PARM_3,_play_macro_primaryCount_65536_55
      002302 85 3F 82         [24] 1144 	mov	dpl,_play_macro_primaryCount_65536_55
                                   1145 ;	../LED_Manager/led.c:233: break;
      002305 02 24 E4         [24] 1146 	ljmp	_set_leds
                                   1147 ;	../LED_Manager/led.c:234: case OPTION_MACRO_STORM_DMX: //storm
      002308                       1148 00151$:
                                   1149 ;	../LED_Manager/led.c:235: if(changed){
      002308 E5 4C            [12] 1150 	mov	a,_play_macro_changed_65536_55
      00230A 70 01            [24] 1151 	jnz	00377$
      00230C 22               [24] 1152 	ret
      00230D                       1153 00377$:
                                   1154 ;	../LED_Manager/led.c:236: if(!(rng % STORM_FREQ)){
      00230D 75 74 59         [24] 1155 	mov	__modulong_PARM_2,#0x59
      002310 E4               [12] 1156 	clr	a
      002311 F5 75            [12] 1157 	mov	(__modulong_PARM_2 + 1),a
      002313 F5 76            [12] 1158 	mov	(__modulong_PARM_2 + 2),a
      002315 F5 77            [12] 1159 	mov	(__modulong_PARM_2 + 3),a
      002317 85 48 82         [24] 1160 	mov	dpl,_play_macro_rng_65536_55
      00231A 85 49 83         [24] 1161 	mov	dph,(_play_macro_rng_65536_55 + 1)
      00231D 85 4A F0         [24] 1162 	mov	b,(_play_macro_rng_65536_55 + 2)
      002320 E5 4B            [12] 1163 	mov	a,(_play_macro_rng_65536_55 + 3)
      002322 12 2E 59         [24] 1164 	lcall	__modulong
      002325 AC 82            [24] 1165 	mov	r4,dpl
      002327 AD 83            [24] 1166 	mov	r5,dph
      002329 AE F0            [24] 1167 	mov	r6,b
      00232B FF               [12] 1168 	mov	r7,a
      00232C EC               [12] 1169 	mov	a,r4
      00232D 4D               [12] 1170 	orl	a,r5
      00232E 4E               [12] 1171 	orl	a,r6
      00232F 4F               [12] 1172 	orl	a,r7
      002330 70 05            [24] 1173 	jnz	00161$
                                   1174 ;	../LED_Manager/led.c:237: primaryCount = 255;
      002332 75 3F FF         [24] 1175 	mov	_play_macro_primaryCount_65536_55,#0xff
      002335 80 27            [24] 1176 	sjmp	00162$
      002337                       1177 00161$:
                                   1178 ;	../LED_Manager/led.c:239: if(primaryCount > 200){
      002337 E5 3F            [12] 1179 	mov	a,_play_macro_primaryCount_65536_55
      002339 24 37            [12] 1180 	add	a,#0xff - 0xc8
      00233B 50 04            [24] 1181 	jnc	00158$
                                   1182 ;	../LED_Manager/led.c:240: primaryCount--;
      00233D 15 3F            [12] 1183 	dec	_play_macro_primaryCount_65536_55
      00233F 80 1D            [24] 1184 	sjmp	00162$
      002341                       1185 00158$:
                                   1186 ;	../LED_Manager/led.c:241: } else if(primaryCount > 130){
      002341 E5 3F            [12] 1187 	mov	a,_play_macro_primaryCount_65536_55
      002343 24 7D            [12] 1188 	add	a,#0xff - 0x82
      002345 50 09            [24] 1189 	jnc	00155$
                                   1190 ;	../LED_Manager/led.c:242: primaryCount-=2;
      002347 E5 3F            [12] 1191 	mov	a,_play_macro_primaryCount_65536_55
      002349 FF               [12] 1192 	mov	r7,a
      00234A 24 FE            [12] 1193 	add	a,#0xfe
      00234C F5 3F            [12] 1194 	mov	_play_macro_primaryCount_65536_55,a
      00234E 80 0E            [24] 1195 	sjmp	00162$
      002350                       1196 00155$:
                                   1197 ;	../LED_Manager/led.c:244: primaryCount-=3;
      002350 E5 3F            [12] 1198 	mov	a,_play_macro_primaryCount_65536_55
      002352 FF               [12] 1199 	mov	r7,a
      002353 24 FD            [12] 1200 	add	a,#0xfd
                                   1201 ;	../LED_Manager/led.c:245: if(primaryCount > 200){
      002355 F5 3F            [12] 1202 	mov  _play_macro_primaryCount_65536_55,a
      002357 24 37            [12] 1203 	add	a,#0xff - 0xc8
      002359 50 03            [24] 1204 	jnc	00162$
                                   1205 ;	../LED_Manager/led.c:246: primaryCount = 0;
      00235B 75 3F 00         [24] 1206 	mov	_play_macro_primaryCount_65536_55,#0x00
      00235E                       1207 00162$:
                                   1208 ;	../LED_Manager/led.c:251: set_leds(primaryCount, primaryCount, primaryCount);
      00235E 85 3F 55         [24] 1209 	mov	_set_leds_PARM_2,_play_macro_primaryCount_65536_55
      002361 85 3F 56         [24] 1210 	mov	_set_leds_PARM_3,_play_macro_primaryCount_65536_55
      002364 85 3F 82         [24] 1211 	mov	dpl,_play_macro_primaryCount_65536_55
                                   1212 ;	../LED_Manager/led.c:254: break;
      002367 02 24 E4         [24] 1213 	ljmp	_set_leds
                                   1214 ;	../LED_Manager/led.c:255: case OPTION_MACRO_WHITE: //w
      00236A                       1215 00165$:
                                   1216 ;	../LED_Manager/led.c:256: whiteout();
                                   1217 ;	../LED_Manager/led.c:257: break;
      00236A 02 24 8F         [24] 1218 	ljmp	_whiteout
                                   1219 ;	../LED_Manager/led.c:258: case 69:
      00236D                       1220 00166$:
                                   1221 ;	../LED_Manager/led.c:259: if(tock < 32){
      00236D 74 E0            [12] 1222 	mov	a,#0x100 - 0x20
      00236F 25 3E            [12] 1223 	add	a,_play_macro_tock_65536_55
      002371 40 39            [24] 1224 	jc	00183$
                                   1225 ;	../LED_Manager/led.c:261: if(rng & (SH_B >> tock)){
      002373 85 3E F0         [24] 1226 	mov	b,_play_macro_tock_65536_55
      002376 05 F0            [12] 1227 	inc	b
      002378 7C 00            [12] 1228 	mov	r4,#0x00
      00237A 7D 00            [12] 1229 	mov	r5,#0x00
      00237C 7E 00            [12] 1230 	mov	r6,#0x00
      00237E 7F 80            [12] 1231 	mov	r7,#0x80
      002380 80 0D            [24] 1232 	sjmp	00384$
      002382                       1233 00383$:
      002382 C3               [12] 1234 	clr	c
      002383 EF               [12] 1235 	mov	a,r7
      002384 13               [12] 1236 	rrc	a
      002385 FF               [12] 1237 	mov	r7,a
      002386 EE               [12] 1238 	mov	a,r6
      002387 13               [12] 1239 	rrc	a
      002388 FE               [12] 1240 	mov	r6,a
      002389 ED               [12] 1241 	mov	a,r5
      00238A 13               [12] 1242 	rrc	a
      00238B FD               [12] 1243 	mov	r5,a
      00238C EC               [12] 1244 	mov	a,r4
      00238D 13               [12] 1245 	rrc	a
      00238E FC               [12] 1246 	mov	r4,a
      00238F                       1247 00384$:
      00238F D5 F0 F0         [24] 1248 	djnz	b,00383$
      002392 EC               [12] 1249 	mov	a,r4
      002393 54 BA            [12] 1250 	anl	a,#0xba
      002395 70 0F            [24] 1251 	jnz	00385$
      002397 ED               [12] 1252 	mov	a,r5
      002398 54 B8            [12] 1253 	anl	a,#0xb8
      00239A 70 0A            [24] 1254 	jnz	00385$
      00239C EE               [12] 1255 	mov	a,r6
      00239D 54 3B            [12] 1256 	anl	a,#0x3b
      00239F 70 05            [24] 1257 	jnz	00385$
      0023A1 EF               [12] 1258 	mov	a,r7
      0023A2 54 EE            [12] 1259 	anl	a,#0xee
      0023A4 60 03            [24] 1260 	jz	00168$
      0023A6                       1261 00385$:
                                   1262 ;	../LED_Manager/led.c:262: whiteout(); //White - Worth
      0023A6 02 24 8F         [24] 1263 	ljmp	_whiteout
      0023A9                       1264 00168$:
                                   1265 ;	../LED_Manager/led.c:264: blackout();
      0023A9 02 24 9B         [24] 1266 	ljmp	_blackout
      0023AC                       1267 00183$:
                                   1268 ;	../LED_Manager/led.c:266: } else if(tock < 64){
      0023AC 74 C0            [12] 1269 	mov	a,#0x100 - 0x40
      0023AE 25 3E            [12] 1270 	add	a,_play_macro_tock_65536_55
      0023B0 40 3D            [24] 1271 	jc	00180$
                                   1272 ;	../LED_Manager/led.c:268: if(rng & (SH_B >> (tock - 32))){
      0023B2 E5 3E            [12] 1273 	mov	a,_play_macro_tock_65536_55
      0023B4 24 E0            [12] 1274 	add	a,#0xe0
      0023B6 FF               [12] 1275 	mov	r7,a
      0023B7 8F F0            [24] 1276 	mov	b,r7
      0023B9 05 F0            [12] 1277 	inc	b
      0023BB 7F 00            [12] 1278 	mov	r7,#0x00
      0023BD 7E 00            [12] 1279 	mov	r6,#0x00
      0023BF 7D 00            [12] 1280 	mov	r5,#0x00
      0023C1 7C 80            [12] 1281 	mov	r4,#0x80
      0023C3 80 0D            [24] 1282 	sjmp	00388$
      0023C5                       1283 00387$:
      0023C5 C3               [12] 1284 	clr	c
      0023C6 EC               [12] 1285 	mov	a,r4
      0023C7 13               [12] 1286 	rrc	a
      0023C8 FC               [12] 1287 	mov	r4,a
      0023C9 ED               [12] 1288 	mov	a,r5
      0023CA 13               [12] 1289 	rrc	a
      0023CB FD               [12] 1290 	mov	r5,a
      0023CC EE               [12] 1291 	mov	a,r6
      0023CD 13               [12] 1292 	rrc	a
      0023CE FE               [12] 1293 	mov	r6,a
      0023CF EF               [12] 1294 	mov	a,r7
      0023D0 13               [12] 1295 	rrc	a
      0023D1 FF               [12] 1296 	mov	r7,a
      0023D2                       1297 00388$:
      0023D2 D5 F0 F0         [24] 1298 	djnz	b,00387$
      0023D5 EF               [12] 1299 	mov	a,r7
      0023D6 54 38            [12] 1300 	anl	a,#0x38
      0023D8 70 0F            [24] 1301 	jnz	00389$
      0023DA EE               [12] 1302 	mov	a,r6
      0023DB 54 BA            [12] 1303 	anl	a,#0xba
      0023DD 70 0A            [24] 1304 	jnz	00389$
      0023DF ED               [12] 1305 	mov	a,r5
      0023E0 54 B8            [12] 1306 	anl	a,#0xb8
      0023E2 70 05            [24] 1307 	jnz	00389$
      0023E4 EC               [12] 1308 	mov	a,r4
      0023E5 54 28            [12] 1309 	anl	a,#0x28
      0023E7 60 03            [24] 1310 	jz	00171$
      0023E9                       1311 00389$:
                                   1312 ;	../LED_Manager/led.c:269: whiteout(); //White - Worth
      0023E9 02 24 8F         [24] 1313 	ljmp	_whiteout
      0023EC                       1314 00171$:
                                   1315 ;	../LED_Manager/led.c:271: blackout();
      0023EC 02 24 9B         [24] 1316 	ljmp	_blackout
      0023EF                       1317 00180$:
                                   1318 ;	../LED_Manager/led.c:273: } else if(tock < 83){
      0023EF 74 AD            [12] 1319 	mov	a,#0x100 - 0x53
      0023F1 25 3E            [12] 1320 	add	a,_play_macro_tock_65536_55
      0023F3 40 33            [24] 1321 	jc	00177$
                                   1322 ;	../LED_Manager/led.c:275: if(rng & (SH_B >> (tock - 64))){
      0023F5 E5 3E            [12] 1323 	mov	a,_play_macro_tock_65536_55
      0023F7 24 C0            [12] 1324 	add	a,#0xc0
      0023F9 FF               [12] 1325 	mov	r7,a
      0023FA 8F F0            [24] 1326 	mov	b,r7
      0023FC 05 F0            [12] 1327 	inc	b
      0023FE 7F 00            [12] 1328 	mov	r7,#0x00
      002400 7E 00            [12] 1329 	mov	r6,#0x00
      002402 7D 00            [12] 1330 	mov	r5,#0x00
      002404 7C 80            [12] 1331 	mov	r4,#0x80
      002406 80 0D            [24] 1332 	sjmp	00392$
      002408                       1333 00391$:
      002408 C3               [12] 1334 	clr	c
      002409 EC               [12] 1335 	mov	a,r4
      00240A 13               [12] 1336 	rrc	a
      00240B FC               [12] 1337 	mov	r4,a
      00240C ED               [12] 1338 	mov	a,r5
      00240D 13               [12] 1339 	rrc	a
      00240E FD               [12] 1340 	mov	r5,a
      00240F EE               [12] 1341 	mov	a,r6
      002410 13               [12] 1342 	rrc	a
      002411 FE               [12] 1343 	mov	r6,a
      002412 EF               [12] 1344 	mov	a,r7
      002413 13               [12] 1345 	rrc	a
      002414 FF               [12] 1346 	mov	r7,a
      002415                       1347 00392$:
      002415 D5 F0 F0         [24] 1348 	djnz	b,00391$
      002418 ED               [12] 1349 	mov	a,r5
      002419 54 B8            [12] 1350 	anl	a,#0xb8
      00241B 70 05            [24] 1351 	jnz	00393$
      00241D EC               [12] 1352 	mov	a,r4
      00241E 54 EB            [12] 1353 	anl	a,#0xeb
      002420 60 03            [24] 1354 	jz	00174$
      002422                       1355 00393$:
                                   1356 ;	../LED_Manager/led.c:276: whiteout();
      002422 02 24 8F         [24] 1357 	ljmp	_whiteout
      002425                       1358 00174$:
                                   1359 ;	../LED_Manager/led.c:278: blackout();
      002425 02 24 9B         [24] 1360 	ljmp	_blackout
      002428                       1361 00177$:
                                   1362 ;	../LED_Manager/led.c:281: tock = 0;
      002428 75 3E 00         [24] 1363 	mov	_play_macro_tock_65536_55,#0x00
                                   1364 ;	../LED_Manager/led.c:283: break;
                                   1365 ;	../LED_Manager/led.c:284: default:
      00242B 22               [24] 1366 	ret
      00242C                       1367 00185$:
                                   1368 ;	../LED_Manager/led.c:285: blackout();
                                   1369 ;	../LED_Manager/led.c:286: }
                                   1370 ;	../LED_Manager/led.c:288: }
      00242C 02 24 9B         [24] 1371 	ljmp	_blackout
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'color_wheel'
                                   1374 ;------------------------------------------------------------
                                   1375 ;color                     Allocated to registers r6 
                                   1376 ;------------------------------------------------------------
                                   1377 ;	../LED_Manager/led.c:290: void color_wheel(uint8_t color){
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function color_wheel
                                   1380 ;	-----------------------------------------
      00242F                       1381 _color_wheel:
      00242F AF 82            [24] 1382 	mov	r7,dpl
                                   1383 ;	../LED_Manager/led.c:292: if(color < 85){
      002431 BF 55 00         [24] 1384 	cjne	r7,#0x55,00119$
      002434                       1385 00119$:
      002434 50 1A            [24] 1386 	jnc	00105$
                                   1387 ;	../LED_Manager/led.c:293: set_leds(color * 3, 255 - color * 3, 0);
      002436 EF               [12] 1388 	mov	a,r7
      002437 75 F0 03         [24] 1389 	mov	b,#0x03
      00243A A4               [48] 1390 	mul	ab
      00243B F5 82            [12] 1391 	mov	dpl,a
      00243D 8F 06            [24] 1392 	mov	ar6,r7
      00243F EE               [12] 1393 	mov	a,r6
      002440 75 F0 03         [24] 1394 	mov	b,#0x03
      002443 A4               [48] 1395 	mul	ab
      002444 D3               [12] 1396 	setb	c
      002445 94 FF            [12] 1397 	subb	a,#0xff
      002447 F4               [12] 1398 	cpl	a
      002448 F5 55            [12] 1399 	mov	_set_leds_PARM_2,a
      00244A 75 56 00         [24] 1400 	mov	_set_leds_PARM_3,#0x00
      00244D 02 24 E4         [24] 1401 	ljmp	_set_leds
      002450                       1402 00105$:
                                   1403 ;	../LED_Manager/led.c:294: } else if(color < 170){
      002450 BF AA 00         [24] 1404 	cjne	r7,#0xaa,00121$
      002453                       1405 00121$:
      002453 50 1F            [24] 1406 	jnc	00102$
                                   1407 ;	../LED_Manager/led.c:295: color -= 85;
      002455 8F 06            [24] 1408 	mov	ar6,r7
      002457 EE               [12] 1409 	mov	a,r6
      002458 24 AB            [12] 1410 	add	a,#0xab
                                   1411 ;	../LED_Manager/led.c:296: set_leds(255 - color * 3, 0, color * 3);
      00245A FE               [12] 1412 	mov	r6,a
      00245B FD               [12] 1413 	mov	r5,a
      00245C ED               [12] 1414 	mov	a,r5
      00245D 75 F0 03         [24] 1415 	mov	b,#0x03
      002460 A4               [48] 1416 	mul	ab
      002461 D3               [12] 1417 	setb	c
      002462 94 FF            [12] 1418 	subb	a,#0xff
      002464 F4               [12] 1419 	cpl	a
      002465 F5 82            [12] 1420 	mov	dpl,a
      002467 EE               [12] 1421 	mov	a,r6
      002468 75 F0 03         [24] 1422 	mov	b,#0x03
      00246B A4               [48] 1423 	mul	ab
      00246C F5 56            [12] 1424 	mov	_set_leds_PARM_3,a
      00246E 75 55 00         [24] 1425 	mov	_set_leds_PARM_2,#0x00
      002471 02 24 E4         [24] 1426 	ljmp	_set_leds
      002474                       1427 00102$:
                                   1428 ;	../LED_Manager/led.c:298: color -= 170;
      002474 EF               [12] 1429 	mov	a,r7
      002475 24 56            [12] 1430 	add	a,#0x56
                                   1431 ;	../LED_Manager/led.c:299: set_leds(0, color * 3, 255 - color * 3);
      002477 FF               [12] 1432 	mov	r7,a
      002478 75 F0 03         [24] 1433 	mov	b,#0x03
      00247B A4               [48] 1434 	mul	ab
      00247C F5 55            [12] 1435 	mov	_set_leds_PARM_2,a
      00247E EF               [12] 1436 	mov	a,r7
      00247F 75 F0 03         [24] 1437 	mov	b,#0x03
      002482 A4               [48] 1438 	mul	ab
      002483 D3               [12] 1439 	setb	c
      002484 94 FF            [12] 1440 	subb	a,#0xff
      002486 F4               [12] 1441 	cpl	a
      002487 F5 56            [12] 1442 	mov	_set_leds_PARM_3,a
      002489 75 82 00         [24] 1443 	mov	dpl,#0x00
                                   1444 ;	../LED_Manager/led.c:301: }
      00248C 02 24 E4         [24] 1445 	ljmp	_set_leds
                                   1446 ;------------------------------------------------------------
                                   1447 ;Allocation info for local variables in function 'whiteout'
                                   1448 ;------------------------------------------------------------
                                   1449 ;	../LED_Manager/led.c:303: void whiteout(){
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function whiteout
                                   1452 ;	-----------------------------------------
      00248F                       1453 _whiteout:
                                   1454 ;	../LED_Manager/led.c:304: set_leds(0xFF, 0xFF, 0xFF);
      00248F 75 55 FF         [24] 1455 	mov	_set_leds_PARM_2,#0xff
      002492 75 56 FF         [24] 1456 	mov	_set_leds_PARM_3,#0xff
      002495 75 82 FF         [24] 1457 	mov	dpl,#0xff
                                   1458 ;	../LED_Manager/led.c:305: }
      002498 02 24 E4         [24] 1459 	ljmp	_set_leds
                                   1460 ;------------------------------------------------------------
                                   1461 ;Allocation info for local variables in function 'blackout'
                                   1462 ;------------------------------------------------------------
                                   1463 ;	../LED_Manager/led.c:307: void blackout(){
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function blackout
                                   1466 ;	-----------------------------------------
      00249B                       1467 _blackout:
                                   1468 ;	../LED_Manager/led.c:308: set_leds(0,0,0);
      00249B 75 55 00         [24] 1469 	mov	_set_leds_PARM_2,#0x00
      00249E 75 56 00         [24] 1470 	mov	_set_leds_PARM_3,#0x00
      0024A1 75 82 00         [24] 1471 	mov	dpl,#0x00
                                   1472 ;	../LED_Manager/led.c:309: }
      0024A4 02 24 E4         [24] 1473 	ljmp	_set_leds
                                   1474 ;------------------------------------------------------------
                                   1475 ;Allocation info for local variables in function 'rngU32'
                                   1476 ;------------------------------------------------------------
                                   1477 ;past                      Allocated with name '_rngU32_past_65536_106'
                                   1478 ;present                   Allocated with name '_rngU32_present_65536_106'
                                   1479 ;------------------------------------------------------------
                                   1480 ;	../LED_Manager/led.c:312: uint32_t rngU32(){
                                   1481 ;	-----------------------------------------
                                   1482 ;	 function rngU32
                                   1483 ;	-----------------------------------------
      0024A7                       1484 _rngU32:
                                   1485 ;	../LED_Manager/led.c:316: present = past + present;
      0024A7 E5 51            [12] 1486 	mov	a,_rngU32_present_65536_106
      0024A9 25 4D            [12] 1487 	add	a,_rngU32_past_65536_106
      0024AB F5 51            [12] 1488 	mov	_rngU32_present_65536_106,a
      0024AD E5 52            [12] 1489 	mov	a,(_rngU32_present_65536_106 + 1)
      0024AF 35 4E            [12] 1490 	addc	a,(_rngU32_past_65536_106 + 1)
      0024B1 F5 52            [12] 1491 	mov	(_rngU32_present_65536_106 + 1),a
      0024B3 E5 53            [12] 1492 	mov	a,(_rngU32_present_65536_106 + 2)
      0024B5 35 4F            [12] 1493 	addc	a,(_rngU32_past_65536_106 + 2)
      0024B7 F5 53            [12] 1494 	mov	(_rngU32_present_65536_106 + 2),a
      0024B9 E5 54            [12] 1495 	mov	a,(_rngU32_present_65536_106 + 3)
      0024BB 35 50            [12] 1496 	addc	a,(_rngU32_past_65536_106 + 3)
      0024BD F5 54            [12] 1497 	mov	(_rngU32_present_65536_106 + 3),a
                                   1498 ;	../LED_Manager/led.c:317: past = present - past;
      0024BF E5 51            [12] 1499 	mov	a,_rngU32_present_65536_106
      0024C1 C3               [12] 1500 	clr	c
      0024C2 95 4D            [12] 1501 	subb	a,_rngU32_past_65536_106
      0024C4 F5 4D            [12] 1502 	mov	_rngU32_past_65536_106,a
      0024C6 E5 52            [12] 1503 	mov	a,(_rngU32_present_65536_106 + 1)
      0024C8 95 4E            [12] 1504 	subb	a,(_rngU32_past_65536_106 + 1)
      0024CA F5 4E            [12] 1505 	mov	(_rngU32_past_65536_106 + 1),a
      0024CC E5 53            [12] 1506 	mov	a,(_rngU32_present_65536_106 + 2)
      0024CE 95 4F            [12] 1507 	subb	a,(_rngU32_past_65536_106 + 2)
      0024D0 F5 4F            [12] 1508 	mov	(_rngU32_past_65536_106 + 2),a
      0024D2 E5 54            [12] 1509 	mov	a,(_rngU32_present_65536_106 + 3)
      0024D4 95 50            [12] 1510 	subb	a,(_rngU32_past_65536_106 + 3)
      0024D6 F5 50            [12] 1511 	mov	(_rngU32_past_65536_106 + 3),a
                                   1512 ;	../LED_Manager/led.c:319: return present;
      0024D8 85 51 82         [24] 1513 	mov	dpl,_rngU32_present_65536_106
      0024DB 85 52 83         [24] 1514 	mov	dph,(_rngU32_present_65536_106 + 1)
      0024DE 85 53 F0         [24] 1515 	mov	b,(_rngU32_present_65536_106 + 2)
      0024E1 E5 54            [12] 1516 	mov	a,(_rngU32_present_65536_106 + 3)
                                   1517 ;	../LED_Manager/led.c:320: }
      0024E3 22               [24] 1518 	ret
                                   1519 ;------------------------------------------------------------
                                   1520 ;Allocation info for local variables in function 'set_leds'
                                   1521 ;------------------------------------------------------------
                                   1522 ;green                     Allocated with name '_set_leds_PARM_2'
                                   1523 ;blue                      Allocated with name '_set_leds_PARM_3'
                                   1524 ;red                       Allocated to registers r7 
                                   1525 ;dimmer                    Allocated to registers r6 
                                   1526 ;------------------------------------------------------------
                                   1527 ;	../LED_Manager/led.c:322: void set_leds(uint8_t red, uint8_t green, uint8_t blue){
                                   1528 ;	-----------------------------------------
                                   1529 ;	 function set_leds
                                   1530 ;	-----------------------------------------
      0024E4                       1531 _set_leds:
      0024E4 AF 82            [24] 1532 	mov	r7,dpl
                                   1533 ;	../LED_Manager/led.c:323: uint8_t dimmer = 0xFF;
      0024E6 7E FF            [12] 1534 	mov	r6,#0xff
                                   1535 ;	../LED_Manager/led.c:325: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0024E8 75 82 10         [24] 1536 	mov	dpl,#0x10
      0024EB C0 07            [24] 1537 	push	ar7
      0024ED C0 06            [24] 1538 	push	ar6
      0024EF 12 28 BF         [24] 1539 	lcall	_get_runtime_data
      0024F2 E5 82            [12] 1540 	mov	a,dpl
      0024F4 D0 06            [24] 1541 	pop	ar6
      0024F6 D0 07            [24] 1542 	pop	ar7
      0024F8 70 14            [24] 1543 	jnz	00104$
                                   1544 ;	../LED_Manager/led.c:326: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11){
      0024FA 75 82 0E         [24] 1545 	mov	dpl,#0x0e
      0024FD C0 07            [24] 1546 	push	ar7
      0024FF C0 06            [24] 1547 	push	ar6
      002501 12 28 BF         [24] 1548 	lcall	_get_runtime_data
      002504 E5 82            [12] 1549 	mov	a,dpl
      002506 D0 06            [24] 1550 	pop	ar6
      002508 D0 07            [24] 1551 	pop	ar7
      00250A 70 02            [24] 1552 	jnz	00104$
                                   1553 ;	../LED_Manager/led.c:327: dimmer = get_dmx_value(DMX_M11_DIMMER_INDEX);
      00250C AE 30            [24] 1554 	mov	r6,(_DMX + 0x0003)
      00250E                       1555 00104$:
                                   1556 ;	../LED_Manager/led.c:331: if(dimmer == 0xFF){
      00250E BE FF 09         [24] 1557 	cjne	r6,#0xff,00106$
                                   1558 ;	../LED_Manager/led.c:332: PWMDATA11H = red;
      002511 8F BD            [24] 1559 	mov	_PWMDATA11H,r7
                                   1560 ;	../LED_Manager/led.c:333: PWMDATA17H = green;
      002513 85 55 AD         [24] 1561 	mov	_PWMDATA17H,_set_leds_PARM_2
                                   1562 ;	../LED_Manager/led.c:334: PWMDATA14H = blue;
      002516 85 56 B5         [24] 1563 	mov	_PWMDATA14H,_set_leds_PARM_3
      002519 22               [24] 1564 	ret
      00251A                       1565 00106$:
                                   1566 ;	../LED_Manager/led.c:336: PWMDATA11H = ((uint8_t)((((uint16_t) red) * ((uint16_t)dimmer)) >> 8));
      00251A 7D 00            [12] 1567 	mov	r5,#0x00
      00251C 7C 00            [12] 1568 	mov	r4,#0x00
      00251E 8E 74            [24] 1569 	mov	__mulint_PARM_2,r6
      002520 8C 75            [24] 1570 	mov	(__mulint_PARM_2 + 1),r4
      002522 8F 82            [24] 1571 	mov	dpl,r7
      002524 8D 83            [24] 1572 	mov	dph,r5
      002526 C0 06            [24] 1573 	push	ar6
      002528 C0 04            [24] 1574 	push	ar4
      00252A 12 2E DC         [24] 1575 	lcall	__mulint
      00252D AF 83            [24] 1576 	mov	r7,dph
      00252F D0 04            [24] 1577 	pop	ar4
      002531 D0 06            [24] 1578 	pop	ar6
      002533 8F BD            [24] 1579 	mov	_PWMDATA11H,r7
                                   1580 ;	../LED_Manager/led.c:337: PWMDATA17H = ((uint8_t)((((uint16_t) green) * ((uint16_t)dimmer)) >> 8));
      002535 AD 55            [24] 1581 	mov	r5,_set_leds_PARM_2
      002537 7F 00            [12] 1582 	mov	r7,#0x00
      002539 8E 74            [24] 1583 	mov	__mulint_PARM_2,r6
      00253B 8C 75            [24] 1584 	mov	(__mulint_PARM_2 + 1),r4
      00253D 8D 82            [24] 1585 	mov	dpl,r5
      00253F 8F 83            [24] 1586 	mov	dph,r7
      002541 C0 06            [24] 1587 	push	ar6
      002543 C0 04            [24] 1588 	push	ar4
      002545 12 2E DC         [24] 1589 	lcall	__mulint
      002548 AF 83            [24] 1590 	mov	r7,dph
      00254A D0 04            [24] 1591 	pop	ar4
      00254C D0 06            [24] 1592 	pop	ar6
      00254E 8F AD            [24] 1593 	mov	_PWMDATA17H,r7
                                   1594 ;	../LED_Manager/led.c:338: PWMDATA14H = ((uint8_t)((((uint16_t) blue) * ((uint16_t)dimmer)) >> 8));
      002550 AD 56            [24] 1595 	mov	r5,_set_leds_PARM_3
      002552 7F 00            [12] 1596 	mov	r7,#0x00
      002554 8E 74            [24] 1597 	mov	__mulint_PARM_2,r6
      002556 8C 75            [24] 1598 	mov	(__mulint_PARM_2 + 1),r4
      002558 8D 82            [24] 1599 	mov	dpl,r5
      00255A 8F 83            [24] 1600 	mov	dph,r7
      00255C 12 2E DC         [24] 1601 	lcall	__mulint
      00255F AF 83            [24] 1602 	mov	r7,dph
      002561 8F B5            [24] 1603 	mov	_PWMDATA14H,r7
                                   1604 ;	../LED_Manager/led.c:340: }
      002563 22               [24] 1605 	ret
                                   1606 	.area CSEG    (CODE)
                                   1607 	.area CONST   (CODE)
                                   1608 	.area XINIT   (CODE)
                                   1609 	.area CABS    (ABS,CODE)
