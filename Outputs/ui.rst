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
      00000C                        236 _idlePage_timer_65536_61:
      00000C                        237 	.ds 1
      00000D                        238 _idlePage_intervalOrDuration_65536_61:
      00000D                        239 	.ds 1
      00000E                        240 _idlePage_empty_65536_61:
      00000E                        241 	.ds 1
      00000F                        242 _idlePage_tock_65536_61:
      00000F                        243 	.ds 1
      000010                        244 _idlePage_iconChange_65536_61:
      000010                        245 	.ds 1
      000011                        246 _idlePage_playing_65536_61:
      000011                        247 	.ds 1
      000012                        248 _saveLoadPage_slot_65536_144:
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
                                    303 ;ss                        Allocated to registers r5 
                                    304 ;delay                     Allocated to stack - _bp +1
                                    305 ;sloc0                     Allocated to stack - _bp +7
                                    306 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    307 ;------------------------------------------------------------
                                    308 ;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
      0000A2 75 0B 00         [24]  309 	mov	_tick_ui_bursting_65536_37,#0x00
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'idlePage'
                                    312 ;------------------------------------------------------------
                                    313 ;temp                      Allocated to registers r7 
                                    314 ;timer                     Allocated with name '_idlePage_timer_65536_61'
                                    315 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_61'
                                    316 ;empty                     Allocated with name '_idlePage_empty_65536_61'
                                    317 ;tock                      Allocated with name '_idlePage_tock_65536_61'
                                    318 ;iconChange                Allocated with name '_idlePage_iconChange_65536_61'
                                    319 ;playing                   Allocated with name '_idlePage_playing_65536_61'
                                    320 ;------------------------------------------------------------
                                    321 ;	../UI_Manager/ui.c:215: static uint8_t timer = 0;
      0000A5 75 0C 00         [24]  322 	mov	_idlePage_timer_65536_61,#0x00
                                    323 ;	../UI_Manager/ui.c:217: static uint8_t empty = 0x00;
      0000A8 75 0E 00         [24]  324 	mov	_idlePage_empty_65536_61,#0x00
                                    325 ;	../UI_Manager/ui.c:218: static uint8_t tock = 0x00;
      0000AB 75 0F 00         [24]  326 	mov	_idlePage_tock_65536_61,#0x00
                                    327 ;	../UI_Manager/ui.c:219: static uint8_t iconChange = 0x00;
      0000AE 75 10 00         [24]  328 	mov	_idlePage_iconChange_65536_61,#0x00
                                    329 ;	../UI_Manager/ui.c:220: static uint8_t playing = PAUSE;
      0000B1 75 11 00         [24]  330 	mov	_idlePage_playing_65536_61,#0x00
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'saveLoadPage'
                                    333 ;------------------------------------------------------------
                                    334 ;action                    Allocated to registers r7 
                                    335 ;slot                      Allocated with name '_saveLoadPage_slot_65536_144'
                                    336 ;------------------------------------------------------------
                                    337 ;	../UI_Manager/ui.c:752: static uint8_t slot = 0;
      0000B4 75 12 00         [24]  338 	mov	_saveLoadPage_slot_65536_144,#0x00
                                    339 ;	../UI_Manager/ui.c:12: static volatile uint8_t State = WELCOME_STATE;
      0000B7 75 08 45         [24]  340 	mov	_State,#0x45
                                    341 ;	../UI_Manager/ui.c:13: static volatile uint8_t Changed = CHANGE_SCREEN_X;
      0000BA 75 09 FF         [24]  342 	mov	_Changed,#0xff
                                    343 ;	../UI_Manager/ui.c:14: static volatile uint8_t changed = CHANGE_SCREEN_X;
      0000BD 75 0A FF         [24]  344 	mov	_changed,#0xff
                                    345 ;--------------------------------------------------------
                                    346 ; Home
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area HOME    (CODE)
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'tick_ui'
                                    356 ;------------------------------------------------------------
                                    357 ;action                    Allocated to registers r7 
                                    358 ;ss                        Allocated to registers r5 
                                    359 ;delay                     Allocated to stack - _bp +1
                                    360 ;sloc0                     Allocated to stack - _bp +7
                                    361 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    362 ;------------------------------------------------------------
                                    363 ;	../UI_Manager/ui.c:16: void tick_ui(void){
                                    364 ;	-----------------------------------------
                                    365 ;	 function tick_ui
                                    366 ;	-----------------------------------------
      00052A                        367 _tick_ui:
                           000007   368 	ar7 = 0x07
                           000006   369 	ar6 = 0x06
                           000005   370 	ar5 = 0x05
                           000004   371 	ar4 = 0x04
                           000003   372 	ar3 = 0x03
                           000002   373 	ar2 = 0x02
                           000001   374 	ar1 = 0x01
                           000000   375 	ar0 = 0x00
      00052A C0 1A            [24]  376 	push	_bp
      00052C E5 81            [12]  377 	mov	a,sp
      00052E F5 1A            [12]  378 	mov	_bp,a
      000530 24 04            [12]  379 	add	a,#0x04
      000532 F5 81            [12]  380 	mov	sp,a
                                    381 ;	../UI_Manager/ui.c:18: uint8_t action = get_button_action();
      000534 12 1A D0         [24]  382 	lcall	_get_button_action
      000537 AF 82            [24]  383 	mov	r7,dpl
                                    384 ;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_MAN_BURST){
      000539 E4               [12]  385 	clr	a
      00053A BF 05 01         [24]  386 	cjne	r7,#0x05,00424$
      00053D 04               [12]  387 	inc	a
      00053E                        388 00424$:
      00053E FE               [12]  389 	mov	r6,a
      00053F 70 03            [24]  390 	jnz	00103$
      000541 BF 0A 21         [24]  391 	cjne	r7,#0x0a,00104$
      000544                        392 00103$:
                                    393 ;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
      000544 EE               [12]  394 	mov	a,r6
      000545 60 06            [24]  395 	jz	00177$
      000547 7D 02            [12]  396 	mov	r5,#0x02
      000549 7E 00            [12]  397 	mov	r6,#0x00
      00054B 80 04            [24]  398 	sjmp	00178$
      00054D                        399 00177$:
      00054D 7D 03            [12]  400 	mov	r5,#0x03
      00054F 7E 00            [12]  401 	mov	r6,#0x00
      000551                        402 00178$:
      000551 8D 82            [24]  403 	mov	dpl,r5
      000553 C0 07            [24]  404 	push	ar7
      000555 12 35 BD         [24]  405 	lcall	_power_pump
      000558 D0 07            [24]  406 	pop	ar7
                                    407 ;	../UI_Manager/ui.c:26: bursting |= BURSTING;
      00055A AD 0B            [24]  408 	mov	r5,_tick_ui_bursting_65536_37
      00055C 7E 00            [12]  409 	mov	r6,#0x00
      00055E 43 05 80         [24]  410 	orl	ar5,#0x80
      000561 8D 0B            [24]  411 	mov	_tick_ui_bursting_65536_37,r5
      000563 80 12            [24]  412 	sjmp	00105$
      000565                        413 00104$:
                                    414 ;	../UI_Manager/ui.c:27: } else if(bursting & BURSTING){
      000565 E5 0B            [12]  415 	mov	a,_tick_ui_bursting_65536_37
      000567 30 E7 0D         [24]  416 	jnb	acc.7,00105$
                                    417 ;	../UI_Manager/ui.c:28: power_pump(PUMP_OFF);
      00056A 75 82 00         [24]  418 	mov	dpl,#0x00
      00056D C0 07            [24]  419 	push	ar7
      00056F 12 35 BD         [24]  420 	lcall	_power_pump
      000572 D0 07            [24]  421 	pop	ar7
                                    422 ;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
      000574 53 0B 7F         [24]  423 	anl	_tick_ui_bursting_65536_37,#0x7f
      000577                        424 00105$:
                                    425 ;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
      000577 BF 08 38         [24]  426 	cjne	r7,#0x08,00108$
                                    427 ;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
      00057A 75 82 10         [24]  428 	mov	dpl,#0x10
      00057D C0 07            [24]  429 	push	ar7
      00057F 12 2F 91         [24]  430 	lcall	_get_runtime_data
      000582 AE 82            [24]  431 	mov	r6,dpl
      000584 D0 07            [24]  432 	pop	ar7
      000586 BE 80 06         [24]  433 	cjne	r6,#0x80,00179$
      000589 7D 00            [12]  434 	mov	r5,#0x00
      00058B 7E 00            [12]  435 	mov	r6,#0x00
      00058D 80 04            [24]  436 	sjmp	00180$
      00058F                        437 00179$:
      00058F 7D 80            [12]  438 	mov	r5,#0x80
      000591 7E 00            [12]  439 	mov	r6,#0x00
      000593                        440 00180$:
      000593 C0 07            [24]  441 	push	ar7
      000595 C0 05            [24]  442 	push	ar5
      000597 E4               [12]  443 	clr	a
      000598 C0 E0            [24]  444 	push	acc
      00059A 75 82 10         [24]  445 	mov	dpl,#0x10
      00059D 12 30 51         [24]  446 	lcall	_set_runtime_data
      0005A0 15 81            [12]  447 	dec	sp
      0005A2 15 81            [12]  448 	dec	sp
                                    449 ;	../UI_Manager/ui.c:36: State = IDLE_STATE;
      0005A4 75 08 00         [24]  450 	mov	_State,#0x00
                                    451 ;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
      0005A7 75 09 FF         [24]  452 	mov	_Changed,#0xff
                                    453 ;	../UI_Manager/ui.c:39: set_playing(RESET);
      0005AA 75 4E 02         [24]  454 	mov	_Playing,#0x02
                                    455 ;	../UI_Manager/ui.c:41: tick_fogger();
      0005AD 12 31 57         [24]  456 	lcall	_tick_fogger
      0005B0 D0 07            [24]  457 	pop	ar7
      0005B2                        458 00108$:
                                    459 ;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER_HOLD){
      0005B2 BF C8 13         [24]  460 	cjne	r7,#0xc8,00113$
                                    461 ;	../UI_Manager/ui.c:47: if(get_playing() == PLAY){
      0005B5 74 01            [12]  462 	mov	a,#0x01
      0005B7 B5 4E 05         [24]  463 	cjne	a,_Playing,00110$
                                    464 ;	../UI_Manager/ui.c:48: set_playing(RESET);
      0005BA 75 4E 02         [24]  465 	mov	_Playing,#0x02
      0005BD 80 03            [24]  466 	sjmp	00111$
      0005BF                        467 00110$:
                                    468 ;	../UI_Manager/ui.c:50: set_playing(PLAY);
      0005BF 75 4E 01         [24]  469 	mov	_Playing,#0x01
      0005C2                        470 00111$:
                                    471 ;	../UI_Manager/ui.c:53: tick_fogger();
      0005C2 12 31 57         [24]  472 	lcall	_tick_fogger
                                    473 ;	../UI_Manager/ui.c:55: return;
      0005C5 02 09 BA         [24]  474 	ljmp	00175$
      0005C8                        475 00113$:
                                    476 ;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
      0005C8 BF 09 02         [24]  477 	cjne	r7,#0x09,00439$
      0005CB 80 03            [24]  478 	sjmp	00440$
      0005CD                        479 00439$:
      0005CD 02 06 86         [24]  480 	ljmp	00121$
      0005D0                        481 00440$:
                                    482 ;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
      0005D0 75 82 0F         [24]  483 	mov	dpl,#0x0f
      0005D3 12 2F 91         [24]  484 	lcall	_get_runtime_data
      0005D6 E5 82            [12]  485 	mov	a,dpl
      0005D8 F4               [12]  486 	cpl	a
      0005D9 FE               [12]  487 	mov	r6,a
      0005DA C0 06            [24]  488 	push	ar6
      0005DC E4               [12]  489 	clr	a
      0005DD C0 E0            [24]  490 	push	acc
      0005DF 75 82 0F         [24]  491 	mov	dpl,#0x0f
      0005E2 12 30 51         [24]  492 	lcall	_set_runtime_data
      0005E5 15 81            [12]  493 	dec	sp
      0005E7 15 81            [12]  494 	dec	sp
                                    495 ;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
      0005E9 90 80 00         [24]  496 	mov	dptr,#0x8000
      0005EC 12 20 60         [24]  497 	lcall	_exe_command
                                    498 ;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
      0005EF 75 82 0F         [24]  499 	mov	dpl,#0x0f
      0005F2 12 2F 91         [24]  500 	lcall	_get_runtime_data
      0005F5 E5 82            [12]  501 	mov	a,dpl
      0005F7 60 1C            [24]  502 	jz	00115$
                                    503 ;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
      0005F9 E4               [12]  504 	clr	a
      0005FA C0 E0            [24]  505 	push	acc
      0005FC C0 E0            [24]  506 	push	acc
      0005FE C0 E0            [24]  507 	push	acc
      000600 74 0F            [12]  508 	mov	a,#0x0f
      000602 C0 E0            [24]  509 	push	acc
      000604 90 37 7C         [24]  510 	mov	dptr,#___str_0
      000607 75 F0 80         [24]  511 	mov	b,#0x80
      00060A 12 1D 25         [24]  512 	lcall	_write_string
      00060D E5 81            [12]  513 	mov	a,sp
      00060F 24 FC            [12]  514 	add	a,#0xfc
      000611 F5 81            [12]  515 	mov	sp,a
      000613 80 1A            [24]  516 	sjmp	00116$
      000615                        517 00115$:
                                    518 ;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
      000615 E4               [12]  519 	clr	a
      000616 C0 E0            [24]  520 	push	acc
      000618 C0 E0            [24]  521 	push	acc
      00061A C0 E0            [24]  522 	push	acc
      00061C 74 0F            [12]  523 	mov	a,#0x0f
      00061E C0 E0            [24]  524 	push	acc
      000620 90 37 8C         [24]  525 	mov	dptr,#___str_1
      000623 75 F0 80         [24]  526 	mov	b,#0x80
      000626 12 1D 25         [24]  527 	lcall	_write_string
      000629 E5 81            [12]  528 	mov	a,sp
      00062B 24 FC            [12]  529 	add	a,#0xfc
      00062D F5 81            [12]  530 	mov	sp,a
      00062F                        531 00116$:
                                    532 ;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
      00062F E4               [12]  533 	clr	a
      000630 C0 E0            [24]  534 	push	acc
      000632 04               [12]  535 	inc	a
      000633 C0 E0            [24]  536 	push	acc
      000635 E4               [12]  537 	clr	a
      000636 C0 E0            [24]  538 	push	acc
      000638 74 0F            [12]  539 	mov	a,#0x0f
      00063A C0 E0            [24]  540 	push	acc
      00063C 90 37 9B         [24]  541 	mov	dptr,#___str_2
      00063F 75 F0 80         [24]  542 	mov	b,#0x80
      000642 12 1D 25         [24]  543 	lcall	_write_string
      000645 E5 81            [12]  544 	mov	a,sp
      000647 24 FC            [12]  545 	add	a,#0xfc
      000649 F5 81            [12]  546 	mov	sp,a
                                    547 ;	../UI_Manager/ui.c:73: while(delay--){ ;; }
      00064B A8 1A            [24]  548 	mov	r0,_bp
      00064D 08               [12]  549 	inc	r0
      00064E 76 B5            [12]  550 	mov	@r0,#0xb5
      000650 08               [12]  551 	inc	r0
      000651 76 D8            [12]  552 	mov	@r0,#0xd8
      000653 08               [12]  553 	inc	r0
      000654 76 07            [12]  554 	mov	@r0,#0x07
      000656 08               [12]  555 	inc	r0
      000657 76 00            [12]  556 	mov	@r0,#0x00
      000659                        557 00117$:
      000659 A8 1A            [24]  558 	mov	r0,_bp
      00065B 08               [12]  559 	inc	r0
      00065C 86 02            [24]  560 	mov	ar2,@r0
      00065E 08               [12]  561 	inc	r0
      00065F 86 04            [24]  562 	mov	ar4,@r0
      000661 08               [12]  563 	inc	r0
      000662 86 05            [24]  564 	mov	ar5,@r0
      000664 08               [12]  565 	inc	r0
      000665 86 06            [24]  566 	mov	ar6,@r0
      000667 A8 1A            [24]  567 	mov	r0,_bp
      000669 08               [12]  568 	inc	r0
      00066A 16               [12]  569 	dec	@r0
      00066B B6 FF 0C         [24]  570 	cjne	@r0,#0xff,00442$
      00066E 08               [12]  571 	inc	r0
      00066F 16               [12]  572 	dec	@r0
      000670 B6 FF 07         [24]  573 	cjne	@r0,#0xff,00442$
      000673 08               [12]  574 	inc	r0
      000674 16               [12]  575 	dec	@r0
      000675 B6 FF 02         [24]  576 	cjne	@r0,#0xff,00442$
      000678 08               [12]  577 	inc	r0
      000679 16               [12]  578 	dec	@r0
      00067A                        579 00442$:
      00067A EA               [12]  580 	mov	a,r2
      00067B 4C               [12]  581 	orl	a,r4
      00067C 4D               [12]  582 	orl	a,r5
      00067D 4E               [12]  583 	orl	a,r6
      00067E 70 D9            [24]  584 	jnz	00117$
                                    585 ;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
      000680 75 09 FF         [24]  586 	mov	_Changed,#0xff
                                    587 ;	../UI_Manager/ui.c:77: return;
      000683 02 09 BA         [24]  588 	ljmp	00175$
      000686                        589 00121$:
                                    590 ;	../UI_Manager/ui.c:81: if(action == BUTTON_BURST_UP){
      000686 BF 07 02         [24]  591 	cjne	r7,#0x07,00444$
      000689 80 03            [24]  592 	sjmp	00445$
      00068B                        593 00444$:
      00068B 02 07 36         [24]  594 	ljmp	00129$
      00068E                        595 00445$:
                                    596 ;	../UI_Manager/ui.c:83: exe_command(CLEAR_DISPLAY);
      00068E 90 80 00         [24]  597 	mov	dptr,#0x8000
      000691 12 20 60         [24]  598 	lcall	_exe_command
                                    599 ;	../UI_Manager/ui.c:84: if(get_heater_enabled()){
      000694 E5 4F            [12]  600 	mov	a,_Heat_Flag
      000696 20 E4 24         [24]  601 	jb	acc.4,00123$
                                    602 ;	../UI_Manager/ui.c:85: write_string("Heater Off", 15, 2, LINE_0, NOT_SELECTED);
      000699 E4               [12]  603 	clr	a
      00069A C0 E0            [24]  604 	push	acc
      00069C C0 E0            [24]  605 	push	acc
      00069E 74 02            [12]  606 	mov	a,#0x02
      0006A0 C0 E0            [24]  607 	push	acc
      0006A2 74 0F            [12]  608 	mov	a,#0x0f
      0006A4 C0 E0            [24]  609 	push	acc
      0006A6 90 37 AB         [24]  610 	mov	dptr,#___str_3
      0006A9 75 F0 80         [24]  611 	mov	b,#0x80
      0006AC 12 1D 25         [24]  612 	lcall	_write_string
      0006AF E5 81            [12]  613 	mov	a,sp
      0006B1 24 FC            [12]  614 	add	a,#0xfc
      0006B3 F5 81            [12]  615 	mov	sp,a
                                    616 ;	../UI_Manager/ui.c:86: power_heater(HEATER_DISABLE);
      0006B5 75 82 01         [24]  617 	mov	dpl,#0x01
      0006B8 12 36 04         [24]  618 	lcall	_power_heater
      0006BB 80 22            [24]  619 	sjmp	00124$
      0006BD                        620 00123$:
                                    621 ;	../UI_Manager/ui.c:88: write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
      0006BD E4               [12]  622 	clr	a
      0006BE C0 E0            [24]  623 	push	acc
      0006C0 C0 E0            [24]  624 	push	acc
      0006C2 74 02            [12]  625 	mov	a,#0x02
      0006C4 C0 E0            [24]  626 	push	acc
      0006C6 74 0F            [12]  627 	mov	a,#0x0f
      0006C8 C0 E0            [24]  628 	push	acc
      0006CA 90 37 B6         [24]  629 	mov	dptr,#___str_4
      0006CD 75 F0 80         [24]  630 	mov	b,#0x80
      0006D0 12 1D 25         [24]  631 	lcall	_write_string
      0006D3 E5 81            [12]  632 	mov	a,sp
      0006D5 24 FC            [12]  633 	add	a,#0xfc
      0006D7 F5 81            [12]  634 	mov	sp,a
                                    635 ;	../UI_Manager/ui.c:89: power_heater(HEATER_ENABLE);
      0006D9 75 82 00         [24]  636 	mov	dpl,#0x00
      0006DC 12 36 04         [24]  637 	lcall	_power_heater
      0006DF                        638 00124$:
                                    639 ;	../UI_Manager/ui.c:92: write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
      0006DF E4               [12]  640 	clr	a
      0006E0 C0 E0            [24]  641 	push	acc
      0006E2 04               [12]  642 	inc	a
      0006E3 C0 E0            [24]  643 	push	acc
      0006E5 E4               [12]  644 	clr	a
      0006E6 C0 E0            [24]  645 	push	acc
      0006E8 74 10            [12]  646 	mov	a,#0x10
      0006EA C0 E0            [24]  647 	push	acc
      0006EC 90 37 C0         [24]  648 	mov	dptr,#___str_5
      0006EF 75 F0 80         [24]  649 	mov	b,#0x80
      0006F2 12 1D 25         [24]  650 	lcall	_write_string
      0006F5 E5 81            [12]  651 	mov	a,sp
      0006F7 24 FC            [12]  652 	add	a,#0xfc
      0006F9 F5 81            [12]  653 	mov	sp,a
                                    654 ;	../UI_Manager/ui.c:96: while(delay--){ ;; }
      0006FB A8 1A            [24]  655 	mov	r0,_bp
      0006FD 08               [12]  656 	inc	r0
      0006FE 76 B5            [12]  657 	mov	@r0,#0xb5
      000700 08               [12]  658 	inc	r0
      000701 76 D8            [12]  659 	mov	@r0,#0xd8
      000703 08               [12]  660 	inc	r0
      000704 76 07            [12]  661 	mov	@r0,#0x07
      000706 08               [12]  662 	inc	r0
      000707 76 00            [12]  663 	mov	@r0,#0x00
      000709                        664 00125$:
      000709 A8 1A            [24]  665 	mov	r0,_bp
      00070B 08               [12]  666 	inc	r0
      00070C 86 02            [24]  667 	mov	ar2,@r0
      00070E 08               [12]  668 	inc	r0
      00070F 86 04            [24]  669 	mov	ar4,@r0
      000711 08               [12]  670 	inc	r0
      000712 86 05            [24]  671 	mov	ar5,@r0
      000714 08               [12]  672 	inc	r0
      000715 86 06            [24]  673 	mov	ar6,@r0
      000717 A8 1A            [24]  674 	mov	r0,_bp
      000719 08               [12]  675 	inc	r0
      00071A 16               [12]  676 	dec	@r0
      00071B B6 FF 0C         [24]  677 	cjne	@r0,#0xff,00447$
      00071E 08               [12]  678 	inc	r0
      00071F 16               [12]  679 	dec	@r0
      000720 B6 FF 07         [24]  680 	cjne	@r0,#0xff,00447$
      000723 08               [12]  681 	inc	r0
      000724 16               [12]  682 	dec	@r0
      000725 B6 FF 02         [24]  683 	cjne	@r0,#0xff,00447$
      000728 08               [12]  684 	inc	r0
      000729 16               [12]  685 	dec	@r0
      00072A                        686 00447$:
      00072A EA               [12]  687 	mov	a,r2
      00072B 4C               [12]  688 	orl	a,r4
      00072C 4D               [12]  689 	orl	a,r5
      00072D 4E               [12]  690 	orl	a,r6
      00072E 70 D9            [24]  691 	jnz	00125$
                                    692 ;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
      000730 75 09 FF         [24]  693 	mov	_Changed,#0xff
                                    694 ;	../UI_Manager/ui.c:100: return;
      000733 02 09 BA         [24]  695 	ljmp	00175$
      000736                        696 00129$:
                                    697 ;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_BURST){
      000736 BF 06 02         [24]  698 	cjne	r7,#0x06,00449$
      000739 80 03            [24]  699 	sjmp	00450$
      00073B                        700 00449$:
      00073B 02 08 65         [24]  701 	ljmp	00137$
      00073E                        702 00450$:
                                    703 ;	../UI_Manager/ui.c:106: ss = bursting & ~BURSTING;
      00073E 74 7F            [12]  704 	mov	a,#0x7f
      000740 55 0B            [12]  705 	anl	a,_tick_ui_bursting_65536_37
      000742 FE               [12]  706 	mov	r6,a
                                    707 ;	../UI_Manager/ui.c:108: exe_command(CLEAR_DISPLAY);
      000743 90 80 00         [24]  708 	mov	dptr,#0x8000
      000746 C0 06            [24]  709 	push	ar6
      000748 12 20 60         [24]  710 	lcall	_exe_command
      00074B D0 06            [24]  711 	pop	ar6
                                    712 ;	../UI_Manager/ui.c:110: if(!ss){
      00074D EE               [12]  713 	mov	a,r6
      00074E 70 53            [24]  714 	jnz	00131$
                                    715 ;	../UI_Manager/ui.c:111: write_string(getString(SECRET_STRING_OFFSET + 6), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
      000750 75 82 2E         [24]  716 	mov	dpl,#0x2e
      000753 12 18 AD         [24]  717 	lcall	_getString
      000756 AB 82            [24]  718 	mov	r3,dpl
      000758 AC 83            [24]  719 	mov	r4,dph
      00075A AD F0            [24]  720 	mov	r5,b
      00075C E4               [12]  721 	clr	a
      00075D C0 E0            [24]  722 	push	acc
      00075F C0 E0            [24]  723 	push	acc
      000761 C0 E0            [24]  724 	push	acc
      000763 74 10            [12]  725 	mov	a,#0x10
      000765 C0 E0            [24]  726 	push	acc
      000767 8B 82            [24]  727 	mov	dpl,r3
      000769 8C 83            [24]  728 	mov	dph,r4
      00076B 8D F0            [24]  729 	mov	b,r5
      00076D 12 1D 25         [24]  730 	lcall	_write_string
      000770 E5 81            [12]  731 	mov	a,sp
      000772 24 FC            [12]  732 	add	a,#0xfc
      000774 F5 81            [12]  733 	mov	sp,a
                                    734 ;	../UI_Manager/ui.c:112: write_string(getString(SECRET_STRING_OFFSET + 7), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000776 75 82 2F         [24]  735 	mov	dpl,#0x2f
      000779 12 18 AD         [24]  736 	lcall	_getString
      00077C AB 82            [24]  737 	mov	r3,dpl
      00077E AC 83            [24]  738 	mov	r4,dph
      000780 AD F0            [24]  739 	mov	r5,b
      000782 E4               [12]  740 	clr	a
      000783 C0 E0            [24]  741 	push	acc
      000785 04               [12]  742 	inc	a
      000786 C0 E0            [24]  743 	push	acc
      000788 E4               [12]  744 	clr	a
      000789 C0 E0            [24]  745 	push	acc
      00078B 74 10            [12]  746 	mov	a,#0x10
      00078D C0 E0            [24]  747 	push	acc
      00078F 8B 82            [24]  748 	mov	dpl,r3
      000791 8C 83            [24]  749 	mov	dph,r4
      000793 8D F0            [24]  750 	mov	b,r5
      000795 12 1D 25         [24]  751 	lcall	_write_string
      000798 E5 81            [12]  752 	mov	a,sp
      00079A 24 FC            [12]  753 	add	a,#0xfc
      00079C F5 81            [12]  754 	mov	sp,a
                                    755 ;	../UI_Manager/ui.c:113: ss = 3;
      00079E 7D 03            [12]  756 	mov	r5,#0x03
      0007A0 02 08 22         [24]  757 	ljmp	00132$
      0007A3                        758 00131$:
                                    759 ;	../UI_Manager/ui.c:115: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
      0007A3 8E 03            [24]  760 	mov	ar3,r6
      0007A5 7C 00            [12]  761 	mov	r4,#0x00
      0007A7 C0 06            [24]  762 	push	ar6
      0007A9 74 03            [12]  763 	mov	a,#0x03
      0007AB C0 E0            [24]  764 	push	acc
      0007AD E4               [12]  765 	clr	a
      0007AE C0 E0            [24]  766 	push	acc
      0007B0 8B 82            [24]  767 	mov	dpl,r3
      0007B2 8C 83            [24]  768 	mov	dph,r4
      0007B4 12 36 F6         [24]  769 	lcall	__modsint
      0007B7 AB 82            [24]  770 	mov	r3,dpl
      0007B9 15 81            [12]  771 	dec	sp
      0007BB 15 81            [12]  772 	dec	sp
      0007BD D0 06            [24]  773 	pop	ar6
      0007BF EB               [12]  774 	mov	a,r3
      0007C0 2B               [12]  775 	add	a,r3
      0007C1 FF               [12]  776 	mov	r7,a
      0007C2 24 28            [12]  777 	add	a,#0x28
      0007C4 F5 82            [12]  778 	mov	dpl,a
      0007C6 C0 07            [24]  779 	push	ar7
      0007C8 C0 06            [24]  780 	push	ar6
      0007CA 12 18 AD         [24]  781 	lcall	_getString
      0007CD AA 82            [24]  782 	mov	r2,dpl
      0007CF AB 83            [24]  783 	mov	r3,dph
      0007D1 AC F0            [24]  784 	mov	r4,b
      0007D3 E4               [12]  785 	clr	a
      0007D4 C0 E0            [24]  786 	push	acc
      0007D6 C0 E0            [24]  787 	push	acc
      0007D8 C0 E0            [24]  788 	push	acc
      0007DA 74 10            [12]  789 	mov	a,#0x10
      0007DC C0 E0            [24]  790 	push	acc
      0007DE 8A 82            [24]  791 	mov	dpl,r2
      0007E0 8B 83            [24]  792 	mov	dph,r3
      0007E2 8C F0            [24]  793 	mov	b,r4
      0007E4 12 1D 25         [24]  794 	lcall	_write_string
      0007E7 E5 81            [12]  795 	mov	a,sp
      0007E9 24 FC            [12]  796 	add	a,#0xfc
      0007EB F5 81            [12]  797 	mov	sp,a
      0007ED D0 06            [24]  798 	pop	ar6
      0007EF D0 07            [24]  799 	pop	ar7
                                    800 ;	../UI_Manager/ui.c:116: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0007F1 74 29            [12]  801 	mov	a,#0x29
      0007F3 2F               [12]  802 	add	a,r7
      0007F4 F5 82            [12]  803 	mov	dpl,a
      0007F6 C0 06            [24]  804 	push	ar6
      0007F8 12 18 AD         [24]  805 	lcall	_getString
      0007FB AA 82            [24]  806 	mov	r2,dpl
      0007FD AB 83            [24]  807 	mov	r3,dph
      0007FF AC F0            [24]  808 	mov	r4,b
      000801 E4               [12]  809 	clr	a
      000802 C0 E0            [24]  810 	push	acc
      000804 04               [12]  811 	inc	a
      000805 C0 E0            [24]  812 	push	acc
      000807 E4               [12]  813 	clr	a
      000808 C0 E0            [24]  814 	push	acc
      00080A 74 10            [12]  815 	mov	a,#0x10
      00080C C0 E0            [24]  816 	push	acc
      00080E 8A 82            [24]  817 	mov	dpl,r2
      000810 8B 83            [24]  818 	mov	dph,r3
      000812 8C F0            [24]  819 	mov	b,r4
      000814 12 1D 25         [24]  820 	lcall	_write_string
      000817 E5 81            [12]  821 	mov	a,sp
      000819 24 FC            [12]  822 	add	a,#0xfc
      00081B F5 81            [12]  823 	mov	sp,a
      00081D D0 06            [24]  824 	pop	ar6
                                    825 ;	../UI_Manager/ui.c:117: ss++;
      00081F EE               [12]  826 	mov	a,r6
      000820 04               [12]  827 	inc	a
      000821 FD               [12]  828 	mov	r5,a
      000822                        829 00132$:
                                    830 ;	../UI_Manager/ui.c:120: bursting &= BURSTING;
      000822 53 0B 80         [24]  831 	anl	_tick_ui_bursting_65536_37,#0x80
                                    832 ;	../UI_Manager/ui.c:121: bursting |= (ss & ~BURSTING);
      000825 74 7F            [12]  833 	mov	a,#0x7f
      000827 5D               [12]  834 	anl	a,r5
      000828 42 0B            [12]  835 	orl	_tick_ui_bursting_65536_37,a
                                    836 ;	../UI_Manager/ui.c:125: while(delay--){ ;; }
      00082A A8 1A            [24]  837 	mov	r0,_bp
      00082C 08               [12]  838 	inc	r0
      00082D 76 DD            [12]  839 	mov	@r0,#0xdd
      00082F 08               [12]  840 	inc	r0
      000830 76 8A            [12]  841 	mov	@r0,#0x8a
      000832 08               [12]  842 	inc	r0
      000833 76 14            [12]  843 	mov	@r0,#0x14
      000835 08               [12]  844 	inc	r0
      000836 76 00            [12]  845 	mov	@r0,#0x00
      000838                        846 00133$:
      000838 A8 1A            [24]  847 	mov	r0,_bp
      00083A 08               [12]  848 	inc	r0
      00083B 86 02            [24]  849 	mov	ar2,@r0
      00083D 08               [12]  850 	inc	r0
      00083E 86 04            [24]  851 	mov	ar4,@r0
      000840 08               [12]  852 	inc	r0
      000841 86 05            [24]  853 	mov	ar5,@r0
      000843 08               [12]  854 	inc	r0
      000844 86 06            [24]  855 	mov	ar6,@r0
      000846 A8 1A            [24]  856 	mov	r0,_bp
      000848 08               [12]  857 	inc	r0
      000849 16               [12]  858 	dec	@r0
      00084A B6 FF 0C         [24]  859 	cjne	@r0,#0xff,00452$
      00084D 08               [12]  860 	inc	r0
      00084E 16               [12]  861 	dec	@r0
      00084F B6 FF 07         [24]  862 	cjne	@r0,#0xff,00452$
      000852 08               [12]  863 	inc	r0
      000853 16               [12]  864 	dec	@r0
      000854 B6 FF 02         [24]  865 	cjne	@r0,#0xff,00452$
      000857 08               [12]  866 	inc	r0
      000858 16               [12]  867 	dec	@r0
      000859                        868 00452$:
      000859 EA               [12]  869 	mov	a,r2
      00085A 4C               [12]  870 	orl	a,r4
      00085B 4D               [12]  871 	orl	a,r5
      00085C 4E               [12]  872 	orl	a,r6
      00085D 70 D9            [24]  873 	jnz	00133$
                                    874 ;	../UI_Manager/ui.c:127: Changed = CHANGE_SCREEN_X;
      00085F 75 09 FF         [24]  875 	mov	_Changed,#0xff
                                    876 ;	../UI_Manager/ui.c:129: return;
      000862 02 09 BA         [24]  877 	ljmp	00175$
      000865                        878 00137$:
                                    879 ;	../UI_Manager/ui.c:133: if(action == BUTTON_FUN_TIME){
      000865 BF 04 06         [24]  880 	cjne	r7,#0x04,00139$
                                    881 ;	../UI_Manager/ui.c:134: State = IDLE_STATE;
      000868 75 08 00         [24]  882 	mov	_State,#0x00
                                    883 ;	../UI_Manager/ui.c:135: Changed = CHANGE_SCREEN_X;
      00086B 75 09 FF         [24]  884 	mov	_Changed,#0xff
      00086E                        885 00139$:
                                    886 ;	../UI_Manager/ui.c:140: if(Changed || 
      00086E E5 09            [12]  887 	mov	a,_Changed
      000870 70 2F            [24]  888 	jnz	00164$
                                    889 ;	../UI_Manager/ui.c:141: action == BUTTON_UP ||
      000872 BF 03 02         [24]  890 	cjne	r7,#0x03,00457$
      000875 80 2A            [24]  891 	sjmp	00164$
      000877                        892 00457$:
                                    893 ;	../UI_Manager/ui.c:142: action == BUTTON_UP_HOLD||
      000877 BF 1E 02         [24]  894 	cjne	r7,#0x1e,00458$
      00087A 80 25            [24]  895 	sjmp	00164$
      00087C                        896 00458$:
                                    897 ;	../UI_Manager/ui.c:143: action == BUTTON_UP_BURST ||
      00087C BF 1F 02         [24]  898 	cjne	r7,#0x1f,00459$
      00087F 80 20            [24]  899 	sjmp	00164$
      000881                        900 00459$:
                                    901 ;	../UI_Manager/ui.c:144: action == BUTTON_DOWN ||
      000881 BF 0B 02         [24]  902 	cjne	r7,#0x0b,00460$
      000884 80 1B            [24]  903 	sjmp	00164$
      000886                        904 00460$:
                                    905 ;	../UI_Manager/ui.c:145: action == BUTTON_DOWN_HOLD ||
      000886 BF 6E 02         [24]  906 	cjne	r7,#0x6e,00461$
      000889 80 16            [24]  907 	sjmp	00164$
      00088B                        908 00461$:
                                    909 ;	../UI_Manager/ui.c:146: action == BUTTON_DOWN_BURST ||
      00088B BF 6F 02         [24]  910 	cjne	r7,#0x6f,00462$
      00088E 80 11            [24]  911 	sjmp	00164$
      000890                        912 00462$:
                                    913 ;	../UI_Manager/ui.c:147: action == BUTTON_TIMER ||
      000890 BF 01 02         [24]  914 	cjne	r7,#0x01,00463$
      000893 80 0C            [24]  915 	sjmp	00164$
      000895                        916 00463$:
                                    917 ;	../UI_Manager/ui.c:148: action == BUTTON_FUNCTION ||
      000895 BF 02 02         [24]  918 	cjne	r7,#0x02,00464$
      000898 80 07            [24]  919 	sjmp	00164$
      00089A                        920 00464$:
                                    921 ;	../UI_Manager/ui.c:149: State == IDLE_STATE){
      00089A E5 08            [12]  922 	mov	a,_State
      00089C 60 03            [24]  923 	jz	00465$
      00089E 02 09 BA         [24]  924 	ljmp	00175$
      0008A1                        925 00465$:
      0008A1                        926 00164$:
                                    927 ;	../UI_Manager/ui.c:151: switch (State)
      0008A1 AE 08            [24]  928 	mov	r6,_State
      0008A3 BE 01 03         [24]  929 	cjne	r6,#0x01,00466$
      0008A6 02 09 4F         [24]  930 	ljmp	00141$
      0008A9                        931 00466$:
      0008A9 BE 02 03         [24]  932 	cjne	r6,#0x02,00467$
      0008AC 02 09 5D         [24]  933 	ljmp	00143$
      0008AF                        934 00467$:
      0008AF BE 03 03         [24]  935 	cjne	r6,#0x03,00468$
      0008B2 02 09 56         [24]  936 	ljmp	00142$
      0008B5                        937 00468$:
      0008B5 BE 04 03         [24]  938 	cjne	r6,#0x04,00469$
      0008B8 02 09 64         [24]  939 	ljmp	00144$
      0008BB                        940 00469$:
      0008BB BE 05 03         [24]  941 	cjne	r6,#0x05,00470$
      0008BE 02 09 6B         [24]  942 	ljmp	00145$
      0008C1                        943 00470$:
      0008C1 BE 06 03         [24]  944 	cjne	r6,#0x06,00471$
      0008C4 02 09 72         [24]  945 	ljmp	00149$
      0008C7                        946 00471$:
      0008C7 BE 07 03         [24]  947 	cjne	r6,#0x07,00472$
      0008CA 02 09 72         [24]  948 	ljmp	00149$
      0008CD                        949 00472$:
      0008CD BE 08 03         [24]  950 	cjne	r6,#0x08,00473$
      0008D0 02 09 72         [24]  951 	ljmp	00149$
      0008D3                        952 00473$:
      0008D3 BE 09 03         [24]  953 	cjne	r6,#0x09,00474$
      0008D6 02 09 72         [24]  954 	ljmp	00149$
      0008D9                        955 00474$:
      0008D9 BE 0A 03         [24]  956 	cjne	r6,#0x0a,00475$
      0008DC 02 09 79         [24]  957 	ljmp	00152$
      0008DF                        958 00475$:
      0008DF BE 0B 03         [24]  959 	cjne	r6,#0x0b,00476$
      0008E2 02 09 79         [24]  960 	ljmp	00152$
      0008E5                        961 00476$:
      0008E5 BE 0C 03         [24]  962 	cjne	r6,#0x0c,00477$
      0008E8 02 09 79         [24]  963 	ljmp	00152$
      0008EB                        964 00477$:
      0008EB BE 0D 03         [24]  965 	cjne	r6,#0x0d,00478$
      0008EE 02 09 80         [24]  966 	ljmp	00154$
      0008F1                        967 00478$:
      0008F1 BE 0E 03         [24]  968 	cjne	r6,#0x0e,00479$
      0008F4 02 09 80         [24]  969 	ljmp	00154$
      0008F7                        970 00479$:
      0008F7 BE 14 03         [24]  971 	cjne	r6,#0x14,00480$
      0008FA 02 09 87         [24]  972 	ljmp	00155$
      0008FD                        973 00480$:
      0008FD BE 15 03         [24]  974 	cjne	r6,#0x15,00481$
      000900 02 09 8E         [24]  975 	ljmp	00156$
      000903                        976 00481$:
      000903 BE 45 02         [24]  977 	cjne	r6,#0x45,00482$
      000906 80 03            [24]  978 	sjmp	00483$
      000908                        979 00482$:
      000908 02 09 95         [24]  980 	ljmp	00157$
      00090B                        981 00483$:
                                    982 ;	../UI_Manager/ui.c:156: exe_command(CLEAR_DISPLAY);
      00090B 90 80 00         [24]  983 	mov	dptr,#0x8000
      00090E 12 20 60         [24]  984 	lcall	_exe_command
                                    985 ;	../UI_Manager/ui.c:157: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000911 E4               [12]  986 	clr	a
      000912 C0 E0            [24]  987 	push	acc
      000914 C0 E0            [24]  988 	push	acc
      000916 04               [12]  989 	inc	a
      000917 C0 E0            [24]  990 	push	acc
      000919 C4               [12]  991 	swap	a
      00091A C0 E0            [24]  992 	push	acc
      00091C 90 37 D1         [24]  993 	mov	dptr,#___str_6
      00091F 75 F0 80         [24]  994 	mov	b,#0x80
      000922 12 1D 25         [24]  995 	lcall	_write_string
      000925 E5 81            [12]  996 	mov	a,sp
      000927 24 FC            [12]  997 	add	a,#0xfc
      000929 F5 81            [12]  998 	mov	sp,a
                                    999 ;	../UI_Manager/ui.c:158: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      00092B E4               [12] 1000 	clr	a
      00092C C0 E0            [24] 1001 	push	acc
      00092E 04               [12] 1002 	inc	a
      00092F C0 E0            [24] 1003 	push	acc
      000931 E4               [12] 1004 	clr	a
      000932 C0 E0            [24] 1005 	push	acc
      000934 74 10            [12] 1006 	mov	a,#0x10
      000936 C0 E0            [24] 1007 	push	acc
      000938 90 37 E0         [24] 1008 	mov	dptr,#___str_7
      00093B 75 F0 80         [24] 1009 	mov	b,#0x80
      00093E 12 1D 25         [24] 1010 	lcall	_write_string
      000941 E5 81            [12] 1011 	mov	a,sp
      000943 24 FC            [12] 1012 	add	a,#0xfc
      000945 F5 81            [12] 1013 	mov	sp,a
                                   1014 ;	../UI_Manager/ui.c:160: Changed = CHANGE_SCREEN_X;
      000947 75 09 FF         [24] 1015 	mov	_Changed,#0xff
                                   1016 ;	../UI_Manager/ui.c:161: State = IDLE_STATE;
      00094A 75 08 00         [24] 1017 	mov	_State,#0x00
                                   1018 ;	../UI_Manager/ui.c:163: break;
                                   1019 ;	../UI_Manager/ui.c:164: case MANUAL_FOG_POWER_STATE:
      00094D 80 6B            [24] 1020 	sjmp	00175$
      00094F                       1021 00141$:
                                   1022 ;	../UI_Manager/ui.c:165: fogLevelPage(action);
      00094F 8F 82            [24] 1023 	mov	dpl,r7
      000951 12 0D 7A         [24] 1024 	lcall	_fogLevelPage
                                   1025 ;	../UI_Manager/ui.c:166: break;
                                   1026 ;	../UI_Manager/ui.c:167: case MANUAL_FOG_INTERVAL_STATE:
      000954 80 64            [24] 1027 	sjmp	00175$
      000956                       1028 00142$:
                                   1029 ;	../UI_Manager/ui.c:168: fogIntervalPage(action);
      000956 8F 82            [24] 1030 	mov	dpl,r7
      000958 12 0F 0A         [24] 1031 	lcall	_fogIntervalPage
                                   1032 ;	../UI_Manager/ui.c:169: break;
                                   1033 ;	../UI_Manager/ui.c:170: case MANUAL_FOG_DURATION_STATE:
      00095B 80 5D            [24] 1034 	sjmp	00175$
      00095D                       1035 00143$:
                                   1036 ;	../UI_Manager/ui.c:171: fogDurationPage(action);
      00095D 8F 82            [24] 1037 	mov	dpl,r7
      00095F 12 0F DB         [24] 1038 	lcall	_fogDurationPage
                                   1039 ;	../UI_Manager/ui.c:172: break;
                                   1040 ;	../UI_Manager/ui.c:173: case MANUAL_COLOR_MACRO_STATE:
      000962 80 56            [24] 1041 	sjmp	00175$
      000964                       1042 00144$:
                                   1043 ;	../UI_Manager/ui.c:174: macroPage(action);
      000964 8F 82            [24] 1044 	mov	dpl,r7
      000966 12 10 AC         [24] 1045 	lcall	_macroPage
                                   1046 ;	../UI_Manager/ui.c:175: break;
                                   1047 ;	../UI_Manager/ui.c:176: case MANUAL_MACRO_SPEED_STATE:
      000969 80 4F            [24] 1048 	sjmp	00175$
      00096B                       1049 00145$:
                                   1050 ;	../UI_Manager/ui.c:177: macroSpeedPage(action);
      00096B 8F 82            [24] 1051 	mov	dpl,r7
      00096D 12 11 76         [24] 1052 	lcall	_macroSpeedPage
                                   1053 ;	../UI_Manager/ui.c:178: break;
                                   1054 ;	../UI_Manager/ui.c:182: case MANUAL_STROBE_STATE:
      000970 80 48            [24] 1055 	sjmp	00175$
      000972                       1056 00149$:
                                   1057 ;	../UI_Manager/ui.c:183: colorPage(action);
      000972 8F 82            [24] 1058 	mov	dpl,r7
      000974 12 12 71         [24] 1059 	lcall	_colorPage
                                   1060 ;	../UI_Manager/ui.c:184: break;
                                   1061 ;	../UI_Manager/ui.c:187: case MANUAL_REMOTE_ACTION_6_STATE:
      000977 80 41            [24] 1062 	sjmp	00175$
      000979                       1063 00152$:
                                   1064 ;	../UI_Manager/ui.c:188: remotePage(action);
      000979 8F 82            [24] 1065 	mov	dpl,r7
      00097B 12 13 B1         [24] 1066 	lcall	_remotePage
                                   1067 ;	../UI_Manager/ui.c:189: break;
                                   1068 ;	../UI_Manager/ui.c:191: case MANUAL_SAVE_SETTINGS_STATE:
      00097E 80 3A            [24] 1069 	sjmp	00175$
      000980                       1070 00154$:
                                   1071 ;	../UI_Manager/ui.c:192: saveLoadPage(action);
      000980 8F 82            [24] 1072 	mov	dpl,r7
      000982 12 14 FD         [24] 1073 	lcall	_saveLoadPage
                                   1074 ;	../UI_Manager/ui.c:193: break;
                                   1075 ;	../UI_Manager/ui.c:194: case DMX_ADDRESS_STATE:
      000985 80 33            [24] 1076 	sjmp	00175$
      000987                       1077 00155$:
                                   1078 ;	../UI_Manager/ui.c:195: dmxAddressPage(action);
      000987 8F 82            [24] 1079 	mov	dpl,r7
      000989 12 16 4D         [24] 1080 	lcall	_dmxAddressPage
                                   1081 ;	../UI_Manager/ui.c:196: break;
                                   1082 ;	../UI_Manager/ui.c:197: case DMX_CHANNEL_MODE_STATE:
      00098C 80 2C            [24] 1083 	sjmp	00175$
      00098E                       1084 00156$:
                                   1085 ;	../UI_Manager/ui.c:198: dmxChannelPage(action);
      00098E 8F 82            [24] 1086 	mov	dpl,r7
      000990 12 16 E5         [24] 1087 	lcall	_dmxChannelPage
                                   1088 ;	../UI_Manager/ui.c:199: break;
                                   1089 ;	../UI_Manager/ui.c:200: default: //IDLE state
      000993 80 25            [24] 1090 	sjmp	00175$
      000995                       1091 00157$:
                                   1092 ;	../UI_Manager/ui.c:201: idlePage();
      000995 C0 07            [24] 1093 	push	ar7
      000997 12 09 C0         [24] 1094 	lcall	_idlePage
      00099A D0 07            [24] 1095 	pop	ar7
                                   1096 ;	../UI_Manager/ui.c:203: if(action == BUTTON_FUNCTION){
      00099C BF 02 0D         [24] 1097 	cjne	r7,#0x02,00161$
                                   1098 ;	../UI_Manager/ui.c:204: set_ui_state(INC, NULL);
      00099F E4               [12] 1099 	clr	a
      0009A0 C0 E0            [24] 1100 	push	acc
      0009A2 75 82 01         [24] 1101 	mov	dpl,#0x01
      0009A5 12 17 A0         [24] 1102 	lcall	_set_ui_state
      0009A8 15 81            [12] 1103 	dec	sp
      0009AA 80 0E            [24] 1104 	sjmp	00175$
      0009AC                       1105 00161$:
                                   1106 ;	../UI_Manager/ui.c:205: } else if(action == BUTTON_TIMER){
      0009AC BF 01 0B         [24] 1107 	cjne	r7,#0x01,00175$
                                   1108 ;	../UI_Manager/ui.c:206: set_ui_state(DEC, NULL);
      0009AF E4               [12] 1109 	clr	a
      0009B0 C0 E0            [24] 1110 	push	acc
      0009B2 75 82 02         [24] 1111 	mov	dpl,#0x02
      0009B5 12 17 A0         [24] 1112 	lcall	_set_ui_state
      0009B8 15 81            [12] 1113 	dec	sp
                                   1114 ;	../UI_Manager/ui.c:209: }
      0009BA                       1115 00175$:
                                   1116 ;	../UI_Manager/ui.c:212: }
      0009BA 85 1A 81         [24] 1117 	mov	sp,_bp
      0009BD D0 1A            [24] 1118 	pop	_bp
      0009BF 22               [24] 1119 	ret
                                   1120 ;------------------------------------------------------------
                                   1121 ;Allocation info for local variables in function 'idlePage'
                                   1122 ;------------------------------------------------------------
                                   1123 ;temp                      Allocated to registers r7 
                                   1124 ;timer                     Allocated with name '_idlePage_timer_65536_61'
                                   1125 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_61'
                                   1126 ;empty                     Allocated with name '_idlePage_empty_65536_61'
                                   1127 ;tock                      Allocated with name '_idlePage_tock_65536_61'
                                   1128 ;iconChange                Allocated with name '_idlePage_iconChange_65536_61'
                                   1129 ;playing                   Allocated with name '_idlePage_playing_65536_61'
                                   1130 ;------------------------------------------------------------
                                   1131 ;	../UI_Manager/ui.c:214: void idlePage(){
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function idlePage
                                   1134 ;	-----------------------------------------
      0009C0                       1135 _idlePage:
                                   1136 ;	../UI_Manager/ui.c:223: if(empty){
      0009C0 E5 0E            [12] 1137 	mov	a,_idlePage_empty_65536_61
      0009C2 60 50            [24] 1138 	jz	00107$
                                   1139 ;	../UI_Manager/ui.c:224: if(get_fog_fluid_level() == TANK_FULL){
      0009C4 74 01            [12] 1140 	mov	a,#0x01
      0009C6 B5 50 07         [24] 1141 	cjne	a,_Fluid_Level,00104$
                                   1142 ;	../UI_Manager/ui.c:225: empty = 0x00;
      0009C9 75 0E 00         [24] 1143 	mov	_idlePage_empty_65536_61,#0x00
                                   1144 ;	../UI_Manager/ui.c:226: Changed = CHANGE_SCREEN_X;
      0009CC 75 09 FF         [24] 1145 	mov	_Changed,#0xff
      0009CF 22               [24] 1146 	ret
      0009D0                       1147 00104$:
                                   1148 ;	../UI_Manager/ui.c:227: } else if(Changed){
      0009D0 E5 09            [12] 1149 	mov	a,_Changed
      0009D2 60 3F            [24] 1150 	jz	00105$
                                   1151 ;	../UI_Manager/ui.c:228: Changed = 0x00;
      0009D4 75 09 00         [24] 1152 	mov	_Changed,#0x00
                                   1153 ;	../UI_Manager/ui.c:229: exe_command(CLEAR_DISPLAY);
      0009D7 90 80 00         [24] 1154 	mov	dptr,#0x8000
      0009DA 12 20 60         [24] 1155 	lcall	_exe_command
                                   1156 ;	../UI_Manager/ui.c:230: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0009DD E4               [12] 1157 	clr	a
      0009DE C0 E0            [24] 1158 	push	acc
      0009E0 C0 E0            [24] 1159 	push	acc
      0009E2 04               [12] 1160 	inc	a
      0009E3 C0 E0            [24] 1161 	push	acc
      0009E5 C4               [12] 1162 	swap	a
      0009E6 C0 E0            [24] 1163 	push	acc
      0009E8 90 37 F0         [24] 1164 	mov	dptr,#___str_8
      0009EB 75 F0 80         [24] 1165 	mov	b,#0x80
      0009EE 12 1D 25         [24] 1166 	lcall	_write_string
      0009F1 E5 81            [12] 1167 	mov	a,sp
      0009F3 24 FC            [12] 1168 	add	a,#0xfc
      0009F5 F5 81            [12] 1169 	mov	sp,a
                                   1170 ;	../UI_Manager/ui.c:231: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0009F7 E4               [12] 1171 	clr	a
      0009F8 C0 E0            [24] 1172 	push	acc
      0009FA 04               [12] 1173 	inc	a
      0009FB C0 E0            [24] 1174 	push	acc
      0009FD E4               [12] 1175 	clr	a
      0009FE C0 E0            [24] 1176 	push	acc
      000A00 74 10            [12] 1177 	mov	a,#0x10
      000A02 C0 E0            [24] 1178 	push	acc
      000A04 90 37 FF         [24] 1179 	mov	dptr,#___str_9
      000A07 75 F0 80         [24] 1180 	mov	b,#0x80
      000A0A 12 1D 25         [24] 1181 	lcall	_write_string
      000A0D E5 81            [12] 1182 	mov	a,sp
      000A0F 24 FC            [12] 1183 	add	a,#0xfc
      000A11 F5 81            [12] 1184 	mov	sp,a
      000A13                       1185 00105$:
                                   1186 ;	../UI_Manager/ui.c:234: return;
      000A13 22               [24] 1187 	ret
      000A14                       1188 00107$:
                                   1189 ;	../UI_Manager/ui.c:238: if(get_fog_fluid_level() == TANK_EMPTY && get_heated() == HEATED){
      000A14 E5 50            [12] 1190 	mov	a,_Fluid_Level
      000A16 70 47            [24] 1191 	jnz	00109$
      000A18 AE 4F            [24] 1192 	mov	r6,_Heat_Flag
      000A1A 53 06 80         [24] 1193 	anl	ar6,#0x80
      000A1D 7F 00            [12] 1194 	mov	r7,#0x00
      000A1F BE 80 3D         [24] 1195 	cjne	r6,#0x80,00109$
      000A22 BF 00 3A         [24] 1196 	cjne	r7,#0x00,00109$
                                   1197 ;	../UI_Manager/ui.c:240: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000A25 E4               [12] 1198 	clr	a
      000A26 C0 E0            [24] 1199 	push	acc
      000A28 C0 E0            [24] 1200 	push	acc
      000A2A 04               [12] 1201 	inc	a
      000A2B C0 E0            [24] 1202 	push	acc
      000A2D C4               [12] 1203 	swap	a
      000A2E C0 E0            [24] 1204 	push	acc
      000A30 90 37 F0         [24] 1205 	mov	dptr,#___str_8
      000A33 75 F0 80         [24] 1206 	mov	b,#0x80
      000A36 12 1D 25         [24] 1207 	lcall	_write_string
      000A39 E5 81            [12] 1208 	mov	a,sp
      000A3B 24 FC            [12] 1209 	add	a,#0xfc
      000A3D F5 81            [12] 1210 	mov	sp,a
                                   1211 ;	../UI_Manager/ui.c:241: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000A3F E4               [12] 1212 	clr	a
      000A40 C0 E0            [24] 1213 	push	acc
      000A42 04               [12] 1214 	inc	a
      000A43 C0 E0            [24] 1215 	push	acc
      000A45 E4               [12] 1216 	clr	a
      000A46 C0 E0            [24] 1217 	push	acc
      000A48 74 10            [12] 1218 	mov	a,#0x10
      000A4A C0 E0            [24] 1219 	push	acc
      000A4C 90 37 FF         [24] 1220 	mov	dptr,#___str_9
      000A4F 75 F0 80         [24] 1221 	mov	b,#0x80
      000A52 12 1D 25         [24] 1222 	lcall	_write_string
      000A55 E5 81            [12] 1223 	mov	a,sp
      000A57 24 FC            [12] 1224 	add	a,#0xfc
      000A59 F5 81            [12] 1225 	mov	sp,a
                                   1226 ;	../UI_Manager/ui.c:243: empty = 0xFF;
      000A5B 75 0E FF         [24] 1227 	mov	_idlePage_empty_65536_61,#0xff
                                   1228 ;	../UI_Manager/ui.c:245: return;
      000A5E 22               [24] 1229 	ret
      000A5F                       1230 00109$:
                                   1231 ;	../UI_Manager/ui.c:248: if(Changed){
      000A5F E5 09            [12] 1232 	mov	a,_Changed
      000A61 70 03            [24] 1233 	jnz	00344$
      000A63 02 0B 22         [24] 1234 	ljmp	00119$
      000A66                       1235 00344$:
                                   1236 ;	../UI_Manager/ui.c:249: exe_command(CLEAR_DISPLAY);
      000A66 90 80 00         [24] 1237 	mov	dptr,#0x8000
      000A69 12 20 60         [24] 1238 	lcall	_exe_command
                                   1239 ;	../UI_Manager/ui.c:250: Changed = 0x00;
      000A6C 75 09 00         [24] 1240 	mov	_Changed,#0x00
                                   1241 ;	../UI_Manager/ui.c:251: changed = 0xFF;
      000A6F 75 0A FF         [24] 1242 	mov	_changed,#0xff
                                   1243 ;	../UI_Manager/ui.c:252: timer = 0xFF;
      000A72 75 0C FF         [24] 1244 	mov	_idlePage_timer_65536_61,#0xff
                                   1245 ;	../UI_Manager/ui.c:253: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
      000A75 75 0D 55         [24] 1246 	mov	_idlePage_intervalOrDuration_65536_61,#0x55
                                   1247 ;	../UI_Manager/ui.c:255: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
      000A78 75 82 10         [24] 1248 	mov	dpl,#0x10
      000A7B 12 2F 91         [24] 1249 	lcall	_get_runtime_data
      000A7E E5 82            [12] 1250 	mov	a,dpl
      000A80 60 1D            [24] 1251 	jz	00116$
                                   1252 ;	../UI_Manager/ui.c:256: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000A82 E4               [12] 1253 	clr	a
      000A83 C0 E0            [24] 1254 	push	acc
      000A85 C0 E0            [24] 1255 	push	acc
      000A87 04               [12] 1256 	inc	a
      000A88 C0 E0            [24] 1257 	push	acc
      000A8A C4               [12] 1258 	swap	a
      000A8B C0 E0            [24] 1259 	push	acc
      000A8D 90 38 0F         [24] 1260 	mov	dptr,#___str_10
      000A90 75 F0 80         [24] 1261 	mov	b,#0x80
      000A93 12 1D 25         [24] 1262 	lcall	_write_string
      000A96 E5 81            [12] 1263 	mov	a,sp
      000A98 24 FC            [12] 1264 	add	a,#0xfc
      000A9A F5 81            [12] 1265 	mov	sp,a
      000A9C 02 0B 22         [24] 1266 	ljmp	00119$
      000A9F                       1267 00116$:
                                   1268 ;	../UI_Manager/ui.c:259: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      000A9F 12 31 44         [24] 1269 	lcall	_get_dmx_address
      000AA2 E4               [12] 1270 	clr	a
      000AA3 C0 E0            [24] 1271 	push	acc
      000AA5 04               [12] 1272 	inc	a
      000AA6 C0 E0            [24] 1273 	push	acc
      000AA8 74 04            [12] 1274 	mov	a,#0x04
      000AAA C0 E0            [24] 1275 	push	acc
      000AAC 12 1D E2         [24] 1276 	lcall	_write_number
      000AAF 15 81            [12] 1277 	dec	sp
      000AB1 15 81            [12] 1278 	dec	sp
      000AB3 15 81            [12] 1279 	dec	sp
                                   1280 ;	../UI_Manager/ui.c:260: switch (get_runtime_data(MODE_INDEX))
      000AB5 75 82 0E         [24] 1281 	mov	dpl,#0x0e
      000AB8 12 2F 91         [24] 1282 	lcall	_get_runtime_data
      000ABB AF 82            [24] 1283 	mov	r7,dpl
      000ABD BF 01 02         [24] 1284 	cjne	r7,#0x01,00346$
      000AC0 80 05            [24] 1285 	sjmp	00111$
      000AC2                       1286 00346$:
                                   1287 ;	../UI_Manager/ui.c:262: case OPTION_DMX_MODE_3:
      000AC2 BF 02 0A         [24] 1288 	cjne	r7,#0x02,00113$
      000AC5 80 04            [24] 1289 	sjmp	00112$
      000AC7                       1290 00111$:
                                   1291 ;	../UI_Manager/ui.c:263: temp = 3;
      000AC7 7F 03            [12] 1292 	mov	r7,#0x03
                                   1293 ;	../UI_Manager/ui.c:264: break;
                                   1294 ;	../UI_Manager/ui.c:265: case OPTION_DMX_MODE_1: 
      000AC9 80 06            [24] 1295 	sjmp	00114$
      000ACB                       1296 00112$:
                                   1297 ;	../UI_Manager/ui.c:266: temp = 1;
      000ACB 7F 01            [12] 1298 	mov	r7,#0x01
                                   1299 ;	../UI_Manager/ui.c:267: break;
                                   1300 ;	../UI_Manager/ui.c:268: default:
      000ACD 80 02            [24] 1301 	sjmp	00114$
      000ACF                       1302 00113$:
                                   1303 ;	../UI_Manager/ui.c:269: temp = 11;
      000ACF 7F 0B            [12] 1304 	mov	r7,#0x0b
                                   1305 ;	../UI_Manager/ui.c:271: }
      000AD1                       1306 00114$:
                                   1307 ;	../UI_Manager/ui.c:272: write_number(temp, 12, LINE_1, NOT_SELECTED);
      000AD1 E4               [12] 1308 	clr	a
      000AD2 FE               [12] 1309 	mov	r6,a
      000AD3 C0 E0            [24] 1310 	push	acc
      000AD5 04               [12] 1311 	inc	a
      000AD6 C0 E0            [24] 1312 	push	acc
      000AD8 74 0C            [12] 1313 	mov	a,#0x0c
      000ADA C0 E0            [24] 1314 	push	acc
      000ADC 8F 82            [24] 1315 	mov	dpl,r7
      000ADE 8E 83            [24] 1316 	mov	dph,r6
      000AE0 12 1D E2         [24] 1317 	lcall	_write_number
      000AE3 15 81            [12] 1318 	dec	sp
      000AE5 15 81            [12] 1319 	dec	sp
      000AE7 15 81            [12] 1320 	dec	sp
                                   1321 ;	../UI_Manager/ui.c:274: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
      000AE9 E4               [12] 1322 	clr	a
      000AEA C0 E0            [24] 1323 	push	acc
      000AEC 04               [12] 1324 	inc	a
      000AED C0 E0            [24] 1325 	push	acc
      000AEF E4               [12] 1326 	clr	a
      000AF0 C0 E0            [24] 1327 	push	acc
      000AF2 74 04            [12] 1328 	mov	a,#0x04
      000AF4 C0 E0            [24] 1329 	push	acc
      000AF6 90 38 1B         [24] 1330 	mov	dptr,#___str_11
      000AF9 75 F0 80         [24] 1331 	mov	b,#0x80
      000AFC 12 1D 25         [24] 1332 	lcall	_write_string
      000AFF E5 81            [12] 1333 	mov	a,sp
      000B01 24 FC            [12] 1334 	add	a,#0xfc
      000B03 F5 81            [12] 1335 	mov	sp,a
                                   1336 ;	../UI_Manager/ui.c:275: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
      000B05 E4               [12] 1337 	clr	a
      000B06 C0 E0            [24] 1338 	push	acc
      000B08 04               [12] 1339 	inc	a
      000B09 C0 E0            [24] 1340 	push	acc
      000B0B 74 09            [12] 1341 	mov	a,#0x09
      000B0D C0 E0            [24] 1342 	push	acc
      000B0F 74 04            [12] 1343 	mov	a,#0x04
      000B11 C0 E0            [24] 1344 	push	acc
      000B13 90 38 20         [24] 1345 	mov	dptr,#___str_12
      000B16 75 F0 80         [24] 1346 	mov	b,#0x80
      000B19 12 1D 25         [24] 1347 	lcall	_write_string
      000B1C E5 81            [12] 1348 	mov	a,sp
      000B1E 24 FC            [12] 1349 	add	a,#0xfc
      000B20 F5 81            [12] 1350 	mov	sp,a
      000B22                       1351 00119$:
                                   1352 ;	../UI_Manager/ui.c:283: tock++;
      000B22 05 0F            [12] 1353 	inc	_idlePage_tock_65536_61
                                   1354 ;	../UI_Manager/ui.c:284: if(get_playing() == PLAY){
      000B24 74 01            [12] 1355 	mov	a,#0x01
      000B26 B5 4E 64         [24] 1356 	cjne	a,_Playing,00137$
                                   1357 ;	../UI_Manager/ui.c:285: if(playing == PAUSE){
      000B29 E5 11            [12] 1358 	mov	a,_idlePage_playing_65536_61
                                   1359 ;	../UI_Manager/ui.c:286: iconChange |= PLAY_CHANGE;
      000B2B 70 08            [24] 1360 	jnz	00121$
      000B2D AE 10            [24] 1361 	mov	r6,_idlePage_iconChange_65536_61
      000B2F FF               [12] 1362 	mov	r7,a
      000B30 43 06 20         [24] 1363 	orl	ar6,#0x20
      000B33 8E 10            [24] 1364 	mov	_idlePage_iconChange_65536_61,r6
      000B35                       1365 00121$:
                                   1366 ;	../UI_Manager/ui.c:289: if(get_interval_or_duration() == INTERVAL){
      000B35 E5 4D            [12] 1367 	mov	a,_Interval_Or_Duration
      000B37 70 1B            [24] 1368 	jnz	00130$
                                   1369 ;	../UI_Manager/ui.c:291: if(iconChange & PLAY_CHANGE){
      000B39 E5 10            [12] 1370 	mov	a,_idlePage_iconChange_65536_61
      000B3B 30 E5 44         [24] 1371 	jnb	acc.5,00131$
                                   1372 ;	../UI_Manager/ui.c:292: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000B3E E4               [12] 1373 	clr	a
      000B3F C0 E0            [24] 1374 	push	acc
      000B41 74 0E            [12] 1375 	mov	a,#0x0e
      000B43 C0 E0            [24] 1376 	push	acc
      000B45 75 82 80         [24] 1377 	mov	dpl,#0x80
      000B48 12 20 15         [24] 1378 	lcall	_write_char
      000B4B 15 81            [12] 1379 	dec	sp
      000B4D 15 81            [12] 1380 	dec	sp
                                   1381 ;	../UI_Manager/ui.c:293: iconChange &= ~PLAY_CHANGE;
      000B4F 53 10 DF         [24] 1382 	anl	_idlePage_iconChange_65536_61,#0xdf
      000B52 80 2E            [24] 1383 	sjmp	00131$
      000B54                       1384 00130$:
                                   1385 ;	../UI_Manager/ui.c:297: if(tock == 0x80 + 55){ //blink if fogging
      000B54 74 B7            [12] 1386 	mov	a,#0xb7
      000B56 B5 0F 13         [24] 1387 	cjne	a,_idlePage_tock_65536_61,00127$
                                   1388 ;	../UI_Manager/ui.c:298: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000B59 E4               [12] 1389 	clr	a
      000B5A C0 E0            [24] 1390 	push	acc
      000B5C 74 0E            [12] 1391 	mov	a,#0x0e
      000B5E C0 E0            [24] 1392 	push	acc
      000B60 75 82 80         [24] 1393 	mov	dpl,#0x80
      000B63 12 20 15         [24] 1394 	lcall	_write_char
      000B66 15 81            [12] 1395 	dec	sp
      000B68 15 81            [12] 1396 	dec	sp
      000B6A 80 16            [24] 1397 	sjmp	00131$
      000B6C                       1398 00127$:
                                   1399 ;	../UI_Manager/ui.c:299: } else if(tock == 0x08 + 55){
      000B6C 74 3F            [12] 1400 	mov	a,#0x3f
      000B6E B5 0F 11         [24] 1401 	cjne	a,_idlePage_tock_65536_61,00131$
                                   1402 ;	../UI_Manager/ui.c:300: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      000B71 E4               [12] 1403 	clr	a
      000B72 C0 E0            [24] 1404 	push	acc
      000B74 74 0E            [12] 1405 	mov	a,#0x0e
      000B76 C0 E0            [24] 1406 	push	acc
      000B78 75 82 04         [24] 1407 	mov	dpl,#0x04
      000B7B 12 20 15         [24] 1408 	lcall	_write_char
      000B7E 15 81            [12] 1409 	dec	sp
      000B80 15 81            [12] 1410 	dec	sp
      000B82                       1411 00131$:
                                   1412 ;	../UI_Manager/ui.c:303: iconChange |= PAUSE_CHANGE;
      000B82 AE 10            [24] 1413 	mov	r6,_idlePage_iconChange_65536_61
      000B84 7F 00            [12] 1414 	mov	r7,#0x00
      000B86 43 06 10         [24] 1415 	orl	ar6,#0x10
      000B89 8E 10            [24] 1416 	mov	_idlePage_iconChange_65536_61,r6
      000B8B 80 33            [24] 1417 	sjmp	00138$
      000B8D                       1418 00137$:
                                   1419 ;	../UI_Manager/ui.c:305: if(playing == PLAY){
      000B8D 74 01            [12] 1420 	mov	a,#0x01
      000B8F B5 11 09         [24] 1421 	cjne	a,_idlePage_playing_65536_61,00133$
                                   1422 ;	../UI_Manager/ui.c:306: iconChange |= PAUSE_CHANGE;
      000B92 AE 10            [24] 1423 	mov	r6,_idlePage_iconChange_65536_61
      000B94 7F 00            [12] 1424 	mov	r7,#0x00
      000B96 43 06 10         [24] 1425 	orl	ar6,#0x10
      000B99 8E 10            [24] 1426 	mov	_idlePage_iconChange_65536_61,r6
      000B9B                       1427 00133$:
                                   1428 ;	../UI_Manager/ui.c:309: if(iconChange & PAUSE_CHANGE){
      000B9B E5 10            [12] 1429 	mov	a,_idlePage_iconChange_65536_61
      000B9D 30 E4 1D         [24] 1430 	jnb	acc.4,00135$
                                   1431 ;	../UI_Manager/ui.c:310: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      000BA0 E4               [12] 1432 	clr	a
      000BA1 C0 E0            [24] 1433 	push	acc
      000BA3 74 0E            [12] 1434 	mov	a,#0x0e
      000BA5 C0 E0            [24] 1435 	push	acc
      000BA7 75 82 04         [24] 1436 	mov	dpl,#0x04
      000BAA 12 20 15         [24] 1437 	lcall	_write_char
      000BAD 15 81            [12] 1438 	dec	sp
      000BAF 15 81            [12] 1439 	dec	sp
                                   1440 ;	../UI_Manager/ui.c:311: iconChange |= PLAY_CHANGE;
      000BB1 AE 10            [24] 1441 	mov	r6,_idlePage_iconChange_65536_61
      000BB3 7F 00            [12] 1442 	mov	r7,#0x00
      000BB5 43 06 20         [24] 1443 	orl	ar6,#0x20
      000BB8 8E 10            [24] 1444 	mov	_idlePage_iconChange_65536_61,r6
                                   1445 ;	../UI_Manager/ui.c:312: iconChange &= ~PAUSE_CHANGE;
      000BBA 53 10 EF         [24] 1446 	anl	_idlePage_iconChange_65536_61,#0xef
      000BBD                       1447 00135$:
                                   1448 ;	../UI_Manager/ui.c:315: playing = PAUSE;
      000BBD 75 11 00         [24] 1449 	mov	_idlePage_playing_65536_61,#0x00
      000BC0                       1450 00138$:
                                   1451 ;	../UI_Manager/ui.c:318: if(get_heater_enabled()){
      000BC0 E5 4F            [12] 1452 	mov	a,_Heat_Flag
      000BC2 20 E4 6D         [24] 1453 	jb	acc.4,00152$
                                   1454 ;	../UI_Manager/ui.c:319: if(get_heated()){
      000BC5 E5 4F            [12] 1455 	mov	a,_Heat_Flag
      000BC7 30 E7 1B         [24] 1456 	jnb	acc.7,00147$
                                   1457 ;	../UI_Manager/ui.c:320: if(iconChange & HEATED_CHANGE){
      000BCA E5 10            [12] 1458 	mov	a,_idlePage_iconChange_65536_61
      000BCC 30 E0 58         [24] 1459 	jnb	acc.0,00148$
                                   1460 ;	../UI_Manager/ui.c:321: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
      000BCF E4               [12] 1461 	clr	a
      000BD0 C0 E0            [24] 1462 	push	acc
      000BD2 74 0F            [12] 1463 	mov	a,#0x0f
      000BD4 C0 E0            [24] 1464 	push	acc
      000BD6 75 82 60         [24] 1465 	mov	dpl,#0x60
      000BD9 12 20 15         [24] 1466 	lcall	_write_char
      000BDC 15 81            [12] 1467 	dec	sp
      000BDE 15 81            [12] 1468 	dec	sp
                                   1469 ;	../UI_Manager/ui.c:322: iconChange &= ~HEATED_CHANGE;
      000BE0 53 10 FE         [24] 1470 	anl	_idlePage_iconChange_65536_61,#0xfe
      000BE3 80 42            [24] 1471 	sjmp	00148$
      000BE5                       1472 00147$:
                                   1473 ;	../UI_Manager/ui.c:325: if(!(tock)){
      000BE5 E5 0F            [12] 1474 	mov	a,_idlePage_tock_65536_61
      000BE7 70 35            [24] 1475 	jnz	00145$
                                   1476 ;	../UI_Manager/ui.c:326: if(iconChange & HEATING_CHANGE){
      000BE9 E5 10            [12] 1477 	mov	a,_idlePage_iconChange_65536_61
      000BEB 30 E1 16         [24] 1478 	jnb	acc.1,00142$
                                   1479 ;	../UI_Manager/ui.c:327: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
      000BEE E4               [12] 1480 	clr	a
      000BEF C0 E0            [24] 1481 	push	acc
      000BF1 74 0F            [12] 1482 	mov	a,#0x0f
      000BF3 C0 E0            [24] 1483 	push	acc
      000BF5 75 82 04         [24] 1484 	mov	dpl,#0x04
      000BF8 12 20 15         [24] 1485 	lcall	_write_char
      000BFB 15 81            [12] 1486 	dec	sp
      000BFD 15 81            [12] 1487 	dec	sp
                                   1488 ;	../UI_Manager/ui.c:328: iconChange &= ~HEATING_CHANGE;
      000BFF 53 10 FD         [24] 1489 	anl	_idlePage_iconChange_65536_61,#0xfd
      000C02 80 1A            [24] 1490 	sjmp	00145$
      000C04                       1491 00142$:
                                   1492 ;	../UI_Manager/ui.c:330: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
      000C04 E4               [12] 1493 	clr	a
      000C05 C0 E0            [24] 1494 	push	acc
      000C07 74 0F            [12] 1495 	mov	a,#0x0f
      000C09 C0 E0            [24] 1496 	push	acc
      000C0B 75 82 A0         [24] 1497 	mov	dpl,#0xa0
      000C0E 12 20 15         [24] 1498 	lcall	_write_char
      000C11 15 81            [12] 1499 	dec	sp
      000C13 15 81            [12] 1500 	dec	sp
                                   1501 ;	../UI_Manager/ui.c:331: iconChange |= HEATING_CHANGE;
      000C15 AE 10            [24] 1502 	mov	r6,_idlePage_iconChange_65536_61
      000C17 7F 00            [12] 1503 	mov	r7,#0x00
      000C19 43 06 02         [24] 1504 	orl	ar6,#0x02
      000C1C 8E 10            [24] 1505 	mov	_idlePage_iconChange_65536_61,r6
      000C1E                       1506 00145$:
                                   1507 ;	../UI_Manager/ui.c:334: iconChange |= HEATED_CHANGE;
      000C1E AE 10            [24] 1508 	mov	r6,_idlePage_iconChange_65536_61
      000C20 7F 00            [12] 1509 	mov	r7,#0x00
      000C22 43 06 01         [24] 1510 	orl	ar6,#0x01
      000C25 8E 10            [24] 1511 	mov	_idlePage_iconChange_65536_61,r6
      000C27                       1512 00148$:
                                   1513 ;	../UI_Manager/ui.c:336: iconChange |= HEATER_CHANGE;
      000C27 AE 10            [24] 1514 	mov	r6,_idlePage_iconChange_65536_61
      000C29 7F 00            [12] 1515 	mov	r7,#0x00
      000C2B 43 06 08         [24] 1516 	orl	ar6,#0x08
      000C2E 8E 10            [24] 1517 	mov	_idlePage_iconChange_65536_61,r6
      000C30 80 1C            [24] 1518 	sjmp	00153$
      000C32                       1519 00152$:
                                   1520 ;	../UI_Manager/ui.c:338: if(iconChange & HEATER_CHANGE){
      000C32 E5 10            [12] 1521 	mov	a,_idlePage_iconChange_65536_61
      000C34 30 E3 14         [24] 1522 	jnb	acc.3,00150$
                                   1523 ;	../UI_Manager/ui.c:339: write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
      000C37 E4               [12] 1524 	clr	a
      000C38 C0 E0            [24] 1525 	push	acc
      000C3A 74 0F            [12] 1526 	mov	a,#0x0f
      000C3C C0 E0            [24] 1527 	push	acc
      000C3E 75 82 00         [24] 1528 	mov	dpl,#0x00
      000C41 12 20 15         [24] 1529 	lcall	_write_char
      000C44 15 81            [12] 1530 	dec	sp
      000C46 15 81            [12] 1531 	dec	sp
                                   1532 ;	../UI_Manager/ui.c:340: iconChange &= ~HEATER_CHANGE;
      000C48 53 10 F7         [24] 1533 	anl	_idlePage_iconChange_65536_61,#0xf7
      000C4B                       1534 00150$:
                                   1535 ;	../UI_Manager/ui.c:342: iconChange |= HEATER_CHANGE | HEATED_CHANGE;
      000C4B 43 10 09         [24] 1536 	orl	_idlePage_iconChange_65536_61,#0x09
      000C4E                       1537 00153$:
                                   1538 ;	../UI_Manager/ui.c:347: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      000C4E 75 82 10         [24] 1539 	mov	dpl,#0x10
      000C51 12 2F 91         [24] 1540 	lcall	_get_runtime_data
      000C54 E5 82            [12] 1541 	mov	a,dpl
      000C56 60 03            [24] 1542 	jz	00366$
      000C58 02 0D 02         [24] 1543 	ljmp	00171$
      000C5B                       1544 00366$:
                                   1545 ;	../UI_Manager/ui.c:350: if(has_dmx()){
      000C5B E5 2C            [12] 1546 	mov	a,_Has_DMX
      000C5D 60 2E            [24] 1547 	jz	00159$
                                   1548 ;	../UI_Manager/ui.c:351: if(changed & DMX_OK_CHANGE){
      000C5F E5 0A            [12] 1549 	mov	a,_changed
      000C61 30 E7 55         [24] 1550 	jnb	acc.7,00160$
                                   1551 ;	../UI_Manager/ui.c:352: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
      000C64 E4               [12] 1552 	clr	a
      000C65 C0 E0            [24] 1553 	push	acc
      000C67 C0 E0            [24] 1554 	push	acc
      000C69 04               [12] 1555 	inc	a
      000C6A C0 E0            [24] 1556 	push	acc
      000C6C 74 06            [12] 1557 	mov	a,#0x06
      000C6E C0 E0            [24] 1558 	push	acc
      000C70 90 38 25         [24] 1559 	mov	dptr,#___str_13
      000C73 75 F0 80         [24] 1560 	mov	b,#0x80
      000C76 12 1D 25         [24] 1561 	lcall	_write_string
      000C79 E5 81            [12] 1562 	mov	a,sp
      000C7B 24 FC            [12] 1563 	add	a,#0xfc
      000C7D F5 81            [12] 1564 	mov	sp,a
                                   1565 ;	../UI_Manager/ui.c:353: changed |= NO_DMX_CHANGE;
      000C7F AE 0A            [24] 1566 	mov	r6,_changed
      000C81 7F 00            [12] 1567 	mov	r7,#0x00
      000C83 43 06 40         [24] 1568 	orl	ar6,#0x40
      000C86 8E 0A            [24] 1569 	mov	_changed,r6
                                   1570 ;	../UI_Manager/ui.c:354: changed &= ~DMX_OK_CHANGE;
      000C88 53 0A 7F         [24] 1571 	anl	_changed,#0x7f
      000C8B 80 2C            [24] 1572 	sjmp	00160$
      000C8D                       1573 00159$:
                                   1574 ;	../UI_Manager/ui.c:357: if(changed & NO_DMX_CHANGE){
      000C8D E5 0A            [12] 1575 	mov	a,_changed
      000C8F 30 E6 27         [24] 1576 	jnb	acc.6,00160$
                                   1577 ;	../UI_Manager/ui.c:358: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
      000C92 E4               [12] 1578 	clr	a
      000C93 C0 E0            [24] 1579 	push	acc
      000C95 C0 E0            [24] 1580 	push	acc
      000C97 04               [12] 1581 	inc	a
      000C98 C0 E0            [24] 1582 	push	acc
      000C9A 74 06            [12] 1583 	mov	a,#0x06
      000C9C C0 E0            [24] 1584 	push	acc
      000C9E 90 38 2C         [24] 1585 	mov	dptr,#___str_14
      000CA1 75 F0 80         [24] 1586 	mov	b,#0x80
      000CA4 12 1D 25         [24] 1587 	lcall	_write_string
      000CA7 E5 81            [12] 1588 	mov	a,sp
      000CA9 24 FC            [12] 1589 	add	a,#0xfc
      000CAB F5 81            [12] 1590 	mov	sp,a
                                   1591 ;	../UI_Manager/ui.c:359: changed |= DMX_OK_CHANGE;
      000CAD AE 0A            [24] 1592 	mov	r6,_changed
      000CAF 7F 00            [12] 1593 	mov	r7,#0x00
      000CB1 43 06 80         [24] 1594 	orl	ar6,#0x80
      000CB4 8E 0A            [24] 1595 	mov	_changed,r6
                                   1596 ;	../UI_Manager/ui.c:360: changed &= ~NO_DMX_CHANGE;
      000CB6 53 0A BF         [24] 1597 	anl	_changed,#0xbf
      000CB9                       1598 00160$:
                                   1599 ;	../UI_Manager/ui.c:364: temp = get_timer();
                                   1600 ;	../UI_Manager/ui.c:367: if(timer != temp){
      000CB9 E5 4C            [12] 1601 	mov	a,_Timer
      000CBB FF               [12] 1602 	mov	r7,a
      000CBC B5 0C 01         [24] 1603 	cjne	a,_idlePage_timer_65536_61,00370$
      000CBF 22               [24] 1604 	ret
      000CC0                       1605 00370$:
                                   1606 ;	../UI_Manager/ui.c:369: write_number(temp, 7, LINE_0, NOT_SELECTED);
      000CC0 8F 05            [24] 1607 	mov	ar5,r7
      000CC2 7E 00            [12] 1608 	mov	r6,#0x00
      000CC4 C0 07            [24] 1609 	push	ar7
      000CC6 E4               [12] 1610 	clr	a
      000CC7 C0 E0            [24] 1611 	push	acc
      000CC9 C0 E0            [24] 1612 	push	acc
      000CCB 74 07            [12] 1613 	mov	a,#0x07
      000CCD C0 E0            [24] 1614 	push	acc
      000CCF 8D 82            [24] 1615 	mov	dpl,r5
      000CD1 8E 83            [24] 1616 	mov	dph,r6
      000CD3 12 1D E2         [24] 1617 	lcall	_write_number
      000CD6 15 81            [12] 1618 	dec	sp
      000CD8 15 81            [12] 1619 	dec	sp
      000CDA 15 81            [12] 1620 	dec	sp
      000CDC D0 07            [24] 1621 	pop	ar7
                                   1622 ;	../UI_Manager/ui.c:370: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
      000CDE E5 4D            [12] 1623 	mov	a,_Interval_Or_Duration
      000CE0 70 05            [24] 1624 	jnz	00175$
      000CE2 7D 92            [12] 1625 	mov	r5,#0x92
      000CE4 FE               [12] 1626 	mov	r6,a
      000CE5 80 04            [24] 1627 	sjmp	00176$
      000CE7                       1628 00175$:
      000CE7 7D 22            [12] 1629 	mov	r5,#0x22
      000CE9 7E 00            [12] 1630 	mov	r6,#0x00
      000CEB                       1631 00176$:
      000CEB 8D 82            [24] 1632 	mov	dpl,r5
      000CED C0 07            [24] 1633 	push	ar7
      000CEF E4               [12] 1634 	clr	a
      000CF0 C0 E0            [24] 1635 	push	acc
      000CF2 74 0B            [12] 1636 	mov	a,#0x0b
      000CF4 C0 E0            [24] 1637 	push	acc
      000CF6 12 20 15         [24] 1638 	lcall	_write_char
      000CF9 15 81            [12] 1639 	dec	sp
      000CFB 15 81            [12] 1640 	dec	sp
      000CFD D0 07            [24] 1641 	pop	ar7
                                   1642 ;	../UI_Manager/ui.c:372: timer = temp;
      000CFF 8F 0C            [24] 1643 	mov	_idlePage_timer_65536_61,r7
      000D01 22               [24] 1644 	ret
      000D02                       1645 00171$:
                                   1646 ;	../UI_Manager/ui.c:377: temp = get_interval_or_duration();
                                   1647 ;	../UI_Manager/ui.c:379: if(intervalOrDuration != temp){
      000D02 E5 4D            [12] 1648 	mov	a,_Interval_Or_Duration
      000D04 FF               [12] 1649 	mov	r7,a
      000D05 B5 0D 02         [24] 1650 	cjne	a,_idlePage_intervalOrDuration_65536_61,00372$
      000D08 80 47            [24] 1651 	sjmp	00167$
      000D0A                       1652 00372$:
                                   1653 ;	../UI_Manager/ui.c:380: if(temp == INTERVAL){
      000D0A EF               [12] 1654 	mov	a,r7
      000D0B 70 22            [24] 1655 	jnz	00164$
                                   1656 ;	../UI_Manager/ui.c:381: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
      000D0D C0 07            [24] 1657 	push	ar7
      000D0F E4               [12] 1658 	clr	a
      000D10 C0 E0            [24] 1659 	push	acc
      000D12 04               [12] 1660 	inc	a
      000D13 C0 E0            [24] 1661 	push	acc
      000D15 E4               [12] 1662 	clr	a
      000D16 C0 E0            [24] 1663 	push	acc
      000D18 74 09            [12] 1664 	mov	a,#0x09
      000D1A C0 E0            [24] 1665 	push	acc
      000D1C 90 38 33         [24] 1666 	mov	dptr,#___str_15
      000D1F 75 F0 80         [24] 1667 	mov	b,#0x80
      000D22 12 1D 25         [24] 1668 	lcall	_write_string
      000D25 E5 81            [12] 1669 	mov	a,sp
      000D27 24 FC            [12] 1670 	add	a,#0xfc
      000D29 F5 81            [12] 1671 	mov	sp,a
      000D2B D0 07            [24] 1672 	pop	ar7
      000D2D 80 20            [24] 1673 	sjmp	00165$
      000D2F                       1674 00164$:
                                   1675 ;	../UI_Manager/ui.c:383: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
      000D2F C0 07            [24] 1676 	push	ar7
      000D31 E4               [12] 1677 	clr	a
      000D32 C0 E0            [24] 1678 	push	acc
      000D34 04               [12] 1679 	inc	a
      000D35 C0 E0            [24] 1680 	push	acc
      000D37 E4               [12] 1681 	clr	a
      000D38 C0 E0            [24] 1682 	push	acc
      000D3A 74 09            [12] 1683 	mov	a,#0x09
      000D3C C0 E0            [24] 1684 	push	acc
      000D3E 90 38 3C         [24] 1685 	mov	dptr,#___str_16
      000D41 75 F0 80         [24] 1686 	mov	b,#0x80
      000D44 12 1D 25         [24] 1687 	lcall	_write_string
      000D47 E5 81            [12] 1688 	mov	a,sp
      000D49 24 FC            [12] 1689 	add	a,#0xfc
      000D4B F5 81            [12] 1690 	mov	sp,a
      000D4D D0 07            [24] 1691 	pop	ar7
      000D4F                       1692 00165$:
                                   1693 ;	../UI_Manager/ui.c:386: intervalOrDuration = temp;
      000D4F 8F 0D            [24] 1694 	mov	_idlePage_intervalOrDuration_65536_61,r7
      000D51                       1695 00167$:
                                   1696 ;	../UI_Manager/ui.c:389: temp = get_timer();
                                   1697 ;	../UI_Manager/ui.c:391: if(timer != temp){
      000D51 E5 4C            [12] 1698 	mov	a,_Timer
      000D53 FF               [12] 1699 	mov	r7,a
      000D54 B5 0C 01         [24] 1700 	cjne	a,_idlePage_timer_65536_61,00374$
      000D57 22               [24] 1701 	ret
      000D58                       1702 00374$:
                                   1703 ;	../UI_Manager/ui.c:393: write_number(temp, NUMBER_END_INDEX-1, LINE_1, NOT_SELECTED);
      000D58 8F 05            [24] 1704 	mov	ar5,r7
      000D5A 7E 00            [12] 1705 	mov	r6,#0x00
      000D5C C0 07            [24] 1706 	push	ar7
      000D5E E4               [12] 1707 	clr	a
      000D5F C0 E0            [24] 1708 	push	acc
      000D61 04               [12] 1709 	inc	a
      000D62 C0 E0            [24] 1710 	push	acc
      000D64 74 0B            [12] 1711 	mov	a,#0x0b
      000D66 C0 E0            [24] 1712 	push	acc
      000D68 8D 82            [24] 1713 	mov	dpl,r5
      000D6A 8E 83            [24] 1714 	mov	dph,r6
      000D6C 12 1D E2         [24] 1715 	lcall	_write_number
      000D6F 15 81            [12] 1716 	dec	sp
      000D71 15 81            [12] 1717 	dec	sp
      000D73 15 81            [12] 1718 	dec	sp
      000D75 D0 07            [24] 1719 	pop	ar7
                                   1720 ;	../UI_Manager/ui.c:395: timer = temp;
      000D77 8F 0C            [24] 1721 	mov	_idlePage_timer_65536_61,r7
                                   1722 ;	../UI_Manager/ui.c:399: }
      000D79 22               [24] 1723 	ret
                                   1724 ;------------------------------------------------------------
                                   1725 ;Allocation info for local variables in function 'fogLevelPage'
                                   1726 ;------------------------------------------------------------
                                   1727 ;action                    Allocated to registers r7 
                                   1728 ;------------------------------------------------------------
                                   1729 ;	../UI_Manager/ui.c:401: void fogLevelPage(uint8_t action){
                                   1730 ;	-----------------------------------------
                                   1731 ;	 function fogLevelPage
                                   1732 ;	-----------------------------------------
      000D7A                       1733 _fogLevelPage:
      000D7A AF 82            [24] 1734 	mov	r7,dpl
                                   1735 ;	../UI_Manager/ui.c:403: switch (action)
      000D7C BF 01 02         [24] 1736 	cjne	r7,#0x01,00152$
      000D7F 80 46            [24] 1737 	sjmp	00104$
      000D81                       1738 00152$:
      000D81 BF 02 02         [24] 1739 	cjne	r7,#0x02,00153$
      000D84 80 35            [24] 1740 	sjmp	00103$
      000D86                       1741 00153$:
      000D86 BF 03 02         [24] 1742 	cjne	r7,#0x03,00154$
      000D89 80 05            [24] 1743 	sjmp	00101$
      000D8B                       1744 00154$:
                                   1745 ;	../UI_Manager/ui.c:405: case BUTTON_UP:
      000D8B BF 0B 45         [24] 1746 	cjne	r7,#0x0b,00105$
      000D8E 80 15            [24] 1747 	sjmp	00102$
      000D90                       1748 00101$:
                                   1749 ;	../UI_Manager/ui.c:406: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
      000D90 E4               [12] 1750 	clr	a
      000D91 C0 E0            [24] 1751 	push	acc
      000D93 04               [12] 1752 	inc	a
      000D94 C0 E0            [24] 1753 	push	acc
      000D96 75 82 00         [24] 1754 	mov	dpl,#0x00
      000D99 12 30 51         [24] 1755 	lcall	_set_runtime_data
      000D9C 15 81            [12] 1756 	dec	sp
      000D9E 15 81            [12] 1757 	dec	sp
                                   1758 ;	../UI_Manager/ui.c:407: changed = 0xFF;
      000DA0 75 0A FF         [24] 1759 	mov	_changed,#0xff
                                   1760 ;	../UI_Manager/ui.c:408: break;
                                   1761 ;	../UI_Manager/ui.c:409: case BUTTON_DOWN:
      000DA3 80 2E            [24] 1762 	sjmp	00105$
      000DA5                       1763 00102$:
                                   1764 ;	../UI_Manager/ui.c:410: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
      000DA5 E4               [12] 1765 	clr	a
      000DA6 C0 E0            [24] 1766 	push	acc
      000DA8 74 02            [12] 1767 	mov	a,#0x02
      000DAA C0 E0            [24] 1768 	push	acc
      000DAC 75 82 00         [24] 1769 	mov	dpl,#0x00
      000DAF 12 30 51         [24] 1770 	lcall	_set_runtime_data
      000DB2 15 81            [12] 1771 	dec	sp
      000DB4 15 81            [12] 1772 	dec	sp
                                   1773 ;	../UI_Manager/ui.c:411: changed = 0xFF;  
      000DB6 75 0A FF         [24] 1774 	mov	_changed,#0xff
                                   1775 ;	../UI_Manager/ui.c:412: break;
                                   1776 ;	../UI_Manager/ui.c:413: case BUTTON_FUNCTION:
      000DB9 80 18            [24] 1777 	sjmp	00105$
      000DBB                       1778 00103$:
                                   1779 ;	../UI_Manager/ui.c:414: set_ui_state(INC, NULL);
      000DBB E4               [12] 1780 	clr	a
      000DBC C0 E0            [24] 1781 	push	acc
      000DBE 75 82 01         [24] 1782 	mov	dpl,#0x01
      000DC1 12 17 A0         [24] 1783 	lcall	_set_ui_state
      000DC4 15 81            [12] 1784 	dec	sp
                                   1785 ;	../UI_Manager/ui.c:415: return;
      000DC6 22               [24] 1786 	ret
                                   1787 ;	../UI_Manager/ui.c:416: case BUTTON_TIMER:
      000DC7                       1788 00104$:
                                   1789 ;	../UI_Manager/ui.c:417: set_ui_state(DEC, NULL);
      000DC7 E4               [12] 1790 	clr	a
      000DC8 C0 E0            [24] 1791 	push	acc
      000DCA 75 82 02         [24] 1792 	mov	dpl,#0x02
      000DCD 12 17 A0         [24] 1793 	lcall	_set_ui_state
      000DD0 15 81            [12] 1794 	dec	sp
                                   1795 ;	../UI_Manager/ui.c:418: return;
      000DD2 22               [24] 1796 	ret
                                   1797 ;	../UI_Manager/ui.c:419: }
      000DD3                       1798 00105$:
                                   1799 ;	../UI_Manager/ui.c:421: if(Changed){
      000DD3 E5 09            [12] 1800 	mov	a,_Changed
      000DD5 60 28            [24] 1801 	jz	00107$
                                   1802 ;	../UI_Manager/ui.c:422: Changed = 0x00;
      000DD7 75 09 00         [24] 1803 	mov	_Changed,#0x00
                                   1804 ;	../UI_Manager/ui.c:423: changed = 0xFF;
      000DDA 75 0A FF         [24] 1805 	mov	_changed,#0xff
                                   1806 ;	../UI_Manager/ui.c:425: exe_command(CLEAR_DISPLAY);
      000DDD 90 80 00         [24] 1807 	mov	dptr,#0x8000
      000DE0 12 20 60         [24] 1808 	lcall	_exe_command
                                   1809 ;	../UI_Manager/ui.c:427: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
      000DE3 E4               [12] 1810 	clr	a
      000DE4 C0 E0            [24] 1811 	push	acc
      000DE6 C0 E0            [24] 1812 	push	acc
      000DE8 74 03            [12] 1813 	mov	a,#0x03
      000DEA C0 E0            [24] 1814 	push	acc
      000DEC 74 0A            [12] 1815 	mov	a,#0x0a
      000DEE C0 E0            [24] 1816 	push	acc
      000DF0 90 38 45         [24] 1817 	mov	dptr,#___str_17
      000DF3 75 F0 80         [24] 1818 	mov	b,#0x80
      000DF6 12 1D 25         [24] 1819 	lcall	_write_string
      000DF9 E5 81            [12] 1820 	mov	a,sp
      000DFB 24 FC            [12] 1821 	add	a,#0xfc
      000DFD F5 81            [12] 1822 	mov	sp,a
      000DFF                       1823 00107$:
                                   1824 ;	../UI_Manager/ui.c:431: if(changed){
      000DFF E5 0A            [12] 1825 	mov	a,_changed
      000E01 70 01            [24] 1826 	jnz	00157$
      000E03 22               [24] 1827 	ret
      000E04                       1828 00157$:
                                   1829 ;	../UI_Manager/ui.c:432: changed = 0x00;
      000E04 75 0A 00         [24] 1830 	mov	_changed,#0x00
                                   1831 ;	../UI_Manager/ui.c:434: switch (get_runtime_data(FOG_POWER_INDEX))
      000E07 75 82 00         [24] 1832 	mov	dpl,#0x00
      000E0A 12 2F 91         [24] 1833 	lcall	_get_runtime_data
      000E0D AF 82            [24] 1834 	mov	r7,dpl
      000E0F BF 00 02         [24] 1835 	cjne	r7,#0x00,00158$
      000E12 80 0C            [24] 1836 	sjmp	00108$
      000E14                       1837 00158$:
      000E14 BF 01 02         [24] 1838 	cjne	r7,#0x01,00159$
      000E17 80 43            [24] 1839 	sjmp	00109$
      000E19                       1840 00159$:
      000E19 BF 02 03         [24] 1841 	cjne	r7,#0x02,00160$
      000E1C 02 0E AA         [24] 1842 	ljmp	00110$
      000E1F                       1843 00160$:
      000E1F 22               [24] 1844 	ret
                                   1845 ;	../UI_Manager/ui.c:436: case OPTION_FOG_LOW:
      000E20                       1846 00108$:
                                   1847 ;	../UI_Manager/ui.c:437: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E20 75 82 00         [24] 1848 	mov	dpl,#0x00
      000E23 12 18 AD         [24] 1849 	lcall	_getString
      000E26 AD 82            [24] 1850 	mov	r5,dpl
      000E28 AE 83            [24] 1851 	mov	r6,dph
      000E2A AF F0            [24] 1852 	mov	r7,b
      000E2C E4               [12] 1853 	clr	a
      000E2D C0 E0            [24] 1854 	push	acc
      000E2F 04               [12] 1855 	inc	a
      000E30 C0 E0            [24] 1856 	push	acc
      000E32 74 03            [12] 1857 	mov	a,#0x03
      000E34 C0 E0            [24] 1858 	push	acc
      000E36 74 10            [12] 1859 	mov	a,#0x10
      000E38 C0 E0            [24] 1860 	push	acc
      000E3A 8D 82            [24] 1861 	mov	dpl,r5
      000E3C 8E 83            [24] 1862 	mov	dph,r6
      000E3E 8F F0            [24] 1863 	mov	b,r7
      000E40 12 1D 25         [24] 1864 	lcall	_write_string
      000E43 E5 81            [12] 1865 	mov	a,sp
      000E45 24 FC            [12] 1866 	add	a,#0xfc
      000E47 F5 81            [12] 1867 	mov	sp,a
                                   1868 ;	../UI_Manager/ui.c:438: write_char(CHAR_LVL_1, 12, LINE_1);
      000E49 74 01            [12] 1869 	mov	a,#0x01
      000E4B C0 E0            [24] 1870 	push	acc
      000E4D 74 0C            [12] 1871 	mov	a,#0x0c
      000E4F C0 E0            [24] 1872 	push	acc
      000E51 75 82 40         [24] 1873 	mov	dpl,#0x40
      000E54 12 20 15         [24] 1874 	lcall	_write_char
      000E57 15 81            [12] 1875 	dec	sp
      000E59 15 81            [12] 1876 	dec	sp
                                   1877 ;	../UI_Manager/ui.c:439: break;
      000E5B 22               [24] 1878 	ret
                                   1879 ;	../UI_Manager/ui.c:440: case OPTION_FOG_MEDIUM:
      000E5C                       1880 00109$:
                                   1881 ;	../UI_Manager/ui.c:441: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E5C 75 82 01         [24] 1882 	mov	dpl,#0x01
      000E5F 12 18 AD         [24] 1883 	lcall	_getString
      000E62 AD 82            [24] 1884 	mov	r5,dpl
      000E64 AE 83            [24] 1885 	mov	r6,dph
      000E66 AF F0            [24] 1886 	mov	r7,b
      000E68 E4               [12] 1887 	clr	a
      000E69 C0 E0            [24] 1888 	push	acc
      000E6B 04               [12] 1889 	inc	a
      000E6C C0 E0            [24] 1890 	push	acc
      000E6E 74 03            [12] 1891 	mov	a,#0x03
      000E70 C0 E0            [24] 1892 	push	acc
      000E72 74 10            [12] 1893 	mov	a,#0x10
      000E74 C0 E0            [24] 1894 	push	acc
      000E76 8D 82            [24] 1895 	mov	dpl,r5
      000E78 8E 83            [24] 1896 	mov	dph,r6
      000E7A 8F F0            [24] 1897 	mov	b,r7
      000E7C 12 1D 25         [24] 1898 	lcall	_write_string
      000E7F E5 81            [12] 1899 	mov	a,sp
      000E81 24 FC            [12] 1900 	add	a,#0xfc
      000E83 F5 81            [12] 1901 	mov	sp,a
                                   1902 ;	../UI_Manager/ui.c:442: write_char(CHAR_LVL_1, 12, LINE_1);
      000E85 74 01            [12] 1903 	mov	a,#0x01
      000E87 C0 E0            [24] 1904 	push	acc
      000E89 74 0C            [12] 1905 	mov	a,#0x0c
      000E8B C0 E0            [24] 1906 	push	acc
      000E8D 75 82 40         [24] 1907 	mov	dpl,#0x40
      000E90 12 20 15         [24] 1908 	lcall	_write_char
      000E93 15 81            [12] 1909 	dec	sp
      000E95 15 81            [12] 1910 	dec	sp
                                   1911 ;	../UI_Manager/ui.c:443: write_char(CHAR_LVL_2, 13, LINE_1);
      000E97 74 01            [12] 1912 	mov	a,#0x01
      000E99 C0 E0            [24] 1913 	push	acc
      000E9B 74 0D            [12] 1914 	mov	a,#0x0d
      000E9D C0 E0            [24] 1915 	push	acc
      000E9F 75 82 C0         [24] 1916 	mov	dpl,#0xc0
      000EA2 12 20 15         [24] 1917 	lcall	_write_char
      000EA5 15 81            [12] 1918 	dec	sp
      000EA7 15 81            [12] 1919 	dec	sp
                                   1920 ;	../UI_Manager/ui.c:444: break;
                                   1921 ;	../UI_Manager/ui.c:445: case OPTION_FOG_HIGH:
      000EA9 22               [24] 1922 	ret
      000EAA                       1923 00110$:
                                   1924 ;	../UI_Manager/ui.c:446: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000EAA 75 82 02         [24] 1925 	mov	dpl,#0x02
      000EAD 12 18 AD         [24] 1926 	lcall	_getString
      000EB0 AD 82            [24] 1927 	mov	r5,dpl
      000EB2 AE 83            [24] 1928 	mov	r6,dph
      000EB4 AF F0            [24] 1929 	mov	r7,b
      000EB6 E4               [12] 1930 	clr	a
      000EB7 C0 E0            [24] 1931 	push	acc
      000EB9 04               [12] 1932 	inc	a
      000EBA C0 E0            [24] 1933 	push	acc
      000EBC 74 03            [12] 1934 	mov	a,#0x03
      000EBE C0 E0            [24] 1935 	push	acc
      000EC0 74 10            [12] 1936 	mov	a,#0x10
      000EC2 C0 E0            [24] 1937 	push	acc
      000EC4 8D 82            [24] 1938 	mov	dpl,r5
      000EC6 8E 83            [24] 1939 	mov	dph,r6
      000EC8 8F F0            [24] 1940 	mov	b,r7
      000ECA 12 1D 25         [24] 1941 	lcall	_write_string
      000ECD E5 81            [12] 1942 	mov	a,sp
      000ECF 24 FC            [12] 1943 	add	a,#0xfc
      000ED1 F5 81            [12] 1944 	mov	sp,a
                                   1945 ;	../UI_Manager/ui.c:447: write_char(CHAR_LVL_1, 12, LINE_1);
      000ED3 74 01            [12] 1946 	mov	a,#0x01
      000ED5 C0 E0            [24] 1947 	push	acc
      000ED7 74 0C            [12] 1948 	mov	a,#0x0c
      000ED9 C0 E0            [24] 1949 	push	acc
      000EDB 75 82 40         [24] 1950 	mov	dpl,#0x40
      000EDE 12 20 15         [24] 1951 	lcall	_write_char
      000EE1 15 81            [12] 1952 	dec	sp
      000EE3 15 81            [12] 1953 	dec	sp
                                   1954 ;	../UI_Manager/ui.c:448: write_char(CHAR_LVL_2, 13, LINE_1);
      000EE5 74 01            [12] 1955 	mov	a,#0x01
      000EE7 C0 E0            [24] 1956 	push	acc
      000EE9 74 0D            [12] 1957 	mov	a,#0x0d
      000EEB C0 E0            [24] 1958 	push	acc
      000EED 75 82 C0         [24] 1959 	mov	dpl,#0xc0
      000EF0 12 20 15         [24] 1960 	lcall	_write_char
      000EF3 15 81            [12] 1961 	dec	sp
      000EF5 15 81            [12] 1962 	dec	sp
                                   1963 ;	../UI_Manager/ui.c:449: write_char(CHAR_LVL_3, 14, LINE_1);
      000EF7 74 01            [12] 1964 	mov	a,#0x01
      000EF9 C0 E0            [24] 1965 	push	acc
      000EFB 74 0E            [12] 1966 	mov	a,#0x0e
      000EFD C0 E0            [24] 1967 	push	acc
      000EFF 75 82 20         [24] 1968 	mov	dpl,#0x20
      000F02 12 20 15         [24] 1969 	lcall	_write_char
      000F05 15 81            [12] 1970 	dec	sp
      000F07 15 81            [12] 1971 	dec	sp
                                   1972 ;	../UI_Manager/ui.c:451: }
                                   1973 ;	../UI_Manager/ui.c:454: }
      000F09 22               [24] 1974 	ret
                                   1975 ;------------------------------------------------------------
                                   1976 ;Allocation info for local variables in function 'fogIntervalPage'
                                   1977 ;------------------------------------------------------------
                                   1978 ;action                    Allocated to registers r7 
                                   1979 ;------------------------------------------------------------
                                   1980 ;	../UI_Manager/ui.c:456: void fogIntervalPage(uint8_t action){
                                   1981 ;	-----------------------------------------
                                   1982 ;	 function fogIntervalPage
                                   1983 ;	-----------------------------------------
      000F0A                       1984 _fogIntervalPage:
      000F0A AF 82            [24] 1985 	mov	r7,dpl
                                   1986 ;	../UI_Manager/ui.c:458: switch (action)
      000F0C BF 01 02         [24] 1987 	cjne	r7,#0x01,00146$
      000F0F 80 50            [24] 1988 	sjmp	00106$
      000F11                       1989 00146$:
      000F11 BF 02 02         [24] 1990 	cjne	r7,#0x02,00147$
      000F14 80 3F            [24] 1991 	sjmp	00105$
      000F16                       1992 00147$:
      000F16 BF 03 02         [24] 1993 	cjne	r7,#0x03,00148$
      000F19 80 0F            [24] 1994 	sjmp	00102$
      000F1B                       1995 00148$:
      000F1B BF 0B 02         [24] 1996 	cjne	r7,#0x0b,00149$
      000F1E 80 1F            [24] 1997 	sjmp	00104$
      000F20                       1998 00149$:
      000F20 BF 1F 02         [24] 1999 	cjne	r7,#0x1f,00150$
      000F23 80 05            [24] 2000 	sjmp	00102$
      000F25                       2001 00150$:
                                   2002 ;	../UI_Manager/ui.c:461: case BUTTON_UP:
      000F25 BF 6F 45         [24] 2003 	cjne	r7,#0x6f,00107$
      000F28 80 15            [24] 2004 	sjmp	00104$
      000F2A                       2005 00102$:
                                   2006 ;	../UI_Manager/ui.c:462: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
      000F2A E4               [12] 2007 	clr	a
      000F2B C0 E0            [24] 2008 	push	acc
      000F2D 04               [12] 2009 	inc	a
      000F2E C0 E0            [24] 2010 	push	acc
      000F30 75 82 02         [24] 2011 	mov	dpl,#0x02
      000F33 12 30 51         [24] 2012 	lcall	_set_runtime_data
      000F36 15 81            [12] 2013 	dec	sp
      000F38 15 81            [12] 2014 	dec	sp
                                   2015 ;	../UI_Manager/ui.c:463: changed = 0xFF;
      000F3A 75 0A FF         [24] 2016 	mov	_changed,#0xff
                                   2017 ;	../UI_Manager/ui.c:464: break;
                                   2018 ;	../UI_Manager/ui.c:466: case BUTTON_DOWN:
      000F3D 80 2E            [24] 2019 	sjmp	00107$
      000F3F                       2020 00104$:
                                   2021 ;	../UI_Manager/ui.c:467: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
      000F3F E4               [12] 2022 	clr	a
      000F40 C0 E0            [24] 2023 	push	acc
      000F42 74 02            [12] 2024 	mov	a,#0x02
      000F44 C0 E0            [24] 2025 	push	acc
      000F46 75 82 02         [24] 2026 	mov	dpl,#0x02
      000F49 12 30 51         [24] 2027 	lcall	_set_runtime_data
      000F4C 15 81            [12] 2028 	dec	sp
      000F4E 15 81            [12] 2029 	dec	sp
                                   2030 ;	../UI_Manager/ui.c:468: changed = 0xFF;  
      000F50 75 0A FF         [24] 2031 	mov	_changed,#0xff
                                   2032 ;	../UI_Manager/ui.c:469: break;
                                   2033 ;	../UI_Manager/ui.c:470: case BUTTON_FUNCTION:
      000F53 80 18            [24] 2034 	sjmp	00107$
      000F55                       2035 00105$:
                                   2036 ;	../UI_Manager/ui.c:471: set_ui_state(INC, NULL);
      000F55 E4               [12] 2037 	clr	a
      000F56 C0 E0            [24] 2038 	push	acc
      000F58 75 82 01         [24] 2039 	mov	dpl,#0x01
      000F5B 12 17 A0         [24] 2040 	lcall	_set_ui_state
      000F5E 15 81            [12] 2041 	dec	sp
                                   2042 ;	../UI_Manager/ui.c:472: return;
      000F60 22               [24] 2043 	ret
                                   2044 ;	../UI_Manager/ui.c:473: case BUTTON_TIMER:
      000F61                       2045 00106$:
                                   2046 ;	../UI_Manager/ui.c:474: set_ui_state(DEC, NULL);
      000F61 E4               [12] 2047 	clr	a
      000F62 C0 E0            [24] 2048 	push	acc
      000F64 75 82 02         [24] 2049 	mov	dpl,#0x02
      000F67 12 17 A0         [24] 2050 	lcall	_set_ui_state
      000F6A 15 81            [12] 2051 	dec	sp
                                   2052 ;	../UI_Manager/ui.c:475: return;
                                   2053 ;	../UI_Manager/ui.c:476: }
      000F6C 22               [24] 2054 	ret
      000F6D                       2055 00107$:
                                   2056 ;	../UI_Manager/ui.c:478: if(Changed){
      000F6D E5 09            [12] 2057 	mov	a,_Changed
      000F6F 60 44            [24] 2058 	jz	00109$
                                   2059 ;	../UI_Manager/ui.c:479: Changed = 0x00;
      000F71 75 09 00         [24] 2060 	mov	_Changed,#0x00
                                   2061 ;	../UI_Manager/ui.c:480: changed = 0xFF;
      000F74 75 0A FF         [24] 2062 	mov	_changed,#0xff
                                   2063 ;	../UI_Manager/ui.c:482: exe_command(CLEAR_DISPLAY);
      000F77 90 80 00         [24] 2064 	mov	dptr,#0x8000
      000F7A 12 20 60         [24] 2065 	lcall	_exe_command
                                   2066 ;	../UI_Manager/ui.c:484: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
      000F7D E4               [12] 2067 	clr	a
      000F7E C0 E0            [24] 2068 	push	acc
      000F80 C0 E0            [24] 2069 	push	acc
      000F82 74 02            [12] 2070 	mov	a,#0x02
      000F84 C0 E0            [24] 2071 	push	acc
      000F86 74 0D            [12] 2072 	mov	a,#0x0d
      000F88 C0 E0            [24] 2073 	push	acc
      000F8A 90 38 4F         [24] 2074 	mov	dptr,#___str_18
      000F8D 75 F0 80         [24] 2075 	mov	b,#0x80
      000F90 12 1D 25         [24] 2076 	lcall	_write_string
      000F93 E5 81            [12] 2077 	mov	a,sp
      000F95 24 FC            [12] 2078 	add	a,#0xfc
      000F97 F5 81            [12] 2079 	mov	sp,a
                                   2080 ;	../UI_Manager/ui.c:485: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      000F99 E4               [12] 2081 	clr	a
      000F9A C0 E0            [24] 2082 	push	acc
      000F9C 04               [12] 2083 	inc	a
      000F9D C0 E0            [24] 2084 	push	acc
      000F9F 74 07            [12] 2085 	mov	a,#0x07
      000FA1 C0 E0            [24] 2086 	push	acc
      000FA3 04               [12] 2087 	inc	a
      000FA4 C0 E0            [24] 2088 	push	acc
      000FA6 90 38 5C         [24] 2089 	mov	dptr,#___str_19
      000FA9 75 F0 80         [24] 2090 	mov	b,#0x80
      000FAC 12 1D 25         [24] 2091 	lcall	_write_string
      000FAF E5 81            [12] 2092 	mov	a,sp
      000FB1 24 FC            [12] 2093 	add	a,#0xfc
      000FB3 F5 81            [12] 2094 	mov	sp,a
      000FB5                       2095 00109$:
                                   2096 ;	../UI_Manager/ui.c:489: if(changed){
      000FB5 E5 0A            [12] 2097 	mov	a,_changed
      000FB7 60 21            [24] 2098 	jz	00112$
                                   2099 ;	../UI_Manager/ui.c:490: changed = 0x00;
      000FB9 75 0A 00         [24] 2100 	mov	_changed,#0x00
                                   2101 ;	../UI_Manager/ui.c:492: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);
      000FBC 75 82 02         [24] 2102 	mov	dpl,#0x02
      000FBF 12 2F 91         [24] 2103 	lcall	_get_runtime_data
      000FC2 AF 82            [24] 2104 	mov	r7,dpl
      000FC4 E4               [12] 2105 	clr	a
      000FC5 FE               [12] 2106 	mov	r6,a
      000FC6 C0 E0            [24] 2107 	push	acc
      000FC8 04               [12] 2108 	inc	a
      000FC9 C0 E0            [24] 2109 	push	acc
      000FCB C0 E0            [24] 2110 	push	acc
      000FCD 8F 82            [24] 2111 	mov	dpl,r7
      000FCF 8E 83            [24] 2112 	mov	dph,r6
      000FD1 12 1D E2         [24] 2113 	lcall	_write_number
      000FD4 15 81            [12] 2114 	dec	sp
      000FD6 15 81            [12] 2115 	dec	sp
      000FD8 15 81            [12] 2116 	dec	sp
      000FDA                       2117 00112$:
                                   2118 ;	../UI_Manager/ui.c:497: }
      000FDA 22               [24] 2119 	ret
                                   2120 ;------------------------------------------------------------
                                   2121 ;Allocation info for local variables in function 'fogDurationPage'
                                   2122 ;------------------------------------------------------------
                                   2123 ;action                    Allocated to registers r7 
                                   2124 ;------------------------------------------------------------
                                   2125 ;	../UI_Manager/ui.c:499: void fogDurationPage(uint8_t action){
                                   2126 ;	-----------------------------------------
                                   2127 ;	 function fogDurationPage
                                   2128 ;	-----------------------------------------
      000FDB                       2129 _fogDurationPage:
      000FDB AF 82            [24] 2130 	mov	r7,dpl
                                   2131 ;	../UI_Manager/ui.c:501: switch (action)
      000FDD BF 01 02         [24] 2132 	cjne	r7,#0x01,00146$
      000FE0 80 50            [24] 2133 	sjmp	00106$
      000FE2                       2134 00146$:
      000FE2 BF 02 02         [24] 2135 	cjne	r7,#0x02,00147$
      000FE5 80 3F            [24] 2136 	sjmp	00105$
      000FE7                       2137 00147$:
      000FE7 BF 03 02         [24] 2138 	cjne	r7,#0x03,00148$
      000FEA 80 0F            [24] 2139 	sjmp	00102$
      000FEC                       2140 00148$:
      000FEC BF 0B 02         [24] 2141 	cjne	r7,#0x0b,00149$
      000FEF 80 1F            [24] 2142 	sjmp	00104$
      000FF1                       2143 00149$:
      000FF1 BF 1F 02         [24] 2144 	cjne	r7,#0x1f,00150$
      000FF4 80 05            [24] 2145 	sjmp	00102$
      000FF6                       2146 00150$:
                                   2147 ;	../UI_Manager/ui.c:504: case BUTTON_UP:
      000FF6 BF 6F 45         [24] 2148 	cjne	r7,#0x6f,00107$
      000FF9 80 15            [24] 2149 	sjmp	00104$
      000FFB                       2150 00102$:
                                   2151 ;	../UI_Manager/ui.c:505: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
      000FFB E4               [12] 2152 	clr	a
      000FFC C0 E0            [24] 2153 	push	acc
      000FFE 04               [12] 2154 	inc	a
      000FFF C0 E0            [24] 2155 	push	acc
      001001 75 82 01         [24] 2156 	mov	dpl,#0x01
      001004 12 30 51         [24] 2157 	lcall	_set_runtime_data
      001007 15 81            [12] 2158 	dec	sp
      001009 15 81            [12] 2159 	dec	sp
                                   2160 ;	../UI_Manager/ui.c:506: changed = 0xFF;
      00100B 75 0A FF         [24] 2161 	mov	_changed,#0xff
                                   2162 ;	../UI_Manager/ui.c:507: break;
                                   2163 ;	../UI_Manager/ui.c:509: case BUTTON_DOWN:
      00100E 80 2E            [24] 2164 	sjmp	00107$
      001010                       2165 00104$:
                                   2166 ;	../UI_Manager/ui.c:510: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
      001010 E4               [12] 2167 	clr	a
      001011 C0 E0            [24] 2168 	push	acc
      001013 74 02            [12] 2169 	mov	a,#0x02
      001015 C0 E0            [24] 2170 	push	acc
      001017 75 82 01         [24] 2171 	mov	dpl,#0x01
      00101A 12 30 51         [24] 2172 	lcall	_set_runtime_data
      00101D 15 81            [12] 2173 	dec	sp
      00101F 15 81            [12] 2174 	dec	sp
                                   2175 ;	../UI_Manager/ui.c:511: changed = 0xFF;  
      001021 75 0A FF         [24] 2176 	mov	_changed,#0xff
                                   2177 ;	../UI_Manager/ui.c:512: break;
                                   2178 ;	../UI_Manager/ui.c:513: case BUTTON_FUNCTION:
      001024 80 18            [24] 2179 	sjmp	00107$
      001026                       2180 00105$:
                                   2181 ;	../UI_Manager/ui.c:514: set_ui_state(INC, NULL);
      001026 E4               [12] 2182 	clr	a
      001027 C0 E0            [24] 2183 	push	acc
      001029 75 82 01         [24] 2184 	mov	dpl,#0x01
      00102C 12 17 A0         [24] 2185 	lcall	_set_ui_state
      00102F 15 81            [12] 2186 	dec	sp
                                   2187 ;	../UI_Manager/ui.c:515: return;
      001031 22               [24] 2188 	ret
                                   2189 ;	../UI_Manager/ui.c:516: case BUTTON_TIMER:
      001032                       2190 00106$:
                                   2191 ;	../UI_Manager/ui.c:517: set_ui_state(DEC, NULL);
      001032 E4               [12] 2192 	clr	a
      001033 C0 E0            [24] 2193 	push	acc
      001035 75 82 02         [24] 2194 	mov	dpl,#0x02
      001038 12 17 A0         [24] 2195 	lcall	_set_ui_state
      00103B 15 81            [12] 2196 	dec	sp
                                   2197 ;	../UI_Manager/ui.c:518: return;
                                   2198 ;	../UI_Manager/ui.c:519: }
      00103D 22               [24] 2199 	ret
      00103E                       2200 00107$:
                                   2201 ;	../UI_Manager/ui.c:521: if(Changed){
      00103E E5 09            [12] 2202 	mov	a,_Changed
      001040 60 44            [24] 2203 	jz	00109$
                                   2204 ;	../UI_Manager/ui.c:522: Changed = 0x00;
      001042 75 09 00         [24] 2205 	mov	_Changed,#0x00
                                   2206 ;	../UI_Manager/ui.c:523: changed = 0xFF;
      001045 75 0A FF         [24] 2207 	mov	_changed,#0xff
                                   2208 ;	../UI_Manager/ui.c:525: exe_command(CLEAR_DISPLAY);
      001048 90 80 00         [24] 2209 	mov	dptr,#0x8000
      00104B 12 20 60         [24] 2210 	lcall	_exe_command
                                   2211 ;	../UI_Manager/ui.c:527: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
      00104E E4               [12] 2212 	clr	a
      00104F C0 E0            [24] 2213 	push	acc
      001051 C0 E0            [24] 2214 	push	acc
      001053 74 02            [12] 2215 	mov	a,#0x02
      001055 C0 E0            [24] 2216 	push	acc
      001057 74 0D            [12] 2217 	mov	a,#0x0d
      001059 C0 E0            [24] 2218 	push	acc
      00105B 90 38 64         [24] 2219 	mov	dptr,#___str_20
      00105E 75 F0 80         [24] 2220 	mov	b,#0x80
      001061 12 1D 25         [24] 2221 	lcall	_write_string
      001064 E5 81            [12] 2222 	mov	a,sp
      001066 24 FC            [12] 2223 	add	a,#0xfc
      001068 F5 81            [12] 2224 	mov	sp,a
                                   2225 ;	../UI_Manager/ui.c:528: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      00106A E4               [12] 2226 	clr	a
      00106B C0 E0            [24] 2227 	push	acc
      00106D 04               [12] 2228 	inc	a
      00106E C0 E0            [24] 2229 	push	acc
      001070 74 07            [12] 2230 	mov	a,#0x07
      001072 C0 E0            [24] 2231 	push	acc
      001074 04               [12] 2232 	inc	a
      001075 C0 E0            [24] 2233 	push	acc
      001077 90 38 5C         [24] 2234 	mov	dptr,#___str_19
      00107A 75 F0 80         [24] 2235 	mov	b,#0x80
      00107D 12 1D 25         [24] 2236 	lcall	_write_string
      001080 E5 81            [12] 2237 	mov	a,sp
      001082 24 FC            [12] 2238 	add	a,#0xfc
      001084 F5 81            [12] 2239 	mov	sp,a
      001086                       2240 00109$:
                                   2241 ;	../UI_Manager/ui.c:532: if(changed){
      001086 E5 0A            [12] 2242 	mov	a,_changed
      001088 60 21            [24] 2243 	jz	00112$
                                   2244 ;	../UI_Manager/ui.c:533: changed = 0x00;
      00108A 75 0A 00         [24] 2245 	mov	_changed,#0x00
                                   2246 ;	../UI_Manager/ui.c:535: write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);
      00108D 75 82 01         [24] 2247 	mov	dpl,#0x01
      001090 12 2F 91         [24] 2248 	lcall	_get_runtime_data
      001093 AF 82            [24] 2249 	mov	r7,dpl
      001095 E4               [12] 2250 	clr	a
      001096 FE               [12] 2251 	mov	r6,a
      001097 C0 E0            [24] 2252 	push	acc
      001099 04               [12] 2253 	inc	a
      00109A C0 E0            [24] 2254 	push	acc
      00109C C0 E0            [24] 2255 	push	acc
      00109E 8F 82            [24] 2256 	mov	dpl,r7
      0010A0 8E 83            [24] 2257 	mov	dph,r6
      0010A2 12 1D E2         [24] 2258 	lcall	_write_number
      0010A5 15 81            [12] 2259 	dec	sp
      0010A7 15 81            [12] 2260 	dec	sp
      0010A9 15 81            [12] 2261 	dec	sp
      0010AB                       2262 00112$:
                                   2263 ;	../UI_Manager/ui.c:538: }
      0010AB 22               [24] 2264 	ret
                                   2265 ;------------------------------------------------------------
                                   2266 ;Allocation info for local variables in function 'macroPage'
                                   2267 ;------------------------------------------------------------
                                   2268 ;action                    Allocated to registers r7 
                                   2269 ;------------------------------------------------------------
                                   2270 ;	../UI_Manager/ui.c:540: void macroPage(uint8_t action){
                                   2271 ;	-----------------------------------------
                                   2272 ;	 function macroPage
                                   2273 ;	-----------------------------------------
      0010AC                       2274 _macroPage:
      0010AC AF 82            [24] 2275 	mov	r7,dpl
                                   2276 ;	../UI_Manager/ui.c:542: switch (action)
      0010AE BF 01 02         [24] 2277 	cjne	r7,#0x01,00146$
      0010B1 80 50            [24] 2278 	sjmp	00106$
      0010B3                       2279 00146$:
      0010B3 BF 02 02         [24] 2280 	cjne	r7,#0x02,00147$
      0010B6 80 3F            [24] 2281 	sjmp	00105$
      0010B8                       2282 00147$:
      0010B8 BF 03 02         [24] 2283 	cjne	r7,#0x03,00148$
      0010BB 80 0F            [24] 2284 	sjmp	00102$
      0010BD                       2285 00148$:
      0010BD BF 0B 02         [24] 2286 	cjne	r7,#0x0b,00149$
      0010C0 80 1F            [24] 2287 	sjmp	00104$
      0010C2                       2288 00149$:
      0010C2 BF 1F 02         [24] 2289 	cjne	r7,#0x1f,00150$
      0010C5 80 05            [24] 2290 	sjmp	00102$
      0010C7                       2291 00150$:
                                   2292 ;	../UI_Manager/ui.c:545: case BUTTON_UP:
      0010C7 BF 6F 45         [24] 2293 	cjne	r7,#0x6f,00107$
      0010CA 80 15            [24] 2294 	sjmp	00104$
      0010CC                       2295 00102$:
                                   2296 ;	../UI_Manager/ui.c:546: set_runtime_data(MACRO_INDEX, INC, NULL);
      0010CC E4               [12] 2297 	clr	a
      0010CD C0 E0            [24] 2298 	push	acc
      0010CF 04               [12] 2299 	inc	a
      0010D0 C0 E0            [24] 2300 	push	acc
      0010D2 75 82 03         [24] 2301 	mov	dpl,#0x03
      0010D5 12 30 51         [24] 2302 	lcall	_set_runtime_data
      0010D8 15 81            [12] 2303 	dec	sp
      0010DA 15 81            [12] 2304 	dec	sp
                                   2305 ;	../UI_Manager/ui.c:547: changed = 0xFF;
      0010DC 75 0A FF         [24] 2306 	mov	_changed,#0xff
                                   2307 ;	../UI_Manager/ui.c:548: break;
                                   2308 ;	../UI_Manager/ui.c:550: case BUTTON_DOWN:
      0010DF 80 2E            [24] 2309 	sjmp	00107$
      0010E1                       2310 00104$:
                                   2311 ;	../UI_Manager/ui.c:551: set_runtime_data(MACRO_INDEX, DEC, NULL);
      0010E1 E4               [12] 2312 	clr	a
      0010E2 C0 E0            [24] 2313 	push	acc
      0010E4 74 02            [12] 2314 	mov	a,#0x02
      0010E6 C0 E0            [24] 2315 	push	acc
      0010E8 75 82 03         [24] 2316 	mov	dpl,#0x03
      0010EB 12 30 51         [24] 2317 	lcall	_set_runtime_data
      0010EE 15 81            [12] 2318 	dec	sp
      0010F0 15 81            [12] 2319 	dec	sp
                                   2320 ;	../UI_Manager/ui.c:552: changed = 0xFF;  
      0010F2 75 0A FF         [24] 2321 	mov	_changed,#0xff
                                   2322 ;	../UI_Manager/ui.c:553: break;
                                   2323 ;	../UI_Manager/ui.c:554: case BUTTON_FUNCTION:
      0010F5 80 18            [24] 2324 	sjmp	00107$
      0010F7                       2325 00105$:
                                   2326 ;	../UI_Manager/ui.c:555: set_ui_state(INC, NULL);
      0010F7 E4               [12] 2327 	clr	a
      0010F8 C0 E0            [24] 2328 	push	acc
      0010FA 75 82 01         [24] 2329 	mov	dpl,#0x01
      0010FD 12 17 A0         [24] 2330 	lcall	_set_ui_state
      001100 15 81            [12] 2331 	dec	sp
                                   2332 ;	../UI_Manager/ui.c:556: return;
      001102 22               [24] 2333 	ret
                                   2334 ;	../UI_Manager/ui.c:557: case BUTTON_TIMER:
      001103                       2335 00106$:
                                   2336 ;	../UI_Manager/ui.c:558: set_ui_state(DEC, NULL);
      001103 E4               [12] 2337 	clr	a
      001104 C0 E0            [24] 2338 	push	acc
      001106 75 82 02         [24] 2339 	mov	dpl,#0x02
      001109 12 17 A0         [24] 2340 	lcall	_set_ui_state
      00110C 15 81            [12] 2341 	dec	sp
                                   2342 ;	../UI_Manager/ui.c:559: return;
                                   2343 ;	../UI_Manager/ui.c:560: }
      00110E 22               [24] 2344 	ret
      00110F                       2345 00107$:
                                   2346 ;	../UI_Manager/ui.c:562: if(Changed){
      00110F E5 09            [12] 2347 	mov	a,_Changed
      001111 60 28            [24] 2348 	jz	00109$
                                   2349 ;	../UI_Manager/ui.c:563: Changed = 0x00;
      001113 75 09 00         [24] 2350 	mov	_Changed,#0x00
                                   2351 ;	../UI_Manager/ui.c:564: changed = 0xFF;
      001116 75 0A FF         [24] 2352 	mov	_changed,#0xff
                                   2353 ;	../UI_Manager/ui.c:566: exe_command(CLEAR_DISPLAY);
      001119 90 80 00         [24] 2354 	mov	dptr,#0x8000
      00111C 12 20 60         [24] 2355 	lcall	_exe_command
                                   2356 ;	../UI_Manager/ui.c:568: write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);
      00111F E4               [12] 2357 	clr	a
      001120 C0 E0            [24] 2358 	push	acc
      001122 C0 E0            [24] 2359 	push	acc
      001124 74 04            [12] 2360 	mov	a,#0x04
      001126 C0 E0            [24] 2361 	push	acc
      001128 74 07            [12] 2362 	mov	a,#0x07
      00112A C0 E0            [24] 2363 	push	acc
      00112C 90 38 71         [24] 2364 	mov	dptr,#___str_21
      00112F 75 F0 80         [24] 2365 	mov	b,#0x80
      001132 12 1D 25         [24] 2366 	lcall	_write_string
      001135 E5 81            [12] 2367 	mov	a,sp
      001137 24 FC            [12] 2368 	add	a,#0xfc
      001139 F5 81            [12] 2369 	mov	sp,a
      00113B                       2370 00109$:
                                   2371 ;	../UI_Manager/ui.c:572: if(changed){
      00113B E5 0A            [12] 2372 	mov	a,_changed
      00113D 60 36            [24] 2373 	jz	00112$
                                   2374 ;	../UI_Manager/ui.c:573: changed = 0x00;
      00113F 75 0A 00         [24] 2375 	mov	_changed,#0x00
                                   2376 ;	../UI_Manager/ui.c:575: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001142 75 82 03         [24] 2377 	mov	dpl,#0x03
      001145 12 2F 91         [24] 2378 	lcall	_get_runtime_data
      001148 AF 82            [24] 2379 	mov	r7,dpl
      00114A 74 14            [12] 2380 	mov	a,#0x14
      00114C 2F               [12] 2381 	add	a,r7
      00114D F5 82            [12] 2382 	mov	dpl,a
      00114F 12 18 AD         [24] 2383 	lcall	_getString
      001152 AD 82            [24] 2384 	mov	r5,dpl
      001154 AE 83            [24] 2385 	mov	r6,dph
      001156 AF F0            [24] 2386 	mov	r7,b
      001158 E4               [12] 2387 	clr	a
      001159 C0 E0            [24] 2388 	push	acc
      00115B 04               [12] 2389 	inc	a
      00115C C0 E0            [24] 2390 	push	acc
      00115E 74 06            [12] 2391 	mov	a,#0x06
      001160 C0 E0            [24] 2392 	push	acc
      001162 74 10            [12] 2393 	mov	a,#0x10
      001164 C0 E0            [24] 2394 	push	acc
      001166 8D 82            [24] 2395 	mov	dpl,r5
      001168 8E 83            [24] 2396 	mov	dph,r6
      00116A 8F F0            [24] 2397 	mov	b,r7
      00116C 12 1D 25         [24] 2398 	lcall	_write_string
      00116F E5 81            [12] 2399 	mov	a,sp
      001171 24 FC            [12] 2400 	add	a,#0xfc
      001173 F5 81            [12] 2401 	mov	sp,a
      001175                       2402 00112$:
                                   2403 ;	../UI_Manager/ui.c:578: }
      001175 22               [24] 2404 	ret
                                   2405 ;------------------------------------------------------------
                                   2406 ;Allocation info for local variables in function 'macroSpeedPage'
                                   2407 ;------------------------------------------------------------
                                   2408 ;action                    Allocated to registers r7 
                                   2409 ;------------------------------------------------------------
                                   2410 ;	../UI_Manager/ui.c:580: void macroSpeedPage(uint8_t action){
                                   2411 ;	-----------------------------------------
                                   2412 ;	 function macroSpeedPage
                                   2413 ;	-----------------------------------------
      001176                       2414 _macroSpeedPage:
      001176 AF 82            [24] 2415 	mov	r7,dpl
                                   2416 ;	../UI_Manager/ui.c:582: switch (action)
      001178 BF 01 02         [24] 2417 	cjne	r7,#0x01,00153$
      00117B 80 50            [24] 2418 	sjmp	00106$
      00117D                       2419 00153$:
      00117D BF 02 02         [24] 2420 	cjne	r7,#0x02,00154$
      001180 80 3F            [24] 2421 	sjmp	00105$
      001182                       2422 00154$:
      001182 BF 03 02         [24] 2423 	cjne	r7,#0x03,00155$
      001185 80 0F            [24] 2424 	sjmp	00102$
      001187                       2425 00155$:
      001187 BF 0B 02         [24] 2426 	cjne	r7,#0x0b,00156$
      00118A 80 1F            [24] 2427 	sjmp	00104$
      00118C                       2428 00156$:
      00118C BF 1F 02         [24] 2429 	cjne	r7,#0x1f,00157$
      00118F 80 05            [24] 2430 	sjmp	00102$
      001191                       2431 00157$:
                                   2432 ;	../UI_Manager/ui.c:585: case BUTTON_UP:
      001191 BF 6F 45         [24] 2433 	cjne	r7,#0x6f,00107$
      001194 80 15            [24] 2434 	sjmp	00104$
      001196                       2435 00102$:
                                   2436 ;	../UI_Manager/ui.c:586: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
      001196 E4               [12] 2437 	clr	a
      001197 C0 E0            [24] 2438 	push	acc
      001199 04               [12] 2439 	inc	a
      00119A C0 E0            [24] 2440 	push	acc
      00119C 75 82 04         [24] 2441 	mov	dpl,#0x04
      00119F 12 30 51         [24] 2442 	lcall	_set_runtime_data
      0011A2 15 81            [12] 2443 	dec	sp
      0011A4 15 81            [12] 2444 	dec	sp
                                   2445 ;	../UI_Manager/ui.c:587: changed = 0xFF;
      0011A6 75 0A FF         [24] 2446 	mov	_changed,#0xff
                                   2447 ;	../UI_Manager/ui.c:588: break;
                                   2448 ;	../UI_Manager/ui.c:590: case BUTTON_DOWN:
      0011A9 80 2E            [24] 2449 	sjmp	00107$
      0011AB                       2450 00104$:
                                   2451 ;	../UI_Manager/ui.c:591: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
      0011AB E4               [12] 2452 	clr	a
      0011AC C0 E0            [24] 2453 	push	acc
      0011AE 74 02            [12] 2454 	mov	a,#0x02
      0011B0 C0 E0            [24] 2455 	push	acc
      0011B2 75 82 04         [24] 2456 	mov	dpl,#0x04
      0011B5 12 30 51         [24] 2457 	lcall	_set_runtime_data
      0011B8 15 81            [12] 2458 	dec	sp
      0011BA 15 81            [12] 2459 	dec	sp
                                   2460 ;	../UI_Manager/ui.c:592: changed = 0xFF;  
      0011BC 75 0A FF         [24] 2461 	mov	_changed,#0xff
                                   2462 ;	../UI_Manager/ui.c:593: break;
                                   2463 ;	../UI_Manager/ui.c:594: case BUTTON_FUNCTION:
      0011BF 80 18            [24] 2464 	sjmp	00107$
      0011C1                       2465 00105$:
                                   2466 ;	../UI_Manager/ui.c:595: set_ui_state(INC, NULL);
      0011C1 E4               [12] 2467 	clr	a
      0011C2 C0 E0            [24] 2468 	push	acc
      0011C4 75 82 01         [24] 2469 	mov	dpl,#0x01
      0011C7 12 17 A0         [24] 2470 	lcall	_set_ui_state
      0011CA 15 81            [12] 2471 	dec	sp
                                   2472 ;	../UI_Manager/ui.c:596: return;
      0011CC 22               [24] 2473 	ret
                                   2474 ;	../UI_Manager/ui.c:597: case BUTTON_TIMER:
      0011CD                       2475 00106$:
                                   2476 ;	../UI_Manager/ui.c:598: set_ui_state(DEC, NULL);
      0011CD E4               [12] 2477 	clr	a
      0011CE C0 E0            [24] 2478 	push	acc
      0011D0 75 82 02         [24] 2479 	mov	dpl,#0x02
      0011D3 12 17 A0         [24] 2480 	lcall	_set_ui_state
      0011D6 15 81            [12] 2481 	dec	sp
                                   2482 ;	../UI_Manager/ui.c:599: return;
      0011D8 22               [24] 2483 	ret
                                   2484 ;	../UI_Manager/ui.c:600: }
      0011D9                       2485 00107$:
                                   2486 ;	../UI_Manager/ui.c:602: if(Changed){
      0011D9 E5 09            [12] 2487 	mov	a,_Changed
      0011DB 60 28            [24] 2488 	jz	00109$
                                   2489 ;	../UI_Manager/ui.c:603: Changed = 0x00;
      0011DD 75 09 00         [24] 2490 	mov	_Changed,#0x00
                                   2491 ;	../UI_Manager/ui.c:604: changed = 0xFF;
      0011E0 75 0A FF         [24] 2492 	mov	_changed,#0xff
                                   2493 ;	../UI_Manager/ui.c:606: exe_command(CLEAR_DISPLAY);
      0011E3 90 80 00         [24] 2494 	mov	dptr,#0x8000
      0011E6 12 20 60         [24] 2495 	lcall	_exe_command
                                   2496 ;	../UI_Manager/ui.c:608: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
      0011E9 E4               [12] 2497 	clr	a
      0011EA C0 E0            [24] 2498 	push	acc
      0011EC C0 E0            [24] 2499 	push	acc
      0011EE 74 03            [12] 2500 	mov	a,#0x03
      0011F0 C0 E0            [24] 2501 	push	acc
      0011F2 74 0C            [12] 2502 	mov	a,#0x0c
      0011F4 C0 E0            [24] 2503 	push	acc
      0011F6 90 38 78         [24] 2504 	mov	dptr,#___str_22
      0011F9 75 F0 80         [24] 2505 	mov	b,#0x80
      0011FC 12 1D 25         [24] 2506 	lcall	_write_string
      0011FF E5 81            [12] 2507 	mov	a,sp
      001201 24 FC            [12] 2508 	add	a,#0xfc
      001203 F5 81            [12] 2509 	mov	sp,a
      001205                       2510 00109$:
                                   2511 ;	../UI_Manager/ui.c:612: if(changed){
      001205 E5 0A            [12] 2512 	mov	a,_changed
      001207 60 67            [24] 2513 	jz	00115$
                                   2514 ;	../UI_Manager/ui.c:613: changed = 0x00;
      001209 75 0A 00         [24] 2515 	mov	_changed,#0x00
                                   2516 ;	../UI_Manager/ui.c:615: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
      00120C 75 82 04         [24] 2517 	mov	dpl,#0x04
      00120F 12 2F 91         [24] 2518 	lcall	_get_runtime_data
      001212 E5 82            [12] 2519 	mov	a,dpl
                                   2520 ;	../UI_Manager/ui.c:616: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001214 70 1D            [24] 2521 	jnz	00111$
      001216 C0 E0            [24] 2522 	push	acc
      001218 04               [12] 2523 	inc	a
      001219 C0 E0            [24] 2524 	push	acc
      00121B 74 06            [12] 2525 	mov	a,#0x06
      00121D C0 E0            [24] 2526 	push	acc
      00121F 74 10            [12] 2527 	mov	a,#0x10
      001221 C0 E0            [24] 2528 	push	acc
      001223 90 38 84         [24] 2529 	mov	dptr,#___str_23
      001226 75 F0 80         [24] 2530 	mov	b,#0x80
      001229 12 1D 25         [24] 2531 	lcall	_write_string
      00122C E5 81            [12] 2532 	mov	a,sp
      00122E 24 FC            [12] 2533 	add	a,#0xfc
      001230 F5 81            [12] 2534 	mov	sp,a
      001232 22               [24] 2535 	ret
      001233                       2536 00111$:
                                   2537 ;	../UI_Manager/ui.c:618: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      001233 E4               [12] 2538 	clr	a
      001234 C0 E0            [24] 2539 	push	acc
      001236 04               [12] 2540 	inc	a
      001237 C0 E0            [24] 2541 	push	acc
      001239 74 03            [12] 2542 	mov	a,#0x03
      00123B C0 E0            [24] 2543 	push	acc
      00123D 74 10            [12] 2544 	mov	a,#0x10
      00123F C0 E0            [24] 2545 	push	acc
      001241 90 38 88         [24] 2546 	mov	dptr,#___str_24
      001244 75 F0 80         [24] 2547 	mov	b,#0x80
      001247 12 1D 25         [24] 2548 	lcall	_write_string
      00124A E5 81            [12] 2549 	mov	a,sp
      00124C 24 FC            [12] 2550 	add	a,#0xfc
      00124E F5 81            [12] 2551 	mov	sp,a
                                   2552 ;	../UI_Manager/ui.c:619: write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
      001250 75 82 04         [24] 2553 	mov	dpl,#0x04
      001253 12 2F 91         [24] 2554 	lcall	_get_runtime_data
      001256 AF 82            [24] 2555 	mov	r7,dpl
      001258 E4               [12] 2556 	clr	a
      001259 FE               [12] 2557 	mov	r6,a
      00125A C0 E0            [24] 2558 	push	acc
      00125C 04               [12] 2559 	inc	a
      00125D C0 E0            [24] 2560 	push	acc
      00125F 74 05            [12] 2561 	mov	a,#0x05
      001261 C0 E0            [24] 2562 	push	acc
      001263 8F 82            [24] 2563 	mov	dpl,r7
      001265 8E 83            [24] 2564 	mov	dph,r6
      001267 12 1D E2         [24] 2565 	lcall	_write_number
      00126A 15 81            [12] 2566 	dec	sp
      00126C 15 81            [12] 2567 	dec	sp
      00126E 15 81            [12] 2568 	dec	sp
      001270                       2569 00115$:
                                   2570 ;	../UI_Manager/ui.c:623: }
      001270 22               [24] 2571 	ret
                                   2572 ;------------------------------------------------------------
                                   2573 ;Allocation info for local variables in function 'colorPage'
                                   2574 ;------------------------------------------------------------
                                   2575 ;action                    Allocated to registers r7 
                                   2576 ;index                     Allocated to registers r6 
                                   2577 ;------------------------------------------------------------
                                   2578 ;	../UI_Manager/ui.c:625: void colorPage(uint8_t action){
                                   2579 ;	-----------------------------------------
                                   2580 ;	 function colorPage
                                   2581 ;	-----------------------------------------
      001271                       2582 _colorPage:
      001271 AF 82            [24] 2583 	mov	r7,dpl
                                   2584 ;	../UI_Manager/ui.c:626: uint8_t index = 0;
      001273 7E 00            [12] 2585 	mov	r6,#0x00
                                   2586 ;	../UI_Manager/ui.c:628: switch (State)
      001275 AD 08            [24] 2587 	mov	r5,_State
      001277 BD 06 02         [24] 2588 	cjne	r5,#0x06,00174$
      00127A 80 0F            [24] 2589 	sjmp	00101$
      00127C                       2590 00174$:
      00127C BD 07 02         [24] 2591 	cjne	r5,#0x07,00175$
      00127F 80 0E            [24] 2592 	sjmp	00102$
      001281                       2593 00175$:
      001281 BD 08 02         [24] 2594 	cjne	r5,#0x08,00176$
      001284 80 0D            [24] 2595 	sjmp	00103$
      001286                       2596 00176$:
                                   2597 ;	../UI_Manager/ui.c:630: case MANUAL_RED_STATE:
      001286 BD 09 10         [24] 2598 	cjne	r5,#0x09,00105$
      001289 80 0C            [24] 2599 	sjmp	00104$
      00128B                       2600 00101$:
                                   2601 ;	../UI_Manager/ui.c:631: index = RED_INDEX;
      00128B 7E 05            [12] 2602 	mov	r6,#0x05
                                   2603 ;	../UI_Manager/ui.c:632: break;
                                   2604 ;	../UI_Manager/ui.c:633: case MANUAL_GREEN_STATE:
      00128D 80 0A            [24] 2605 	sjmp	00105$
      00128F                       2606 00102$:
                                   2607 ;	../UI_Manager/ui.c:634: index = GREEN_INDEX;
      00128F 7E 06            [12] 2608 	mov	r6,#0x06
                                   2609 ;	../UI_Manager/ui.c:635: break;
                                   2610 ;	../UI_Manager/ui.c:636: case MANUAL_BLUE_STATE:
      001291 80 06            [24] 2611 	sjmp	00105$
      001293                       2612 00103$:
                                   2613 ;	../UI_Manager/ui.c:637: index = BLUE_INDEX;
      001293 7E 07            [12] 2614 	mov	r6,#0x07
                                   2615 ;	../UI_Manager/ui.c:638: break;
                                   2616 ;	../UI_Manager/ui.c:639: case MANUAL_STROBE_STATE:
      001295 80 02            [24] 2617 	sjmp	00105$
      001297                       2618 00104$:
                                   2619 ;	../UI_Manager/ui.c:640: index = STROBE_INDEX;
      001297 7E 08            [12] 2620 	mov	r6,#0x08
                                   2621 ;	../UI_Manager/ui.c:642: }
      001299                       2622 00105$:
                                   2623 ;	../UI_Manager/ui.c:644: switch (action)
      001299 BF 01 02         [24] 2624 	cjne	r7,#0x01,00178$
      00129C 80 56            [24] 2625 	sjmp	00111$
      00129E                       2626 00178$:
      00129E BF 02 02         [24] 2627 	cjne	r7,#0x02,00179$
      0012A1 80 45            [24] 2628 	sjmp	00110$
      0012A3                       2629 00179$:
      0012A3 BF 03 02         [24] 2630 	cjne	r7,#0x03,00180$
      0012A6 80 0F            [24] 2631 	sjmp	00107$
      0012A8                       2632 00180$:
      0012A8 BF 0B 02         [24] 2633 	cjne	r7,#0x0b,00181$
      0012AB 80 22            [24] 2634 	sjmp	00109$
      0012AD                       2635 00181$:
      0012AD BF 1F 02         [24] 2636 	cjne	r7,#0x1f,00182$
      0012B0 80 05            [24] 2637 	sjmp	00107$
      0012B2                       2638 00182$:
                                   2639 ;	../UI_Manager/ui.c:647: case BUTTON_UP:
      0012B2 BF 6F 4B         [24] 2640 	cjne	r7,#0x6f,00112$
      0012B5 80 18            [24] 2641 	sjmp	00109$
      0012B7                       2642 00107$:
                                   2643 ;	../UI_Manager/ui.c:648: set_runtime_data(index, INC, NULL);
      0012B7 C0 06            [24] 2644 	push	ar6
      0012B9 E4               [12] 2645 	clr	a
      0012BA C0 E0            [24] 2646 	push	acc
      0012BC 04               [12] 2647 	inc	a
      0012BD C0 E0            [24] 2648 	push	acc
      0012BF 8E 82            [24] 2649 	mov	dpl,r6
      0012C1 12 30 51         [24] 2650 	lcall	_set_runtime_data
      0012C4 15 81            [12] 2651 	dec	sp
      0012C6 15 81            [12] 2652 	dec	sp
      0012C8 D0 06            [24] 2653 	pop	ar6
                                   2654 ;	../UI_Manager/ui.c:649: changed = 0xFF;
      0012CA 75 0A FF         [24] 2655 	mov	_changed,#0xff
                                   2656 ;	../UI_Manager/ui.c:650: break;
                                   2657 ;	../UI_Manager/ui.c:652: case BUTTON_DOWN:
      0012CD 80 31            [24] 2658 	sjmp	00112$
      0012CF                       2659 00109$:
                                   2660 ;	../UI_Manager/ui.c:653: set_runtime_data(index, DEC, NULL);
      0012CF C0 06            [24] 2661 	push	ar6
      0012D1 E4               [12] 2662 	clr	a
      0012D2 C0 E0            [24] 2663 	push	acc
      0012D4 74 02            [12] 2664 	mov	a,#0x02
      0012D6 C0 E0            [24] 2665 	push	acc
      0012D8 8E 82            [24] 2666 	mov	dpl,r6
      0012DA 12 30 51         [24] 2667 	lcall	_set_runtime_data
      0012DD 15 81            [12] 2668 	dec	sp
      0012DF 15 81            [12] 2669 	dec	sp
      0012E1 D0 06            [24] 2670 	pop	ar6
                                   2671 ;	../UI_Manager/ui.c:654: changed = 0xFF;  
      0012E3 75 0A FF         [24] 2672 	mov	_changed,#0xff
                                   2673 ;	../UI_Manager/ui.c:655: break;
                                   2674 ;	../UI_Manager/ui.c:656: case BUTTON_FUNCTION:
      0012E6 80 18            [24] 2675 	sjmp	00112$
      0012E8                       2676 00110$:
                                   2677 ;	../UI_Manager/ui.c:657: set_ui_state(INC, NULL);
      0012E8 E4               [12] 2678 	clr	a
      0012E9 C0 E0            [24] 2679 	push	acc
      0012EB 75 82 01         [24] 2680 	mov	dpl,#0x01
      0012EE 12 17 A0         [24] 2681 	lcall	_set_ui_state
      0012F1 15 81            [12] 2682 	dec	sp
                                   2683 ;	../UI_Manager/ui.c:658: return;
      0012F3 22               [24] 2684 	ret
                                   2685 ;	../UI_Manager/ui.c:659: case BUTTON_TIMER:
      0012F4                       2686 00111$:
                                   2687 ;	../UI_Manager/ui.c:660: set_ui_state(DEC, NULL);
      0012F4 E4               [12] 2688 	clr	a
      0012F5 C0 E0            [24] 2689 	push	acc
      0012F7 75 82 02         [24] 2690 	mov	dpl,#0x02
      0012FA 12 17 A0         [24] 2691 	lcall	_set_ui_state
      0012FD 15 81            [12] 2692 	dec	sp
                                   2693 ;	../UI_Manager/ui.c:661: return;
      0012FF 22               [24] 2694 	ret
                                   2695 ;	../UI_Manager/ui.c:662: }
      001300                       2696 00112$:
                                   2697 ;	../UI_Manager/ui.c:664: if(Changed){
      001300 E5 09            [12] 2698 	mov	a,_Changed
      001302 60 3C            [24] 2699 	jz	00114$
                                   2700 ;	../UI_Manager/ui.c:665: Changed = 0x00;
      001304 75 09 00         [24] 2701 	mov	_Changed,#0x00
                                   2702 ;	../UI_Manager/ui.c:666: changed = 0xFF;
      001307 75 0A FF         [24] 2703 	mov	_changed,#0xff
                                   2704 ;	../UI_Manager/ui.c:668: exe_command(CLEAR_DISPLAY);
      00130A 90 80 00         [24] 2705 	mov	dptr,#0x8000
      00130D C0 06            [24] 2706 	push	ar6
      00130F 12 20 60         [24] 2707 	lcall	_exe_command
                                   2708 ;	../UI_Manager/ui.c:670: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
      001312 AF 08            [24] 2709 	mov	r7,_State
      001314 74 C8            [12] 2710 	mov	a,#0xc8
      001316 2F               [12] 2711 	add	a,r7
      001317 F5 82            [12] 2712 	mov	dpl,a
      001319 12 18 AD         [24] 2713 	lcall	_getString
      00131C AC 82            [24] 2714 	mov	r4,dpl
      00131E AD 83            [24] 2715 	mov	r5,dph
      001320 AF F0            [24] 2716 	mov	r7,b
      001322 E4               [12] 2717 	clr	a
      001323 C0 E0            [24] 2718 	push	acc
      001325 C0 E0            [24] 2719 	push	acc
      001327 74 03            [12] 2720 	mov	a,#0x03
      001329 C0 E0            [24] 2721 	push	acc
      00132B 74 10            [12] 2722 	mov	a,#0x10
      00132D C0 E0            [24] 2723 	push	acc
      00132F 8C 82            [24] 2724 	mov	dpl,r4
      001331 8D 83            [24] 2725 	mov	dph,r5
      001333 8F F0            [24] 2726 	mov	b,r7
      001335 12 1D 25         [24] 2727 	lcall	_write_string
      001338 E5 81            [12] 2728 	mov	a,sp
      00133A 24 FC            [12] 2729 	add	a,#0xfc
      00133C F5 81            [12] 2730 	mov	sp,a
      00133E D0 06            [24] 2731 	pop	ar6
      001340                       2732 00114$:
                                   2733 ;	../UI_Manager/ui.c:674: if(changed){
      001340 E5 0A            [12] 2734 	mov	a,_changed
      001342 60 6C            [24] 2735 	jz	00120$
                                   2736 ;	../UI_Manager/ui.c:675: changed = 0x00;
      001344 75 0A 00         [24] 2737 	mov	_changed,#0x00
                                   2738 ;	../UI_Manager/ui.c:677: if(get_runtime_data(index) == 0){
      001347 8E 82            [24] 2739 	mov	dpl,r6
      001349 C0 06            [24] 2740 	push	ar6
      00134B 12 2F 91         [24] 2741 	lcall	_get_runtime_data
      00134E E5 82            [12] 2742 	mov	a,dpl
      001350 D0 06            [24] 2743 	pop	ar6
                                   2744 ;	../UI_Manager/ui.c:678: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001352 70 1D            [24] 2745 	jnz	00116$
      001354 C0 E0            [24] 2746 	push	acc
      001356 04               [12] 2747 	inc	a
      001357 C0 E0            [24] 2748 	push	acc
      001359 74 06            [12] 2749 	mov	a,#0x06
      00135B C0 E0            [24] 2750 	push	acc
      00135D 74 10            [12] 2751 	mov	a,#0x10
      00135F C0 E0            [24] 2752 	push	acc
      001361 90 38 84         [24] 2753 	mov	dptr,#___str_23
      001364 75 F0 80         [24] 2754 	mov	b,#0x80
      001367 12 1D 25         [24] 2755 	lcall	_write_string
      00136A E5 81            [12] 2756 	mov	a,sp
      00136C 24 FC            [12] 2757 	add	a,#0xfc
      00136E F5 81            [12] 2758 	mov	sp,a
      001370 22               [24] 2759 	ret
      001371                       2760 00116$:
                                   2761 ;	../UI_Manager/ui.c:680: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      001371 C0 06            [24] 2762 	push	ar6
      001373 E4               [12] 2763 	clr	a
      001374 C0 E0            [24] 2764 	push	acc
      001376 04               [12] 2765 	inc	a
      001377 C0 E0            [24] 2766 	push	acc
      001379 E4               [12] 2767 	clr	a
      00137A C0 E0            [24] 2768 	push	acc
      00137C 74 10            [12] 2769 	mov	a,#0x10
      00137E C0 E0            [24] 2770 	push	acc
      001380 90 38 88         [24] 2771 	mov	dptr,#___str_24
      001383 75 F0 80         [24] 2772 	mov	b,#0x80
      001386 12 1D 25         [24] 2773 	lcall	_write_string
      001389 E5 81            [12] 2774 	mov	a,sp
      00138B 24 FC            [12] 2775 	add	a,#0xfc
      00138D F5 81            [12] 2776 	mov	sp,a
      00138F D0 06            [24] 2777 	pop	ar6
                                   2778 ;	../UI_Manager/ui.c:681: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
      001391 8E 82            [24] 2779 	mov	dpl,r6
      001393 12 2F 91         [24] 2780 	lcall	_get_runtime_data
      001396 AF 82            [24] 2781 	mov	r7,dpl
      001398 E4               [12] 2782 	clr	a
      001399 FE               [12] 2783 	mov	r6,a
      00139A C0 E0            [24] 2784 	push	acc
      00139C 04               [12] 2785 	inc	a
      00139D C0 E0            [24] 2786 	push	acc
      00139F 74 06            [12] 2787 	mov	a,#0x06
      0013A1 C0 E0            [24] 2788 	push	acc
      0013A3 8F 82            [24] 2789 	mov	dpl,r7
      0013A5 8E 83            [24] 2790 	mov	dph,r6
      0013A7 12 1D E2         [24] 2791 	lcall	_write_number
      0013AA 15 81            [12] 2792 	dec	sp
      0013AC 15 81            [12] 2793 	dec	sp
      0013AE 15 81            [12] 2794 	dec	sp
      0013B0                       2795 00120$:
                                   2796 ;	../UI_Manager/ui.c:684: }
      0013B0 22               [24] 2797 	ret
                                   2798 ;------------------------------------------------------------
                                   2799 ;Allocation info for local variables in function 'remotePage'
                                   2800 ;------------------------------------------------------------
                                   2801 ;action                    Allocated to registers r7 
                                   2802 ;remoteNumber              Allocated to registers r6 
                                   2803 ;index                     Allocated to registers r5 
                                   2804 ;------------------------------------------------------------
                                   2805 ;	../UI_Manager/ui.c:686: void remotePage(uint8_t action){
                                   2806 ;	-----------------------------------------
                                   2807 ;	 function remotePage
                                   2808 ;	-----------------------------------------
      0013B1                       2809 _remotePage:
      0013B1 AF 82            [24] 2810 	mov	r7,dpl
                                   2811 ;	../UI_Manager/ui.c:687: uint8_t remoteNumber = 0;
      0013B3 7E 00            [12] 2812 	mov	r6,#0x00
                                   2813 ;	../UI_Manager/ui.c:688: uint8_t index = 0;
      0013B5 7D 00            [12] 2814 	mov	r5,#0x00
                                   2815 ;	../UI_Manager/ui.c:690: switch (State)
      0013B7 AC 08            [24] 2816 	mov	r4,_State
      0013B9 BC 0A 02         [24] 2817 	cjne	r4,#0x0a,00168$
      0013BC 80 0A            [24] 2818 	sjmp	00101$
      0013BE                       2819 00168$:
      0013BE BC 0B 02         [24] 2820 	cjne	r4,#0x0b,00169$
      0013C1 80 0B            [24] 2821 	sjmp	00102$
      0013C3                       2822 00169$:
                                   2823 ;	../UI_Manager/ui.c:692: case MANUAL_REMOTE_ACTION_4_STATE:
      0013C3 BC 0C 12         [24] 2824 	cjne	r4,#0x0c,00104$
      0013C6 80 0C            [24] 2825 	sjmp	00103$
      0013C8                       2826 00101$:
                                   2827 ;	../UI_Manager/ui.c:693: index = R4_INDEX;
      0013C8 7D 09            [12] 2828 	mov	r5,#0x09
                                   2829 ;	../UI_Manager/ui.c:694: remoteNumber = 4;
      0013CA 7E 04            [12] 2830 	mov	r6,#0x04
                                   2831 ;	../UI_Manager/ui.c:695: break;
                                   2832 ;	../UI_Manager/ui.c:696: case MANUAL_REMOTE_ACTION_5_STATE:
      0013CC 80 0A            [24] 2833 	sjmp	00104$
      0013CE                       2834 00102$:
                                   2835 ;	../UI_Manager/ui.c:697: index = R5_INDEX;
      0013CE 7D 0A            [12] 2836 	mov	r5,#0x0a
                                   2837 ;	../UI_Manager/ui.c:698: remoteNumber = 5;
      0013D0 7E 05            [12] 2838 	mov	r6,#0x05
                                   2839 ;	../UI_Manager/ui.c:699: break;
                                   2840 ;	../UI_Manager/ui.c:700: case MANUAL_REMOTE_ACTION_6_STATE:
      0013D2 80 04            [24] 2841 	sjmp	00104$
      0013D4                       2842 00103$:
                                   2843 ;	../UI_Manager/ui.c:701: index = R6_INDEX;
      0013D4 7D 0B            [12] 2844 	mov	r5,#0x0b
                                   2845 ;	../UI_Manager/ui.c:702: remoteNumber = 6;
      0013D6 7E 06            [12] 2846 	mov	r6,#0x06
                                   2847 ;	../UI_Manager/ui.c:704: }
      0013D8                       2848 00104$:
                                   2849 ;	../UI_Manager/ui.c:706: switch (action)
      0013D8 BF 01 02         [24] 2850 	cjne	r7,#0x01,00171$
      0013DB 80 54            [24] 2851 	sjmp	00108$
      0013DD                       2852 00171$:
      0013DD BF 02 02         [24] 2853 	cjne	r7,#0x02,00172$
      0013E0 80 43            [24] 2854 	sjmp	00107$
      0013E2                       2855 00172$:
      0013E2 BF 03 02         [24] 2856 	cjne	r7,#0x03,00173$
      0013E5 80 05            [24] 2857 	sjmp	00105$
      0013E7                       2858 00173$:
                                   2859 ;	../UI_Manager/ui.c:708: case BUTTON_UP:
      0013E7 BF 0B 53         [24] 2860 	cjne	r7,#0x0b,00109$
      0013EA 80 1C            [24] 2861 	sjmp	00106$
      0013EC                       2862 00105$:
                                   2863 ;	../UI_Manager/ui.c:709: set_runtime_data(index, INC, NULL);
      0013EC C0 06            [24] 2864 	push	ar6
      0013EE C0 05            [24] 2865 	push	ar5
      0013F0 E4               [12] 2866 	clr	a
      0013F1 C0 E0            [24] 2867 	push	acc
      0013F3 04               [12] 2868 	inc	a
      0013F4 C0 E0            [24] 2869 	push	acc
      0013F6 8D 82            [24] 2870 	mov	dpl,r5
      0013F8 12 30 51         [24] 2871 	lcall	_set_runtime_data
      0013FB 15 81            [12] 2872 	dec	sp
      0013FD 15 81            [12] 2873 	dec	sp
      0013FF D0 05            [24] 2874 	pop	ar5
      001401 D0 06            [24] 2875 	pop	ar6
                                   2876 ;	../UI_Manager/ui.c:710: changed = 0xFF;
      001403 75 0A FF         [24] 2877 	mov	_changed,#0xff
                                   2878 ;	../UI_Manager/ui.c:711: break;
                                   2879 ;	../UI_Manager/ui.c:712: case BUTTON_DOWN:
      001406 80 35            [24] 2880 	sjmp	00109$
      001408                       2881 00106$:
                                   2882 ;	../UI_Manager/ui.c:713: set_runtime_data(index, DEC, NULL);
      001408 C0 06            [24] 2883 	push	ar6
      00140A C0 05            [24] 2884 	push	ar5
      00140C E4               [12] 2885 	clr	a
      00140D C0 E0            [24] 2886 	push	acc
      00140F 74 02            [12] 2887 	mov	a,#0x02
      001411 C0 E0            [24] 2888 	push	acc
      001413 8D 82            [24] 2889 	mov	dpl,r5
      001415 12 30 51         [24] 2890 	lcall	_set_runtime_data
      001418 15 81            [12] 2891 	dec	sp
      00141A 15 81            [12] 2892 	dec	sp
      00141C D0 05            [24] 2893 	pop	ar5
      00141E D0 06            [24] 2894 	pop	ar6
                                   2895 ;	../UI_Manager/ui.c:714: changed = 0xFF;  
      001420 75 0A FF         [24] 2896 	mov	_changed,#0xff
                                   2897 ;	../UI_Manager/ui.c:715: break;
                                   2898 ;	../UI_Manager/ui.c:716: case BUTTON_FUNCTION:
      001423 80 18            [24] 2899 	sjmp	00109$
      001425                       2900 00107$:
                                   2901 ;	../UI_Manager/ui.c:717: set_ui_state(INC, NULL);
      001425 E4               [12] 2902 	clr	a
      001426 C0 E0            [24] 2903 	push	acc
      001428 75 82 01         [24] 2904 	mov	dpl,#0x01
      00142B 12 17 A0         [24] 2905 	lcall	_set_ui_state
      00142E 15 81            [12] 2906 	dec	sp
                                   2907 ;	../UI_Manager/ui.c:718: return;
      001430 22               [24] 2908 	ret
                                   2909 ;	../UI_Manager/ui.c:719: case BUTTON_TIMER:
      001431                       2910 00108$:
                                   2911 ;	../UI_Manager/ui.c:720: set_ui_state(DEC, NULL);
      001431 E4               [12] 2912 	clr	a
      001432 C0 E0            [24] 2913 	push	acc
      001434 75 82 02         [24] 2914 	mov	dpl,#0x02
      001437 12 17 A0         [24] 2915 	lcall	_set_ui_state
      00143A 15 81            [12] 2916 	dec	sp
                                   2917 ;	../UI_Manager/ui.c:721: return;
      00143C 22               [24] 2918 	ret
                                   2919 ;	../UI_Manager/ui.c:722: }
      00143D                       2920 00109$:
                                   2921 ;	../UI_Manager/ui.c:724: if(Changed){
      00143D E5 09            [12] 2922 	mov	a,_Changed
      00143F 70 03            [24] 2923 	jnz	00175$
      001441 02 14 C4         [24] 2924 	ljmp	00115$
      001444                       2925 00175$:
                                   2926 ;	../UI_Manager/ui.c:725: Changed = 0x00;
      001444 75 09 00         [24] 2927 	mov	_Changed,#0x00
                                   2928 ;	../UI_Manager/ui.c:726: changed = 0xFF;
      001447 75 0A FF         [24] 2929 	mov	_changed,#0xff
                                   2930 ;	../UI_Manager/ui.c:728: exe_command(CLEAR_DISPLAY);
      00144A 90 80 00         [24] 2931 	mov	dptr,#0x8000
      00144D C0 06            [24] 2932 	push	ar6
      00144F C0 05            [24] 2933 	push	ar5
      001451 12 20 60         [24] 2934 	lcall	_exe_command
                                   2935 ;	../UI_Manager/ui.c:730: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
      001454 E4               [12] 2936 	clr	a
      001455 C0 E0            [24] 2937 	push	acc
      001457 C0 E0            [24] 2938 	push	acc
      001459 04               [12] 2939 	inc	a
      00145A C0 E0            [24] 2940 	push	acc
      00145C C4               [12] 2941 	swap	a
      00145D C0 E0            [24] 2942 	push	acc
      00145F 90 38 89         [24] 2943 	mov	dptr,#___str_25
      001462 75 F0 80         [24] 2944 	mov	b,#0x80
      001465 12 1D 25         [24] 2945 	lcall	_write_string
      001468 E5 81            [12] 2946 	mov	a,sp
      00146A 24 FC            [12] 2947 	add	a,#0xfc
      00146C F5 81            [12] 2948 	mov	sp,a
      00146E D0 05            [24] 2949 	pop	ar5
      001470 D0 06            [24] 2950 	pop	ar6
                                   2951 ;	../UI_Manager/ui.c:731: switch (remoteNumber)
      001472 BE 04 02         [24] 2952 	cjne	r6,#0x04,00176$
      001475 80 0A            [24] 2953 	sjmp	00110$
      001477                       2954 00176$:
      001477 BE 05 02         [24] 2955 	cjne	r6,#0x05,00177$
      00147A 80 1C            [24] 2956 	sjmp	00111$
      00147C                       2957 00177$:
                                   2958 ;	../UI_Manager/ui.c:733: case 4:
      00147C BE 06 45         [24] 2959 	cjne	r6,#0x06,00115$
      00147F 80 2E            [24] 2960 	sjmp	00112$
      001481                       2961 00110$:
                                   2962 ;	../UI_Manager/ui.c:734: write_char(CHAR_4, 8, LINE_0);
      001481 C0 05            [24] 2963 	push	ar5
      001483 E4               [12] 2964 	clr	a
      001484 C0 E0            [24] 2965 	push	acc
      001486 74 08            [12] 2966 	mov	a,#0x08
      001488 C0 E0            [24] 2967 	push	acc
      00148A 75 82 2C         [24] 2968 	mov	dpl,#0x2c
      00148D 12 20 15         [24] 2969 	lcall	_write_char
      001490 15 81            [12] 2970 	dec	sp
      001492 15 81            [12] 2971 	dec	sp
      001494 D0 05            [24] 2972 	pop	ar5
                                   2973 ;	../UI_Manager/ui.c:735: break;
                                   2974 ;	../UI_Manager/ui.c:736: case 5:
      001496 80 2C            [24] 2975 	sjmp	00115$
      001498                       2976 00111$:
                                   2977 ;	../UI_Manager/ui.c:737: write_char(CHAR_5, 8, LINE_0);
      001498 C0 05            [24] 2978 	push	ar5
      00149A E4               [12] 2979 	clr	a
      00149B C0 E0            [24] 2980 	push	acc
      00149D 74 08            [12] 2981 	mov	a,#0x08
      00149F C0 E0            [24] 2982 	push	acc
      0014A1 75 82 AC         [24] 2983 	mov	dpl,#0xac
      0014A4 12 20 15         [24] 2984 	lcall	_write_char
      0014A7 15 81            [12] 2985 	dec	sp
      0014A9 15 81            [12] 2986 	dec	sp
      0014AB D0 05            [24] 2987 	pop	ar5
                                   2988 ;	../UI_Manager/ui.c:738: break;
                                   2989 ;	../UI_Manager/ui.c:739: case 6:
      0014AD 80 15            [24] 2990 	sjmp	00115$
      0014AF                       2991 00112$:
                                   2992 ;	../UI_Manager/ui.c:740: write_char(CHAR_6, 8, LINE_0);
      0014AF C0 05            [24] 2993 	push	ar5
      0014B1 E4               [12] 2994 	clr	a
      0014B2 C0 E0            [24] 2995 	push	acc
      0014B4 74 08            [12] 2996 	mov	a,#0x08
      0014B6 C0 E0            [24] 2997 	push	acc
      0014B8 75 82 6C         [24] 2998 	mov	dpl,#0x6c
      0014BB 12 20 15         [24] 2999 	lcall	_write_char
      0014BE 15 81            [12] 3000 	dec	sp
      0014C0 15 81            [12] 3001 	dec	sp
      0014C2 D0 05            [24] 3002 	pop	ar5
                                   3003 ;	../UI_Manager/ui.c:742: }
      0014C4                       3004 00115$:
                                   3005 ;	../UI_Manager/ui.c:745: if(changed){
      0014C4 E5 0A            [12] 3006 	mov	a,_changed
      0014C6 60 34            [24] 3007 	jz	00118$
                                   3008 ;	../UI_Manager/ui.c:746: changed = 0x00;
      0014C8 75 0A 00         [24] 3009 	mov	_changed,#0x00
                                   3010 ;	../UI_Manager/ui.c:747: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
      0014CB 8D 82            [24] 3011 	mov	dpl,r5
      0014CD 12 2F 91         [24] 3012 	lcall	_get_runtime_data
      0014D0 AF 82            [24] 3013 	mov	r7,dpl
      0014D2 74 3C            [12] 3014 	mov	a,#0x3c
      0014D4 2F               [12] 3015 	add	a,r7
      0014D5 F5 82            [12] 3016 	mov	dpl,a
      0014D7 12 18 AD         [24] 3017 	lcall	_getString
      0014DA AD 82            [24] 3018 	mov	r5,dpl
      0014DC AE 83            [24] 3019 	mov	r6,dph
      0014DE AF F0            [24] 3020 	mov	r7,b
      0014E0 E4               [12] 3021 	clr	a
      0014E1 C0 E0            [24] 3022 	push	acc
      0014E3 04               [12] 3023 	inc	a
      0014E4 C0 E0            [24] 3024 	push	acc
      0014E6 04               [12] 3025 	inc	a
      0014E7 C0 E0            [24] 3026 	push	acc
      0014E9 74 10            [12] 3027 	mov	a,#0x10
      0014EB C0 E0            [24] 3028 	push	acc
      0014ED 8D 82            [24] 3029 	mov	dpl,r5
      0014EF 8E 83            [24] 3030 	mov	dph,r6
      0014F1 8F F0            [24] 3031 	mov	b,r7
      0014F3 12 1D 25         [24] 3032 	lcall	_write_string
      0014F6 E5 81            [12] 3033 	mov	a,sp
      0014F8 24 FC            [12] 3034 	add	a,#0xfc
      0014FA F5 81            [12] 3035 	mov	sp,a
      0014FC                       3036 00118$:
                                   3037 ;	../UI_Manager/ui.c:749: }
      0014FC 22               [24] 3038 	ret
                                   3039 ;------------------------------------------------------------
                                   3040 ;Allocation info for local variables in function 'saveLoadPage'
                                   3041 ;------------------------------------------------------------
                                   3042 ;action                    Allocated to registers r7 
                                   3043 ;slot                      Allocated with name '_saveLoadPage_slot_65536_144'
                                   3044 ;------------------------------------------------------------
                                   3045 ;	../UI_Manager/ui.c:751: void saveLoadPage(uint8_t action){
                                   3046 ;	-----------------------------------------
                                   3047 ;	 function saveLoadPage
                                   3048 ;	-----------------------------------------
      0014FD                       3049 _saveLoadPage:
      0014FD AF 82            [24] 3050 	mov	r7,dpl
                                   3051 ;	../UI_Manager/ui.c:754: switch (action)
      0014FF BF 01 03         [24] 3052 	cjne	r7,#0x01,00161$
      001502 02 15 B7         [24] 3053 	ljmp	00108$
      001505                       3054 00161$:
      001505 BF 02 03         [24] 3055 	cjne	r7,#0x02,00162$
      001508 02 15 AB         [24] 3056 	ljmp	00107$
      00150B                       3057 00162$:
      00150B BF 03 03         [24] 3058 	cjne	r7,#0x03,00163$
      00150E 02 15 9D         [24] 3059 	ljmp	00105$
      001511                       3060 00163$:
      001511 BF 0B 03         [24] 3061 	cjne	r7,#0x0b,00164$
      001514 02 15 A4         [24] 3062 	ljmp	00106$
      001517                       3063 00164$:
      001517 BF 1E 02         [24] 3064 	cjne	r7,#0x1e,00165$
      00151A 80 03            [24] 3065 	sjmp	00166$
      00151C                       3066 00165$:
      00151C 02 15 C3         [24] 3067 	ljmp	00109$
      00151F                       3068 00166$:
                                   3069 ;	../UI_Manager/ui.c:757: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
      00151F 74 0D            [12] 3070 	mov	a,#0x0d
      001521 B5 08 06         [24] 3071 	cjne	a,_State,00119$
      001524 7E 01            [12] 3072 	mov	r6,#0x01
      001526 7F 00            [12] 3073 	mov	r7,#0x00
      001528 80 04            [24] 3074 	sjmp	00120$
      00152A                       3075 00119$:
      00152A 7E 00            [12] 3076 	mov	r6,#0x00
      00152C 7F 00            [12] 3077 	mov	r7,#0x00
      00152E                       3078 00120$:
      00152E 75 F0 03         [24] 3079 	mov	b,#0x03
      001531 E5 12            [12] 3080 	mov	a,_saveLoadPage_slot_65536_144
      001533 84               [48] 3081 	div	ab
      001534 85 F0 82         [24] 3082 	mov	dpl,b
      001537 C0 06            [24] 3083 	push	ar6
      001539 12 2F 2D         [24] 3084 	lcall	_save_load_settings
      00153C 15 81            [12] 3085 	dec	sp
                                   3086 ;	../UI_Manager/ui.c:758: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
      00153E E4               [12] 3087 	clr	a
      00153F C0 E0            [24] 3088 	push	acc
      001541 04               [12] 3089 	inc	a
      001542 C0 E0            [24] 3090 	push	acc
      001544 E4               [12] 3091 	clr	a
      001545 C0 E0            [24] 3092 	push	acc
      001547 74 10            [12] 3093 	mov	a,#0x10
      001549 C0 E0            [24] 3094 	push	acc
      00154B 90 38 88         [24] 3095 	mov	dptr,#___str_24
      00154E 75 F0 80         [24] 3096 	mov	b,#0x80
      001551 12 1D 25         [24] 3097 	lcall	_write_string
      001554 E5 81            [12] 3098 	mov	a,sp
      001556 24 FC            [12] 3099 	add	a,#0xfc
      001558 F5 81            [12] 3100 	mov	sp,a
                                   3101 ;	../UI_Manager/ui.c:760: if(State == MANUAL_SAVE_SETTINGS_STATE){
      00155A 74 0D            [12] 3102 	mov	a,#0x0d
      00155C B5 08 1F         [24] 3103 	cjne	a,_State,00103$
                                   3104 ;	../UI_Manager/ui.c:761: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      00155F E4               [12] 3105 	clr	a
      001560 C0 E0            [24] 3106 	push	acc
      001562 04               [12] 3107 	inc	a
      001563 C0 E0            [24] 3108 	push	acc
      001565 74 06            [12] 3109 	mov	a,#0x06
      001567 C0 E0            [24] 3110 	push	acc
      001569 74 10            [12] 3111 	mov	a,#0x10
      00156B C0 E0            [24] 3112 	push	acc
      00156D 90 38 99         [24] 3113 	mov	dptr,#___str_26
      001570 75 F0 80         [24] 3114 	mov	b,#0x80
      001573 12 1D 25         [24] 3115 	lcall	_write_string
      001576 E5 81            [12] 3116 	mov	a,sp
      001578 24 FC            [12] 3117 	add	a,#0xfc
      00157A F5 81            [12] 3118 	mov	sp,a
      00157C 80 45            [24] 3119 	sjmp	00109$
      00157E                       3120 00103$:
                                   3121 ;	../UI_Manager/ui.c:763: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      00157E E4               [12] 3122 	clr	a
      00157F C0 E0            [24] 3123 	push	acc
      001581 04               [12] 3124 	inc	a
      001582 C0 E0            [24] 3125 	push	acc
      001584 74 06            [12] 3126 	mov	a,#0x06
      001586 C0 E0            [24] 3127 	push	acc
      001588 74 10            [12] 3128 	mov	a,#0x10
      00158A C0 E0            [24] 3129 	push	acc
      00158C 90 38 A0         [24] 3130 	mov	dptr,#___str_27
      00158F 75 F0 80         [24] 3131 	mov	b,#0x80
      001592 12 1D 25         [24] 3132 	lcall	_write_string
      001595 E5 81            [12] 3133 	mov	a,sp
      001597 24 FC            [12] 3134 	add	a,#0xfc
      001599 F5 81            [12] 3135 	mov	sp,a
                                   3136 ;	../UI_Manager/ui.c:765: break;
                                   3137 ;	../UI_Manager/ui.c:766: case BUTTON_UP:
      00159B 80 26            [24] 3138 	sjmp	00109$
      00159D                       3139 00105$:
                                   3140 ;	../UI_Manager/ui.c:767: slot++;
      00159D 05 12            [12] 3141 	inc	_saveLoadPage_slot_65536_144
                                   3142 ;	../UI_Manager/ui.c:768: changed = 0xFF;
      00159F 75 0A FF         [24] 3143 	mov	_changed,#0xff
                                   3144 ;	../UI_Manager/ui.c:769: break;
                                   3145 ;	../UI_Manager/ui.c:770: case BUTTON_DOWN:
      0015A2 80 1F            [24] 3146 	sjmp	00109$
      0015A4                       3147 00106$:
                                   3148 ;	../UI_Manager/ui.c:771: slot--;
      0015A4 15 12            [12] 3149 	dec	_saveLoadPage_slot_65536_144
                                   3150 ;	../UI_Manager/ui.c:772: changed = 0xFF;  
      0015A6 75 0A FF         [24] 3151 	mov	_changed,#0xff
                                   3152 ;	../UI_Manager/ui.c:773: break;
                                   3153 ;	../UI_Manager/ui.c:774: case BUTTON_FUNCTION:
      0015A9 80 18            [24] 3154 	sjmp	00109$
      0015AB                       3155 00107$:
                                   3156 ;	../UI_Manager/ui.c:775: set_ui_state(INC, NULL);
      0015AB E4               [12] 3157 	clr	a
      0015AC C0 E0            [24] 3158 	push	acc
      0015AE 75 82 01         [24] 3159 	mov	dpl,#0x01
      0015B1 12 17 A0         [24] 3160 	lcall	_set_ui_state
      0015B4 15 81            [12] 3161 	dec	sp
                                   3162 ;	../UI_Manager/ui.c:776: return;
      0015B6 22               [24] 3163 	ret
                                   3164 ;	../UI_Manager/ui.c:777: case BUTTON_TIMER:
      0015B7                       3165 00108$:
                                   3166 ;	../UI_Manager/ui.c:778: set_ui_state(DEC, NULL);
      0015B7 E4               [12] 3167 	clr	a
      0015B8 C0 E0            [24] 3168 	push	acc
      0015BA 75 82 02         [24] 3169 	mov	dpl,#0x02
      0015BD 12 17 A0         [24] 3170 	lcall	_set_ui_state
      0015C0 15 81            [12] 3171 	dec	sp
                                   3172 ;	../UI_Manager/ui.c:779: return;
      0015C2 22               [24] 3173 	ret
                                   3174 ;	../UI_Manager/ui.c:780: }
      0015C3                       3175 00109$:
                                   3176 ;	../UI_Manager/ui.c:782: if(Changed){
      0015C3 E5 09            [12] 3177 	mov	a,_Changed
      0015C5 60 4B            [24] 3178 	jz	00114$
                                   3179 ;	../UI_Manager/ui.c:783: Changed = 0x00;
      0015C7 75 09 00         [24] 3180 	mov	_Changed,#0x00
                                   3181 ;	../UI_Manager/ui.c:784: changed = 0xFF;
      0015CA 75 0A FF         [24] 3182 	mov	_changed,#0xff
                                   3183 ;	../UI_Manager/ui.c:786: exe_command(CLEAR_DISPLAY);
      0015CD 90 80 00         [24] 3184 	mov	dptr,#0x8000
      0015D0 12 20 60         [24] 3185 	lcall	_exe_command
                                   3186 ;	../UI_Manager/ui.c:788: if(State == MANUAL_SAVE_SETTINGS_STATE){
      0015D3 74 0D            [12] 3187 	mov	a,#0x0d
      0015D5 B5 08 1E         [24] 3188 	cjne	a,_State,00111$
                                   3189 ;	../UI_Manager/ui.c:789: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
      0015D8 E4               [12] 3190 	clr	a
      0015D9 C0 E0            [24] 3191 	push	acc
      0015DB C0 E0            [24] 3192 	push	acc
      0015DD 74 02            [12] 3193 	mov	a,#0x02
      0015DF C0 E0            [24] 3194 	push	acc
      0015E1 74 0E            [12] 3195 	mov	a,#0x0e
      0015E3 C0 E0            [24] 3196 	push	acc
      0015E5 90 38 A8         [24] 3197 	mov	dptr,#___str_28
      0015E8 75 F0 80         [24] 3198 	mov	b,#0x80
      0015EB 12 1D 25         [24] 3199 	lcall	_write_string
      0015EE E5 81            [12] 3200 	mov	a,sp
      0015F0 24 FC            [12] 3201 	add	a,#0xfc
      0015F2 F5 81            [12] 3202 	mov	sp,a
      0015F4 80 1C            [24] 3203 	sjmp	00114$
      0015F6                       3204 00111$:
                                   3205 ;	../UI_Manager/ui.c:791: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
      0015F6 E4               [12] 3206 	clr	a
      0015F7 C0 E0            [24] 3207 	push	acc
      0015F9 C0 E0            [24] 3208 	push	acc
      0015FB 74 02            [12] 3209 	mov	a,#0x02
      0015FD C0 E0            [24] 3210 	push	acc
      0015FF 74 0E            [12] 3211 	mov	a,#0x0e
      001601 C0 E0            [24] 3212 	push	acc
      001603 90 38 B6         [24] 3213 	mov	dptr,#___str_29
      001606 75 F0 80         [24] 3214 	mov	b,#0x80
      001609 12 1D 25         [24] 3215 	lcall	_write_string
      00160C E5 81            [12] 3216 	mov	a,sp
      00160E 24 FC            [12] 3217 	add	a,#0xfc
      001610 F5 81            [12] 3218 	mov	sp,a
      001612                       3219 00114$:
                                   3220 ;	../UI_Manager/ui.c:796: if(changed){
      001612 E5 0A            [12] 3221 	mov	a,_changed
      001614 60 36            [24] 3222 	jz	00117$
                                   3223 ;	../UI_Manager/ui.c:797: changed = 0x00;
      001616 75 0A 00         [24] 3224 	mov	_changed,#0x00
                                   3225 ;	../UI_Manager/ui.c:798: write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
      001619 75 F0 03         [24] 3226 	mov	b,#0x03
      00161C E5 12            [12] 3227 	mov	a,_saveLoadPage_slot_65536_144
      00161E 84               [48] 3228 	div	ab
      00161F AF F0            [24] 3229 	mov	r7,b
      001621 74 50            [12] 3230 	mov	a,#0x50
      001623 2F               [12] 3231 	add	a,r7
      001624 F5 82            [12] 3232 	mov	dpl,a
      001626 12 18 AD         [24] 3233 	lcall	_getString
      001629 AD 82            [24] 3234 	mov	r5,dpl
      00162B AE 83            [24] 3235 	mov	r6,dph
      00162D AF F0            [24] 3236 	mov	r7,b
      00162F E4               [12] 3237 	clr	a
      001630 C0 E0            [24] 3238 	push	acc
      001632 04               [12] 3239 	inc	a
      001633 C0 E0            [24] 3240 	push	acc
      001635 74 04            [12] 3241 	mov	a,#0x04
      001637 C0 E0            [24] 3242 	push	acc
      001639 74 10            [12] 3243 	mov	a,#0x10
      00163B C0 E0            [24] 3244 	push	acc
      00163D 8D 82            [24] 3245 	mov	dpl,r5
      00163F 8E 83            [24] 3246 	mov	dph,r6
      001641 8F F0            [24] 3247 	mov	b,r7
      001643 12 1D 25         [24] 3248 	lcall	_write_string
      001646 E5 81            [12] 3249 	mov	a,sp
      001648 24 FC            [12] 3250 	add	a,#0xfc
      00164A F5 81            [12] 3251 	mov	sp,a
      00164C                       3252 00117$:
                                   3253 ;	../UI_Manager/ui.c:801: }
      00164C 22               [24] 3254 	ret
                                   3255 ;------------------------------------------------------------
                                   3256 ;Allocation info for local variables in function 'dmxAddressPage'
                                   3257 ;------------------------------------------------------------
                                   3258 ;action                    Allocated to registers r7 
                                   3259 ;------------------------------------------------------------
                                   3260 ;	../UI_Manager/ui.c:803: void dmxAddressPage(uint8_t action){
                                   3261 ;	-----------------------------------------
                                   3262 ;	 function dmxAddressPage
                                   3263 ;	-----------------------------------------
      00164D                       3264 _dmxAddressPage:
      00164D AF 82            [24] 3265 	mov	r7,dpl
                                   3266 ;	../UI_Manager/ui.c:805: switch (action)
      00164F BF 01 02         [24] 3267 	cjne	r7,#0x01,00146$
      001652 80 3B            [24] 3268 	sjmp	00106$
      001654                       3269 00146$:
      001654 BF 02 02         [24] 3270 	cjne	r7,#0x02,00147$
      001657 80 2A            [24] 3271 	sjmp	00105$
      001659                       3272 00147$:
      001659 BF 03 02         [24] 3273 	cjne	r7,#0x03,00148$
      00165C 80 0F            [24] 3274 	sjmp	00102$
      00165E                       3275 00148$:
      00165E BF 0B 02         [24] 3276 	cjne	r7,#0x0b,00149$
      001661 80 15            [24] 3277 	sjmp	00104$
      001663                       3278 00149$:
      001663 BF 1F 02         [24] 3279 	cjne	r7,#0x1f,00150$
      001666 80 05            [24] 3280 	sjmp	00102$
      001668                       3281 00150$:
                                   3282 ;	../UI_Manager/ui.c:808: case BUTTON_UP:
      001668 BF 6F 30         [24] 3283 	cjne	r7,#0x6f,00107$
      00166B 80 0B            [24] 3284 	sjmp	00104$
      00166D                       3285 00102$:
                                   3286 ;	../UI_Manager/ui.c:809: set_dmx_address(INC);
      00166D 75 82 01         [24] 3287 	mov	dpl,#0x01
      001670 12 30 E4         [24] 3288 	lcall	_set_dmx_address
                                   3289 ;	../UI_Manager/ui.c:810: changed = 0xFF;
      001673 75 0A FF         [24] 3290 	mov	_changed,#0xff
                                   3291 ;	../UI_Manager/ui.c:811: break;
                                   3292 ;	../UI_Manager/ui.c:813: case BUTTON_DOWN:
      001676 80 23            [24] 3293 	sjmp	00107$
      001678                       3294 00104$:
                                   3295 ;	../UI_Manager/ui.c:814: set_dmx_address(DEC);
      001678 75 82 02         [24] 3296 	mov	dpl,#0x02
      00167B 12 30 E4         [24] 3297 	lcall	_set_dmx_address
                                   3298 ;	../UI_Manager/ui.c:815: changed = 0xFF;  
      00167E 75 0A FF         [24] 3299 	mov	_changed,#0xff
                                   3300 ;	../UI_Manager/ui.c:816: break;
                                   3301 ;	../UI_Manager/ui.c:817: case BUTTON_FUNCTION:
      001681 80 18            [24] 3302 	sjmp	00107$
      001683                       3303 00105$:
                                   3304 ;	../UI_Manager/ui.c:818: set_ui_state(INC, NULL);
      001683 E4               [12] 3305 	clr	a
      001684 C0 E0            [24] 3306 	push	acc
      001686 75 82 01         [24] 3307 	mov	dpl,#0x01
      001689 12 17 A0         [24] 3308 	lcall	_set_ui_state
      00168C 15 81            [12] 3309 	dec	sp
                                   3310 ;	../UI_Manager/ui.c:819: return;
                                   3311 ;	../UI_Manager/ui.c:820: case BUTTON_TIMER:
      00168E 22               [24] 3312 	ret
      00168F                       3313 00106$:
                                   3314 ;	../UI_Manager/ui.c:821: set_ui_state(DEC, NULL);
      00168F E4               [12] 3315 	clr	a
      001690 C0 E0            [24] 3316 	push	acc
      001692 75 82 02         [24] 3317 	mov	dpl,#0x02
      001695 12 17 A0         [24] 3318 	lcall	_set_ui_state
      001698 15 81            [12] 3319 	dec	sp
                                   3320 ;	../UI_Manager/ui.c:822: return;
                                   3321 ;	../UI_Manager/ui.c:823: }
      00169A 22               [24] 3322 	ret
      00169B                       3323 00107$:
                                   3324 ;	../UI_Manager/ui.c:825: if(Changed){
      00169B E5 09            [12] 3325 	mov	a,_Changed
      00169D 60 28            [24] 3326 	jz	00109$
                                   3327 ;	../UI_Manager/ui.c:826: Changed = 0x00;
      00169F 75 09 00         [24] 3328 	mov	_Changed,#0x00
                                   3329 ;	../UI_Manager/ui.c:827: changed = 0xFF;
      0016A2 75 0A FF         [24] 3330 	mov	_changed,#0xff
                                   3331 ;	../UI_Manager/ui.c:829: exe_command(CLEAR_DISPLAY);
      0016A5 90 80 00         [24] 3332 	mov	dptr,#0x8000
      0016A8 12 20 60         [24] 3333 	lcall	_exe_command
                                   3334 ;	../UI_Manager/ui.c:831: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
      0016AB E4               [12] 3335 	clr	a
      0016AC C0 E0            [24] 3336 	push	acc
      0016AE C0 E0            [24] 3337 	push	acc
      0016B0 74 02            [12] 3338 	mov	a,#0x02
      0016B2 C0 E0            [24] 3339 	push	acc
      0016B4 74 0C            [12] 3340 	mov	a,#0x0c
      0016B6 C0 E0            [24] 3341 	push	acc
      0016B8 90 38 C4         [24] 3342 	mov	dptr,#___str_30
      0016BB 75 F0 80         [24] 3343 	mov	b,#0x80
      0016BE 12 1D 25         [24] 3344 	lcall	_write_string
      0016C1 E5 81            [12] 3345 	mov	a,sp
      0016C3 24 FC            [12] 3346 	add	a,#0xfc
      0016C5 F5 81            [12] 3347 	mov	sp,a
      0016C7                       3348 00109$:
                                   3349 ;	../UI_Manager/ui.c:834: if(changed){
      0016C7 E5 0A            [12] 3350 	mov	a,_changed
      0016C9 60 19            [24] 3351 	jz	00112$
                                   3352 ;	../UI_Manager/ui.c:835: changed = 0x00;
      0016CB 75 0A 00         [24] 3353 	mov	_changed,#0x00
                                   3354 ;	../UI_Manager/ui.c:837: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      0016CE 12 31 44         [24] 3355 	lcall	_get_dmx_address
      0016D1 E4               [12] 3356 	clr	a
      0016D2 C0 E0            [24] 3357 	push	acc
      0016D4 04               [12] 3358 	inc	a
      0016D5 C0 E0            [24] 3359 	push	acc
      0016D7 74 04            [12] 3360 	mov	a,#0x04
      0016D9 C0 E0            [24] 3361 	push	acc
      0016DB 12 1D E2         [24] 3362 	lcall	_write_number
      0016DE 15 81            [12] 3363 	dec	sp
      0016E0 15 81            [12] 3364 	dec	sp
      0016E2 15 81            [12] 3365 	dec	sp
      0016E4                       3366 00112$:
                                   3367 ;	../UI_Manager/ui.c:840: }
      0016E4 22               [24] 3368 	ret
                                   3369 ;------------------------------------------------------------
                                   3370 ;Allocation info for local variables in function 'dmxChannelPage'
                                   3371 ;------------------------------------------------------------
                                   3372 ;action                    Allocated to registers r7 
                                   3373 ;------------------------------------------------------------
                                   3374 ;	../UI_Manager/ui.c:842: void dmxChannelPage(uint8_t action){
                                   3375 ;	-----------------------------------------
                                   3376 ;	 function dmxChannelPage
                                   3377 ;	-----------------------------------------
      0016E5                       3378 _dmxChannelPage:
      0016E5 AF 82            [24] 3379 	mov	r7,dpl
                                   3380 ;	../UI_Manager/ui.c:844: switch (action)
      0016E7 BF 01 02         [24] 3381 	cjne	r7,#0x01,00136$
      0016EA 80 46            [24] 3382 	sjmp	00104$
      0016EC                       3383 00136$:
      0016EC BF 02 02         [24] 3384 	cjne	r7,#0x02,00137$
      0016EF 80 35            [24] 3385 	sjmp	00103$
      0016F1                       3386 00137$:
      0016F1 BF 03 02         [24] 3387 	cjne	r7,#0x03,00138$
      0016F4 80 05            [24] 3388 	sjmp	00101$
      0016F6                       3389 00138$:
                                   3390 ;	../UI_Manager/ui.c:846: case BUTTON_UP:
      0016F6 BF 0B 45         [24] 3391 	cjne	r7,#0x0b,00105$
      0016F9 80 15            [24] 3392 	sjmp	00102$
      0016FB                       3393 00101$:
                                   3394 ;	../UI_Manager/ui.c:847: set_runtime_data(MODE_INDEX, INC, NULL);
      0016FB E4               [12] 3395 	clr	a
      0016FC C0 E0            [24] 3396 	push	acc
      0016FE 04               [12] 3397 	inc	a
      0016FF C0 E0            [24] 3398 	push	acc
      001701 75 82 0E         [24] 3399 	mov	dpl,#0x0e
      001704 12 30 51         [24] 3400 	lcall	_set_runtime_data
      001707 15 81            [12] 3401 	dec	sp
      001709 15 81            [12] 3402 	dec	sp
                                   3403 ;	../UI_Manager/ui.c:848: changed = 0xFF;
      00170B 75 0A FF         [24] 3404 	mov	_changed,#0xff
                                   3405 ;	../UI_Manager/ui.c:849: break;
                                   3406 ;	../UI_Manager/ui.c:850: case BUTTON_DOWN:
      00170E 80 2E            [24] 3407 	sjmp	00105$
      001710                       3408 00102$:
                                   3409 ;	../UI_Manager/ui.c:851: set_runtime_data(MODE_INDEX, DEC, NULL);
      001710 E4               [12] 3410 	clr	a
      001711 C0 E0            [24] 3411 	push	acc
      001713 74 02            [12] 3412 	mov	a,#0x02
      001715 C0 E0            [24] 3413 	push	acc
      001717 75 82 0E         [24] 3414 	mov	dpl,#0x0e
      00171A 12 30 51         [24] 3415 	lcall	_set_runtime_data
      00171D 15 81            [12] 3416 	dec	sp
      00171F 15 81            [12] 3417 	dec	sp
                                   3418 ;	../UI_Manager/ui.c:852: changed = 0xFF;  
      001721 75 0A FF         [24] 3419 	mov	_changed,#0xff
                                   3420 ;	../UI_Manager/ui.c:853: break;
                                   3421 ;	../UI_Manager/ui.c:854: case BUTTON_FUNCTION:
      001724 80 18            [24] 3422 	sjmp	00105$
      001726                       3423 00103$:
                                   3424 ;	../UI_Manager/ui.c:855: set_ui_state(INC, NULL);
      001726 E4               [12] 3425 	clr	a
      001727 C0 E0            [24] 3426 	push	acc
      001729 75 82 01         [24] 3427 	mov	dpl,#0x01
      00172C 12 17 A0         [24] 3428 	lcall	_set_ui_state
      00172F 15 81            [12] 3429 	dec	sp
                                   3430 ;	../UI_Manager/ui.c:856: return;
                                   3431 ;	../UI_Manager/ui.c:857: case BUTTON_TIMER:
      001731 22               [24] 3432 	ret
      001732                       3433 00104$:
                                   3434 ;	../UI_Manager/ui.c:858: set_ui_state(DEC, NULL);
      001732 E4               [12] 3435 	clr	a
      001733 C0 E0            [24] 3436 	push	acc
      001735 75 82 02         [24] 3437 	mov	dpl,#0x02
      001738 12 17 A0         [24] 3438 	lcall	_set_ui_state
      00173B 15 81            [12] 3439 	dec	sp
                                   3440 ;	../UI_Manager/ui.c:859: return;
                                   3441 ;	../UI_Manager/ui.c:860: }
      00173D 22               [24] 3442 	ret
      00173E                       3443 00105$:
                                   3444 ;	../UI_Manager/ui.c:862: if(Changed){
      00173E E5 09            [12] 3445 	mov	a,_Changed
      001740 60 26            [24] 3446 	jz	00107$
                                   3447 ;	../UI_Manager/ui.c:863: Changed = 0x00;
      001742 75 09 00         [24] 3448 	mov	_Changed,#0x00
                                   3449 ;	../UI_Manager/ui.c:864: changed = 0xFF;
      001745 75 0A FF         [24] 3450 	mov	_changed,#0xff
                                   3451 ;	../UI_Manager/ui.c:866: exe_command(CLEAR_DISPLAY);
      001748 90 80 00         [24] 3452 	mov	dptr,#0x8000
      00174B 12 20 60         [24] 3453 	lcall	_exe_command
                                   3454 ;	../UI_Manager/ui.c:868: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
      00174E E4               [12] 3455 	clr	a
      00174F C0 E0            [24] 3456 	push	acc
      001751 C0 E0            [24] 3457 	push	acc
      001753 C0 E0            [24] 3458 	push	acc
      001755 74 11            [12] 3459 	mov	a,#0x11
      001757 C0 E0            [24] 3460 	push	acc
      001759 90 38 D0         [24] 3461 	mov	dptr,#___str_31
      00175C 75 F0 80         [24] 3462 	mov	b,#0x80
      00175F 12 1D 25         [24] 3463 	lcall	_write_string
      001762 E5 81            [12] 3464 	mov	a,sp
      001764 24 FC            [12] 3465 	add	a,#0xfc
      001766 F5 81            [12] 3466 	mov	sp,a
      001768                       3467 00107$:
                                   3468 ;	../UI_Manager/ui.c:871: if(changed){
      001768 E5 0A            [12] 3469 	mov	a,_changed
      00176A 60 33            [24] 3470 	jz	00110$
                                   3471 ;	../UI_Manager/ui.c:872: changed = 0x00;
      00176C 75 0A 00         [24] 3472 	mov	_changed,#0x00
                                   3473 ;	../UI_Manager/ui.c:874: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
      00176F 75 82 0E         [24] 3474 	mov	dpl,#0x0e
      001772 12 2F 91         [24] 3475 	lcall	_get_runtime_data
      001775 AF 82            [24] 3476 	mov	r7,dpl
      001777 74 64            [12] 3477 	mov	a,#0x64
      001779 2F               [12] 3478 	add	a,r7
      00177A F5 82            [12] 3479 	mov	dpl,a
      00177C 12 18 AD         [24] 3480 	lcall	_getString
      00177F AD 82            [24] 3481 	mov	r5,dpl
      001781 AE 83            [24] 3482 	mov	r6,dph
      001783 AF F0            [24] 3483 	mov	r7,b
      001785 E4               [12] 3484 	clr	a
      001786 C0 E0            [24] 3485 	push	acc
      001788 04               [12] 3486 	inc	a
      001789 C0 E0            [24] 3487 	push	acc
      00178B C0 E0            [24] 3488 	push	acc
      00178D C4               [12] 3489 	swap	a
      00178E C0 E0            [24] 3490 	push	acc
      001790 8D 82            [24] 3491 	mov	dpl,r5
      001792 8E 83            [24] 3492 	mov	dph,r6
      001794 8F F0            [24] 3493 	mov	b,r7
      001796 12 1D 25         [24] 3494 	lcall	_write_string
      001799 E5 81            [12] 3495 	mov	a,sp
      00179B 24 FC            [12] 3496 	add	a,#0xfc
      00179D F5 81            [12] 3497 	mov	sp,a
      00179F                       3498 00110$:
                                   3499 ;	../UI_Manager/ui.c:877: }
      00179F 22               [24] 3500 	ret
                                   3501 ;------------------------------------------------------------
                                   3502 ;Allocation info for local variables in function 'set_ui_state'
                                   3503 ;------------------------------------------------------------
                                   3504 ;state                     Allocated to stack - _bp -3
                                   3505 ;inc                       Allocated to registers r7 
                                   3506 ;------------------------------------------------------------
                                   3507 ;	../UI_Manager/ui.c:879: void set_ui_state(uint8_t inc, uint8_t state){
                                   3508 ;	-----------------------------------------
                                   3509 ;	 function set_ui_state
                                   3510 ;	-----------------------------------------
      0017A0                       3511 _set_ui_state:
      0017A0 C0 1A            [24] 3512 	push	_bp
      0017A2 85 81 1A         [24] 3513 	mov	_bp,sp
      0017A5 AF 82            [24] 3514 	mov	r7,dpl
                                   3515 ;	../UI_Manager/ui.c:880: Changed = CHANGE_SCREEN_X;
      0017A7 75 09 FF         [24] 3516 	mov	_Changed,#0xff
                                   3517 ;	../UI_Manager/ui.c:882: switch (inc)
      0017AA BF 01 02         [24] 3518 	cjne	r7,#0x01,00187$
      0017AD 80 77            [24] 3519 	sjmp	00115$
      0017AF                       3520 00187$:
      0017AF BF 02 02         [24] 3521 	cjne	r7,#0x02,00188$
      0017B2 80 03            [24] 3522 	sjmp	00189$
      0017B4                       3523 00188$:
      0017B4 02 18 7A         [24] 3524 	ljmp	00127$
      0017B7                       3525 00189$:
                                   3526 ;	../UI_Manager/ui.c:885: state = State;
      0017B7 E5 1A            [12] 3527 	mov	a,_bp
      0017B9 24 FD            [12] 3528 	add	a,#0xfd
      0017BB F8               [12] 3529 	mov	r0,a
      0017BC A6 08            [24] 3530 	mov	@r0,_State
                                   3531 ;	../UI_Manager/ui.c:886: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0017BE 75 82 10         [24] 3532 	mov	dpl,#0x10
      0017C1 12 2F 91         [24] 3533 	lcall	_get_runtime_data
      0017C4 E5 82            [12] 3534 	mov	a,dpl
      0017C6 70 2F            [24] 3535 	jnz	00113$
                                   3536 ;	../UI_Manager/ui.c:887: if(state == IDLE_STATE){
      0017C8 E5 1A            [12] 3537 	mov	a,_bp
      0017CA 24 FD            [12] 3538 	add	a,#0xfd
      0017CC F8               [12] 3539 	mov	r0,a
      0017CD E6               [12] 3540 	mov	a,@r0
      0017CE 70 0A            [24] 3541 	jnz	00105$
                                   3542 ;	../UI_Manager/ui.c:888: state = DMX_STATE_LOW;
      0017D0 E5 1A            [12] 3543 	mov	a,_bp
      0017D2 24 FD            [12] 3544 	add	a,#0xfd
      0017D4 F8               [12] 3545 	mov	r0,a
      0017D5 76 14            [12] 3546 	mov	@r0,#0x14
      0017D7 02 18 9F         [24] 3547 	ljmp	00132$
      0017DA                       3548 00105$:
                                   3549 ;	../UI_Manager/ui.c:889: } else if(++state > DMX_STATE_HIGH){
      0017DA E5 1A            [12] 3550 	mov	a,_bp
      0017DC 24 FD            [12] 3551 	add	a,#0xfd
      0017DE F8               [12] 3552 	mov	r0,a
      0017DF 06               [12] 3553 	inc	@r0
      0017E0 E5 1A            [12] 3554 	mov	a,_bp
      0017E2 24 FD            [12] 3555 	add	a,#0xfd
      0017E4 F8               [12] 3556 	mov	r0,a
      0017E5 E6               [12] 3557 	mov	a,@r0
      0017E6 24 EA            [12] 3558 	add	a,#0xff - 0x15
      0017E8 40 03            [24] 3559 	jc	00192$
      0017EA 02 18 9F         [24] 3560 	ljmp	00132$
      0017ED                       3561 00192$:
                                   3562 ;	../UI_Manager/ui.c:890: state = IDLE_STATE;
      0017ED E5 1A            [12] 3563 	mov	a,_bp
      0017EF 24 FD            [12] 3564 	add	a,#0xfd
      0017F1 F8               [12] 3565 	mov	r0,a
      0017F2 76 00            [12] 3566 	mov	@r0,#0x00
      0017F4 02 18 9F         [24] 3567 	ljmp	00132$
      0017F7                       3568 00113$:
                                   3569 ;	../UI_Manager/ui.c:893: if(state == IDLE_STATE){
      0017F7 E5 1A            [12] 3570 	mov	a,_bp
      0017F9 24 FD            [12] 3571 	add	a,#0xfd
      0017FB F8               [12] 3572 	mov	r0,a
      0017FC E6               [12] 3573 	mov	a,@r0
      0017FD 70 0A            [24] 3574 	jnz	00110$
                                   3575 ;	../UI_Manager/ui.c:894: state = IDLE_STATE + 1; 
      0017FF E5 1A            [12] 3576 	mov	a,_bp
      001801 24 FD            [12] 3577 	add	a,#0xfd
      001803 F8               [12] 3578 	mov	r0,a
      001804 76 01            [12] 3579 	mov	@r0,#0x01
      001806 02 18 9F         [24] 3580 	ljmp	00132$
      001809                       3581 00110$:
                                   3582 ;	../UI_Manager/ui.c:895: } else if(++state > MANUAL_STATE_HIGH){
      001809 E5 1A            [12] 3583 	mov	a,_bp
      00180B 24 FD            [12] 3584 	add	a,#0xfd
      00180D F8               [12] 3585 	mov	r0,a
      00180E 06               [12] 3586 	inc	@r0
      00180F E5 1A            [12] 3587 	mov	a,_bp
      001811 24 FD            [12] 3588 	add	a,#0xfd
      001813 F8               [12] 3589 	mov	r0,a
      001814 E6               [12] 3590 	mov	a,@r0
      001815 24 F1            [12] 3591 	add	a,#0xff - 0x0e
      001817 40 03            [24] 3592 	jc	00194$
      001819 02 18 9F         [24] 3593 	ljmp	00132$
      00181C                       3594 00194$:
                                   3595 ;	../UI_Manager/ui.c:896: state = IDLE_STATE;
      00181C E5 1A            [12] 3596 	mov	a,_bp
      00181E 24 FD            [12] 3597 	add	a,#0xfd
      001820 F8               [12] 3598 	mov	r0,a
      001821 76 00            [12] 3599 	mov	@r0,#0x00
                                   3600 ;	../UI_Manager/ui.c:899: break;
      001823 02 18 9F         [24] 3601 	ljmp	00132$
                                   3602 ;	../UI_Manager/ui.c:900: case INC:
      001826                       3603 00115$:
                                   3604 ;	../UI_Manager/ui.c:901: state = State;
      001826 E5 1A            [12] 3605 	mov	a,_bp
      001828 24 FD            [12] 3606 	add	a,#0xfd
      00182A F8               [12] 3607 	mov	r0,a
      00182B A6 08            [24] 3608 	mov	@r0,_State
                                   3609 ;	../UI_Manager/ui.c:902: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00182D 75 82 10         [24] 3610 	mov	dpl,#0x10
      001830 12 2F 91         [24] 3611 	lcall	_get_runtime_data
      001833 E5 82            [12] 3612 	mov	a,dpl
      001835 70 2A            [24] 3613 	jnz	00125$
                                   3614 ;	../UI_Manager/ui.c:903: if(state == IDLE_STATE){
      001837 E5 1A            [12] 3615 	mov	a,_bp
      001839 24 FD            [12] 3616 	add	a,#0xfd
      00183B F8               [12] 3617 	mov	r0,a
      00183C E6               [12] 3618 	mov	a,@r0
      00183D 70 09            [24] 3619 	jnz	00119$
                                   3620 ;	../UI_Manager/ui.c:904: state = DMX_STATE_HIGH;
      00183F E5 1A            [12] 3621 	mov	a,_bp
      001841 24 FD            [12] 3622 	add	a,#0xfd
      001843 F8               [12] 3623 	mov	r0,a
      001844 76 15            [12] 3624 	mov	@r0,#0x15
      001846 80 57            [24] 3625 	sjmp	00132$
      001848                       3626 00119$:
                                   3627 ;	../UI_Manager/ui.c:905: } else if(--state < DMX_STATE_LOW){
      001848 E5 1A            [12] 3628 	mov	a,_bp
      00184A 24 FD            [12] 3629 	add	a,#0xfd
      00184C F8               [12] 3630 	mov	r0,a
      00184D 16               [12] 3631 	dec	@r0
      00184E E5 1A            [12] 3632 	mov	a,_bp
      001850 24 FD            [12] 3633 	add	a,#0xfd
      001852 F8               [12] 3634 	mov	r0,a
      001853 B6 14 00         [24] 3635 	cjne	@r0,#0x14,00197$
      001856                       3636 00197$:
      001856 50 47            [24] 3637 	jnc	00132$
                                   3638 ;	../UI_Manager/ui.c:906: state = IDLE_STATE;
      001858 E5 1A            [12] 3639 	mov	a,_bp
      00185A 24 FD            [12] 3640 	add	a,#0xfd
      00185C F8               [12] 3641 	mov	r0,a
      00185D 76 00            [12] 3642 	mov	@r0,#0x00
      00185F 80 3E            [24] 3643 	sjmp	00132$
      001861                       3644 00125$:
                                   3645 ;	../UI_Manager/ui.c:909: if(state == IDLE_STATE){
      001861 E5 1A            [12] 3646 	mov	a,_bp
      001863 24 FD            [12] 3647 	add	a,#0xfd
      001865 F8               [12] 3648 	mov	r0,a
      001866 E6               [12] 3649 	mov	a,@r0
      001867 70 09            [24] 3650 	jnz	00122$
                                   3651 ;	../UI_Manager/ui.c:910: state = MANUAL_STATE_HIGH; 
      001869 E5 1A            [12] 3652 	mov	a,_bp
      00186B 24 FD            [12] 3653 	add	a,#0xfd
      00186D F8               [12] 3654 	mov	r0,a
      00186E 76 0E            [12] 3655 	mov	@r0,#0x0e
      001870 80 2D            [24] 3656 	sjmp	00132$
      001872                       3657 00122$:
                                   3658 ;	../UI_Manager/ui.c:912: state--;
      001872 E5 1A            [12] 3659 	mov	a,_bp
      001874 24 FD            [12] 3660 	add	a,#0xfd
      001876 F8               [12] 3661 	mov	r0,a
      001877 16               [12] 3662 	dec	@r0
                                   3663 ;	../UI_Manager/ui.c:915: break;
                                   3664 ;	../UI_Manager/ui.c:916: default: 
      001878 80 25            [24] 3665 	sjmp	00132$
      00187A                       3666 00127$:
                                   3667 ;	../UI_Manager/ui.c:917: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
      00187A E5 1A            [12] 3668 	mov	a,_bp
      00187C 24 FD            [12] 3669 	add	a,#0xfd
      00187E F8               [12] 3670 	mov	r0,a
      00187F E6               [12] 3671 	mov	a,@r0
      001880 24 F1            [12] 3672 	add	a,#0xff - 0x0e
      001882 50 14            [24] 3673 	jnc	00128$
      001884 E5 1A            [12] 3674 	mov	a,_bp
      001886 24 FD            [12] 3675 	add	a,#0xfd
      001888 F8               [12] 3676 	mov	r0,a
      001889 B6 14 00         [24] 3677 	cjne	@r0,#0x14,00201$
      00188C                       3678 00201$:
      00188C 40 11            [24] 3679 	jc	00132$
      00188E E5 1A            [12] 3680 	mov	a,_bp
      001890 24 FD            [12] 3681 	add	a,#0xfd
      001892 F8               [12] 3682 	mov	r0,a
      001893 E6               [12] 3683 	mov	a,@r0
      001894 24 EA            [12] 3684 	add	a,#0xff - 0x15
      001896 40 07            [24] 3685 	jc	00132$
      001898                       3686 00128$:
                                   3687 ;	../UI_Manager/ui.c:918: state = IDLE_STATE;
      001898 E5 1A            [12] 3688 	mov	a,_bp
      00189A 24 FD            [12] 3689 	add	a,#0xfd
      00189C F8               [12] 3690 	mov	r0,a
      00189D 76 00            [12] 3691 	mov	@r0,#0x00
                                   3692 ;	../UI_Manager/ui.c:921: }
      00189F                       3693 00132$:
                                   3694 ;	../UI_Manager/ui.c:923: State = state;
      00189F E5 1A            [12] 3695 	mov	a,_bp
      0018A1 24 FD            [12] 3696 	add	a,#0xfd
      0018A3 F8               [12] 3697 	mov	r0,a
      0018A4 86 08            [24] 3698 	mov	_State,@r0
                                   3699 ;	../UI_Manager/ui.c:924: }
      0018A6 D0 1A            [24] 3700 	pop	_bp
      0018A8 22               [24] 3701 	ret
                                   3702 ;------------------------------------------------------------
                                   3703 ;Allocation info for local variables in function 'get_ui_state'
                                   3704 ;------------------------------------------------------------
                                   3705 ;	../UI_Manager/ui.c:926: uint8_t get_ui_state(){
                                   3706 ;	-----------------------------------------
                                   3707 ;	 function get_ui_state
                                   3708 ;	-----------------------------------------
      0018A9                       3709 _get_ui_state:
                                   3710 ;	../UI_Manager/ui.c:927: return State;
      0018A9 85 08 82         [24] 3711 	mov	dpl,_State
                                   3712 ;	../UI_Manager/ui.c:928: }
      0018AC 22               [24] 3713 	ret
                                   3714 ;------------------------------------------------------------
                                   3715 ;Allocation info for local variables in function 'getString'
                                   3716 ;------------------------------------------------------------
                                   3717 ;index                     Allocated to registers r7 
                                   3718 ;------------------------------------------------------------
                                   3719 ;	../UI_Manager/ui.c:930: char* getString(uint8_t index){
                                   3720 ;	-----------------------------------------
                                   3721 ;	 function getString
                                   3722 ;	-----------------------------------------
      0018AD                       3723 _getString:
      0018AD AF 82            [24] 3724 	mov	r7,dpl
                                   3725 ;	../UI_Manager/ui.c:931: switch (index)
      0018AF 8F 06            [24] 3726 	mov	ar6,r7
      0018B1 BE 00 03         [24] 3727 	cjne	r6,#0x00,00309$
      0018B4 02 19 AA         [24] 3728 	ljmp	00101$
      0018B7                       3729 00309$:
      0018B7 BE 01 03         [24] 3730 	cjne	r6,#0x01,00310$
      0018BA 02 19 B1         [24] 3731 	ljmp	00102$
      0018BD                       3732 00310$:
      0018BD BF 02 03         [24] 3733 	cjne	r7,#0x02,00311$
      0018C0 02 19 B8         [24] 3734 	ljmp	00103$
      0018C3                       3735 00311$:
      0018C3 BF 14 03         [24] 3736 	cjne	r7,#0x14,00312$
      0018C6 02 19 BF         [24] 3737 	ljmp	00104$
      0018C9                       3738 00312$:
      0018C9 BF 15 03         [24] 3739 	cjne	r7,#0x15,00313$
      0018CC 02 19 C6         [24] 3740 	ljmp	00105$
      0018CF                       3741 00313$:
      0018CF BF 16 03         [24] 3742 	cjne	r7,#0x16,00314$
      0018D2 02 19 CD         [24] 3743 	ljmp	00106$
      0018D5                       3744 00314$:
      0018D5 BF 17 03         [24] 3745 	cjne	r7,#0x17,00315$
      0018D8 02 19 D4         [24] 3746 	ljmp	00107$
      0018DB                       3747 00315$:
      0018DB BF 18 03         [24] 3748 	cjne	r7,#0x18,00316$
      0018DE 02 19 E2         [24] 3749 	ljmp	00109$
      0018E1                       3750 00316$:
      0018E1 BF 19 03         [24] 3751 	cjne	r7,#0x19,00317$
      0018E4 02 19 E9         [24] 3752 	ljmp	00110$
      0018E7                       3753 00317$:
      0018E7 BF 1A 03         [24] 3754 	cjne	r7,#0x1a,00318$
      0018EA 02 19 DB         [24] 3755 	ljmp	00108$
      0018ED                       3756 00318$:
      0018ED BF 28 03         [24] 3757 	cjne	r7,#0x28,00319$
      0018F0 02 1A 91         [24] 3758 	ljmp	00134$
      0018F3                       3759 00319$:
      0018F3 BF 29 03         [24] 3760 	cjne	r7,#0x29,00320$
      0018F6 02 1A 98         [24] 3761 	ljmp	00135$
      0018F9                       3762 00320$:
      0018F9 BF 2A 03         [24] 3763 	cjne	r7,#0x2a,00321$
      0018FC 02 1A 9F         [24] 3764 	ljmp	00136$
      0018FF                       3765 00321$:
      0018FF BF 2B 03         [24] 3766 	cjne	r7,#0x2b,00322$
      001902 02 1A A6         [24] 3767 	ljmp	00137$
      001905                       3768 00322$:
      001905 BF 2C 03         [24] 3769 	cjne	r7,#0x2c,00323$
      001908 02 1A AD         [24] 3770 	ljmp	00138$
      00190B                       3771 00323$:
      00190B BF 2D 03         [24] 3772 	cjne	r7,#0x2d,00324$
      00190E 02 1A B4         [24] 3773 	ljmp	00139$
      001911                       3774 00324$:
      001911 BF 2E 03         [24] 3775 	cjne	r7,#0x2e,00325$
      001914 02 1A BB         [24] 3776 	ljmp	00140$
      001917                       3777 00325$:
      001917 BF 2F 03         [24] 3778 	cjne	r7,#0x2f,00326$
      00191A 02 1A C2         [24] 3779 	ljmp	00141$
      00191D                       3780 00326$:
      00191D BF 3C 03         [24] 3781 	cjne	r7,#0x3c,00327$
      001920 02 1A 0C         [24] 3782 	ljmp	00115$
      001923                       3783 00327$:
      001923 BF 3D 03         [24] 3784 	cjne	r7,#0x3d,00328$
      001926 02 1A 13         [24] 3785 	ljmp	00116$
      001929                       3786 00328$:
      001929 BF 3E 03         [24] 3787 	cjne	r7,#0x3e,00329$
      00192C 02 1A 1A         [24] 3788 	ljmp	00117$
      00192F                       3789 00329$:
      00192F BF 3F 03         [24] 3790 	cjne	r7,#0x3f,00330$
      001932 02 1A 21         [24] 3791 	ljmp	00118$
      001935                       3792 00330$:
      001935 BF 40 03         [24] 3793 	cjne	r7,#0x40,00331$
      001938 02 1A 28         [24] 3794 	ljmp	00119$
      00193B                       3795 00331$:
      00193B BF 41 03         [24] 3796 	cjne	r7,#0x41,00332$
      00193E 02 1A 2F         [24] 3797 	ljmp	00120$
      001941                       3798 00332$:
      001941 BF 42 03         [24] 3799 	cjne	r7,#0x42,00333$
      001944 02 1A 36         [24] 3800 	ljmp	00121$
      001947                       3801 00333$:
      001947 BF 43 03         [24] 3802 	cjne	r7,#0x43,00334$
      00194A 02 1A 3D         [24] 3803 	ljmp	00122$
      00194D                       3804 00334$:
      00194D BF 44 03         [24] 3805 	cjne	r7,#0x44,00335$
      001950 02 1A 44         [24] 3806 	ljmp	00123$
      001953                       3807 00335$:
      001953 BF 45 03         [24] 3808 	cjne	r7,#0x45,00336$
      001956 02 1A 4B         [24] 3809 	ljmp	00124$
      001959                       3810 00336$:
      001959 BF 46 03         [24] 3811 	cjne	r7,#0x46,00337$
      00195C 02 1A 52         [24] 3812 	ljmp	00125$
      00195F                       3813 00337$:
      00195F BF 47 03         [24] 3814 	cjne	r7,#0x47,00338$
      001962 02 1A 59         [24] 3815 	ljmp	00126$
      001965                       3816 00338$:
      001965 BF 48 03         [24] 3817 	cjne	r7,#0x48,00339$
      001968 02 1A 60         [24] 3818 	ljmp	00127$
      00196B                       3819 00339$:
      00196B BF 50 03         [24] 3820 	cjne	r7,#0x50,00340$
      00196E 02 1A 67         [24] 3821 	ljmp	00128$
      001971                       3822 00340$:
      001971 BF 51 03         [24] 3823 	cjne	r7,#0x51,00341$
      001974 02 1A 6E         [24] 3824 	ljmp	00129$
      001977                       3825 00341$:
      001977 BF 52 03         [24] 3826 	cjne	r7,#0x52,00342$
      00197A 02 1A 75         [24] 3827 	ljmp	00130$
      00197D                       3828 00342$:
      00197D BF 64 03         [24] 3829 	cjne	r7,#0x64,00343$
      001980 02 1A 7C         [24] 3830 	ljmp	00131$
      001983                       3831 00343$:
      001983 BF 65 03         [24] 3832 	cjne	r7,#0x65,00344$
      001986 02 1A 83         [24] 3833 	ljmp	00132$
      001989                       3834 00344$:
      001989 BF 66 03         [24] 3835 	cjne	r7,#0x66,00345$
      00198C 02 1A 8A         [24] 3836 	ljmp	00133$
      00198F                       3837 00345$:
      00198F BF CE 03         [24] 3838 	cjne	r7,#0xce,00346$
      001992 02 19 F0         [24] 3839 	ljmp	00111$
      001995                       3840 00346$:
      001995 BF CF 03         [24] 3841 	cjne	r7,#0xcf,00347$
      001998 02 19 F7         [24] 3842 	ljmp	00112$
      00199B                       3843 00347$:
      00199B BF D0 03         [24] 3844 	cjne	r7,#0xd0,00348$
      00199E 02 19 FE         [24] 3845 	ljmp	00113$
      0019A1                       3846 00348$:
      0019A1 BF D1 03         [24] 3847 	cjne	r7,#0xd1,00349$
      0019A4 02 1A 05         [24] 3848 	ljmp	00114$
      0019A7                       3849 00349$:
      0019A7 02 1A C9         [24] 3850 	ljmp	00142$
                                   3851 ;	../UI_Manager/ui.c:933: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
      0019AA                       3852 00101$:
                                   3853 ;	../UI_Manager/ui.c:934: return "Wimpy";
      0019AA 90 38 E1         [24] 3854 	mov	dptr,#___str_32
      0019AD 75 F0 80         [24] 3855 	mov	b,#0x80
      0019B0 22               [24] 3856 	ret
                                   3857 ;	../UI_Manager/ui.c:935: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
      0019B1                       3858 00102$:
                                   3859 ;	../UI_Manager/ui.c:936: return "Mild";
      0019B1 90 38 E7         [24] 3860 	mov	dptr,#___str_33
      0019B4 75 F0 80         [24] 3861 	mov	b,#0x80
      0019B7 22               [24] 3862 	ret
                                   3863 ;	../UI_Manager/ui.c:937: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
      0019B8                       3864 00103$:
                                   3865 ;	../UI_Manager/ui.c:938: return "Blazin";
      0019B8 90 38 EC         [24] 3866 	mov	dptr,#___str_34
      0019BB 75 F0 80         [24] 3867 	mov	b,#0x80
      0019BE 22               [24] 3868 	ret
                                   3869 ;	../UI_Manager/ui.c:940: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
      0019BF                       3870 00104$:
                                   3871 ;	../UI_Manager/ui.c:941: return "Off";
      0019BF 90 38 84         [24] 3872 	mov	dptr,#___str_23
      0019C2 75 F0 80         [24] 3873 	mov	b,#0x80
      0019C5 22               [24] 3874 	ret
                                   3875 ;	../UI_Manager/ui.c:942: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
      0019C6                       3876 00105$:
                                   3877 ;	../UI_Manager/ui.c:943: return "Rainbow";
      0019C6 90 38 F3         [24] 3878 	mov	dptr,#___str_35
      0019C9 75 F0 80         [24] 3879 	mov	b,#0x80
      0019CC 22               [24] 3880 	ret
                                   3881 ;	../UI_Manager/ui.c:944: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
      0019CD                       3882 00106$:
                                   3883 ;	../UI_Manager/ui.c:945: return "Fire";
      0019CD 90 38 FB         [24] 3884 	mov	dptr,#___str_36
      0019D0 75 F0 80         [24] 3885 	mov	b,#0x80
      0019D3 22               [24] 3886 	ret
                                   3887 ;	../UI_Manager/ui.c:946: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
      0019D4                       3888 00107$:
                                   3889 ;	../UI_Manager/ui.c:947: return "Water";
      0019D4 90 39 00         [24] 3890 	mov	dptr,#___str_37
      0019D7 75 F0 80         [24] 3891 	mov	b,#0x80
      0019DA 22               [24] 3892 	ret
                                   3893 ;	../UI_Manager/ui.c:948: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
      0019DB                       3894 00108$:
                                   3895 ;	../UI_Manager/ui.c:949: return "Storm";
      0019DB 90 39 06         [24] 3896 	mov	dptr,#___str_38
      0019DE 75 F0 80         [24] 3897 	mov	b,#0x80
      0019E1 22               [24] 3898 	ret
                                   3899 ;	../UI_Manager/ui.c:950: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
      0019E2                       3900 00109$:
                                   3901 ;	../UI_Manager/ui.c:951: return "Acid";
      0019E2 90 39 0C         [24] 3902 	mov	dptr,#___str_39
      0019E5 75 F0 80         [24] 3903 	mov	b,#0x80
      0019E8 22               [24] 3904 	ret
                                   3905 ;	../UI_Manager/ui.c:952: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
      0019E9                       3906 00110$:
                                   3907 ;	../UI_Manager/ui.c:953: return "Ether";
      0019E9 90 39 11         [24] 3908 	mov	dptr,#___str_40
      0019EC 75 F0 80         [24] 3909 	mov	b,#0x80
      0019EF 22               [24] 3910 	ret
                                   3911 ;	../UI_Manager/ui.c:955: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
      0019F0                       3912 00111$:
                                   3913 ;	../UI_Manager/ui.c:956: return "Red Level";
      0019F0 90 39 17         [24] 3914 	mov	dptr,#___str_41
      0019F3 75 F0 80         [24] 3915 	mov	b,#0x80
      0019F6 22               [24] 3916 	ret
                                   3917 ;	../UI_Manager/ui.c:957: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
      0019F7                       3918 00112$:
                                   3919 ;	../UI_Manager/ui.c:958: return "Green Level";
      0019F7 90 39 21         [24] 3920 	mov	dptr,#___str_42
      0019FA 75 F0 80         [24] 3921 	mov	b,#0x80
      0019FD 22               [24] 3922 	ret
                                   3923 ;	../UI_Manager/ui.c:959: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
      0019FE                       3924 00113$:
                                   3925 ;	../UI_Manager/ui.c:960: return "Blue Level";
      0019FE 90 39 2D         [24] 3926 	mov	dptr,#___str_43
      001A01 75 F0 80         [24] 3927 	mov	b,#0x80
      001A04 22               [24] 3928 	ret
                                   3929 ;	../UI_Manager/ui.c:961: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
      001A05                       3930 00114$:
                                   3931 ;	../UI_Manager/ui.c:962: return "Strobe Level";
      001A05 90 39 38         [24] 3932 	mov	dptr,#___str_44
      001A08 75 F0 80         [24] 3933 	mov	b,#0x80
      001A0B 22               [24] 3934 	ret
                                   3935 ;	../UI_Manager/ui.c:964: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
      001A0C                       3936 00115$:
                                   3937 ;	../UI_Manager/ui.c:965: return "No Action";
      001A0C 90 39 45         [24] 3938 	mov	dptr,#___str_45
      001A0F 75 F0 80         [24] 3939 	mov	b,#0x80
      001A12 22               [24] 3940 	ret
                                   3941 ;	../UI_Manager/ui.c:966: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      001A13                       3942 00116$:
                                   3943 ;	../UI_Manager/ui.c:967: return "Choose Macro";
      001A13 90 39 4F         [24] 3944 	mov	dptr,#___str_46
      001A16 75 F0 80         [24] 3945 	mov	b,#0x80
      001A19 22               [24] 3946 	ret
                                   3947 ;	../UI_Manager/ui.c:968: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
      001A1A                       3948 00117$:
                                   3949 ;	../UI_Manager/ui.c:969: return "Red";
      001A1A 90 39 5C         [24] 3950 	mov	dptr,#___str_47
      001A1D 75 F0 80         [24] 3951 	mov	b,#0x80
      001A20 22               [24] 3952 	ret
                                   3953 ;	../UI_Manager/ui.c:970: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
      001A21                       3954 00118$:
                                   3955 ;	../UI_Manager/ui.c:971: return "Yellow";
      001A21 90 39 60         [24] 3956 	mov	dptr,#___str_48
      001A24 75 F0 80         [24] 3957 	mov	b,#0x80
      001A27 22               [24] 3958 	ret
                                   3959 ;	../UI_Manager/ui.c:972: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
      001A28                       3960 00119$:
                                   3961 ;	../UI_Manager/ui.c:973: return "Green";
      001A28 90 39 67         [24] 3962 	mov	dptr,#___str_49
      001A2B 75 F0 80         [24] 3963 	mov	b,#0x80
      001A2E 22               [24] 3964 	ret
                                   3965 ;	../UI_Manager/ui.c:974: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
      001A2F                       3966 00120$:
                                   3967 ;	../UI_Manager/ui.c:975: return "Cyan";
      001A2F 90 39 6D         [24] 3968 	mov	dptr,#___str_50
      001A32 75 F0 80         [24] 3969 	mov	b,#0x80
      001A35 22               [24] 3970 	ret
                                   3971 ;	../UI_Manager/ui.c:976: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
      001A36                       3972 00121$:
                                   3973 ;	../UI_Manager/ui.c:977: return "Blue";
      001A36 90 39 72         [24] 3974 	mov	dptr,#___str_51
      001A39 75 F0 80         [24] 3975 	mov	b,#0x80
      001A3C 22               [24] 3976 	ret
                                   3977 ;	../UI_Manager/ui.c:978: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
      001A3D                       3978 00122$:
                                   3979 ;	../UI_Manager/ui.c:979: return "Magenta";
      001A3D 90 39 77         [24] 3980 	mov	dptr,#___str_52
      001A40 75 F0 80         [24] 3981 	mov	b,#0x80
      001A43 22               [24] 3982 	ret
                                   3983 ;	../UI_Manager/ui.c:980: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
      001A44                       3984 00123$:
                                   3985 ;	../UI_Manager/ui.c:981: return "Strobe Slow";
      001A44 90 39 7F         [24] 3986 	mov	dptr,#___str_53
      001A47 75 F0 80         [24] 3987 	mov	b,#0x80
      001A4A 22               [24] 3988 	ret
                                   3989 ;	../UI_Manager/ui.c:982: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      001A4B                       3990 00124$:
                                   3991 ;	../UI_Manager/ui.c:983: return "Strobe Medium";
      001A4B 90 39 8B         [24] 3992 	mov	dptr,#___str_54
      001A4E 75 F0 80         [24] 3993 	mov	b,#0x80
      001A51 22               [24] 3994 	ret
                                   3995 ;	../UI_Manager/ui.c:984: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
      001A52                       3996 00125$:
                                   3997 ;	../UI_Manager/ui.c:985: return "Strobe Fast";
      001A52 90 39 99         [24] 3998 	mov	dptr,#___str_55
      001A55 75 F0 80         [24] 3999 	mov	b,#0x80
      001A58 22               [24] 4000 	ret
                                   4001 ;	../UI_Manager/ui.c:986: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
      001A59                       4002 00126$:
                                   4003 ;	../UI_Manager/ui.c:987: return "Blackout";
      001A59 90 39 A5         [24] 4004 	mov	dptr,#___str_56
      001A5C 75 F0 80         [24] 4005 	mov	b,#0x80
      001A5F 22               [24] 4006 	ret
                                   4007 ;	../UI_Manager/ui.c:988: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
      001A60                       4008 00127$:
                                   4009 ;	../UI_Manager/ui.c:989: return "Whiteout";         
      001A60 90 39 AE         [24] 4010 	mov	dptr,#___str_57
      001A63 75 F0 80         [24] 4011 	mov	b,#0x80
      001A66 22               [24] 4012 	ret
                                   4013 ;	../UI_Manager/ui.c:991: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
      001A67                       4014 00128$:
                                   4015 ;	../UI_Manager/ui.c:992: return "Slot 1";   
      001A67 90 39 B7         [24] 4016 	mov	dptr,#___str_58
      001A6A 75 F0 80         [24] 4017 	mov	b,#0x80
      001A6D 22               [24] 4018 	ret
                                   4019 ;	../UI_Manager/ui.c:993: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
      001A6E                       4020 00129$:
                                   4021 ;	../UI_Manager/ui.c:994: return "Slot 2";   
      001A6E 90 39 BE         [24] 4022 	mov	dptr,#___str_59
      001A71 75 F0 80         [24] 4023 	mov	b,#0x80
      001A74 22               [24] 4024 	ret
                                   4025 ;	../UI_Manager/ui.c:995: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
      001A75                       4026 00130$:
                                   4027 ;	../UI_Manager/ui.c:996: return "Slot 3"; 
      001A75 90 39 C5         [24] 4028 	mov	dptr,#___str_60
      001A78 75 F0 80         [24] 4029 	mov	b,#0x80
      001A7B 22               [24] 4030 	ret
                                   4031 ;	../UI_Manager/ui.c:998: case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
      001A7C                       4032 00131$:
                                   4033 ;	../UI_Manager/ui.c:999: return "11 All";     
      001A7C 90 39 CC         [24] 4034 	mov	dptr,#___str_61
      001A7F 75 F0 80         [24] 4035 	mov	b,#0x80
      001A82 22               [24] 4036 	ret
                                   4037 ;	../UI_Manager/ui.c:1000: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
      001A83                       4038 00132$:
                                   4039 ;	../UI_Manager/ui.c:1001: return " 3 Fog + Macro";   
      001A83 90 39 D3         [24] 4040 	mov	dptr,#___str_62
      001A86 75 F0 80         [24] 4041 	mov	b,#0x80
                                   4042 ;	../UI_Manager/ui.c:1002: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
      001A89 22               [24] 4043 	ret
      001A8A                       4044 00133$:
                                   4045 ;	../UI_Manager/ui.c:1003: return " 1 Fog";    
      001A8A 90 39 E2         [24] 4046 	mov	dptr,#___str_63
      001A8D 75 F0 80         [24] 4047 	mov	b,#0x80
                                   4048 ;	../UI_Manager/ui.c:1005: case SECRET_STRING_OFFSET + 0:
      001A90 22               [24] 4049 	ret
      001A91                       4050 00134$:
                                   4051 ;	../UI_Manager/ui.c:1006: return "0x486F6C6D6573";
      001A91 90 39 E9         [24] 4052 	mov	dptr,#___str_64
      001A94 75 F0 80         [24] 4053 	mov	b,#0x80
                                   4054 ;	../UI_Manager/ui.c:1007: case SECRET_STRING_OFFSET + 1:
      001A97 22               [24] 4055 	ret
      001A98                       4056 00135$:
                                   4057 ;	../UI_Manager/ui.c:1008: return "& 576174736F6E";
      001A98 90 39 F8         [24] 4058 	mov	dptr,#___str_65
      001A9B 75 F0 80         [24] 4059 	mov	b,#0x80
                                   4060 ;	../UI_Manager/ui.c:1009: case SECRET_STRING_OFFSET + 2:
      001A9E 22               [24] 4061 	ret
      001A9F                       4062 00136$:
                                   4063 ;	../UI_Manager/ui.c:1010: return "626F74684F776E41";
      001A9F 90 3A 07         [24] 4064 	mov	dptr,#___str_66
      001AA2 75 F0 80         [24] 4065 	mov	b,#0x80
                                   4066 ;	../UI_Manager/ui.c:1011: case SECRET_STRING_OFFSET + 3:
      001AA5 22               [24] 4067 	ret
      001AA6                       4068 00137$:
                                   4069 ;	../UI_Manager/ui.c:1012: return "536E6F7762616C6C";
      001AA6 90 3A 18         [24] 4070 	mov	dptr,#___str_67
      001AA9 75 F0 80         [24] 4071 	mov	b,#0x80
                                   4072 ;	../UI_Manager/ui.c:1013: case SECRET_STRING_OFFSET + 4:
      001AAC 22               [24] 4073 	ret
      001AAD                       4074 00138$:
                                   4075 ;	../UI_Manager/ui.c:1014: return "4D6F726961727479";
      001AAD 90 3A 29         [24] 4076 	mov	dptr,#___str_68
      001AB0 75 F0 80         [24] 4077 	mov	b,#0x80
                                   4078 ;	../UI_Manager/ui.c:1015: case SECRET_STRING_OFFSET + 5:
      001AB3 22               [24] 4079 	ret
      001AB4                       4080 00139$:
                                   4081 ;	../UI_Manager/ui.c:1016: return "646F65734E6F74 ;";
      001AB4 90 3A 3A         [24] 4082 	mov	dptr,#___str_69
      001AB7 75 F0 80         [24] 4083 	mov	b,#0x80
                                   4084 ;	../UI_Manager/ui.c:1017: case SECRET_STRING_OFFSET + 6:
      001ABA 22               [24] 4085 	ret
      001ABB                       4086 00140$:
                                   4087 ;	../UI_Manager/ui.c:1018: return "FirmwareCrafter:";
      001ABB 90 3A 4B         [24] 4088 	mov	dptr,#___str_70
      001ABE 75 F0 80         [24] 4089 	mov	b,#0x80
                                   4090 ;	../UI_Manager/ui.c:1019: case SECRET_STRING_OFFSET + 7:
      001AC1 22               [24] 4091 	ret
      001AC2                       4092 00141$:
                                   4093 ;	../UI_Manager/ui.c:1020: return "ChristianKrueger";
      001AC2 90 3A 5C         [24] 4094 	mov	dptr,#___str_71
      001AC5 75 F0 80         [24] 4095 	mov	b,#0x80
                                   4096 ;	../UI_Manager/ui.c:1021: }
      001AC8 22               [24] 4097 	ret
      001AC9                       4098 00142$:
                                   4099 ;	../UI_Manager/ui.c:1023: return 0;
      001AC9 90 00 00         [24] 4100 	mov	dptr,#0x0000
      001ACC 75 F0 00         [24] 4101 	mov	b,#0x00
                                   4102 ;	../UI_Manager/ui.c:1024: }
      001ACF 22               [24] 4103 	ret
                                   4104 	.area CSEG    (CODE)
                                   4105 	.area CONST   (CODE)
      00377C                       4106 ___str_0:
      00377C 54 61 6E 6B 20 4C 69  4107 	.ascii "Tank Lights Off"
             67 68 74 73 20 4F 66
             66
      00378B 00                    4108 	.db 0x00
      00378C                       4109 ___str_1:
      00378C 54 61 6E 6B 20 4C 69  4110 	.ascii "Tank Lights On"
             67 68 74 73 20 4F 6E
      00379A 00                    4111 	.db 0x00
      00379B                       4112 ___str_2:
      00379B 46 75 6E 2B 4D 61 6E  4113 	.ascii "Fun+Man to Undo"
             20 74 6F 20 55 6E 64
             6F
      0037AA 00                    4114 	.db 0x00
      0037AB                       4115 ___str_3:
      0037AB 48 65 61 74 65 72 20  4116 	.ascii "Heater Off"
             4F 66 66
      0037B5 00                    4117 	.db 0x00
      0037B6                       4118 ___str_4:
      0037B6 48 65 61 74 65 72 20  4119 	.ascii "Heater On"
             4F 6E
      0037BF 00                    4120 	.db 0x00
      0037C0                       4121 ___str_5:
      0037C0 42 75 72 73 74 2B 55  4122 	.ascii "Burst+Up to Undo"
             70 20 74 6F 20 55 6E
             64 6F
      0037D0 00                    4123 	.db 0x00
      0037D1                       4124 ___str_6:
      0037D1 41 74 6D 6F 73 46 45  4125 	.ascii "AtmosFEAR 221B"
             41 52 20 32 32 31 42
      0037DF 00                    4126 	.db 0x00
      0037E0                       4127 ___str_7:
      0037E0 42 79 20 42 6C 69 7A  4128 	.ascii "By Blizzard Pro"
             7A 61 72 64 20 50 72
             6F
      0037EF 00                    4129 	.db 0x00
      0037F0                       4130 ___str_8:
      0037F0 50 43 20 4C 6F 61 64  4131 	.ascii "PC Load Letter"
             20 4C 65 74 74 65 72
      0037FE 00                    4132 	.db 0x00
      0037FF                       4133 ___str_9:
      0037FF 42 75 72 73 74 20 74  4134 	.ascii "Burst to Refill"
             6F 20 52 65 66 69 6C
             6C
      00380E 00                    4135 	.db 0x00
      00380F                       4136 ___str_10:
      00380F 4D 61 6E 75 61 6C 20  4137 	.ascii "Manual Mode"
             4D 6F 64 65
      00381A 00                    4138 	.db 0x00
      00381B                       4139 ___str_11:
      00381B 41 64 64 72           4140 	.ascii "Addr"
      00381F 00                    4141 	.db 0x00
      003820                       4142 ___str_12:
      003820 4D 6F 64 65           4143 	.ascii "Mode"
      003824 00                    4144 	.db 0x00
      003825                       4145 ___str_13:
      003825 44 4D 58 20 4F 6B     4146 	.ascii "DMX Ok"
      00382B 00                    4147 	.db 0x00
      00382C                       4148 ___str_14:
      00382C 4E 6F 20 44 4D 58     4149 	.ascii "No DMX"
      003832 00                    4150 	.db 0x00
      003833                       4151 ___str_15:
      003833 49 6E 74 65 72 76 61  4152 	.ascii "Interval"
             6C
      00383B 00                    4153 	.db 0x00
      00383C                       4154 ___str_16:
      00383C 44 75 72 61 74 69 6F  4155 	.ascii "Duration"
             6E
      003844 00                    4156 	.db 0x00
      003845                       4157 ___str_17:
      003845 46 6F 67 20 4C 65 76  4158 	.ascii "Fog Level"
             65 6C
      00384E 00                    4159 	.db 0x00
      00384F                       4160 ___str_18:
      00384F 46 6F 67 20 49 6E 74  4161 	.ascii "Fog Interval"
             65 72 76 61 6C
      00385B 00                    4162 	.db 0x00
      00385C                       4163 ___str_19:
      00385C 53 65 63 6F 6E 64 73  4164 	.ascii "Seconds"
      003863 00                    4165 	.db 0x00
      003864                       4166 ___str_20:
      003864 46 6F 67 20 44 75 72  4167 	.ascii "Fog Duration"
             61 74 69 6F 6E
      003870 00                    4168 	.db 0x00
      003871                       4169 ___str_21:
      003871 4D 61 63 72 6F 73     4170 	.ascii "Macros"
      003877 00                    4171 	.db 0x00
      003878                       4172 ___str_22:
      003878 4D 61 63 72 6F 20 53  4173 	.ascii "Macro Speed"
             70 65 65 64
      003883 00                    4174 	.db 0x00
      003884                       4175 ___str_23:
      003884 4F 66 66              4176 	.ascii "Off"
      003887 00                    4177 	.db 0x00
      003888                       4178 ___str_24:
      003888 00                    4179 	.db 0x00
      003889                       4180 ___str_25:
      003889 52 65 6D 6F 74 65 20  4181 	.ascii "Remote X Action"
             58 20 41 63 74 69 6F
             6E
      003898 00                    4182 	.db 0x00
      003899                       4183 ___str_26:
      003899 53 61 76 65 64 21     4184 	.ascii "Saved!"
      00389F 00                    4185 	.db 0x00
      0038A0                       4186 ___str_27:
      0038A0 4C 6F 61 64 65 64 21  4187 	.ascii "Loaded!"
      0038A7 00                    4188 	.db 0x00
      0038A8                       4189 ___str_28:
      0038A8 53 61 76 65 20 53 65  4190 	.ascii "Save Settings"
             74 74 69 6E 67 73
      0038B5 00                    4191 	.db 0x00
      0038B6                       4192 ___str_29:
      0038B6 4C 6F 61 64 20 53 65  4193 	.ascii "Load Settings"
             74 74 69 6E 67 73
      0038C3 00                    4194 	.db 0x00
      0038C4                       4195 ___str_30:
      0038C4 44 4D 58 20 41 64 64  4196 	.ascii "DMX Address"
             72 65 73 73
      0038CF 00                    4197 	.db 0x00
      0038D0                       4198 ___str_31:
      0038D0 44 4D 58 20 43 68 61  4199 	.ascii "DMX Channel Mode"
             6E 6E 65 6C 20 4D 6F
             64 65
      0038E0 00                    4200 	.db 0x00
      0038E1                       4201 ___str_32:
      0038E1 57 69 6D 70 79        4202 	.ascii "Wimpy"
      0038E6 00                    4203 	.db 0x00
      0038E7                       4204 ___str_33:
      0038E7 4D 69 6C 64           4205 	.ascii "Mild"
      0038EB 00                    4206 	.db 0x00
      0038EC                       4207 ___str_34:
      0038EC 42 6C 61 7A 69 6E     4208 	.ascii "Blazin"
      0038F2 00                    4209 	.db 0x00
      0038F3                       4210 ___str_35:
      0038F3 52 61 69 6E 62 6F 77  4211 	.ascii "Rainbow"
      0038FA 00                    4212 	.db 0x00
      0038FB                       4213 ___str_36:
      0038FB 46 69 72 65           4214 	.ascii "Fire"
      0038FF 00                    4215 	.db 0x00
      003900                       4216 ___str_37:
      003900 57 61 74 65 72        4217 	.ascii "Water"
      003905 00                    4218 	.db 0x00
      003906                       4219 ___str_38:
      003906 53 74 6F 72 6D        4220 	.ascii "Storm"
      00390B 00                    4221 	.db 0x00
      00390C                       4222 ___str_39:
      00390C 41 63 69 64           4223 	.ascii "Acid"
      003910 00                    4224 	.db 0x00
      003911                       4225 ___str_40:
      003911 45 74 68 65 72        4226 	.ascii "Ether"
      003916 00                    4227 	.db 0x00
      003917                       4228 ___str_41:
      003917 52 65 64 20 4C 65 76  4229 	.ascii "Red Level"
             65 6C
      003920 00                    4230 	.db 0x00
      003921                       4231 ___str_42:
      003921 47 72 65 65 6E 20 4C  4232 	.ascii "Green Level"
             65 76 65 6C
      00392C 00                    4233 	.db 0x00
      00392D                       4234 ___str_43:
      00392D 42 6C 75 65 20 4C 65  4235 	.ascii "Blue Level"
             76 65 6C
      003937 00                    4236 	.db 0x00
      003938                       4237 ___str_44:
      003938 53 74 72 6F 62 65 20  4238 	.ascii "Strobe Level"
             4C 65 76 65 6C
      003944 00                    4239 	.db 0x00
      003945                       4240 ___str_45:
      003945 4E 6F 20 41 63 74 69  4241 	.ascii "No Action"
             6F 6E
      00394E 00                    4242 	.db 0x00
      00394F                       4243 ___str_46:
      00394F 43 68 6F 6F 73 65 20  4244 	.ascii "Choose Macro"
             4D 61 63 72 6F
      00395B 00                    4245 	.db 0x00
      00395C                       4246 ___str_47:
      00395C 52 65 64              4247 	.ascii "Red"
      00395F 00                    4248 	.db 0x00
      003960                       4249 ___str_48:
      003960 59 65 6C 6C 6F 77     4250 	.ascii "Yellow"
      003966 00                    4251 	.db 0x00
      003967                       4252 ___str_49:
      003967 47 72 65 65 6E        4253 	.ascii "Green"
      00396C 00                    4254 	.db 0x00
      00396D                       4255 ___str_50:
      00396D 43 79 61 6E           4256 	.ascii "Cyan"
      003971 00                    4257 	.db 0x00
      003972                       4258 ___str_51:
      003972 42 6C 75 65           4259 	.ascii "Blue"
      003976 00                    4260 	.db 0x00
      003977                       4261 ___str_52:
      003977 4D 61 67 65 6E 74 61  4262 	.ascii "Magenta"
      00397E 00                    4263 	.db 0x00
      00397F                       4264 ___str_53:
      00397F 53 74 72 6F 62 65 20  4265 	.ascii "Strobe Slow"
             53 6C 6F 77
      00398A 00                    4266 	.db 0x00
      00398B                       4267 ___str_54:
      00398B 53 74 72 6F 62 65 20  4268 	.ascii "Strobe Medium"
             4D 65 64 69 75 6D
      003998 00                    4269 	.db 0x00
      003999                       4270 ___str_55:
      003999 53 74 72 6F 62 65 20  4271 	.ascii "Strobe Fast"
             46 61 73 74
      0039A4 00                    4272 	.db 0x00
      0039A5                       4273 ___str_56:
      0039A5 42 6C 61 63 6B 6F 75  4274 	.ascii "Blackout"
             74
      0039AD 00                    4275 	.db 0x00
      0039AE                       4276 ___str_57:
      0039AE 57 68 69 74 65 6F 75  4277 	.ascii "Whiteout"
             74
      0039B6 00                    4278 	.db 0x00
      0039B7                       4279 ___str_58:
      0039B7 53 6C 6F 74 20 31     4280 	.ascii "Slot 1"
      0039BD 00                    4281 	.db 0x00
      0039BE                       4282 ___str_59:
      0039BE 53 6C 6F 74 20 32     4283 	.ascii "Slot 2"
      0039C4 00                    4284 	.db 0x00
      0039C5                       4285 ___str_60:
      0039C5 53 6C 6F 74 20 33     4286 	.ascii "Slot 3"
      0039CB 00                    4287 	.db 0x00
      0039CC                       4288 ___str_61:
      0039CC 31 31 20 41 6C 6C     4289 	.ascii "11 All"
      0039D2 00                    4290 	.db 0x00
      0039D3                       4291 ___str_62:
      0039D3 20 33 20 46 6F 67 20  4292 	.ascii " 3 Fog + Macro"
             2B 20 4D 61 63 72 6F
      0039E1 00                    4293 	.db 0x00
      0039E2                       4294 ___str_63:
      0039E2 20 31 20 46 6F 67     4295 	.ascii " 1 Fog"
      0039E8 00                    4296 	.db 0x00
      0039E9                       4297 ___str_64:
      0039E9 30 78 34 38 36 46 36  4298 	.ascii "0x486F6C6D6573"
             43 36 44 36 35 37 33
      0039F7 00                    4299 	.db 0x00
      0039F8                       4300 ___str_65:
      0039F8 26 20 35 37 36 31 37  4301 	.ascii "& 576174736F6E"
             34 37 33 36 46 36 45
      003A06 00                    4302 	.db 0x00
      003A07                       4303 ___str_66:
      003A07 36 32 36 46 37 34 36  4304 	.ascii "626F74684F776E41"
             38 34 46 37 37 36 45
             34 31
      003A17 00                    4305 	.db 0x00
      003A18                       4306 ___str_67:
      003A18 35 33 36 45 36 46 37  4307 	.ascii "536E6F7762616C6C"
             37 36 32 36 31 36 43
             36 43
      003A28 00                    4308 	.db 0x00
      003A29                       4309 ___str_68:
      003A29 34 44 36 46 37 32 36  4310 	.ascii "4D6F726961727479"
             39 36 31 37 32 37 34
             37 39
      003A39 00                    4311 	.db 0x00
      003A3A                       4312 ___str_69:
      003A3A 36 34 36 46 36 35 37  4313 	.ascii "646F65734E6F74 ;"
             33 34 45 36 46 37 34
             20 3B
      003A4A 00                    4314 	.db 0x00
      003A4B                       4315 ___str_70:
      003A4B 46 69 72 6D 77 61 72  4316 	.ascii "FirmwareCrafter:"
             65 43 72 61 66 74 65
             72 3A
      003A5B 00                    4317 	.db 0x00
      003A5C                       4318 ___str_71:
      003A5C 43 68 72 69 73 74 69  4319 	.ascii "ChristianKrueger"
             61 6E 4B 72 75 65 67
             65 72
      003A6C 00                    4320 	.db 0x00
                                   4321 	.area XINIT   (CODE)
                                   4322 	.area CABS    (ABS,CODE)
