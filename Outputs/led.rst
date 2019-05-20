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
      00003B                        213 _tick_led_on_65536_17:
      00003B                        214 	.ds 1
      00003C                        215 _tick_led_sloc0_1_0:
      00003C                        216 	.ds 4
      000040                        217 _play_macro_tock_65536_55:
      000040                        218 	.ds 1
      000041                        219 _play_macro_primaryCount_65536_55:
      000041                        220 	.ds 1
      000042                        221 _play_macro_secondaryCount_65536_55:
      000042                        222 	.ds 1
      000043                        223 _play_macro_direction_65536_55:
      000043                        224 	.ds 1
      000044                        225 _play_macro_PARM_2:
      000044                        226 	.ds 1
      000045                        227 _play_macro_PARM_3:
      000045                        228 	.ds 1
      000046                        229 _play_macro_tick_65536_54:
      000046                        230 	.ds 4
      00004A                        231 _play_macro_rng_65536_55:
      00004A                        232 	.ds 4
      00004E                        233 _play_macro_changed_65536_55:
      00004E                        234 	.ds 1
      00004F                        235 _rngU32_past_65536_106:
      00004F                        236 	.ds 4
      000053                        237 _rngU32_present_65536_106:
      000053                        238 	.ds 4
      000057                        239 _set_leds_PARM_2:
      000057                        240 	.ds 1
      000058                        241 _set_leds_PARM_3:
      000058                        242 	.ds 1
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
      0000CE 75 3B 00         [24]  304 	mov	_tick_led_on_65536_17,#0x00
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
      0000D1 75 40 00         [24]  319 	mov	_play_macro_tock_65536_55,#0x00
                                    320 ;	../LED_Manager/led.c:137: static uint8_t primaryCount = 0;
      0000D4 75 41 00         [24]  321 	mov	_play_macro_primaryCount_65536_55,#0x00
                                    322 ;	../LED_Manager/led.c:138: static uint8_t secondaryCount = 0;
      0000D7 75 42 00         [24]  323 	mov	_play_macro_secondaryCount_65536_55,#0x00
                                    324 ;	../LED_Manager/led.c:139: static uint8_t direction = 0;
      0000DA 75 43 00         [24]  325 	mov	_play_macro_direction_65536_55,#0x00
                                    326 ;------------------------------------------------------------
                                    327 ;Allocation info for local variables in function 'rngU32'
                                    328 ;------------------------------------------------------------
                                    329 ;past                      Allocated with name '_rngU32_past_65536_106'
                                    330 ;present                   Allocated with name '_rngU32_present_65536_106'
                                    331 ;------------------------------------------------------------
                                    332 ;	../LED_Manager/led.c:313: static uint32_t past = 1;
      0000DD 75 4F 01         [24]  333 	mov	_rngU32_past_65536_106,#0x01
      0000E0 E4               [12]  334 	clr	a
      0000E1 F5 50            [12]  335 	mov	(_rngU32_past_65536_106 + 1),a
      0000E3 F5 51            [12]  336 	mov	(_rngU32_past_65536_106 + 2),a
      0000E5 F5 52            [12]  337 	mov	(_rngU32_past_65536_106 + 3),a
                                    338 ;	../LED_Manager/led.c:314: static uint32_t present = 1;
      0000E7 75 53 01         [24]  339 	mov	_rngU32_present_65536_106,#0x01
      0000EA F5 54            [12]  340 	mov	(_rngU32_present_65536_106 + 1),a
      0000EC F5 55            [12]  341 	mov	(_rngU32_present_65536_106 + 2),a
      0000EE F5 56            [12]  342 	mov	(_rngU32_present_65536_106 + 3),a
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
      001E79                        366 _tick_led:
                           000007   367 	ar7 = 0x07
                           000006   368 	ar6 = 0x06
                           000005   369 	ar5 = 0x05
                           000004   370 	ar4 = 0x04
                           000003   371 	ar3 = 0x03
                           000002   372 	ar2 = 0x02
                           000001   373 	ar1 = 0x01
                           000000   374 	ar0 = 0x00
      001E79 AC 82            [24]  375 	mov	r4,dpl
      001E7B AD 83            [24]  376 	mov	r5,dph
      001E7D AE F0            [24]  377 	mov	r6,b
      001E7F FF               [12]  378 	mov	r7,a
                                    379 ;	../LED_Manager/led.c:27: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      001E80 75 82 10         [24]  380 	mov	dpl,#0x10
      001E83 C0 07            [24]  381 	push	ar7
      001E85 C0 06            [24]  382 	push	ar6
      001E87 C0 05            [24]  383 	push	ar5
      001E89 C0 04            [24]  384 	push	ar4
      001E8B 12 28 C8         [24]  385 	lcall	_get_runtime_data
      001E8E E5 82            [12]  386 	mov	a,dpl
      001E90 D0 04            [24]  387 	pop	ar4
      001E92 D0 05            [24]  388 	pop	ar5
      001E94 D0 06            [24]  389 	pop	ar6
      001E96 D0 07            [24]  390 	pop	ar7
      001E98 60 03            [24]  391 	jz	00227$
      001E9A 02 1F DE         [24]  392 	ljmp	00143$
      001E9D                        393 00227$:
                                    394 ;	../LED_Manager/led.c:28: switch(get_runtime_data(MODE_INDEX)){
      001E9D 75 82 0E         [24]  395 	mov	dpl,#0x0e
      001EA0 C0 07            [24]  396 	push	ar7
      001EA2 C0 06            [24]  397 	push	ar6
      001EA4 C0 05            [24]  398 	push	ar5
      001EA6 C0 04            [24]  399 	push	ar4
      001EA8 12 28 C8         [24]  400 	lcall	_get_runtime_data
      001EAB AB 82            [24]  401 	mov	r3,dpl
      001EAD D0 04            [24]  402 	pop	ar4
      001EAF D0 05            [24]  403 	pop	ar5
      001EB1 D0 06            [24]  404 	pop	ar6
      001EB3 D0 07            [24]  405 	pop	ar7
      001EB5 BB 00 02         [24]  406 	cjne	r3,#0x00,00228$
      001EB8 80 09            [24]  407 	sjmp	00101$
      001EBA                        408 00228$:
      001EBA BB 01 03         [24]  409 	cjne	r3,#0x01,00229$
      001EBD 02 1F 7D         [24]  410 	ljmp	00119$
      001EC0                        411 00229$:
      001EC0 02 24 A4         [24]  412 	ljmp	_blackout
                                    413 ;	../LED_Manager/led.c:29: case OPTION_DMX_MODE_11:
      001EC3                        414 00101$:
                                    415 ;	../LED_Manager/led.c:30: value = get_dmx_value(DMX_M11_MACRO_INDEX);
      001EC3 AB 35            [24]  416 	mov	r3,(_DMX + 0x0008)
                                    417 ;	../LED_Manager/led.c:32: if(value >= DMX_MACRO_NONE){
      001EC5 BB 14 00         [24]  418 	cjne	r3,#0x14,00230$
      001EC8                        419 00230$:
      001EC8 40 57            [24]  420 	jc	00117$
                                    421 ;	../LED_Manager/led.c:33: if(value < DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
      001ECA BB 94 00         [24]  422 	cjne	r3,#0x94,00232$
      001ECD                        423 00232$:
      001ECD 50 0C            [24]  424 	jnc	00106$
                                    425 ;	../LED_Manager/led.c:34: color_wheel((value - DMX_MACRO_NONE) << 1);
      001ECF 8B 02            [24]  426 	mov	ar2,r3
      001ED1 EA               [12]  427 	mov	a,r2
      001ED2 24 EC            [12]  428 	add	a,#0xec
      001ED4 25 E0            [12]  429 	add	a,acc
      001ED6 F5 82            [12]  430 	mov	dpl,a
      001ED8 02 24 38         [24]  431 	ljmp	_color_wheel
      001EDB                        432 00106$:
                                    433 ;	../LED_Manager/led.c:36: dimmer = get_dmx_value(DMX_M11_MACRO_SPEED_INDEX);
                                    434 ;	../LED_Manager/led.c:38: if(dimmer > 10){
      001EDB E5 36            [12]  435 	mov	a,(_DMX + 0x0009)
      001EDD FA               [12]  436 	mov	r2,a
      001EDE 24 F5            [12]  437 	add	a,#0xff - 0x0a
      001EE0 50 2B            [24]  438 	jnc	00103$
                                    439 ;	../LED_Manager/led.c:39: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      001EE2 8B 82            [24]  440 	mov	dpl,r3
      001EE4 C0 07            [24]  441 	push	ar7
      001EE6 C0 06            [24]  442 	push	ar6
      001EE8 C0 05            [24]  443 	push	ar5
      001EEA C0 04            [24]  444 	push	ar4
      001EEC C0 02            [24]  445 	push	ar2
      001EEE 12 20 AF         [24]  446 	lcall	_dmx_to_macro
      001EF1 85 82 44         [24]  447 	mov	_play_macro_PARM_2,dpl
      001EF4 D0 02            [24]  448 	pop	ar2
      001EF6 D0 04            [24]  449 	pop	ar4
      001EF8 D0 05            [24]  450 	pop	ar5
      001EFA D0 06            [24]  451 	pop	ar6
      001EFC D0 07            [24]  452 	pop	ar7
      001EFE EA               [12]  453 	mov	a,r2
      001EFF 24 FB            [12]  454 	add	a,#0xfb
      001F01 F5 45            [12]  455 	mov	_play_macro_PARM_3,a
      001F03 8C 82            [24]  456 	mov	dpl,r4
      001F05 8D 83            [24]  457 	mov	dph,r5
      001F07 8E F0            [24]  458 	mov	b,r6
      001F09 EF               [12]  459 	mov	a,r7
      001F0A 02 20 F4         [24]  460 	ljmp	_play_macro
      001F0D                        461 00103$:
                                    462 ;	../LED_Manager/led.c:41: play_macro(1, dmx_to_macro(value), 0xFF);
      001F0D 8B 82            [24]  463 	mov	dpl,r3
      001F0F 12 20 AF         [24]  464 	lcall	_dmx_to_macro
      001F12 85 82 44         [24]  465 	mov	_play_macro_PARM_2,dpl
      001F15 75 45 FF         [24]  466 	mov	_play_macro_PARM_3,#0xff
      001F18 90 00 01         [24]  467 	mov	dptr,#(0x01&0x00ff)
      001F1B E4               [12]  468 	clr	a
      001F1C F5 F0            [12]  469 	mov	b,a
      001F1E 02 20 F4         [24]  470 	ljmp	_play_macro
      001F21                        471 00117$:
                                    472 ;	../LED_Manager/led.c:46: strobe = get_dmx_value(DMX_M11_STROBE_INDEX);
                                    473 ;	../LED_Manager/led.c:48: if(strobe){
      001F21 E5 34            [12]  474 	mov	a,(_DMX + 0x0007)
      001F23 FB               [12]  475 	mov	r3,a
      001F24 60 41            [24]  476 	jz	00111$
                                    477 ;	../LED_Manager/led.c:49: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      001F26 7A 00            [12]  478 	mov	r2,#0x00
      001F28 EB               [12]  479 	mov	a,r3
      001F29 2B               [12]  480 	add	a,r3
      001F2A FB               [12]  481 	mov	r3,a
      001F2B EA               [12]  482 	mov	a,r2
      001F2C 33               [12]  483 	rlc	a
      001F2D FA               [12]  484 	mov	r2,a
      001F2E 74 1C            [12]  485 	mov	a,#0x1c
      001F30 C3               [12]  486 	clr	c
      001F31 9B               [12]  487 	subb	a,r3
      001F32 FB               [12]  488 	mov	r3,a
      001F33 74 02            [12]  489 	mov	a,#0x02
      001F35 9A               [12]  490 	subb	a,r2
      001F36 8B 76            [24]  491 	mov	__modulong_PARM_2,r3
      001F38 F5 77            [12]  492 	mov	(__modulong_PARM_2 + 1),a
      001F3A 33               [12]  493 	rlc	a
      001F3B 95 E0            [12]  494 	subb	a,acc
      001F3D F5 78            [12]  495 	mov	(__modulong_PARM_2 + 2),a
      001F3F F5 79            [12]  496 	mov	(__modulong_PARM_2 + 3),a
      001F41 8C 82            [24]  497 	mov	dpl,r4
      001F43 8D 83            [24]  498 	mov	dph,r5
      001F45 8E F0            [24]  499 	mov	b,r6
      001F47 EF               [12]  500 	mov	a,r7
      001F48 12 2E 42         [24]  501 	lcall	__modulong
      001F4B 85 82 3C         [24]  502 	mov	_tick_led_sloc0_1_0,dpl
      001F4E 85 83 3D         [24]  503 	mov	(_tick_led_sloc0_1_0 + 1),dph
      001F51 85 F0 3E         [24]  504 	mov	(_tick_led_sloc0_1_0 + 2),b
      001F54 F5 3F            [12]  505 	mov	(_tick_led_sloc0_1_0 + 3),a
      001F56 E5 3C            [12]  506 	mov	a,_tick_led_sloc0_1_0
      001F58 45 3D            [12]  507 	orl	a,(_tick_led_sloc0_1_0 + 1)
      001F5A 45 3E            [12]  508 	orl	a,(_tick_led_sloc0_1_0 + 2)
      001F5C 45 3F            [12]  509 	orl	a,(_tick_led_sloc0_1_0 + 3)
      001F5E 70 0A            [24]  510 	jnz	00112$
                                    511 ;	../LED_Manager/led.c:50: on = ~on;
      001F60 E5 3B            [12]  512 	mov	a,_tick_led_on_65536_17
      001F62 F4               [12]  513 	cpl	a
      001F63 F5 3B            [12]  514 	mov	_tick_led_on_65536_17,a
      001F65 80 03            [24]  515 	sjmp	00112$
      001F67                        516 00111$:
                                    517 ;	../LED_Manager/led.c:53: on = 0xFF;
      001F67 75 3B FF         [24]  518 	mov	_tick_led_on_65536_17,#0xff
      001F6A                        519 00112$:
                                    520 ;	../LED_Manager/led.c:56: if(on){
      001F6A E5 3B            [12]  521 	mov	a,_tick_led_on_65536_17
      001F6C 60 0C            [24]  522 	jz	00114$
                                    523 ;	../LED_Manager/led.c:58: set_leds(get_dmx_value(DMX_M11_RED_INDEX),
      001F6E 85 31 82         [24]  524 	mov	dpl,(_DMX + 0x0004)
                                    525 ;	../LED_Manager/led.c:59: get_dmx_value(DMX_M11_GREEN_INDEX),
      001F71 85 32 57         [24]  526 	mov	_set_leds_PARM_2,(_DMX + 0x0005)
                                    527 ;	../LED_Manager/led.c:60: get_dmx_value(DMX_M11_BLUE_INDEX));
      001F74 85 33 58         [24]  528 	mov	_set_leds_PARM_3,(_DMX + 0x0006)
      001F77 02 24 ED         [24]  529 	ljmp	_set_leds
      001F7A                        530 00114$:
                                    531 ;	../LED_Manager/led.c:63: blackout();
                                    532 ;	../LED_Manager/led.c:67: break;
      001F7A 02 24 A4         [24]  533 	ljmp	_blackout
                                    534 ;	../LED_Manager/led.c:68: case OPTION_DMX_MODE_3: /* Only macros */
      001F7D                        535 00119$:
                                    536 ;	../LED_Manager/led.c:69: value = get_dmx_value(DMX_M3_MACRO_INDEX);
      001F7D AB 2E            [24]  537 	mov	r3,(_DMX + 0x0001)
                                    538 ;	../LED_Manager/led.c:70: if(value >= DMX_MACRO_NONE){
      001F7F BB 14 00         [24]  539 	cjne	r3,#0x14,00238$
      001F82                        540 00238$:
      001F82 40 57            [24]  541 	jc	00127$
                                    542 ;	../LED_Manager/led.c:71: if(value < DMX_MACRO_COLOR_WHEEL){
      001F84 BB 94 00         [24]  543 	cjne	r3,#0x94,00240$
      001F87                        544 00240$:
      001F87 50 0C            [24]  545 	jnc	00124$
                                    546 ;	../LED_Manager/led.c:72: color_wheel((value - DMX_MACRO_NONE) << 1);
      001F89 8B 02            [24]  547 	mov	ar2,r3
      001F8B EA               [12]  548 	mov	a,r2
      001F8C 24 EC            [12]  549 	add	a,#0xec
      001F8E 25 E0            [12]  550 	add	a,acc
      001F90 F5 82            [12]  551 	mov	dpl,a
      001F92 02 24 38         [24]  552 	ljmp	_color_wheel
      001F95                        553 00124$:
                                    554 ;	../LED_Manager/led.c:74: dimmer = get_dmx_value(DMX_M3_MACRO_SPEED_INDEX);
                                    555 ;	../LED_Manager/led.c:76: if(dimmer > 10){
      001F95 E5 2F            [12]  556 	mov	a,(_DMX + 0x0002)
      001F97 FA               [12]  557 	mov	r2,a
      001F98 24 F5            [12]  558 	add	a,#0xff - 0x0a
      001F9A 50 2B            [24]  559 	jnc	00121$
                                    560 ;	../LED_Manager/led.c:77: play_macro(tick, dmx_to_macro(value), dimmer - 5);
      001F9C 8B 82            [24]  561 	mov	dpl,r3
      001F9E C0 07            [24]  562 	push	ar7
      001FA0 C0 06            [24]  563 	push	ar6
      001FA2 C0 05            [24]  564 	push	ar5
      001FA4 C0 04            [24]  565 	push	ar4
      001FA6 C0 02            [24]  566 	push	ar2
      001FA8 12 20 AF         [24]  567 	lcall	_dmx_to_macro
      001FAB 85 82 44         [24]  568 	mov	_play_macro_PARM_2,dpl
      001FAE D0 02            [24]  569 	pop	ar2
      001FB0 D0 04            [24]  570 	pop	ar4
      001FB2 D0 05            [24]  571 	pop	ar5
      001FB4 D0 06            [24]  572 	pop	ar6
      001FB6 D0 07            [24]  573 	pop	ar7
      001FB8 EA               [12]  574 	mov	a,r2
      001FB9 24 FB            [12]  575 	add	a,#0xfb
      001FBB F5 45            [12]  576 	mov	_play_macro_PARM_3,a
      001FBD 8C 82            [24]  577 	mov	dpl,r4
      001FBF 8D 83            [24]  578 	mov	dph,r5
      001FC1 8E F0            [24]  579 	mov	b,r6
      001FC3 EF               [12]  580 	mov	a,r7
      001FC4 02 20 F4         [24]  581 	ljmp	_play_macro
      001FC7                        582 00121$:
                                    583 ;	../LED_Manager/led.c:79: play_macro(1, dmx_to_macro(value), 0xFF);
      001FC7 8B 82            [24]  584 	mov	dpl,r3
      001FC9 12 20 AF         [24]  585 	lcall	_dmx_to_macro
      001FCC 85 82 44         [24]  586 	mov	_play_macro_PARM_2,dpl
      001FCF 75 45 FF         [24]  587 	mov	_play_macro_PARM_3,#0xff
      001FD2 90 00 01         [24]  588 	mov	dptr,#(0x01&0x00ff)
      001FD5 E4               [12]  589 	clr	a
      001FD6 F5 F0            [12]  590 	mov	b,a
      001FD8 02 20 F4         [24]  591 	ljmp	_play_macro
      001FDB                        592 00127$:
                                    593 ;	../LED_Manager/led.c:83: blackout();
                                    594 ;	../LED_Manager/led.c:85: break;
                                    595 ;	../LED_Manager/led.c:86: default:
                                    596 ;	../LED_Manager/led.c:87: blackout();
                                    597 ;	../LED_Manager/led.c:89: }
      001FDB 02 24 A4         [24]  598 	ljmp	_blackout
      001FDE                        599 00143$:
                                    600 ;	../LED_Manager/led.c:91: if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
      001FDE 75 82 03         [24]  601 	mov	dpl,#0x03
      001FE1 C0 07            [24]  602 	push	ar7
      001FE3 C0 06            [24]  603 	push	ar6
      001FE5 C0 05            [24]  604 	push	ar5
      001FE7 C0 04            [24]  605 	push	ar4
      001FE9 12 28 C8         [24]  606 	lcall	_get_runtime_data
      001FEC E5 82            [12]  607 	mov	a,dpl
      001FEE D0 04            [24]  608 	pop	ar4
      001FF0 D0 05            [24]  609 	pop	ar5
      001FF2 D0 06            [24]  610 	pop	ar6
      001FF4 D0 07            [24]  611 	pop	ar7
      001FF6 60 31            [24]  612 	jz	00140$
                                    613 ;	../LED_Manager/led.c:92: play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
      001FF8 75 82 03         [24]  614 	mov	dpl,#0x03
      001FFB C0 07            [24]  615 	push	ar7
      001FFD C0 06            [24]  616 	push	ar6
      001FFF C0 05            [24]  617 	push	ar5
      002001 C0 04            [24]  618 	push	ar4
      002003 12 28 C8         [24]  619 	lcall	_get_runtime_data
      002006 AB 82            [24]  620 	mov	r3,dpl
      002008 75 82 04         [24]  621 	mov	dpl,#0x04
      00200B C0 03            [24]  622 	push	ar3
      00200D 12 28 C8         [24]  623 	lcall	_get_runtime_data
      002010 85 82 45         [24]  624 	mov	_play_macro_PARM_3,dpl
      002013 D0 03            [24]  625 	pop	ar3
      002015 D0 04            [24]  626 	pop	ar4
      002017 D0 05            [24]  627 	pop	ar5
      002019 D0 06            [24]  628 	pop	ar6
      00201B D0 07            [24]  629 	pop	ar7
      00201D 8B 44            [24]  630 	mov	_play_macro_PARM_2,r3
      00201F 8C 82            [24]  631 	mov	dpl,r4
      002021 8D 83            [24]  632 	mov	dph,r5
      002023 8E F0            [24]  633 	mov	b,r6
      002025 EF               [12]  634 	mov	a,r7
      002026 02 20 F4         [24]  635 	ljmp	_play_macro
      002029                        636 00140$:
                                    637 ;	../LED_Manager/led.c:95: strobe = get_runtime_data(STROBE_INDEX);
      002029 75 82 08         [24]  638 	mov	dpl,#0x08
      00202C C0 07            [24]  639 	push	ar7
      00202E C0 06            [24]  640 	push	ar6
      002030 C0 05            [24]  641 	push	ar5
      002032 C0 04            [24]  642 	push	ar4
      002034 12 28 C8         [24]  643 	lcall	_get_runtime_data
      002037 AB 82            [24]  644 	mov	r3,dpl
      002039 D0 04            [24]  645 	pop	ar4
      00203B D0 05            [24]  646 	pop	ar5
      00203D D0 06            [24]  647 	pop	ar6
      00203F D0 07            [24]  648 	pop	ar7
                                    649 ;	../LED_Manager/led.c:97: if(strobe){
      002041 EB               [12]  650 	mov	a,r3
      002042 60 39            [24]  651 	jz	00134$
                                    652 ;	../LED_Manager/led.c:98: if(!(tick % (STROBE_FREQ - (strobe << 1)))){
      002044 7A 00            [12]  653 	mov	r2,#0x00
      002046 EB               [12]  654 	mov	a,r3
      002047 2B               [12]  655 	add	a,r3
      002048 FB               [12]  656 	mov	r3,a
      002049 EA               [12]  657 	mov	a,r2
      00204A 33               [12]  658 	rlc	a
      00204B FA               [12]  659 	mov	r2,a
      00204C 74 1C            [12]  660 	mov	a,#0x1c
      00204E C3               [12]  661 	clr	c
      00204F 9B               [12]  662 	subb	a,r3
      002050 FB               [12]  663 	mov	r3,a
      002051 74 02            [12]  664 	mov	a,#0x02
      002053 9A               [12]  665 	subb	a,r2
      002054 8B 76            [24]  666 	mov	__modulong_PARM_2,r3
      002056 F5 77            [12]  667 	mov	(__modulong_PARM_2 + 1),a
      002058 33               [12]  668 	rlc	a
      002059 95 E0            [12]  669 	subb	a,acc
      00205B F5 78            [12]  670 	mov	(__modulong_PARM_2 + 2),a
      00205D F5 79            [12]  671 	mov	(__modulong_PARM_2 + 3),a
      00205F 8C 82            [24]  672 	mov	dpl,r4
      002061 8D 83            [24]  673 	mov	dph,r5
      002063 8E F0            [24]  674 	mov	b,r6
      002065 EF               [12]  675 	mov	a,r7
      002066 12 2E 42         [24]  676 	lcall	__modulong
      002069 AC 82            [24]  677 	mov	r4,dpl
      00206B AD 83            [24]  678 	mov	r5,dph
      00206D AE F0            [24]  679 	mov	r6,b
      00206F FF               [12]  680 	mov	r7,a
      002070 EC               [12]  681 	mov	a,r4
      002071 4D               [12]  682 	orl	a,r5
      002072 4E               [12]  683 	orl	a,r6
      002073 4F               [12]  684 	orl	a,r7
      002074 70 0A            [24]  685 	jnz	00135$
                                    686 ;	../LED_Manager/led.c:99: on = ~on;
      002076 E5 3B            [12]  687 	mov	a,_tick_led_on_65536_17
      002078 F4               [12]  688 	cpl	a
      002079 F5 3B            [12]  689 	mov	_tick_led_on_65536_17,a
      00207B 80 03            [24]  690 	sjmp	00135$
      00207D                        691 00134$:
                                    692 ;	../LED_Manager/led.c:102: on = 0xFF;
      00207D 75 3B FF         [24]  693 	mov	_tick_led_on_65536_17,#0xff
      002080                        694 00135$:
                                    695 ;	../LED_Manager/led.c:105: if(on){
      002080 E5 3B            [12]  696 	mov	a,_tick_led_on_65536_17
      002082 60 28            [24]  697 	jz	00137$
                                    698 ;	../LED_Manager/led.c:106: set_leds(get_runtime_data(RED_INDEX), get_runtime_data(GREEN_INDEX), get_runtime_data(BLUE_INDEX));
      002084 75 82 05         [24]  699 	mov	dpl,#0x05
      002087 12 28 C8         [24]  700 	lcall	_get_runtime_data
      00208A AF 82            [24]  701 	mov	r7,dpl
      00208C 75 82 06         [24]  702 	mov	dpl,#0x06
      00208F C0 07            [24]  703 	push	ar7
      002091 12 28 C8         [24]  704 	lcall	_get_runtime_data
      002094 AE 82            [24]  705 	mov	r6,dpl
      002096 75 82 07         [24]  706 	mov	dpl,#0x07
      002099 C0 06            [24]  707 	push	ar6
      00209B 12 28 C8         [24]  708 	lcall	_get_runtime_data
      00209E 85 82 58         [24]  709 	mov	_set_leds_PARM_3,dpl
      0020A1 D0 06            [24]  710 	pop	ar6
      0020A3 D0 07            [24]  711 	pop	ar7
      0020A5 8E 57            [24]  712 	mov	_set_leds_PARM_2,r6
      0020A7 8F 82            [24]  713 	mov	dpl,r7
      0020A9 02 24 ED         [24]  714 	ljmp	_set_leds
      0020AC                        715 00137$:
                                    716 ;	../LED_Manager/led.c:108: blackout();
                                    717 ;	../LED_Manager/led.c:112: }
      0020AC 02 24 A4         [24]  718 	ljmp	_blackout
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'dmx_to_macro'
                                    721 ;------------------------------------------------------------
                                    722 ;dmx_value                 Allocated to registers r7 
                                    723 ;------------------------------------------------------------
                                    724 ;	../LED_Manager/led.c:114: uint8_t dmx_to_macro(uint8_t dmx_value){
                                    725 ;	-----------------------------------------
                                    726 ;	 function dmx_to_macro
                                    727 ;	-----------------------------------------
      0020AF                        728 _dmx_to_macro:
      0020AF AF 82            [24]  729 	mov	r7,dpl
                                    730 ;	../LED_Manager/led.c:116: if(dmx_value < DMX_MACRO_WHITE){
      0020B1 BF B4 00         [24]  731 	cjne	r7,#0xb4,00151$
      0020B4                        732 00151$:
      0020B4 50 04            [24]  733 	jnc	00119$
                                    734 ;	../LED_Manager/led.c:117: return OPTION_MACRO_WHITE;
      0020B6 75 82 21         [24]  735 	mov	dpl,#0x21
      0020B9 22               [24]  736 	ret
      0020BA                        737 00119$:
                                    738 ;	../LED_Manager/led.c:118: } else if(dmx_value < DMX_MACRO_RAINBOW){
      0020BA BF BE 00         [24]  739 	cjne	r7,#0xbe,00153$
      0020BD                        740 00153$:
      0020BD 50 04            [24]  741 	jnc	00116$
                                    742 ;	../LED_Manager/led.c:119: return OPTION_MACRO_RAINBOW_DMX;
      0020BF 75 82 01         [24]  743 	mov	dpl,#0x01
      0020C2 22               [24]  744 	ret
      0020C3                        745 00116$:
                                    746 ;	../LED_Manager/led.c:120: } else if(dmx_value < DMX_MACRO_FIRE){
      0020C3 BF C8 00         [24]  747 	cjne	r7,#0xc8,00155$
      0020C6                        748 00155$:
      0020C6 50 04            [24]  749 	jnc	00113$
                                    750 ;	../LED_Manager/led.c:121: return OPTION_MACRO_FIRE_DMX;
      0020C8 75 82 02         [24]  751 	mov	dpl,#0x02
      0020CB 22               [24]  752 	ret
      0020CC                        753 00113$:
                                    754 ;	../LED_Manager/led.c:122: } else if(dmx_value < DMX_MACRO_WATER){
      0020CC BF D2 00         [24]  755 	cjne	r7,#0xd2,00157$
      0020CF                        756 00157$:
      0020CF 50 04            [24]  757 	jnc	00110$
                                    758 ;	../LED_Manager/led.c:123: return OPTION_MACRO_WATER_DMX;
      0020D1 75 82 03         [24]  759 	mov	dpl,#0x03
      0020D4 22               [24]  760 	ret
      0020D5                        761 00110$:
                                    762 ;	../LED_Manager/led.c:124: } else if(dmx_value < DMX_MACRO_ACID){
      0020D5 BF DC 00         [24]  763 	cjne	r7,#0xdc,00159$
      0020D8                        764 00159$:
      0020D8 50 04            [24]  765 	jnc	00107$
                                    766 ;	../LED_Manager/led.c:125: return OPTION_MACRO_ACID_DMX;
      0020DA 75 82 04         [24]  767 	mov	dpl,#0x04
      0020DD 22               [24]  768 	ret
      0020DE                        769 00107$:
                                    770 ;	../LED_Manager/led.c:126: } else if(dmx_value < DMX_MACRO_ETHER){
      0020DE BF E6 00         [24]  771 	cjne	r7,#0xe6,00161$
      0020E1                        772 00161$:
      0020E1 50 04            [24]  773 	jnc	00104$
                                    774 ;	../LED_Manager/led.c:127: return OPTION_MACRO_ETHER_DMX;
      0020E3 75 82 05         [24]  775 	mov	dpl,#0x05
      0020E6 22               [24]  776 	ret
      0020E7                        777 00104$:
                                    778 ;	../LED_Manager/led.c:128: } else if(dmx_value < DMX_MACRO_STORM){
      0020E7 BF F0 00         [24]  779 	cjne	r7,#0xf0,00163$
      0020EA                        780 00163$:
      0020EA 50 04            [24]  781 	jnc	00108$
                                    782 ;	../LED_Manager/led.c:129: return OPTION_MACRO_STORM_DMX;
      0020EC 75 82 06         [24]  783 	mov	dpl,#0x06
      0020EF 22               [24]  784 	ret
      0020F0                        785 00108$:
                                    786 ;	../LED_Manager/led.c:132: return 69; // ;)
      0020F0 75 82 45         [24]  787 	mov	dpl,#0x45
                                    788 ;	../LED_Manager/led.c:133: }
      0020F3 22               [24]  789 	ret
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
      0020F4                        807 _play_macro:
      0020F4 85 82 46         [24]  808 	mov	_play_macro_tick_65536_54,dpl
      0020F7 85 83 47         [24]  809 	mov	(_play_macro_tick_65536_54 + 1),dph
      0020FA 85 F0 48         [24]  810 	mov	(_play_macro_tick_65536_54 + 2),b
      0020FD F5 49            [12]  811 	mov	(_play_macro_tick_65536_54 + 3),a
                                    812 ;	../LED_Manager/led.c:140: uint32_t rng = 0;
      0020FF E4               [12]  813 	clr	a
      002100 F5 4A            [12]  814 	mov	_play_macro_rng_65536_55,a
      002102 F5 4B            [12]  815 	mov	(_play_macro_rng_65536_55 + 1),a
      002104 F5 4C            [12]  816 	mov	(_play_macro_rng_65536_55 + 2),a
      002106 F5 4D            [12]  817 	mov	(_play_macro_rng_65536_55 + 3),a
                                    818 ;	../LED_Manager/led.c:141: uint8_t changed = 0;
                                    819 ;	1-genFromRTrack replaced	mov	_play_macro_changed_65536_55,#0x00
      002108 F5 4E            [12]  820 	mov	_play_macro_changed_65536_55,a
                                    821 ;	../LED_Manager/led.c:145: if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
      00210A E5 45            [12]  822 	mov	a,_play_macro_PARM_3
      00210C C3               [12]  823 	clr	c
      00210D 13               [12]  824 	rrc	a
      00210E FE               [12]  825 	mov	r6,a
      00210F 7D 00            [12]  826 	mov	r5,#0x00
      002111 74 85            [12]  827 	mov	a,#0x85
      002113 C3               [12]  828 	clr	c
      002114 9E               [12]  829 	subb	a,r6
      002115 FE               [12]  830 	mov	r6,a
      002116 E4               [12]  831 	clr	a
      002117 9D               [12]  832 	subb	a,r5
      002118 FD               [12]  833 	mov	r5,a
      002119 8E 76            [24]  834 	mov	__modulong_PARM_2,r6
      00211B ED               [12]  835 	mov	a,r5
      00211C F5 77            [12]  836 	mov	(__modulong_PARM_2 + 1),a
      00211E 33               [12]  837 	rlc	a
      00211F 95 E0            [12]  838 	subb	a,acc
      002121 F5 78            [12]  839 	mov	(__modulong_PARM_2 + 2),a
      002123 F5 79            [12]  840 	mov	(__modulong_PARM_2 + 3),a
      002125 85 46 82         [24]  841 	mov	dpl,_play_macro_tick_65536_54
      002128 85 47 83         [24]  842 	mov	dph,(_play_macro_tick_65536_54 + 1)
      00212B 85 48 F0         [24]  843 	mov	b,(_play_macro_tick_65536_54 + 2)
      00212E E5 49            [12]  844 	mov	a,(_play_macro_tick_65536_54 + 3)
      002130 12 2E 42         [24]  845 	lcall	__modulong
      002133 AC 82            [24]  846 	mov	r4,dpl
      002135 AD 83            [24]  847 	mov	r5,dph
      002137 AE F0            [24]  848 	mov	r6,b
      002139 FF               [12]  849 	mov	r7,a
      00213A EC               [12]  850 	mov	a,r4
      00213B 4D               [12]  851 	orl	a,r5
      00213C 4E               [12]  852 	orl	a,r6
      00213D 4F               [12]  853 	orl	a,r7
      00213E 70 13            [24]  854 	jnz	00102$
                                    855 ;	../LED_Manager/led.c:146: changed = 0xFF;
      002140 75 4E FF         [24]  856 	mov	_play_macro_changed_65536_55,#0xff
                                    857 ;	../LED_Manager/led.c:147: rng = rngU32(); /* TODO check back */
      002143 12 24 B0         [24]  858 	lcall	_rngU32
      002146 85 82 4A         [24]  859 	mov	_play_macro_rng_65536_55,dpl
      002149 85 83 4B         [24]  860 	mov	(_play_macro_rng_65536_55 + 1),dph
      00214C 85 F0 4C         [24]  861 	mov	(_play_macro_rng_65536_55 + 2),b
      00214F F5 4D            [12]  862 	mov	(_play_macro_rng_65536_55 + 3),a
                                    863 ;	../LED_Manager/led.c:148: tock++;
      002151 05 40            [12]  864 	inc	_play_macro_tock_65536_55
      002153                        865 00102$:
                                    866 ;	../LED_Manager/led.c:151: switch (macro)
      002153 74 01            [12]  867 	mov	a,#0x01
      002155 B5 44 02         [24]  868 	cjne	a,_play_macro_PARM_2,00344$
      002158 80 42            [24]  869 	sjmp	00103$
      00215A                        870 00344$:
      00215A 74 02            [12]  871 	mov	a,#0x02
      00215C B5 44 02         [24]  872 	cjne	a,_play_macro_PARM_2,00345$
      00215F 80 41            [24]  873 	sjmp	00104$
      002161                        874 00345$:
      002161 74 03            [12]  875 	mov	a,#0x03
      002163 B5 44 04         [24]  876 	cjne	a,_play_macro_PARM_2,00346$
      002166 74 01            [12]  877 	mov	a,#0x01
      002168 80 01            [24]  878 	sjmp	00347$
      00216A                        879 00346$:
      00216A E4               [12]  880 	clr	a
      00216B                        881 00347$:
      00216B FF               [12]  882 	mov	r7,a
      00216C 60 03            [24]  883 	jz	00348$
      00216E 02 22 4D         [24]  884 	ljmp	00120$
      002171                        885 00348$:
      002171 74 04            [12]  886 	mov	a,#0x04
      002173 B5 44 03         [24]  887 	cjne	a,_play_macro_PARM_2,00349$
      002176 02 22 4D         [24]  888 	ljmp	00120$
      002179                        889 00349$:
      002179 74 05            [12]  890 	mov	a,#0x05
      00217B B5 44 03         [24]  891 	cjne	a,_play_macro_PARM_2,00350$
      00217E 02 22 4D         [24]  892 	ljmp	00120$
      002181                        893 00350$:
      002181 74 06            [12]  894 	mov	a,#0x06
      002183 B5 44 03         [24]  895 	cjne	a,_play_macro_PARM_2,00351$
      002186 02 23 11         [24]  896 	ljmp	00151$
      002189                        897 00351$:
      002189 74 21            [12]  898 	mov	a,#0x21
      00218B B5 44 03         [24]  899 	cjne	a,_play_macro_PARM_2,00352$
      00218E 02 23 73         [24]  900 	ljmp	00165$
      002191                        901 00352$:
      002191 74 45            [12]  902 	mov	a,#0x45
      002193 B5 44 03         [24]  903 	cjne	a,_play_macro_PARM_2,00353$
      002196 02 23 76         [24]  904 	ljmp	00166$
      002199                        905 00353$:
      002199 02 24 35         [24]  906 	ljmp	00185$
                                    907 ;	../LED_Manager/led.c:153: case OPTION_MACRO_RAINBOW_DMX: //rainbow
      00219C                        908 00103$:
                                    909 ;	../LED_Manager/led.c:154: color_wheel(tock);
      00219C 85 40 82         [24]  910 	mov	dpl,_play_macro_tock_65536_55
                                    911 ;	../LED_Manager/led.c:155: break;
      00219F 02 24 38         [24]  912 	ljmp	_color_wheel
                                    913 ;	../LED_Manager/led.c:156: case OPTION_MACRO_FIRE_DMX: //fire
      0021A2                        914 00104$:
                                    915 ;	../LED_Manager/led.c:157: if(changed) { 
      0021A2 E5 4E            [12]  916 	mov	a,_play_macro_changed_65536_55
      0021A4 70 01            [24]  917 	jnz	00354$
      0021A6 22               [24]  918 	ret
      0021A7                        919 00354$:
                                    920 ;	../LED_Manager/led.c:159: if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
      0021A7 74 C9            [12]  921 	mov	a,#0x100 - 0x37
      0021A9 25 41            [12]  922 	add	a,_play_macro_primaryCount_65536_55
      0021AB 40 0C            [24]  923 	jc	00106$
      0021AD 75 41 37         [24]  924 	mov	_play_macro_primaryCount_65536_55,#0x37
      0021B0 AD 43            [24]  925 	mov	r5,_play_macro_direction_65536_55
      0021B2 7E 00            [12]  926 	mov	r6,#0x00
      0021B4 43 05 01         [24]  927 	orl	ar5,#0x01
      0021B7 8D 43            [24]  928 	mov	_play_macro_direction_65536_55,r5
      0021B9                        929 00106$:
                                    930 ;	../LED_Manager/led.c:160: if(direction & 0x01){
      0021B9 E5 43            [12]  931 	mov	a,_play_macro_direction_65536_55
      0021BB 30 E0 0E         [24]  932 	jnb	acc.0,00114$
                                    933 ;	../LED_Manager/led.c:161: if(primaryCount == 255){
      0021BE 74 FF            [12]  934 	mov	a,#0xff
      0021C0 B5 41 05         [24]  935 	cjne	a,_play_macro_primaryCount_65536_55,00108$
                                    936 ;	../LED_Manager/led.c:162: direction &= ~0x01;
      0021C3 53 43 FE         [24]  937 	anl	_play_macro_direction_65536_55,#0xfe
      0021C6 80 20            [24]  938 	sjmp	00115$
      0021C8                        939 00108$:
                                    940 ;	../LED_Manager/led.c:164: primaryCount++;
      0021C8 05 41            [12]  941 	inc	_play_macro_primaryCount_65536_55
      0021CA 80 1C            [24]  942 	sjmp	00115$
      0021CC                        943 00114$:
                                    944 ;	../LED_Manager/led.c:167: if(primaryCount - 1 == 55){
      0021CC AD 41            [24]  945 	mov	r5,_play_macro_primaryCount_65536_55
      0021CE 7E 00            [12]  946 	mov	r6,#0x00
      0021D0 1D               [12]  947 	dec	r5
      0021D1 BD FF 01         [24]  948 	cjne	r5,#0xff,00359$
      0021D4 1E               [12]  949 	dec	r6
      0021D5                        950 00359$:
      0021D5 BD 37 0E         [24]  951 	cjne	r5,#0x37,00111$
      0021D8 BE 00 0B         [24]  952 	cjne	r6,#0x00,00111$
                                    953 ;	../LED_Manager/led.c:168: direction |= 0x01;
      0021DB AD 43            [24]  954 	mov	r5,_play_macro_direction_65536_55
      0021DD 7E 00            [12]  955 	mov	r6,#0x00
      0021DF 43 05 01         [24]  956 	orl	ar5,#0x01
      0021E2 8D 43            [24]  957 	mov	_play_macro_direction_65536_55,r5
      0021E4 80 02            [24]  958 	sjmp	00115$
      0021E6                        959 00111$:
                                    960 ;	../LED_Manager/led.c:170: primaryCount--;
      0021E6 15 41            [12]  961 	dec	_play_macro_primaryCount_65536_55
      0021E8                        962 00115$:
                                    963 ;	../LED_Manager/led.c:174: set_leds(primaryCount, (uint8_t) (rng % (primaryCount >> 2)), (!(rng % 13)) ? PWMDATA17H > 1 : 0);
      0021E8 E5 41            [12]  964 	mov	a,_play_macro_primaryCount_65536_55
      0021EA 03               [12]  965 	rr	a
      0021EB 03               [12]  966 	rr	a
      0021EC 54 3F            [12]  967 	anl	a,#0x3f
      0021EE FE               [12]  968 	mov	r6,a
      0021EF 8E 76            [24]  969 	mov	__modulong_PARM_2,r6
      0021F1 75 77 00         [24]  970 	mov	(__modulong_PARM_2 + 1),#0x00
      0021F4 75 78 00         [24]  971 	mov	(__modulong_PARM_2 + 2),#0x00
      0021F7 75 79 00         [24]  972 	mov	(__modulong_PARM_2 + 3),#0x00
      0021FA 85 4A 82         [24]  973 	mov	dpl,_play_macro_rng_65536_55
      0021FD 85 4B 83         [24]  974 	mov	dph,(_play_macro_rng_65536_55 + 1)
      002200 85 4C F0         [24]  975 	mov	b,(_play_macro_rng_65536_55 + 2)
      002203 E5 4D            [12]  976 	mov	a,(_play_macro_rng_65536_55 + 3)
      002205 12 2E 42         [24]  977 	lcall	__modulong
      002208 AB 82            [24]  978 	mov	r3,dpl
      00220A 75 76 0D         [24]  979 	mov	__modulong_PARM_2,#0x0d
      00220D E4               [12]  980 	clr	a
      00220E F5 77            [12]  981 	mov	(__modulong_PARM_2 + 1),a
      002210 F5 78            [12]  982 	mov	(__modulong_PARM_2 + 2),a
      002212 F5 79            [12]  983 	mov	(__modulong_PARM_2 + 3),a
      002214 85 4A 82         [24]  984 	mov	dpl,_play_macro_rng_65536_55
      002217 85 4B 83         [24]  985 	mov	dph,(_play_macro_rng_65536_55 + 1)
      00221A 85 4C F0         [24]  986 	mov	b,(_play_macro_rng_65536_55 + 2)
      00221D E5 4D            [12]  987 	mov	a,(_play_macro_rng_65536_55 + 3)
      00221F C0 03            [24]  988 	push	ar3
      002221 12 2E 42         [24]  989 	lcall	__modulong
      002224 AA 82            [24]  990 	mov	r2,dpl
      002226 AC 83            [24]  991 	mov	r4,dph
      002228 AD F0            [24]  992 	mov	r5,b
      00222A FE               [12]  993 	mov	r6,a
      00222B D0 03            [24]  994 	pop	ar3
      00222D EA               [12]  995 	mov	a,r2
      00222E 4C               [12]  996 	orl	a,r4
      00222F 4D               [12]  997 	orl	a,r5
      002230 4E               [12]  998 	orl	a,r6
      002231 70 0C            [24]  999 	jnz	00189$
      002233 C3               [12] 1000 	clr	c
      002234 74 01            [12] 1001 	mov	a,#0x01
      002236 95 AD            [12] 1002 	subb	a,_PWMDATA17H
      002238 E4               [12] 1003 	clr	a
      002239 33               [12] 1004 	rlc	a
      00223A FD               [12] 1005 	mov	r5,a
      00223B 7E 00            [12] 1006 	mov	r6,#0x00
      00223D 80 04            [24] 1007 	sjmp	00190$
      00223F                       1008 00189$:
      00223F 7D 00            [12] 1009 	mov	r5,#0x00
      002241 7E 00            [12] 1010 	mov	r6,#0x00
      002243                       1011 00190$:
      002243 8D 58            [24] 1012 	mov	_set_leds_PARM_3,r5
      002245 8B 57            [24] 1013 	mov	_set_leds_PARM_2,r3
      002247 85 41 82         [24] 1014 	mov	dpl,_play_macro_primaryCount_65536_55
                                   1015 ;	../LED_Manager/led.c:177: break;
      00224A 02 24 ED         [24] 1016 	ljmp	_set_leds
                                   1017 ;	../LED_Manager/led.c:180: case OPTION_MACRO_ETHER_DMX:
      00224D                       1018 00120$:
                                   1019 ;	../LED_Manager/led.c:182: if(changed){
      00224D E5 4E            [12] 1020 	mov	a,_play_macro_changed_65536_55
      00224F 70 01            [24] 1021 	jnz	00363$
      002251 22               [24] 1022 	ret
      002252                       1023 00363$:
                                   1024 ;	../LED_Manager/led.c:184: if(direction & 0x01){
      002252 E5 43            [12] 1025 	mov	a,_play_macro_direction_65536_55
      002254 30 E0 14         [24] 1026 	jnb	acc.0,00126$
                                   1027 ;	../LED_Manager/led.c:185: primaryCount +=2;
      002257 AE 41            [24] 1028 	mov	r6,_play_macro_primaryCount_65536_55
      002259 74 02            [12] 1029 	mov	a,#0x02
      00225B 2E               [12] 1030 	add	a,r6
                                   1031 ;	../LED_Manager/led.c:187: if(primaryCount < 75){
      00225C F5 41            [12] 1032 	mov	_play_macro_primaryCount_65536_55,a
      00225E C3               [12] 1033 	clr	c
      00225F 94 4B            [12] 1034 	subb	a,#0x4b
      002261 50 1F            [24] 1035 	jnc	00127$
                                   1036 ;	../LED_Manager/led.c:188: direction &= ~0x01;
      002263 53 43 FE         [24] 1037 	anl	_play_macro_direction_65536_55,#0xfe
                                   1038 ;	../LED_Manager/led.c:189: primaryCount = 255;
      002266 75 41 FF         [24] 1039 	mov	_play_macro_primaryCount_65536_55,#0xff
      002269 80 17            [24] 1040 	sjmp	00127$
      00226B                       1041 00126$:
                                   1042 ;	../LED_Manager/led.c:193: primaryCount -=2;
      00226B E5 41            [12] 1043 	mov	a,_play_macro_primaryCount_65536_55
      00226D FE               [12] 1044 	mov	r6,a
      00226E 24 FE            [12] 1045 	add	a,#0xfe
                                   1046 ;	../LED_Manager/led.c:195: if(primaryCount <= 130){
      002270 F5 41            [12] 1047 	mov  _play_macro_primaryCount_65536_55,a
      002272 24 7D            [12] 1048 	add	a,#0xff - 0x82
      002274 40 0C            [24] 1049 	jc	00127$
                                   1050 ;	../LED_Manager/led.c:196: direction |= 0x01;
      002276 AD 43            [24] 1051 	mov	r5,_play_macro_direction_65536_55
      002278 7E 00            [12] 1052 	mov	r6,#0x00
      00227A 43 05 01         [24] 1053 	orl	ar5,#0x01
      00227D 8D 43            [24] 1054 	mov	_play_macro_direction_65536_55,r5
                                   1055 ;	../LED_Manager/led.c:197: primaryCount = 130;
      00227F 75 41 82         [24] 1056 	mov	_play_macro_primaryCount_65536_55,#0x82
      002282                       1057 00127$:
                                   1058 ;	../LED_Manager/led.c:201: if(rng % 21 == 0){
      002282 75 76 15         [24] 1059 	mov	__modulong_PARM_2,#0x15
      002285 E4               [12] 1060 	clr	a
      002286 F5 77            [12] 1061 	mov	(__modulong_PARM_2 + 1),a
      002288 F5 78            [12] 1062 	mov	(__modulong_PARM_2 + 2),a
      00228A F5 79            [12] 1063 	mov	(__modulong_PARM_2 + 3),a
      00228C 85 4A 82         [24] 1064 	mov	dpl,_play_macro_rng_65536_55
      00228F 85 4B 83         [24] 1065 	mov	dph,(_play_macro_rng_65536_55 + 1)
      002292 85 4C F0         [24] 1066 	mov	b,(_play_macro_rng_65536_55 + 2)
      002295 E5 4D            [12] 1067 	mov	a,(_play_macro_rng_65536_55 + 3)
      002297 C0 07            [24] 1068 	push	ar7
      002299 12 2E 42         [24] 1069 	lcall	__modulong
      00229C AB 82            [24] 1070 	mov	r3,dpl
      00229E AC 83            [24] 1071 	mov	r4,dph
      0022A0 AD F0            [24] 1072 	mov	r5,b
      0022A2 FE               [12] 1073 	mov	r6,a
      0022A3 D0 07            [24] 1074 	pop	ar7
      0022A5 EB               [12] 1075 	mov	a,r3
      0022A6 4C               [12] 1076 	orl	a,r4
      0022A7 4D               [12] 1077 	orl	a,r5
      0022A8 4E               [12] 1078 	orl	a,r6
      0022A9 70 15            [24] 1079 	jnz	00139$
                                   1080 ;	../LED_Manager/led.c:202: if(direction & 0x10){
      0022AB E5 43            [12] 1081 	mov	a,_play_macro_direction_65536_55
      0022AD 30 E4 05         [24] 1082 	jnb	acc.4,00129$
                                   1083 ;	../LED_Manager/led.c:203: direction &= ~0x10;
      0022B0 53 43 EF         [24] 1084 	anl	_play_macro_direction_65536_55,#0xef
      0022B3 80 28            [24] 1085 	sjmp	00140$
      0022B5                       1086 00129$:
                                   1087 ;	../LED_Manager/led.c:205: direction |= 0x10;
      0022B5 AD 43            [24] 1088 	mov	r5,_play_macro_direction_65536_55
      0022B7 7E 00            [12] 1089 	mov	r6,#0x00
      0022B9 43 05 10         [24] 1090 	orl	ar5,#0x10
      0022BC 8D 43            [24] 1091 	mov	_play_macro_direction_65536_55,r5
      0022BE 80 1D            [24] 1092 	sjmp	00140$
      0022C0                       1093 00139$:
                                   1094 ;	../LED_Manager/led.c:208: if(direction & 0x10){
      0022C0 E5 43            [12] 1095 	mov	a,_play_macro_direction_65536_55
      0022C2 30 E4 0D         [24] 1096 	jnb	acc.4,00136$
                                   1097 ;	../LED_Manager/led.c:209: secondaryCount++;
      0022C5 05 42            [12] 1098 	inc	_play_macro_secondaryCount_65536_55
                                   1099 ;	../LED_Manager/led.c:211: if(secondaryCount >= 34){
      0022C7 74 DE            [12] 1100 	mov	a,#0x100 - 0x22
      0022C9 25 42            [12] 1101 	add	a,_play_macro_secondaryCount_65536_55
      0022CB 50 10            [24] 1102 	jnc	00140$
                                   1103 ;	../LED_Manager/led.c:212: secondaryCount = 34;
      0022CD 75 42 22         [24] 1104 	mov	_play_macro_secondaryCount_65536_55,#0x22
      0022D0 80 0B            [24] 1105 	sjmp	00140$
      0022D2                       1106 00136$:
                                   1107 ;	../LED_Manager/led.c:216: secondaryCount--;
      0022D2 15 42            [12] 1108 	dec	_play_macro_secondaryCount_65536_55
                                   1109 ;	../LED_Manager/led.c:218: if(secondaryCount > 36){
      0022D4 E5 42            [12] 1110 	mov	a,_play_macro_secondaryCount_65536_55
      0022D6 24 DB            [12] 1111 	add	a,#0xff - 0x24
      0022D8 50 03            [24] 1112 	jnc	00140$
                                   1113 ;	../LED_Manager/led.c:219: secondaryCount = 0;
      0022DA 75 42 00         [24] 1114 	mov	_play_macro_secondaryCount_65536_55,#0x00
      0022DD                       1115 00140$:
                                   1116 ;	../LED_Manager/led.c:224: if(macro == OPTION_MACRO_WATER_DMX){ //water
      0022DD EF               [12] 1117 	mov	a,r7
      0022DE 60 0C            [24] 1118 	jz	00147$
                                   1119 ;	../LED_Manager/led.c:225: set_leds(secondaryCount, secondaryCount, primaryCount);
      0022E0 85 42 57         [24] 1120 	mov	_set_leds_PARM_2,_play_macro_secondaryCount_65536_55
      0022E3 85 41 58         [24] 1121 	mov	_set_leds_PARM_3,_play_macro_primaryCount_65536_55
      0022E6 85 42 82         [24] 1122 	mov	dpl,_play_macro_secondaryCount_65536_55
      0022E9 02 24 ED         [24] 1123 	ljmp	_set_leds
      0022EC                       1124 00147$:
                                   1125 ;	../LED_Manager/led.c:226: } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
      0022EC 74 04            [12] 1126 	mov	a,#0x04
      0022EE B5 44 0C         [24] 1127 	cjne	a,_play_macro_PARM_2,00144$
                                   1128 ;	../LED_Manager/led.c:227: set_leds(secondaryCount, primaryCount, 0);
      0022F1 85 41 57         [24] 1129 	mov	_set_leds_PARM_2,_play_macro_primaryCount_65536_55
      0022F4 75 58 00         [24] 1130 	mov	_set_leds_PARM_3,#0x00
      0022F7 85 42 82         [24] 1131 	mov	dpl,_play_macro_secondaryCount_65536_55
      0022FA 02 24 ED         [24] 1132 	ljmp	_set_leds
      0022FD                       1133 00144$:
                                   1134 ;	../LED_Manager/led.c:228: } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
      0022FD 74 05            [12] 1135 	mov	a,#0x05
      0022FF B5 44 02         [24] 1136 	cjne	a,_play_macro_PARM_2,00375$
      002302 80 01            [24] 1137 	sjmp	00376$
      002304                       1138 00375$:
      002304 22               [24] 1139 	ret
      002305                       1140 00376$:
                                   1141 ;	../LED_Manager/led.c:229: set_leds(primaryCount, secondaryCount, primaryCount);
      002305 85 42 57         [24] 1142 	mov	_set_leds_PARM_2,_play_macro_secondaryCount_65536_55
      002308 85 41 58         [24] 1143 	mov	_set_leds_PARM_3,_play_macro_primaryCount_65536_55
      00230B 85 41 82         [24] 1144 	mov	dpl,_play_macro_primaryCount_65536_55
                                   1145 ;	../LED_Manager/led.c:233: break;
      00230E 02 24 ED         [24] 1146 	ljmp	_set_leds
                                   1147 ;	../LED_Manager/led.c:234: case OPTION_MACRO_STORM_DMX: //storm
      002311                       1148 00151$:
                                   1149 ;	../LED_Manager/led.c:235: if(changed){
      002311 E5 4E            [12] 1150 	mov	a,_play_macro_changed_65536_55
      002313 70 01            [24] 1151 	jnz	00377$
      002315 22               [24] 1152 	ret
      002316                       1153 00377$:
                                   1154 ;	../LED_Manager/led.c:236: if(!(rng % STORM_FREQ)){
      002316 75 76 59         [24] 1155 	mov	__modulong_PARM_2,#0x59
      002319 E4               [12] 1156 	clr	a
      00231A F5 77            [12] 1157 	mov	(__modulong_PARM_2 + 1),a
      00231C F5 78            [12] 1158 	mov	(__modulong_PARM_2 + 2),a
      00231E F5 79            [12] 1159 	mov	(__modulong_PARM_2 + 3),a
      002320 85 4A 82         [24] 1160 	mov	dpl,_play_macro_rng_65536_55
      002323 85 4B 83         [24] 1161 	mov	dph,(_play_macro_rng_65536_55 + 1)
      002326 85 4C F0         [24] 1162 	mov	b,(_play_macro_rng_65536_55 + 2)
      002329 E5 4D            [12] 1163 	mov	a,(_play_macro_rng_65536_55 + 3)
      00232B 12 2E 42         [24] 1164 	lcall	__modulong
      00232E AC 82            [24] 1165 	mov	r4,dpl
      002330 AD 83            [24] 1166 	mov	r5,dph
      002332 AE F0            [24] 1167 	mov	r6,b
      002334 FF               [12] 1168 	mov	r7,a
      002335 EC               [12] 1169 	mov	a,r4
      002336 4D               [12] 1170 	orl	a,r5
      002337 4E               [12] 1171 	orl	a,r6
      002338 4F               [12] 1172 	orl	a,r7
      002339 70 05            [24] 1173 	jnz	00161$
                                   1174 ;	../LED_Manager/led.c:237: primaryCount = 255;
      00233B 75 41 FF         [24] 1175 	mov	_play_macro_primaryCount_65536_55,#0xff
      00233E 80 27            [24] 1176 	sjmp	00162$
      002340                       1177 00161$:
                                   1178 ;	../LED_Manager/led.c:239: if(primaryCount > 200){
      002340 E5 41            [12] 1179 	mov	a,_play_macro_primaryCount_65536_55
      002342 24 37            [12] 1180 	add	a,#0xff - 0xc8
      002344 50 04            [24] 1181 	jnc	00158$
                                   1182 ;	../LED_Manager/led.c:240: primaryCount--;
      002346 15 41            [12] 1183 	dec	_play_macro_primaryCount_65536_55
      002348 80 1D            [24] 1184 	sjmp	00162$
      00234A                       1185 00158$:
                                   1186 ;	../LED_Manager/led.c:241: } else if(primaryCount > 130){
      00234A E5 41            [12] 1187 	mov	a,_play_macro_primaryCount_65536_55
      00234C 24 7D            [12] 1188 	add	a,#0xff - 0x82
      00234E 50 09            [24] 1189 	jnc	00155$
                                   1190 ;	../LED_Manager/led.c:242: primaryCount-=2;
      002350 E5 41            [12] 1191 	mov	a,_play_macro_primaryCount_65536_55
      002352 FF               [12] 1192 	mov	r7,a
      002353 24 FE            [12] 1193 	add	a,#0xfe
      002355 F5 41            [12] 1194 	mov	_play_macro_primaryCount_65536_55,a
      002357 80 0E            [24] 1195 	sjmp	00162$
      002359                       1196 00155$:
                                   1197 ;	../LED_Manager/led.c:244: primaryCount-=3;
      002359 E5 41            [12] 1198 	mov	a,_play_macro_primaryCount_65536_55
      00235B FF               [12] 1199 	mov	r7,a
      00235C 24 FD            [12] 1200 	add	a,#0xfd
                                   1201 ;	../LED_Manager/led.c:245: if(primaryCount > 200){
      00235E F5 41            [12] 1202 	mov  _play_macro_primaryCount_65536_55,a
      002360 24 37            [12] 1203 	add	a,#0xff - 0xc8
      002362 50 03            [24] 1204 	jnc	00162$
                                   1205 ;	../LED_Manager/led.c:246: primaryCount = 0;
      002364 75 41 00         [24] 1206 	mov	_play_macro_primaryCount_65536_55,#0x00
      002367                       1207 00162$:
                                   1208 ;	../LED_Manager/led.c:251: set_leds(primaryCount, primaryCount, primaryCount);
      002367 85 41 57         [24] 1209 	mov	_set_leds_PARM_2,_play_macro_primaryCount_65536_55
      00236A 85 41 58         [24] 1210 	mov	_set_leds_PARM_3,_play_macro_primaryCount_65536_55
      00236D 85 41 82         [24] 1211 	mov	dpl,_play_macro_primaryCount_65536_55
                                   1212 ;	../LED_Manager/led.c:254: break;
      002370 02 24 ED         [24] 1213 	ljmp	_set_leds
                                   1214 ;	../LED_Manager/led.c:255: case OPTION_MACRO_WHITE: //w
      002373                       1215 00165$:
                                   1216 ;	../LED_Manager/led.c:256: whiteout();
                                   1217 ;	../LED_Manager/led.c:257: break;
      002373 02 24 98         [24] 1218 	ljmp	_whiteout
                                   1219 ;	../LED_Manager/led.c:258: case 69:
      002376                       1220 00166$:
                                   1221 ;	../LED_Manager/led.c:259: if(tock < 32){
      002376 74 E0            [12] 1222 	mov	a,#0x100 - 0x20
      002378 25 40            [12] 1223 	add	a,_play_macro_tock_65536_55
      00237A 40 39            [24] 1224 	jc	00183$
                                   1225 ;	../LED_Manager/led.c:261: if(rng & (SH_B >> tock)){
      00237C 85 40 F0         [24] 1226 	mov	b,_play_macro_tock_65536_55
      00237F 05 F0            [12] 1227 	inc	b
      002381 7C 00            [12] 1228 	mov	r4,#0x00
      002383 7D 00            [12] 1229 	mov	r5,#0x00
      002385 7E 00            [12] 1230 	mov	r6,#0x00
      002387 7F 80            [12] 1231 	mov	r7,#0x80
      002389 80 0D            [24] 1232 	sjmp	00384$
      00238B                       1233 00383$:
      00238B C3               [12] 1234 	clr	c
      00238C EF               [12] 1235 	mov	a,r7
      00238D 13               [12] 1236 	rrc	a
      00238E FF               [12] 1237 	mov	r7,a
      00238F EE               [12] 1238 	mov	a,r6
      002390 13               [12] 1239 	rrc	a
      002391 FE               [12] 1240 	mov	r6,a
      002392 ED               [12] 1241 	mov	a,r5
      002393 13               [12] 1242 	rrc	a
      002394 FD               [12] 1243 	mov	r5,a
      002395 EC               [12] 1244 	mov	a,r4
      002396 13               [12] 1245 	rrc	a
      002397 FC               [12] 1246 	mov	r4,a
      002398                       1247 00384$:
      002398 D5 F0 F0         [24] 1248 	djnz	b,00383$
      00239B EC               [12] 1249 	mov	a,r4
      00239C 54 BA            [12] 1250 	anl	a,#0xba
      00239E 70 0F            [24] 1251 	jnz	00385$
      0023A0 ED               [12] 1252 	mov	a,r5
      0023A1 54 B8            [12] 1253 	anl	a,#0xb8
      0023A3 70 0A            [24] 1254 	jnz	00385$
      0023A5 EE               [12] 1255 	mov	a,r6
      0023A6 54 3B            [12] 1256 	anl	a,#0x3b
      0023A8 70 05            [24] 1257 	jnz	00385$
      0023AA EF               [12] 1258 	mov	a,r7
      0023AB 54 EE            [12] 1259 	anl	a,#0xee
      0023AD 60 03            [24] 1260 	jz	00168$
      0023AF                       1261 00385$:
                                   1262 ;	../LED_Manager/led.c:262: whiteout(); //White - Worth
      0023AF 02 24 98         [24] 1263 	ljmp	_whiteout
      0023B2                       1264 00168$:
                                   1265 ;	../LED_Manager/led.c:264: blackout();
      0023B2 02 24 A4         [24] 1266 	ljmp	_blackout
      0023B5                       1267 00183$:
                                   1268 ;	../LED_Manager/led.c:266: } else if(tock < 64){
      0023B5 74 C0            [12] 1269 	mov	a,#0x100 - 0x40
      0023B7 25 40            [12] 1270 	add	a,_play_macro_tock_65536_55
      0023B9 40 3D            [24] 1271 	jc	00180$
                                   1272 ;	../LED_Manager/led.c:268: if(rng & (SH_B >> (tock - 32))){
      0023BB E5 40            [12] 1273 	mov	a,_play_macro_tock_65536_55
      0023BD 24 E0            [12] 1274 	add	a,#0xe0
      0023BF FF               [12] 1275 	mov	r7,a
      0023C0 8F F0            [24] 1276 	mov	b,r7
      0023C2 05 F0            [12] 1277 	inc	b
      0023C4 7F 00            [12] 1278 	mov	r7,#0x00
      0023C6 7E 00            [12] 1279 	mov	r6,#0x00
      0023C8 7D 00            [12] 1280 	mov	r5,#0x00
      0023CA 7C 80            [12] 1281 	mov	r4,#0x80
      0023CC 80 0D            [24] 1282 	sjmp	00388$
      0023CE                       1283 00387$:
      0023CE C3               [12] 1284 	clr	c
      0023CF EC               [12] 1285 	mov	a,r4
      0023D0 13               [12] 1286 	rrc	a
      0023D1 FC               [12] 1287 	mov	r4,a
      0023D2 ED               [12] 1288 	mov	a,r5
      0023D3 13               [12] 1289 	rrc	a
      0023D4 FD               [12] 1290 	mov	r5,a
      0023D5 EE               [12] 1291 	mov	a,r6
      0023D6 13               [12] 1292 	rrc	a
      0023D7 FE               [12] 1293 	mov	r6,a
      0023D8 EF               [12] 1294 	mov	a,r7
      0023D9 13               [12] 1295 	rrc	a
      0023DA FF               [12] 1296 	mov	r7,a
      0023DB                       1297 00388$:
      0023DB D5 F0 F0         [24] 1298 	djnz	b,00387$
      0023DE EF               [12] 1299 	mov	a,r7
      0023DF 54 38            [12] 1300 	anl	a,#0x38
      0023E1 70 0F            [24] 1301 	jnz	00389$
      0023E3 EE               [12] 1302 	mov	a,r6
      0023E4 54 BA            [12] 1303 	anl	a,#0xba
      0023E6 70 0A            [24] 1304 	jnz	00389$
      0023E8 ED               [12] 1305 	mov	a,r5
      0023E9 54 B8            [12] 1306 	anl	a,#0xb8
      0023EB 70 05            [24] 1307 	jnz	00389$
      0023ED EC               [12] 1308 	mov	a,r4
      0023EE 54 28            [12] 1309 	anl	a,#0x28
      0023F0 60 03            [24] 1310 	jz	00171$
      0023F2                       1311 00389$:
                                   1312 ;	../LED_Manager/led.c:269: whiteout(); //White - Worth
      0023F2 02 24 98         [24] 1313 	ljmp	_whiteout
      0023F5                       1314 00171$:
                                   1315 ;	../LED_Manager/led.c:271: blackout();
      0023F5 02 24 A4         [24] 1316 	ljmp	_blackout
      0023F8                       1317 00180$:
                                   1318 ;	../LED_Manager/led.c:273: } else if(tock < 83){
      0023F8 74 AD            [12] 1319 	mov	a,#0x100 - 0x53
      0023FA 25 40            [12] 1320 	add	a,_play_macro_tock_65536_55
      0023FC 40 33            [24] 1321 	jc	00177$
                                   1322 ;	../LED_Manager/led.c:275: if(rng & (SH_B >> (tock - 64))){
      0023FE E5 40            [12] 1323 	mov	a,_play_macro_tock_65536_55
      002400 24 C0            [12] 1324 	add	a,#0xc0
      002402 FF               [12] 1325 	mov	r7,a
      002403 8F F0            [24] 1326 	mov	b,r7
      002405 05 F0            [12] 1327 	inc	b
      002407 7F 00            [12] 1328 	mov	r7,#0x00
      002409 7E 00            [12] 1329 	mov	r6,#0x00
      00240B 7D 00            [12] 1330 	mov	r5,#0x00
      00240D 7C 80            [12] 1331 	mov	r4,#0x80
      00240F 80 0D            [24] 1332 	sjmp	00392$
      002411                       1333 00391$:
      002411 C3               [12] 1334 	clr	c
      002412 EC               [12] 1335 	mov	a,r4
      002413 13               [12] 1336 	rrc	a
      002414 FC               [12] 1337 	mov	r4,a
      002415 ED               [12] 1338 	mov	a,r5
      002416 13               [12] 1339 	rrc	a
      002417 FD               [12] 1340 	mov	r5,a
      002418 EE               [12] 1341 	mov	a,r6
      002419 13               [12] 1342 	rrc	a
      00241A FE               [12] 1343 	mov	r6,a
      00241B EF               [12] 1344 	mov	a,r7
      00241C 13               [12] 1345 	rrc	a
      00241D FF               [12] 1346 	mov	r7,a
      00241E                       1347 00392$:
      00241E D5 F0 F0         [24] 1348 	djnz	b,00391$
      002421 ED               [12] 1349 	mov	a,r5
      002422 54 B8            [12] 1350 	anl	a,#0xb8
      002424 70 05            [24] 1351 	jnz	00393$
      002426 EC               [12] 1352 	mov	a,r4
      002427 54 EB            [12] 1353 	anl	a,#0xeb
      002429 60 03            [24] 1354 	jz	00174$
      00242B                       1355 00393$:
                                   1356 ;	../LED_Manager/led.c:276: whiteout();
      00242B 02 24 98         [24] 1357 	ljmp	_whiteout
      00242E                       1358 00174$:
                                   1359 ;	../LED_Manager/led.c:278: blackout();
      00242E 02 24 A4         [24] 1360 	ljmp	_blackout
      002431                       1361 00177$:
                                   1362 ;	../LED_Manager/led.c:281: tock = 0;
      002431 75 40 00         [24] 1363 	mov	_play_macro_tock_65536_55,#0x00
                                   1364 ;	../LED_Manager/led.c:283: break;
                                   1365 ;	../LED_Manager/led.c:284: default:
      002434 22               [24] 1366 	ret
      002435                       1367 00185$:
                                   1368 ;	../LED_Manager/led.c:285: blackout();
                                   1369 ;	../LED_Manager/led.c:286: }
                                   1370 ;	../LED_Manager/led.c:288: }
      002435 02 24 A4         [24] 1371 	ljmp	_blackout
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'color_wheel'
                                   1374 ;------------------------------------------------------------
                                   1375 ;color                     Allocated to registers r6 
                                   1376 ;------------------------------------------------------------
                                   1377 ;	../LED_Manager/led.c:290: void color_wheel(uint8_t color){
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function color_wheel
                                   1380 ;	-----------------------------------------
      002438                       1381 _color_wheel:
      002438 AF 82            [24] 1382 	mov	r7,dpl
                                   1383 ;	../LED_Manager/led.c:292: if(color < 85){
      00243A BF 55 00         [24] 1384 	cjne	r7,#0x55,00119$
      00243D                       1385 00119$:
      00243D 50 1A            [24] 1386 	jnc	00105$
                                   1387 ;	../LED_Manager/led.c:293: set_leds(color * 3, 255 - color * 3, 0);
      00243F EF               [12] 1388 	mov	a,r7
      002440 75 F0 03         [24] 1389 	mov	b,#0x03
      002443 A4               [48] 1390 	mul	ab
      002444 F5 82            [12] 1391 	mov	dpl,a
      002446 8F 06            [24] 1392 	mov	ar6,r7
      002448 EE               [12] 1393 	mov	a,r6
      002449 75 F0 03         [24] 1394 	mov	b,#0x03
      00244C A4               [48] 1395 	mul	ab
      00244D D3               [12] 1396 	setb	c
      00244E 94 FF            [12] 1397 	subb	a,#0xff
      002450 F4               [12] 1398 	cpl	a
      002451 F5 57            [12] 1399 	mov	_set_leds_PARM_2,a
      002453 75 58 00         [24] 1400 	mov	_set_leds_PARM_3,#0x00
      002456 02 24 ED         [24] 1401 	ljmp	_set_leds
      002459                       1402 00105$:
                                   1403 ;	../LED_Manager/led.c:294: } else if(color < 170){
      002459 BF AA 00         [24] 1404 	cjne	r7,#0xaa,00121$
      00245C                       1405 00121$:
      00245C 50 1F            [24] 1406 	jnc	00102$
                                   1407 ;	../LED_Manager/led.c:295: color -= 85;
      00245E 8F 06            [24] 1408 	mov	ar6,r7
      002460 EE               [12] 1409 	mov	a,r6
      002461 24 AB            [12] 1410 	add	a,#0xab
                                   1411 ;	../LED_Manager/led.c:296: set_leds(255 - color * 3, 0, color * 3);
      002463 FE               [12] 1412 	mov	r6,a
      002464 FD               [12] 1413 	mov	r5,a
      002465 ED               [12] 1414 	mov	a,r5
      002466 75 F0 03         [24] 1415 	mov	b,#0x03
      002469 A4               [48] 1416 	mul	ab
      00246A D3               [12] 1417 	setb	c
      00246B 94 FF            [12] 1418 	subb	a,#0xff
      00246D F4               [12] 1419 	cpl	a
      00246E F5 82            [12] 1420 	mov	dpl,a
      002470 EE               [12] 1421 	mov	a,r6
      002471 75 F0 03         [24] 1422 	mov	b,#0x03
      002474 A4               [48] 1423 	mul	ab
      002475 F5 58            [12] 1424 	mov	_set_leds_PARM_3,a
      002477 75 57 00         [24] 1425 	mov	_set_leds_PARM_2,#0x00
      00247A 02 24 ED         [24] 1426 	ljmp	_set_leds
      00247D                       1427 00102$:
                                   1428 ;	../LED_Manager/led.c:298: color -= 170;
      00247D EF               [12] 1429 	mov	a,r7
      00247E 24 56            [12] 1430 	add	a,#0x56
                                   1431 ;	../LED_Manager/led.c:299: set_leds(0, color * 3, 255 - color * 3);
      002480 FF               [12] 1432 	mov	r7,a
      002481 75 F0 03         [24] 1433 	mov	b,#0x03
      002484 A4               [48] 1434 	mul	ab
      002485 F5 57            [12] 1435 	mov	_set_leds_PARM_2,a
      002487 EF               [12] 1436 	mov	a,r7
      002488 75 F0 03         [24] 1437 	mov	b,#0x03
      00248B A4               [48] 1438 	mul	ab
      00248C D3               [12] 1439 	setb	c
      00248D 94 FF            [12] 1440 	subb	a,#0xff
      00248F F4               [12] 1441 	cpl	a
      002490 F5 58            [12] 1442 	mov	_set_leds_PARM_3,a
      002492 75 82 00         [24] 1443 	mov	dpl,#0x00
                                   1444 ;	../LED_Manager/led.c:301: }
      002495 02 24 ED         [24] 1445 	ljmp	_set_leds
                                   1446 ;------------------------------------------------------------
                                   1447 ;Allocation info for local variables in function 'whiteout'
                                   1448 ;------------------------------------------------------------
                                   1449 ;	../LED_Manager/led.c:303: void whiteout(){
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function whiteout
                                   1452 ;	-----------------------------------------
      002498                       1453 _whiteout:
                                   1454 ;	../LED_Manager/led.c:304: set_leds(0xFF, 0xFF, 0xFF);
      002498 75 57 FF         [24] 1455 	mov	_set_leds_PARM_2,#0xff
      00249B 75 58 FF         [24] 1456 	mov	_set_leds_PARM_3,#0xff
      00249E 75 82 FF         [24] 1457 	mov	dpl,#0xff
                                   1458 ;	../LED_Manager/led.c:305: }
      0024A1 02 24 ED         [24] 1459 	ljmp	_set_leds
                                   1460 ;------------------------------------------------------------
                                   1461 ;Allocation info for local variables in function 'blackout'
                                   1462 ;------------------------------------------------------------
                                   1463 ;	../LED_Manager/led.c:307: void blackout(){
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function blackout
                                   1466 ;	-----------------------------------------
      0024A4                       1467 _blackout:
                                   1468 ;	../LED_Manager/led.c:308: set_leds(0,0,0);
      0024A4 75 57 00         [24] 1469 	mov	_set_leds_PARM_2,#0x00
      0024A7 75 58 00         [24] 1470 	mov	_set_leds_PARM_3,#0x00
      0024AA 75 82 00         [24] 1471 	mov	dpl,#0x00
                                   1472 ;	../LED_Manager/led.c:309: }
      0024AD 02 24 ED         [24] 1473 	ljmp	_set_leds
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
      0024B0                       1484 _rngU32:
                                   1485 ;	../LED_Manager/led.c:316: present = past + present;
      0024B0 E5 53            [12] 1486 	mov	a,_rngU32_present_65536_106
      0024B2 25 4F            [12] 1487 	add	a,_rngU32_past_65536_106
      0024B4 F5 53            [12] 1488 	mov	_rngU32_present_65536_106,a
      0024B6 E5 54            [12] 1489 	mov	a,(_rngU32_present_65536_106 + 1)
      0024B8 35 50            [12] 1490 	addc	a,(_rngU32_past_65536_106 + 1)
      0024BA F5 54            [12] 1491 	mov	(_rngU32_present_65536_106 + 1),a
      0024BC E5 55            [12] 1492 	mov	a,(_rngU32_present_65536_106 + 2)
      0024BE 35 51            [12] 1493 	addc	a,(_rngU32_past_65536_106 + 2)
      0024C0 F5 55            [12] 1494 	mov	(_rngU32_present_65536_106 + 2),a
      0024C2 E5 56            [12] 1495 	mov	a,(_rngU32_present_65536_106 + 3)
      0024C4 35 52            [12] 1496 	addc	a,(_rngU32_past_65536_106 + 3)
      0024C6 F5 56            [12] 1497 	mov	(_rngU32_present_65536_106 + 3),a
                                   1498 ;	../LED_Manager/led.c:317: past = present - past;
      0024C8 E5 53            [12] 1499 	mov	a,_rngU32_present_65536_106
      0024CA C3               [12] 1500 	clr	c
      0024CB 95 4F            [12] 1501 	subb	a,_rngU32_past_65536_106
      0024CD F5 4F            [12] 1502 	mov	_rngU32_past_65536_106,a
      0024CF E5 54            [12] 1503 	mov	a,(_rngU32_present_65536_106 + 1)
      0024D1 95 50            [12] 1504 	subb	a,(_rngU32_past_65536_106 + 1)
      0024D3 F5 50            [12] 1505 	mov	(_rngU32_past_65536_106 + 1),a
      0024D5 E5 55            [12] 1506 	mov	a,(_rngU32_present_65536_106 + 2)
      0024D7 95 51            [12] 1507 	subb	a,(_rngU32_past_65536_106 + 2)
      0024D9 F5 51            [12] 1508 	mov	(_rngU32_past_65536_106 + 2),a
      0024DB E5 56            [12] 1509 	mov	a,(_rngU32_present_65536_106 + 3)
      0024DD 95 52            [12] 1510 	subb	a,(_rngU32_past_65536_106 + 3)
      0024DF F5 52            [12] 1511 	mov	(_rngU32_past_65536_106 + 3),a
                                   1512 ;	../LED_Manager/led.c:319: return present;
      0024E1 85 53 82         [24] 1513 	mov	dpl,_rngU32_present_65536_106
      0024E4 85 54 83         [24] 1514 	mov	dph,(_rngU32_present_65536_106 + 1)
      0024E7 85 55 F0         [24] 1515 	mov	b,(_rngU32_present_65536_106 + 2)
      0024EA E5 56            [12] 1516 	mov	a,(_rngU32_present_65536_106 + 3)
                                   1517 ;	../LED_Manager/led.c:320: }
      0024EC 22               [24] 1518 	ret
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
      0024ED                       1531 _set_leds:
      0024ED AF 82            [24] 1532 	mov	r7,dpl
                                   1533 ;	../LED_Manager/led.c:323: uint8_t dimmer = 0xFF;
      0024EF 7E FF            [12] 1534 	mov	r6,#0xff
                                   1535 ;	../LED_Manager/led.c:325: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0024F1 75 82 10         [24] 1536 	mov	dpl,#0x10
      0024F4 C0 07            [24] 1537 	push	ar7
      0024F6 C0 06            [24] 1538 	push	ar6
      0024F8 12 28 C8         [24] 1539 	lcall	_get_runtime_data
      0024FB E5 82            [12] 1540 	mov	a,dpl
      0024FD D0 06            [24] 1541 	pop	ar6
      0024FF D0 07            [24] 1542 	pop	ar7
      002501 70 14            [24] 1543 	jnz	00104$
                                   1544 ;	../LED_Manager/led.c:326: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11){
      002503 75 82 0E         [24] 1545 	mov	dpl,#0x0e
      002506 C0 07            [24] 1546 	push	ar7
      002508 C0 06            [24] 1547 	push	ar6
      00250A 12 28 C8         [24] 1548 	lcall	_get_runtime_data
      00250D E5 82            [12] 1549 	mov	a,dpl
      00250F D0 06            [24] 1550 	pop	ar6
      002511 D0 07            [24] 1551 	pop	ar7
      002513 70 02            [24] 1552 	jnz	00104$
                                   1553 ;	../LED_Manager/led.c:327: dimmer = get_dmx_value(DMX_M11_DIMMER_INDEX);
      002515 AE 30            [24] 1554 	mov	r6,(_DMX + 0x0003)
      002517                       1555 00104$:
                                   1556 ;	../LED_Manager/led.c:331: if(dimmer == 0xFF){
      002517 BE FF 09         [24] 1557 	cjne	r6,#0xff,00106$
                                   1558 ;	../LED_Manager/led.c:332: PWMDATA11H = red;
      00251A 8F BD            [24] 1559 	mov	_PWMDATA11H,r7
                                   1560 ;	../LED_Manager/led.c:333: PWMDATA17H = green;
      00251C 85 57 AD         [24] 1561 	mov	_PWMDATA17H,_set_leds_PARM_2
                                   1562 ;	../LED_Manager/led.c:334: PWMDATA14H = blue;
      00251F 85 58 B5         [24] 1563 	mov	_PWMDATA14H,_set_leds_PARM_3
      002522 22               [24] 1564 	ret
      002523                       1565 00106$:
                                   1566 ;	../LED_Manager/led.c:336: PWMDATA11H = ((uint8_t)((((uint16_t) red) * ((uint16_t)dimmer)) >> 8));
      002523 7D 00            [12] 1567 	mov	r5,#0x00
      002525 7C 00            [12] 1568 	mov	r4,#0x00
      002527 8E 76            [24] 1569 	mov	__mulint_PARM_2,r6
      002529 8C 77            [24] 1570 	mov	(__mulint_PARM_2 + 1),r4
      00252B 8F 82            [24] 1571 	mov	dpl,r7
      00252D 8D 83            [24] 1572 	mov	dph,r5
      00252F C0 06            [24] 1573 	push	ar6
      002531 C0 04            [24] 1574 	push	ar4
      002533 12 2E C5         [24] 1575 	lcall	__mulint
      002536 AF 83            [24] 1576 	mov	r7,dph
      002538 D0 04            [24] 1577 	pop	ar4
      00253A D0 06            [24] 1578 	pop	ar6
      00253C 8F BD            [24] 1579 	mov	_PWMDATA11H,r7
                                   1580 ;	../LED_Manager/led.c:337: PWMDATA17H = ((uint8_t)((((uint16_t) green) * ((uint16_t)dimmer)) >> 8));
      00253E AD 57            [24] 1581 	mov	r5,_set_leds_PARM_2
      002540 7F 00            [12] 1582 	mov	r7,#0x00
      002542 8E 76            [24] 1583 	mov	__mulint_PARM_2,r6
      002544 8C 77            [24] 1584 	mov	(__mulint_PARM_2 + 1),r4
      002546 8D 82            [24] 1585 	mov	dpl,r5
      002548 8F 83            [24] 1586 	mov	dph,r7
      00254A C0 06            [24] 1587 	push	ar6
      00254C C0 04            [24] 1588 	push	ar4
      00254E 12 2E C5         [24] 1589 	lcall	__mulint
      002551 AF 83            [24] 1590 	mov	r7,dph
      002553 D0 04            [24] 1591 	pop	ar4
      002555 D0 06            [24] 1592 	pop	ar6
      002557 8F AD            [24] 1593 	mov	_PWMDATA17H,r7
                                   1594 ;	../LED_Manager/led.c:338: PWMDATA14H = ((uint8_t)((((uint16_t) blue) * ((uint16_t)dimmer)) >> 8));
      002559 AD 58            [24] 1595 	mov	r5,_set_leds_PARM_3
      00255B 7F 00            [12] 1596 	mov	r7,#0x00
      00255D 8E 76            [24] 1597 	mov	__mulint_PARM_2,r6
      00255F 8C 77            [24] 1598 	mov	(__mulint_PARM_2 + 1),r4
      002561 8D 82            [24] 1599 	mov	dpl,r5
      002563 8F 83            [24] 1600 	mov	dph,r7
      002565 12 2E C5         [24] 1601 	lcall	__mulint
      002568 AF 83            [24] 1602 	mov	r7,dph
      00256A 8F B5            [24] 1603 	mov	_PWMDATA14H,r7
                                   1604 ;	../LED_Manager/led.c:340: }
      00256C 22               [24] 1605 	ret
                                   1606 	.area CSEG    (CODE)
                                   1607 	.area CONST   (CODE)
                                   1608 	.area XINIT   (CODE)
                                   1609 	.area CABS    (ABS,CODE)
