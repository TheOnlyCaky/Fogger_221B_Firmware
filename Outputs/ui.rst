                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module ui
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _exe_command
                                     12 	.globl _write_char
                                     13 	.globl _write_number
                                     14 	.globl _write_string
                                     15 	.globl _get_button_action
                                     16 	.globl _power_heater
                                     17 	.globl _power_pump
                                     18 	.globl _tick_fogger
                                     19 	.globl _set_dmx_address
                                     20 	.globl _get_dmx_address
                                     21 	.globl _set_runtime_data
                                     22 	.globl _get_runtime_data
                                     23 	.globl _save_load_settings
                                     24 	.globl _CPRL2
                                     25 	.globl _CT2
                                     26 	.globl _TR2
                                     27 	.globl _EXEN2
                                     28 	.globl _TCLK
                                     29 	.globl _RCLK
                                     30 	.globl _REN
                                     31 	.globl _SM2
                                     32 	.globl _SM1
                                     33 	.globl _SM0
                                     34 	.globl _RCK
                                     35 	.globl _SER
                                     36 	.globl _SCK
                                     37 	.globl _RI
                                     38 	.globl _ES
                                     39 	.globl _ET0
                                     40 	.globl _EA
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _P1_7
                                     58 	.globl _P1_6
                                     59 	.globl _P1_5
                                     60 	.globl _P1_4
                                     61 	.globl _P1_3
                                     62 	.globl _P1_2
                                     63 	.globl _P1_1
                                     64 	.globl _P1_0
                                     65 	.globl _P0_7
                                     66 	.globl _P0_6
                                     67 	.globl _P0_5
                                     68 	.globl _P0_4
                                     69 	.globl _P0_3
                                     70 	.globl _P0_2
                                     71 	.globl _P0_1
                                     72 	.globl _P0_0
                                     73 	.globl _IAP_ADRH
                                     74 	.globl _IAP_ADRL
                                     75 	.globl _IAPEN
                                     76 	.globl _TH0
                                     77 	.globl _TL0
                                     78 	.globl _CKCON
                                     79 	.globl _TMOD
                                     80 	.globl _TCON
                                     81 	.globl _PWMDATA17L
                                     82 	.globl _PWMDATA17H
                                     83 	.globl _PWMDATA14L
                                     84 	.globl _PWMDATA14H
                                     85 	.globl _PWMDATA11L
                                     86 	.globl _PWMDATA11H
                                     87 	.globl _PWM_EA2
                                     88 	.globl _PWM_EA1
                                     89 	.globl _SBUF
                                     90 	.globl _TL3
                                     91 	.globl _TH3
                                     92 	.globl _T2CON
                                     93 	.globl _RCAP2H
                                     94 	.globl _RCAP2L
                                     95 	.globl _SCON
                                     96 	.globl _P1_OPT
                                     97 	.globl _ADCVAL2
                                     98 	.globl _ADCVAL1
                                     99 	.globl _ADCSEL
                                    100 	.globl _EXIF
                                    101 	.globl _EIE
                                    102 	.globl _IE
                                    103 	.globl _P3
                                    104 	.globl _P2
                                    105 	.globl _P1
                                    106 	.globl _P0
                                    107 	.globl _PCLKSEL
                                    108 	.globl _CHIPCON
                                    109 	.globl _tick_ui
                                    110 	.globl _idlePage
                                    111 	.globl _fogLevelPage
                                    112 	.globl _fogIntervalPage
                                    113 	.globl _fogDurationPage
                                    114 	.globl _macroPage
                                    115 	.globl _macroSpeedPage
                                    116 	.globl _colorPage
                                    117 	.globl _remotePage
                                    118 	.globl _saveLoadPage
                                    119 	.globl _dmxAddressPage
                                    120 	.globl _dmxChannelPage
                                    121 	.globl _set_ui_state
                                    122 	.globl _get_ui_state
                                    123 	.globl _getString
                                    124 ;--------------------------------------------------------
                                    125 ; special function registers
                                    126 ;--------------------------------------------------------
                                    127 	.area RSEG    (ABS,DATA)
      000000                        128 	.org 0x0000
                           0000BF   129 _CHIPCON	=	0x00bf
                           0000B7   130 _PCLKSEL	=	0x00b7
                           000080   131 _P0	=	0x0080
                           000090   132 _P1	=	0x0090
                           0000A0   133 _P2	=	0x00a0
                           0000B0   134 _P3	=	0x00b0
                           0000A8   135 _IE	=	0x00a8
                           0000E8   136 _EIE	=	0x00e8
                           000091   137 _EXIF	=	0x0091
                           0000DA   138 _ADCSEL	=	0x00da
                           0000DB   139 _ADCVAL1	=	0x00db
                           0000DC   140 _ADCVAL2	=	0x00dc
                           0000D9   141 _P1_OPT	=	0x00d9
                           000098   142 _SCON	=	0x0098
                           0000CA   143 _RCAP2L	=	0x00ca
                           0000CB   144 _RCAP2H	=	0x00cb
                           0000C8   145 _T2CON	=	0x00c8
                           00009B   146 _TH3	=	0x009b
                           00009A   147 _TL3	=	0x009a
                           000099   148 _SBUF	=	0x0099
                           0000D3   149 _PWM_EA1	=	0x00d3
                           0000D4   150 _PWM_EA2	=	0x00d4
                           0000BD   151 _PWMDATA11H	=	0x00bd
                           0000BE   152 _PWMDATA11L	=	0x00be
                           0000B5   153 _PWMDATA14H	=	0x00b5
                           0000B6   154 _PWMDATA14L	=	0x00b6
                           0000AD   155 _PWMDATA17H	=	0x00ad
                           0000AE   156 _PWMDATA17L	=	0x00ae
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008E   159 _CKCON	=	0x008e
                           00008A   160 _TL0	=	0x008a
                           00008C   161 _TH0	=	0x008c
                           0000E4   162 _IAPEN	=	0x00e4
                           0000E5   163 _IAP_ADRL	=	0x00e5
                           0000E6   164 _IAP_ADRH	=	0x00e6
                                    165 ;--------------------------------------------------------
                                    166 ; special function bits
                                    167 ;--------------------------------------------------------
                                    168 	.area RSEG    (ABS,DATA)
      000000                        169 	.org 0x0000
                           000080   170 _P0_0	=	0x0080
                           000081   171 _P0_1	=	0x0081
                           000082   172 _P0_2	=	0x0082
                           000083   173 _P0_3	=	0x0083
                           000084   174 _P0_4	=	0x0084
                           000085   175 _P0_5	=	0x0085
                           000086   176 _P0_6	=	0x0086
                           000087   177 _P0_7	=	0x0087
                           000090   178 _P1_0	=	0x0090
                           000091   179 _P1_1	=	0x0091
                           000092   180 _P1_2	=	0x0092
                           000093   181 _P1_3	=	0x0093
                           000094   182 _P1_4	=	0x0094
                           000095   183 _P1_5	=	0x0095
                           000096   184 _P1_6	=	0x0096
                           000097   185 _P1_7	=	0x0097
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000AF   202 _EA	=	0x00af
                           0000A9   203 _ET0	=	0x00a9
                           0000AC   204 _ES	=	0x00ac
                           000098   205 _RI	=	0x0098
                           000093   206 _SCK	=	0x0093
                           000095   207 _SER	=	0x0095
                           000092   208 _RCK	=	0x0092
                           00009F   209 _SM0	=	0x009f
                           00009E   210 _SM1	=	0x009e
                           00009D   211 _SM2	=	0x009d
                           00009C   212 _REN	=	0x009c
                           0000CD   213 _RCLK	=	0x00cd
                           0000CC   214 _TCLK	=	0x00cc
                           0000CB   215 _EXEN2	=	0x00cb
                           0000CA   216 _TR2	=	0x00ca
                           0000C9   217 _CT2	=	0x00c9
                           0000C8   218 _CPRL2	=	0x00c8
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _State:
      000008                        229 	.ds 1
      000009                        230 _Changed:
      000009                        231 	.ds 1
      00000A                        232 _changed:
      00000A                        233 	.ds 1
      00000B                        234 _tick_ui_bursting_65536_37:
      00000B                        235 	.ds 1
      00000C                        236 _idlePage_timer_65536_59:
      00000C                        237 	.ds 1
      00000D                        238 _idlePage_intervalOrDuration_65536_59:
      00000D                        239 	.ds 1
      00000E                        240 _idlePage_empty_65536_59:
      00000E                        241 	.ds 1
      00000F                        242 _idlePage_tock_65536_59:
      00000F                        243 	.ds 1
      000010                        244 _idlePage_iconChange_65536_59:
      000010                        245 	.ds 1
      000011                        246 _idlePage_playing_65536_59:
      000011                        247 	.ds 1
      000012                        248 _saveLoadPage_slot_65536_142:
      000012                        249 	.ds 1
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
                                    300 ;Allocation info for local variables in function 'tick_ui'
                                    301 ;------------------------------------------------------------
                                    302 ;action                    Allocated to registers r7 
                                    303 ;ss                        Allocated to registers r6 
                                    304 ;delay                     Allocated to stack - _bp +1
                                    305 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    306 ;------------------------------------------------------------
                                    307 ;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
      0000A2 75 0B 00         [24]  308 	mov	_tick_ui_bursting_65536_37,#0x00
                                    309 ;------------------------------------------------------------
                                    310 ;Allocation info for local variables in function 'idlePage'
                                    311 ;------------------------------------------------------------
                                    312 ;temp                      Allocated to registers r7 
                                    313 ;timer                     Allocated with name '_idlePage_timer_65536_59'
                                    314 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
                                    315 ;empty                     Allocated with name '_idlePage_empty_65536_59'
                                    316 ;tock                      Allocated with name '_idlePage_tock_65536_59'
                                    317 ;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
                                    318 ;playing                   Allocated with name '_idlePage_playing_65536_59'
                                    319 ;------------------------------------------------------------
                                    320 ;	../UI_Manager/ui.c:210: static uint8_t timer = 0;
      0000A5 75 0C 00         [24]  321 	mov	_idlePage_timer_65536_59,#0x00
                                    322 ;	../UI_Manager/ui.c:212: static uint8_t empty = 0x00;
      0000A8 75 0E 00         [24]  323 	mov	_idlePage_empty_65536_59,#0x00
                                    324 ;	../UI_Manager/ui.c:213: static uint8_t tock = 0x00;
      0000AB 75 0F 00         [24]  325 	mov	_idlePage_tock_65536_59,#0x00
                                    326 ;	../UI_Manager/ui.c:214: static uint8_t iconChange = 0x00;
      0000AE 75 10 00         [24]  327 	mov	_idlePage_iconChange_65536_59,#0x00
                                    328 ;	../UI_Manager/ui.c:215: static uint8_t playing = PAUSE;
      0000B1 75 11 00         [24]  329 	mov	_idlePage_playing_65536_59,#0x00
                                    330 ;------------------------------------------------------------
                                    331 ;Allocation info for local variables in function 'saveLoadPage'
                                    332 ;------------------------------------------------------------
                                    333 ;action                    Allocated to registers r7 
                                    334 ;slot                      Allocated with name '_saveLoadPage_slot_65536_142'
                                    335 ;------------------------------------------------------------
                                    336 ;	../UI_Manager/ui.c:747: static uint8_t slot = 0;
      0000B4 75 12 00         [24]  337 	mov	_saveLoadPage_slot_65536_142,#0x00
                                    338 ;	../UI_Manager/ui.c:12: static volatile uint8_t State = WELCOME_STATE;
      0000B7 75 08 45         [24]  339 	mov	_State,#0x45
                                    340 ;	../UI_Manager/ui.c:13: static volatile uint8_t Changed = CHANGE_SCREEN_X;
      0000BA 75 09 FF         [24]  341 	mov	_Changed,#0xff
                                    342 ;	../UI_Manager/ui.c:14: static volatile uint8_t changed = CHANGE_SCREEN_X;
      0000BD 75 0A FF         [24]  343 	mov	_changed,#0xff
                                    344 ;--------------------------------------------------------
                                    345 ; Home
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area HOME    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; code
                                    351 ;--------------------------------------------------------
                                    352 	.area CSEG    (CODE)
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'tick_ui'
                                    355 ;------------------------------------------------------------
                                    356 ;action                    Allocated to registers r7 
                                    357 ;ss                        Allocated to registers r6 
                                    358 ;delay                     Allocated to stack - _bp +1
                                    359 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    360 ;------------------------------------------------------------
                                    361 ;	../UI_Manager/ui.c:16: void tick_ui(void){
                                    362 ;	-----------------------------------------
                                    363 ;	 function tick_ui
                                    364 ;	-----------------------------------------
      00052A                        365 _tick_ui:
                           000007   366 	ar7 = 0x07
                           000006   367 	ar6 = 0x06
                           000005   368 	ar5 = 0x05
                           000004   369 	ar4 = 0x04
                           000003   370 	ar3 = 0x03
                           000002   371 	ar2 = 0x02
                           000001   372 	ar1 = 0x01
                           000000   373 	ar0 = 0x00
      00052A C0 1A            [24]  374 	push	_bp
      00052C E5 81            [12]  375 	mov	a,sp
      00052E F5 1A            [12]  376 	mov	_bp,a
      000530 24 04            [12]  377 	add	a,#0x04
      000532 F5 81            [12]  378 	mov	sp,a
                                    379 ;	../UI_Manager/ui.c:18: uint8_t action = get_button_action();
      000534 12 1A 56         [24]  380 	lcall	_get_button_action
      000537 AF 82            [24]  381 	mov	r7,dpl
                                    382 ;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_MAN_BURST){
      000539 E4               [12]  383 	clr	a
      00053A BF 05 01         [24]  384 	cjne	r7,#0x05,00416$
      00053D 04               [12]  385 	inc	a
      00053E                        386 00416$:
      00053E FE               [12]  387 	mov	r6,a
      00053F 70 03            [24]  388 	jnz	00103$
      000541 BF 0A 21         [24]  389 	cjne	r7,#0x0a,00104$
      000544                        390 00103$:
                                    391 ;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
      000544 EE               [12]  392 	mov	a,r6
      000545 60 06            [24]  393 	jz	00174$
      000547 7D 02            [12]  394 	mov	r5,#0x02
      000549 7E 00            [12]  395 	mov	r6,#0x00
      00054B 80 04            [24]  396 	sjmp	00175$
      00054D                        397 00174$:
      00054D 7D 03            [12]  398 	mov	r5,#0x03
      00054F 7E 00            [12]  399 	mov	r6,#0x00
      000551                        400 00175$:
      000551 8D 82            [24]  401 	mov	dpl,r5
      000553 C0 07            [24]  402 	push	ar7
      000555 12 35 2B         [24]  403 	lcall	_power_pump
      000558 D0 07            [24]  404 	pop	ar7
                                    405 ;	../UI_Manager/ui.c:26: bursting |= BURSTING;
      00055A AD 0B            [24]  406 	mov	r5,_tick_ui_bursting_65536_37
      00055C 7E 00            [12]  407 	mov	r6,#0x00
      00055E 43 05 80         [24]  408 	orl	ar5,#0x80
      000561 8D 0B            [24]  409 	mov	_tick_ui_bursting_65536_37,r5
      000563 80 12            [24]  410 	sjmp	00105$
      000565                        411 00104$:
                                    412 ;	../UI_Manager/ui.c:27: } else if(bursting & BURSTING){
      000565 E5 0B            [12]  413 	mov	a,_tick_ui_bursting_65536_37
      000567 30 E7 0D         [24]  414 	jnb	acc.7,00105$
                                    415 ;	../UI_Manager/ui.c:28: power_pump(PUMP_OFF);
      00056A 75 82 00         [24]  416 	mov	dpl,#0x00
      00056D C0 07            [24]  417 	push	ar7
      00056F 12 35 2B         [24]  418 	lcall	_power_pump
      000572 D0 07            [24]  419 	pop	ar7
                                    420 ;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
      000574 53 0B 7F         [24]  421 	anl	_tick_ui_bursting_65536_37,#0x7f
      000577                        422 00105$:
                                    423 ;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
      000577 BF 08 38         [24]  424 	cjne	r7,#0x08,00108$
                                    425 ;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
      00057A 75 82 10         [24]  426 	mov	dpl,#0x10
      00057D C0 07            [24]  427 	push	ar7
      00057F 12 2F 00         [24]  428 	lcall	_get_runtime_data
      000582 AE 82            [24]  429 	mov	r6,dpl
      000584 D0 07            [24]  430 	pop	ar7
      000586 BE 80 06         [24]  431 	cjne	r6,#0x80,00176$
      000589 7D 00            [12]  432 	mov	r5,#0x00
      00058B 7E 00            [12]  433 	mov	r6,#0x00
      00058D 80 04            [24]  434 	sjmp	00177$
      00058F                        435 00176$:
      00058F 7D 80            [12]  436 	mov	r5,#0x80
      000591 7E 00            [12]  437 	mov	r6,#0x00
      000593                        438 00177$:
      000593 C0 07            [24]  439 	push	ar7
      000595 C0 05            [24]  440 	push	ar5
      000597 E4               [12]  441 	clr	a
      000598 C0 E0            [24]  442 	push	acc
      00059A 75 82 10         [24]  443 	mov	dpl,#0x10
      00059D 12 2F C0         [24]  444 	lcall	_set_runtime_data
      0005A0 15 81            [12]  445 	dec	sp
      0005A2 15 81            [12]  446 	dec	sp
                                    447 ;	../UI_Manager/ui.c:36: State = IDLE_STATE;
      0005A4 75 08 00         [24]  448 	mov	_State,#0x00
                                    449 ;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
      0005A7 75 09 FF         [24]  450 	mov	_Changed,#0xff
                                    451 ;	../UI_Manager/ui.c:39: set_playing(RESET);
      0005AA 75 4E 02         [24]  452 	mov	_Playing,#0x02
                                    453 ;	../UI_Manager/ui.c:41: tick_fogger();
      0005AD 12 30 C6         [24]  454 	lcall	_tick_fogger
      0005B0 D0 07            [24]  455 	pop	ar7
      0005B2                        456 00108$:
                                    457 ;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER_HOLD){
      0005B2 BF C8 13         [24]  458 	cjne	r7,#0xc8,00113$
                                    459 ;	../UI_Manager/ui.c:47: if(get_playing() == PLAY){
      0005B5 74 01            [12]  460 	mov	a,#0x01
      0005B7 B5 4E 05         [24]  461 	cjne	a,_Playing,00110$
                                    462 ;	../UI_Manager/ui.c:48: set_playing(RESET);
      0005BA 75 4E 02         [24]  463 	mov	_Playing,#0x02
      0005BD 80 03            [24]  464 	sjmp	00111$
      0005BF                        465 00110$:
                                    466 ;	../UI_Manager/ui.c:50: set_playing(PLAY);
      0005BF 75 4E 01         [24]  467 	mov	_Playing,#0x01
      0005C2                        468 00111$:
                                    469 ;	../UI_Manager/ui.c:53: tick_fogger();
      0005C2 12 30 C6         [24]  470 	lcall	_tick_fogger
                                    471 ;	../UI_Manager/ui.c:55: return;
      0005C5 02 09 5A         [24]  472 	ljmp	00172$
      0005C8                        473 00113$:
                                    474 ;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
      0005C8 BF 09 02         [24]  475 	cjne	r7,#0x09,00431$
      0005CB 80 03            [24]  476 	sjmp	00432$
      0005CD                        477 00431$:
      0005CD 02 06 86         [24]  478 	ljmp	00121$
      0005D0                        479 00432$:
                                    480 ;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
      0005D0 75 82 0F         [24]  481 	mov	dpl,#0x0f
      0005D3 12 2F 00         [24]  482 	lcall	_get_runtime_data
      0005D6 E5 82            [12]  483 	mov	a,dpl
      0005D8 F4               [12]  484 	cpl	a
      0005D9 FE               [12]  485 	mov	r6,a
      0005DA C0 06            [24]  486 	push	ar6
      0005DC E4               [12]  487 	clr	a
      0005DD C0 E0            [24]  488 	push	acc
      0005DF 75 82 0F         [24]  489 	mov	dpl,#0x0f
      0005E2 12 2F C0         [24]  490 	lcall	_set_runtime_data
      0005E5 15 81            [12]  491 	dec	sp
      0005E7 15 81            [12]  492 	dec	sp
                                    493 ;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
      0005E9 90 80 00         [24]  494 	mov	dptr,#0x8000
      0005EC 12 1F E6         [24]  495 	lcall	_exe_command
                                    496 ;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
      0005EF 75 82 0F         [24]  497 	mov	dpl,#0x0f
      0005F2 12 2F 00         [24]  498 	lcall	_get_runtime_data
      0005F5 E5 82            [12]  499 	mov	a,dpl
      0005F7 60 1C            [24]  500 	jz	00115$
                                    501 ;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
      0005F9 E4               [12]  502 	clr	a
      0005FA C0 E0            [24]  503 	push	acc
      0005FC C0 E0            [24]  504 	push	acc
      0005FE C0 E0            [24]  505 	push	acc
      000600 74 0F            [12]  506 	mov	a,#0x0f
      000602 C0 E0            [24]  507 	push	acc
      000604 90 36 EA         [24]  508 	mov	dptr,#___str_0
      000607 75 F0 80         [24]  509 	mov	b,#0x80
      00060A 12 1C AB         [24]  510 	lcall	_write_string
      00060D E5 81            [12]  511 	mov	a,sp
      00060F 24 FC            [12]  512 	add	a,#0xfc
      000611 F5 81            [12]  513 	mov	sp,a
      000613 80 1A            [24]  514 	sjmp	00116$
      000615                        515 00115$:
                                    516 ;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
      000615 E4               [12]  517 	clr	a
      000616 C0 E0            [24]  518 	push	acc
      000618 C0 E0            [24]  519 	push	acc
      00061A C0 E0            [24]  520 	push	acc
      00061C 74 0F            [12]  521 	mov	a,#0x0f
      00061E C0 E0            [24]  522 	push	acc
      000620 90 36 FA         [24]  523 	mov	dptr,#___str_1
      000623 75 F0 80         [24]  524 	mov	b,#0x80
      000626 12 1C AB         [24]  525 	lcall	_write_string
      000629 E5 81            [12]  526 	mov	a,sp
      00062B 24 FC            [12]  527 	add	a,#0xfc
      00062D F5 81            [12]  528 	mov	sp,a
      00062F                        529 00116$:
                                    530 ;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
      00062F E4               [12]  531 	clr	a
      000630 C0 E0            [24]  532 	push	acc
      000632 04               [12]  533 	inc	a
      000633 C0 E0            [24]  534 	push	acc
      000635 E4               [12]  535 	clr	a
      000636 C0 E0            [24]  536 	push	acc
      000638 74 0F            [12]  537 	mov	a,#0x0f
      00063A C0 E0            [24]  538 	push	acc
      00063C 90 37 09         [24]  539 	mov	dptr,#___str_2
      00063F 75 F0 80         [24]  540 	mov	b,#0x80
      000642 12 1C AB         [24]  541 	lcall	_write_string
      000645 E5 81            [12]  542 	mov	a,sp
      000647 24 FC            [12]  543 	add	a,#0xfc
      000649 F5 81            [12]  544 	mov	sp,a
                                    545 ;	../UI_Manager/ui.c:73: while(delay--){ ;; }
      00064B A8 1A            [24]  546 	mov	r0,_bp
      00064D 08               [12]  547 	inc	r0
      00064E 76 B5            [12]  548 	mov	@r0,#0xb5
      000650 08               [12]  549 	inc	r0
      000651 76 D8            [12]  550 	mov	@r0,#0xd8
      000653 08               [12]  551 	inc	r0
      000654 76 07            [12]  552 	mov	@r0,#0x07
      000656 08               [12]  553 	inc	r0
      000657 76 00            [12]  554 	mov	@r0,#0x00
      000659                        555 00117$:
      000659 A8 1A            [24]  556 	mov	r0,_bp
      00065B 08               [12]  557 	inc	r0
      00065C 86 02            [24]  558 	mov	ar2,@r0
      00065E 08               [12]  559 	inc	r0
      00065F 86 04            [24]  560 	mov	ar4,@r0
      000661 08               [12]  561 	inc	r0
      000662 86 05            [24]  562 	mov	ar5,@r0
      000664 08               [12]  563 	inc	r0
      000665 86 06            [24]  564 	mov	ar6,@r0
      000667 A8 1A            [24]  565 	mov	r0,_bp
      000669 08               [12]  566 	inc	r0
      00066A 16               [12]  567 	dec	@r0
      00066B B6 FF 0C         [24]  568 	cjne	@r0,#0xff,00434$
      00066E 08               [12]  569 	inc	r0
      00066F 16               [12]  570 	dec	@r0
      000670 B6 FF 07         [24]  571 	cjne	@r0,#0xff,00434$
      000673 08               [12]  572 	inc	r0
      000674 16               [12]  573 	dec	@r0
      000675 B6 FF 02         [24]  574 	cjne	@r0,#0xff,00434$
      000678 08               [12]  575 	inc	r0
      000679 16               [12]  576 	dec	@r0
      00067A                        577 00434$:
      00067A EA               [12]  578 	mov	a,r2
      00067B 4C               [12]  579 	orl	a,r4
      00067C 4D               [12]  580 	orl	a,r5
      00067D 4E               [12]  581 	orl	a,r6
      00067E 70 D9            [24]  582 	jnz	00117$
                                    583 ;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
      000680 75 09 FF         [24]  584 	mov	_Changed,#0xff
                                    585 ;	../UI_Manager/ui.c:77: return;
      000683 02 09 5A         [24]  586 	ljmp	00172$
      000686                        587 00121$:
                                    588 ;	../UI_Manager/ui.c:81: if(action == BUTTON_BURST_UP){
      000686 BF 07 02         [24]  589 	cjne	r7,#0x07,00436$
      000689 80 03            [24]  590 	sjmp	00437$
      00068B                        591 00436$:
      00068B 02 07 36         [24]  592 	ljmp	00129$
      00068E                        593 00437$:
                                    594 ;	../UI_Manager/ui.c:83: exe_command(CLEAR_DISPLAY);
      00068E 90 80 00         [24]  595 	mov	dptr,#0x8000
      000691 12 1F E6         [24]  596 	lcall	_exe_command
                                    597 ;	../UI_Manager/ui.c:84: if(get_heater_enabled()){
      000694 E5 4F            [12]  598 	mov	a,_Heat_Flag
      000696 20 E4 24         [24]  599 	jb	acc.4,00123$
                                    600 ;	../UI_Manager/ui.c:85: write_string("Heater Off", 15, 2, LINE_0, NOT_SELECTED);
      000699 E4               [12]  601 	clr	a
      00069A C0 E0            [24]  602 	push	acc
      00069C C0 E0            [24]  603 	push	acc
      00069E 74 02            [12]  604 	mov	a,#0x02
      0006A0 C0 E0            [24]  605 	push	acc
      0006A2 74 0F            [12]  606 	mov	a,#0x0f
      0006A4 C0 E0            [24]  607 	push	acc
      0006A6 90 37 19         [24]  608 	mov	dptr,#___str_3
      0006A9 75 F0 80         [24]  609 	mov	b,#0x80
      0006AC 12 1C AB         [24]  610 	lcall	_write_string
      0006AF E5 81            [12]  611 	mov	a,sp
      0006B1 24 FC            [12]  612 	add	a,#0xfc
      0006B3 F5 81            [12]  613 	mov	sp,a
                                    614 ;	../UI_Manager/ui.c:86: power_heater(HEATER_DISABLE);
      0006B5 75 82 01         [24]  615 	mov	dpl,#0x01
      0006B8 12 35 72         [24]  616 	lcall	_power_heater
      0006BB 80 22            [24]  617 	sjmp	00124$
      0006BD                        618 00123$:
                                    619 ;	../UI_Manager/ui.c:88: write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
      0006BD E4               [12]  620 	clr	a
      0006BE C0 E0            [24]  621 	push	acc
      0006C0 C0 E0            [24]  622 	push	acc
      0006C2 74 02            [12]  623 	mov	a,#0x02
      0006C4 C0 E0            [24]  624 	push	acc
      0006C6 74 0F            [12]  625 	mov	a,#0x0f
      0006C8 C0 E0            [24]  626 	push	acc
      0006CA 90 37 24         [24]  627 	mov	dptr,#___str_4
      0006CD 75 F0 80         [24]  628 	mov	b,#0x80
      0006D0 12 1C AB         [24]  629 	lcall	_write_string
      0006D3 E5 81            [12]  630 	mov	a,sp
      0006D5 24 FC            [12]  631 	add	a,#0xfc
      0006D7 F5 81            [12]  632 	mov	sp,a
                                    633 ;	../UI_Manager/ui.c:89: power_heater(HEATER_ENABLE);
      0006D9 75 82 00         [24]  634 	mov	dpl,#0x00
      0006DC 12 35 72         [24]  635 	lcall	_power_heater
      0006DF                        636 00124$:
                                    637 ;	../UI_Manager/ui.c:92: write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
      0006DF E4               [12]  638 	clr	a
      0006E0 C0 E0            [24]  639 	push	acc
      0006E2 04               [12]  640 	inc	a
      0006E3 C0 E0            [24]  641 	push	acc
      0006E5 E4               [12]  642 	clr	a
      0006E6 C0 E0            [24]  643 	push	acc
      0006E8 74 10            [12]  644 	mov	a,#0x10
      0006EA C0 E0            [24]  645 	push	acc
      0006EC 90 37 2E         [24]  646 	mov	dptr,#___str_5
      0006EF 75 F0 80         [24]  647 	mov	b,#0x80
      0006F2 12 1C AB         [24]  648 	lcall	_write_string
      0006F5 E5 81            [12]  649 	mov	a,sp
      0006F7 24 FC            [12]  650 	add	a,#0xfc
      0006F9 F5 81            [12]  651 	mov	sp,a
                                    652 ;	../UI_Manager/ui.c:96: while(delay--){ ;; }
      0006FB A8 1A            [24]  653 	mov	r0,_bp
      0006FD 08               [12]  654 	inc	r0
      0006FE 76 B5            [12]  655 	mov	@r0,#0xb5
      000700 08               [12]  656 	inc	r0
      000701 76 D8            [12]  657 	mov	@r0,#0xd8
      000703 08               [12]  658 	inc	r0
      000704 76 07            [12]  659 	mov	@r0,#0x07
      000706 08               [12]  660 	inc	r0
      000707 76 00            [12]  661 	mov	@r0,#0x00
      000709                        662 00125$:
      000709 A8 1A            [24]  663 	mov	r0,_bp
      00070B 08               [12]  664 	inc	r0
      00070C 86 02            [24]  665 	mov	ar2,@r0
      00070E 08               [12]  666 	inc	r0
      00070F 86 04            [24]  667 	mov	ar4,@r0
      000711 08               [12]  668 	inc	r0
      000712 86 05            [24]  669 	mov	ar5,@r0
      000714 08               [12]  670 	inc	r0
      000715 86 06            [24]  671 	mov	ar6,@r0
      000717 A8 1A            [24]  672 	mov	r0,_bp
      000719 08               [12]  673 	inc	r0
      00071A 16               [12]  674 	dec	@r0
      00071B B6 FF 0C         [24]  675 	cjne	@r0,#0xff,00439$
      00071E 08               [12]  676 	inc	r0
      00071F 16               [12]  677 	dec	@r0
      000720 B6 FF 07         [24]  678 	cjne	@r0,#0xff,00439$
      000723 08               [12]  679 	inc	r0
      000724 16               [12]  680 	dec	@r0
      000725 B6 FF 02         [24]  681 	cjne	@r0,#0xff,00439$
      000728 08               [12]  682 	inc	r0
      000729 16               [12]  683 	dec	@r0
      00072A                        684 00439$:
      00072A EA               [12]  685 	mov	a,r2
      00072B 4C               [12]  686 	orl	a,r4
      00072C 4D               [12]  687 	orl	a,r5
      00072D 4E               [12]  688 	orl	a,r6
      00072E 70 D9            [24]  689 	jnz	00125$
                                    690 ;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
      000730 75 09 FF         [24]  691 	mov	_Changed,#0xff
                                    692 ;	../UI_Manager/ui.c:100: return;
      000733 02 09 5A         [24]  693 	ljmp	00172$
      000736                        694 00129$:
                                    695 ;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_BURST){
      000736 BF 06 02         [24]  696 	cjne	r7,#0x06,00441$
      000739 80 03            [24]  697 	sjmp	00442$
      00073B                        698 00441$:
      00073B 02 08 05         [24]  699 	ljmp	00134$
      00073E                        700 00442$:
                                    701 ;	../UI_Manager/ui.c:106: ss = bursting & ~BURSTING;
      00073E 74 7F            [12]  702 	mov	a,#0x7f
      000740 55 0B            [12]  703 	anl	a,_tick_ui_bursting_65536_37
      000742 FE               [12]  704 	mov	r6,a
                                    705 ;	../UI_Manager/ui.c:108: exe_command(CLEAR_DISPLAY);
      000743 90 80 00         [24]  706 	mov	dptr,#0x8000
      000746 C0 06            [24]  707 	push	ar6
      000748 12 1F E6         [24]  708 	lcall	_exe_command
      00074B D0 06            [24]  709 	pop	ar6
                                    710 ;	../UI_Manager/ui.c:110: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
      00074D 8E 04            [24]  711 	mov	ar4,r6
      00074F 7D 00            [12]  712 	mov	r5,#0x00
      000751 C0 06            [24]  713 	push	ar6
      000753 74 03            [12]  714 	mov	a,#0x03
      000755 C0 E0            [24]  715 	push	acc
      000757 E4               [12]  716 	clr	a
      000758 C0 E0            [24]  717 	push	acc
      00075A 8C 82            [24]  718 	mov	dpl,r4
      00075C 8D 83            [24]  719 	mov	dph,r5
      00075E 12 36 64         [24]  720 	lcall	__modsint
      000761 AC 82            [24]  721 	mov	r4,dpl
      000763 15 81            [12]  722 	dec	sp
      000765 15 81            [12]  723 	dec	sp
      000767 EC               [12]  724 	mov	a,r4
      000768 2C               [12]  725 	add	a,r4
      000769 FC               [12]  726 	mov	r4,a
      00076A 24 28            [12]  727 	add	a,#0x28
      00076C F5 82            [12]  728 	mov	dpl,a
      00076E C0 04            [24]  729 	push	ar4
      000770 12 18 4D         [24]  730 	lcall	_getString
      000773 AA 82            [24]  731 	mov	r2,dpl
      000775 AB 83            [24]  732 	mov	r3,dph
      000777 AD F0            [24]  733 	mov	r5,b
      000779 E4               [12]  734 	clr	a
      00077A C0 E0            [24]  735 	push	acc
      00077C C0 E0            [24]  736 	push	acc
      00077E C0 E0            [24]  737 	push	acc
      000780 74 10            [12]  738 	mov	a,#0x10
      000782 C0 E0            [24]  739 	push	acc
      000784 8A 82            [24]  740 	mov	dpl,r2
      000786 8B 83            [24]  741 	mov	dph,r3
      000788 8D F0            [24]  742 	mov	b,r5
      00078A 12 1C AB         [24]  743 	lcall	_write_string
      00078D E5 81            [12]  744 	mov	a,sp
      00078F 24 FC            [12]  745 	add	a,#0xfc
      000791 F5 81            [12]  746 	mov	sp,a
      000793 D0 04            [24]  747 	pop	ar4
                                    748 ;	../UI_Manager/ui.c:111: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000795 74 29            [12]  749 	mov	a,#0x29
      000797 2C               [12]  750 	add	a,r4
      000798 F5 82            [12]  751 	mov	dpl,a
      00079A 12 18 4D         [24]  752 	lcall	_getString
      00079D AB 82            [24]  753 	mov	r3,dpl
      00079F AC 83            [24]  754 	mov	r4,dph
      0007A1 AD F0            [24]  755 	mov	r5,b
      0007A3 E4               [12]  756 	clr	a
      0007A4 C0 E0            [24]  757 	push	acc
      0007A6 04               [12]  758 	inc	a
      0007A7 C0 E0            [24]  759 	push	acc
      0007A9 E4               [12]  760 	clr	a
      0007AA C0 E0            [24]  761 	push	acc
      0007AC 74 10            [12]  762 	mov	a,#0x10
      0007AE C0 E0            [24]  763 	push	acc
      0007B0 8B 82            [24]  764 	mov	dpl,r3
      0007B2 8C 83            [24]  765 	mov	dph,r4
      0007B4 8D F0            [24]  766 	mov	b,r5
      0007B6 12 1C AB         [24]  767 	lcall	_write_string
      0007B9 E5 81            [12]  768 	mov	a,sp
      0007BB 24 FC            [12]  769 	add	a,#0xfc
      0007BD F5 81            [12]  770 	mov	sp,a
      0007BF D0 06            [24]  771 	pop	ar6
                                    772 ;	../UI_Manager/ui.c:113: ss++;
      0007C1 0E               [12]  773 	inc	r6
                                    774 ;	../UI_Manager/ui.c:115: bursting &= BURSTING;
      0007C2 53 0B 80         [24]  775 	anl	_tick_ui_bursting_65536_37,#0x80
                                    776 ;	../UI_Manager/ui.c:116: bursting |= (ss & ~BURSTING);
      0007C5 74 7F            [12]  777 	mov	a,#0x7f
      0007C7 5E               [12]  778 	anl	a,r6
      0007C8 42 0B            [12]  779 	orl	_tick_ui_bursting_65536_37,a
                                    780 ;	../UI_Manager/ui.c:120: while(delay--){ ;; }
      0007CA A8 1A            [24]  781 	mov	r0,_bp
      0007CC 08               [12]  782 	inc	r0
      0007CD 76 DD            [12]  783 	mov	@r0,#0xdd
      0007CF 08               [12]  784 	inc	r0
      0007D0 76 8A            [12]  785 	mov	@r0,#0x8a
      0007D2 08               [12]  786 	inc	r0
      0007D3 76 14            [12]  787 	mov	@r0,#0x14
      0007D5 08               [12]  788 	inc	r0
      0007D6 76 00            [12]  789 	mov	@r0,#0x00
      0007D8                        790 00130$:
      0007D8 A8 1A            [24]  791 	mov	r0,_bp
      0007DA 08               [12]  792 	inc	r0
      0007DB 86 02            [24]  793 	mov	ar2,@r0
      0007DD 08               [12]  794 	inc	r0
      0007DE 86 04            [24]  795 	mov	ar4,@r0
      0007E0 08               [12]  796 	inc	r0
      0007E1 86 05            [24]  797 	mov	ar5,@r0
      0007E3 08               [12]  798 	inc	r0
      0007E4 86 06            [24]  799 	mov	ar6,@r0
      0007E6 A8 1A            [24]  800 	mov	r0,_bp
      0007E8 08               [12]  801 	inc	r0
      0007E9 16               [12]  802 	dec	@r0
      0007EA B6 FF 0C         [24]  803 	cjne	@r0,#0xff,00443$
      0007ED 08               [12]  804 	inc	r0
      0007EE 16               [12]  805 	dec	@r0
      0007EF B6 FF 07         [24]  806 	cjne	@r0,#0xff,00443$
      0007F2 08               [12]  807 	inc	r0
      0007F3 16               [12]  808 	dec	@r0
      0007F4 B6 FF 02         [24]  809 	cjne	@r0,#0xff,00443$
      0007F7 08               [12]  810 	inc	r0
      0007F8 16               [12]  811 	dec	@r0
      0007F9                        812 00443$:
      0007F9 EA               [12]  813 	mov	a,r2
      0007FA 4C               [12]  814 	orl	a,r4
      0007FB 4D               [12]  815 	orl	a,r5
      0007FC 4E               [12]  816 	orl	a,r6
      0007FD 70 D9            [24]  817 	jnz	00130$
                                    818 ;	../UI_Manager/ui.c:122: Changed = CHANGE_SCREEN_X;
      0007FF 75 09 FF         [24]  819 	mov	_Changed,#0xff
                                    820 ;	../UI_Manager/ui.c:124: return;
      000802 02 09 5A         [24]  821 	ljmp	00172$
      000805                        822 00134$:
                                    823 ;	../UI_Manager/ui.c:128: if(action == BUTTON_FUN_TIME){
      000805 BF 04 06         [24]  824 	cjne	r7,#0x04,00136$
                                    825 ;	../UI_Manager/ui.c:129: State = IDLE_STATE;
      000808 75 08 00         [24]  826 	mov	_State,#0x00
                                    827 ;	../UI_Manager/ui.c:130: Changed = CHANGE_SCREEN_X;
      00080B 75 09 FF         [24]  828 	mov	_Changed,#0xff
      00080E                        829 00136$:
                                    830 ;	../UI_Manager/ui.c:135: if(Changed || 
      00080E E5 09            [12]  831 	mov	a,_Changed
      000810 70 2F            [24]  832 	jnz	00161$
                                    833 ;	../UI_Manager/ui.c:136: action == BUTTON_UP ||
      000812 BF 03 02         [24]  834 	cjne	r7,#0x03,00448$
      000815 80 2A            [24]  835 	sjmp	00161$
      000817                        836 00448$:
                                    837 ;	../UI_Manager/ui.c:137: action == BUTTON_UP_HOLD||
      000817 BF 1E 02         [24]  838 	cjne	r7,#0x1e,00449$
      00081A 80 25            [24]  839 	sjmp	00161$
      00081C                        840 00449$:
                                    841 ;	../UI_Manager/ui.c:138: action == BUTTON_UP_BURST ||
      00081C BF 1F 02         [24]  842 	cjne	r7,#0x1f,00450$
      00081F 80 20            [24]  843 	sjmp	00161$
      000821                        844 00450$:
                                    845 ;	../UI_Manager/ui.c:139: action == BUTTON_DOWN ||
      000821 BF 0B 02         [24]  846 	cjne	r7,#0x0b,00451$
      000824 80 1B            [24]  847 	sjmp	00161$
      000826                        848 00451$:
                                    849 ;	../UI_Manager/ui.c:140: action == BUTTON_DOWN_HOLD ||
      000826 BF 6E 02         [24]  850 	cjne	r7,#0x6e,00452$
      000829 80 16            [24]  851 	sjmp	00161$
      00082B                        852 00452$:
                                    853 ;	../UI_Manager/ui.c:141: action == BUTTON_DOWN_BURST ||
      00082B BF 6F 02         [24]  854 	cjne	r7,#0x6f,00453$
      00082E 80 11            [24]  855 	sjmp	00161$
      000830                        856 00453$:
                                    857 ;	../UI_Manager/ui.c:142: action == BUTTON_TIMER ||
      000830 BF 01 02         [24]  858 	cjne	r7,#0x01,00454$
      000833 80 0C            [24]  859 	sjmp	00161$
      000835                        860 00454$:
                                    861 ;	../UI_Manager/ui.c:143: action == BUTTON_FUNCTION ||
      000835 BF 02 02         [24]  862 	cjne	r7,#0x02,00455$
      000838 80 07            [24]  863 	sjmp	00161$
      00083A                        864 00455$:
                                    865 ;	../UI_Manager/ui.c:144: State == IDLE_STATE){
      00083A E5 08            [12]  866 	mov	a,_State
      00083C 60 03            [24]  867 	jz	00456$
      00083E 02 09 5A         [24]  868 	ljmp	00172$
      000841                        869 00456$:
      000841                        870 00161$:
                                    871 ;	../UI_Manager/ui.c:146: switch (State)
      000841 AE 08            [24]  872 	mov	r6,_State
      000843 BE 01 03         [24]  873 	cjne	r6,#0x01,00457$
      000846 02 08 EF         [24]  874 	ljmp	00138$
      000849                        875 00457$:
      000849 BE 02 03         [24]  876 	cjne	r6,#0x02,00458$
      00084C 02 08 FD         [24]  877 	ljmp	00140$
      00084F                        878 00458$:
      00084F BE 03 03         [24]  879 	cjne	r6,#0x03,00459$
      000852 02 08 F6         [24]  880 	ljmp	00139$
      000855                        881 00459$:
      000855 BE 04 03         [24]  882 	cjne	r6,#0x04,00460$
      000858 02 09 04         [24]  883 	ljmp	00141$
      00085B                        884 00460$:
      00085B BE 05 03         [24]  885 	cjne	r6,#0x05,00461$
      00085E 02 09 0B         [24]  886 	ljmp	00142$
      000861                        887 00461$:
      000861 BE 06 03         [24]  888 	cjne	r6,#0x06,00462$
      000864 02 09 12         [24]  889 	ljmp	00146$
      000867                        890 00462$:
      000867 BE 07 03         [24]  891 	cjne	r6,#0x07,00463$
      00086A 02 09 12         [24]  892 	ljmp	00146$
      00086D                        893 00463$:
      00086D BE 08 03         [24]  894 	cjne	r6,#0x08,00464$
      000870 02 09 12         [24]  895 	ljmp	00146$
      000873                        896 00464$:
      000873 BE 09 03         [24]  897 	cjne	r6,#0x09,00465$
      000876 02 09 12         [24]  898 	ljmp	00146$
      000879                        899 00465$:
      000879 BE 0A 03         [24]  900 	cjne	r6,#0x0a,00466$
      00087C 02 09 19         [24]  901 	ljmp	00149$
      00087F                        902 00466$:
      00087F BE 0B 03         [24]  903 	cjne	r6,#0x0b,00467$
      000882 02 09 19         [24]  904 	ljmp	00149$
      000885                        905 00467$:
      000885 BE 0C 03         [24]  906 	cjne	r6,#0x0c,00468$
      000888 02 09 19         [24]  907 	ljmp	00149$
      00088B                        908 00468$:
      00088B BE 0D 03         [24]  909 	cjne	r6,#0x0d,00469$
      00088E 02 09 20         [24]  910 	ljmp	00151$
      000891                        911 00469$:
      000891 BE 0E 03         [24]  912 	cjne	r6,#0x0e,00470$
      000894 02 09 20         [24]  913 	ljmp	00151$
      000897                        914 00470$:
      000897 BE 14 03         [24]  915 	cjne	r6,#0x14,00471$
      00089A 02 09 27         [24]  916 	ljmp	00152$
      00089D                        917 00471$:
      00089D BE 15 03         [24]  918 	cjne	r6,#0x15,00472$
      0008A0 02 09 2E         [24]  919 	ljmp	00153$
      0008A3                        920 00472$:
      0008A3 BE 45 02         [24]  921 	cjne	r6,#0x45,00473$
      0008A6 80 03            [24]  922 	sjmp	00474$
      0008A8                        923 00473$:
      0008A8 02 09 35         [24]  924 	ljmp	00154$
      0008AB                        925 00474$:
                                    926 ;	../UI_Manager/ui.c:151: exe_command(CLEAR_DISPLAY);
      0008AB 90 80 00         [24]  927 	mov	dptr,#0x8000
      0008AE 12 1F E6         [24]  928 	lcall	_exe_command
                                    929 ;	../UI_Manager/ui.c:152: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0008B1 E4               [12]  930 	clr	a
      0008B2 C0 E0            [24]  931 	push	acc
      0008B4 C0 E0            [24]  932 	push	acc
      0008B6 04               [12]  933 	inc	a
      0008B7 C0 E0            [24]  934 	push	acc
      0008B9 C4               [12]  935 	swap	a
      0008BA C0 E0            [24]  936 	push	acc
      0008BC 90 37 3F         [24]  937 	mov	dptr,#___str_6
      0008BF 75 F0 80         [24]  938 	mov	b,#0x80
      0008C2 12 1C AB         [24]  939 	lcall	_write_string
      0008C5 E5 81            [12]  940 	mov	a,sp
      0008C7 24 FC            [12]  941 	add	a,#0xfc
      0008C9 F5 81            [12]  942 	mov	sp,a
                                    943 ;	../UI_Manager/ui.c:153: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0008CB E4               [12]  944 	clr	a
      0008CC C0 E0            [24]  945 	push	acc
      0008CE 04               [12]  946 	inc	a
      0008CF C0 E0            [24]  947 	push	acc
      0008D1 E4               [12]  948 	clr	a
      0008D2 C0 E0            [24]  949 	push	acc
      0008D4 74 10            [12]  950 	mov	a,#0x10
      0008D6 C0 E0            [24]  951 	push	acc
      0008D8 90 37 4E         [24]  952 	mov	dptr,#___str_7
      0008DB 75 F0 80         [24]  953 	mov	b,#0x80
      0008DE 12 1C AB         [24]  954 	lcall	_write_string
      0008E1 E5 81            [12]  955 	mov	a,sp
      0008E3 24 FC            [12]  956 	add	a,#0xfc
      0008E5 F5 81            [12]  957 	mov	sp,a
                                    958 ;	../UI_Manager/ui.c:155: Changed = CHANGE_SCREEN_X;
      0008E7 75 09 FF         [24]  959 	mov	_Changed,#0xff
                                    960 ;	../UI_Manager/ui.c:156: State = IDLE_STATE;
      0008EA 75 08 00         [24]  961 	mov	_State,#0x00
                                    962 ;	../UI_Manager/ui.c:158: break;
                                    963 ;	../UI_Manager/ui.c:159: case MANUAL_FOG_POWER_STATE:
      0008ED 80 6B            [24]  964 	sjmp	00172$
      0008EF                        965 00138$:
                                    966 ;	../UI_Manager/ui.c:160: fogLevelPage(action);
      0008EF 8F 82            [24]  967 	mov	dpl,r7
      0008F1 12 0D 1A         [24]  968 	lcall	_fogLevelPage
                                    969 ;	../UI_Manager/ui.c:161: break;
                                    970 ;	../UI_Manager/ui.c:162: case MANUAL_FOG_INTERVAL_STATE:
      0008F4 80 64            [24]  971 	sjmp	00172$
      0008F6                        972 00139$:
                                    973 ;	../UI_Manager/ui.c:163: fogIntervalPage(action);
      0008F6 8F 82            [24]  974 	mov	dpl,r7
      0008F8 12 0E AA         [24]  975 	lcall	_fogIntervalPage
                                    976 ;	../UI_Manager/ui.c:164: break;
                                    977 ;	../UI_Manager/ui.c:165: case MANUAL_FOG_DURATION_STATE:
      0008FB 80 5D            [24]  978 	sjmp	00172$
      0008FD                        979 00140$:
                                    980 ;	../UI_Manager/ui.c:166: fogDurationPage(action);
      0008FD 8F 82            [24]  981 	mov	dpl,r7
      0008FF 12 0F 7B         [24]  982 	lcall	_fogDurationPage
                                    983 ;	../UI_Manager/ui.c:167: break;
                                    984 ;	../UI_Manager/ui.c:168: case MANUAL_COLOR_MACRO_STATE:
      000902 80 56            [24]  985 	sjmp	00172$
      000904                        986 00141$:
                                    987 ;	../UI_Manager/ui.c:169: macroPage(action);
      000904 8F 82            [24]  988 	mov	dpl,r7
      000906 12 10 4C         [24]  989 	lcall	_macroPage
                                    990 ;	../UI_Manager/ui.c:170: break;
                                    991 ;	../UI_Manager/ui.c:171: case MANUAL_MACRO_SPEED_STATE:
      000909 80 4F            [24]  992 	sjmp	00172$
      00090B                        993 00142$:
                                    994 ;	../UI_Manager/ui.c:172: macroSpeedPage(action);
      00090B 8F 82            [24]  995 	mov	dpl,r7
      00090D 12 11 16         [24]  996 	lcall	_macroSpeedPage
                                    997 ;	../UI_Manager/ui.c:173: break;
                                    998 ;	../UI_Manager/ui.c:177: case MANUAL_STROBE_STATE:
      000910 80 48            [24]  999 	sjmp	00172$
      000912                       1000 00146$:
                                   1001 ;	../UI_Manager/ui.c:178: colorPage(action);
      000912 8F 82            [24] 1002 	mov	dpl,r7
      000914 12 12 11         [24] 1003 	lcall	_colorPage
                                   1004 ;	../UI_Manager/ui.c:179: break;
                                   1005 ;	../UI_Manager/ui.c:182: case MANUAL_REMOTE_ACTION_6_STATE:
      000917 80 41            [24] 1006 	sjmp	00172$
      000919                       1007 00149$:
                                   1008 ;	../UI_Manager/ui.c:183: remotePage(action);
      000919 8F 82            [24] 1009 	mov	dpl,r7
      00091B 12 13 51         [24] 1010 	lcall	_remotePage
                                   1011 ;	../UI_Manager/ui.c:184: break;
                                   1012 ;	../UI_Manager/ui.c:186: case MANUAL_SAVE_SETTINGS_STATE:
      00091E 80 3A            [24] 1013 	sjmp	00172$
      000920                       1014 00151$:
                                   1015 ;	../UI_Manager/ui.c:187: saveLoadPage(action);
      000920 8F 82            [24] 1016 	mov	dpl,r7
      000922 12 14 9D         [24] 1017 	lcall	_saveLoadPage
                                   1018 ;	../UI_Manager/ui.c:188: break;
                                   1019 ;	../UI_Manager/ui.c:189: case DMX_ADDRESS_STATE:
      000925 80 33            [24] 1020 	sjmp	00172$
      000927                       1021 00152$:
                                   1022 ;	../UI_Manager/ui.c:190: dmxAddressPage(action);
      000927 8F 82            [24] 1023 	mov	dpl,r7
      000929 12 15 ED         [24] 1024 	lcall	_dmxAddressPage
                                   1025 ;	../UI_Manager/ui.c:191: break;
                                   1026 ;	../UI_Manager/ui.c:192: case DMX_CHANNEL_MODE_STATE:
      00092C 80 2C            [24] 1027 	sjmp	00172$
      00092E                       1028 00153$:
                                   1029 ;	../UI_Manager/ui.c:193: dmxChannelPage(action);
      00092E 8F 82            [24] 1030 	mov	dpl,r7
      000930 12 16 85         [24] 1031 	lcall	_dmxChannelPage
                                   1032 ;	../UI_Manager/ui.c:194: break;
                                   1033 ;	../UI_Manager/ui.c:195: default: //IDLE state
      000933 80 25            [24] 1034 	sjmp	00172$
      000935                       1035 00154$:
                                   1036 ;	../UI_Manager/ui.c:196: idlePage();
      000935 C0 07            [24] 1037 	push	ar7
      000937 12 09 60         [24] 1038 	lcall	_idlePage
      00093A D0 07            [24] 1039 	pop	ar7
                                   1040 ;	../UI_Manager/ui.c:198: if(action == BUTTON_FUNCTION){
      00093C BF 02 0D         [24] 1041 	cjne	r7,#0x02,00158$
                                   1042 ;	../UI_Manager/ui.c:199: set_ui_state(INC, NULL);
      00093F E4               [12] 1043 	clr	a
      000940 C0 E0            [24] 1044 	push	acc
      000942 75 82 01         [24] 1045 	mov	dpl,#0x01
      000945 12 17 40         [24] 1046 	lcall	_set_ui_state
      000948 15 81            [12] 1047 	dec	sp
      00094A 80 0E            [24] 1048 	sjmp	00172$
      00094C                       1049 00158$:
                                   1050 ;	../UI_Manager/ui.c:200: } else if(action == BUTTON_TIMER){
      00094C BF 01 0B         [24] 1051 	cjne	r7,#0x01,00172$
                                   1052 ;	../UI_Manager/ui.c:201: set_ui_state(DEC, NULL);
      00094F E4               [12] 1053 	clr	a
      000950 C0 E0            [24] 1054 	push	acc
      000952 75 82 02         [24] 1055 	mov	dpl,#0x02
      000955 12 17 40         [24] 1056 	lcall	_set_ui_state
      000958 15 81            [12] 1057 	dec	sp
                                   1058 ;	../UI_Manager/ui.c:204: }
      00095A                       1059 00172$:
                                   1060 ;	../UI_Manager/ui.c:207: }
      00095A 85 1A 81         [24] 1061 	mov	sp,_bp
      00095D D0 1A            [24] 1062 	pop	_bp
      00095F 22               [24] 1063 	ret
                                   1064 ;------------------------------------------------------------
                                   1065 ;Allocation info for local variables in function 'idlePage'
                                   1066 ;------------------------------------------------------------
                                   1067 ;temp                      Allocated to registers r7 
                                   1068 ;timer                     Allocated with name '_idlePage_timer_65536_59'
                                   1069 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
                                   1070 ;empty                     Allocated with name '_idlePage_empty_65536_59'
                                   1071 ;tock                      Allocated with name '_idlePage_tock_65536_59'
                                   1072 ;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
                                   1073 ;playing                   Allocated with name '_idlePage_playing_65536_59'
                                   1074 ;------------------------------------------------------------
                                   1075 ;	../UI_Manager/ui.c:209: void idlePage(){
                                   1076 ;	-----------------------------------------
                                   1077 ;	 function idlePage
                                   1078 ;	-----------------------------------------
      000960                       1079 _idlePage:
                                   1080 ;	../UI_Manager/ui.c:218: if(empty){
      000960 E5 0E            [12] 1081 	mov	a,_idlePage_empty_65536_59
      000962 60 50            [24] 1082 	jz	00107$
                                   1083 ;	../UI_Manager/ui.c:219: if(get_fog_fluid_level() == TANK_FULL){
      000964 74 01            [12] 1084 	mov	a,#0x01
      000966 B5 50 07         [24] 1085 	cjne	a,_Fluid_Level,00104$
                                   1086 ;	../UI_Manager/ui.c:220: empty = 0x00;
      000969 75 0E 00         [24] 1087 	mov	_idlePage_empty_65536_59,#0x00
                                   1088 ;	../UI_Manager/ui.c:221: Changed = CHANGE_SCREEN_X;
      00096C 75 09 FF         [24] 1089 	mov	_Changed,#0xff
      00096F 22               [24] 1090 	ret
      000970                       1091 00104$:
                                   1092 ;	../UI_Manager/ui.c:222: } else if(Changed){
      000970 E5 09            [12] 1093 	mov	a,_Changed
      000972 60 3F            [24] 1094 	jz	00105$
                                   1095 ;	../UI_Manager/ui.c:223: Changed = 0x00;
      000974 75 09 00         [24] 1096 	mov	_Changed,#0x00
                                   1097 ;	../UI_Manager/ui.c:224: exe_command(CLEAR_DISPLAY);
      000977 90 80 00         [24] 1098 	mov	dptr,#0x8000
      00097A 12 1F E6         [24] 1099 	lcall	_exe_command
                                   1100 ;	../UI_Manager/ui.c:225: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      00097D E4               [12] 1101 	clr	a
      00097E C0 E0            [24] 1102 	push	acc
      000980 C0 E0            [24] 1103 	push	acc
      000982 04               [12] 1104 	inc	a
      000983 C0 E0            [24] 1105 	push	acc
      000985 C4               [12] 1106 	swap	a
      000986 C0 E0            [24] 1107 	push	acc
      000988 90 37 5E         [24] 1108 	mov	dptr,#___str_8
      00098B 75 F0 80         [24] 1109 	mov	b,#0x80
      00098E 12 1C AB         [24] 1110 	lcall	_write_string
      000991 E5 81            [12] 1111 	mov	a,sp
      000993 24 FC            [12] 1112 	add	a,#0xfc
      000995 F5 81            [12] 1113 	mov	sp,a
                                   1114 ;	../UI_Manager/ui.c:226: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000997 E4               [12] 1115 	clr	a
      000998 C0 E0            [24] 1116 	push	acc
      00099A 04               [12] 1117 	inc	a
      00099B C0 E0            [24] 1118 	push	acc
      00099D E4               [12] 1119 	clr	a
      00099E C0 E0            [24] 1120 	push	acc
      0009A0 74 10            [12] 1121 	mov	a,#0x10
      0009A2 C0 E0            [24] 1122 	push	acc
      0009A4 90 37 6D         [24] 1123 	mov	dptr,#___str_9
      0009A7 75 F0 80         [24] 1124 	mov	b,#0x80
      0009AA 12 1C AB         [24] 1125 	lcall	_write_string
      0009AD E5 81            [12] 1126 	mov	a,sp
      0009AF 24 FC            [12] 1127 	add	a,#0xfc
      0009B1 F5 81            [12] 1128 	mov	sp,a
      0009B3                       1129 00105$:
                                   1130 ;	../UI_Manager/ui.c:229: return;
      0009B3 22               [24] 1131 	ret
      0009B4                       1132 00107$:
                                   1133 ;	../UI_Manager/ui.c:233: if(get_fog_fluid_level() == TANK_EMPTY && get_heated() == HEATED){
      0009B4 E5 50            [12] 1134 	mov	a,_Fluid_Level
      0009B6 70 47            [24] 1135 	jnz	00109$
      0009B8 AE 4F            [24] 1136 	mov	r6,_Heat_Flag
      0009BA 53 06 80         [24] 1137 	anl	ar6,#0x80
      0009BD 7F 00            [12] 1138 	mov	r7,#0x00
      0009BF BE 80 3D         [24] 1139 	cjne	r6,#0x80,00109$
      0009C2 BF 00 3A         [24] 1140 	cjne	r7,#0x00,00109$
                                   1141 ;	../UI_Manager/ui.c:235: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0009C5 E4               [12] 1142 	clr	a
      0009C6 C0 E0            [24] 1143 	push	acc
      0009C8 C0 E0            [24] 1144 	push	acc
      0009CA 04               [12] 1145 	inc	a
      0009CB C0 E0            [24] 1146 	push	acc
      0009CD C4               [12] 1147 	swap	a
      0009CE C0 E0            [24] 1148 	push	acc
      0009D0 90 37 5E         [24] 1149 	mov	dptr,#___str_8
      0009D3 75 F0 80         [24] 1150 	mov	b,#0x80
      0009D6 12 1C AB         [24] 1151 	lcall	_write_string
      0009D9 E5 81            [12] 1152 	mov	a,sp
      0009DB 24 FC            [12] 1153 	add	a,#0xfc
      0009DD F5 81            [12] 1154 	mov	sp,a
                                   1155 ;	../UI_Manager/ui.c:236: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0009DF E4               [12] 1156 	clr	a
      0009E0 C0 E0            [24] 1157 	push	acc
      0009E2 04               [12] 1158 	inc	a
      0009E3 C0 E0            [24] 1159 	push	acc
      0009E5 E4               [12] 1160 	clr	a
      0009E6 C0 E0            [24] 1161 	push	acc
      0009E8 74 10            [12] 1162 	mov	a,#0x10
      0009EA C0 E0            [24] 1163 	push	acc
      0009EC 90 37 6D         [24] 1164 	mov	dptr,#___str_9
      0009EF 75 F0 80         [24] 1165 	mov	b,#0x80
      0009F2 12 1C AB         [24] 1166 	lcall	_write_string
      0009F5 E5 81            [12] 1167 	mov	a,sp
      0009F7 24 FC            [12] 1168 	add	a,#0xfc
      0009F9 F5 81            [12] 1169 	mov	sp,a
                                   1170 ;	../UI_Manager/ui.c:238: empty = 0xFF;
      0009FB 75 0E FF         [24] 1171 	mov	_idlePage_empty_65536_59,#0xff
                                   1172 ;	../UI_Manager/ui.c:240: return;
      0009FE 22               [24] 1173 	ret
      0009FF                       1174 00109$:
                                   1175 ;	../UI_Manager/ui.c:243: if(Changed){
      0009FF E5 09            [12] 1176 	mov	a,_Changed
      000A01 70 03            [24] 1177 	jnz	00344$
      000A03 02 0A C2         [24] 1178 	ljmp	00119$
      000A06                       1179 00344$:
                                   1180 ;	../UI_Manager/ui.c:244: exe_command(CLEAR_DISPLAY);
      000A06 90 80 00         [24] 1181 	mov	dptr,#0x8000
      000A09 12 1F E6         [24] 1182 	lcall	_exe_command
                                   1183 ;	../UI_Manager/ui.c:245: Changed = 0x00;
      000A0C 75 09 00         [24] 1184 	mov	_Changed,#0x00
                                   1185 ;	../UI_Manager/ui.c:246: changed = 0xFF;
      000A0F 75 0A FF         [24] 1186 	mov	_changed,#0xff
                                   1187 ;	../UI_Manager/ui.c:247: timer = 0xFF;
      000A12 75 0C FF         [24] 1188 	mov	_idlePage_timer_65536_59,#0xff
                                   1189 ;	../UI_Manager/ui.c:248: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
      000A15 75 0D 55         [24] 1190 	mov	_idlePage_intervalOrDuration_65536_59,#0x55
                                   1191 ;	../UI_Manager/ui.c:250: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
      000A18 75 82 10         [24] 1192 	mov	dpl,#0x10
      000A1B 12 2F 00         [24] 1193 	lcall	_get_runtime_data
      000A1E E5 82            [12] 1194 	mov	a,dpl
      000A20 60 1D            [24] 1195 	jz	00116$
                                   1196 ;	../UI_Manager/ui.c:251: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000A22 E4               [12] 1197 	clr	a
      000A23 C0 E0            [24] 1198 	push	acc
      000A25 C0 E0            [24] 1199 	push	acc
      000A27 04               [12] 1200 	inc	a
      000A28 C0 E0            [24] 1201 	push	acc
      000A2A C4               [12] 1202 	swap	a
      000A2B C0 E0            [24] 1203 	push	acc
      000A2D 90 37 7D         [24] 1204 	mov	dptr,#___str_10
      000A30 75 F0 80         [24] 1205 	mov	b,#0x80
      000A33 12 1C AB         [24] 1206 	lcall	_write_string
      000A36 E5 81            [12] 1207 	mov	a,sp
      000A38 24 FC            [12] 1208 	add	a,#0xfc
      000A3A F5 81            [12] 1209 	mov	sp,a
      000A3C 02 0A C2         [24] 1210 	ljmp	00119$
      000A3F                       1211 00116$:
                                   1212 ;	../UI_Manager/ui.c:254: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      000A3F 12 30 B3         [24] 1213 	lcall	_get_dmx_address
      000A42 E4               [12] 1214 	clr	a
      000A43 C0 E0            [24] 1215 	push	acc
      000A45 04               [12] 1216 	inc	a
      000A46 C0 E0            [24] 1217 	push	acc
      000A48 74 04            [12] 1218 	mov	a,#0x04
      000A4A C0 E0            [24] 1219 	push	acc
      000A4C 12 1D 68         [24] 1220 	lcall	_write_number
      000A4F 15 81            [12] 1221 	dec	sp
      000A51 15 81            [12] 1222 	dec	sp
      000A53 15 81            [12] 1223 	dec	sp
                                   1224 ;	../UI_Manager/ui.c:255: switch (get_runtime_data(MODE_INDEX))
      000A55 75 82 0E         [24] 1225 	mov	dpl,#0x0e
      000A58 12 2F 00         [24] 1226 	lcall	_get_runtime_data
      000A5B AF 82            [24] 1227 	mov	r7,dpl
      000A5D BF 01 02         [24] 1228 	cjne	r7,#0x01,00346$
      000A60 80 05            [24] 1229 	sjmp	00111$
      000A62                       1230 00346$:
                                   1231 ;	../UI_Manager/ui.c:257: case OPTION_DMX_MODE_3:
      000A62 BF 02 0A         [24] 1232 	cjne	r7,#0x02,00113$
      000A65 80 04            [24] 1233 	sjmp	00112$
      000A67                       1234 00111$:
                                   1235 ;	../UI_Manager/ui.c:258: temp = 3;
      000A67 7F 03            [12] 1236 	mov	r7,#0x03
                                   1237 ;	../UI_Manager/ui.c:259: break;
                                   1238 ;	../UI_Manager/ui.c:260: case OPTION_DMX_MODE_1: 
      000A69 80 06            [24] 1239 	sjmp	00114$
      000A6B                       1240 00112$:
                                   1241 ;	../UI_Manager/ui.c:261: temp = 1;
      000A6B 7F 01            [12] 1242 	mov	r7,#0x01
                                   1243 ;	../UI_Manager/ui.c:262: break;
                                   1244 ;	../UI_Manager/ui.c:263: default:
      000A6D 80 02            [24] 1245 	sjmp	00114$
      000A6F                       1246 00113$:
                                   1247 ;	../UI_Manager/ui.c:264: temp = 11;
      000A6F 7F 0B            [12] 1248 	mov	r7,#0x0b
                                   1249 ;	../UI_Manager/ui.c:266: }
      000A71                       1250 00114$:
                                   1251 ;	../UI_Manager/ui.c:267: write_number(temp, 12, LINE_1, NOT_SELECTED);
      000A71 E4               [12] 1252 	clr	a
      000A72 FE               [12] 1253 	mov	r6,a
      000A73 C0 E0            [24] 1254 	push	acc
      000A75 04               [12] 1255 	inc	a
      000A76 C0 E0            [24] 1256 	push	acc
      000A78 74 0C            [12] 1257 	mov	a,#0x0c
      000A7A C0 E0            [24] 1258 	push	acc
      000A7C 8F 82            [24] 1259 	mov	dpl,r7
      000A7E 8E 83            [24] 1260 	mov	dph,r6
      000A80 12 1D 68         [24] 1261 	lcall	_write_number
      000A83 15 81            [12] 1262 	dec	sp
      000A85 15 81            [12] 1263 	dec	sp
      000A87 15 81            [12] 1264 	dec	sp
                                   1265 ;	../UI_Manager/ui.c:269: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
      000A89 E4               [12] 1266 	clr	a
      000A8A C0 E0            [24] 1267 	push	acc
      000A8C 04               [12] 1268 	inc	a
      000A8D C0 E0            [24] 1269 	push	acc
      000A8F E4               [12] 1270 	clr	a
      000A90 C0 E0            [24] 1271 	push	acc
      000A92 74 04            [12] 1272 	mov	a,#0x04
      000A94 C0 E0            [24] 1273 	push	acc
      000A96 90 37 89         [24] 1274 	mov	dptr,#___str_11
      000A99 75 F0 80         [24] 1275 	mov	b,#0x80
      000A9C 12 1C AB         [24] 1276 	lcall	_write_string
      000A9F E5 81            [12] 1277 	mov	a,sp
      000AA1 24 FC            [12] 1278 	add	a,#0xfc
      000AA3 F5 81            [12] 1279 	mov	sp,a
                                   1280 ;	../UI_Manager/ui.c:270: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
      000AA5 E4               [12] 1281 	clr	a
      000AA6 C0 E0            [24] 1282 	push	acc
      000AA8 04               [12] 1283 	inc	a
      000AA9 C0 E0            [24] 1284 	push	acc
      000AAB 74 09            [12] 1285 	mov	a,#0x09
      000AAD C0 E0            [24] 1286 	push	acc
      000AAF 74 04            [12] 1287 	mov	a,#0x04
      000AB1 C0 E0            [24] 1288 	push	acc
      000AB3 90 37 8E         [24] 1289 	mov	dptr,#___str_12
      000AB6 75 F0 80         [24] 1290 	mov	b,#0x80
      000AB9 12 1C AB         [24] 1291 	lcall	_write_string
      000ABC E5 81            [12] 1292 	mov	a,sp
      000ABE 24 FC            [12] 1293 	add	a,#0xfc
      000AC0 F5 81            [12] 1294 	mov	sp,a
      000AC2                       1295 00119$:
                                   1296 ;	../UI_Manager/ui.c:278: tock++;
      000AC2 05 0F            [12] 1297 	inc	_idlePage_tock_65536_59
                                   1298 ;	../UI_Manager/ui.c:279: if(get_playing() == PLAY){
      000AC4 74 01            [12] 1299 	mov	a,#0x01
      000AC6 B5 4E 64         [24] 1300 	cjne	a,_Playing,00137$
                                   1301 ;	../UI_Manager/ui.c:280: if(playing == PAUSE){
      000AC9 E5 11            [12] 1302 	mov	a,_idlePage_playing_65536_59
                                   1303 ;	../UI_Manager/ui.c:281: iconChange |= PLAY_CHANGE;
      000ACB 70 08            [24] 1304 	jnz	00121$
      000ACD AE 10            [24] 1305 	mov	r6,_idlePage_iconChange_65536_59
      000ACF FF               [12] 1306 	mov	r7,a
      000AD0 43 06 20         [24] 1307 	orl	ar6,#0x20
      000AD3 8E 10            [24] 1308 	mov	_idlePage_iconChange_65536_59,r6
      000AD5                       1309 00121$:
                                   1310 ;	../UI_Manager/ui.c:284: if(get_interval_or_duration() == INTERVAL){
      000AD5 E5 4D            [12] 1311 	mov	a,_Interval_Or_Duration
      000AD7 70 1B            [24] 1312 	jnz	00130$
                                   1313 ;	../UI_Manager/ui.c:286: if(iconChange & PLAY_CHANGE){
      000AD9 E5 10            [12] 1314 	mov	a,_idlePage_iconChange_65536_59
      000ADB 30 E5 44         [24] 1315 	jnb	acc.5,00131$
                                   1316 ;	../UI_Manager/ui.c:287: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000ADE E4               [12] 1317 	clr	a
      000ADF C0 E0            [24] 1318 	push	acc
      000AE1 74 0E            [12] 1319 	mov	a,#0x0e
      000AE3 C0 E0            [24] 1320 	push	acc
      000AE5 75 82 80         [24] 1321 	mov	dpl,#0x80
      000AE8 12 1F 9B         [24] 1322 	lcall	_write_char
      000AEB 15 81            [12] 1323 	dec	sp
      000AED 15 81            [12] 1324 	dec	sp
                                   1325 ;	../UI_Manager/ui.c:288: iconChange &= ~PLAY_CHANGE;
      000AEF 53 10 DF         [24] 1326 	anl	_idlePage_iconChange_65536_59,#0xdf
      000AF2 80 2E            [24] 1327 	sjmp	00131$
      000AF4                       1328 00130$:
                                   1329 ;	../UI_Manager/ui.c:292: if(tock == 0x80 + 55){ //blink if fogging
      000AF4 74 B7            [12] 1330 	mov	a,#0xb7
      000AF6 B5 0F 13         [24] 1331 	cjne	a,_idlePage_tock_65536_59,00127$
                                   1332 ;	../UI_Manager/ui.c:293: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000AF9 E4               [12] 1333 	clr	a
      000AFA C0 E0            [24] 1334 	push	acc
      000AFC 74 0E            [12] 1335 	mov	a,#0x0e
      000AFE C0 E0            [24] 1336 	push	acc
      000B00 75 82 80         [24] 1337 	mov	dpl,#0x80
      000B03 12 1F 9B         [24] 1338 	lcall	_write_char
      000B06 15 81            [12] 1339 	dec	sp
      000B08 15 81            [12] 1340 	dec	sp
      000B0A 80 16            [24] 1341 	sjmp	00131$
      000B0C                       1342 00127$:
                                   1343 ;	../UI_Manager/ui.c:294: } else if(tock == 0x08 + 55){
      000B0C 74 3F            [12] 1344 	mov	a,#0x3f
      000B0E B5 0F 11         [24] 1345 	cjne	a,_idlePage_tock_65536_59,00131$
                                   1346 ;	../UI_Manager/ui.c:295: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      000B11 E4               [12] 1347 	clr	a
      000B12 C0 E0            [24] 1348 	push	acc
      000B14 74 0E            [12] 1349 	mov	a,#0x0e
      000B16 C0 E0            [24] 1350 	push	acc
      000B18 75 82 04         [24] 1351 	mov	dpl,#0x04
      000B1B 12 1F 9B         [24] 1352 	lcall	_write_char
      000B1E 15 81            [12] 1353 	dec	sp
      000B20 15 81            [12] 1354 	dec	sp
      000B22                       1355 00131$:
                                   1356 ;	../UI_Manager/ui.c:298: iconChange |= PAUSE_CHANGE;
      000B22 AE 10            [24] 1357 	mov	r6,_idlePage_iconChange_65536_59
      000B24 7F 00            [12] 1358 	mov	r7,#0x00
      000B26 43 06 10         [24] 1359 	orl	ar6,#0x10
      000B29 8E 10            [24] 1360 	mov	_idlePage_iconChange_65536_59,r6
      000B2B 80 33            [24] 1361 	sjmp	00138$
      000B2D                       1362 00137$:
                                   1363 ;	../UI_Manager/ui.c:300: if(playing == PLAY){
      000B2D 74 01            [12] 1364 	mov	a,#0x01
      000B2F B5 11 09         [24] 1365 	cjne	a,_idlePage_playing_65536_59,00133$
                                   1366 ;	../UI_Manager/ui.c:301: iconChange |= PAUSE_CHANGE;
      000B32 AE 10            [24] 1367 	mov	r6,_idlePage_iconChange_65536_59
      000B34 7F 00            [12] 1368 	mov	r7,#0x00
      000B36 43 06 10         [24] 1369 	orl	ar6,#0x10
      000B39 8E 10            [24] 1370 	mov	_idlePage_iconChange_65536_59,r6
      000B3B                       1371 00133$:
                                   1372 ;	../UI_Manager/ui.c:304: if(iconChange & PAUSE_CHANGE){
      000B3B E5 10            [12] 1373 	mov	a,_idlePage_iconChange_65536_59
      000B3D 30 E4 1D         [24] 1374 	jnb	acc.4,00135$
                                   1375 ;	../UI_Manager/ui.c:305: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      000B40 E4               [12] 1376 	clr	a
      000B41 C0 E0            [24] 1377 	push	acc
      000B43 74 0E            [12] 1378 	mov	a,#0x0e
      000B45 C0 E0            [24] 1379 	push	acc
      000B47 75 82 04         [24] 1380 	mov	dpl,#0x04
      000B4A 12 1F 9B         [24] 1381 	lcall	_write_char
      000B4D 15 81            [12] 1382 	dec	sp
      000B4F 15 81            [12] 1383 	dec	sp
                                   1384 ;	../UI_Manager/ui.c:306: iconChange |= PLAY_CHANGE;
      000B51 AE 10            [24] 1385 	mov	r6,_idlePage_iconChange_65536_59
      000B53 7F 00            [12] 1386 	mov	r7,#0x00
      000B55 43 06 20         [24] 1387 	orl	ar6,#0x20
      000B58 8E 10            [24] 1388 	mov	_idlePage_iconChange_65536_59,r6
                                   1389 ;	../UI_Manager/ui.c:307: iconChange &= ~PAUSE_CHANGE;
      000B5A 53 10 EF         [24] 1390 	anl	_idlePage_iconChange_65536_59,#0xef
      000B5D                       1391 00135$:
                                   1392 ;	../UI_Manager/ui.c:310: playing = PAUSE;
      000B5D 75 11 00         [24] 1393 	mov	_idlePage_playing_65536_59,#0x00
      000B60                       1394 00138$:
                                   1395 ;	../UI_Manager/ui.c:313: if(get_heater_enabled()){
      000B60 E5 4F            [12] 1396 	mov	a,_Heat_Flag
      000B62 20 E4 6D         [24] 1397 	jb	acc.4,00152$
                                   1398 ;	../UI_Manager/ui.c:314: if(get_heated()){
      000B65 E5 4F            [12] 1399 	mov	a,_Heat_Flag
      000B67 30 E7 1B         [24] 1400 	jnb	acc.7,00147$
                                   1401 ;	../UI_Manager/ui.c:315: if(iconChange & HEATED_CHANGE){
      000B6A E5 10            [12] 1402 	mov	a,_idlePage_iconChange_65536_59
      000B6C 30 E0 58         [24] 1403 	jnb	acc.0,00148$
                                   1404 ;	../UI_Manager/ui.c:316: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
      000B6F E4               [12] 1405 	clr	a
      000B70 C0 E0            [24] 1406 	push	acc
      000B72 74 0F            [12] 1407 	mov	a,#0x0f
      000B74 C0 E0            [24] 1408 	push	acc
      000B76 75 82 60         [24] 1409 	mov	dpl,#0x60
      000B79 12 1F 9B         [24] 1410 	lcall	_write_char
      000B7C 15 81            [12] 1411 	dec	sp
      000B7E 15 81            [12] 1412 	dec	sp
                                   1413 ;	../UI_Manager/ui.c:317: iconChange &= ~HEATED_CHANGE;
      000B80 53 10 FE         [24] 1414 	anl	_idlePage_iconChange_65536_59,#0xfe
      000B83 80 42            [24] 1415 	sjmp	00148$
      000B85                       1416 00147$:
                                   1417 ;	../UI_Manager/ui.c:320: if(!(tock)){
      000B85 E5 0F            [12] 1418 	mov	a,_idlePage_tock_65536_59
      000B87 70 35            [24] 1419 	jnz	00145$
                                   1420 ;	../UI_Manager/ui.c:321: if(iconChange & HEATING_CHANGE){
      000B89 E5 10            [12] 1421 	mov	a,_idlePage_iconChange_65536_59
      000B8B 30 E1 16         [24] 1422 	jnb	acc.1,00142$
                                   1423 ;	../UI_Manager/ui.c:322: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
      000B8E E4               [12] 1424 	clr	a
      000B8F C0 E0            [24] 1425 	push	acc
      000B91 74 0F            [12] 1426 	mov	a,#0x0f
      000B93 C0 E0            [24] 1427 	push	acc
      000B95 75 82 04         [24] 1428 	mov	dpl,#0x04
      000B98 12 1F 9B         [24] 1429 	lcall	_write_char
      000B9B 15 81            [12] 1430 	dec	sp
      000B9D 15 81            [12] 1431 	dec	sp
                                   1432 ;	../UI_Manager/ui.c:323: iconChange &= ~HEATING_CHANGE;
      000B9F 53 10 FD         [24] 1433 	anl	_idlePage_iconChange_65536_59,#0xfd
      000BA2 80 1A            [24] 1434 	sjmp	00145$
      000BA4                       1435 00142$:
                                   1436 ;	../UI_Manager/ui.c:325: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
      000BA4 E4               [12] 1437 	clr	a
      000BA5 C0 E0            [24] 1438 	push	acc
      000BA7 74 0F            [12] 1439 	mov	a,#0x0f
      000BA9 C0 E0            [24] 1440 	push	acc
      000BAB 75 82 A0         [24] 1441 	mov	dpl,#0xa0
      000BAE 12 1F 9B         [24] 1442 	lcall	_write_char
      000BB1 15 81            [12] 1443 	dec	sp
      000BB3 15 81            [12] 1444 	dec	sp
                                   1445 ;	../UI_Manager/ui.c:326: iconChange |= HEATING_CHANGE;
      000BB5 AE 10            [24] 1446 	mov	r6,_idlePage_iconChange_65536_59
      000BB7 7F 00            [12] 1447 	mov	r7,#0x00
      000BB9 43 06 02         [24] 1448 	orl	ar6,#0x02
      000BBC 8E 10            [24] 1449 	mov	_idlePage_iconChange_65536_59,r6
      000BBE                       1450 00145$:
                                   1451 ;	../UI_Manager/ui.c:329: iconChange |= HEATED_CHANGE;
      000BBE AE 10            [24] 1452 	mov	r6,_idlePage_iconChange_65536_59
      000BC0 7F 00            [12] 1453 	mov	r7,#0x00
      000BC2 43 06 01         [24] 1454 	orl	ar6,#0x01
      000BC5 8E 10            [24] 1455 	mov	_idlePage_iconChange_65536_59,r6
      000BC7                       1456 00148$:
                                   1457 ;	../UI_Manager/ui.c:331: iconChange |= HEATER_CHANGE;
      000BC7 AE 10            [24] 1458 	mov	r6,_idlePage_iconChange_65536_59
      000BC9 7F 00            [12] 1459 	mov	r7,#0x00
      000BCB 43 06 08         [24] 1460 	orl	ar6,#0x08
      000BCE 8E 10            [24] 1461 	mov	_idlePage_iconChange_65536_59,r6
      000BD0 80 1C            [24] 1462 	sjmp	00153$
      000BD2                       1463 00152$:
                                   1464 ;	../UI_Manager/ui.c:333: if(iconChange & HEATER_CHANGE){
      000BD2 E5 10            [12] 1465 	mov	a,_idlePage_iconChange_65536_59
      000BD4 30 E3 14         [24] 1466 	jnb	acc.3,00150$
                                   1467 ;	../UI_Manager/ui.c:334: write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
      000BD7 E4               [12] 1468 	clr	a
      000BD8 C0 E0            [24] 1469 	push	acc
      000BDA 74 0F            [12] 1470 	mov	a,#0x0f
      000BDC C0 E0            [24] 1471 	push	acc
      000BDE 75 82 00         [24] 1472 	mov	dpl,#0x00
      000BE1 12 1F 9B         [24] 1473 	lcall	_write_char
      000BE4 15 81            [12] 1474 	dec	sp
      000BE6 15 81            [12] 1475 	dec	sp
                                   1476 ;	../UI_Manager/ui.c:335: iconChange &= ~HEATER_CHANGE;
      000BE8 53 10 F7         [24] 1477 	anl	_idlePage_iconChange_65536_59,#0xf7
      000BEB                       1478 00150$:
                                   1479 ;	../UI_Manager/ui.c:337: iconChange |= HEATER_CHANGE | HEATED_CHANGE;
      000BEB 43 10 09         [24] 1480 	orl	_idlePage_iconChange_65536_59,#0x09
      000BEE                       1481 00153$:
                                   1482 ;	../UI_Manager/ui.c:342: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      000BEE 75 82 10         [24] 1483 	mov	dpl,#0x10
      000BF1 12 2F 00         [24] 1484 	lcall	_get_runtime_data
      000BF4 E5 82            [12] 1485 	mov	a,dpl
      000BF6 60 03            [24] 1486 	jz	00366$
      000BF8 02 0C A2         [24] 1487 	ljmp	00171$
      000BFB                       1488 00366$:
                                   1489 ;	../UI_Manager/ui.c:345: if(has_dmx()){
      000BFB E5 2C            [12] 1490 	mov	a,_Has_DMX
      000BFD 60 2E            [24] 1491 	jz	00159$
                                   1492 ;	../UI_Manager/ui.c:346: if(changed & DMX_OK_CHANGE){
      000BFF E5 0A            [12] 1493 	mov	a,_changed
      000C01 30 E7 55         [24] 1494 	jnb	acc.7,00160$
                                   1495 ;	../UI_Manager/ui.c:347: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
      000C04 E4               [12] 1496 	clr	a
      000C05 C0 E0            [24] 1497 	push	acc
      000C07 C0 E0            [24] 1498 	push	acc
      000C09 04               [12] 1499 	inc	a
      000C0A C0 E0            [24] 1500 	push	acc
      000C0C 74 06            [12] 1501 	mov	a,#0x06
      000C0E C0 E0            [24] 1502 	push	acc
      000C10 90 37 93         [24] 1503 	mov	dptr,#___str_13
      000C13 75 F0 80         [24] 1504 	mov	b,#0x80
      000C16 12 1C AB         [24] 1505 	lcall	_write_string
      000C19 E5 81            [12] 1506 	mov	a,sp
      000C1B 24 FC            [12] 1507 	add	a,#0xfc
      000C1D F5 81            [12] 1508 	mov	sp,a
                                   1509 ;	../UI_Manager/ui.c:348: changed |= NO_DMX_CHANGE;
      000C1F AE 0A            [24] 1510 	mov	r6,_changed
      000C21 7F 00            [12] 1511 	mov	r7,#0x00
      000C23 43 06 40         [24] 1512 	orl	ar6,#0x40
      000C26 8E 0A            [24] 1513 	mov	_changed,r6
                                   1514 ;	../UI_Manager/ui.c:349: changed &= ~DMX_OK_CHANGE;
      000C28 53 0A 7F         [24] 1515 	anl	_changed,#0x7f
      000C2B 80 2C            [24] 1516 	sjmp	00160$
      000C2D                       1517 00159$:
                                   1518 ;	../UI_Manager/ui.c:352: if(changed & NO_DMX_CHANGE){
      000C2D E5 0A            [12] 1519 	mov	a,_changed
      000C2F 30 E6 27         [24] 1520 	jnb	acc.6,00160$
                                   1521 ;	../UI_Manager/ui.c:353: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
      000C32 E4               [12] 1522 	clr	a
      000C33 C0 E0            [24] 1523 	push	acc
      000C35 C0 E0            [24] 1524 	push	acc
      000C37 04               [12] 1525 	inc	a
      000C38 C0 E0            [24] 1526 	push	acc
      000C3A 74 06            [12] 1527 	mov	a,#0x06
      000C3C C0 E0            [24] 1528 	push	acc
      000C3E 90 37 9A         [24] 1529 	mov	dptr,#___str_14
      000C41 75 F0 80         [24] 1530 	mov	b,#0x80
      000C44 12 1C AB         [24] 1531 	lcall	_write_string
      000C47 E5 81            [12] 1532 	mov	a,sp
      000C49 24 FC            [12] 1533 	add	a,#0xfc
      000C4B F5 81            [12] 1534 	mov	sp,a
                                   1535 ;	../UI_Manager/ui.c:354: changed |= DMX_OK_CHANGE;
      000C4D AE 0A            [24] 1536 	mov	r6,_changed
      000C4F 7F 00            [12] 1537 	mov	r7,#0x00
      000C51 43 06 80         [24] 1538 	orl	ar6,#0x80
      000C54 8E 0A            [24] 1539 	mov	_changed,r6
                                   1540 ;	../UI_Manager/ui.c:355: changed &= ~NO_DMX_CHANGE;
      000C56 53 0A BF         [24] 1541 	anl	_changed,#0xbf
      000C59                       1542 00160$:
                                   1543 ;	../UI_Manager/ui.c:359: temp = get_timer();
                                   1544 ;	../UI_Manager/ui.c:362: if(timer != temp){
      000C59 E5 4C            [12] 1545 	mov	a,_Timer
      000C5B FF               [12] 1546 	mov	r7,a
      000C5C B5 0C 01         [24] 1547 	cjne	a,_idlePage_timer_65536_59,00370$
      000C5F 22               [24] 1548 	ret
      000C60                       1549 00370$:
                                   1550 ;	../UI_Manager/ui.c:364: write_number(temp, 7, LINE_0, NOT_SELECTED);
      000C60 8F 05            [24] 1551 	mov	ar5,r7
      000C62 7E 00            [12] 1552 	mov	r6,#0x00
      000C64 C0 07            [24] 1553 	push	ar7
      000C66 E4               [12] 1554 	clr	a
      000C67 C0 E0            [24] 1555 	push	acc
      000C69 C0 E0            [24] 1556 	push	acc
      000C6B 74 07            [12] 1557 	mov	a,#0x07
      000C6D C0 E0            [24] 1558 	push	acc
      000C6F 8D 82            [24] 1559 	mov	dpl,r5
      000C71 8E 83            [24] 1560 	mov	dph,r6
      000C73 12 1D 68         [24] 1561 	lcall	_write_number
      000C76 15 81            [12] 1562 	dec	sp
      000C78 15 81            [12] 1563 	dec	sp
      000C7A 15 81            [12] 1564 	dec	sp
      000C7C D0 07            [24] 1565 	pop	ar7
                                   1566 ;	../UI_Manager/ui.c:365: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
      000C7E E5 4D            [12] 1567 	mov	a,_Interval_Or_Duration
      000C80 70 05            [24] 1568 	jnz	00175$
      000C82 7D 92            [12] 1569 	mov	r5,#0x92
      000C84 FE               [12] 1570 	mov	r6,a
      000C85 80 04            [24] 1571 	sjmp	00176$
      000C87                       1572 00175$:
      000C87 7D 22            [12] 1573 	mov	r5,#0x22
      000C89 7E 00            [12] 1574 	mov	r6,#0x00
      000C8B                       1575 00176$:
      000C8B 8D 82            [24] 1576 	mov	dpl,r5
      000C8D C0 07            [24] 1577 	push	ar7
      000C8F E4               [12] 1578 	clr	a
      000C90 C0 E0            [24] 1579 	push	acc
      000C92 74 0B            [12] 1580 	mov	a,#0x0b
      000C94 C0 E0            [24] 1581 	push	acc
      000C96 12 1F 9B         [24] 1582 	lcall	_write_char
      000C99 15 81            [12] 1583 	dec	sp
      000C9B 15 81            [12] 1584 	dec	sp
      000C9D D0 07            [24] 1585 	pop	ar7
                                   1586 ;	../UI_Manager/ui.c:367: timer = temp;
      000C9F 8F 0C            [24] 1587 	mov	_idlePage_timer_65536_59,r7
      000CA1 22               [24] 1588 	ret
      000CA2                       1589 00171$:
                                   1590 ;	../UI_Manager/ui.c:372: temp = get_interval_or_duration();
                                   1591 ;	../UI_Manager/ui.c:374: if(intervalOrDuration != temp){
      000CA2 E5 4D            [12] 1592 	mov	a,_Interval_Or_Duration
      000CA4 FF               [12] 1593 	mov	r7,a
      000CA5 B5 0D 02         [24] 1594 	cjne	a,_idlePage_intervalOrDuration_65536_59,00372$
      000CA8 80 47            [24] 1595 	sjmp	00167$
      000CAA                       1596 00372$:
                                   1597 ;	../UI_Manager/ui.c:375: if(temp == INTERVAL){
      000CAA EF               [12] 1598 	mov	a,r7
      000CAB 70 22            [24] 1599 	jnz	00164$
                                   1600 ;	../UI_Manager/ui.c:376: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
      000CAD C0 07            [24] 1601 	push	ar7
      000CAF E4               [12] 1602 	clr	a
      000CB0 C0 E0            [24] 1603 	push	acc
      000CB2 04               [12] 1604 	inc	a
      000CB3 C0 E0            [24] 1605 	push	acc
      000CB5 E4               [12] 1606 	clr	a
      000CB6 C0 E0            [24] 1607 	push	acc
      000CB8 74 09            [12] 1608 	mov	a,#0x09
      000CBA C0 E0            [24] 1609 	push	acc
      000CBC 90 37 A1         [24] 1610 	mov	dptr,#___str_15
      000CBF 75 F0 80         [24] 1611 	mov	b,#0x80
      000CC2 12 1C AB         [24] 1612 	lcall	_write_string
      000CC5 E5 81            [12] 1613 	mov	a,sp
      000CC7 24 FC            [12] 1614 	add	a,#0xfc
      000CC9 F5 81            [12] 1615 	mov	sp,a
      000CCB D0 07            [24] 1616 	pop	ar7
      000CCD 80 20            [24] 1617 	sjmp	00165$
      000CCF                       1618 00164$:
                                   1619 ;	../UI_Manager/ui.c:378: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
      000CCF C0 07            [24] 1620 	push	ar7
      000CD1 E4               [12] 1621 	clr	a
      000CD2 C0 E0            [24] 1622 	push	acc
      000CD4 04               [12] 1623 	inc	a
      000CD5 C0 E0            [24] 1624 	push	acc
      000CD7 E4               [12] 1625 	clr	a
      000CD8 C0 E0            [24] 1626 	push	acc
      000CDA 74 09            [12] 1627 	mov	a,#0x09
      000CDC C0 E0            [24] 1628 	push	acc
      000CDE 90 37 AA         [24] 1629 	mov	dptr,#___str_16
      000CE1 75 F0 80         [24] 1630 	mov	b,#0x80
      000CE4 12 1C AB         [24] 1631 	lcall	_write_string
      000CE7 E5 81            [12] 1632 	mov	a,sp
      000CE9 24 FC            [12] 1633 	add	a,#0xfc
      000CEB F5 81            [12] 1634 	mov	sp,a
      000CED D0 07            [24] 1635 	pop	ar7
      000CEF                       1636 00165$:
                                   1637 ;	../UI_Manager/ui.c:381: intervalOrDuration = temp;
      000CEF 8F 0D            [24] 1638 	mov	_idlePage_intervalOrDuration_65536_59,r7
      000CF1                       1639 00167$:
                                   1640 ;	../UI_Manager/ui.c:384: temp = get_timer();
                                   1641 ;	../UI_Manager/ui.c:386: if(timer != temp){
      000CF1 E5 4C            [12] 1642 	mov	a,_Timer
      000CF3 FF               [12] 1643 	mov	r7,a
      000CF4 B5 0C 01         [24] 1644 	cjne	a,_idlePage_timer_65536_59,00374$
      000CF7 22               [24] 1645 	ret
      000CF8                       1646 00374$:
                                   1647 ;	../UI_Manager/ui.c:388: write_number(temp, NUMBER_END_INDEX-1, LINE_1, NOT_SELECTED);
      000CF8 8F 05            [24] 1648 	mov	ar5,r7
      000CFA 7E 00            [12] 1649 	mov	r6,#0x00
      000CFC C0 07            [24] 1650 	push	ar7
      000CFE E4               [12] 1651 	clr	a
      000CFF C0 E0            [24] 1652 	push	acc
      000D01 04               [12] 1653 	inc	a
      000D02 C0 E0            [24] 1654 	push	acc
      000D04 74 0B            [12] 1655 	mov	a,#0x0b
      000D06 C0 E0            [24] 1656 	push	acc
      000D08 8D 82            [24] 1657 	mov	dpl,r5
      000D0A 8E 83            [24] 1658 	mov	dph,r6
      000D0C 12 1D 68         [24] 1659 	lcall	_write_number
      000D0F 15 81            [12] 1660 	dec	sp
      000D11 15 81            [12] 1661 	dec	sp
      000D13 15 81            [12] 1662 	dec	sp
      000D15 D0 07            [24] 1663 	pop	ar7
                                   1664 ;	../UI_Manager/ui.c:390: timer = temp;
      000D17 8F 0C            [24] 1665 	mov	_idlePage_timer_65536_59,r7
                                   1666 ;	../UI_Manager/ui.c:394: }
      000D19 22               [24] 1667 	ret
                                   1668 ;------------------------------------------------------------
                                   1669 ;Allocation info for local variables in function 'fogLevelPage'
                                   1670 ;------------------------------------------------------------
                                   1671 ;action                    Allocated to registers r7 
                                   1672 ;------------------------------------------------------------
                                   1673 ;	../UI_Manager/ui.c:396: void fogLevelPage(uint8_t action){
                                   1674 ;	-----------------------------------------
                                   1675 ;	 function fogLevelPage
                                   1676 ;	-----------------------------------------
      000D1A                       1677 _fogLevelPage:
      000D1A AF 82            [24] 1678 	mov	r7,dpl
                                   1679 ;	../UI_Manager/ui.c:398: switch (action)
      000D1C BF 01 02         [24] 1680 	cjne	r7,#0x01,00152$
      000D1F 80 46            [24] 1681 	sjmp	00104$
      000D21                       1682 00152$:
      000D21 BF 02 02         [24] 1683 	cjne	r7,#0x02,00153$
      000D24 80 35            [24] 1684 	sjmp	00103$
      000D26                       1685 00153$:
      000D26 BF 03 02         [24] 1686 	cjne	r7,#0x03,00154$
      000D29 80 05            [24] 1687 	sjmp	00101$
      000D2B                       1688 00154$:
                                   1689 ;	../UI_Manager/ui.c:400: case BUTTON_UP:
      000D2B BF 0B 45         [24] 1690 	cjne	r7,#0x0b,00105$
      000D2E 80 15            [24] 1691 	sjmp	00102$
      000D30                       1692 00101$:
                                   1693 ;	../UI_Manager/ui.c:401: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
      000D30 E4               [12] 1694 	clr	a
      000D31 C0 E0            [24] 1695 	push	acc
      000D33 04               [12] 1696 	inc	a
      000D34 C0 E0            [24] 1697 	push	acc
      000D36 75 82 00         [24] 1698 	mov	dpl,#0x00
      000D39 12 2F C0         [24] 1699 	lcall	_set_runtime_data
      000D3C 15 81            [12] 1700 	dec	sp
      000D3E 15 81            [12] 1701 	dec	sp
                                   1702 ;	../UI_Manager/ui.c:402: changed = 0xFF;
      000D40 75 0A FF         [24] 1703 	mov	_changed,#0xff
                                   1704 ;	../UI_Manager/ui.c:403: break;
                                   1705 ;	../UI_Manager/ui.c:404: case BUTTON_DOWN:
      000D43 80 2E            [24] 1706 	sjmp	00105$
      000D45                       1707 00102$:
                                   1708 ;	../UI_Manager/ui.c:405: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
      000D45 E4               [12] 1709 	clr	a
      000D46 C0 E0            [24] 1710 	push	acc
      000D48 74 02            [12] 1711 	mov	a,#0x02
      000D4A C0 E0            [24] 1712 	push	acc
      000D4C 75 82 00         [24] 1713 	mov	dpl,#0x00
      000D4F 12 2F C0         [24] 1714 	lcall	_set_runtime_data
      000D52 15 81            [12] 1715 	dec	sp
      000D54 15 81            [12] 1716 	dec	sp
                                   1717 ;	../UI_Manager/ui.c:406: changed = 0xFF;  
      000D56 75 0A FF         [24] 1718 	mov	_changed,#0xff
                                   1719 ;	../UI_Manager/ui.c:407: break;
                                   1720 ;	../UI_Manager/ui.c:408: case BUTTON_FUNCTION:
      000D59 80 18            [24] 1721 	sjmp	00105$
      000D5B                       1722 00103$:
                                   1723 ;	../UI_Manager/ui.c:409: set_ui_state(INC, NULL);
      000D5B E4               [12] 1724 	clr	a
      000D5C C0 E0            [24] 1725 	push	acc
      000D5E 75 82 01         [24] 1726 	mov	dpl,#0x01
      000D61 12 17 40         [24] 1727 	lcall	_set_ui_state
      000D64 15 81            [12] 1728 	dec	sp
                                   1729 ;	../UI_Manager/ui.c:410: return;
      000D66 22               [24] 1730 	ret
                                   1731 ;	../UI_Manager/ui.c:411: case BUTTON_TIMER:
      000D67                       1732 00104$:
                                   1733 ;	../UI_Manager/ui.c:412: set_ui_state(DEC, NULL);
      000D67 E4               [12] 1734 	clr	a
      000D68 C0 E0            [24] 1735 	push	acc
      000D6A 75 82 02         [24] 1736 	mov	dpl,#0x02
      000D6D 12 17 40         [24] 1737 	lcall	_set_ui_state
      000D70 15 81            [12] 1738 	dec	sp
                                   1739 ;	../UI_Manager/ui.c:413: return;
      000D72 22               [24] 1740 	ret
                                   1741 ;	../UI_Manager/ui.c:414: }
      000D73                       1742 00105$:
                                   1743 ;	../UI_Manager/ui.c:416: if(Changed){
      000D73 E5 09            [12] 1744 	mov	a,_Changed
      000D75 60 28            [24] 1745 	jz	00107$
                                   1746 ;	../UI_Manager/ui.c:417: Changed = 0x00;
      000D77 75 09 00         [24] 1747 	mov	_Changed,#0x00
                                   1748 ;	../UI_Manager/ui.c:418: changed = 0xFF;
      000D7A 75 0A FF         [24] 1749 	mov	_changed,#0xff
                                   1750 ;	../UI_Manager/ui.c:420: exe_command(CLEAR_DISPLAY);
      000D7D 90 80 00         [24] 1751 	mov	dptr,#0x8000
      000D80 12 1F E6         [24] 1752 	lcall	_exe_command
                                   1753 ;	../UI_Manager/ui.c:422: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
      000D83 E4               [12] 1754 	clr	a
      000D84 C0 E0            [24] 1755 	push	acc
      000D86 C0 E0            [24] 1756 	push	acc
      000D88 74 03            [12] 1757 	mov	a,#0x03
      000D8A C0 E0            [24] 1758 	push	acc
      000D8C 74 0A            [12] 1759 	mov	a,#0x0a
      000D8E C0 E0            [24] 1760 	push	acc
      000D90 90 37 B3         [24] 1761 	mov	dptr,#___str_17
      000D93 75 F0 80         [24] 1762 	mov	b,#0x80
      000D96 12 1C AB         [24] 1763 	lcall	_write_string
      000D99 E5 81            [12] 1764 	mov	a,sp
      000D9B 24 FC            [12] 1765 	add	a,#0xfc
      000D9D F5 81            [12] 1766 	mov	sp,a
      000D9F                       1767 00107$:
                                   1768 ;	../UI_Manager/ui.c:426: if(changed){
      000D9F E5 0A            [12] 1769 	mov	a,_changed
      000DA1 70 01            [24] 1770 	jnz	00157$
      000DA3 22               [24] 1771 	ret
      000DA4                       1772 00157$:
                                   1773 ;	../UI_Manager/ui.c:427: changed = 0x00;
      000DA4 75 0A 00         [24] 1774 	mov	_changed,#0x00
                                   1775 ;	../UI_Manager/ui.c:429: switch (get_runtime_data(FOG_POWER_INDEX))
      000DA7 75 82 00         [24] 1776 	mov	dpl,#0x00
      000DAA 12 2F 00         [24] 1777 	lcall	_get_runtime_data
      000DAD AF 82            [24] 1778 	mov	r7,dpl
      000DAF BF 00 02         [24] 1779 	cjne	r7,#0x00,00158$
      000DB2 80 0C            [24] 1780 	sjmp	00108$
      000DB4                       1781 00158$:
      000DB4 BF 01 02         [24] 1782 	cjne	r7,#0x01,00159$
      000DB7 80 43            [24] 1783 	sjmp	00109$
      000DB9                       1784 00159$:
      000DB9 BF 02 03         [24] 1785 	cjne	r7,#0x02,00160$
      000DBC 02 0E 4A         [24] 1786 	ljmp	00110$
      000DBF                       1787 00160$:
      000DBF 22               [24] 1788 	ret
                                   1789 ;	../UI_Manager/ui.c:431: case OPTION_FOG_LOW:
      000DC0                       1790 00108$:
                                   1791 ;	../UI_Manager/ui.c:432: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000DC0 75 82 00         [24] 1792 	mov	dpl,#0x00
      000DC3 12 18 4D         [24] 1793 	lcall	_getString
      000DC6 AD 82            [24] 1794 	mov	r5,dpl
      000DC8 AE 83            [24] 1795 	mov	r6,dph
      000DCA AF F0            [24] 1796 	mov	r7,b
      000DCC E4               [12] 1797 	clr	a
      000DCD C0 E0            [24] 1798 	push	acc
      000DCF 04               [12] 1799 	inc	a
      000DD0 C0 E0            [24] 1800 	push	acc
      000DD2 74 03            [12] 1801 	mov	a,#0x03
      000DD4 C0 E0            [24] 1802 	push	acc
      000DD6 74 10            [12] 1803 	mov	a,#0x10
      000DD8 C0 E0            [24] 1804 	push	acc
      000DDA 8D 82            [24] 1805 	mov	dpl,r5
      000DDC 8E 83            [24] 1806 	mov	dph,r6
      000DDE 8F F0            [24] 1807 	mov	b,r7
      000DE0 12 1C AB         [24] 1808 	lcall	_write_string
      000DE3 E5 81            [12] 1809 	mov	a,sp
      000DE5 24 FC            [12] 1810 	add	a,#0xfc
      000DE7 F5 81            [12] 1811 	mov	sp,a
                                   1812 ;	../UI_Manager/ui.c:433: write_char(CHAR_LVL_1, 12, LINE_1);
      000DE9 74 01            [12] 1813 	mov	a,#0x01
      000DEB C0 E0            [24] 1814 	push	acc
      000DED 74 0C            [12] 1815 	mov	a,#0x0c
      000DEF C0 E0            [24] 1816 	push	acc
      000DF1 75 82 40         [24] 1817 	mov	dpl,#0x40
      000DF4 12 1F 9B         [24] 1818 	lcall	_write_char
      000DF7 15 81            [12] 1819 	dec	sp
      000DF9 15 81            [12] 1820 	dec	sp
                                   1821 ;	../UI_Manager/ui.c:434: break;
      000DFB 22               [24] 1822 	ret
                                   1823 ;	../UI_Manager/ui.c:435: case OPTION_FOG_MEDIUM:
      000DFC                       1824 00109$:
                                   1825 ;	../UI_Manager/ui.c:436: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000DFC 75 82 01         [24] 1826 	mov	dpl,#0x01
      000DFF 12 18 4D         [24] 1827 	lcall	_getString
      000E02 AD 82            [24] 1828 	mov	r5,dpl
      000E04 AE 83            [24] 1829 	mov	r6,dph
      000E06 AF F0            [24] 1830 	mov	r7,b
      000E08 E4               [12] 1831 	clr	a
      000E09 C0 E0            [24] 1832 	push	acc
      000E0B 04               [12] 1833 	inc	a
      000E0C C0 E0            [24] 1834 	push	acc
      000E0E 74 03            [12] 1835 	mov	a,#0x03
      000E10 C0 E0            [24] 1836 	push	acc
      000E12 74 10            [12] 1837 	mov	a,#0x10
      000E14 C0 E0            [24] 1838 	push	acc
      000E16 8D 82            [24] 1839 	mov	dpl,r5
      000E18 8E 83            [24] 1840 	mov	dph,r6
      000E1A 8F F0            [24] 1841 	mov	b,r7
      000E1C 12 1C AB         [24] 1842 	lcall	_write_string
      000E1F E5 81            [12] 1843 	mov	a,sp
      000E21 24 FC            [12] 1844 	add	a,#0xfc
      000E23 F5 81            [12] 1845 	mov	sp,a
                                   1846 ;	../UI_Manager/ui.c:437: write_char(CHAR_LVL_1, 12, LINE_1);
      000E25 74 01            [12] 1847 	mov	a,#0x01
      000E27 C0 E0            [24] 1848 	push	acc
      000E29 74 0C            [12] 1849 	mov	a,#0x0c
      000E2B C0 E0            [24] 1850 	push	acc
      000E2D 75 82 40         [24] 1851 	mov	dpl,#0x40
      000E30 12 1F 9B         [24] 1852 	lcall	_write_char
      000E33 15 81            [12] 1853 	dec	sp
      000E35 15 81            [12] 1854 	dec	sp
                                   1855 ;	../UI_Manager/ui.c:438: write_char(CHAR_LVL_2, 13, LINE_1);
      000E37 74 01            [12] 1856 	mov	a,#0x01
      000E39 C0 E0            [24] 1857 	push	acc
      000E3B 74 0D            [12] 1858 	mov	a,#0x0d
      000E3D C0 E0            [24] 1859 	push	acc
      000E3F 75 82 C0         [24] 1860 	mov	dpl,#0xc0
      000E42 12 1F 9B         [24] 1861 	lcall	_write_char
      000E45 15 81            [12] 1862 	dec	sp
      000E47 15 81            [12] 1863 	dec	sp
                                   1864 ;	../UI_Manager/ui.c:439: break;
                                   1865 ;	../UI_Manager/ui.c:440: case OPTION_FOG_HIGH:
      000E49 22               [24] 1866 	ret
      000E4A                       1867 00110$:
                                   1868 ;	../UI_Manager/ui.c:441: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E4A 75 82 02         [24] 1869 	mov	dpl,#0x02
      000E4D 12 18 4D         [24] 1870 	lcall	_getString
      000E50 AD 82            [24] 1871 	mov	r5,dpl
      000E52 AE 83            [24] 1872 	mov	r6,dph
      000E54 AF F0            [24] 1873 	mov	r7,b
      000E56 E4               [12] 1874 	clr	a
      000E57 C0 E0            [24] 1875 	push	acc
      000E59 04               [12] 1876 	inc	a
      000E5A C0 E0            [24] 1877 	push	acc
      000E5C 74 03            [12] 1878 	mov	a,#0x03
      000E5E C0 E0            [24] 1879 	push	acc
      000E60 74 10            [12] 1880 	mov	a,#0x10
      000E62 C0 E0            [24] 1881 	push	acc
      000E64 8D 82            [24] 1882 	mov	dpl,r5
      000E66 8E 83            [24] 1883 	mov	dph,r6
      000E68 8F F0            [24] 1884 	mov	b,r7
      000E6A 12 1C AB         [24] 1885 	lcall	_write_string
      000E6D E5 81            [12] 1886 	mov	a,sp
      000E6F 24 FC            [12] 1887 	add	a,#0xfc
      000E71 F5 81            [12] 1888 	mov	sp,a
                                   1889 ;	../UI_Manager/ui.c:442: write_char(CHAR_LVL_1, 12, LINE_1);
      000E73 74 01            [12] 1890 	mov	a,#0x01
      000E75 C0 E0            [24] 1891 	push	acc
      000E77 74 0C            [12] 1892 	mov	a,#0x0c
      000E79 C0 E0            [24] 1893 	push	acc
      000E7B 75 82 40         [24] 1894 	mov	dpl,#0x40
      000E7E 12 1F 9B         [24] 1895 	lcall	_write_char
      000E81 15 81            [12] 1896 	dec	sp
      000E83 15 81            [12] 1897 	dec	sp
                                   1898 ;	../UI_Manager/ui.c:443: write_char(CHAR_LVL_2, 13, LINE_1);
      000E85 74 01            [12] 1899 	mov	a,#0x01
      000E87 C0 E0            [24] 1900 	push	acc
      000E89 74 0D            [12] 1901 	mov	a,#0x0d
      000E8B C0 E0            [24] 1902 	push	acc
      000E8D 75 82 C0         [24] 1903 	mov	dpl,#0xc0
      000E90 12 1F 9B         [24] 1904 	lcall	_write_char
      000E93 15 81            [12] 1905 	dec	sp
      000E95 15 81            [12] 1906 	dec	sp
                                   1907 ;	../UI_Manager/ui.c:444: write_char(CHAR_LVL_3, 14, LINE_1);
      000E97 74 01            [12] 1908 	mov	a,#0x01
      000E99 C0 E0            [24] 1909 	push	acc
      000E9B 74 0E            [12] 1910 	mov	a,#0x0e
      000E9D C0 E0            [24] 1911 	push	acc
      000E9F 75 82 20         [24] 1912 	mov	dpl,#0x20
      000EA2 12 1F 9B         [24] 1913 	lcall	_write_char
      000EA5 15 81            [12] 1914 	dec	sp
      000EA7 15 81            [12] 1915 	dec	sp
                                   1916 ;	../UI_Manager/ui.c:446: }
                                   1917 ;	../UI_Manager/ui.c:449: }
      000EA9 22               [24] 1918 	ret
                                   1919 ;------------------------------------------------------------
                                   1920 ;Allocation info for local variables in function 'fogIntervalPage'
                                   1921 ;------------------------------------------------------------
                                   1922 ;action                    Allocated to registers r7 
                                   1923 ;------------------------------------------------------------
                                   1924 ;	../UI_Manager/ui.c:451: void fogIntervalPage(uint8_t action){
                                   1925 ;	-----------------------------------------
                                   1926 ;	 function fogIntervalPage
                                   1927 ;	-----------------------------------------
      000EAA                       1928 _fogIntervalPage:
      000EAA AF 82            [24] 1929 	mov	r7,dpl
                                   1930 ;	../UI_Manager/ui.c:453: switch (action)
      000EAC BF 01 02         [24] 1931 	cjne	r7,#0x01,00146$
      000EAF 80 50            [24] 1932 	sjmp	00106$
      000EB1                       1933 00146$:
      000EB1 BF 02 02         [24] 1934 	cjne	r7,#0x02,00147$
      000EB4 80 3F            [24] 1935 	sjmp	00105$
      000EB6                       1936 00147$:
      000EB6 BF 03 02         [24] 1937 	cjne	r7,#0x03,00148$
      000EB9 80 0F            [24] 1938 	sjmp	00102$
      000EBB                       1939 00148$:
      000EBB BF 0B 02         [24] 1940 	cjne	r7,#0x0b,00149$
      000EBE 80 1F            [24] 1941 	sjmp	00104$
      000EC0                       1942 00149$:
      000EC0 BF 1F 02         [24] 1943 	cjne	r7,#0x1f,00150$
      000EC3 80 05            [24] 1944 	sjmp	00102$
      000EC5                       1945 00150$:
                                   1946 ;	../UI_Manager/ui.c:456: case BUTTON_UP:
      000EC5 BF 6F 45         [24] 1947 	cjne	r7,#0x6f,00107$
      000EC8 80 15            [24] 1948 	sjmp	00104$
      000ECA                       1949 00102$:
                                   1950 ;	../UI_Manager/ui.c:457: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
      000ECA E4               [12] 1951 	clr	a
      000ECB C0 E0            [24] 1952 	push	acc
      000ECD 04               [12] 1953 	inc	a
      000ECE C0 E0            [24] 1954 	push	acc
      000ED0 75 82 02         [24] 1955 	mov	dpl,#0x02
      000ED3 12 2F C0         [24] 1956 	lcall	_set_runtime_data
      000ED6 15 81            [12] 1957 	dec	sp
      000ED8 15 81            [12] 1958 	dec	sp
                                   1959 ;	../UI_Manager/ui.c:458: changed = 0xFF;
      000EDA 75 0A FF         [24] 1960 	mov	_changed,#0xff
                                   1961 ;	../UI_Manager/ui.c:459: break;
                                   1962 ;	../UI_Manager/ui.c:461: case BUTTON_DOWN:
      000EDD 80 2E            [24] 1963 	sjmp	00107$
      000EDF                       1964 00104$:
                                   1965 ;	../UI_Manager/ui.c:462: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
      000EDF E4               [12] 1966 	clr	a
      000EE0 C0 E0            [24] 1967 	push	acc
      000EE2 74 02            [12] 1968 	mov	a,#0x02
      000EE4 C0 E0            [24] 1969 	push	acc
      000EE6 75 82 02         [24] 1970 	mov	dpl,#0x02
      000EE9 12 2F C0         [24] 1971 	lcall	_set_runtime_data
      000EEC 15 81            [12] 1972 	dec	sp
      000EEE 15 81            [12] 1973 	dec	sp
                                   1974 ;	../UI_Manager/ui.c:463: changed = 0xFF;  
      000EF0 75 0A FF         [24] 1975 	mov	_changed,#0xff
                                   1976 ;	../UI_Manager/ui.c:464: break;
                                   1977 ;	../UI_Manager/ui.c:465: case BUTTON_FUNCTION:
      000EF3 80 18            [24] 1978 	sjmp	00107$
      000EF5                       1979 00105$:
                                   1980 ;	../UI_Manager/ui.c:466: set_ui_state(INC, NULL);
      000EF5 E4               [12] 1981 	clr	a
      000EF6 C0 E0            [24] 1982 	push	acc
      000EF8 75 82 01         [24] 1983 	mov	dpl,#0x01
      000EFB 12 17 40         [24] 1984 	lcall	_set_ui_state
      000EFE 15 81            [12] 1985 	dec	sp
                                   1986 ;	../UI_Manager/ui.c:467: return;
      000F00 22               [24] 1987 	ret
                                   1988 ;	../UI_Manager/ui.c:468: case BUTTON_TIMER:
      000F01                       1989 00106$:
                                   1990 ;	../UI_Manager/ui.c:469: set_ui_state(DEC, NULL);
      000F01 E4               [12] 1991 	clr	a
      000F02 C0 E0            [24] 1992 	push	acc
      000F04 75 82 02         [24] 1993 	mov	dpl,#0x02
      000F07 12 17 40         [24] 1994 	lcall	_set_ui_state
      000F0A 15 81            [12] 1995 	dec	sp
                                   1996 ;	../UI_Manager/ui.c:470: return;
                                   1997 ;	../UI_Manager/ui.c:471: }
      000F0C 22               [24] 1998 	ret
      000F0D                       1999 00107$:
                                   2000 ;	../UI_Manager/ui.c:473: if(Changed){
      000F0D E5 09            [12] 2001 	mov	a,_Changed
      000F0F 60 44            [24] 2002 	jz	00109$
                                   2003 ;	../UI_Manager/ui.c:474: Changed = 0x00;
      000F11 75 09 00         [24] 2004 	mov	_Changed,#0x00
                                   2005 ;	../UI_Manager/ui.c:475: changed = 0xFF;
      000F14 75 0A FF         [24] 2006 	mov	_changed,#0xff
                                   2007 ;	../UI_Manager/ui.c:477: exe_command(CLEAR_DISPLAY);
      000F17 90 80 00         [24] 2008 	mov	dptr,#0x8000
      000F1A 12 1F E6         [24] 2009 	lcall	_exe_command
                                   2010 ;	../UI_Manager/ui.c:479: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
      000F1D E4               [12] 2011 	clr	a
      000F1E C0 E0            [24] 2012 	push	acc
      000F20 C0 E0            [24] 2013 	push	acc
      000F22 74 02            [12] 2014 	mov	a,#0x02
      000F24 C0 E0            [24] 2015 	push	acc
      000F26 74 0D            [12] 2016 	mov	a,#0x0d
      000F28 C0 E0            [24] 2017 	push	acc
      000F2A 90 37 BD         [24] 2018 	mov	dptr,#___str_18
      000F2D 75 F0 80         [24] 2019 	mov	b,#0x80
      000F30 12 1C AB         [24] 2020 	lcall	_write_string
      000F33 E5 81            [12] 2021 	mov	a,sp
      000F35 24 FC            [12] 2022 	add	a,#0xfc
      000F37 F5 81            [12] 2023 	mov	sp,a
                                   2024 ;	../UI_Manager/ui.c:480: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      000F39 E4               [12] 2025 	clr	a
      000F3A C0 E0            [24] 2026 	push	acc
      000F3C 04               [12] 2027 	inc	a
      000F3D C0 E0            [24] 2028 	push	acc
      000F3F 74 07            [12] 2029 	mov	a,#0x07
      000F41 C0 E0            [24] 2030 	push	acc
      000F43 04               [12] 2031 	inc	a
      000F44 C0 E0            [24] 2032 	push	acc
      000F46 90 37 CA         [24] 2033 	mov	dptr,#___str_19
      000F49 75 F0 80         [24] 2034 	mov	b,#0x80
      000F4C 12 1C AB         [24] 2035 	lcall	_write_string
      000F4F E5 81            [12] 2036 	mov	a,sp
      000F51 24 FC            [12] 2037 	add	a,#0xfc
      000F53 F5 81            [12] 2038 	mov	sp,a
      000F55                       2039 00109$:
                                   2040 ;	../UI_Manager/ui.c:484: if(changed){
      000F55 E5 0A            [12] 2041 	mov	a,_changed
      000F57 60 21            [24] 2042 	jz	00112$
                                   2043 ;	../UI_Manager/ui.c:485: changed = 0x00;
      000F59 75 0A 00         [24] 2044 	mov	_changed,#0x00
                                   2045 ;	../UI_Manager/ui.c:487: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);
      000F5C 75 82 02         [24] 2046 	mov	dpl,#0x02
      000F5F 12 2F 00         [24] 2047 	lcall	_get_runtime_data
      000F62 AF 82            [24] 2048 	mov	r7,dpl
      000F64 E4               [12] 2049 	clr	a
      000F65 FE               [12] 2050 	mov	r6,a
      000F66 C0 E0            [24] 2051 	push	acc
      000F68 04               [12] 2052 	inc	a
      000F69 C0 E0            [24] 2053 	push	acc
      000F6B C0 E0            [24] 2054 	push	acc
      000F6D 8F 82            [24] 2055 	mov	dpl,r7
      000F6F 8E 83            [24] 2056 	mov	dph,r6
      000F71 12 1D 68         [24] 2057 	lcall	_write_number
      000F74 15 81            [12] 2058 	dec	sp
      000F76 15 81            [12] 2059 	dec	sp
      000F78 15 81            [12] 2060 	dec	sp
      000F7A                       2061 00112$:
                                   2062 ;	../UI_Manager/ui.c:492: }
      000F7A 22               [24] 2063 	ret
                                   2064 ;------------------------------------------------------------
                                   2065 ;Allocation info for local variables in function 'fogDurationPage'
                                   2066 ;------------------------------------------------------------
                                   2067 ;action                    Allocated to registers r7 
                                   2068 ;------------------------------------------------------------
                                   2069 ;	../UI_Manager/ui.c:494: void fogDurationPage(uint8_t action){
                                   2070 ;	-----------------------------------------
                                   2071 ;	 function fogDurationPage
                                   2072 ;	-----------------------------------------
      000F7B                       2073 _fogDurationPage:
      000F7B AF 82            [24] 2074 	mov	r7,dpl
                                   2075 ;	../UI_Manager/ui.c:496: switch (action)
      000F7D BF 01 02         [24] 2076 	cjne	r7,#0x01,00146$
      000F80 80 50            [24] 2077 	sjmp	00106$
      000F82                       2078 00146$:
      000F82 BF 02 02         [24] 2079 	cjne	r7,#0x02,00147$
      000F85 80 3F            [24] 2080 	sjmp	00105$
      000F87                       2081 00147$:
      000F87 BF 03 02         [24] 2082 	cjne	r7,#0x03,00148$
      000F8A 80 0F            [24] 2083 	sjmp	00102$
      000F8C                       2084 00148$:
      000F8C BF 0B 02         [24] 2085 	cjne	r7,#0x0b,00149$
      000F8F 80 1F            [24] 2086 	sjmp	00104$
      000F91                       2087 00149$:
      000F91 BF 1F 02         [24] 2088 	cjne	r7,#0x1f,00150$
      000F94 80 05            [24] 2089 	sjmp	00102$
      000F96                       2090 00150$:
                                   2091 ;	../UI_Manager/ui.c:499: case BUTTON_UP:
      000F96 BF 6F 45         [24] 2092 	cjne	r7,#0x6f,00107$
      000F99 80 15            [24] 2093 	sjmp	00104$
      000F9B                       2094 00102$:
                                   2095 ;	../UI_Manager/ui.c:500: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
      000F9B E4               [12] 2096 	clr	a
      000F9C C0 E0            [24] 2097 	push	acc
      000F9E 04               [12] 2098 	inc	a
      000F9F C0 E0            [24] 2099 	push	acc
      000FA1 75 82 01         [24] 2100 	mov	dpl,#0x01
      000FA4 12 2F C0         [24] 2101 	lcall	_set_runtime_data
      000FA7 15 81            [12] 2102 	dec	sp
      000FA9 15 81            [12] 2103 	dec	sp
                                   2104 ;	../UI_Manager/ui.c:501: changed = 0xFF;
      000FAB 75 0A FF         [24] 2105 	mov	_changed,#0xff
                                   2106 ;	../UI_Manager/ui.c:502: break;
                                   2107 ;	../UI_Manager/ui.c:504: case BUTTON_DOWN:
      000FAE 80 2E            [24] 2108 	sjmp	00107$
      000FB0                       2109 00104$:
                                   2110 ;	../UI_Manager/ui.c:505: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
      000FB0 E4               [12] 2111 	clr	a
      000FB1 C0 E0            [24] 2112 	push	acc
      000FB3 74 02            [12] 2113 	mov	a,#0x02
      000FB5 C0 E0            [24] 2114 	push	acc
      000FB7 75 82 01         [24] 2115 	mov	dpl,#0x01
      000FBA 12 2F C0         [24] 2116 	lcall	_set_runtime_data
      000FBD 15 81            [12] 2117 	dec	sp
      000FBF 15 81            [12] 2118 	dec	sp
                                   2119 ;	../UI_Manager/ui.c:506: changed = 0xFF;  
      000FC1 75 0A FF         [24] 2120 	mov	_changed,#0xff
                                   2121 ;	../UI_Manager/ui.c:507: break;
                                   2122 ;	../UI_Manager/ui.c:508: case BUTTON_FUNCTION:
      000FC4 80 18            [24] 2123 	sjmp	00107$
      000FC6                       2124 00105$:
                                   2125 ;	../UI_Manager/ui.c:509: set_ui_state(INC, NULL);
      000FC6 E4               [12] 2126 	clr	a
      000FC7 C0 E0            [24] 2127 	push	acc
      000FC9 75 82 01         [24] 2128 	mov	dpl,#0x01
      000FCC 12 17 40         [24] 2129 	lcall	_set_ui_state
      000FCF 15 81            [12] 2130 	dec	sp
                                   2131 ;	../UI_Manager/ui.c:510: return;
      000FD1 22               [24] 2132 	ret
                                   2133 ;	../UI_Manager/ui.c:511: case BUTTON_TIMER:
      000FD2                       2134 00106$:
                                   2135 ;	../UI_Manager/ui.c:512: set_ui_state(DEC, NULL);
      000FD2 E4               [12] 2136 	clr	a
      000FD3 C0 E0            [24] 2137 	push	acc
      000FD5 75 82 02         [24] 2138 	mov	dpl,#0x02
      000FD8 12 17 40         [24] 2139 	lcall	_set_ui_state
      000FDB 15 81            [12] 2140 	dec	sp
                                   2141 ;	../UI_Manager/ui.c:513: return;
                                   2142 ;	../UI_Manager/ui.c:514: }
      000FDD 22               [24] 2143 	ret
      000FDE                       2144 00107$:
                                   2145 ;	../UI_Manager/ui.c:516: if(Changed){
      000FDE E5 09            [12] 2146 	mov	a,_Changed
      000FE0 60 44            [24] 2147 	jz	00109$
                                   2148 ;	../UI_Manager/ui.c:517: Changed = 0x00;
      000FE2 75 09 00         [24] 2149 	mov	_Changed,#0x00
                                   2150 ;	../UI_Manager/ui.c:518: changed = 0xFF;
      000FE5 75 0A FF         [24] 2151 	mov	_changed,#0xff
                                   2152 ;	../UI_Manager/ui.c:520: exe_command(CLEAR_DISPLAY);
      000FE8 90 80 00         [24] 2153 	mov	dptr,#0x8000
      000FEB 12 1F E6         [24] 2154 	lcall	_exe_command
                                   2155 ;	../UI_Manager/ui.c:522: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
      000FEE E4               [12] 2156 	clr	a
      000FEF C0 E0            [24] 2157 	push	acc
      000FF1 C0 E0            [24] 2158 	push	acc
      000FF3 74 02            [12] 2159 	mov	a,#0x02
      000FF5 C0 E0            [24] 2160 	push	acc
      000FF7 74 0D            [12] 2161 	mov	a,#0x0d
      000FF9 C0 E0            [24] 2162 	push	acc
      000FFB 90 37 D2         [24] 2163 	mov	dptr,#___str_20
      000FFE 75 F0 80         [24] 2164 	mov	b,#0x80
      001001 12 1C AB         [24] 2165 	lcall	_write_string
      001004 E5 81            [12] 2166 	mov	a,sp
      001006 24 FC            [12] 2167 	add	a,#0xfc
      001008 F5 81            [12] 2168 	mov	sp,a
                                   2169 ;	../UI_Manager/ui.c:523: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      00100A E4               [12] 2170 	clr	a
      00100B C0 E0            [24] 2171 	push	acc
      00100D 04               [12] 2172 	inc	a
      00100E C0 E0            [24] 2173 	push	acc
      001010 74 07            [12] 2174 	mov	a,#0x07
      001012 C0 E0            [24] 2175 	push	acc
      001014 04               [12] 2176 	inc	a
      001015 C0 E0            [24] 2177 	push	acc
      001017 90 37 CA         [24] 2178 	mov	dptr,#___str_19
      00101A 75 F0 80         [24] 2179 	mov	b,#0x80
      00101D 12 1C AB         [24] 2180 	lcall	_write_string
      001020 E5 81            [12] 2181 	mov	a,sp
      001022 24 FC            [12] 2182 	add	a,#0xfc
      001024 F5 81            [12] 2183 	mov	sp,a
      001026                       2184 00109$:
                                   2185 ;	../UI_Manager/ui.c:527: if(changed){
      001026 E5 0A            [12] 2186 	mov	a,_changed
      001028 60 21            [24] 2187 	jz	00112$
                                   2188 ;	../UI_Manager/ui.c:528: changed = 0x00;
      00102A 75 0A 00         [24] 2189 	mov	_changed,#0x00
                                   2190 ;	../UI_Manager/ui.c:530: write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);
      00102D 75 82 01         [24] 2191 	mov	dpl,#0x01
      001030 12 2F 00         [24] 2192 	lcall	_get_runtime_data
      001033 AF 82            [24] 2193 	mov	r7,dpl
      001035 E4               [12] 2194 	clr	a
      001036 FE               [12] 2195 	mov	r6,a
      001037 C0 E0            [24] 2196 	push	acc
      001039 04               [12] 2197 	inc	a
      00103A C0 E0            [24] 2198 	push	acc
      00103C C0 E0            [24] 2199 	push	acc
      00103E 8F 82            [24] 2200 	mov	dpl,r7
      001040 8E 83            [24] 2201 	mov	dph,r6
      001042 12 1D 68         [24] 2202 	lcall	_write_number
      001045 15 81            [12] 2203 	dec	sp
      001047 15 81            [12] 2204 	dec	sp
      001049 15 81            [12] 2205 	dec	sp
      00104B                       2206 00112$:
                                   2207 ;	../UI_Manager/ui.c:533: }
      00104B 22               [24] 2208 	ret
                                   2209 ;------------------------------------------------------------
                                   2210 ;Allocation info for local variables in function 'macroPage'
                                   2211 ;------------------------------------------------------------
                                   2212 ;action                    Allocated to registers r7 
                                   2213 ;------------------------------------------------------------
                                   2214 ;	../UI_Manager/ui.c:535: void macroPage(uint8_t action){
                                   2215 ;	-----------------------------------------
                                   2216 ;	 function macroPage
                                   2217 ;	-----------------------------------------
      00104C                       2218 _macroPage:
      00104C AF 82            [24] 2219 	mov	r7,dpl
                                   2220 ;	../UI_Manager/ui.c:537: switch (action)
      00104E BF 01 02         [24] 2221 	cjne	r7,#0x01,00146$
      001051 80 50            [24] 2222 	sjmp	00106$
      001053                       2223 00146$:
      001053 BF 02 02         [24] 2224 	cjne	r7,#0x02,00147$
      001056 80 3F            [24] 2225 	sjmp	00105$
      001058                       2226 00147$:
      001058 BF 03 02         [24] 2227 	cjne	r7,#0x03,00148$
      00105B 80 0F            [24] 2228 	sjmp	00102$
      00105D                       2229 00148$:
      00105D BF 0B 02         [24] 2230 	cjne	r7,#0x0b,00149$
      001060 80 1F            [24] 2231 	sjmp	00104$
      001062                       2232 00149$:
      001062 BF 1F 02         [24] 2233 	cjne	r7,#0x1f,00150$
      001065 80 05            [24] 2234 	sjmp	00102$
      001067                       2235 00150$:
                                   2236 ;	../UI_Manager/ui.c:540: case BUTTON_UP:
      001067 BF 6F 45         [24] 2237 	cjne	r7,#0x6f,00107$
      00106A 80 15            [24] 2238 	sjmp	00104$
      00106C                       2239 00102$:
                                   2240 ;	../UI_Manager/ui.c:541: set_runtime_data(MACRO_INDEX, INC, NULL);
      00106C E4               [12] 2241 	clr	a
      00106D C0 E0            [24] 2242 	push	acc
      00106F 04               [12] 2243 	inc	a
      001070 C0 E0            [24] 2244 	push	acc
      001072 75 82 03         [24] 2245 	mov	dpl,#0x03
      001075 12 2F C0         [24] 2246 	lcall	_set_runtime_data
      001078 15 81            [12] 2247 	dec	sp
      00107A 15 81            [12] 2248 	dec	sp
                                   2249 ;	../UI_Manager/ui.c:542: changed = 0xFF;
      00107C 75 0A FF         [24] 2250 	mov	_changed,#0xff
                                   2251 ;	../UI_Manager/ui.c:543: break;
                                   2252 ;	../UI_Manager/ui.c:545: case BUTTON_DOWN:
      00107F 80 2E            [24] 2253 	sjmp	00107$
      001081                       2254 00104$:
                                   2255 ;	../UI_Manager/ui.c:546: set_runtime_data(MACRO_INDEX, DEC, NULL);
      001081 E4               [12] 2256 	clr	a
      001082 C0 E0            [24] 2257 	push	acc
      001084 74 02            [12] 2258 	mov	a,#0x02
      001086 C0 E0            [24] 2259 	push	acc
      001088 75 82 03         [24] 2260 	mov	dpl,#0x03
      00108B 12 2F C0         [24] 2261 	lcall	_set_runtime_data
      00108E 15 81            [12] 2262 	dec	sp
      001090 15 81            [12] 2263 	dec	sp
                                   2264 ;	../UI_Manager/ui.c:547: changed = 0xFF;  
      001092 75 0A FF         [24] 2265 	mov	_changed,#0xff
                                   2266 ;	../UI_Manager/ui.c:548: break;
                                   2267 ;	../UI_Manager/ui.c:549: case BUTTON_FUNCTION:
      001095 80 18            [24] 2268 	sjmp	00107$
      001097                       2269 00105$:
                                   2270 ;	../UI_Manager/ui.c:550: set_ui_state(INC, NULL);
      001097 E4               [12] 2271 	clr	a
      001098 C0 E0            [24] 2272 	push	acc
      00109A 75 82 01         [24] 2273 	mov	dpl,#0x01
      00109D 12 17 40         [24] 2274 	lcall	_set_ui_state
      0010A0 15 81            [12] 2275 	dec	sp
                                   2276 ;	../UI_Manager/ui.c:551: return;
      0010A2 22               [24] 2277 	ret
                                   2278 ;	../UI_Manager/ui.c:552: case BUTTON_TIMER:
      0010A3                       2279 00106$:
                                   2280 ;	../UI_Manager/ui.c:553: set_ui_state(DEC, NULL);
      0010A3 E4               [12] 2281 	clr	a
      0010A4 C0 E0            [24] 2282 	push	acc
      0010A6 75 82 02         [24] 2283 	mov	dpl,#0x02
      0010A9 12 17 40         [24] 2284 	lcall	_set_ui_state
      0010AC 15 81            [12] 2285 	dec	sp
                                   2286 ;	../UI_Manager/ui.c:554: return;
                                   2287 ;	../UI_Manager/ui.c:555: }
      0010AE 22               [24] 2288 	ret
      0010AF                       2289 00107$:
                                   2290 ;	../UI_Manager/ui.c:557: if(Changed){
      0010AF E5 09            [12] 2291 	mov	a,_Changed
      0010B1 60 28            [24] 2292 	jz	00109$
                                   2293 ;	../UI_Manager/ui.c:558: Changed = 0x00;
      0010B3 75 09 00         [24] 2294 	mov	_Changed,#0x00
                                   2295 ;	../UI_Manager/ui.c:559: changed = 0xFF;
      0010B6 75 0A FF         [24] 2296 	mov	_changed,#0xff
                                   2297 ;	../UI_Manager/ui.c:561: exe_command(CLEAR_DISPLAY);
      0010B9 90 80 00         [24] 2298 	mov	dptr,#0x8000
      0010BC 12 1F E6         [24] 2299 	lcall	_exe_command
                                   2300 ;	../UI_Manager/ui.c:563: write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);
      0010BF E4               [12] 2301 	clr	a
      0010C0 C0 E0            [24] 2302 	push	acc
      0010C2 C0 E0            [24] 2303 	push	acc
      0010C4 74 04            [12] 2304 	mov	a,#0x04
      0010C6 C0 E0            [24] 2305 	push	acc
      0010C8 74 07            [12] 2306 	mov	a,#0x07
      0010CA C0 E0            [24] 2307 	push	acc
      0010CC 90 37 DF         [24] 2308 	mov	dptr,#___str_21
      0010CF 75 F0 80         [24] 2309 	mov	b,#0x80
      0010D2 12 1C AB         [24] 2310 	lcall	_write_string
      0010D5 E5 81            [12] 2311 	mov	a,sp
      0010D7 24 FC            [12] 2312 	add	a,#0xfc
      0010D9 F5 81            [12] 2313 	mov	sp,a
      0010DB                       2314 00109$:
                                   2315 ;	../UI_Manager/ui.c:567: if(changed){
      0010DB E5 0A            [12] 2316 	mov	a,_changed
      0010DD 60 36            [24] 2317 	jz	00112$
                                   2318 ;	../UI_Manager/ui.c:568: changed = 0x00;
      0010DF 75 0A 00         [24] 2319 	mov	_changed,#0x00
                                   2320 ;	../UI_Manager/ui.c:570: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      0010E2 75 82 03         [24] 2321 	mov	dpl,#0x03
      0010E5 12 2F 00         [24] 2322 	lcall	_get_runtime_data
      0010E8 AF 82            [24] 2323 	mov	r7,dpl
      0010EA 74 14            [12] 2324 	mov	a,#0x14
      0010EC 2F               [12] 2325 	add	a,r7
      0010ED F5 82            [12] 2326 	mov	dpl,a
      0010EF 12 18 4D         [24] 2327 	lcall	_getString
      0010F2 AD 82            [24] 2328 	mov	r5,dpl
      0010F4 AE 83            [24] 2329 	mov	r6,dph
      0010F6 AF F0            [24] 2330 	mov	r7,b
      0010F8 E4               [12] 2331 	clr	a
      0010F9 C0 E0            [24] 2332 	push	acc
      0010FB 04               [12] 2333 	inc	a
      0010FC C0 E0            [24] 2334 	push	acc
      0010FE 74 06            [12] 2335 	mov	a,#0x06
      001100 C0 E0            [24] 2336 	push	acc
      001102 74 10            [12] 2337 	mov	a,#0x10
      001104 C0 E0            [24] 2338 	push	acc
      001106 8D 82            [24] 2339 	mov	dpl,r5
      001108 8E 83            [24] 2340 	mov	dph,r6
      00110A 8F F0            [24] 2341 	mov	b,r7
      00110C 12 1C AB         [24] 2342 	lcall	_write_string
      00110F E5 81            [12] 2343 	mov	a,sp
      001111 24 FC            [12] 2344 	add	a,#0xfc
      001113 F5 81            [12] 2345 	mov	sp,a
      001115                       2346 00112$:
                                   2347 ;	../UI_Manager/ui.c:573: }
      001115 22               [24] 2348 	ret
                                   2349 ;------------------------------------------------------------
                                   2350 ;Allocation info for local variables in function 'macroSpeedPage'
                                   2351 ;------------------------------------------------------------
                                   2352 ;action                    Allocated to registers r7 
                                   2353 ;------------------------------------------------------------
                                   2354 ;	../UI_Manager/ui.c:575: void macroSpeedPage(uint8_t action){
                                   2355 ;	-----------------------------------------
                                   2356 ;	 function macroSpeedPage
                                   2357 ;	-----------------------------------------
      001116                       2358 _macroSpeedPage:
      001116 AF 82            [24] 2359 	mov	r7,dpl
                                   2360 ;	../UI_Manager/ui.c:577: switch (action)
      001118 BF 01 02         [24] 2361 	cjne	r7,#0x01,00153$
      00111B 80 50            [24] 2362 	sjmp	00106$
      00111D                       2363 00153$:
      00111D BF 02 02         [24] 2364 	cjne	r7,#0x02,00154$
      001120 80 3F            [24] 2365 	sjmp	00105$
      001122                       2366 00154$:
      001122 BF 03 02         [24] 2367 	cjne	r7,#0x03,00155$
      001125 80 0F            [24] 2368 	sjmp	00102$
      001127                       2369 00155$:
      001127 BF 0B 02         [24] 2370 	cjne	r7,#0x0b,00156$
      00112A 80 1F            [24] 2371 	sjmp	00104$
      00112C                       2372 00156$:
      00112C BF 1F 02         [24] 2373 	cjne	r7,#0x1f,00157$
      00112F 80 05            [24] 2374 	sjmp	00102$
      001131                       2375 00157$:
                                   2376 ;	../UI_Manager/ui.c:580: case BUTTON_UP:
      001131 BF 6F 45         [24] 2377 	cjne	r7,#0x6f,00107$
      001134 80 15            [24] 2378 	sjmp	00104$
      001136                       2379 00102$:
                                   2380 ;	../UI_Manager/ui.c:581: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
      001136 E4               [12] 2381 	clr	a
      001137 C0 E0            [24] 2382 	push	acc
      001139 04               [12] 2383 	inc	a
      00113A C0 E0            [24] 2384 	push	acc
      00113C 75 82 04         [24] 2385 	mov	dpl,#0x04
      00113F 12 2F C0         [24] 2386 	lcall	_set_runtime_data
      001142 15 81            [12] 2387 	dec	sp
      001144 15 81            [12] 2388 	dec	sp
                                   2389 ;	../UI_Manager/ui.c:582: changed = 0xFF;
      001146 75 0A FF         [24] 2390 	mov	_changed,#0xff
                                   2391 ;	../UI_Manager/ui.c:583: break;
                                   2392 ;	../UI_Manager/ui.c:585: case BUTTON_DOWN:
      001149 80 2E            [24] 2393 	sjmp	00107$
      00114B                       2394 00104$:
                                   2395 ;	../UI_Manager/ui.c:586: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
      00114B E4               [12] 2396 	clr	a
      00114C C0 E0            [24] 2397 	push	acc
      00114E 74 02            [12] 2398 	mov	a,#0x02
      001150 C0 E0            [24] 2399 	push	acc
      001152 75 82 04         [24] 2400 	mov	dpl,#0x04
      001155 12 2F C0         [24] 2401 	lcall	_set_runtime_data
      001158 15 81            [12] 2402 	dec	sp
      00115A 15 81            [12] 2403 	dec	sp
                                   2404 ;	../UI_Manager/ui.c:587: changed = 0xFF;  
      00115C 75 0A FF         [24] 2405 	mov	_changed,#0xff
                                   2406 ;	../UI_Manager/ui.c:588: break;
                                   2407 ;	../UI_Manager/ui.c:589: case BUTTON_FUNCTION:
      00115F 80 18            [24] 2408 	sjmp	00107$
      001161                       2409 00105$:
                                   2410 ;	../UI_Manager/ui.c:590: set_ui_state(INC, NULL);
      001161 E4               [12] 2411 	clr	a
      001162 C0 E0            [24] 2412 	push	acc
      001164 75 82 01         [24] 2413 	mov	dpl,#0x01
      001167 12 17 40         [24] 2414 	lcall	_set_ui_state
      00116A 15 81            [12] 2415 	dec	sp
                                   2416 ;	../UI_Manager/ui.c:591: return;
      00116C 22               [24] 2417 	ret
                                   2418 ;	../UI_Manager/ui.c:592: case BUTTON_TIMER:
      00116D                       2419 00106$:
                                   2420 ;	../UI_Manager/ui.c:593: set_ui_state(DEC, NULL);
      00116D E4               [12] 2421 	clr	a
      00116E C0 E0            [24] 2422 	push	acc
      001170 75 82 02         [24] 2423 	mov	dpl,#0x02
      001173 12 17 40         [24] 2424 	lcall	_set_ui_state
      001176 15 81            [12] 2425 	dec	sp
                                   2426 ;	../UI_Manager/ui.c:594: return;
      001178 22               [24] 2427 	ret
                                   2428 ;	../UI_Manager/ui.c:595: }
      001179                       2429 00107$:
                                   2430 ;	../UI_Manager/ui.c:597: if(Changed){
      001179 E5 09            [12] 2431 	mov	a,_Changed
      00117B 60 28            [24] 2432 	jz	00109$
                                   2433 ;	../UI_Manager/ui.c:598: Changed = 0x00;
      00117D 75 09 00         [24] 2434 	mov	_Changed,#0x00
                                   2435 ;	../UI_Manager/ui.c:599: changed = 0xFF;
      001180 75 0A FF         [24] 2436 	mov	_changed,#0xff
                                   2437 ;	../UI_Manager/ui.c:601: exe_command(CLEAR_DISPLAY);
      001183 90 80 00         [24] 2438 	mov	dptr,#0x8000
      001186 12 1F E6         [24] 2439 	lcall	_exe_command
                                   2440 ;	../UI_Manager/ui.c:603: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
      001189 E4               [12] 2441 	clr	a
      00118A C0 E0            [24] 2442 	push	acc
      00118C C0 E0            [24] 2443 	push	acc
      00118E 74 03            [12] 2444 	mov	a,#0x03
      001190 C0 E0            [24] 2445 	push	acc
      001192 74 0C            [12] 2446 	mov	a,#0x0c
      001194 C0 E0            [24] 2447 	push	acc
      001196 90 37 E6         [24] 2448 	mov	dptr,#___str_22
      001199 75 F0 80         [24] 2449 	mov	b,#0x80
      00119C 12 1C AB         [24] 2450 	lcall	_write_string
      00119F E5 81            [12] 2451 	mov	a,sp
      0011A1 24 FC            [12] 2452 	add	a,#0xfc
      0011A3 F5 81            [12] 2453 	mov	sp,a
      0011A5                       2454 00109$:
                                   2455 ;	../UI_Manager/ui.c:607: if(changed){
      0011A5 E5 0A            [12] 2456 	mov	a,_changed
      0011A7 60 67            [24] 2457 	jz	00115$
                                   2458 ;	../UI_Manager/ui.c:608: changed = 0x00;
      0011A9 75 0A 00         [24] 2459 	mov	_changed,#0x00
                                   2460 ;	../UI_Manager/ui.c:610: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
      0011AC 75 82 04         [24] 2461 	mov	dpl,#0x04
      0011AF 12 2F 00         [24] 2462 	lcall	_get_runtime_data
      0011B2 E5 82            [12] 2463 	mov	a,dpl
                                   2464 ;	../UI_Manager/ui.c:611: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      0011B4 70 1D            [24] 2465 	jnz	00111$
      0011B6 C0 E0            [24] 2466 	push	acc
      0011B8 04               [12] 2467 	inc	a
      0011B9 C0 E0            [24] 2468 	push	acc
      0011BB 74 06            [12] 2469 	mov	a,#0x06
      0011BD C0 E0            [24] 2470 	push	acc
      0011BF 74 10            [12] 2471 	mov	a,#0x10
      0011C1 C0 E0            [24] 2472 	push	acc
      0011C3 90 37 F2         [24] 2473 	mov	dptr,#___str_23
      0011C6 75 F0 80         [24] 2474 	mov	b,#0x80
      0011C9 12 1C AB         [24] 2475 	lcall	_write_string
      0011CC E5 81            [12] 2476 	mov	a,sp
      0011CE 24 FC            [12] 2477 	add	a,#0xfc
      0011D0 F5 81            [12] 2478 	mov	sp,a
      0011D2 22               [24] 2479 	ret
      0011D3                       2480 00111$:
                                   2481 ;	../UI_Manager/ui.c:613: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      0011D3 E4               [12] 2482 	clr	a
      0011D4 C0 E0            [24] 2483 	push	acc
      0011D6 04               [12] 2484 	inc	a
      0011D7 C0 E0            [24] 2485 	push	acc
      0011D9 74 03            [12] 2486 	mov	a,#0x03
      0011DB C0 E0            [24] 2487 	push	acc
      0011DD 74 10            [12] 2488 	mov	a,#0x10
      0011DF C0 E0            [24] 2489 	push	acc
      0011E1 90 37 F6         [24] 2490 	mov	dptr,#___str_24
      0011E4 75 F0 80         [24] 2491 	mov	b,#0x80
      0011E7 12 1C AB         [24] 2492 	lcall	_write_string
      0011EA E5 81            [12] 2493 	mov	a,sp
      0011EC 24 FC            [12] 2494 	add	a,#0xfc
      0011EE F5 81            [12] 2495 	mov	sp,a
                                   2496 ;	../UI_Manager/ui.c:614: write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
      0011F0 75 82 04         [24] 2497 	mov	dpl,#0x04
      0011F3 12 2F 00         [24] 2498 	lcall	_get_runtime_data
      0011F6 AF 82            [24] 2499 	mov	r7,dpl
      0011F8 E4               [12] 2500 	clr	a
      0011F9 FE               [12] 2501 	mov	r6,a
      0011FA C0 E0            [24] 2502 	push	acc
      0011FC 04               [12] 2503 	inc	a
      0011FD C0 E0            [24] 2504 	push	acc
      0011FF 74 05            [12] 2505 	mov	a,#0x05
      001201 C0 E0            [24] 2506 	push	acc
      001203 8F 82            [24] 2507 	mov	dpl,r7
      001205 8E 83            [24] 2508 	mov	dph,r6
      001207 12 1D 68         [24] 2509 	lcall	_write_number
      00120A 15 81            [12] 2510 	dec	sp
      00120C 15 81            [12] 2511 	dec	sp
      00120E 15 81            [12] 2512 	dec	sp
      001210                       2513 00115$:
                                   2514 ;	../UI_Manager/ui.c:618: }
      001210 22               [24] 2515 	ret
                                   2516 ;------------------------------------------------------------
                                   2517 ;Allocation info for local variables in function 'colorPage'
                                   2518 ;------------------------------------------------------------
                                   2519 ;action                    Allocated to registers r7 
                                   2520 ;index                     Allocated to registers r6 
                                   2521 ;------------------------------------------------------------
                                   2522 ;	../UI_Manager/ui.c:620: void colorPage(uint8_t action){
                                   2523 ;	-----------------------------------------
                                   2524 ;	 function colorPage
                                   2525 ;	-----------------------------------------
      001211                       2526 _colorPage:
      001211 AF 82            [24] 2527 	mov	r7,dpl
                                   2528 ;	../UI_Manager/ui.c:621: uint8_t index = 0;
      001213 7E 00            [12] 2529 	mov	r6,#0x00
                                   2530 ;	../UI_Manager/ui.c:623: switch (State)
      001215 AD 08            [24] 2531 	mov	r5,_State
      001217 BD 06 02         [24] 2532 	cjne	r5,#0x06,00174$
      00121A 80 0F            [24] 2533 	sjmp	00101$
      00121C                       2534 00174$:
      00121C BD 07 02         [24] 2535 	cjne	r5,#0x07,00175$
      00121F 80 0E            [24] 2536 	sjmp	00102$
      001221                       2537 00175$:
      001221 BD 08 02         [24] 2538 	cjne	r5,#0x08,00176$
      001224 80 0D            [24] 2539 	sjmp	00103$
      001226                       2540 00176$:
                                   2541 ;	../UI_Manager/ui.c:625: case MANUAL_RED_STATE:
      001226 BD 09 10         [24] 2542 	cjne	r5,#0x09,00105$
      001229 80 0C            [24] 2543 	sjmp	00104$
      00122B                       2544 00101$:
                                   2545 ;	../UI_Manager/ui.c:626: index = RED_INDEX;
      00122B 7E 05            [12] 2546 	mov	r6,#0x05
                                   2547 ;	../UI_Manager/ui.c:627: break;
                                   2548 ;	../UI_Manager/ui.c:628: case MANUAL_GREEN_STATE:
      00122D 80 0A            [24] 2549 	sjmp	00105$
      00122F                       2550 00102$:
                                   2551 ;	../UI_Manager/ui.c:629: index = GREEN_INDEX;
      00122F 7E 06            [12] 2552 	mov	r6,#0x06
                                   2553 ;	../UI_Manager/ui.c:630: break;
                                   2554 ;	../UI_Manager/ui.c:631: case MANUAL_BLUE_STATE:
      001231 80 06            [24] 2555 	sjmp	00105$
      001233                       2556 00103$:
                                   2557 ;	../UI_Manager/ui.c:632: index = BLUE_INDEX;
      001233 7E 07            [12] 2558 	mov	r6,#0x07
                                   2559 ;	../UI_Manager/ui.c:633: break;
                                   2560 ;	../UI_Manager/ui.c:634: case MANUAL_STROBE_STATE:
      001235 80 02            [24] 2561 	sjmp	00105$
      001237                       2562 00104$:
                                   2563 ;	../UI_Manager/ui.c:635: index = STROBE_INDEX;
      001237 7E 08            [12] 2564 	mov	r6,#0x08
                                   2565 ;	../UI_Manager/ui.c:637: }
      001239                       2566 00105$:
                                   2567 ;	../UI_Manager/ui.c:639: switch (action)
      001239 BF 01 02         [24] 2568 	cjne	r7,#0x01,00178$
      00123C 80 56            [24] 2569 	sjmp	00111$
      00123E                       2570 00178$:
      00123E BF 02 02         [24] 2571 	cjne	r7,#0x02,00179$
      001241 80 45            [24] 2572 	sjmp	00110$
      001243                       2573 00179$:
      001243 BF 03 02         [24] 2574 	cjne	r7,#0x03,00180$
      001246 80 0F            [24] 2575 	sjmp	00107$
      001248                       2576 00180$:
      001248 BF 0B 02         [24] 2577 	cjne	r7,#0x0b,00181$
      00124B 80 22            [24] 2578 	sjmp	00109$
      00124D                       2579 00181$:
      00124D BF 1F 02         [24] 2580 	cjne	r7,#0x1f,00182$
      001250 80 05            [24] 2581 	sjmp	00107$
      001252                       2582 00182$:
                                   2583 ;	../UI_Manager/ui.c:642: case BUTTON_UP:
      001252 BF 6F 4B         [24] 2584 	cjne	r7,#0x6f,00112$
      001255 80 18            [24] 2585 	sjmp	00109$
      001257                       2586 00107$:
                                   2587 ;	../UI_Manager/ui.c:643: set_runtime_data(index, INC, NULL);
      001257 C0 06            [24] 2588 	push	ar6
      001259 E4               [12] 2589 	clr	a
      00125A C0 E0            [24] 2590 	push	acc
      00125C 04               [12] 2591 	inc	a
      00125D C0 E0            [24] 2592 	push	acc
      00125F 8E 82            [24] 2593 	mov	dpl,r6
      001261 12 2F C0         [24] 2594 	lcall	_set_runtime_data
      001264 15 81            [12] 2595 	dec	sp
      001266 15 81            [12] 2596 	dec	sp
      001268 D0 06            [24] 2597 	pop	ar6
                                   2598 ;	../UI_Manager/ui.c:644: changed = 0xFF;
      00126A 75 0A FF         [24] 2599 	mov	_changed,#0xff
                                   2600 ;	../UI_Manager/ui.c:645: break;
                                   2601 ;	../UI_Manager/ui.c:647: case BUTTON_DOWN:
      00126D 80 31            [24] 2602 	sjmp	00112$
      00126F                       2603 00109$:
                                   2604 ;	../UI_Manager/ui.c:648: set_runtime_data(index, DEC, NULL);
      00126F C0 06            [24] 2605 	push	ar6
      001271 E4               [12] 2606 	clr	a
      001272 C0 E0            [24] 2607 	push	acc
      001274 74 02            [12] 2608 	mov	a,#0x02
      001276 C0 E0            [24] 2609 	push	acc
      001278 8E 82            [24] 2610 	mov	dpl,r6
      00127A 12 2F C0         [24] 2611 	lcall	_set_runtime_data
      00127D 15 81            [12] 2612 	dec	sp
      00127F 15 81            [12] 2613 	dec	sp
      001281 D0 06            [24] 2614 	pop	ar6
                                   2615 ;	../UI_Manager/ui.c:649: changed = 0xFF;  
      001283 75 0A FF         [24] 2616 	mov	_changed,#0xff
                                   2617 ;	../UI_Manager/ui.c:650: break;
                                   2618 ;	../UI_Manager/ui.c:651: case BUTTON_FUNCTION:
      001286 80 18            [24] 2619 	sjmp	00112$
      001288                       2620 00110$:
                                   2621 ;	../UI_Manager/ui.c:652: set_ui_state(INC, NULL);
      001288 E4               [12] 2622 	clr	a
      001289 C0 E0            [24] 2623 	push	acc
      00128B 75 82 01         [24] 2624 	mov	dpl,#0x01
      00128E 12 17 40         [24] 2625 	lcall	_set_ui_state
      001291 15 81            [12] 2626 	dec	sp
                                   2627 ;	../UI_Manager/ui.c:653: return;
      001293 22               [24] 2628 	ret
                                   2629 ;	../UI_Manager/ui.c:654: case BUTTON_TIMER:
      001294                       2630 00111$:
                                   2631 ;	../UI_Manager/ui.c:655: set_ui_state(DEC, NULL);
      001294 E4               [12] 2632 	clr	a
      001295 C0 E0            [24] 2633 	push	acc
      001297 75 82 02         [24] 2634 	mov	dpl,#0x02
      00129A 12 17 40         [24] 2635 	lcall	_set_ui_state
      00129D 15 81            [12] 2636 	dec	sp
                                   2637 ;	../UI_Manager/ui.c:656: return;
      00129F 22               [24] 2638 	ret
                                   2639 ;	../UI_Manager/ui.c:657: }
      0012A0                       2640 00112$:
                                   2641 ;	../UI_Manager/ui.c:659: if(Changed){
      0012A0 E5 09            [12] 2642 	mov	a,_Changed
      0012A2 60 3C            [24] 2643 	jz	00114$
                                   2644 ;	../UI_Manager/ui.c:660: Changed = 0x00;
      0012A4 75 09 00         [24] 2645 	mov	_Changed,#0x00
                                   2646 ;	../UI_Manager/ui.c:661: changed = 0xFF;
      0012A7 75 0A FF         [24] 2647 	mov	_changed,#0xff
                                   2648 ;	../UI_Manager/ui.c:663: exe_command(CLEAR_DISPLAY);
      0012AA 90 80 00         [24] 2649 	mov	dptr,#0x8000
      0012AD C0 06            [24] 2650 	push	ar6
      0012AF 12 1F E6         [24] 2651 	lcall	_exe_command
                                   2652 ;	../UI_Manager/ui.c:665: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
      0012B2 AF 08            [24] 2653 	mov	r7,_State
      0012B4 74 C8            [12] 2654 	mov	a,#0xc8
      0012B6 2F               [12] 2655 	add	a,r7
      0012B7 F5 82            [12] 2656 	mov	dpl,a
      0012B9 12 18 4D         [24] 2657 	lcall	_getString
      0012BC AC 82            [24] 2658 	mov	r4,dpl
      0012BE AD 83            [24] 2659 	mov	r5,dph
      0012C0 AF F0            [24] 2660 	mov	r7,b
      0012C2 E4               [12] 2661 	clr	a
      0012C3 C0 E0            [24] 2662 	push	acc
      0012C5 C0 E0            [24] 2663 	push	acc
      0012C7 74 03            [12] 2664 	mov	a,#0x03
      0012C9 C0 E0            [24] 2665 	push	acc
      0012CB 74 10            [12] 2666 	mov	a,#0x10
      0012CD C0 E0            [24] 2667 	push	acc
      0012CF 8C 82            [24] 2668 	mov	dpl,r4
      0012D1 8D 83            [24] 2669 	mov	dph,r5
      0012D3 8F F0            [24] 2670 	mov	b,r7
      0012D5 12 1C AB         [24] 2671 	lcall	_write_string
      0012D8 E5 81            [12] 2672 	mov	a,sp
      0012DA 24 FC            [12] 2673 	add	a,#0xfc
      0012DC F5 81            [12] 2674 	mov	sp,a
      0012DE D0 06            [24] 2675 	pop	ar6
      0012E0                       2676 00114$:
                                   2677 ;	../UI_Manager/ui.c:669: if(changed){
      0012E0 E5 0A            [12] 2678 	mov	a,_changed
      0012E2 60 6C            [24] 2679 	jz	00120$
                                   2680 ;	../UI_Manager/ui.c:670: changed = 0x00;
      0012E4 75 0A 00         [24] 2681 	mov	_changed,#0x00
                                   2682 ;	../UI_Manager/ui.c:672: if(get_runtime_data(index) == 0){
      0012E7 8E 82            [24] 2683 	mov	dpl,r6
      0012E9 C0 06            [24] 2684 	push	ar6
      0012EB 12 2F 00         [24] 2685 	lcall	_get_runtime_data
      0012EE E5 82            [12] 2686 	mov	a,dpl
      0012F0 D0 06            [24] 2687 	pop	ar6
                                   2688 ;	../UI_Manager/ui.c:673: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      0012F2 70 1D            [24] 2689 	jnz	00116$
      0012F4 C0 E0            [24] 2690 	push	acc
      0012F6 04               [12] 2691 	inc	a
      0012F7 C0 E0            [24] 2692 	push	acc
      0012F9 74 06            [12] 2693 	mov	a,#0x06
      0012FB C0 E0            [24] 2694 	push	acc
      0012FD 74 10            [12] 2695 	mov	a,#0x10
      0012FF C0 E0            [24] 2696 	push	acc
      001301 90 37 F2         [24] 2697 	mov	dptr,#___str_23
      001304 75 F0 80         [24] 2698 	mov	b,#0x80
      001307 12 1C AB         [24] 2699 	lcall	_write_string
      00130A E5 81            [12] 2700 	mov	a,sp
      00130C 24 FC            [12] 2701 	add	a,#0xfc
      00130E F5 81            [12] 2702 	mov	sp,a
      001310 22               [24] 2703 	ret
      001311                       2704 00116$:
                                   2705 ;	../UI_Manager/ui.c:675: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      001311 C0 06            [24] 2706 	push	ar6
      001313 E4               [12] 2707 	clr	a
      001314 C0 E0            [24] 2708 	push	acc
      001316 04               [12] 2709 	inc	a
      001317 C0 E0            [24] 2710 	push	acc
      001319 E4               [12] 2711 	clr	a
      00131A C0 E0            [24] 2712 	push	acc
      00131C 74 10            [12] 2713 	mov	a,#0x10
      00131E C0 E0            [24] 2714 	push	acc
      001320 90 37 F6         [24] 2715 	mov	dptr,#___str_24
      001323 75 F0 80         [24] 2716 	mov	b,#0x80
      001326 12 1C AB         [24] 2717 	lcall	_write_string
      001329 E5 81            [12] 2718 	mov	a,sp
      00132B 24 FC            [12] 2719 	add	a,#0xfc
      00132D F5 81            [12] 2720 	mov	sp,a
      00132F D0 06            [24] 2721 	pop	ar6
                                   2722 ;	../UI_Manager/ui.c:676: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
      001331 8E 82            [24] 2723 	mov	dpl,r6
      001333 12 2F 00         [24] 2724 	lcall	_get_runtime_data
      001336 AF 82            [24] 2725 	mov	r7,dpl
      001338 E4               [12] 2726 	clr	a
      001339 FE               [12] 2727 	mov	r6,a
      00133A C0 E0            [24] 2728 	push	acc
      00133C 04               [12] 2729 	inc	a
      00133D C0 E0            [24] 2730 	push	acc
      00133F 74 06            [12] 2731 	mov	a,#0x06
      001341 C0 E0            [24] 2732 	push	acc
      001343 8F 82            [24] 2733 	mov	dpl,r7
      001345 8E 83            [24] 2734 	mov	dph,r6
      001347 12 1D 68         [24] 2735 	lcall	_write_number
      00134A 15 81            [12] 2736 	dec	sp
      00134C 15 81            [12] 2737 	dec	sp
      00134E 15 81            [12] 2738 	dec	sp
      001350                       2739 00120$:
                                   2740 ;	../UI_Manager/ui.c:679: }
      001350 22               [24] 2741 	ret
                                   2742 ;------------------------------------------------------------
                                   2743 ;Allocation info for local variables in function 'remotePage'
                                   2744 ;------------------------------------------------------------
                                   2745 ;action                    Allocated to registers r7 
                                   2746 ;remoteNumber              Allocated to registers r6 
                                   2747 ;index                     Allocated to registers r5 
                                   2748 ;------------------------------------------------------------
                                   2749 ;	../UI_Manager/ui.c:681: void remotePage(uint8_t action){
                                   2750 ;	-----------------------------------------
                                   2751 ;	 function remotePage
                                   2752 ;	-----------------------------------------
      001351                       2753 _remotePage:
      001351 AF 82            [24] 2754 	mov	r7,dpl
                                   2755 ;	../UI_Manager/ui.c:682: uint8_t remoteNumber = 0;
      001353 7E 00            [12] 2756 	mov	r6,#0x00
                                   2757 ;	../UI_Manager/ui.c:683: uint8_t index = 0;
      001355 7D 00            [12] 2758 	mov	r5,#0x00
                                   2759 ;	../UI_Manager/ui.c:685: switch (State)
      001357 AC 08            [24] 2760 	mov	r4,_State
      001359 BC 0A 02         [24] 2761 	cjne	r4,#0x0a,00168$
      00135C 80 0A            [24] 2762 	sjmp	00101$
      00135E                       2763 00168$:
      00135E BC 0B 02         [24] 2764 	cjne	r4,#0x0b,00169$
      001361 80 0B            [24] 2765 	sjmp	00102$
      001363                       2766 00169$:
                                   2767 ;	../UI_Manager/ui.c:687: case MANUAL_REMOTE_ACTION_4_STATE:
      001363 BC 0C 12         [24] 2768 	cjne	r4,#0x0c,00104$
      001366 80 0C            [24] 2769 	sjmp	00103$
      001368                       2770 00101$:
                                   2771 ;	../UI_Manager/ui.c:688: index = R4_INDEX;
      001368 7D 09            [12] 2772 	mov	r5,#0x09
                                   2773 ;	../UI_Manager/ui.c:689: remoteNumber = 4;
      00136A 7E 04            [12] 2774 	mov	r6,#0x04
                                   2775 ;	../UI_Manager/ui.c:690: break;
                                   2776 ;	../UI_Manager/ui.c:691: case MANUAL_REMOTE_ACTION_5_STATE:
      00136C 80 0A            [24] 2777 	sjmp	00104$
      00136E                       2778 00102$:
                                   2779 ;	../UI_Manager/ui.c:692: index = R5_INDEX;
      00136E 7D 0A            [12] 2780 	mov	r5,#0x0a
                                   2781 ;	../UI_Manager/ui.c:693: remoteNumber = 5;
      001370 7E 05            [12] 2782 	mov	r6,#0x05
                                   2783 ;	../UI_Manager/ui.c:694: break;
                                   2784 ;	../UI_Manager/ui.c:695: case MANUAL_REMOTE_ACTION_6_STATE:
      001372 80 04            [24] 2785 	sjmp	00104$
      001374                       2786 00103$:
                                   2787 ;	../UI_Manager/ui.c:696: index = R6_INDEX;
      001374 7D 0B            [12] 2788 	mov	r5,#0x0b
                                   2789 ;	../UI_Manager/ui.c:697: remoteNumber = 6;
      001376 7E 06            [12] 2790 	mov	r6,#0x06
                                   2791 ;	../UI_Manager/ui.c:699: }
      001378                       2792 00104$:
                                   2793 ;	../UI_Manager/ui.c:701: switch (action)
      001378 BF 01 02         [24] 2794 	cjne	r7,#0x01,00171$
      00137B 80 54            [24] 2795 	sjmp	00108$
      00137D                       2796 00171$:
      00137D BF 02 02         [24] 2797 	cjne	r7,#0x02,00172$
      001380 80 43            [24] 2798 	sjmp	00107$
      001382                       2799 00172$:
      001382 BF 03 02         [24] 2800 	cjne	r7,#0x03,00173$
      001385 80 05            [24] 2801 	sjmp	00105$
      001387                       2802 00173$:
                                   2803 ;	../UI_Manager/ui.c:703: case BUTTON_UP:
      001387 BF 0B 53         [24] 2804 	cjne	r7,#0x0b,00109$
      00138A 80 1C            [24] 2805 	sjmp	00106$
      00138C                       2806 00105$:
                                   2807 ;	../UI_Manager/ui.c:704: set_runtime_data(index, INC, NULL);
      00138C C0 06            [24] 2808 	push	ar6
      00138E C0 05            [24] 2809 	push	ar5
      001390 E4               [12] 2810 	clr	a
      001391 C0 E0            [24] 2811 	push	acc
      001393 04               [12] 2812 	inc	a
      001394 C0 E0            [24] 2813 	push	acc
      001396 8D 82            [24] 2814 	mov	dpl,r5
      001398 12 2F C0         [24] 2815 	lcall	_set_runtime_data
      00139B 15 81            [12] 2816 	dec	sp
      00139D 15 81            [12] 2817 	dec	sp
      00139F D0 05            [24] 2818 	pop	ar5
      0013A1 D0 06            [24] 2819 	pop	ar6
                                   2820 ;	../UI_Manager/ui.c:705: changed = 0xFF;
      0013A3 75 0A FF         [24] 2821 	mov	_changed,#0xff
                                   2822 ;	../UI_Manager/ui.c:706: break;
                                   2823 ;	../UI_Manager/ui.c:707: case BUTTON_DOWN:
      0013A6 80 35            [24] 2824 	sjmp	00109$
      0013A8                       2825 00106$:
                                   2826 ;	../UI_Manager/ui.c:708: set_runtime_data(index, DEC, NULL);
      0013A8 C0 06            [24] 2827 	push	ar6
      0013AA C0 05            [24] 2828 	push	ar5
      0013AC E4               [12] 2829 	clr	a
      0013AD C0 E0            [24] 2830 	push	acc
      0013AF 74 02            [12] 2831 	mov	a,#0x02
      0013B1 C0 E0            [24] 2832 	push	acc
      0013B3 8D 82            [24] 2833 	mov	dpl,r5
      0013B5 12 2F C0         [24] 2834 	lcall	_set_runtime_data
      0013B8 15 81            [12] 2835 	dec	sp
      0013BA 15 81            [12] 2836 	dec	sp
      0013BC D0 05            [24] 2837 	pop	ar5
      0013BE D0 06            [24] 2838 	pop	ar6
                                   2839 ;	../UI_Manager/ui.c:709: changed = 0xFF;  
      0013C0 75 0A FF         [24] 2840 	mov	_changed,#0xff
                                   2841 ;	../UI_Manager/ui.c:710: break;
                                   2842 ;	../UI_Manager/ui.c:711: case BUTTON_FUNCTION:
      0013C3 80 18            [24] 2843 	sjmp	00109$
      0013C5                       2844 00107$:
                                   2845 ;	../UI_Manager/ui.c:712: set_ui_state(INC, NULL);
      0013C5 E4               [12] 2846 	clr	a
      0013C6 C0 E0            [24] 2847 	push	acc
      0013C8 75 82 01         [24] 2848 	mov	dpl,#0x01
      0013CB 12 17 40         [24] 2849 	lcall	_set_ui_state
      0013CE 15 81            [12] 2850 	dec	sp
                                   2851 ;	../UI_Manager/ui.c:713: return;
      0013D0 22               [24] 2852 	ret
                                   2853 ;	../UI_Manager/ui.c:714: case BUTTON_TIMER:
      0013D1                       2854 00108$:
                                   2855 ;	../UI_Manager/ui.c:715: set_ui_state(DEC, NULL);
      0013D1 E4               [12] 2856 	clr	a
      0013D2 C0 E0            [24] 2857 	push	acc
      0013D4 75 82 02         [24] 2858 	mov	dpl,#0x02
      0013D7 12 17 40         [24] 2859 	lcall	_set_ui_state
      0013DA 15 81            [12] 2860 	dec	sp
                                   2861 ;	../UI_Manager/ui.c:716: return;
      0013DC 22               [24] 2862 	ret
                                   2863 ;	../UI_Manager/ui.c:717: }
      0013DD                       2864 00109$:
                                   2865 ;	../UI_Manager/ui.c:719: if(Changed){
      0013DD E5 09            [12] 2866 	mov	a,_Changed
      0013DF 70 03            [24] 2867 	jnz	00175$
      0013E1 02 14 64         [24] 2868 	ljmp	00115$
      0013E4                       2869 00175$:
                                   2870 ;	../UI_Manager/ui.c:720: Changed = 0x00;
      0013E4 75 09 00         [24] 2871 	mov	_Changed,#0x00
                                   2872 ;	../UI_Manager/ui.c:721: changed = 0xFF;
      0013E7 75 0A FF         [24] 2873 	mov	_changed,#0xff
                                   2874 ;	../UI_Manager/ui.c:723: exe_command(CLEAR_DISPLAY);
      0013EA 90 80 00         [24] 2875 	mov	dptr,#0x8000
      0013ED C0 06            [24] 2876 	push	ar6
      0013EF C0 05            [24] 2877 	push	ar5
      0013F1 12 1F E6         [24] 2878 	lcall	_exe_command
                                   2879 ;	../UI_Manager/ui.c:725: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
      0013F4 E4               [12] 2880 	clr	a
      0013F5 C0 E0            [24] 2881 	push	acc
      0013F7 C0 E0            [24] 2882 	push	acc
      0013F9 04               [12] 2883 	inc	a
      0013FA C0 E0            [24] 2884 	push	acc
      0013FC C4               [12] 2885 	swap	a
      0013FD C0 E0            [24] 2886 	push	acc
      0013FF 90 37 F7         [24] 2887 	mov	dptr,#___str_25
      001402 75 F0 80         [24] 2888 	mov	b,#0x80
      001405 12 1C AB         [24] 2889 	lcall	_write_string
      001408 E5 81            [12] 2890 	mov	a,sp
      00140A 24 FC            [12] 2891 	add	a,#0xfc
      00140C F5 81            [12] 2892 	mov	sp,a
      00140E D0 05            [24] 2893 	pop	ar5
      001410 D0 06            [24] 2894 	pop	ar6
                                   2895 ;	../UI_Manager/ui.c:726: switch (remoteNumber)
      001412 BE 04 02         [24] 2896 	cjne	r6,#0x04,00176$
      001415 80 0A            [24] 2897 	sjmp	00110$
      001417                       2898 00176$:
      001417 BE 05 02         [24] 2899 	cjne	r6,#0x05,00177$
      00141A 80 1C            [24] 2900 	sjmp	00111$
      00141C                       2901 00177$:
                                   2902 ;	../UI_Manager/ui.c:728: case 4:
      00141C BE 06 45         [24] 2903 	cjne	r6,#0x06,00115$
      00141F 80 2E            [24] 2904 	sjmp	00112$
      001421                       2905 00110$:
                                   2906 ;	../UI_Manager/ui.c:729: write_char(CHAR_4, 8, LINE_0);
      001421 C0 05            [24] 2907 	push	ar5
      001423 E4               [12] 2908 	clr	a
      001424 C0 E0            [24] 2909 	push	acc
      001426 74 08            [12] 2910 	mov	a,#0x08
      001428 C0 E0            [24] 2911 	push	acc
      00142A 75 82 2C         [24] 2912 	mov	dpl,#0x2c
      00142D 12 1F 9B         [24] 2913 	lcall	_write_char
      001430 15 81            [12] 2914 	dec	sp
      001432 15 81            [12] 2915 	dec	sp
      001434 D0 05            [24] 2916 	pop	ar5
                                   2917 ;	../UI_Manager/ui.c:730: break;
                                   2918 ;	../UI_Manager/ui.c:731: case 5:
      001436 80 2C            [24] 2919 	sjmp	00115$
      001438                       2920 00111$:
                                   2921 ;	../UI_Manager/ui.c:732: write_char(CHAR_5, 8, LINE_0);
      001438 C0 05            [24] 2922 	push	ar5
      00143A E4               [12] 2923 	clr	a
      00143B C0 E0            [24] 2924 	push	acc
      00143D 74 08            [12] 2925 	mov	a,#0x08
      00143F C0 E0            [24] 2926 	push	acc
      001441 75 82 AC         [24] 2927 	mov	dpl,#0xac
      001444 12 1F 9B         [24] 2928 	lcall	_write_char
      001447 15 81            [12] 2929 	dec	sp
      001449 15 81            [12] 2930 	dec	sp
      00144B D0 05            [24] 2931 	pop	ar5
                                   2932 ;	../UI_Manager/ui.c:733: break;
                                   2933 ;	../UI_Manager/ui.c:734: case 6:
      00144D 80 15            [24] 2934 	sjmp	00115$
      00144F                       2935 00112$:
                                   2936 ;	../UI_Manager/ui.c:735: write_char(CHAR_6, 8, LINE_0);
      00144F C0 05            [24] 2937 	push	ar5
      001451 E4               [12] 2938 	clr	a
      001452 C0 E0            [24] 2939 	push	acc
      001454 74 08            [12] 2940 	mov	a,#0x08
      001456 C0 E0            [24] 2941 	push	acc
      001458 75 82 6C         [24] 2942 	mov	dpl,#0x6c
      00145B 12 1F 9B         [24] 2943 	lcall	_write_char
      00145E 15 81            [12] 2944 	dec	sp
      001460 15 81            [12] 2945 	dec	sp
      001462 D0 05            [24] 2946 	pop	ar5
                                   2947 ;	../UI_Manager/ui.c:737: }
      001464                       2948 00115$:
                                   2949 ;	../UI_Manager/ui.c:740: if(changed){
      001464 E5 0A            [12] 2950 	mov	a,_changed
      001466 60 34            [24] 2951 	jz	00118$
                                   2952 ;	../UI_Manager/ui.c:741: changed = 0x00;
      001468 75 0A 00         [24] 2953 	mov	_changed,#0x00
                                   2954 ;	../UI_Manager/ui.c:742: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
      00146B 8D 82            [24] 2955 	mov	dpl,r5
      00146D 12 2F 00         [24] 2956 	lcall	_get_runtime_data
      001470 AF 82            [24] 2957 	mov	r7,dpl
      001472 74 3C            [12] 2958 	mov	a,#0x3c
      001474 2F               [12] 2959 	add	a,r7
      001475 F5 82            [12] 2960 	mov	dpl,a
      001477 12 18 4D         [24] 2961 	lcall	_getString
      00147A AD 82            [24] 2962 	mov	r5,dpl
      00147C AE 83            [24] 2963 	mov	r6,dph
      00147E AF F0            [24] 2964 	mov	r7,b
      001480 E4               [12] 2965 	clr	a
      001481 C0 E0            [24] 2966 	push	acc
      001483 04               [12] 2967 	inc	a
      001484 C0 E0            [24] 2968 	push	acc
      001486 04               [12] 2969 	inc	a
      001487 C0 E0            [24] 2970 	push	acc
      001489 74 10            [12] 2971 	mov	a,#0x10
      00148B C0 E0            [24] 2972 	push	acc
      00148D 8D 82            [24] 2973 	mov	dpl,r5
      00148F 8E 83            [24] 2974 	mov	dph,r6
      001491 8F F0            [24] 2975 	mov	b,r7
      001493 12 1C AB         [24] 2976 	lcall	_write_string
      001496 E5 81            [12] 2977 	mov	a,sp
      001498 24 FC            [12] 2978 	add	a,#0xfc
      00149A F5 81            [12] 2979 	mov	sp,a
      00149C                       2980 00118$:
                                   2981 ;	../UI_Manager/ui.c:744: }
      00149C 22               [24] 2982 	ret
                                   2983 ;------------------------------------------------------------
                                   2984 ;Allocation info for local variables in function 'saveLoadPage'
                                   2985 ;------------------------------------------------------------
                                   2986 ;action                    Allocated to registers r7 
                                   2987 ;slot                      Allocated with name '_saveLoadPage_slot_65536_142'
                                   2988 ;------------------------------------------------------------
                                   2989 ;	../UI_Manager/ui.c:746: void saveLoadPage(uint8_t action){
                                   2990 ;	-----------------------------------------
                                   2991 ;	 function saveLoadPage
                                   2992 ;	-----------------------------------------
      00149D                       2993 _saveLoadPage:
      00149D AF 82            [24] 2994 	mov	r7,dpl
                                   2995 ;	../UI_Manager/ui.c:749: switch (action)
      00149F BF 01 03         [24] 2996 	cjne	r7,#0x01,00161$
      0014A2 02 15 57         [24] 2997 	ljmp	00108$
      0014A5                       2998 00161$:
      0014A5 BF 02 03         [24] 2999 	cjne	r7,#0x02,00162$
      0014A8 02 15 4B         [24] 3000 	ljmp	00107$
      0014AB                       3001 00162$:
      0014AB BF 03 03         [24] 3002 	cjne	r7,#0x03,00163$
      0014AE 02 15 3D         [24] 3003 	ljmp	00105$
      0014B1                       3004 00163$:
      0014B1 BF 0B 03         [24] 3005 	cjne	r7,#0x0b,00164$
      0014B4 02 15 44         [24] 3006 	ljmp	00106$
      0014B7                       3007 00164$:
      0014B7 BF 1E 02         [24] 3008 	cjne	r7,#0x1e,00165$
      0014BA 80 03            [24] 3009 	sjmp	00166$
      0014BC                       3010 00165$:
      0014BC 02 15 63         [24] 3011 	ljmp	00109$
      0014BF                       3012 00166$:
                                   3013 ;	../UI_Manager/ui.c:752: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
      0014BF 74 0D            [12] 3014 	mov	a,#0x0d
      0014C1 B5 08 06         [24] 3015 	cjne	a,_State,00119$
      0014C4 7E 01            [12] 3016 	mov	r6,#0x01
      0014C6 7F 00            [12] 3017 	mov	r7,#0x00
      0014C8 80 04            [24] 3018 	sjmp	00120$
      0014CA                       3019 00119$:
      0014CA 7E 00            [12] 3020 	mov	r6,#0x00
      0014CC 7F 00            [12] 3021 	mov	r7,#0x00
      0014CE                       3022 00120$:
      0014CE 75 F0 03         [24] 3023 	mov	b,#0x03
      0014D1 E5 12            [12] 3024 	mov	a,_saveLoadPage_slot_65536_142
      0014D3 84               [48] 3025 	div	ab
      0014D4 85 F0 82         [24] 3026 	mov	dpl,b
      0014D7 C0 06            [24] 3027 	push	ar6
      0014D9 12 2E 9C         [24] 3028 	lcall	_save_load_settings
      0014DC 15 81            [12] 3029 	dec	sp
                                   3030 ;	../UI_Manager/ui.c:753: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
      0014DE E4               [12] 3031 	clr	a
      0014DF C0 E0            [24] 3032 	push	acc
      0014E1 04               [12] 3033 	inc	a
      0014E2 C0 E0            [24] 3034 	push	acc
      0014E4 E4               [12] 3035 	clr	a
      0014E5 C0 E0            [24] 3036 	push	acc
      0014E7 74 10            [12] 3037 	mov	a,#0x10
      0014E9 C0 E0            [24] 3038 	push	acc
      0014EB 90 37 F6         [24] 3039 	mov	dptr,#___str_24
      0014EE 75 F0 80         [24] 3040 	mov	b,#0x80
      0014F1 12 1C AB         [24] 3041 	lcall	_write_string
      0014F4 E5 81            [12] 3042 	mov	a,sp
      0014F6 24 FC            [12] 3043 	add	a,#0xfc
      0014F8 F5 81            [12] 3044 	mov	sp,a
                                   3045 ;	../UI_Manager/ui.c:755: if(State == MANUAL_SAVE_SETTINGS_STATE){
      0014FA 74 0D            [12] 3046 	mov	a,#0x0d
      0014FC B5 08 1F         [24] 3047 	cjne	a,_State,00103$
                                   3048 ;	../UI_Manager/ui.c:756: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      0014FF E4               [12] 3049 	clr	a
      001500 C0 E0            [24] 3050 	push	acc
      001502 04               [12] 3051 	inc	a
      001503 C0 E0            [24] 3052 	push	acc
      001505 74 06            [12] 3053 	mov	a,#0x06
      001507 C0 E0            [24] 3054 	push	acc
      001509 74 10            [12] 3055 	mov	a,#0x10
      00150B C0 E0            [24] 3056 	push	acc
      00150D 90 38 07         [24] 3057 	mov	dptr,#___str_26
      001510 75 F0 80         [24] 3058 	mov	b,#0x80
      001513 12 1C AB         [24] 3059 	lcall	_write_string
      001516 E5 81            [12] 3060 	mov	a,sp
      001518 24 FC            [12] 3061 	add	a,#0xfc
      00151A F5 81            [12] 3062 	mov	sp,a
      00151C 80 45            [24] 3063 	sjmp	00109$
      00151E                       3064 00103$:
                                   3065 ;	../UI_Manager/ui.c:758: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      00151E E4               [12] 3066 	clr	a
      00151F C0 E0            [24] 3067 	push	acc
      001521 04               [12] 3068 	inc	a
      001522 C0 E0            [24] 3069 	push	acc
      001524 74 06            [12] 3070 	mov	a,#0x06
      001526 C0 E0            [24] 3071 	push	acc
      001528 74 10            [12] 3072 	mov	a,#0x10
      00152A C0 E0            [24] 3073 	push	acc
      00152C 90 38 0E         [24] 3074 	mov	dptr,#___str_27
      00152F 75 F0 80         [24] 3075 	mov	b,#0x80
      001532 12 1C AB         [24] 3076 	lcall	_write_string
      001535 E5 81            [12] 3077 	mov	a,sp
      001537 24 FC            [12] 3078 	add	a,#0xfc
      001539 F5 81            [12] 3079 	mov	sp,a
                                   3080 ;	../UI_Manager/ui.c:760: break;
                                   3081 ;	../UI_Manager/ui.c:761: case BUTTON_UP:
      00153B 80 26            [24] 3082 	sjmp	00109$
      00153D                       3083 00105$:
                                   3084 ;	../UI_Manager/ui.c:762: slot++;
      00153D 05 12            [12] 3085 	inc	_saveLoadPage_slot_65536_142
                                   3086 ;	../UI_Manager/ui.c:763: changed = 0xFF;
      00153F 75 0A FF         [24] 3087 	mov	_changed,#0xff
                                   3088 ;	../UI_Manager/ui.c:764: break;
                                   3089 ;	../UI_Manager/ui.c:765: case BUTTON_DOWN:
      001542 80 1F            [24] 3090 	sjmp	00109$
      001544                       3091 00106$:
                                   3092 ;	../UI_Manager/ui.c:766: slot--;
      001544 15 12            [12] 3093 	dec	_saveLoadPage_slot_65536_142
                                   3094 ;	../UI_Manager/ui.c:767: changed = 0xFF;  
      001546 75 0A FF         [24] 3095 	mov	_changed,#0xff
                                   3096 ;	../UI_Manager/ui.c:768: break;
                                   3097 ;	../UI_Manager/ui.c:769: case BUTTON_FUNCTION:
      001549 80 18            [24] 3098 	sjmp	00109$
      00154B                       3099 00107$:
                                   3100 ;	../UI_Manager/ui.c:770: set_ui_state(INC, NULL);
      00154B E4               [12] 3101 	clr	a
      00154C C0 E0            [24] 3102 	push	acc
      00154E 75 82 01         [24] 3103 	mov	dpl,#0x01
      001551 12 17 40         [24] 3104 	lcall	_set_ui_state
      001554 15 81            [12] 3105 	dec	sp
                                   3106 ;	../UI_Manager/ui.c:771: return;
      001556 22               [24] 3107 	ret
                                   3108 ;	../UI_Manager/ui.c:772: case BUTTON_TIMER:
      001557                       3109 00108$:
                                   3110 ;	../UI_Manager/ui.c:773: set_ui_state(DEC, NULL);
      001557 E4               [12] 3111 	clr	a
      001558 C0 E0            [24] 3112 	push	acc
      00155A 75 82 02         [24] 3113 	mov	dpl,#0x02
      00155D 12 17 40         [24] 3114 	lcall	_set_ui_state
      001560 15 81            [12] 3115 	dec	sp
                                   3116 ;	../UI_Manager/ui.c:774: return;
      001562 22               [24] 3117 	ret
                                   3118 ;	../UI_Manager/ui.c:775: }
      001563                       3119 00109$:
                                   3120 ;	../UI_Manager/ui.c:777: if(Changed){
      001563 E5 09            [12] 3121 	mov	a,_Changed
      001565 60 4B            [24] 3122 	jz	00114$
                                   3123 ;	../UI_Manager/ui.c:778: Changed = 0x00;
      001567 75 09 00         [24] 3124 	mov	_Changed,#0x00
                                   3125 ;	../UI_Manager/ui.c:779: changed = 0xFF;
      00156A 75 0A FF         [24] 3126 	mov	_changed,#0xff
                                   3127 ;	../UI_Manager/ui.c:781: exe_command(CLEAR_DISPLAY);
      00156D 90 80 00         [24] 3128 	mov	dptr,#0x8000
      001570 12 1F E6         [24] 3129 	lcall	_exe_command
                                   3130 ;	../UI_Manager/ui.c:783: if(State == MANUAL_SAVE_SETTINGS_STATE){
      001573 74 0D            [12] 3131 	mov	a,#0x0d
      001575 B5 08 1E         [24] 3132 	cjne	a,_State,00111$
                                   3133 ;	../UI_Manager/ui.c:784: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
      001578 E4               [12] 3134 	clr	a
      001579 C0 E0            [24] 3135 	push	acc
      00157B C0 E0            [24] 3136 	push	acc
      00157D 74 02            [12] 3137 	mov	a,#0x02
      00157F C0 E0            [24] 3138 	push	acc
      001581 74 0E            [12] 3139 	mov	a,#0x0e
      001583 C0 E0            [24] 3140 	push	acc
      001585 90 38 16         [24] 3141 	mov	dptr,#___str_28
      001588 75 F0 80         [24] 3142 	mov	b,#0x80
      00158B 12 1C AB         [24] 3143 	lcall	_write_string
      00158E E5 81            [12] 3144 	mov	a,sp
      001590 24 FC            [12] 3145 	add	a,#0xfc
      001592 F5 81            [12] 3146 	mov	sp,a
      001594 80 1C            [24] 3147 	sjmp	00114$
      001596                       3148 00111$:
                                   3149 ;	../UI_Manager/ui.c:786: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
      001596 E4               [12] 3150 	clr	a
      001597 C0 E0            [24] 3151 	push	acc
      001599 C0 E0            [24] 3152 	push	acc
      00159B 74 02            [12] 3153 	mov	a,#0x02
      00159D C0 E0            [24] 3154 	push	acc
      00159F 74 0E            [12] 3155 	mov	a,#0x0e
      0015A1 C0 E0            [24] 3156 	push	acc
      0015A3 90 38 24         [24] 3157 	mov	dptr,#___str_29
      0015A6 75 F0 80         [24] 3158 	mov	b,#0x80
      0015A9 12 1C AB         [24] 3159 	lcall	_write_string
      0015AC E5 81            [12] 3160 	mov	a,sp
      0015AE 24 FC            [12] 3161 	add	a,#0xfc
      0015B0 F5 81            [12] 3162 	mov	sp,a
      0015B2                       3163 00114$:
                                   3164 ;	../UI_Manager/ui.c:791: if(changed){
      0015B2 E5 0A            [12] 3165 	mov	a,_changed
      0015B4 60 36            [24] 3166 	jz	00117$
                                   3167 ;	../UI_Manager/ui.c:792: changed = 0x00;
      0015B6 75 0A 00         [24] 3168 	mov	_changed,#0x00
                                   3169 ;	../UI_Manager/ui.c:793: write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
      0015B9 75 F0 03         [24] 3170 	mov	b,#0x03
      0015BC E5 12            [12] 3171 	mov	a,_saveLoadPage_slot_65536_142
      0015BE 84               [48] 3172 	div	ab
      0015BF AF F0            [24] 3173 	mov	r7,b
      0015C1 74 50            [12] 3174 	mov	a,#0x50
      0015C3 2F               [12] 3175 	add	a,r7
      0015C4 F5 82            [12] 3176 	mov	dpl,a
      0015C6 12 18 4D         [24] 3177 	lcall	_getString
      0015C9 AD 82            [24] 3178 	mov	r5,dpl
      0015CB AE 83            [24] 3179 	mov	r6,dph
      0015CD AF F0            [24] 3180 	mov	r7,b
      0015CF E4               [12] 3181 	clr	a
      0015D0 C0 E0            [24] 3182 	push	acc
      0015D2 04               [12] 3183 	inc	a
      0015D3 C0 E0            [24] 3184 	push	acc
      0015D5 74 04            [12] 3185 	mov	a,#0x04
      0015D7 C0 E0            [24] 3186 	push	acc
      0015D9 74 10            [12] 3187 	mov	a,#0x10
      0015DB C0 E0            [24] 3188 	push	acc
      0015DD 8D 82            [24] 3189 	mov	dpl,r5
      0015DF 8E 83            [24] 3190 	mov	dph,r6
      0015E1 8F F0            [24] 3191 	mov	b,r7
      0015E3 12 1C AB         [24] 3192 	lcall	_write_string
      0015E6 E5 81            [12] 3193 	mov	a,sp
      0015E8 24 FC            [12] 3194 	add	a,#0xfc
      0015EA F5 81            [12] 3195 	mov	sp,a
      0015EC                       3196 00117$:
                                   3197 ;	../UI_Manager/ui.c:796: }
      0015EC 22               [24] 3198 	ret
                                   3199 ;------------------------------------------------------------
                                   3200 ;Allocation info for local variables in function 'dmxAddressPage'
                                   3201 ;------------------------------------------------------------
                                   3202 ;action                    Allocated to registers r7 
                                   3203 ;------------------------------------------------------------
                                   3204 ;	../UI_Manager/ui.c:798: void dmxAddressPage(uint8_t action){
                                   3205 ;	-----------------------------------------
                                   3206 ;	 function dmxAddressPage
                                   3207 ;	-----------------------------------------
      0015ED                       3208 _dmxAddressPage:
      0015ED AF 82            [24] 3209 	mov	r7,dpl
                                   3210 ;	../UI_Manager/ui.c:800: switch (action)
      0015EF BF 01 02         [24] 3211 	cjne	r7,#0x01,00146$
      0015F2 80 3B            [24] 3212 	sjmp	00106$
      0015F4                       3213 00146$:
      0015F4 BF 02 02         [24] 3214 	cjne	r7,#0x02,00147$
      0015F7 80 2A            [24] 3215 	sjmp	00105$
      0015F9                       3216 00147$:
      0015F9 BF 03 02         [24] 3217 	cjne	r7,#0x03,00148$
      0015FC 80 0F            [24] 3218 	sjmp	00102$
      0015FE                       3219 00148$:
      0015FE BF 0B 02         [24] 3220 	cjne	r7,#0x0b,00149$
      001601 80 15            [24] 3221 	sjmp	00104$
      001603                       3222 00149$:
      001603 BF 1F 02         [24] 3223 	cjne	r7,#0x1f,00150$
      001606 80 05            [24] 3224 	sjmp	00102$
      001608                       3225 00150$:
                                   3226 ;	../UI_Manager/ui.c:803: case BUTTON_UP:
      001608 BF 6F 30         [24] 3227 	cjne	r7,#0x6f,00107$
      00160B 80 0B            [24] 3228 	sjmp	00104$
      00160D                       3229 00102$:
                                   3230 ;	../UI_Manager/ui.c:804: set_dmx_address(INC);
      00160D 75 82 01         [24] 3231 	mov	dpl,#0x01
      001610 12 30 53         [24] 3232 	lcall	_set_dmx_address
                                   3233 ;	../UI_Manager/ui.c:805: changed = 0xFF;
      001613 75 0A FF         [24] 3234 	mov	_changed,#0xff
                                   3235 ;	../UI_Manager/ui.c:806: break;
                                   3236 ;	../UI_Manager/ui.c:808: case BUTTON_DOWN:
      001616 80 23            [24] 3237 	sjmp	00107$
      001618                       3238 00104$:
                                   3239 ;	../UI_Manager/ui.c:809: set_dmx_address(DEC);
      001618 75 82 02         [24] 3240 	mov	dpl,#0x02
      00161B 12 30 53         [24] 3241 	lcall	_set_dmx_address
                                   3242 ;	../UI_Manager/ui.c:810: changed = 0xFF;  
      00161E 75 0A FF         [24] 3243 	mov	_changed,#0xff
                                   3244 ;	../UI_Manager/ui.c:811: break;
                                   3245 ;	../UI_Manager/ui.c:812: case BUTTON_FUNCTION:
      001621 80 18            [24] 3246 	sjmp	00107$
      001623                       3247 00105$:
                                   3248 ;	../UI_Manager/ui.c:813: set_ui_state(INC, NULL);
      001623 E4               [12] 3249 	clr	a
      001624 C0 E0            [24] 3250 	push	acc
      001626 75 82 01         [24] 3251 	mov	dpl,#0x01
      001629 12 17 40         [24] 3252 	lcall	_set_ui_state
      00162C 15 81            [12] 3253 	dec	sp
                                   3254 ;	../UI_Manager/ui.c:814: return;
                                   3255 ;	../UI_Manager/ui.c:815: case BUTTON_TIMER:
      00162E 22               [24] 3256 	ret
      00162F                       3257 00106$:
                                   3258 ;	../UI_Manager/ui.c:816: set_ui_state(DEC, NULL);
      00162F E4               [12] 3259 	clr	a
      001630 C0 E0            [24] 3260 	push	acc
      001632 75 82 02         [24] 3261 	mov	dpl,#0x02
      001635 12 17 40         [24] 3262 	lcall	_set_ui_state
      001638 15 81            [12] 3263 	dec	sp
                                   3264 ;	../UI_Manager/ui.c:817: return;
                                   3265 ;	../UI_Manager/ui.c:818: }
      00163A 22               [24] 3266 	ret
      00163B                       3267 00107$:
                                   3268 ;	../UI_Manager/ui.c:820: if(Changed){
      00163B E5 09            [12] 3269 	mov	a,_Changed
      00163D 60 28            [24] 3270 	jz	00109$
                                   3271 ;	../UI_Manager/ui.c:821: Changed = 0x00;
      00163F 75 09 00         [24] 3272 	mov	_Changed,#0x00
                                   3273 ;	../UI_Manager/ui.c:822: changed = 0xFF;
      001642 75 0A FF         [24] 3274 	mov	_changed,#0xff
                                   3275 ;	../UI_Manager/ui.c:824: exe_command(CLEAR_DISPLAY);
      001645 90 80 00         [24] 3276 	mov	dptr,#0x8000
      001648 12 1F E6         [24] 3277 	lcall	_exe_command
                                   3278 ;	../UI_Manager/ui.c:826: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
      00164B E4               [12] 3279 	clr	a
      00164C C0 E0            [24] 3280 	push	acc
      00164E C0 E0            [24] 3281 	push	acc
      001650 74 02            [12] 3282 	mov	a,#0x02
      001652 C0 E0            [24] 3283 	push	acc
      001654 74 0C            [12] 3284 	mov	a,#0x0c
      001656 C0 E0            [24] 3285 	push	acc
      001658 90 38 32         [24] 3286 	mov	dptr,#___str_30
      00165B 75 F0 80         [24] 3287 	mov	b,#0x80
      00165E 12 1C AB         [24] 3288 	lcall	_write_string
      001661 E5 81            [12] 3289 	mov	a,sp
      001663 24 FC            [12] 3290 	add	a,#0xfc
      001665 F5 81            [12] 3291 	mov	sp,a
      001667                       3292 00109$:
                                   3293 ;	../UI_Manager/ui.c:829: if(changed){
      001667 E5 0A            [12] 3294 	mov	a,_changed
      001669 60 19            [24] 3295 	jz	00112$
                                   3296 ;	../UI_Manager/ui.c:830: changed = 0x00;
      00166B 75 0A 00         [24] 3297 	mov	_changed,#0x00
                                   3298 ;	../UI_Manager/ui.c:832: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      00166E 12 30 B3         [24] 3299 	lcall	_get_dmx_address
      001671 E4               [12] 3300 	clr	a
      001672 C0 E0            [24] 3301 	push	acc
      001674 04               [12] 3302 	inc	a
      001675 C0 E0            [24] 3303 	push	acc
      001677 74 04            [12] 3304 	mov	a,#0x04
      001679 C0 E0            [24] 3305 	push	acc
      00167B 12 1D 68         [24] 3306 	lcall	_write_number
      00167E 15 81            [12] 3307 	dec	sp
      001680 15 81            [12] 3308 	dec	sp
      001682 15 81            [12] 3309 	dec	sp
      001684                       3310 00112$:
                                   3311 ;	../UI_Manager/ui.c:835: }
      001684 22               [24] 3312 	ret
                                   3313 ;------------------------------------------------------------
                                   3314 ;Allocation info for local variables in function 'dmxChannelPage'
                                   3315 ;------------------------------------------------------------
                                   3316 ;action                    Allocated to registers r7 
                                   3317 ;------------------------------------------------------------
                                   3318 ;	../UI_Manager/ui.c:837: void dmxChannelPage(uint8_t action){
                                   3319 ;	-----------------------------------------
                                   3320 ;	 function dmxChannelPage
                                   3321 ;	-----------------------------------------
      001685                       3322 _dmxChannelPage:
      001685 AF 82            [24] 3323 	mov	r7,dpl
                                   3324 ;	../UI_Manager/ui.c:839: switch (action)
      001687 BF 01 02         [24] 3325 	cjne	r7,#0x01,00136$
      00168A 80 46            [24] 3326 	sjmp	00104$
      00168C                       3327 00136$:
      00168C BF 02 02         [24] 3328 	cjne	r7,#0x02,00137$
      00168F 80 35            [24] 3329 	sjmp	00103$
      001691                       3330 00137$:
      001691 BF 03 02         [24] 3331 	cjne	r7,#0x03,00138$
      001694 80 05            [24] 3332 	sjmp	00101$
      001696                       3333 00138$:
                                   3334 ;	../UI_Manager/ui.c:841: case BUTTON_UP:
      001696 BF 0B 45         [24] 3335 	cjne	r7,#0x0b,00105$
      001699 80 15            [24] 3336 	sjmp	00102$
      00169B                       3337 00101$:
                                   3338 ;	../UI_Manager/ui.c:842: set_runtime_data(MODE_INDEX, INC, NULL);
      00169B E4               [12] 3339 	clr	a
      00169C C0 E0            [24] 3340 	push	acc
      00169E 04               [12] 3341 	inc	a
      00169F C0 E0            [24] 3342 	push	acc
      0016A1 75 82 0E         [24] 3343 	mov	dpl,#0x0e
      0016A4 12 2F C0         [24] 3344 	lcall	_set_runtime_data
      0016A7 15 81            [12] 3345 	dec	sp
      0016A9 15 81            [12] 3346 	dec	sp
                                   3347 ;	../UI_Manager/ui.c:843: changed = 0xFF;
      0016AB 75 0A FF         [24] 3348 	mov	_changed,#0xff
                                   3349 ;	../UI_Manager/ui.c:844: break;
                                   3350 ;	../UI_Manager/ui.c:845: case BUTTON_DOWN:
      0016AE 80 2E            [24] 3351 	sjmp	00105$
      0016B0                       3352 00102$:
                                   3353 ;	../UI_Manager/ui.c:846: set_runtime_data(MODE_INDEX, DEC, NULL);
      0016B0 E4               [12] 3354 	clr	a
      0016B1 C0 E0            [24] 3355 	push	acc
      0016B3 74 02            [12] 3356 	mov	a,#0x02
      0016B5 C0 E0            [24] 3357 	push	acc
      0016B7 75 82 0E         [24] 3358 	mov	dpl,#0x0e
      0016BA 12 2F C0         [24] 3359 	lcall	_set_runtime_data
      0016BD 15 81            [12] 3360 	dec	sp
      0016BF 15 81            [12] 3361 	dec	sp
                                   3362 ;	../UI_Manager/ui.c:847: changed = 0xFF;  
      0016C1 75 0A FF         [24] 3363 	mov	_changed,#0xff
                                   3364 ;	../UI_Manager/ui.c:848: break;
                                   3365 ;	../UI_Manager/ui.c:849: case BUTTON_FUNCTION:
      0016C4 80 18            [24] 3366 	sjmp	00105$
      0016C6                       3367 00103$:
                                   3368 ;	../UI_Manager/ui.c:850: set_ui_state(INC, NULL);
      0016C6 E4               [12] 3369 	clr	a
      0016C7 C0 E0            [24] 3370 	push	acc
      0016C9 75 82 01         [24] 3371 	mov	dpl,#0x01
      0016CC 12 17 40         [24] 3372 	lcall	_set_ui_state
      0016CF 15 81            [12] 3373 	dec	sp
                                   3374 ;	../UI_Manager/ui.c:851: return;
                                   3375 ;	../UI_Manager/ui.c:852: case BUTTON_TIMER:
      0016D1 22               [24] 3376 	ret
      0016D2                       3377 00104$:
                                   3378 ;	../UI_Manager/ui.c:853: set_ui_state(DEC, NULL);
      0016D2 E4               [12] 3379 	clr	a
      0016D3 C0 E0            [24] 3380 	push	acc
      0016D5 75 82 02         [24] 3381 	mov	dpl,#0x02
      0016D8 12 17 40         [24] 3382 	lcall	_set_ui_state
      0016DB 15 81            [12] 3383 	dec	sp
                                   3384 ;	../UI_Manager/ui.c:854: return;
                                   3385 ;	../UI_Manager/ui.c:855: }
      0016DD 22               [24] 3386 	ret
      0016DE                       3387 00105$:
                                   3388 ;	../UI_Manager/ui.c:857: if(Changed){
      0016DE E5 09            [12] 3389 	mov	a,_Changed
      0016E0 60 26            [24] 3390 	jz	00107$
                                   3391 ;	../UI_Manager/ui.c:858: Changed = 0x00;
      0016E2 75 09 00         [24] 3392 	mov	_Changed,#0x00
                                   3393 ;	../UI_Manager/ui.c:859: changed = 0xFF;
      0016E5 75 0A FF         [24] 3394 	mov	_changed,#0xff
                                   3395 ;	../UI_Manager/ui.c:861: exe_command(CLEAR_DISPLAY);
      0016E8 90 80 00         [24] 3396 	mov	dptr,#0x8000
      0016EB 12 1F E6         [24] 3397 	lcall	_exe_command
                                   3398 ;	../UI_Manager/ui.c:863: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
      0016EE E4               [12] 3399 	clr	a
      0016EF C0 E0            [24] 3400 	push	acc
      0016F1 C0 E0            [24] 3401 	push	acc
      0016F3 C0 E0            [24] 3402 	push	acc
      0016F5 74 11            [12] 3403 	mov	a,#0x11
      0016F7 C0 E0            [24] 3404 	push	acc
      0016F9 90 38 3E         [24] 3405 	mov	dptr,#___str_31
      0016FC 75 F0 80         [24] 3406 	mov	b,#0x80
      0016FF 12 1C AB         [24] 3407 	lcall	_write_string
      001702 E5 81            [12] 3408 	mov	a,sp
      001704 24 FC            [12] 3409 	add	a,#0xfc
      001706 F5 81            [12] 3410 	mov	sp,a
      001708                       3411 00107$:
                                   3412 ;	../UI_Manager/ui.c:866: if(changed){
      001708 E5 0A            [12] 3413 	mov	a,_changed
      00170A 60 33            [24] 3414 	jz	00110$
                                   3415 ;	../UI_Manager/ui.c:867: changed = 0x00;
      00170C 75 0A 00         [24] 3416 	mov	_changed,#0x00
                                   3417 ;	../UI_Manager/ui.c:869: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
      00170F 75 82 0E         [24] 3418 	mov	dpl,#0x0e
      001712 12 2F 00         [24] 3419 	lcall	_get_runtime_data
      001715 AF 82            [24] 3420 	mov	r7,dpl
      001717 74 64            [12] 3421 	mov	a,#0x64
      001719 2F               [12] 3422 	add	a,r7
      00171A F5 82            [12] 3423 	mov	dpl,a
      00171C 12 18 4D         [24] 3424 	lcall	_getString
      00171F AD 82            [24] 3425 	mov	r5,dpl
      001721 AE 83            [24] 3426 	mov	r6,dph
      001723 AF F0            [24] 3427 	mov	r7,b
      001725 E4               [12] 3428 	clr	a
      001726 C0 E0            [24] 3429 	push	acc
      001728 04               [12] 3430 	inc	a
      001729 C0 E0            [24] 3431 	push	acc
      00172B C0 E0            [24] 3432 	push	acc
      00172D C4               [12] 3433 	swap	a
      00172E C0 E0            [24] 3434 	push	acc
      001730 8D 82            [24] 3435 	mov	dpl,r5
      001732 8E 83            [24] 3436 	mov	dph,r6
      001734 8F F0            [24] 3437 	mov	b,r7
      001736 12 1C AB         [24] 3438 	lcall	_write_string
      001739 E5 81            [12] 3439 	mov	a,sp
      00173B 24 FC            [12] 3440 	add	a,#0xfc
      00173D F5 81            [12] 3441 	mov	sp,a
      00173F                       3442 00110$:
                                   3443 ;	../UI_Manager/ui.c:872: }
      00173F 22               [24] 3444 	ret
                                   3445 ;------------------------------------------------------------
                                   3446 ;Allocation info for local variables in function 'set_ui_state'
                                   3447 ;------------------------------------------------------------
                                   3448 ;state                     Allocated to stack - _bp -3
                                   3449 ;inc                       Allocated to registers r7 
                                   3450 ;------------------------------------------------------------
                                   3451 ;	../UI_Manager/ui.c:874: void set_ui_state(uint8_t inc, uint8_t state){
                                   3452 ;	-----------------------------------------
                                   3453 ;	 function set_ui_state
                                   3454 ;	-----------------------------------------
      001740                       3455 _set_ui_state:
      001740 C0 1A            [24] 3456 	push	_bp
      001742 85 81 1A         [24] 3457 	mov	_bp,sp
      001745 AF 82            [24] 3458 	mov	r7,dpl
                                   3459 ;	../UI_Manager/ui.c:875: Changed = CHANGE_SCREEN_X;
      001747 75 09 FF         [24] 3460 	mov	_Changed,#0xff
                                   3461 ;	../UI_Manager/ui.c:877: switch (inc)
      00174A BF 01 02         [24] 3462 	cjne	r7,#0x01,00187$
      00174D 80 77            [24] 3463 	sjmp	00115$
      00174F                       3464 00187$:
      00174F BF 02 02         [24] 3465 	cjne	r7,#0x02,00188$
      001752 80 03            [24] 3466 	sjmp	00189$
      001754                       3467 00188$:
      001754 02 18 1A         [24] 3468 	ljmp	00127$
      001757                       3469 00189$:
                                   3470 ;	../UI_Manager/ui.c:880: state = State;
      001757 E5 1A            [12] 3471 	mov	a,_bp
      001759 24 FD            [12] 3472 	add	a,#0xfd
      00175B F8               [12] 3473 	mov	r0,a
      00175C A6 08            [24] 3474 	mov	@r0,_State
                                   3475 ;	../UI_Manager/ui.c:881: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00175E 75 82 10         [24] 3476 	mov	dpl,#0x10
      001761 12 2F 00         [24] 3477 	lcall	_get_runtime_data
      001764 E5 82            [12] 3478 	mov	a,dpl
      001766 70 2F            [24] 3479 	jnz	00113$
                                   3480 ;	../UI_Manager/ui.c:882: if(state == IDLE_STATE){
      001768 E5 1A            [12] 3481 	mov	a,_bp
      00176A 24 FD            [12] 3482 	add	a,#0xfd
      00176C F8               [12] 3483 	mov	r0,a
      00176D E6               [12] 3484 	mov	a,@r0
      00176E 70 0A            [24] 3485 	jnz	00105$
                                   3486 ;	../UI_Manager/ui.c:883: state = DMX_STATE_LOW;
      001770 E5 1A            [12] 3487 	mov	a,_bp
      001772 24 FD            [12] 3488 	add	a,#0xfd
      001774 F8               [12] 3489 	mov	r0,a
      001775 76 14            [12] 3490 	mov	@r0,#0x14
      001777 02 18 3F         [24] 3491 	ljmp	00132$
      00177A                       3492 00105$:
                                   3493 ;	../UI_Manager/ui.c:884: } else if(++state > DMX_STATE_HIGH){
      00177A E5 1A            [12] 3494 	mov	a,_bp
      00177C 24 FD            [12] 3495 	add	a,#0xfd
      00177E F8               [12] 3496 	mov	r0,a
      00177F 06               [12] 3497 	inc	@r0
      001780 E5 1A            [12] 3498 	mov	a,_bp
      001782 24 FD            [12] 3499 	add	a,#0xfd
      001784 F8               [12] 3500 	mov	r0,a
      001785 E6               [12] 3501 	mov	a,@r0
      001786 24 EA            [12] 3502 	add	a,#0xff - 0x15
      001788 40 03            [24] 3503 	jc	00192$
      00178A 02 18 3F         [24] 3504 	ljmp	00132$
      00178D                       3505 00192$:
                                   3506 ;	../UI_Manager/ui.c:885: state = IDLE_STATE;
      00178D E5 1A            [12] 3507 	mov	a,_bp
      00178F 24 FD            [12] 3508 	add	a,#0xfd
      001791 F8               [12] 3509 	mov	r0,a
      001792 76 00            [12] 3510 	mov	@r0,#0x00
      001794 02 18 3F         [24] 3511 	ljmp	00132$
      001797                       3512 00113$:
                                   3513 ;	../UI_Manager/ui.c:888: if(state == IDLE_STATE){
      001797 E5 1A            [12] 3514 	mov	a,_bp
      001799 24 FD            [12] 3515 	add	a,#0xfd
      00179B F8               [12] 3516 	mov	r0,a
      00179C E6               [12] 3517 	mov	a,@r0
      00179D 70 0A            [24] 3518 	jnz	00110$
                                   3519 ;	../UI_Manager/ui.c:889: state = IDLE_STATE + 1; 
      00179F E5 1A            [12] 3520 	mov	a,_bp
      0017A1 24 FD            [12] 3521 	add	a,#0xfd
      0017A3 F8               [12] 3522 	mov	r0,a
      0017A4 76 01            [12] 3523 	mov	@r0,#0x01
      0017A6 02 18 3F         [24] 3524 	ljmp	00132$
      0017A9                       3525 00110$:
                                   3526 ;	../UI_Manager/ui.c:890: } else if(++state > MANUAL_STATE_HIGH){
      0017A9 E5 1A            [12] 3527 	mov	a,_bp
      0017AB 24 FD            [12] 3528 	add	a,#0xfd
      0017AD F8               [12] 3529 	mov	r0,a
      0017AE 06               [12] 3530 	inc	@r0
      0017AF E5 1A            [12] 3531 	mov	a,_bp
      0017B1 24 FD            [12] 3532 	add	a,#0xfd
      0017B3 F8               [12] 3533 	mov	r0,a
      0017B4 E6               [12] 3534 	mov	a,@r0
      0017B5 24 F1            [12] 3535 	add	a,#0xff - 0x0e
      0017B7 40 03            [24] 3536 	jc	00194$
      0017B9 02 18 3F         [24] 3537 	ljmp	00132$
      0017BC                       3538 00194$:
                                   3539 ;	../UI_Manager/ui.c:891: state = IDLE_STATE;
      0017BC E5 1A            [12] 3540 	mov	a,_bp
      0017BE 24 FD            [12] 3541 	add	a,#0xfd
      0017C0 F8               [12] 3542 	mov	r0,a
      0017C1 76 00            [12] 3543 	mov	@r0,#0x00
                                   3544 ;	../UI_Manager/ui.c:894: break;
      0017C3 02 18 3F         [24] 3545 	ljmp	00132$
                                   3546 ;	../UI_Manager/ui.c:895: case INC:
      0017C6                       3547 00115$:
                                   3548 ;	../UI_Manager/ui.c:896: state = State;
      0017C6 E5 1A            [12] 3549 	mov	a,_bp
      0017C8 24 FD            [12] 3550 	add	a,#0xfd
      0017CA F8               [12] 3551 	mov	r0,a
      0017CB A6 08            [24] 3552 	mov	@r0,_State
                                   3553 ;	../UI_Manager/ui.c:897: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0017CD 75 82 10         [24] 3554 	mov	dpl,#0x10
      0017D0 12 2F 00         [24] 3555 	lcall	_get_runtime_data
      0017D3 E5 82            [12] 3556 	mov	a,dpl
      0017D5 70 2A            [24] 3557 	jnz	00125$
                                   3558 ;	../UI_Manager/ui.c:898: if(state == IDLE_STATE){
      0017D7 E5 1A            [12] 3559 	mov	a,_bp
      0017D9 24 FD            [12] 3560 	add	a,#0xfd
      0017DB F8               [12] 3561 	mov	r0,a
      0017DC E6               [12] 3562 	mov	a,@r0
      0017DD 70 09            [24] 3563 	jnz	00119$
                                   3564 ;	../UI_Manager/ui.c:899: state = DMX_STATE_HIGH;
      0017DF E5 1A            [12] 3565 	mov	a,_bp
      0017E1 24 FD            [12] 3566 	add	a,#0xfd
      0017E3 F8               [12] 3567 	mov	r0,a
      0017E4 76 15            [12] 3568 	mov	@r0,#0x15
      0017E6 80 57            [24] 3569 	sjmp	00132$
      0017E8                       3570 00119$:
                                   3571 ;	../UI_Manager/ui.c:900: } else if(--state < DMX_STATE_LOW){
      0017E8 E5 1A            [12] 3572 	mov	a,_bp
      0017EA 24 FD            [12] 3573 	add	a,#0xfd
      0017EC F8               [12] 3574 	mov	r0,a
      0017ED 16               [12] 3575 	dec	@r0
      0017EE E5 1A            [12] 3576 	mov	a,_bp
      0017F0 24 FD            [12] 3577 	add	a,#0xfd
      0017F2 F8               [12] 3578 	mov	r0,a
      0017F3 B6 14 00         [24] 3579 	cjne	@r0,#0x14,00197$
      0017F6                       3580 00197$:
      0017F6 50 47            [24] 3581 	jnc	00132$
                                   3582 ;	../UI_Manager/ui.c:901: state = IDLE_STATE;
      0017F8 E5 1A            [12] 3583 	mov	a,_bp
      0017FA 24 FD            [12] 3584 	add	a,#0xfd
      0017FC F8               [12] 3585 	mov	r0,a
      0017FD 76 00            [12] 3586 	mov	@r0,#0x00
      0017FF 80 3E            [24] 3587 	sjmp	00132$
      001801                       3588 00125$:
                                   3589 ;	../UI_Manager/ui.c:904: if(state == IDLE_STATE){
      001801 E5 1A            [12] 3590 	mov	a,_bp
      001803 24 FD            [12] 3591 	add	a,#0xfd
      001805 F8               [12] 3592 	mov	r0,a
      001806 E6               [12] 3593 	mov	a,@r0
      001807 70 09            [24] 3594 	jnz	00122$
                                   3595 ;	../UI_Manager/ui.c:905: state = MANUAL_STATE_HIGH; 
      001809 E5 1A            [12] 3596 	mov	a,_bp
      00180B 24 FD            [12] 3597 	add	a,#0xfd
      00180D F8               [12] 3598 	mov	r0,a
      00180E 76 0E            [12] 3599 	mov	@r0,#0x0e
      001810 80 2D            [24] 3600 	sjmp	00132$
      001812                       3601 00122$:
                                   3602 ;	../UI_Manager/ui.c:907: state--;
      001812 E5 1A            [12] 3603 	mov	a,_bp
      001814 24 FD            [12] 3604 	add	a,#0xfd
      001816 F8               [12] 3605 	mov	r0,a
      001817 16               [12] 3606 	dec	@r0
                                   3607 ;	../UI_Manager/ui.c:910: break;
                                   3608 ;	../UI_Manager/ui.c:911: default: 
      001818 80 25            [24] 3609 	sjmp	00132$
      00181A                       3610 00127$:
                                   3611 ;	../UI_Manager/ui.c:912: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
      00181A E5 1A            [12] 3612 	mov	a,_bp
      00181C 24 FD            [12] 3613 	add	a,#0xfd
      00181E F8               [12] 3614 	mov	r0,a
      00181F E6               [12] 3615 	mov	a,@r0
      001820 24 F1            [12] 3616 	add	a,#0xff - 0x0e
      001822 50 14            [24] 3617 	jnc	00128$
      001824 E5 1A            [12] 3618 	mov	a,_bp
      001826 24 FD            [12] 3619 	add	a,#0xfd
      001828 F8               [12] 3620 	mov	r0,a
      001829 B6 14 00         [24] 3621 	cjne	@r0,#0x14,00201$
      00182C                       3622 00201$:
      00182C 40 11            [24] 3623 	jc	00132$
      00182E E5 1A            [12] 3624 	mov	a,_bp
      001830 24 FD            [12] 3625 	add	a,#0xfd
      001832 F8               [12] 3626 	mov	r0,a
      001833 E6               [12] 3627 	mov	a,@r0
      001834 24 EA            [12] 3628 	add	a,#0xff - 0x15
      001836 40 07            [24] 3629 	jc	00132$
      001838                       3630 00128$:
                                   3631 ;	../UI_Manager/ui.c:913: state = IDLE_STATE;
      001838 E5 1A            [12] 3632 	mov	a,_bp
      00183A 24 FD            [12] 3633 	add	a,#0xfd
      00183C F8               [12] 3634 	mov	r0,a
      00183D 76 00            [12] 3635 	mov	@r0,#0x00
                                   3636 ;	../UI_Manager/ui.c:916: }
      00183F                       3637 00132$:
                                   3638 ;	../UI_Manager/ui.c:918: State = state;
      00183F E5 1A            [12] 3639 	mov	a,_bp
      001841 24 FD            [12] 3640 	add	a,#0xfd
      001843 F8               [12] 3641 	mov	r0,a
      001844 86 08            [24] 3642 	mov	_State,@r0
                                   3643 ;	../UI_Manager/ui.c:919: }
      001846 D0 1A            [24] 3644 	pop	_bp
      001848 22               [24] 3645 	ret
                                   3646 ;------------------------------------------------------------
                                   3647 ;Allocation info for local variables in function 'get_ui_state'
                                   3648 ;------------------------------------------------------------
                                   3649 ;	../UI_Manager/ui.c:921: uint8_t get_ui_state(){
                                   3650 ;	-----------------------------------------
                                   3651 ;	 function get_ui_state
                                   3652 ;	-----------------------------------------
      001849                       3653 _get_ui_state:
                                   3654 ;	../UI_Manager/ui.c:922: return State;
      001849 85 08 82         [24] 3655 	mov	dpl,_State
                                   3656 ;	../UI_Manager/ui.c:923: }
      00184C 22               [24] 3657 	ret
                                   3658 ;------------------------------------------------------------
                                   3659 ;Allocation info for local variables in function 'getString'
                                   3660 ;------------------------------------------------------------
                                   3661 ;index                     Allocated to registers r7 
                                   3662 ;------------------------------------------------------------
                                   3663 ;	../UI_Manager/ui.c:925: char* getString(uint8_t index){
                                   3664 ;	-----------------------------------------
                                   3665 ;	 function getString
                                   3666 ;	-----------------------------------------
      00184D                       3667 _getString:
      00184D AF 82            [24] 3668 	mov	r7,dpl
                                   3669 ;	../UI_Manager/ui.c:926: switch (index)
      00184F 8F 06            [24] 3670 	mov	ar6,r7
      001851 BE 00 03         [24] 3671 	cjne	r6,#0x00,00299$
      001854 02 19 3E         [24] 3672 	ljmp	00101$
      001857                       3673 00299$:
      001857 BE 01 03         [24] 3674 	cjne	r6,#0x01,00300$
      00185A 02 19 45         [24] 3675 	ljmp	00102$
      00185D                       3676 00300$:
      00185D BF 02 03         [24] 3677 	cjne	r7,#0x02,00301$
      001860 02 19 4C         [24] 3678 	ljmp	00103$
      001863                       3679 00301$:
      001863 BF 14 03         [24] 3680 	cjne	r7,#0x14,00302$
      001866 02 19 53         [24] 3681 	ljmp	00104$
      001869                       3682 00302$:
      001869 BF 15 03         [24] 3683 	cjne	r7,#0x15,00303$
      00186C 02 19 5A         [24] 3684 	ljmp	00105$
      00186F                       3685 00303$:
      00186F BF 16 03         [24] 3686 	cjne	r7,#0x16,00304$
      001872 02 19 61         [24] 3687 	ljmp	00106$
      001875                       3688 00304$:
      001875 BF 17 03         [24] 3689 	cjne	r7,#0x17,00305$
      001878 02 19 68         [24] 3690 	ljmp	00107$
      00187B                       3691 00305$:
      00187B BF 18 03         [24] 3692 	cjne	r7,#0x18,00306$
      00187E 02 19 76         [24] 3693 	ljmp	00109$
      001881                       3694 00306$:
      001881 BF 19 03         [24] 3695 	cjne	r7,#0x19,00307$
      001884 02 19 7D         [24] 3696 	ljmp	00110$
      001887                       3697 00307$:
      001887 BF 1A 03         [24] 3698 	cjne	r7,#0x1a,00308$
      00188A 02 19 6F         [24] 3699 	ljmp	00108$
      00188D                       3700 00308$:
      00188D BF 28 03         [24] 3701 	cjne	r7,#0x28,00309$
      001890 02 1A 25         [24] 3702 	ljmp	00134$
      001893                       3703 00309$:
      001893 BF 29 03         [24] 3704 	cjne	r7,#0x29,00310$
      001896 02 1A 2C         [24] 3705 	ljmp	00135$
      001899                       3706 00310$:
      001899 BF 2A 03         [24] 3707 	cjne	r7,#0x2a,00311$
      00189C 02 1A 33         [24] 3708 	ljmp	00136$
      00189F                       3709 00311$:
      00189F BF 2B 03         [24] 3710 	cjne	r7,#0x2b,00312$
      0018A2 02 1A 3A         [24] 3711 	ljmp	00137$
      0018A5                       3712 00312$:
      0018A5 BF 2C 03         [24] 3713 	cjne	r7,#0x2c,00313$
      0018A8 02 1A 41         [24] 3714 	ljmp	00138$
      0018AB                       3715 00313$:
      0018AB BF 2D 03         [24] 3716 	cjne	r7,#0x2d,00314$
      0018AE 02 1A 48         [24] 3717 	ljmp	00139$
      0018B1                       3718 00314$:
      0018B1 BF 3C 03         [24] 3719 	cjne	r7,#0x3c,00315$
      0018B4 02 19 A0         [24] 3720 	ljmp	00115$
      0018B7                       3721 00315$:
      0018B7 BF 3D 03         [24] 3722 	cjne	r7,#0x3d,00316$
      0018BA 02 19 A7         [24] 3723 	ljmp	00116$
      0018BD                       3724 00316$:
      0018BD BF 3E 03         [24] 3725 	cjne	r7,#0x3e,00317$
      0018C0 02 19 AE         [24] 3726 	ljmp	00117$
      0018C3                       3727 00317$:
      0018C3 BF 3F 03         [24] 3728 	cjne	r7,#0x3f,00318$
      0018C6 02 19 B5         [24] 3729 	ljmp	00118$
      0018C9                       3730 00318$:
      0018C9 BF 40 03         [24] 3731 	cjne	r7,#0x40,00319$
      0018CC 02 19 BC         [24] 3732 	ljmp	00119$
      0018CF                       3733 00319$:
      0018CF BF 41 03         [24] 3734 	cjne	r7,#0x41,00320$
      0018D2 02 19 C3         [24] 3735 	ljmp	00120$
      0018D5                       3736 00320$:
      0018D5 BF 42 03         [24] 3737 	cjne	r7,#0x42,00321$
      0018D8 02 19 CA         [24] 3738 	ljmp	00121$
      0018DB                       3739 00321$:
      0018DB BF 43 03         [24] 3740 	cjne	r7,#0x43,00322$
      0018DE 02 19 D1         [24] 3741 	ljmp	00122$
      0018E1                       3742 00322$:
      0018E1 BF 44 03         [24] 3743 	cjne	r7,#0x44,00323$
      0018E4 02 19 D8         [24] 3744 	ljmp	00123$
      0018E7                       3745 00323$:
      0018E7 BF 45 03         [24] 3746 	cjne	r7,#0x45,00324$
      0018EA 02 19 DF         [24] 3747 	ljmp	00124$
      0018ED                       3748 00324$:
      0018ED BF 46 03         [24] 3749 	cjne	r7,#0x46,00325$
      0018F0 02 19 E6         [24] 3750 	ljmp	00125$
      0018F3                       3751 00325$:
      0018F3 BF 47 03         [24] 3752 	cjne	r7,#0x47,00326$
      0018F6 02 19 ED         [24] 3753 	ljmp	00126$
      0018F9                       3754 00326$:
      0018F9 BF 48 03         [24] 3755 	cjne	r7,#0x48,00327$
      0018FC 02 19 F4         [24] 3756 	ljmp	00127$
      0018FF                       3757 00327$:
      0018FF BF 50 03         [24] 3758 	cjne	r7,#0x50,00328$
      001902 02 19 FB         [24] 3759 	ljmp	00128$
      001905                       3760 00328$:
      001905 BF 51 03         [24] 3761 	cjne	r7,#0x51,00329$
      001908 02 1A 02         [24] 3762 	ljmp	00129$
      00190B                       3763 00329$:
      00190B BF 52 03         [24] 3764 	cjne	r7,#0x52,00330$
      00190E 02 1A 09         [24] 3765 	ljmp	00130$
      001911                       3766 00330$:
      001911 BF 64 03         [24] 3767 	cjne	r7,#0x64,00331$
      001914 02 1A 10         [24] 3768 	ljmp	00131$
      001917                       3769 00331$:
      001917 BF 65 03         [24] 3770 	cjne	r7,#0x65,00332$
      00191A 02 1A 17         [24] 3771 	ljmp	00132$
      00191D                       3772 00332$:
      00191D BF 66 03         [24] 3773 	cjne	r7,#0x66,00333$
      001920 02 1A 1E         [24] 3774 	ljmp	00133$
      001923                       3775 00333$:
      001923 BF CE 03         [24] 3776 	cjne	r7,#0xce,00334$
      001926 02 19 84         [24] 3777 	ljmp	00111$
      001929                       3778 00334$:
      001929 BF CF 03         [24] 3779 	cjne	r7,#0xcf,00335$
      00192C 02 19 8B         [24] 3780 	ljmp	00112$
      00192F                       3781 00335$:
      00192F BF D0 03         [24] 3782 	cjne	r7,#0xd0,00336$
      001932 02 19 92         [24] 3783 	ljmp	00113$
      001935                       3784 00336$:
      001935 BF D1 03         [24] 3785 	cjne	r7,#0xd1,00337$
      001938 02 19 99         [24] 3786 	ljmp	00114$
      00193B                       3787 00337$:
      00193B 02 1A 4F         [24] 3788 	ljmp	00140$
                                   3789 ;	../UI_Manager/ui.c:928: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
      00193E                       3790 00101$:
                                   3791 ;	../UI_Manager/ui.c:929: return "Wimpy";
      00193E 90 38 4F         [24] 3792 	mov	dptr,#___str_32
      001941 75 F0 80         [24] 3793 	mov	b,#0x80
      001944 22               [24] 3794 	ret
                                   3795 ;	../UI_Manager/ui.c:930: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
      001945                       3796 00102$:
                                   3797 ;	../UI_Manager/ui.c:931: return "Mild";
      001945 90 38 55         [24] 3798 	mov	dptr,#___str_33
      001948 75 F0 80         [24] 3799 	mov	b,#0x80
      00194B 22               [24] 3800 	ret
                                   3801 ;	../UI_Manager/ui.c:932: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
      00194C                       3802 00103$:
                                   3803 ;	../UI_Manager/ui.c:933: return "Blazin";
      00194C 90 38 5A         [24] 3804 	mov	dptr,#___str_34
      00194F 75 F0 80         [24] 3805 	mov	b,#0x80
      001952 22               [24] 3806 	ret
                                   3807 ;	../UI_Manager/ui.c:935: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
      001953                       3808 00104$:
                                   3809 ;	../UI_Manager/ui.c:936: return "Off";
      001953 90 37 F2         [24] 3810 	mov	dptr,#___str_23
      001956 75 F0 80         [24] 3811 	mov	b,#0x80
      001959 22               [24] 3812 	ret
                                   3813 ;	../UI_Manager/ui.c:937: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
      00195A                       3814 00105$:
                                   3815 ;	../UI_Manager/ui.c:938: return "Rainbow";
      00195A 90 38 61         [24] 3816 	mov	dptr,#___str_35
      00195D 75 F0 80         [24] 3817 	mov	b,#0x80
      001960 22               [24] 3818 	ret
                                   3819 ;	../UI_Manager/ui.c:939: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
      001961                       3820 00106$:
                                   3821 ;	../UI_Manager/ui.c:940: return "Fire";
      001961 90 38 69         [24] 3822 	mov	dptr,#___str_36
      001964 75 F0 80         [24] 3823 	mov	b,#0x80
      001967 22               [24] 3824 	ret
                                   3825 ;	../UI_Manager/ui.c:941: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
      001968                       3826 00107$:
                                   3827 ;	../UI_Manager/ui.c:942: return "Water";
      001968 90 38 6E         [24] 3828 	mov	dptr,#___str_37
      00196B 75 F0 80         [24] 3829 	mov	b,#0x80
      00196E 22               [24] 3830 	ret
                                   3831 ;	../UI_Manager/ui.c:943: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
      00196F                       3832 00108$:
                                   3833 ;	../UI_Manager/ui.c:944: return "Storm";
      00196F 90 38 74         [24] 3834 	mov	dptr,#___str_38
      001972 75 F0 80         [24] 3835 	mov	b,#0x80
      001975 22               [24] 3836 	ret
                                   3837 ;	../UI_Manager/ui.c:945: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
      001976                       3838 00109$:
                                   3839 ;	../UI_Manager/ui.c:946: return "Acid";
      001976 90 38 7A         [24] 3840 	mov	dptr,#___str_39
      001979 75 F0 80         [24] 3841 	mov	b,#0x80
      00197C 22               [24] 3842 	ret
                                   3843 ;	../UI_Manager/ui.c:947: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
      00197D                       3844 00110$:
                                   3845 ;	../UI_Manager/ui.c:948: return "Ether";
      00197D 90 38 7F         [24] 3846 	mov	dptr,#___str_40
      001980 75 F0 80         [24] 3847 	mov	b,#0x80
      001983 22               [24] 3848 	ret
                                   3849 ;	../UI_Manager/ui.c:950: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
      001984                       3850 00111$:
                                   3851 ;	../UI_Manager/ui.c:951: return "Red Level";
      001984 90 38 85         [24] 3852 	mov	dptr,#___str_41
      001987 75 F0 80         [24] 3853 	mov	b,#0x80
      00198A 22               [24] 3854 	ret
                                   3855 ;	../UI_Manager/ui.c:952: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
      00198B                       3856 00112$:
                                   3857 ;	../UI_Manager/ui.c:953: return "Green Level";
      00198B 90 38 8F         [24] 3858 	mov	dptr,#___str_42
      00198E 75 F0 80         [24] 3859 	mov	b,#0x80
      001991 22               [24] 3860 	ret
                                   3861 ;	../UI_Manager/ui.c:954: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
      001992                       3862 00113$:
                                   3863 ;	../UI_Manager/ui.c:955: return "Blue Level";
      001992 90 38 9B         [24] 3864 	mov	dptr,#___str_43
      001995 75 F0 80         [24] 3865 	mov	b,#0x80
      001998 22               [24] 3866 	ret
                                   3867 ;	../UI_Manager/ui.c:956: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
      001999                       3868 00114$:
                                   3869 ;	../UI_Manager/ui.c:957: return "Strobe Level";
      001999 90 38 A6         [24] 3870 	mov	dptr,#___str_44
      00199C 75 F0 80         [24] 3871 	mov	b,#0x80
      00199F 22               [24] 3872 	ret
                                   3873 ;	../UI_Manager/ui.c:959: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
      0019A0                       3874 00115$:
                                   3875 ;	../UI_Manager/ui.c:960: return "No Action";
      0019A0 90 38 B3         [24] 3876 	mov	dptr,#___str_45
      0019A3 75 F0 80         [24] 3877 	mov	b,#0x80
      0019A6 22               [24] 3878 	ret
                                   3879 ;	../UI_Manager/ui.c:961: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      0019A7                       3880 00116$:
                                   3881 ;	../UI_Manager/ui.c:962: return "Choose Macro";
      0019A7 90 38 BD         [24] 3882 	mov	dptr,#___str_46
      0019AA 75 F0 80         [24] 3883 	mov	b,#0x80
      0019AD 22               [24] 3884 	ret
                                   3885 ;	../UI_Manager/ui.c:963: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
      0019AE                       3886 00117$:
                                   3887 ;	../UI_Manager/ui.c:964: return "Red";
      0019AE 90 38 CA         [24] 3888 	mov	dptr,#___str_47
      0019B1 75 F0 80         [24] 3889 	mov	b,#0x80
      0019B4 22               [24] 3890 	ret
                                   3891 ;	../UI_Manager/ui.c:965: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
      0019B5                       3892 00118$:
                                   3893 ;	../UI_Manager/ui.c:966: return "Yellow";
      0019B5 90 38 CE         [24] 3894 	mov	dptr,#___str_48
      0019B8 75 F0 80         [24] 3895 	mov	b,#0x80
      0019BB 22               [24] 3896 	ret
                                   3897 ;	../UI_Manager/ui.c:967: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
      0019BC                       3898 00119$:
                                   3899 ;	../UI_Manager/ui.c:968: return "Green";
      0019BC 90 38 D5         [24] 3900 	mov	dptr,#___str_49
      0019BF 75 F0 80         [24] 3901 	mov	b,#0x80
      0019C2 22               [24] 3902 	ret
                                   3903 ;	../UI_Manager/ui.c:969: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
      0019C3                       3904 00120$:
                                   3905 ;	../UI_Manager/ui.c:970: return "Cyan";
      0019C3 90 38 DB         [24] 3906 	mov	dptr,#___str_50
      0019C6 75 F0 80         [24] 3907 	mov	b,#0x80
      0019C9 22               [24] 3908 	ret
                                   3909 ;	../UI_Manager/ui.c:971: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
      0019CA                       3910 00121$:
                                   3911 ;	../UI_Manager/ui.c:972: return "Blue";
      0019CA 90 38 E0         [24] 3912 	mov	dptr,#___str_51
      0019CD 75 F0 80         [24] 3913 	mov	b,#0x80
      0019D0 22               [24] 3914 	ret
                                   3915 ;	../UI_Manager/ui.c:973: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
      0019D1                       3916 00122$:
                                   3917 ;	../UI_Manager/ui.c:974: return "Magenta";
      0019D1 90 38 E5         [24] 3918 	mov	dptr,#___str_52
      0019D4 75 F0 80         [24] 3919 	mov	b,#0x80
      0019D7 22               [24] 3920 	ret
                                   3921 ;	../UI_Manager/ui.c:975: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
      0019D8                       3922 00123$:
                                   3923 ;	../UI_Manager/ui.c:976: return "Strobe Slow";
      0019D8 90 38 ED         [24] 3924 	mov	dptr,#___str_53
      0019DB 75 F0 80         [24] 3925 	mov	b,#0x80
      0019DE 22               [24] 3926 	ret
                                   3927 ;	../UI_Manager/ui.c:977: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      0019DF                       3928 00124$:
                                   3929 ;	../UI_Manager/ui.c:978: return "Strobe Medium";
      0019DF 90 38 F9         [24] 3930 	mov	dptr,#___str_54
      0019E2 75 F0 80         [24] 3931 	mov	b,#0x80
      0019E5 22               [24] 3932 	ret
                                   3933 ;	../UI_Manager/ui.c:979: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
      0019E6                       3934 00125$:
                                   3935 ;	../UI_Manager/ui.c:980: return "Strobe Fast";
      0019E6 90 39 07         [24] 3936 	mov	dptr,#___str_55
      0019E9 75 F0 80         [24] 3937 	mov	b,#0x80
      0019EC 22               [24] 3938 	ret
                                   3939 ;	../UI_Manager/ui.c:981: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
      0019ED                       3940 00126$:
                                   3941 ;	../UI_Manager/ui.c:982: return "Blackout";
      0019ED 90 39 13         [24] 3942 	mov	dptr,#___str_56
      0019F0 75 F0 80         [24] 3943 	mov	b,#0x80
      0019F3 22               [24] 3944 	ret
                                   3945 ;	../UI_Manager/ui.c:983: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
      0019F4                       3946 00127$:
                                   3947 ;	../UI_Manager/ui.c:984: return "Whiteout";         
      0019F4 90 39 1C         [24] 3948 	mov	dptr,#___str_57
      0019F7 75 F0 80         [24] 3949 	mov	b,#0x80
      0019FA 22               [24] 3950 	ret
                                   3951 ;	../UI_Manager/ui.c:986: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
      0019FB                       3952 00128$:
                                   3953 ;	../UI_Manager/ui.c:987: return "Slot 1";   
      0019FB 90 39 25         [24] 3954 	mov	dptr,#___str_58
      0019FE 75 F0 80         [24] 3955 	mov	b,#0x80
      001A01 22               [24] 3956 	ret
                                   3957 ;	../UI_Manager/ui.c:988: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
      001A02                       3958 00129$:
                                   3959 ;	../UI_Manager/ui.c:989: return "Slot 2";   
      001A02 90 39 2C         [24] 3960 	mov	dptr,#___str_59
      001A05 75 F0 80         [24] 3961 	mov	b,#0x80
      001A08 22               [24] 3962 	ret
                                   3963 ;	../UI_Manager/ui.c:990: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
      001A09                       3964 00130$:
                                   3965 ;	../UI_Manager/ui.c:991: return "Slot 3"; 
      001A09 90 39 33         [24] 3966 	mov	dptr,#___str_60
      001A0C 75 F0 80         [24] 3967 	mov	b,#0x80
                                   3968 ;	../UI_Manager/ui.c:993: case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
      001A0F 22               [24] 3969 	ret
      001A10                       3970 00131$:
                                   3971 ;	../UI_Manager/ui.c:994: return "11 All";     
      001A10 90 39 3A         [24] 3972 	mov	dptr,#___str_61
      001A13 75 F0 80         [24] 3973 	mov	b,#0x80
                                   3974 ;	../UI_Manager/ui.c:995: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
      001A16 22               [24] 3975 	ret
      001A17                       3976 00132$:
                                   3977 ;	../UI_Manager/ui.c:996: return " 3 Fog + Macro";   
      001A17 90 39 41         [24] 3978 	mov	dptr,#___str_62
      001A1A 75 F0 80         [24] 3979 	mov	b,#0x80
                                   3980 ;	../UI_Manager/ui.c:997: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
      001A1D 22               [24] 3981 	ret
      001A1E                       3982 00133$:
                                   3983 ;	../UI_Manager/ui.c:998: return " 1 Fog";    
      001A1E 90 39 50         [24] 3984 	mov	dptr,#___str_63
      001A21 75 F0 80         [24] 3985 	mov	b,#0x80
                                   3986 ;	../UI_Manager/ui.c:1000: case SECRET_STRING_OFFSET + 0:
      001A24 22               [24] 3987 	ret
      001A25                       3988 00134$:
                                   3989 ;	../UI_Manager/ui.c:1001: return "0x486F6C6D6573";
      001A25 90 39 57         [24] 3990 	mov	dptr,#___str_64
      001A28 75 F0 80         [24] 3991 	mov	b,#0x80
                                   3992 ;	../UI_Manager/ui.c:1002: case SECRET_STRING_OFFSET + 1:
      001A2B 22               [24] 3993 	ret
      001A2C                       3994 00135$:
                                   3995 ;	../UI_Manager/ui.c:1003: return "& 576174736F6E";
      001A2C 90 39 66         [24] 3996 	mov	dptr,#___str_65
      001A2F 75 F0 80         [24] 3997 	mov	b,#0x80
                                   3998 ;	../UI_Manager/ui.c:1004: case SECRET_STRING_OFFSET + 2:
      001A32 22               [24] 3999 	ret
      001A33                       4000 00136$:
                                   4001 ;	../UI_Manager/ui.c:1005: return "626F74684F776E41";
      001A33 90 39 75         [24] 4002 	mov	dptr,#___str_66
      001A36 75 F0 80         [24] 4003 	mov	b,#0x80
                                   4004 ;	../UI_Manager/ui.c:1006: case SECRET_STRING_OFFSET + 3:
      001A39 22               [24] 4005 	ret
      001A3A                       4006 00137$:
                                   4007 ;	../UI_Manager/ui.c:1007: return "536E6F7762616C6C";
      001A3A 90 39 86         [24] 4008 	mov	dptr,#___str_67
      001A3D 75 F0 80         [24] 4009 	mov	b,#0x80
                                   4010 ;	../UI_Manager/ui.c:1008: case SECRET_STRING_OFFSET + 4:
      001A40 22               [24] 4011 	ret
      001A41                       4012 00138$:
                                   4013 ;	../UI_Manager/ui.c:1009: return "4D6F726961727479";
      001A41 90 39 97         [24] 4014 	mov	dptr,#___str_68
      001A44 75 F0 80         [24] 4015 	mov	b,#0x80
                                   4016 ;	../UI_Manager/ui.c:1010: case SECRET_STRING_OFFSET + 5:
      001A47 22               [24] 4017 	ret
      001A48                       4018 00139$:
                                   4019 ;	../UI_Manager/ui.c:1011: return "646F65734E6F74 ;";
      001A48 90 39 A8         [24] 4020 	mov	dptr,#___str_69
      001A4B 75 F0 80         [24] 4021 	mov	b,#0x80
                                   4022 ;	../UI_Manager/ui.c:1012: }
      001A4E 22               [24] 4023 	ret
      001A4F                       4024 00140$:
                                   4025 ;	../UI_Manager/ui.c:1014: return 0;
      001A4F 90 00 00         [24] 4026 	mov	dptr,#0x0000
      001A52 75 F0 00         [24] 4027 	mov	b,#0x00
                                   4028 ;	../UI_Manager/ui.c:1015: }
      001A55 22               [24] 4029 	ret
                                   4030 	.area CSEG    (CODE)
                                   4031 	.area CONST   (CODE)
      0036EA                       4032 ___str_0:
      0036EA 54 61 6E 6B 20 4C 69  4033 	.ascii "Tank Lights Off"
             67 68 74 73 20 4F 66
             66
      0036F9 00                    4034 	.db 0x00
      0036FA                       4035 ___str_1:
      0036FA 54 61 6E 6B 20 4C 69  4036 	.ascii "Tank Lights On"
             67 68 74 73 20 4F 6E
      003708 00                    4037 	.db 0x00
      003709                       4038 ___str_2:
      003709 46 75 6E 2B 4D 61 6E  4039 	.ascii "Fun+Man to Undo"
             20 74 6F 20 55 6E 64
             6F
      003718 00                    4040 	.db 0x00
      003719                       4041 ___str_3:
      003719 48 65 61 74 65 72 20  4042 	.ascii "Heater Off"
             4F 66 66
      003723 00                    4043 	.db 0x00
      003724                       4044 ___str_4:
      003724 48 65 61 74 65 72 20  4045 	.ascii "Heater On"
             4F 6E
      00372D 00                    4046 	.db 0x00
      00372E                       4047 ___str_5:
      00372E 42 75 72 73 74 2B 55  4048 	.ascii "Burst+Up to Undo"
             70 20 74 6F 20 55 6E
             64 6F
      00373E 00                    4049 	.db 0x00
      00373F                       4050 ___str_6:
      00373F 41 74 6D 6F 73 46 45  4051 	.ascii "AtmosFEAR 221B"
             41 52 20 32 32 31 42
      00374D 00                    4052 	.db 0x00
      00374E                       4053 ___str_7:
      00374E 42 79 20 42 6C 69 7A  4054 	.ascii "By Blizzard Pro"
             7A 61 72 64 20 50 72
             6F
      00375D 00                    4055 	.db 0x00
      00375E                       4056 ___str_8:
      00375E 50 43 20 4C 6F 61 64  4057 	.ascii "PC Load Letter"
             20 4C 65 74 74 65 72
      00376C 00                    4058 	.db 0x00
      00376D                       4059 ___str_9:
      00376D 42 75 72 73 74 20 74  4060 	.ascii "Burst to Refill"
             6F 20 52 65 66 69 6C
             6C
      00377C 00                    4061 	.db 0x00
      00377D                       4062 ___str_10:
      00377D 4D 61 6E 75 61 6C 20  4063 	.ascii "Manual Mode"
             4D 6F 64 65
      003788 00                    4064 	.db 0x00
      003789                       4065 ___str_11:
      003789 41 64 64 72           4066 	.ascii "Addr"
      00378D 00                    4067 	.db 0x00
      00378E                       4068 ___str_12:
      00378E 4D 6F 64 65           4069 	.ascii "Mode"
      003792 00                    4070 	.db 0x00
      003793                       4071 ___str_13:
      003793 44 4D 58 20 4F 6B     4072 	.ascii "DMX Ok"
      003799 00                    4073 	.db 0x00
      00379A                       4074 ___str_14:
      00379A 4E 6F 20 44 4D 58     4075 	.ascii "No DMX"
      0037A0 00                    4076 	.db 0x00
      0037A1                       4077 ___str_15:
      0037A1 49 6E 74 65 72 76 61  4078 	.ascii "Interval"
             6C
      0037A9 00                    4079 	.db 0x00
      0037AA                       4080 ___str_16:
      0037AA 44 75 72 61 74 69 6F  4081 	.ascii "Duration"
             6E
      0037B2 00                    4082 	.db 0x00
      0037B3                       4083 ___str_17:
      0037B3 46 6F 67 20 4C 65 76  4084 	.ascii "Fog Level"
             65 6C
      0037BC 00                    4085 	.db 0x00
      0037BD                       4086 ___str_18:
      0037BD 46 6F 67 20 49 6E 74  4087 	.ascii "Fog Interval"
             65 72 76 61 6C
      0037C9 00                    4088 	.db 0x00
      0037CA                       4089 ___str_19:
      0037CA 53 65 63 6F 6E 64 73  4090 	.ascii "Seconds"
      0037D1 00                    4091 	.db 0x00
      0037D2                       4092 ___str_20:
      0037D2 46 6F 67 20 44 75 72  4093 	.ascii "Fog Duration"
             61 74 69 6F 6E
      0037DE 00                    4094 	.db 0x00
      0037DF                       4095 ___str_21:
      0037DF 4D 61 63 72 6F 73     4096 	.ascii "Macros"
      0037E5 00                    4097 	.db 0x00
      0037E6                       4098 ___str_22:
      0037E6 4D 61 63 72 6F 20 53  4099 	.ascii "Macro Speed"
             70 65 65 64
      0037F1 00                    4100 	.db 0x00
      0037F2                       4101 ___str_23:
      0037F2 4F 66 66              4102 	.ascii "Off"
      0037F5 00                    4103 	.db 0x00
      0037F6                       4104 ___str_24:
      0037F6 00                    4105 	.db 0x00
      0037F7                       4106 ___str_25:
      0037F7 52 65 6D 6F 74 65 20  4107 	.ascii "Remote X Action"
             58 20 41 63 74 69 6F
             6E
      003806 00                    4108 	.db 0x00
      003807                       4109 ___str_26:
      003807 53 61 76 65 64 21     4110 	.ascii "Saved!"
      00380D 00                    4111 	.db 0x00
      00380E                       4112 ___str_27:
      00380E 4C 6F 61 64 65 64 21  4113 	.ascii "Loaded!"
      003815 00                    4114 	.db 0x00
      003816                       4115 ___str_28:
      003816 53 61 76 65 20 53 65  4116 	.ascii "Save Settings"
             74 74 69 6E 67 73
      003823 00                    4117 	.db 0x00
      003824                       4118 ___str_29:
      003824 4C 6F 61 64 20 53 65  4119 	.ascii "Load Settings"
             74 74 69 6E 67 73
      003831 00                    4120 	.db 0x00
      003832                       4121 ___str_30:
      003832 44 4D 58 20 41 64 64  4122 	.ascii "DMX Address"
             72 65 73 73
      00383D 00                    4123 	.db 0x00
      00383E                       4124 ___str_31:
      00383E 44 4D 58 20 43 68 61  4125 	.ascii "DMX Channel Mode"
             6E 6E 65 6C 20 4D 6F
             64 65
      00384E 00                    4126 	.db 0x00
      00384F                       4127 ___str_32:
      00384F 57 69 6D 70 79        4128 	.ascii "Wimpy"
      003854 00                    4129 	.db 0x00
      003855                       4130 ___str_33:
      003855 4D 69 6C 64           4131 	.ascii "Mild"
      003859 00                    4132 	.db 0x00
      00385A                       4133 ___str_34:
      00385A 42 6C 61 7A 69 6E     4134 	.ascii "Blazin"
      003860 00                    4135 	.db 0x00
      003861                       4136 ___str_35:
      003861 52 61 69 6E 62 6F 77  4137 	.ascii "Rainbow"
      003868 00                    4138 	.db 0x00
      003869                       4139 ___str_36:
      003869 46 69 72 65           4140 	.ascii "Fire"
      00386D 00                    4141 	.db 0x00
      00386E                       4142 ___str_37:
      00386E 57 61 74 65 72        4143 	.ascii "Water"
      003873 00                    4144 	.db 0x00
      003874                       4145 ___str_38:
      003874 53 74 6F 72 6D        4146 	.ascii "Storm"
      003879 00                    4147 	.db 0x00
      00387A                       4148 ___str_39:
      00387A 41 63 69 64           4149 	.ascii "Acid"
      00387E 00                    4150 	.db 0x00
      00387F                       4151 ___str_40:
      00387F 45 74 68 65 72        4152 	.ascii "Ether"
      003884 00                    4153 	.db 0x00
      003885                       4154 ___str_41:
      003885 52 65 64 20 4C 65 76  4155 	.ascii "Red Level"
             65 6C
      00388E 00                    4156 	.db 0x00
      00388F                       4157 ___str_42:
      00388F 47 72 65 65 6E 20 4C  4158 	.ascii "Green Level"
             65 76 65 6C
      00389A 00                    4159 	.db 0x00
      00389B                       4160 ___str_43:
      00389B 42 6C 75 65 20 4C 65  4161 	.ascii "Blue Level"
             76 65 6C
      0038A5 00                    4162 	.db 0x00
      0038A6                       4163 ___str_44:
      0038A6 53 74 72 6F 62 65 20  4164 	.ascii "Strobe Level"
             4C 65 76 65 6C
      0038B2 00                    4165 	.db 0x00
      0038B3                       4166 ___str_45:
      0038B3 4E 6F 20 41 63 74 69  4167 	.ascii "No Action"
             6F 6E
      0038BC 00                    4168 	.db 0x00
      0038BD                       4169 ___str_46:
      0038BD 43 68 6F 6F 73 65 20  4170 	.ascii "Choose Macro"
             4D 61 63 72 6F
      0038C9 00                    4171 	.db 0x00
      0038CA                       4172 ___str_47:
      0038CA 52 65 64              4173 	.ascii "Red"
      0038CD 00                    4174 	.db 0x00
      0038CE                       4175 ___str_48:
      0038CE 59 65 6C 6C 6F 77     4176 	.ascii "Yellow"
      0038D4 00                    4177 	.db 0x00
      0038D5                       4178 ___str_49:
      0038D5 47 72 65 65 6E        4179 	.ascii "Green"
      0038DA 00                    4180 	.db 0x00
      0038DB                       4181 ___str_50:
      0038DB 43 79 61 6E           4182 	.ascii "Cyan"
      0038DF 00                    4183 	.db 0x00
      0038E0                       4184 ___str_51:
      0038E0 42 6C 75 65           4185 	.ascii "Blue"
      0038E4 00                    4186 	.db 0x00
      0038E5                       4187 ___str_52:
      0038E5 4D 61 67 65 6E 74 61  4188 	.ascii "Magenta"
      0038EC 00                    4189 	.db 0x00
      0038ED                       4190 ___str_53:
      0038ED 53 74 72 6F 62 65 20  4191 	.ascii "Strobe Slow"
             53 6C 6F 77
      0038F8 00                    4192 	.db 0x00
      0038F9                       4193 ___str_54:
      0038F9 53 74 72 6F 62 65 20  4194 	.ascii "Strobe Medium"
             4D 65 64 69 75 6D
      003906 00                    4195 	.db 0x00
      003907                       4196 ___str_55:
      003907 53 74 72 6F 62 65 20  4197 	.ascii "Strobe Fast"
             46 61 73 74
      003912 00                    4198 	.db 0x00
      003913                       4199 ___str_56:
      003913 42 6C 61 63 6B 6F 75  4200 	.ascii "Blackout"
             74
      00391B 00                    4201 	.db 0x00
      00391C                       4202 ___str_57:
      00391C 57 68 69 74 65 6F 75  4203 	.ascii "Whiteout"
             74
      003924 00                    4204 	.db 0x00
      003925                       4205 ___str_58:
      003925 53 6C 6F 74 20 31     4206 	.ascii "Slot 1"
      00392B 00                    4207 	.db 0x00
      00392C                       4208 ___str_59:
      00392C 53 6C 6F 74 20 32     4209 	.ascii "Slot 2"
      003932 00                    4210 	.db 0x00
      003933                       4211 ___str_60:
      003933 53 6C 6F 74 20 33     4212 	.ascii "Slot 3"
      003939 00                    4213 	.db 0x00
      00393A                       4214 ___str_61:
      00393A 31 31 20 41 6C 6C     4215 	.ascii "11 All"
      003940 00                    4216 	.db 0x00
      003941                       4217 ___str_62:
      003941 20 33 20 46 6F 67 20  4218 	.ascii " 3 Fog + Macro"
             2B 20 4D 61 63 72 6F
      00394F 00                    4219 	.db 0x00
      003950                       4220 ___str_63:
      003950 20 31 20 46 6F 67     4221 	.ascii " 1 Fog"
      003956 00                    4222 	.db 0x00
      003957                       4223 ___str_64:
      003957 30 78 34 38 36 46 36  4224 	.ascii "0x486F6C6D6573"
             43 36 44 36 35 37 33
      003965 00                    4225 	.db 0x00
      003966                       4226 ___str_65:
      003966 26 20 35 37 36 31 37  4227 	.ascii "& 576174736F6E"
             34 37 33 36 46 36 45
      003974 00                    4228 	.db 0x00
      003975                       4229 ___str_66:
      003975 36 32 36 46 37 34 36  4230 	.ascii "626F74684F776E41"
             38 34 46 37 37 36 45
             34 31
      003985 00                    4231 	.db 0x00
      003986                       4232 ___str_67:
      003986 35 33 36 45 36 46 37  4233 	.ascii "536E6F7762616C6C"
             37 36 32 36 31 36 43
             36 43
      003996 00                    4234 	.db 0x00
      003997                       4235 ___str_68:
      003997 34 44 36 46 37 32 36  4236 	.ascii "4D6F726961727479"
             39 36 31 37 32 37 34
             37 39
      0039A7 00                    4237 	.db 0x00
      0039A8                       4238 ___str_69:
      0039A8 36 34 36 46 36 35 37  4239 	.ascii "646F65734E6F74 ;"
             33 34 45 36 46 37 34
             20 3B
      0039B8 00                    4240 	.db 0x00
                                   4241 	.area XINIT   (CODE)
                                   4242 	.area CABS    (ABS,CODE)
