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
                                    109 	.globl _set_ui_state_PARM_2
                                    110 	.globl _tick_ui
                                    111 	.globl _idlePage
                                    112 	.globl _fogLevelPage
                                    113 	.globl _fogIntervalPage
                                    114 	.globl _fogDurationPage
                                    115 	.globl _macroPage
                                    116 	.globl _macroSpeedPage
                                    117 	.globl _colorPage
                                    118 	.globl _remotePage
                                    119 	.globl _saveLoadPage
                                    120 	.globl _dmxAddressPage
                                    121 	.globl _dmxChannelPage
                                    122 	.globl _set_ui_state
                                    123 	.globl _get_ui_state
                                    124 	.globl _getString
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           0000BF   130 _CHIPCON	=	0x00bf
                           0000B7   131 _PCLKSEL	=	0x00b7
                           000080   132 _P0	=	0x0080
                           000090   133 _P1	=	0x0090
                           0000A0   134 _P2	=	0x00a0
                           0000B0   135 _P3	=	0x00b0
                           0000A8   136 _IE	=	0x00a8
                           0000E8   137 _EIE	=	0x00e8
                           000091   138 _EXIF	=	0x0091
                           0000DA   139 _ADCSEL	=	0x00da
                           0000DB   140 _ADCVAL1	=	0x00db
                           0000DC   141 _ADCVAL2	=	0x00dc
                           0000D9   142 _P1_OPT	=	0x00d9
                           000098   143 _SCON	=	0x0098
                           0000CA   144 _RCAP2L	=	0x00ca
                           0000CB   145 _RCAP2H	=	0x00cb
                           0000C8   146 _T2CON	=	0x00c8
                           00009B   147 _TH3	=	0x009b
                           00009A   148 _TL3	=	0x009a
                           000099   149 _SBUF	=	0x0099
                           0000D3   150 _PWM_EA1	=	0x00d3
                           0000D4   151 _PWM_EA2	=	0x00d4
                           0000BD   152 _PWMDATA11H	=	0x00bd
                           0000BE   153 _PWMDATA11L	=	0x00be
                           0000B5   154 _PWMDATA14H	=	0x00b5
                           0000B6   155 _PWMDATA14L	=	0x00b6
                           0000AD   156 _PWMDATA17H	=	0x00ad
                           0000AE   157 _PWMDATA17L	=	0x00ae
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008E   160 _CKCON	=	0x008e
                           00008A   161 _TL0	=	0x008a
                           00008C   162 _TH0	=	0x008c
                           0000E4   163 _IAPEN	=	0x00e4
                           0000E5   164 _IAP_ADRL	=	0x00e5
                           0000E6   165 _IAP_ADRH	=	0x00e6
                                    166 ;--------------------------------------------------------
                                    167 ; special function bits
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0_0	=	0x0080
                           000081   172 _P0_1	=	0x0081
                           000082   173 _P0_2	=	0x0082
                           000083   174 _P0_3	=	0x0083
                           000084   175 _P0_4	=	0x0084
                           000085   176 _P0_5	=	0x0085
                           000086   177 _P0_6	=	0x0086
                           000087   178 _P0_7	=	0x0087
                           000090   179 _P1_0	=	0x0090
                           000091   180 _P1_1	=	0x0091
                           000092   181 _P1_2	=	0x0092
                           000093   182 _P1_3	=	0x0093
                           000094   183 _P1_4	=	0x0094
                           000095   184 _P1_5	=	0x0095
                           000096   185 _P1_6	=	0x0096
                           000097   186 _P1_7	=	0x0097
                           0000A0   187 _P2_0	=	0x00a0
                           0000A1   188 _P2_1	=	0x00a1
                           0000A2   189 _P2_2	=	0x00a2
                           0000A3   190 _P2_3	=	0x00a3
                           0000A4   191 _P2_4	=	0x00a4
                           0000A5   192 _P2_5	=	0x00a5
                           0000A6   193 _P2_6	=	0x00a6
                           0000A7   194 _P2_7	=	0x00a7
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000AF   203 _EA	=	0x00af
                           0000A9   204 _ET0	=	0x00a9
                           0000AC   205 _ES	=	0x00ac
                           000098   206 _RI	=	0x0098
                           000093   207 _SCK	=	0x0093
                           000095   208 _SER	=	0x0095
                           000092   209 _RCK	=	0x0092
                           00009F   210 _SM0	=	0x009f
                           00009E   211 _SM1	=	0x009e
                           00009D   212 _SM2	=	0x009d
                           00009C   213 _REN	=	0x009c
                           0000CD   214 _RCLK	=	0x00cd
                           0000CC   215 _TCLK	=	0x00cc
                           0000CB   216 _EXEN2	=	0x00cb
                           0000CA   217 _TR2	=	0x00ca
                           0000C9   218 _CT2	=	0x00c9
                           0000C8   219 _CPRL2	=	0x00c8
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _State:
      000008                        230 	.ds 1
      000009                        231 _Changed:
      000009                        232 	.ds 1
      00000A                        233 _changed:
      00000A                        234 	.ds 1
      00000B                        235 _tick_ui_bursting_65536_37:
      00000B                        236 	.ds 1
      00000C                        237 _tick_ui_delay_65536_37:
      00000C                        238 	.ds 4
      000010                        239 _idlePage_timer_65536_59:
      000010                        240 	.ds 1
      000011                        241 _idlePage_intervalOrDuration_65536_59:
      000011                        242 	.ds 1
      000012                        243 _idlePage_empty_65536_59:
      000012                        244 	.ds 1
      000013                        245 _idlePage_tock_65536_59:
      000013                        246 	.ds 1
      000014                        247 _idlePage_iconChange_65536_59:
      000014                        248 	.ds 1
      000015                        249 _idlePage_playing_65536_59:
      000015                        250 	.ds 1
      000016                        251 _saveLoadPage_slot_65536_141:
      000016                        252 	.ds 1
      000017                        253 _set_ui_state_PARM_2:
      000017                        254 	.ds 1
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 	.area	OSEG    (OVR,DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; indirectly addressable internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area ISEG    (DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area IABS    (ABS,DATA)
                                    267 	.area IABS    (ABS,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; bit data
                                    270 ;--------------------------------------------------------
                                    271 	.area BSEG    (BIT)
                                    272 ;--------------------------------------------------------
                                    273 ; paged external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area PSEG    (PAG,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XSEG    (XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XABS    (ABS,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external initialized ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XISEG   (XDATA)
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT0 (CODE)
                                    290 	.area GSINIT1 (CODE)
                                    291 	.area GSINIT2 (CODE)
                                    292 	.area GSINIT3 (CODE)
                                    293 	.area GSINIT4 (CODE)
                                    294 	.area GSINIT5 (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area CSEG    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; global & static initialisations
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 ;------------------------------------------------------------
                                    306 ;Allocation info for local variables in function 'tick_ui'
                                    307 ;------------------------------------------------------------
                                    308 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    309 ;action                    Allocated to registers r7 
                                    310 ;ss                        Allocated to registers r6 
                                    311 ;delay                     Allocated with name '_tick_ui_delay_65536_37'
                                    312 ;------------------------------------------------------------
                                    313 ;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
      0000A2 75 0B 00         [24]  314 	mov	_tick_ui_bursting_65536_37,#0x00
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'idlePage'
                                    317 ;------------------------------------------------------------
                                    318 ;timer                     Allocated with name '_idlePage_timer_65536_59'
                                    319 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
                                    320 ;empty                     Allocated with name '_idlePage_empty_65536_59'
                                    321 ;tock                      Allocated with name '_idlePage_tock_65536_59'
                                    322 ;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
                                    323 ;playing                   Allocated with name '_idlePage_playing_65536_59'
                                    324 ;temp                      Allocated to registers r7 
                                    325 ;------------------------------------------------------------
                                    326 ;	../UI_Manager/ui.c:210: static uint8_t timer = 0;
      0000A5 75 10 00         [24]  327 	mov	_idlePage_timer_65536_59,#0x00
                                    328 ;	../UI_Manager/ui.c:212: static uint8_t empty = 0x00;
      0000A8 75 12 00         [24]  329 	mov	_idlePage_empty_65536_59,#0x00
                                    330 ;	../UI_Manager/ui.c:213: static uint8_t tock = 0x00;
      0000AB 75 13 00         [24]  331 	mov	_idlePage_tock_65536_59,#0x00
                                    332 ;	../UI_Manager/ui.c:214: static uint8_t iconChange = 0x00;
      0000AE 75 14 00         [24]  333 	mov	_idlePage_iconChange_65536_59,#0x00
                                    334 ;	../UI_Manager/ui.c:215: static uint8_t playing = PAUSE;
      0000B1 75 15 00         [24]  335 	mov	_idlePage_playing_65536_59,#0x00
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'saveLoadPage'
                                    338 ;------------------------------------------------------------
                                    339 ;slot                      Allocated with name '_saveLoadPage_slot_65536_141'
                                    340 ;action                    Allocated to registers r7 
                                    341 ;------------------------------------------------------------
                                    342 ;	../UI_Manager/ui.c:742: static uint8_t slot = 0;
      0000B4 75 16 00         [24]  343 	mov	_saveLoadPage_slot_65536_141,#0x00
                                    344 ;	../UI_Manager/ui.c:12: static volatile uint8_t State = WELCOME_STATE;
      0000B7 75 08 45         [24]  345 	mov	_State,#0x45
                                    346 ;	../UI_Manager/ui.c:13: static volatile uint8_t Changed = CHANGE_SCREEN_X;
      0000BA 75 09 FF         [24]  347 	mov	_Changed,#0xff
                                    348 ;	../UI_Manager/ui.c:14: static volatile uint8_t changed = CHANGE_SCREEN_X;
      0000BD 75 0A FF         [24]  349 	mov	_changed,#0xff
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'tick_ui'
                                    361 ;------------------------------------------------------------
                                    362 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    363 ;action                    Allocated to registers r7 
                                    364 ;ss                        Allocated to registers r6 
                                    365 ;delay                     Allocated with name '_tick_ui_delay_65536_37'
                                    366 ;------------------------------------------------------------
                                    367 ;	../UI_Manager/ui.c:16: void tick_ui(void){
                                    368 ;	-----------------------------------------
                                    369 ;	 function tick_ui
                                    370 ;	-----------------------------------------
      0004F1                        371 _tick_ui:
                           000007   372 	ar7 = 0x07
                           000006   373 	ar6 = 0x06
                           000005   374 	ar5 = 0x05
                           000004   375 	ar4 = 0x04
                           000003   376 	ar3 = 0x03
                           000002   377 	ar2 = 0x02
                           000001   378 	ar1 = 0x01
                           000000   379 	ar0 = 0x00
                                    380 ;	../UI_Manager/ui.c:18: uint8_t action = get_button_action();
      0004F1 12 16 88         [24]  381 	lcall	_get_button_action
      0004F4 AF 82            [24]  382 	mov	r7,dpl
                                    383 ;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_MAN_BURST){
      0004F6 E4               [12]  384 	clr	a
      0004F7 BF 05 01         [24]  385 	cjne	r7,#0x05,00416$
      0004FA 04               [12]  386 	inc	a
      0004FB                        387 00416$:
      0004FB FE               [12]  388 	mov	r6,a
      0004FC 70 03            [24]  389 	jnz	00103$
      0004FE BF 0A 21         [24]  390 	cjne	r7,#0x0a,00104$
      000501                        391 00103$:
                                    392 ;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
      000501 EE               [12]  393 	mov	a,r6
      000502 60 06            [24]  394 	jz	00174$
      000504 7D 02            [12]  395 	mov	r5,#0x02
      000506 7E 00            [12]  396 	mov	r6,#0x00
      000508 80 04            [24]  397 	sjmp	00175$
      00050A                        398 00174$:
      00050A 7D 03            [12]  399 	mov	r5,#0x03
      00050C 7E 00            [12]  400 	mov	r6,#0x00
      00050E                        401 00175$:
      00050E 8D 82            [24]  402 	mov	dpl,r5
      000510 C0 07            [24]  403 	push	ar7
      000512 12 2D C1         [24]  404 	lcall	_power_pump
      000515 D0 07            [24]  405 	pop	ar7
                                    406 ;	../UI_Manager/ui.c:26: bursting |= BURSTING;
      000517 AD 0B            [24]  407 	mov	r5,_tick_ui_bursting_65536_37
      000519 7E 00            [12]  408 	mov	r6,#0x00
      00051B 43 05 80         [24]  409 	orl	ar5,#0x80
      00051E 8D 0B            [24]  410 	mov	_tick_ui_bursting_65536_37,r5
      000520 80 12            [24]  411 	sjmp	00105$
      000522                        412 00104$:
                                    413 ;	../UI_Manager/ui.c:27: } else if(bursting & BURSTING){
      000522 E5 0B            [12]  414 	mov	a,_tick_ui_bursting_65536_37
      000524 30 E7 0D         [24]  415 	jnb	acc.7,00105$
                                    416 ;	../UI_Manager/ui.c:28: power_pump(PUMP_OFF);
      000527 75 82 00         [24]  417 	mov	dpl,#0x00
      00052A C0 07            [24]  418 	push	ar7
      00052C 12 2D C1         [24]  419 	lcall	_power_pump
      00052F D0 07            [24]  420 	pop	ar7
                                    421 ;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
      000531 53 0B 7F         [24]  422 	anl	_tick_ui_bursting_65536_37,#0x7f
      000534                        423 00105$:
                                    424 ;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
      000534 BF 08 34         [24]  425 	cjne	r7,#0x08,00108$
                                    426 ;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
      000537 75 82 10         [24]  427 	mov	dpl,#0x10
      00053A C0 07            [24]  428 	push	ar7
      00053C 12 28 C8         [24]  429 	lcall	_get_runtime_data
      00053F AE 82            [24]  430 	mov	r6,dpl
      000541 D0 07            [24]  431 	pop	ar7
      000543 BE 80 06         [24]  432 	cjne	r6,#0x80,00176$
      000546 7D 00            [12]  433 	mov	r5,#0x00
      000548 7E 00            [12]  434 	mov	r6,#0x00
      00054A 80 04            [24]  435 	sjmp	00177$
      00054C                        436 00176$:
      00054C 7D 80            [12]  437 	mov	r5,#0x80
      00054E 7E 00            [12]  438 	mov	r6,#0x00
      000550                        439 00177$:
      000550 8D 6A            [24]  440 	mov	_set_runtime_data_PARM_3,r5
      000552 75 69 00         [24]  441 	mov	_set_runtime_data_PARM_2,#0x00
      000555 75 82 10         [24]  442 	mov	dpl,#0x10
      000558 C0 07            [24]  443 	push	ar7
      00055A 12 29 5C         [24]  444 	lcall	_set_runtime_data
                                    445 ;	../UI_Manager/ui.c:36: State = IDLE_STATE;
      00055D 75 08 00         [24]  446 	mov	_State,#0x00
                                    447 ;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
      000560 75 09 FF         [24]  448 	mov	_Changed,#0xff
                                    449 ;	../UI_Manager/ui.c:39: set_playing(RESET);
      000563 75 6D 02         [24]  450 	mov	_Playing,#0x02
                                    451 ;	../UI_Manager/ui.c:41: tick_fogger();
      000566 12 2A 39         [24]  452 	lcall	_tick_fogger
      000569 D0 07            [24]  453 	pop	ar7
      00056B                        454 00108$:
                                    455 ;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER_HOLD){
      00056B BF C8 10         [24]  456 	cjne	r7,#0xc8,00113$
                                    457 ;	../UI_Manager/ui.c:47: if(get_playing() == PLAY){
      00056E 74 01            [12]  458 	mov	a,#0x01
      000570 B5 6D 05         [24]  459 	cjne	a,_Playing,00110$
                                    460 ;	../UI_Manager/ui.c:48: set_playing(RESET);
      000573 75 6D 02         [24]  461 	mov	_Playing,#0x02
      000576 80 03            [24]  462 	sjmp	00111$
      000578                        463 00110$:
                                    464 ;	../UI_Manager/ui.c:50: set_playing(PLAY);
      000578 75 6D 01         [24]  465 	mov	_Playing,#0x01
      00057B                        466 00111$:
                                    467 ;	../UI_Manager/ui.c:53: tick_fogger();
                                    468 ;	../UI_Manager/ui.c:55: return;
      00057B 02 2A 39         [24]  469 	ljmp	_tick_fogger
      00057E                        470 00113$:
                                    471 ;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
      00057E BF 09 02         [24]  472 	cjne	r7,#0x09,00431$
      000581 80 03            [24]  473 	sjmp	00432$
      000583                        474 00431$:
      000583 02 06 1C         [24]  475 	ljmp	00121$
      000586                        476 00432$:
                                    477 ;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
      000586 75 82 0F         [24]  478 	mov	dpl,#0x0f
      000589 12 28 C8         [24]  479 	lcall	_get_runtime_data
      00058C E5 82            [12]  480 	mov	a,dpl
      00058E F4               [12]  481 	cpl	a
      00058F F5 6A            [12]  482 	mov	_set_runtime_data_PARM_3,a
      000591 75 69 00         [24]  483 	mov	_set_runtime_data_PARM_2,#0x00
      000594 75 82 0F         [24]  484 	mov	dpl,#0x0f
      000597 12 29 5C         [24]  485 	lcall	_set_runtime_data
                                    486 ;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
      00059A 90 80 00         [24]  487 	mov	dptr,#0x8000
      00059D 12 1B 30         [24]  488 	lcall	_exe_command
                                    489 ;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
      0005A0 75 82 0F         [24]  490 	mov	dpl,#0x0f
      0005A3 12 28 C8         [24]  491 	lcall	_get_runtime_data
      0005A6 E5 82            [12]  492 	mov	a,dpl
      0005A8 60 17            [24]  493 	jz	00115$
                                    494 ;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
      0005AA 75 21 0F         [24]  495 	mov	_write_string_PARM_2,#0x0f
      0005AD 75 22 00         [24]  496 	mov	_write_string_PARM_3,#0x00
      0005B0 75 23 00         [24]  497 	mov	_write_string_PARM_4,#0x00
      0005B3 75 24 00         [24]  498 	mov	_write_string_PARM_5,#0x00
      0005B6 90 2F 85         [24]  499 	mov	dptr,#___str_0
      0005B9 75 F0 80         [24]  500 	mov	b,#0x80
      0005BC 12 18 DD         [24]  501 	lcall	_write_string
      0005BF 80 15            [24]  502 	sjmp	00116$
      0005C1                        503 00115$:
                                    504 ;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
      0005C1 75 21 0F         [24]  505 	mov	_write_string_PARM_2,#0x0f
      0005C4 75 22 00         [24]  506 	mov	_write_string_PARM_3,#0x00
      0005C7 75 23 00         [24]  507 	mov	_write_string_PARM_4,#0x00
      0005CA 75 24 00         [24]  508 	mov	_write_string_PARM_5,#0x00
      0005CD 90 2F 95         [24]  509 	mov	dptr,#___str_1
      0005D0 75 F0 80         [24]  510 	mov	b,#0x80
      0005D3 12 18 DD         [24]  511 	lcall	_write_string
      0005D6                        512 00116$:
                                    513 ;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
      0005D6 75 21 0F         [24]  514 	mov	_write_string_PARM_2,#0x0f
      0005D9 75 22 00         [24]  515 	mov	_write_string_PARM_3,#0x00
      0005DC 75 23 01         [24]  516 	mov	_write_string_PARM_4,#0x01
      0005DF 75 24 00         [24]  517 	mov	_write_string_PARM_5,#0x00
      0005E2 90 2F A4         [24]  518 	mov	dptr,#___str_2
      0005E5 75 F0 80         [24]  519 	mov	b,#0x80
      0005E8 12 18 DD         [24]  520 	lcall	_write_string
                                    521 ;	../UI_Manager/ui.c:73: while(delay--){ ;; }
      0005EB 75 0C B5         [24]  522 	mov	_tick_ui_delay_65536_37,#0xb5
      0005EE 75 0D D8         [24]  523 	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
      0005F1 75 0E 07         [24]  524 	mov	(_tick_ui_delay_65536_37 + 2),#0x07
      0005F4 75 0F 00         [24]  525 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      0005F7                        526 00117$:
      0005F7 A8 0C            [24]  527 	mov	r0,_tick_ui_delay_65536_37
      0005F9 A9 0D            [24]  528 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      0005FB AA 0E            [24]  529 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      0005FD AE 0F            [24]  530 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      0005FF 15 0C            [12]  531 	dec	_tick_ui_delay_65536_37
      000601 74 FF            [12]  532 	mov	a,#0xff
      000603 B5 0C 0C         [24]  533 	cjne	a,_tick_ui_delay_65536_37,00434$
      000606 15 0D            [12]  534 	dec	(_tick_ui_delay_65536_37 + 1)
      000608 B5 0D 07         [24]  535 	cjne	a,(_tick_ui_delay_65536_37 + 1),00434$
      00060B 15 0E            [12]  536 	dec	(_tick_ui_delay_65536_37 + 2)
      00060D B5 0E 02         [24]  537 	cjne	a,(_tick_ui_delay_65536_37 + 2),00434$
      000610 15 0F            [12]  538 	dec	(_tick_ui_delay_65536_37 + 3)
      000612                        539 00434$:
      000612 E8               [12]  540 	mov	a,r0
      000613 49               [12]  541 	orl	a,r1
      000614 4A               [12]  542 	orl	a,r2
      000615 4E               [12]  543 	orl	a,r6
      000616 70 DF            [24]  544 	jnz	00117$
                                    545 ;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
      000618 75 09 FF         [24]  546 	mov	_Changed,#0xff
                                    547 ;	../UI_Manager/ui.c:77: return;
      00061B 22               [24]  548 	ret
      00061C                        549 00121$:
                                    550 ;	../UI_Manager/ui.c:81: if(action == BUTTON_BURST_UP){
      00061C BF 07 02         [24]  551 	cjne	r7,#0x07,00436$
      00061F 80 03            [24]  552 	sjmp	00437$
      000621                        553 00436$:
      000621 02 06 AD         [24]  554 	ljmp	00129$
      000624                        555 00437$:
                                    556 ;	../UI_Manager/ui.c:83: exe_command(CLEAR_DISPLAY);
      000624 90 80 00         [24]  557 	mov	dptr,#0x8000
      000627 12 1B 30         [24]  558 	lcall	_exe_command
                                    559 ;	../UI_Manager/ui.c:84: if(get_heater_enabled()){
      00062A E5 6E            [12]  560 	mov	a,_Heat_Flag
      00062C 20 E4 1D         [24]  561 	jb	acc.4,00123$
                                    562 ;	../UI_Manager/ui.c:85: write_string("Heater Off", 15, 2, LINE_0, NOT_SELECTED);
      00062F 75 21 0F         [24]  563 	mov	_write_string_PARM_2,#0x0f
      000632 75 22 02         [24]  564 	mov	_write_string_PARM_3,#0x02
      000635 75 23 00         [24]  565 	mov	_write_string_PARM_4,#0x00
      000638 75 24 00         [24]  566 	mov	_write_string_PARM_5,#0x00
      00063B 90 2F B4         [24]  567 	mov	dptr,#___str_3
      00063E 75 F0 80         [24]  568 	mov	b,#0x80
      000641 12 18 DD         [24]  569 	lcall	_write_string
                                    570 ;	../UI_Manager/ui.c:86: power_heater(HEATER_DISABLE);
      000644 75 82 01         [24]  571 	mov	dpl,#0x01
      000647 12 2E 08         [24]  572 	lcall	_power_heater
      00064A 80 1B            [24]  573 	sjmp	00124$
      00064C                        574 00123$:
                                    575 ;	../UI_Manager/ui.c:88: write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
      00064C 75 21 0F         [24]  576 	mov	_write_string_PARM_2,#0x0f
      00064F 75 22 02         [24]  577 	mov	_write_string_PARM_3,#0x02
      000652 75 23 00         [24]  578 	mov	_write_string_PARM_4,#0x00
      000655 75 24 00         [24]  579 	mov	_write_string_PARM_5,#0x00
      000658 90 2F BF         [24]  580 	mov	dptr,#___str_4
      00065B 75 F0 80         [24]  581 	mov	b,#0x80
      00065E 12 18 DD         [24]  582 	lcall	_write_string
                                    583 ;	../UI_Manager/ui.c:89: power_heater(HEATER_ENABLE);
      000661 75 82 00         [24]  584 	mov	dpl,#0x00
      000664 12 2E 08         [24]  585 	lcall	_power_heater
      000667                        586 00124$:
                                    587 ;	../UI_Manager/ui.c:92: write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
      000667 75 21 10         [24]  588 	mov	_write_string_PARM_2,#0x10
      00066A 75 22 00         [24]  589 	mov	_write_string_PARM_3,#0x00
      00066D 75 23 01         [24]  590 	mov	_write_string_PARM_4,#0x01
      000670 75 24 00         [24]  591 	mov	_write_string_PARM_5,#0x00
      000673 90 2F C9         [24]  592 	mov	dptr,#___str_5
      000676 75 F0 80         [24]  593 	mov	b,#0x80
      000679 12 18 DD         [24]  594 	lcall	_write_string
                                    595 ;	../UI_Manager/ui.c:96: while(delay--){ ;; }
      00067C 75 0C B5         [24]  596 	mov	_tick_ui_delay_65536_37,#0xb5
      00067F 75 0D D8         [24]  597 	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
      000682 75 0E 07         [24]  598 	mov	(_tick_ui_delay_65536_37 + 2),#0x07
      000685 75 0F 00         [24]  599 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      000688                        600 00125$:
      000688 A8 0C            [24]  601 	mov	r0,_tick_ui_delay_65536_37
      00068A A9 0D            [24]  602 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      00068C AA 0E            [24]  603 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      00068E AE 0F            [24]  604 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      000690 15 0C            [12]  605 	dec	_tick_ui_delay_65536_37
      000692 74 FF            [12]  606 	mov	a,#0xff
      000694 B5 0C 0C         [24]  607 	cjne	a,_tick_ui_delay_65536_37,00439$
      000697 15 0D            [12]  608 	dec	(_tick_ui_delay_65536_37 + 1)
      000699 B5 0D 07         [24]  609 	cjne	a,(_tick_ui_delay_65536_37 + 1),00439$
      00069C 15 0E            [12]  610 	dec	(_tick_ui_delay_65536_37 + 2)
      00069E B5 0E 02         [24]  611 	cjne	a,(_tick_ui_delay_65536_37 + 2),00439$
      0006A1 15 0F            [12]  612 	dec	(_tick_ui_delay_65536_37 + 3)
      0006A3                        613 00439$:
      0006A3 E8               [12]  614 	mov	a,r0
      0006A4 49               [12]  615 	orl	a,r1
      0006A5 4A               [12]  616 	orl	a,r2
      0006A6 4E               [12]  617 	orl	a,r6
      0006A7 70 DF            [24]  618 	jnz	00125$
                                    619 ;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
      0006A9 75 09 FF         [24]  620 	mov	_Changed,#0xff
                                    621 ;	../UI_Manager/ui.c:100: return;
      0006AC 22               [24]  622 	ret
      0006AD                        623 00129$:
                                    624 ;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_BURST){
      0006AD BF 06 02         [24]  625 	cjne	r7,#0x06,00441$
      0006B0 80 03            [24]  626 	sjmp	00442$
      0006B2                        627 00441$:
      0006B2 02 07 60         [24]  628 	ljmp	00134$
      0006B5                        629 00442$:
                                    630 ;	../UI_Manager/ui.c:106: ss = bursting & ~BURSTING;
      0006B5 74 7F            [12]  631 	mov	a,#0x7f
      0006B7 55 0B            [12]  632 	anl	a,_tick_ui_bursting_65536_37
      0006B9 FE               [12]  633 	mov	r6,a
                                    634 ;	../UI_Manager/ui.c:108: exe_command(CLEAR_DISPLAY);
      0006BA 90 80 00         [24]  635 	mov	dptr,#0x8000
      0006BD C0 06            [24]  636 	push	ar6
      0006BF 12 1B 30         [24]  637 	lcall	_exe_command
      0006C2 D0 06            [24]  638 	pop	ar6
                                    639 ;	../UI_Manager/ui.c:110: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
      0006C4 8E 04            [24]  640 	mov	ar4,r6
      0006C6 7D 00            [12]  641 	mov	r5,#0x00
      0006C8 75 76 03         [24]  642 	mov	__modsint_PARM_2,#0x03
                                    643 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0006CB 8D 77            [24]  644 	mov	(__modsint_PARM_2 + 1),r5
      0006CD 8C 82            [24]  645 	mov	dpl,r4
      0006CF 8D 83            [24]  646 	mov	dph,r5
      0006D1 C0 06            [24]  647 	push	ar6
      0006D3 12 2F 4B         [24]  648 	lcall	__modsint
      0006D6 E5 82            [12]  649 	mov	a,dpl
      0006D8 FC               [12]  650 	mov	r4,a
      0006D9 2C               [12]  651 	add	a,r4
      0006DA FC               [12]  652 	mov	r4,a
      0006DB 24 28            [12]  653 	add	a,#0x28
      0006DD F5 82            [12]  654 	mov	dpl,a
      0006DF C0 04            [24]  655 	push	ar4
      0006E1 12 14 7F         [24]  656 	lcall	_getString
      0006E4 AA 82            [24]  657 	mov	r2,dpl
      0006E6 AB 83            [24]  658 	mov	r3,dph
      0006E8 AD F0            [24]  659 	mov	r5,b
      0006EA 75 21 10         [24]  660 	mov	_write_string_PARM_2,#0x10
      0006ED 75 22 00         [24]  661 	mov	_write_string_PARM_3,#0x00
      0006F0 75 23 00         [24]  662 	mov	_write_string_PARM_4,#0x00
      0006F3 75 24 00         [24]  663 	mov	_write_string_PARM_5,#0x00
      0006F6 8A 82            [24]  664 	mov	dpl,r2
      0006F8 8B 83            [24]  665 	mov	dph,r3
      0006FA 8D F0            [24]  666 	mov	b,r5
      0006FC 12 18 DD         [24]  667 	lcall	_write_string
      0006FF D0 04            [24]  668 	pop	ar4
                                    669 ;	../UI_Manager/ui.c:111: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000701 74 29            [12]  670 	mov	a,#0x29
      000703 2C               [12]  671 	add	a,r4
      000704 F5 82            [12]  672 	mov	dpl,a
      000706 12 14 7F         [24]  673 	lcall	_getString
      000709 AB 82            [24]  674 	mov	r3,dpl
      00070B AC 83            [24]  675 	mov	r4,dph
      00070D AD F0            [24]  676 	mov	r5,b
      00070F 75 21 10         [24]  677 	mov	_write_string_PARM_2,#0x10
      000712 75 22 00         [24]  678 	mov	_write_string_PARM_3,#0x00
      000715 75 23 01         [24]  679 	mov	_write_string_PARM_4,#0x01
      000718 75 24 00         [24]  680 	mov	_write_string_PARM_5,#0x00
      00071B 8B 82            [24]  681 	mov	dpl,r3
      00071D 8C 83            [24]  682 	mov	dph,r4
      00071F 8D F0            [24]  683 	mov	b,r5
      000721 12 18 DD         [24]  684 	lcall	_write_string
      000724 D0 06            [24]  685 	pop	ar6
                                    686 ;	../UI_Manager/ui.c:113: ss++;
      000726 0E               [12]  687 	inc	r6
                                    688 ;	../UI_Manager/ui.c:115: bursting &= BURSTING;
      000727 53 0B 80         [24]  689 	anl	_tick_ui_bursting_65536_37,#0x80
                                    690 ;	../UI_Manager/ui.c:116: bursting |= (ss & ~BURSTING);
      00072A 74 7F            [12]  691 	mov	a,#0x7f
      00072C 5E               [12]  692 	anl	a,r6
      00072D 42 0B            [12]  693 	orl	_tick_ui_bursting_65536_37,a
                                    694 ;	../UI_Manager/ui.c:120: while(delay--){ ;; }
      00072F 75 0C DD         [24]  695 	mov	_tick_ui_delay_65536_37,#0xdd
      000732 75 0D 8A         [24]  696 	mov	(_tick_ui_delay_65536_37 + 1),#0x8a
      000735 75 0E 14         [24]  697 	mov	(_tick_ui_delay_65536_37 + 2),#0x14
      000738 75 0F 00         [24]  698 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      00073B                        699 00130$:
      00073B A8 0C            [24]  700 	mov	r0,_tick_ui_delay_65536_37
      00073D A9 0D            [24]  701 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      00073F AA 0E            [24]  702 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      000741 AE 0F            [24]  703 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      000743 15 0C            [12]  704 	dec	_tick_ui_delay_65536_37
      000745 74 FF            [12]  705 	mov	a,#0xff
      000747 B5 0C 0C         [24]  706 	cjne	a,_tick_ui_delay_65536_37,00443$
      00074A 15 0D            [12]  707 	dec	(_tick_ui_delay_65536_37 + 1)
      00074C B5 0D 07         [24]  708 	cjne	a,(_tick_ui_delay_65536_37 + 1),00443$
      00074F 15 0E            [12]  709 	dec	(_tick_ui_delay_65536_37 + 2)
      000751 B5 0E 02         [24]  710 	cjne	a,(_tick_ui_delay_65536_37 + 2),00443$
      000754 15 0F            [12]  711 	dec	(_tick_ui_delay_65536_37 + 3)
      000756                        712 00443$:
      000756 E8               [12]  713 	mov	a,r0
      000757 49               [12]  714 	orl	a,r1
      000758 4A               [12]  715 	orl	a,r2
      000759 4E               [12]  716 	orl	a,r6
      00075A 70 DF            [24]  717 	jnz	00130$
                                    718 ;	../UI_Manager/ui.c:122: Changed = CHANGE_SCREEN_X;
      00075C 75 09 FF         [24]  719 	mov	_Changed,#0xff
                                    720 ;	../UI_Manager/ui.c:124: return;
      00075F 22               [24]  721 	ret
      000760                        722 00134$:
                                    723 ;	../UI_Manager/ui.c:128: if(action == BUTTON_FUN_TIME){
      000760 BF 04 06         [24]  724 	cjne	r7,#0x04,00136$
                                    725 ;	../UI_Manager/ui.c:129: State = IDLE_STATE;
      000763 75 08 00         [24]  726 	mov	_State,#0x00
                                    727 ;	../UI_Manager/ui.c:130: Changed = CHANGE_SCREEN_X;
      000766 75 09 FF         [24]  728 	mov	_Changed,#0xff
      000769                        729 00136$:
                                    730 ;	../UI_Manager/ui.c:135: if(Changed || 
      000769 E5 09            [12]  731 	mov	a,_Changed
      00076B 70 2D            [24]  732 	jnz	00161$
                                    733 ;	../UI_Manager/ui.c:136: action == BUTTON_UP ||
      00076D BF 03 02         [24]  734 	cjne	r7,#0x03,00448$
      000770 80 28            [24]  735 	sjmp	00161$
      000772                        736 00448$:
                                    737 ;	../UI_Manager/ui.c:137: action == BUTTON_UP_HOLD||
      000772 BF 1E 02         [24]  738 	cjne	r7,#0x1e,00449$
      000775 80 23            [24]  739 	sjmp	00161$
      000777                        740 00449$:
                                    741 ;	../UI_Manager/ui.c:138: action == BUTTON_UP_BURST ||
      000777 BF 1F 02         [24]  742 	cjne	r7,#0x1f,00450$
      00077A 80 1E            [24]  743 	sjmp	00161$
      00077C                        744 00450$:
                                    745 ;	../UI_Manager/ui.c:139: action == BUTTON_DOWN ||
      00077C BF 0B 02         [24]  746 	cjne	r7,#0x0b,00451$
      00077F 80 19            [24]  747 	sjmp	00161$
      000781                        748 00451$:
                                    749 ;	../UI_Manager/ui.c:140: action == BUTTON_DOWN_HOLD ||
      000781 BF 6E 02         [24]  750 	cjne	r7,#0x6e,00452$
      000784 80 14            [24]  751 	sjmp	00161$
      000786                        752 00452$:
                                    753 ;	../UI_Manager/ui.c:141: action == BUTTON_DOWN_BURST ||
      000786 BF 6F 02         [24]  754 	cjne	r7,#0x6f,00453$
      000789 80 0F            [24]  755 	sjmp	00161$
      00078B                        756 00453$:
                                    757 ;	../UI_Manager/ui.c:142: action == BUTTON_TIMER ||
      00078B BF 01 02         [24]  758 	cjne	r7,#0x01,00454$
      00078E 80 0A            [24]  759 	sjmp	00161$
      000790                        760 00454$:
                                    761 ;	../UI_Manager/ui.c:143: action == BUTTON_FUNCTION ||
      000790 BF 02 02         [24]  762 	cjne	r7,#0x02,00455$
      000793 80 05            [24]  763 	sjmp	00161$
      000795                        764 00455$:
                                    765 ;	../UI_Manager/ui.c:144: State == IDLE_STATE){
      000795 E5 08            [12]  766 	mov	a,_State
      000797 60 01            [24]  767 	jz	00456$
      000799 22               [24]  768 	ret
      00079A                        769 00456$:
      00079A                        770 00161$:
                                    771 ;	../UI_Manager/ui.c:146: switch (State)
      00079A AE 08            [24]  772 	mov	r6,_State
      00079C BE 01 03         [24]  773 	cjne	r6,#0x01,00457$
      00079F 02 08 2E         [24]  774 	ljmp	00138$
      0007A2                        775 00457$:
      0007A2 BE 02 03         [24]  776 	cjne	r6,#0x02,00458$
      0007A5 02 08 38         [24]  777 	ljmp	00140$
      0007A8                        778 00458$:
      0007A8 BE 03 03         [24]  779 	cjne	r6,#0x03,00459$
      0007AB 02 08 33         [24]  780 	ljmp	00139$
      0007AE                        781 00459$:
      0007AE BE 04 03         [24]  782 	cjne	r6,#0x04,00460$
      0007B1 02 08 3D         [24]  783 	ljmp	00141$
      0007B4                        784 00460$:
      0007B4 BE 05 03         [24]  785 	cjne	r6,#0x05,00461$
      0007B7 02 08 42         [24]  786 	ljmp	00142$
      0007BA                        787 00461$:
      0007BA BE 06 03         [24]  788 	cjne	r6,#0x06,00462$
      0007BD 02 08 47         [24]  789 	ljmp	00146$
      0007C0                        790 00462$:
      0007C0 BE 07 03         [24]  791 	cjne	r6,#0x07,00463$
      0007C3 02 08 47         [24]  792 	ljmp	00146$
      0007C6                        793 00463$:
      0007C6 BE 08 03         [24]  794 	cjne	r6,#0x08,00464$
      0007C9 02 08 47         [24]  795 	ljmp	00146$
      0007CC                        796 00464$:
      0007CC BE 09 02         [24]  797 	cjne	r6,#0x09,00465$
      0007CF 80 76            [24]  798 	sjmp	00146$
      0007D1                        799 00465$:
      0007D1 BE 0A 02         [24]  800 	cjne	r6,#0x0a,00466$
      0007D4 80 76            [24]  801 	sjmp	00149$
      0007D6                        802 00466$:
      0007D6 BE 0B 02         [24]  803 	cjne	r6,#0x0b,00467$
      0007D9 80 71            [24]  804 	sjmp	00149$
      0007DB                        805 00467$:
      0007DB BE 0C 02         [24]  806 	cjne	r6,#0x0c,00468$
      0007DE 80 6C            [24]  807 	sjmp	00149$
      0007E0                        808 00468$:
      0007E0 BE 0D 02         [24]  809 	cjne	r6,#0x0d,00469$
      0007E3 80 6C            [24]  810 	sjmp	00151$
      0007E5                        811 00469$:
      0007E5 BE 0E 02         [24]  812 	cjne	r6,#0x0e,00470$
      0007E8 80 67            [24]  813 	sjmp	00151$
      0007EA                        814 00470$:
      0007EA BE 14 02         [24]  815 	cjne	r6,#0x14,00471$
      0007ED 80 67            [24]  816 	sjmp	00152$
      0007EF                        817 00471$:
      0007EF BE 15 02         [24]  818 	cjne	r6,#0x15,00472$
      0007F2 80 67            [24]  819 	sjmp	00153$
      0007F4                        820 00472$:
      0007F4 BE 45 69         [24]  821 	cjne	r6,#0x45,00154$
                                    822 ;	../UI_Manager/ui.c:151: exe_command(CLEAR_DISPLAY);
      0007F7 90 80 00         [24]  823 	mov	dptr,#0x8000
      0007FA 12 1B 30         [24]  824 	lcall	_exe_command
                                    825 ;	../UI_Manager/ui.c:152: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0007FD 75 21 10         [24]  826 	mov	_write_string_PARM_2,#0x10
      000800 75 22 01         [24]  827 	mov	_write_string_PARM_3,#0x01
      000803 75 23 00         [24]  828 	mov	_write_string_PARM_4,#0x00
      000806 75 24 00         [24]  829 	mov	_write_string_PARM_5,#0x00
      000809 90 2F DA         [24]  830 	mov	dptr,#___str_6
      00080C 75 F0 80         [24]  831 	mov	b,#0x80
      00080F 12 18 DD         [24]  832 	lcall	_write_string
                                    833 ;	../UI_Manager/ui.c:153: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000812 75 21 10         [24]  834 	mov	_write_string_PARM_2,#0x10
      000815 75 22 00         [24]  835 	mov	_write_string_PARM_3,#0x00
      000818 75 23 01         [24]  836 	mov	_write_string_PARM_4,#0x01
      00081B 75 24 00         [24]  837 	mov	_write_string_PARM_5,#0x00
      00081E 90 2F E9         [24]  838 	mov	dptr,#___str_7
      000821 75 F0 80         [24]  839 	mov	b,#0x80
      000824 12 18 DD         [24]  840 	lcall	_write_string
                                    841 ;	../UI_Manager/ui.c:155: Changed = CHANGE_SCREEN_X;
      000827 75 09 FF         [24]  842 	mov	_Changed,#0xff
                                    843 ;	../UI_Manager/ui.c:156: State = IDLE_STATE;
      00082A 75 08 00         [24]  844 	mov	_State,#0x00
                                    845 ;	../UI_Manager/ui.c:158: break;
                                    846 ;	../UI_Manager/ui.c:159: case MANUAL_FOG_POWER_STATE:
      00082D 22               [24]  847 	ret
      00082E                        848 00138$:
                                    849 ;	../UI_Manager/ui.c:160: fogLevelPage(action);
      00082E 8F 82            [24]  850 	mov	dpl,r7
                                    851 ;	../UI_Manager/ui.c:161: break;
                                    852 ;	../UI_Manager/ui.c:162: case MANUAL_FOG_INTERVAL_STATE:
      000830 02 0B 66         [24]  853 	ljmp	_fogLevelPage
      000833                        854 00139$:
                                    855 ;	../UI_Manager/ui.c:163: fogIntervalPage(action);
      000833 8F 82            [24]  856 	mov	dpl,r7
                                    857 ;	../UI_Manager/ui.c:164: break;
                                    858 ;	../UI_Manager/ui.c:165: case MANUAL_FOG_DURATION_STATE:
      000835 02 0C A0         [24]  859 	ljmp	_fogIntervalPage
      000838                        860 00140$:
                                    861 ;	../UI_Manager/ui.c:166: fogDurationPage(action);
      000838 8F 82            [24]  862 	mov	dpl,r7
                                    863 ;	../UI_Manager/ui.c:167: break;
                                    864 ;	../UI_Manager/ui.c:168: case MANUAL_COLOR_MACRO_STATE:
      00083A 02 0D 4F         [24]  865 	ljmp	_fogDurationPage
      00083D                        866 00141$:
                                    867 ;	../UI_Manager/ui.c:169: macroPage(action);
      00083D 8F 82            [24]  868 	mov	dpl,r7
                                    869 ;	../UI_Manager/ui.c:170: break;
                                    870 ;	../UI_Manager/ui.c:171: case MANUAL_MACRO_SPEED_STATE:
      00083F 02 0D FE         [24]  871 	ljmp	_macroPage
      000842                        872 00142$:
                                    873 ;	../UI_Manager/ui.c:172: macroSpeedPage(action);
      000842 8F 82            [24]  874 	mov	dpl,r7
                                    875 ;	../UI_Manager/ui.c:173: break;
                                    876 ;	../UI_Manager/ui.c:177: case MANUAL_STROBE_STATE:
      000844 02 0E AA         [24]  877 	ljmp	_macroSpeedPage
      000847                        878 00146$:
                                    879 ;	../UI_Manager/ui.c:178: colorPage(action);
      000847 8F 82            [24]  880 	mov	dpl,r7
                                    881 ;	../UI_Manager/ui.c:179: break;
                                    882 ;	../UI_Manager/ui.c:182: case MANUAL_REMOTE_ACTION_6_STATE:
      000849 02 0F 77         [24]  883 	ljmp	_colorPage
      00084C                        884 00149$:
                                    885 ;	../UI_Manager/ui.c:183: remotePage(action);
      00084C 8F 82            [24]  886 	mov	dpl,r7
                                    887 ;	../UI_Manager/ui.c:184: break;
                                    888 ;	../UI_Manager/ui.c:186: case MANUAL_SAVE_SETTINGS_STATE:
      00084E 02 10 8A         [24]  889 	ljmp	_remotePage
      000851                        890 00151$:
                                    891 ;	../UI_Manager/ui.c:187: saveLoadPage(action);
      000851 8F 82            [24]  892 	mov	dpl,r7
                                    893 ;	../UI_Manager/ui.c:188: break;
                                    894 ;	../UI_Manager/ui.c:189: case DMX_ADDRESS_STATE:
      000853 02 11 A9         [24]  895 	ljmp	_saveLoadPage
      000856                        896 00152$:
                                    897 ;	../UI_Manager/ui.c:190: dmxAddressPage(action);
      000856 8F 82            [24]  898 	mov	dpl,r7
                                    899 ;	../UI_Manager/ui.c:191: break;
                                    900 ;	../UI_Manager/ui.c:192: case DMX_CHANNEL_MODE_STATE:
      000858 02 12 C5         [24]  901 	ljmp	_dmxAddressPage
      00085B                        902 00153$:
                                    903 ;	../UI_Manager/ui.c:193: dmxChannelPage(action);
      00085B 8F 82            [24]  904 	mov	dpl,r7
                                    905 ;	../UI_Manager/ui.c:194: break;
                                    906 ;	../UI_Manager/ui.c:195: default: //IDLE state
      00085D 02 13 49         [24]  907 	ljmp	_dmxChannelPage
      000860                        908 00154$:
                                    909 ;	../UI_Manager/ui.c:196: idlePage();
      000860 C0 07            [24]  910 	push	ar7
      000862 12 08 80         [24]  911 	lcall	_idlePage
      000865 D0 07            [24]  912 	pop	ar7
                                    913 ;	../UI_Manager/ui.c:198: if(action == BUTTON_FUNCTION){
      000867 BF 02 09         [24]  914 	cjne	r7,#0x02,00158$
                                    915 ;	../UI_Manager/ui.c:199: set_ui_state(INC, NULL);
      00086A 75 17 00         [24]  916 	mov	_set_ui_state_PARM_2,#0x00
      00086D 75 82 01         [24]  917 	mov	dpl,#0x01
      000870 02 13 EB         [24]  918 	ljmp	_set_ui_state
      000873                        919 00158$:
                                    920 ;	../UI_Manager/ui.c:200: } else if(action == BUTTON_TIMER){
      000873 BF 01 09         [24]  921 	cjne	r7,#0x01,00172$
                                    922 ;	../UI_Manager/ui.c:201: set_ui_state(DEC, NULL);
      000876 75 17 00         [24]  923 	mov	_set_ui_state_PARM_2,#0x00
      000879 75 82 02         [24]  924 	mov	dpl,#0x02
                                    925 ;	../UI_Manager/ui.c:204: }
                                    926 ;	../UI_Manager/ui.c:207: }
      00087C 02 13 EB         [24]  927 	ljmp	_set_ui_state
      00087F                        928 00172$:
      00087F 22               [24]  929 	ret
                                    930 ;------------------------------------------------------------
                                    931 ;Allocation info for local variables in function 'idlePage'
                                    932 ;------------------------------------------------------------
                                    933 ;timer                     Allocated with name '_idlePage_timer_65536_59'
                                    934 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
                                    935 ;empty                     Allocated with name '_idlePage_empty_65536_59'
                                    936 ;tock                      Allocated with name '_idlePage_tock_65536_59'
                                    937 ;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
                                    938 ;playing                   Allocated with name '_idlePage_playing_65536_59'
                                    939 ;temp                      Allocated to registers r7 
                                    940 ;------------------------------------------------------------
                                    941 ;	../UI_Manager/ui.c:209: void idlePage(){
                                    942 ;	-----------------------------------------
                                    943 ;	 function idlePage
                                    944 ;	-----------------------------------------
      000880                        945 _idlePage:
                                    946 ;	../UI_Manager/ui.c:218: if(Changed){
      000880 E5 09            [12]  947 	mov	a,_Changed
      000882 70 03            [24]  948 	jnz	00329$
      000884 02 09 67         [24]  949 	ljmp	00116$
      000887                        950 00329$:
                                    951 ;	../UI_Manager/ui.c:219: exe_command(CLEAR_DISPLAY);
      000887 90 80 00         [24]  952 	mov	dptr,#0x8000
      00088A 12 1B 30         [24]  953 	lcall	_exe_command
                                    954 ;	../UI_Manager/ui.c:220: Changed = 0x00;
      00088D 75 09 00         [24]  955 	mov	_Changed,#0x00
                                    956 ;	../UI_Manager/ui.c:221: changed = 0xFF;
      000890 75 0A FF         [24]  957 	mov	_changed,#0xff
                                    958 ;	../UI_Manager/ui.c:222: timer = 0xFF;
      000893 75 10 FF         [24]  959 	mov	_idlePage_timer_65536_59,#0xff
                                    960 ;	../UI_Manager/ui.c:223: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
      000896 75 11 55         [24]  961 	mov	_idlePage_intervalOrDuration_65536_59,#0x55
                                    962 ;	../UI_Manager/ui.c:226: if(get_fog_fluid_level() == TANK_EMPTY && get_heated()){
      000899 E5 6F            [12]  963 	mov	a,_Fluid_Level
      00089B 70 33            [24]  964 	jnz	00102$
      00089D E5 6E            [12]  965 	mov	a,_Heat_Flag
      00089F 30 E7 2E         [24]  966 	jnb	acc.7,00102$
                                    967 ;	../UI_Manager/ui.c:228: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0008A2 75 21 10         [24]  968 	mov	_write_string_PARM_2,#0x10
      0008A5 75 22 01         [24]  969 	mov	_write_string_PARM_3,#0x01
      0008A8 75 23 00         [24]  970 	mov	_write_string_PARM_4,#0x00
      0008AB 75 24 00         [24]  971 	mov	_write_string_PARM_5,#0x00
      0008AE 90 2F F9         [24]  972 	mov	dptr,#___str_8
      0008B1 75 F0 80         [24]  973 	mov	b,#0x80
      0008B4 12 18 DD         [24]  974 	lcall	_write_string
                                    975 ;	../UI_Manager/ui.c:229: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0008B7 75 21 10         [24]  976 	mov	_write_string_PARM_2,#0x10
      0008BA 75 22 00         [24]  977 	mov	_write_string_PARM_3,#0x00
      0008BD 75 23 01         [24]  978 	mov	_write_string_PARM_4,#0x01
      0008C0 75 24 00         [24]  979 	mov	_write_string_PARM_5,#0x00
      0008C3 90 30 08         [24]  980 	mov	dptr,#___str_9
      0008C6 75 F0 80         [24]  981 	mov	b,#0x80
      0008C9 12 18 DD         [24]  982 	lcall	_write_string
                                    983 ;	../UI_Manager/ui.c:231: empty = 0xFF;
      0008CC 75 12 FF         [24]  984 	mov	_idlePage_empty_65536_59,#0xff
                                    985 ;	../UI_Manager/ui.c:233: return;
      0008CF 22               [24]  986 	ret
      0008D0                        987 00102$:
                                    988 ;	../UI_Manager/ui.c:236: if(empty){
      0008D0 E5 12            [12]  989 	mov	a,_idlePage_empty_65536_59
      0008D2 60 0C            [24]  990 	jz	00107$
                                    991 ;	../UI_Manager/ui.c:237: if(get_fog_fluid_level() == TANK_FULL){
      0008D4 74 01            [12]  992 	mov	a,#0x01
      0008D6 B5 6F 06         [24]  993 	cjne	a,_Fluid_Level,00105$
                                    994 ;	../UI_Manager/ui.c:238: empty = 0x00;
      0008D9 75 12 00         [24]  995 	mov	_idlePage_empty_65536_59,#0x00
                                    996 ;	../UI_Manager/ui.c:239: Changed = CHANGE_SCREEN_X;
      0008DC 75 09 FF         [24]  997 	mov	_Changed,#0xff
      0008DF                        998 00105$:
                                    999 ;	../UI_Manager/ui.c:242: return;
      0008DF 22               [24] 1000 	ret
      0008E0                       1001 00107$:
                                   1002 ;	../UI_Manager/ui.c:245: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
      0008E0 75 82 10         [24] 1003 	mov	dpl,#0x10
      0008E3 12 28 C8         [24] 1004 	lcall	_get_runtime_data
      0008E6 E5 82            [12] 1005 	mov	a,dpl
      0008E8 60 17            [24] 1006 	jz	00113$
                                   1007 ;	../UI_Manager/ui.c:246: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0008EA 75 21 10         [24] 1008 	mov	_write_string_PARM_2,#0x10
      0008ED 75 22 01         [24] 1009 	mov	_write_string_PARM_3,#0x01
      0008F0 75 23 00         [24] 1010 	mov	_write_string_PARM_4,#0x00
      0008F3 75 24 00         [24] 1011 	mov	_write_string_PARM_5,#0x00
      0008F6 90 30 18         [24] 1012 	mov	dptr,#___str_10
      0008F9 75 F0 80         [24] 1013 	mov	b,#0x80
      0008FC 12 18 DD         [24] 1014 	lcall	_write_string
      0008FF 80 66            [24] 1015 	sjmp	00116$
      000901                       1016 00113$:
                                   1017 ;	../UI_Manager/ui.c:249: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      000901 12 2A 28         [24] 1018 	lcall	_get_dmx_address
      000904 75 25 04         [24] 1019 	mov	_write_number_PARM_2,#0x04
      000907 75 26 01         [24] 1020 	mov	_write_number_PARM_3,#0x01
      00090A 75 27 00         [24] 1021 	mov	_write_number_PARM_4,#0x00
      00090D 12 19 A1         [24] 1022 	lcall	_write_number
                                   1023 ;	../UI_Manager/ui.c:250: switch (get_runtime_data(MODE_INDEX))
      000910 75 82 0E         [24] 1024 	mov	dpl,#0x0e
      000913 12 28 C8         [24] 1025 	lcall	_get_runtime_data
      000916 AF 82            [24] 1026 	mov	r7,dpl
      000918 BF 01 02         [24] 1027 	cjne	r7,#0x01,00336$
      00091B 80 05            [24] 1028 	sjmp	00108$
      00091D                       1029 00336$:
                                   1030 ;	../UI_Manager/ui.c:252: case OPTION_DMX_MODE_3:
      00091D BF 02 0A         [24] 1031 	cjne	r7,#0x02,00110$
      000920 80 04            [24] 1032 	sjmp	00109$
      000922                       1033 00108$:
                                   1034 ;	../UI_Manager/ui.c:253: temp = 3;
      000922 7F 03            [12] 1035 	mov	r7,#0x03
                                   1036 ;	../UI_Manager/ui.c:254: break;
                                   1037 ;	../UI_Manager/ui.c:255: case OPTION_DMX_MODE_1: 
      000924 80 06            [24] 1038 	sjmp	00111$
      000926                       1039 00109$:
                                   1040 ;	../UI_Manager/ui.c:256: temp = 1;
      000926 7F 01            [12] 1041 	mov	r7,#0x01
                                   1042 ;	../UI_Manager/ui.c:257: break;
                                   1043 ;	../UI_Manager/ui.c:258: default:
      000928 80 02            [24] 1044 	sjmp	00111$
      00092A                       1045 00110$:
                                   1046 ;	../UI_Manager/ui.c:259: temp = 11;
      00092A 7F 0B            [12] 1047 	mov	r7,#0x0b
                                   1048 ;	../UI_Manager/ui.c:261: }
      00092C                       1049 00111$:
                                   1050 ;	../UI_Manager/ui.c:262: write_number(temp, 12, LINE_1, NOT_SELECTED);
      00092C 7E 00            [12] 1051 	mov	r6,#0x00
      00092E 75 25 0C         [24] 1052 	mov	_write_number_PARM_2,#0x0c
      000931 75 26 01         [24] 1053 	mov	_write_number_PARM_3,#0x01
                                   1054 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000934 8E 27            [24] 1055 	mov	_write_number_PARM_4,r6
      000936 8F 82            [24] 1056 	mov	dpl,r7
      000938 8E 83            [24] 1057 	mov	dph,r6
      00093A 12 19 A1         [24] 1058 	lcall	_write_number
                                   1059 ;	../UI_Manager/ui.c:264: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
      00093D 75 21 04         [24] 1060 	mov	_write_string_PARM_2,#0x04
      000940 75 22 00         [24] 1061 	mov	_write_string_PARM_3,#0x00
      000943 75 23 01         [24] 1062 	mov	_write_string_PARM_4,#0x01
      000946 75 24 00         [24] 1063 	mov	_write_string_PARM_5,#0x00
      000949 90 30 24         [24] 1064 	mov	dptr,#___str_11
      00094C 75 F0 80         [24] 1065 	mov	b,#0x80
      00094F 12 18 DD         [24] 1066 	lcall	_write_string
                                   1067 ;	../UI_Manager/ui.c:265: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
      000952 75 21 04         [24] 1068 	mov	_write_string_PARM_2,#0x04
      000955 75 22 09         [24] 1069 	mov	_write_string_PARM_3,#0x09
      000958 75 23 01         [24] 1070 	mov	_write_string_PARM_4,#0x01
      00095B 75 24 00         [24] 1071 	mov	_write_string_PARM_5,#0x00
      00095E 90 30 29         [24] 1072 	mov	dptr,#___str_12
      000961 75 F0 80         [24] 1073 	mov	b,#0x80
      000964 12 18 DD         [24] 1074 	lcall	_write_string
      000967                       1075 00116$:
                                   1076 ;	../UI_Manager/ui.c:273: tock++;
      000967 05 13            [12] 1077 	inc	_idlePage_tock_65536_59
                                   1078 ;	../UI_Manager/ui.c:274: if(get_playing() == PLAY){
      000969 74 01            [12] 1079 	mov	a,#0x01
      00096B B5 6D 55         [24] 1080 	cjne	a,_Playing,00134$
                                   1081 ;	../UI_Manager/ui.c:275: if(playing == PAUSE){
      00096E E5 15            [12] 1082 	mov	a,_idlePage_playing_65536_59
                                   1083 ;	../UI_Manager/ui.c:276: iconChange |= PLAY_CHANGE;
      000970 70 08            [24] 1084 	jnz	00118$
      000972 AE 14            [24] 1085 	mov	r6,_idlePage_iconChange_65536_59
      000974 FF               [12] 1086 	mov	r7,a
      000975 43 06 20         [24] 1087 	orl	ar6,#0x20
      000978 8E 14            [24] 1088 	mov	_idlePage_iconChange_65536_59,r6
      00097A                       1089 00118$:
                                   1090 ;	../UI_Manager/ui.c:279: if(get_interval_or_duration() == INTERVAL){
      00097A E5 6C            [12] 1091 	mov	a,_Interval_Or_Duration
      00097C 70 16            [24] 1092 	jnz	00127$
                                   1093 ;	../UI_Manager/ui.c:281: if(iconChange & PLAY_CHANGE){
      00097E E5 14            [12] 1094 	mov	a,_idlePage_iconChange_65536_59
      000980 30 E5 35         [24] 1095 	jnb	acc.5,00128$
                                   1096 ;	../UI_Manager/ui.c:282: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000983 75 2B 0E         [24] 1097 	mov	_write_char_PARM_2,#0x0e
      000986 75 2C 00         [24] 1098 	mov	_write_char_PARM_3,#0x00
      000989 75 82 80         [24] 1099 	mov	dpl,#0x80
      00098C 12 1A FB         [24] 1100 	lcall	_write_char
                                   1101 ;	../UI_Manager/ui.c:283: iconChange &= ~PLAY_CHANGE;
      00098F 53 14 DF         [24] 1102 	anl	_idlePage_iconChange_65536_59,#0xdf
      000992 80 24            [24] 1103 	sjmp	00128$
      000994                       1104 00127$:
                                   1105 ;	../UI_Manager/ui.c:287: if(tock == 0x80 + 55){ //blink if fogging
      000994 74 B7            [12] 1106 	mov	a,#0xb7
      000996 B5 13 0E         [24] 1107 	cjne	a,_idlePage_tock_65536_59,00124$
                                   1108 ;	../UI_Manager/ui.c:288: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000999 75 2B 0E         [24] 1109 	mov	_write_char_PARM_2,#0x0e
      00099C 75 2C 00         [24] 1110 	mov	_write_char_PARM_3,#0x00
      00099F 75 82 80         [24] 1111 	mov	dpl,#0x80
      0009A2 12 1A FB         [24] 1112 	lcall	_write_char
      0009A5 80 11            [24] 1113 	sjmp	00128$
      0009A7                       1114 00124$:
                                   1115 ;	../UI_Manager/ui.c:289: } else if(tock == 0x08 + 55){
      0009A7 74 3F            [12] 1116 	mov	a,#0x3f
      0009A9 B5 13 0C         [24] 1117 	cjne	a,_idlePage_tock_65536_59,00128$
                                   1118 ;	../UI_Manager/ui.c:290: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      0009AC 75 2B 0E         [24] 1119 	mov	_write_char_PARM_2,#0x0e
      0009AF 75 2C 00         [24] 1120 	mov	_write_char_PARM_3,#0x00
      0009B2 75 82 04         [24] 1121 	mov	dpl,#0x04
      0009B5 12 1A FB         [24] 1122 	lcall	_write_char
      0009B8                       1123 00128$:
                                   1124 ;	../UI_Manager/ui.c:293: iconChange |= PAUSE_CHANGE;
      0009B8 AE 14            [24] 1125 	mov	r6,_idlePage_iconChange_65536_59
      0009BA 7F 00            [12] 1126 	mov	r7,#0x00
      0009BC 43 06 10         [24] 1127 	orl	ar6,#0x10
      0009BF 8E 14            [24] 1128 	mov	_idlePage_iconChange_65536_59,r6
      0009C1 80 2E            [24] 1129 	sjmp	00135$
      0009C3                       1130 00134$:
                                   1131 ;	../UI_Manager/ui.c:295: if(playing == PLAY){
      0009C3 74 01            [12] 1132 	mov	a,#0x01
      0009C5 B5 15 09         [24] 1133 	cjne	a,_idlePage_playing_65536_59,00130$
                                   1134 ;	../UI_Manager/ui.c:296: iconChange |= PAUSE_CHANGE;
      0009C8 AE 14            [24] 1135 	mov	r6,_idlePage_iconChange_65536_59
      0009CA 7F 00            [12] 1136 	mov	r7,#0x00
      0009CC 43 06 10         [24] 1137 	orl	ar6,#0x10
      0009CF 8E 14            [24] 1138 	mov	_idlePage_iconChange_65536_59,r6
      0009D1                       1139 00130$:
                                   1140 ;	../UI_Manager/ui.c:299: if(iconChange & PAUSE_CHANGE){
      0009D1 E5 14            [12] 1141 	mov	a,_idlePage_iconChange_65536_59
      0009D3 30 E4 18         [24] 1142 	jnb	acc.4,00132$
                                   1143 ;	../UI_Manager/ui.c:300: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      0009D6 75 2B 0E         [24] 1144 	mov	_write_char_PARM_2,#0x0e
      0009D9 75 2C 00         [24] 1145 	mov	_write_char_PARM_3,#0x00
      0009DC 75 82 04         [24] 1146 	mov	dpl,#0x04
      0009DF 12 1A FB         [24] 1147 	lcall	_write_char
                                   1148 ;	../UI_Manager/ui.c:301: iconChange |= PLAY_CHANGE;
      0009E2 AE 14            [24] 1149 	mov	r6,_idlePage_iconChange_65536_59
      0009E4 7F 00            [12] 1150 	mov	r7,#0x00
      0009E6 43 06 20         [24] 1151 	orl	ar6,#0x20
      0009E9 8E 14            [24] 1152 	mov	_idlePage_iconChange_65536_59,r6
                                   1153 ;	../UI_Manager/ui.c:302: iconChange &= ~PAUSE_CHANGE;
      0009EB 53 14 EF         [24] 1154 	anl	_idlePage_iconChange_65536_59,#0xef
      0009EE                       1155 00132$:
                                   1156 ;	../UI_Manager/ui.c:305: playing = PAUSE;
      0009EE 75 15 00         [24] 1157 	mov	_idlePage_playing_65536_59,#0x00
      0009F1                       1158 00135$:
                                   1159 ;	../UI_Manager/ui.c:308: if(get_heater_enabled()){
      0009F1 E5 6E            [12] 1160 	mov	a,_Heat_Flag
      0009F3 20 E4 5E         [24] 1161 	jb	acc.4,00149$
                                   1162 ;	../UI_Manager/ui.c:309: if(get_heated()){
      0009F6 E5 6E            [12] 1163 	mov	a,_Heat_Flag
      0009F8 30 E7 16         [24] 1164 	jnb	acc.7,00144$
                                   1165 ;	../UI_Manager/ui.c:310: if(iconChange & HEATED_CHANGE){
      0009FB E5 14            [12] 1166 	mov	a,_idlePage_iconChange_65536_59
      0009FD 30 E0 49         [24] 1167 	jnb	acc.0,00145$
                                   1168 ;	../UI_Manager/ui.c:311: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
      000A00 75 2B 0F         [24] 1169 	mov	_write_char_PARM_2,#0x0f
      000A03 75 2C 00         [24] 1170 	mov	_write_char_PARM_3,#0x00
      000A06 75 82 60         [24] 1171 	mov	dpl,#0x60
      000A09 12 1A FB         [24] 1172 	lcall	_write_char
                                   1173 ;	../UI_Manager/ui.c:312: iconChange &= ~HEATED_CHANGE;
      000A0C 53 14 FE         [24] 1174 	anl	_idlePage_iconChange_65536_59,#0xfe
      000A0F 80 38            [24] 1175 	sjmp	00145$
      000A11                       1176 00144$:
                                   1177 ;	../UI_Manager/ui.c:315: if(!(tock)){
      000A11 E5 13            [12] 1178 	mov	a,_idlePage_tock_65536_59
      000A13 70 2B            [24] 1179 	jnz	00142$
                                   1180 ;	../UI_Manager/ui.c:316: if(iconChange & HEATING_CHANGE){
      000A15 E5 14            [12] 1181 	mov	a,_idlePage_iconChange_65536_59
      000A17 30 E1 11         [24] 1182 	jnb	acc.1,00139$
                                   1183 ;	../UI_Manager/ui.c:317: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
      000A1A 75 2B 0F         [24] 1184 	mov	_write_char_PARM_2,#0x0f
      000A1D 75 2C 00         [24] 1185 	mov	_write_char_PARM_3,#0x00
      000A20 75 82 04         [24] 1186 	mov	dpl,#0x04
      000A23 12 1A FB         [24] 1187 	lcall	_write_char
                                   1188 ;	../UI_Manager/ui.c:318: iconChange &= ~HEATING_CHANGE;
      000A26 53 14 FD         [24] 1189 	anl	_idlePage_iconChange_65536_59,#0xfd
      000A29 80 15            [24] 1190 	sjmp	00142$
      000A2B                       1191 00139$:
                                   1192 ;	../UI_Manager/ui.c:320: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
      000A2B 75 2B 0F         [24] 1193 	mov	_write_char_PARM_2,#0x0f
      000A2E 75 2C 00         [24] 1194 	mov	_write_char_PARM_3,#0x00
      000A31 75 82 A0         [24] 1195 	mov	dpl,#0xa0
      000A34 12 1A FB         [24] 1196 	lcall	_write_char
                                   1197 ;	../UI_Manager/ui.c:321: iconChange |= HEATING_CHANGE;
      000A37 AE 14            [24] 1198 	mov	r6,_idlePage_iconChange_65536_59
      000A39 7F 00            [12] 1199 	mov	r7,#0x00
      000A3B 43 06 02         [24] 1200 	orl	ar6,#0x02
      000A3E 8E 14            [24] 1201 	mov	_idlePage_iconChange_65536_59,r6
      000A40                       1202 00142$:
                                   1203 ;	../UI_Manager/ui.c:324: iconChange |= HEATED_CHANGE;
      000A40 AE 14            [24] 1204 	mov	r6,_idlePage_iconChange_65536_59
      000A42 7F 00            [12] 1205 	mov	r7,#0x00
      000A44 43 06 01         [24] 1206 	orl	ar6,#0x01
      000A47 8E 14            [24] 1207 	mov	_idlePage_iconChange_65536_59,r6
      000A49                       1208 00145$:
                                   1209 ;	../UI_Manager/ui.c:326: iconChange |= HEATER_CHANGE;
      000A49 AE 14            [24] 1210 	mov	r6,_idlePage_iconChange_65536_59
      000A4B 7F 00            [12] 1211 	mov	r7,#0x00
      000A4D 43 06 08         [24] 1212 	orl	ar6,#0x08
      000A50 8E 14            [24] 1213 	mov	_idlePage_iconChange_65536_59,r6
      000A52 80 17            [24] 1214 	sjmp	00150$
      000A54                       1215 00149$:
                                   1216 ;	../UI_Manager/ui.c:328: if(iconChange & HEATER_CHANGE){
      000A54 E5 14            [12] 1217 	mov	a,_idlePage_iconChange_65536_59
      000A56 30 E3 0F         [24] 1218 	jnb	acc.3,00147$
                                   1219 ;	../UI_Manager/ui.c:329: write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
      000A59 75 2B 0F         [24] 1220 	mov	_write_char_PARM_2,#0x0f
      000A5C 75 2C 00         [24] 1221 	mov	_write_char_PARM_3,#0x00
      000A5F 75 82 00         [24] 1222 	mov	dpl,#0x00
      000A62 12 1A FB         [24] 1223 	lcall	_write_char
                                   1224 ;	../UI_Manager/ui.c:330: iconChange &= ~HEATER_CHANGE;
      000A65 53 14 F7         [24] 1225 	anl	_idlePage_iconChange_65536_59,#0xf7
      000A68                       1226 00147$:
                                   1227 ;	../UI_Manager/ui.c:332: iconChange |= HEATER_CHANGE | HEATED_CHANGE;
      000A68 43 14 09         [24] 1228 	orl	_idlePage_iconChange_65536_59,#0x09
      000A6B                       1229 00150$:
                                   1230 ;	../UI_Manager/ui.c:337: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      000A6B 75 82 10         [24] 1231 	mov	dpl,#0x10
      000A6E 12 28 C8         [24] 1232 	lcall	_get_runtime_data
      000A71 E5 82            [12] 1233 	mov	a,dpl
      000A73 60 03            [24] 1234 	jz	00356$
      000A75 02 0B 06         [24] 1235 	ljmp	00168$
      000A78                       1236 00356$:
                                   1237 ;	../UI_Manager/ui.c:340: if(has_dmx()){
      000A78 E5 38            [12] 1238 	mov	a,_Has_DMX
      000A7A 60 28            [24] 1239 	jz	00156$
                                   1240 ;	../UI_Manager/ui.c:341: if(changed & DMX_OK_CHANGE){
      000A7C E5 0A            [12] 1241 	mov	a,_changed
      000A7E 30 E7 49         [24] 1242 	jnb	acc.7,00157$
                                   1243 ;	../UI_Manager/ui.c:342: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
      000A81 75 21 06         [24] 1244 	mov	_write_string_PARM_2,#0x06
      000A84 75 22 01         [24] 1245 	mov	_write_string_PARM_3,#0x01
      000A87 75 23 00         [24] 1246 	mov	_write_string_PARM_4,#0x00
      000A8A 75 24 00         [24] 1247 	mov	_write_string_PARM_5,#0x00
      000A8D 90 30 2E         [24] 1248 	mov	dptr,#___str_13
      000A90 75 F0 80         [24] 1249 	mov	b,#0x80
      000A93 12 18 DD         [24] 1250 	lcall	_write_string
                                   1251 ;	../UI_Manager/ui.c:343: changed |= NO_DMX_CHANGE;
      000A96 AE 0A            [24] 1252 	mov	r6,_changed
      000A98 7F 00            [12] 1253 	mov	r7,#0x00
      000A9A 43 06 40         [24] 1254 	orl	ar6,#0x40
      000A9D 8E 0A            [24] 1255 	mov	_changed,r6
                                   1256 ;	../UI_Manager/ui.c:344: changed &= ~DMX_OK_CHANGE;
      000A9F 53 0A 7F         [24] 1257 	anl	_changed,#0x7f
      000AA2 80 26            [24] 1258 	sjmp	00157$
      000AA4                       1259 00156$:
                                   1260 ;	../UI_Manager/ui.c:347: if(changed & NO_DMX_CHANGE){
      000AA4 E5 0A            [12] 1261 	mov	a,_changed
      000AA6 30 E6 21         [24] 1262 	jnb	acc.6,00157$
                                   1263 ;	../UI_Manager/ui.c:348: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
      000AA9 75 21 06         [24] 1264 	mov	_write_string_PARM_2,#0x06
      000AAC 75 22 01         [24] 1265 	mov	_write_string_PARM_3,#0x01
      000AAF 75 23 00         [24] 1266 	mov	_write_string_PARM_4,#0x00
      000AB2 75 24 00         [24] 1267 	mov	_write_string_PARM_5,#0x00
      000AB5 90 30 35         [24] 1268 	mov	dptr,#___str_14
      000AB8 75 F0 80         [24] 1269 	mov	b,#0x80
      000ABB 12 18 DD         [24] 1270 	lcall	_write_string
                                   1271 ;	../UI_Manager/ui.c:349: changed |= DMX_OK_CHANGE;
      000ABE AE 0A            [24] 1272 	mov	r6,_changed
      000AC0 7F 00            [12] 1273 	mov	r7,#0x00
      000AC2 43 06 80         [24] 1274 	orl	ar6,#0x80
      000AC5 8E 0A            [24] 1275 	mov	_changed,r6
                                   1276 ;	../UI_Manager/ui.c:350: changed &= ~NO_DMX_CHANGE;
      000AC7 53 0A BF         [24] 1277 	anl	_changed,#0xbf
      000ACA                       1278 00157$:
                                   1279 ;	../UI_Manager/ui.c:354: temp = get_timer();
                                   1280 ;	../UI_Manager/ui.c:357: if(timer != temp){
      000ACA E5 6B            [12] 1281 	mov	a,_Timer
      000ACC FF               [12] 1282 	mov	r7,a
      000ACD B5 10 01         [24] 1283 	cjne	a,_idlePage_timer_65536_59,00360$
      000AD0 22               [24] 1284 	ret
      000AD1                       1285 00360$:
                                   1286 ;	../UI_Manager/ui.c:359: write_number(temp, 7, LINE_0, NOT_SELECTED);
      000AD1 8F 05            [24] 1287 	mov	ar5,r7
      000AD3 7E 00            [12] 1288 	mov	r6,#0x00
      000AD5 75 25 07         [24] 1289 	mov	_write_number_PARM_2,#0x07
                                   1290 ;	1-genFromRTrack replaced	mov	_write_number_PARM_3,#0x00
      000AD8 8E 26            [24] 1291 	mov	_write_number_PARM_3,r6
                                   1292 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000ADA 8E 27            [24] 1293 	mov	_write_number_PARM_4,r6
      000ADC 8D 82            [24] 1294 	mov	dpl,r5
      000ADE 8E 83            [24] 1295 	mov	dph,r6
      000AE0 C0 07            [24] 1296 	push	ar7
      000AE2 12 19 A1         [24] 1297 	lcall	_write_number
      000AE5 D0 07            [24] 1298 	pop	ar7
                                   1299 ;	../UI_Manager/ui.c:360: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
      000AE7 E5 6C            [12] 1300 	mov	a,_Interval_Or_Duration
      000AE9 70 05            [24] 1301 	jnz	00172$
      000AEB 7D 92            [12] 1302 	mov	r5,#0x92
      000AED FE               [12] 1303 	mov	r6,a
      000AEE 80 04            [24] 1304 	sjmp	00173$
      000AF0                       1305 00172$:
      000AF0 7D 22            [12] 1306 	mov	r5,#0x22
      000AF2 7E 00            [12] 1307 	mov	r6,#0x00
      000AF4                       1308 00173$:
      000AF4 8D 82            [24] 1309 	mov	dpl,r5
      000AF6 75 2B 0B         [24] 1310 	mov	_write_char_PARM_2,#0x0b
      000AF9 75 2C 00         [24] 1311 	mov	_write_char_PARM_3,#0x00
      000AFC C0 07            [24] 1312 	push	ar7
      000AFE 12 1A FB         [24] 1313 	lcall	_write_char
      000B01 D0 07            [24] 1314 	pop	ar7
                                   1315 ;	../UI_Manager/ui.c:362: timer = temp;
      000B03 8F 10            [24] 1316 	mov	_idlePage_timer_65536_59,r7
      000B05 22               [24] 1317 	ret
      000B06                       1318 00168$:
                                   1319 ;	../UI_Manager/ui.c:367: temp = get_interval_or_duration();
                                   1320 ;	../UI_Manager/ui.c:369: if(intervalOrDuration != temp){
      000B06 E5 6C            [12] 1321 	mov	a,_Interval_Or_Duration
      000B08 FF               [12] 1322 	mov	r7,a
      000B09 B5 11 02         [24] 1323 	cjne	a,_idlePage_intervalOrDuration_65536_59,00362$
      000B0C 80 37            [24] 1324 	sjmp	00164$
      000B0E                       1325 00362$:
                                   1326 ;	../UI_Manager/ui.c:370: if(temp == INTERVAL){
      000B0E EF               [12] 1327 	mov	a,r7
                                   1328 ;	../UI_Manager/ui.c:371: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
      000B0F 70 19            [24] 1329 	jnz	00161$
      000B11 75 21 09         [24] 1330 	mov	_write_string_PARM_2,#0x09
      000B14 F5 22            [12] 1331 	mov	_write_string_PARM_3,a
      000B16 75 23 01         [24] 1332 	mov	_write_string_PARM_4,#0x01
      000B19 F5 24            [12] 1333 	mov	_write_string_PARM_5,a
      000B1B 90 30 3C         [24] 1334 	mov	dptr,#___str_15
      000B1E 75 F0 80         [24] 1335 	mov	b,#0x80
      000B21 C0 07            [24] 1336 	push	ar7
      000B23 12 18 DD         [24] 1337 	lcall	_write_string
      000B26 D0 07            [24] 1338 	pop	ar7
      000B28 80 19            [24] 1339 	sjmp	00162$
      000B2A                       1340 00161$:
                                   1341 ;	../UI_Manager/ui.c:373: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
      000B2A 75 21 09         [24] 1342 	mov	_write_string_PARM_2,#0x09
      000B2D 75 22 00         [24] 1343 	mov	_write_string_PARM_3,#0x00
      000B30 75 23 01         [24] 1344 	mov	_write_string_PARM_4,#0x01
      000B33 75 24 00         [24] 1345 	mov	_write_string_PARM_5,#0x00
      000B36 90 30 45         [24] 1346 	mov	dptr,#___str_16
      000B39 75 F0 80         [24] 1347 	mov	b,#0x80
      000B3C C0 07            [24] 1348 	push	ar7
      000B3E 12 18 DD         [24] 1349 	lcall	_write_string
      000B41 D0 07            [24] 1350 	pop	ar7
      000B43                       1351 00162$:
                                   1352 ;	../UI_Manager/ui.c:376: intervalOrDuration = temp;
      000B43 8F 11            [24] 1353 	mov	_idlePage_intervalOrDuration_65536_59,r7
      000B45                       1354 00164$:
                                   1355 ;	../UI_Manager/ui.c:379: temp = get_timer();
                                   1356 ;	../UI_Manager/ui.c:381: if(timer != temp){
      000B45 E5 6B            [12] 1357 	mov	a,_Timer
      000B47 FF               [12] 1358 	mov	r7,a
      000B48 B5 10 01         [24] 1359 	cjne	a,_idlePage_timer_65536_59,00364$
      000B4B 22               [24] 1360 	ret
      000B4C                       1361 00364$:
                                   1362 ;	../UI_Manager/ui.c:383: write_number(temp, NUMBER_END_INDEX-1, LINE_1, NOT_SELECTED);
      000B4C 8F 05            [24] 1363 	mov	ar5,r7
      000B4E 7E 00            [12] 1364 	mov	r6,#0x00
      000B50 75 25 0B         [24] 1365 	mov	_write_number_PARM_2,#0x0b
      000B53 75 26 01         [24] 1366 	mov	_write_number_PARM_3,#0x01
                                   1367 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000B56 8E 27            [24] 1368 	mov	_write_number_PARM_4,r6
      000B58 8D 82            [24] 1369 	mov	dpl,r5
      000B5A 8E 83            [24] 1370 	mov	dph,r6
      000B5C C0 07            [24] 1371 	push	ar7
      000B5E 12 19 A1         [24] 1372 	lcall	_write_number
      000B61 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	../UI_Manager/ui.c:385: timer = temp;
      000B63 8F 10            [24] 1375 	mov	_idlePage_timer_65536_59,r7
                                   1376 ;	../UI_Manager/ui.c:389: }
      000B65 22               [24] 1377 	ret
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'fogLevelPage'
                                   1380 ;------------------------------------------------------------
                                   1381 ;action                    Allocated to registers r7 
                                   1382 ;------------------------------------------------------------
                                   1383 ;	../UI_Manager/ui.c:391: void fogLevelPage(uint8_t action){
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function fogLevelPage
                                   1386 ;	-----------------------------------------
      000B66                       1387 _fogLevelPage:
      000B66 AF 82            [24] 1388 	mov	r7,dpl
                                   1389 ;	../UI_Manager/ui.c:393: switch (action)
      000B68 BF 01 02         [24] 1390 	cjne	r7,#0x01,00152$
      000B6B 80 3A            [24] 1391 	sjmp	00104$
      000B6D                       1392 00152$:
      000B6D BF 02 02         [24] 1393 	cjne	r7,#0x02,00153$
      000B70 80 2C            [24] 1394 	sjmp	00103$
      000B72                       1395 00153$:
      000B72 BF 03 02         [24] 1396 	cjne	r7,#0x03,00154$
      000B75 80 05            [24] 1397 	sjmp	00101$
      000B77                       1398 00154$:
                                   1399 ;	../UI_Manager/ui.c:395: case BUTTON_UP:
      000B77 BF 0B 36         [24] 1400 	cjne	r7,#0x0b,00105$
      000B7A 80 11            [24] 1401 	sjmp	00102$
      000B7C                       1402 00101$:
                                   1403 ;	../UI_Manager/ui.c:396: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
      000B7C 75 69 01         [24] 1404 	mov	_set_runtime_data_PARM_2,#0x01
      000B7F 75 6A 00         [24] 1405 	mov	_set_runtime_data_PARM_3,#0x00
      000B82 75 82 00         [24] 1406 	mov	dpl,#0x00
      000B85 12 29 5C         [24] 1407 	lcall	_set_runtime_data
                                   1408 ;	../UI_Manager/ui.c:397: changed = 0xFF;
      000B88 75 0A FF         [24] 1409 	mov	_changed,#0xff
                                   1410 ;	../UI_Manager/ui.c:398: break;
                                   1411 ;	../UI_Manager/ui.c:399: case BUTTON_DOWN:
      000B8B 80 23            [24] 1412 	sjmp	00105$
      000B8D                       1413 00102$:
                                   1414 ;	../UI_Manager/ui.c:400: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
      000B8D 75 69 02         [24] 1415 	mov	_set_runtime_data_PARM_2,#0x02
      000B90 75 6A 00         [24] 1416 	mov	_set_runtime_data_PARM_3,#0x00
      000B93 75 82 00         [24] 1417 	mov	dpl,#0x00
      000B96 12 29 5C         [24] 1418 	lcall	_set_runtime_data
                                   1419 ;	../UI_Manager/ui.c:401: changed = 0xFF;  
      000B99 75 0A FF         [24] 1420 	mov	_changed,#0xff
                                   1421 ;	../UI_Manager/ui.c:402: break;
                                   1422 ;	../UI_Manager/ui.c:403: case BUTTON_FUNCTION:
      000B9C 80 12            [24] 1423 	sjmp	00105$
      000B9E                       1424 00103$:
                                   1425 ;	../UI_Manager/ui.c:404: set_ui_state(INC, NULL);
      000B9E 75 17 00         [24] 1426 	mov	_set_ui_state_PARM_2,#0x00
      000BA1 75 82 01         [24] 1427 	mov	dpl,#0x01
                                   1428 ;	../UI_Manager/ui.c:405: return;
      000BA4 02 13 EB         [24] 1429 	ljmp	_set_ui_state
                                   1430 ;	../UI_Manager/ui.c:406: case BUTTON_TIMER:
      000BA7                       1431 00104$:
                                   1432 ;	../UI_Manager/ui.c:407: set_ui_state(DEC, NULL);
      000BA7 75 17 00         [24] 1433 	mov	_set_ui_state_PARM_2,#0x00
      000BAA 75 82 02         [24] 1434 	mov	dpl,#0x02
                                   1435 ;	../UI_Manager/ui.c:408: return;
      000BAD 02 13 EB         [24] 1436 	ljmp	_set_ui_state
                                   1437 ;	../UI_Manager/ui.c:409: }
      000BB0                       1438 00105$:
                                   1439 ;	../UI_Manager/ui.c:411: if(Changed){
      000BB0 E5 09            [12] 1440 	mov	a,_Changed
      000BB2 60 21            [24] 1441 	jz	00107$
                                   1442 ;	../UI_Manager/ui.c:412: Changed = 0x00;
      000BB4 75 09 00         [24] 1443 	mov	_Changed,#0x00
                                   1444 ;	../UI_Manager/ui.c:413: changed = 0xFF;
      000BB7 75 0A FF         [24] 1445 	mov	_changed,#0xff
                                   1446 ;	../UI_Manager/ui.c:415: exe_command(CLEAR_DISPLAY);
      000BBA 90 80 00         [24] 1447 	mov	dptr,#0x8000
      000BBD 12 1B 30         [24] 1448 	lcall	_exe_command
                                   1449 ;	../UI_Manager/ui.c:417: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
      000BC0 75 21 0A         [24] 1450 	mov	_write_string_PARM_2,#0x0a
      000BC3 75 22 03         [24] 1451 	mov	_write_string_PARM_3,#0x03
      000BC6 75 23 00         [24] 1452 	mov	_write_string_PARM_4,#0x00
      000BC9 75 24 00         [24] 1453 	mov	_write_string_PARM_5,#0x00
      000BCC 90 30 4E         [24] 1454 	mov	dptr,#___str_17
      000BCF 75 F0 80         [24] 1455 	mov	b,#0x80
      000BD2 12 18 DD         [24] 1456 	lcall	_write_string
      000BD5                       1457 00107$:
                                   1458 ;	../UI_Manager/ui.c:421: if(changed){
      000BD5 E5 0A            [12] 1459 	mov	a,_changed
      000BD7 70 01            [24] 1460 	jnz	00157$
      000BD9 22               [24] 1461 	ret
      000BDA                       1462 00157$:
                                   1463 ;	../UI_Manager/ui.c:422: changed = 0x00;
      000BDA 75 0A 00         [24] 1464 	mov	_changed,#0x00
                                   1465 ;	../UI_Manager/ui.c:424: switch (get_runtime_data(FOG_POWER_INDEX))
      000BDD 75 82 00         [24] 1466 	mov	dpl,#0x00
      000BE0 12 28 C8         [24] 1467 	lcall	_get_runtime_data
      000BE3 AF 82            [24] 1468 	mov	r7,dpl
      000BE5 BF 00 02         [24] 1469 	cjne	r7,#0x00,00158$
      000BE8 80 0B            [24] 1470 	sjmp	00108$
      000BEA                       1471 00158$:
      000BEA BF 01 02         [24] 1472 	cjne	r7,#0x01,00159$
      000BED 80 33            [24] 1473 	sjmp	00109$
      000BEF                       1474 00159$:
      000BEF BF 02 02         [24] 1475 	cjne	r7,#0x02,00160$
      000BF2 80 67            [24] 1476 	sjmp	00110$
      000BF4                       1477 00160$:
      000BF4 22               [24] 1478 	ret
                                   1479 ;	../UI_Manager/ui.c:426: case OPTION_FOG_LOW:
      000BF5                       1480 00108$:
                                   1481 ;	../UI_Manager/ui.c:427: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000BF5 75 82 00         [24] 1482 	mov	dpl,#0x00
      000BF8 12 14 7F         [24] 1483 	lcall	_getString
      000BFB AD 82            [24] 1484 	mov	r5,dpl
      000BFD AE 83            [24] 1485 	mov	r6,dph
      000BFF AF F0            [24] 1486 	mov	r7,b
      000C01 75 21 10         [24] 1487 	mov	_write_string_PARM_2,#0x10
      000C04 75 22 03         [24] 1488 	mov	_write_string_PARM_3,#0x03
      000C07 75 23 01         [24] 1489 	mov	_write_string_PARM_4,#0x01
      000C0A 75 24 00         [24] 1490 	mov	_write_string_PARM_5,#0x00
      000C0D 8D 82            [24] 1491 	mov	dpl,r5
      000C0F 8E 83            [24] 1492 	mov	dph,r6
      000C11 8F F0            [24] 1493 	mov	b,r7
      000C13 12 18 DD         [24] 1494 	lcall	_write_string
                                   1495 ;	../UI_Manager/ui.c:428: write_char(CHAR_LVL_1, 12, LINE_1);
      000C16 75 2B 0C         [24] 1496 	mov	_write_char_PARM_2,#0x0c
      000C19 75 2C 01         [24] 1497 	mov	_write_char_PARM_3,#0x01
      000C1C 75 82 40         [24] 1498 	mov	dpl,#0x40
                                   1499 ;	../UI_Manager/ui.c:429: break;
      000C1F 02 1A FB         [24] 1500 	ljmp	_write_char
                                   1501 ;	../UI_Manager/ui.c:430: case OPTION_FOG_MEDIUM:
      000C22                       1502 00109$:
                                   1503 ;	../UI_Manager/ui.c:431: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000C22 75 82 01         [24] 1504 	mov	dpl,#0x01
      000C25 12 14 7F         [24] 1505 	lcall	_getString
      000C28 AD 82            [24] 1506 	mov	r5,dpl
      000C2A AE 83            [24] 1507 	mov	r6,dph
      000C2C AF F0            [24] 1508 	mov	r7,b
      000C2E 75 21 10         [24] 1509 	mov	_write_string_PARM_2,#0x10
      000C31 75 22 03         [24] 1510 	mov	_write_string_PARM_3,#0x03
      000C34 75 23 01         [24] 1511 	mov	_write_string_PARM_4,#0x01
      000C37 75 24 00         [24] 1512 	mov	_write_string_PARM_5,#0x00
      000C3A 8D 82            [24] 1513 	mov	dpl,r5
      000C3C 8E 83            [24] 1514 	mov	dph,r6
      000C3E 8F F0            [24] 1515 	mov	b,r7
      000C40 12 18 DD         [24] 1516 	lcall	_write_string
                                   1517 ;	../UI_Manager/ui.c:432: write_char(CHAR_LVL_1, 12, LINE_1);
      000C43 75 2B 0C         [24] 1518 	mov	_write_char_PARM_2,#0x0c
      000C46 75 2C 01         [24] 1519 	mov	_write_char_PARM_3,#0x01
      000C49 75 82 40         [24] 1520 	mov	dpl,#0x40
      000C4C 12 1A FB         [24] 1521 	lcall	_write_char
                                   1522 ;	../UI_Manager/ui.c:433: write_char(CHAR_LVL_2, 13, LINE_1);
      000C4F 75 2B 0D         [24] 1523 	mov	_write_char_PARM_2,#0x0d
      000C52 75 2C 01         [24] 1524 	mov	_write_char_PARM_3,#0x01
      000C55 75 82 C0         [24] 1525 	mov	dpl,#0xc0
                                   1526 ;	../UI_Manager/ui.c:434: break;
                                   1527 ;	../UI_Manager/ui.c:435: case OPTION_FOG_HIGH:
      000C58 02 1A FB         [24] 1528 	ljmp	_write_char
      000C5B                       1529 00110$:
                                   1530 ;	../UI_Manager/ui.c:436: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000C5B 75 82 02         [24] 1531 	mov	dpl,#0x02
      000C5E 12 14 7F         [24] 1532 	lcall	_getString
      000C61 AD 82            [24] 1533 	mov	r5,dpl
      000C63 AE 83            [24] 1534 	mov	r6,dph
      000C65 AF F0            [24] 1535 	mov	r7,b
      000C67 75 21 10         [24] 1536 	mov	_write_string_PARM_2,#0x10
      000C6A 75 22 03         [24] 1537 	mov	_write_string_PARM_3,#0x03
      000C6D 75 23 01         [24] 1538 	mov	_write_string_PARM_4,#0x01
      000C70 75 24 00         [24] 1539 	mov	_write_string_PARM_5,#0x00
      000C73 8D 82            [24] 1540 	mov	dpl,r5
      000C75 8E 83            [24] 1541 	mov	dph,r6
      000C77 8F F0            [24] 1542 	mov	b,r7
      000C79 12 18 DD         [24] 1543 	lcall	_write_string
                                   1544 ;	../UI_Manager/ui.c:437: write_char(CHAR_LVL_1, 12, LINE_1);
      000C7C 75 2B 0C         [24] 1545 	mov	_write_char_PARM_2,#0x0c
      000C7F 75 2C 01         [24] 1546 	mov	_write_char_PARM_3,#0x01
      000C82 75 82 40         [24] 1547 	mov	dpl,#0x40
      000C85 12 1A FB         [24] 1548 	lcall	_write_char
                                   1549 ;	../UI_Manager/ui.c:438: write_char(CHAR_LVL_2, 13, LINE_1);
      000C88 75 2B 0D         [24] 1550 	mov	_write_char_PARM_2,#0x0d
      000C8B 75 2C 01         [24] 1551 	mov	_write_char_PARM_3,#0x01
      000C8E 75 82 C0         [24] 1552 	mov	dpl,#0xc0
      000C91 12 1A FB         [24] 1553 	lcall	_write_char
                                   1554 ;	../UI_Manager/ui.c:439: write_char(CHAR_LVL_3, 14, LINE_1);
      000C94 75 2B 0E         [24] 1555 	mov	_write_char_PARM_2,#0x0e
      000C97 75 2C 01         [24] 1556 	mov	_write_char_PARM_3,#0x01
      000C9A 75 82 20         [24] 1557 	mov	dpl,#0x20
                                   1558 ;	../UI_Manager/ui.c:441: }
                                   1559 ;	../UI_Manager/ui.c:444: }
      000C9D 02 1A FB         [24] 1560 	ljmp	_write_char
                                   1561 ;------------------------------------------------------------
                                   1562 ;Allocation info for local variables in function 'fogIntervalPage'
                                   1563 ;------------------------------------------------------------
                                   1564 ;action                    Allocated to registers r7 
                                   1565 ;------------------------------------------------------------
                                   1566 ;	../UI_Manager/ui.c:446: void fogIntervalPage(uint8_t action){
                                   1567 ;	-----------------------------------------
                                   1568 ;	 function fogIntervalPage
                                   1569 ;	-----------------------------------------
      000CA0                       1570 _fogIntervalPage:
      000CA0 AF 82            [24] 1571 	mov	r7,dpl
                                   1572 ;	../UI_Manager/ui.c:448: switch (action)
      000CA2 BF 01 02         [24] 1573 	cjne	r7,#0x01,00146$
      000CA5 80 44            [24] 1574 	sjmp	00106$
      000CA7                       1575 00146$:
      000CA7 BF 02 02         [24] 1576 	cjne	r7,#0x02,00147$
      000CAA 80 36            [24] 1577 	sjmp	00105$
      000CAC                       1578 00147$:
      000CAC BF 03 02         [24] 1579 	cjne	r7,#0x03,00148$
      000CAF 80 0F            [24] 1580 	sjmp	00102$
      000CB1                       1581 00148$:
      000CB1 BF 0B 02         [24] 1582 	cjne	r7,#0x0b,00149$
      000CB4 80 1B            [24] 1583 	sjmp	00104$
      000CB6                       1584 00149$:
      000CB6 BF 1F 02         [24] 1585 	cjne	r7,#0x1f,00150$
      000CB9 80 05            [24] 1586 	sjmp	00102$
      000CBB                       1587 00150$:
                                   1588 ;	../UI_Manager/ui.c:451: case BUTTON_UP:
      000CBB BF 6F 36         [24] 1589 	cjne	r7,#0x6f,00107$
      000CBE 80 11            [24] 1590 	sjmp	00104$
      000CC0                       1591 00102$:
                                   1592 ;	../UI_Manager/ui.c:452: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
      000CC0 75 69 01         [24] 1593 	mov	_set_runtime_data_PARM_2,#0x01
      000CC3 75 6A 00         [24] 1594 	mov	_set_runtime_data_PARM_3,#0x00
      000CC6 75 82 02         [24] 1595 	mov	dpl,#0x02
      000CC9 12 29 5C         [24] 1596 	lcall	_set_runtime_data
                                   1597 ;	../UI_Manager/ui.c:453: changed = 0xFF;
      000CCC 75 0A FF         [24] 1598 	mov	_changed,#0xff
                                   1599 ;	../UI_Manager/ui.c:454: break;
                                   1600 ;	../UI_Manager/ui.c:456: case BUTTON_DOWN:
      000CCF 80 23            [24] 1601 	sjmp	00107$
      000CD1                       1602 00104$:
                                   1603 ;	../UI_Manager/ui.c:457: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
      000CD1 75 69 02         [24] 1604 	mov	_set_runtime_data_PARM_2,#0x02
      000CD4 75 6A 00         [24] 1605 	mov	_set_runtime_data_PARM_3,#0x00
      000CD7 75 82 02         [24] 1606 	mov	dpl,#0x02
      000CDA 12 29 5C         [24] 1607 	lcall	_set_runtime_data
                                   1608 ;	../UI_Manager/ui.c:458: changed = 0xFF;  
      000CDD 75 0A FF         [24] 1609 	mov	_changed,#0xff
                                   1610 ;	../UI_Manager/ui.c:459: break;
                                   1611 ;	../UI_Manager/ui.c:460: case BUTTON_FUNCTION:
      000CE0 80 12            [24] 1612 	sjmp	00107$
      000CE2                       1613 00105$:
                                   1614 ;	../UI_Manager/ui.c:461: set_ui_state(INC, NULL);
      000CE2 75 17 00         [24] 1615 	mov	_set_ui_state_PARM_2,#0x00
      000CE5 75 82 01         [24] 1616 	mov	dpl,#0x01
                                   1617 ;	../UI_Manager/ui.c:462: return;
                                   1618 ;	../UI_Manager/ui.c:463: case BUTTON_TIMER:
      000CE8 02 13 EB         [24] 1619 	ljmp	_set_ui_state
      000CEB                       1620 00106$:
                                   1621 ;	../UI_Manager/ui.c:464: set_ui_state(DEC, NULL);
      000CEB 75 17 00         [24] 1622 	mov	_set_ui_state_PARM_2,#0x00
      000CEE 75 82 02         [24] 1623 	mov	dpl,#0x02
                                   1624 ;	../UI_Manager/ui.c:465: return;
                                   1625 ;	../UI_Manager/ui.c:466: }
      000CF1 02 13 EB         [24] 1626 	ljmp	_set_ui_state
      000CF4                       1627 00107$:
                                   1628 ;	../UI_Manager/ui.c:468: if(Changed){
      000CF4 E5 09            [12] 1629 	mov	a,_Changed
      000CF6 60 36            [24] 1630 	jz	00109$
                                   1631 ;	../UI_Manager/ui.c:469: Changed = 0x00;
      000CF8 75 09 00         [24] 1632 	mov	_Changed,#0x00
                                   1633 ;	../UI_Manager/ui.c:470: changed = 0xFF;
      000CFB 75 0A FF         [24] 1634 	mov	_changed,#0xff
                                   1635 ;	../UI_Manager/ui.c:472: exe_command(CLEAR_DISPLAY);
      000CFE 90 80 00         [24] 1636 	mov	dptr,#0x8000
      000D01 12 1B 30         [24] 1637 	lcall	_exe_command
                                   1638 ;	../UI_Manager/ui.c:474: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
      000D04 75 21 0D         [24] 1639 	mov	_write_string_PARM_2,#0x0d
      000D07 75 22 02         [24] 1640 	mov	_write_string_PARM_3,#0x02
      000D0A 75 23 00         [24] 1641 	mov	_write_string_PARM_4,#0x00
      000D0D 75 24 00         [24] 1642 	mov	_write_string_PARM_5,#0x00
      000D10 90 30 58         [24] 1643 	mov	dptr,#___str_18
      000D13 75 F0 80         [24] 1644 	mov	b,#0x80
      000D16 12 18 DD         [24] 1645 	lcall	_write_string
                                   1646 ;	../UI_Manager/ui.c:475: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      000D19 75 21 08         [24] 1647 	mov	_write_string_PARM_2,#0x08
      000D1C 75 22 07         [24] 1648 	mov	_write_string_PARM_3,#0x07
      000D1F 75 23 01         [24] 1649 	mov	_write_string_PARM_4,#0x01
      000D22 75 24 00         [24] 1650 	mov	_write_string_PARM_5,#0x00
      000D25 90 30 65         [24] 1651 	mov	dptr,#___str_19
      000D28 75 F0 80         [24] 1652 	mov	b,#0x80
      000D2B 12 18 DD         [24] 1653 	lcall	_write_string
      000D2E                       1654 00109$:
                                   1655 ;	../UI_Manager/ui.c:479: if(changed){
      000D2E E5 0A            [12] 1656 	mov	a,_changed
      000D30 60 1C            [24] 1657 	jz	00112$
                                   1658 ;	../UI_Manager/ui.c:480: changed = 0x00;
      000D32 75 0A 00         [24] 1659 	mov	_changed,#0x00
                                   1660 ;	../UI_Manager/ui.c:482: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);
      000D35 75 82 02         [24] 1661 	mov	dpl,#0x02
      000D38 12 28 C8         [24] 1662 	lcall	_get_runtime_data
      000D3B AF 82            [24] 1663 	mov	r7,dpl
      000D3D 7E 00            [12] 1664 	mov	r6,#0x00
      000D3F 75 25 01         [24] 1665 	mov	_write_number_PARM_2,#0x01
      000D42 75 26 01         [24] 1666 	mov	_write_number_PARM_3,#0x01
                                   1667 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000D45 8E 27            [24] 1668 	mov	_write_number_PARM_4,r6
      000D47 8F 82            [24] 1669 	mov	dpl,r7
      000D49 8E 83            [24] 1670 	mov	dph,r6
                                   1671 ;	../UI_Manager/ui.c:487: }
      000D4B 02 19 A1         [24] 1672 	ljmp	_write_number
      000D4E                       1673 00112$:
      000D4E 22               [24] 1674 	ret
                                   1675 ;------------------------------------------------------------
                                   1676 ;Allocation info for local variables in function 'fogDurationPage'
                                   1677 ;------------------------------------------------------------
                                   1678 ;action                    Allocated to registers r7 
                                   1679 ;------------------------------------------------------------
                                   1680 ;	../UI_Manager/ui.c:489: void fogDurationPage(uint8_t action){
                                   1681 ;	-----------------------------------------
                                   1682 ;	 function fogDurationPage
                                   1683 ;	-----------------------------------------
      000D4F                       1684 _fogDurationPage:
      000D4F AF 82            [24] 1685 	mov	r7,dpl
                                   1686 ;	../UI_Manager/ui.c:491: switch (action)
      000D51 BF 01 02         [24] 1687 	cjne	r7,#0x01,00146$
      000D54 80 44            [24] 1688 	sjmp	00106$
      000D56                       1689 00146$:
      000D56 BF 02 02         [24] 1690 	cjne	r7,#0x02,00147$
      000D59 80 36            [24] 1691 	sjmp	00105$
      000D5B                       1692 00147$:
      000D5B BF 03 02         [24] 1693 	cjne	r7,#0x03,00148$
      000D5E 80 0F            [24] 1694 	sjmp	00102$
      000D60                       1695 00148$:
      000D60 BF 0B 02         [24] 1696 	cjne	r7,#0x0b,00149$
      000D63 80 1B            [24] 1697 	sjmp	00104$
      000D65                       1698 00149$:
      000D65 BF 1F 02         [24] 1699 	cjne	r7,#0x1f,00150$
      000D68 80 05            [24] 1700 	sjmp	00102$
      000D6A                       1701 00150$:
                                   1702 ;	../UI_Manager/ui.c:494: case BUTTON_UP:
      000D6A BF 6F 36         [24] 1703 	cjne	r7,#0x6f,00107$
      000D6D 80 11            [24] 1704 	sjmp	00104$
      000D6F                       1705 00102$:
                                   1706 ;	../UI_Manager/ui.c:495: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
      000D6F 75 69 01         [24] 1707 	mov	_set_runtime_data_PARM_2,#0x01
      000D72 75 6A 00         [24] 1708 	mov	_set_runtime_data_PARM_3,#0x00
      000D75 75 82 01         [24] 1709 	mov	dpl,#0x01
      000D78 12 29 5C         [24] 1710 	lcall	_set_runtime_data
                                   1711 ;	../UI_Manager/ui.c:496: changed = 0xFF;
      000D7B 75 0A FF         [24] 1712 	mov	_changed,#0xff
                                   1713 ;	../UI_Manager/ui.c:497: break;
                                   1714 ;	../UI_Manager/ui.c:499: case BUTTON_DOWN:
      000D7E 80 23            [24] 1715 	sjmp	00107$
      000D80                       1716 00104$:
                                   1717 ;	../UI_Manager/ui.c:500: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
      000D80 75 69 02         [24] 1718 	mov	_set_runtime_data_PARM_2,#0x02
      000D83 75 6A 00         [24] 1719 	mov	_set_runtime_data_PARM_3,#0x00
      000D86 75 82 01         [24] 1720 	mov	dpl,#0x01
      000D89 12 29 5C         [24] 1721 	lcall	_set_runtime_data
                                   1722 ;	../UI_Manager/ui.c:501: changed = 0xFF;  
      000D8C 75 0A FF         [24] 1723 	mov	_changed,#0xff
                                   1724 ;	../UI_Manager/ui.c:502: break;
                                   1725 ;	../UI_Manager/ui.c:503: case BUTTON_FUNCTION:
      000D8F 80 12            [24] 1726 	sjmp	00107$
      000D91                       1727 00105$:
                                   1728 ;	../UI_Manager/ui.c:504: set_ui_state(INC, NULL);
      000D91 75 17 00         [24] 1729 	mov	_set_ui_state_PARM_2,#0x00
      000D94 75 82 01         [24] 1730 	mov	dpl,#0x01
                                   1731 ;	../UI_Manager/ui.c:505: return;
                                   1732 ;	../UI_Manager/ui.c:506: case BUTTON_TIMER:
      000D97 02 13 EB         [24] 1733 	ljmp	_set_ui_state
      000D9A                       1734 00106$:
                                   1735 ;	../UI_Manager/ui.c:507: set_ui_state(DEC, NULL);
      000D9A 75 17 00         [24] 1736 	mov	_set_ui_state_PARM_2,#0x00
      000D9D 75 82 02         [24] 1737 	mov	dpl,#0x02
                                   1738 ;	../UI_Manager/ui.c:508: return;
                                   1739 ;	../UI_Manager/ui.c:509: }
      000DA0 02 13 EB         [24] 1740 	ljmp	_set_ui_state
      000DA3                       1741 00107$:
                                   1742 ;	../UI_Manager/ui.c:511: if(Changed){
      000DA3 E5 09            [12] 1743 	mov	a,_Changed
      000DA5 60 36            [24] 1744 	jz	00109$
                                   1745 ;	../UI_Manager/ui.c:512: Changed = 0x00;
      000DA7 75 09 00         [24] 1746 	mov	_Changed,#0x00
                                   1747 ;	../UI_Manager/ui.c:513: changed = 0xFF;
      000DAA 75 0A FF         [24] 1748 	mov	_changed,#0xff
                                   1749 ;	../UI_Manager/ui.c:515: exe_command(CLEAR_DISPLAY);
      000DAD 90 80 00         [24] 1750 	mov	dptr,#0x8000
      000DB0 12 1B 30         [24] 1751 	lcall	_exe_command
                                   1752 ;	../UI_Manager/ui.c:517: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
      000DB3 75 21 0D         [24] 1753 	mov	_write_string_PARM_2,#0x0d
      000DB6 75 22 02         [24] 1754 	mov	_write_string_PARM_3,#0x02
      000DB9 75 23 00         [24] 1755 	mov	_write_string_PARM_4,#0x00
      000DBC 75 24 00         [24] 1756 	mov	_write_string_PARM_5,#0x00
      000DBF 90 30 6D         [24] 1757 	mov	dptr,#___str_20
      000DC2 75 F0 80         [24] 1758 	mov	b,#0x80
      000DC5 12 18 DD         [24] 1759 	lcall	_write_string
                                   1760 ;	../UI_Manager/ui.c:518: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      000DC8 75 21 08         [24] 1761 	mov	_write_string_PARM_2,#0x08
      000DCB 75 22 07         [24] 1762 	mov	_write_string_PARM_3,#0x07
      000DCE 75 23 01         [24] 1763 	mov	_write_string_PARM_4,#0x01
      000DD1 75 24 00         [24] 1764 	mov	_write_string_PARM_5,#0x00
      000DD4 90 30 65         [24] 1765 	mov	dptr,#___str_19
      000DD7 75 F0 80         [24] 1766 	mov	b,#0x80
      000DDA 12 18 DD         [24] 1767 	lcall	_write_string
      000DDD                       1768 00109$:
                                   1769 ;	../UI_Manager/ui.c:522: if(changed){
      000DDD E5 0A            [12] 1770 	mov	a,_changed
      000DDF 60 1C            [24] 1771 	jz	00112$
                                   1772 ;	../UI_Manager/ui.c:523: changed = 0x00;
      000DE1 75 0A 00         [24] 1773 	mov	_changed,#0x00
                                   1774 ;	../UI_Manager/ui.c:525: write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);
      000DE4 75 82 01         [24] 1775 	mov	dpl,#0x01
      000DE7 12 28 C8         [24] 1776 	lcall	_get_runtime_data
      000DEA AF 82            [24] 1777 	mov	r7,dpl
      000DEC 7E 00            [12] 1778 	mov	r6,#0x00
      000DEE 75 25 01         [24] 1779 	mov	_write_number_PARM_2,#0x01
      000DF1 75 26 01         [24] 1780 	mov	_write_number_PARM_3,#0x01
                                   1781 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000DF4 8E 27            [24] 1782 	mov	_write_number_PARM_4,r6
      000DF6 8F 82            [24] 1783 	mov	dpl,r7
      000DF8 8E 83            [24] 1784 	mov	dph,r6
                                   1785 ;	../UI_Manager/ui.c:528: }
      000DFA 02 19 A1         [24] 1786 	ljmp	_write_number
      000DFD                       1787 00112$:
      000DFD 22               [24] 1788 	ret
                                   1789 ;------------------------------------------------------------
                                   1790 ;Allocation info for local variables in function 'macroPage'
                                   1791 ;------------------------------------------------------------
                                   1792 ;action                    Allocated to registers r7 
                                   1793 ;------------------------------------------------------------
                                   1794 ;	../UI_Manager/ui.c:530: void macroPage(uint8_t action){
                                   1795 ;	-----------------------------------------
                                   1796 ;	 function macroPage
                                   1797 ;	-----------------------------------------
      000DFE                       1798 _macroPage:
      000DFE AF 82            [24] 1799 	mov	r7,dpl
                                   1800 ;	../UI_Manager/ui.c:532: switch (action)
      000E00 BF 01 02         [24] 1801 	cjne	r7,#0x01,00146$
      000E03 80 44            [24] 1802 	sjmp	00106$
      000E05                       1803 00146$:
      000E05 BF 02 02         [24] 1804 	cjne	r7,#0x02,00147$
      000E08 80 36            [24] 1805 	sjmp	00105$
      000E0A                       1806 00147$:
      000E0A BF 03 02         [24] 1807 	cjne	r7,#0x03,00148$
      000E0D 80 0F            [24] 1808 	sjmp	00102$
      000E0F                       1809 00148$:
      000E0F BF 0B 02         [24] 1810 	cjne	r7,#0x0b,00149$
      000E12 80 1B            [24] 1811 	sjmp	00104$
      000E14                       1812 00149$:
      000E14 BF 1F 02         [24] 1813 	cjne	r7,#0x1f,00150$
      000E17 80 05            [24] 1814 	sjmp	00102$
      000E19                       1815 00150$:
                                   1816 ;	../UI_Manager/ui.c:535: case BUTTON_UP:
      000E19 BF 6F 36         [24] 1817 	cjne	r7,#0x6f,00107$
      000E1C 80 11            [24] 1818 	sjmp	00104$
      000E1E                       1819 00102$:
                                   1820 ;	../UI_Manager/ui.c:536: set_runtime_data(MACRO_INDEX, INC, NULL);
      000E1E 75 69 01         [24] 1821 	mov	_set_runtime_data_PARM_2,#0x01
      000E21 75 6A 00         [24] 1822 	mov	_set_runtime_data_PARM_3,#0x00
      000E24 75 82 03         [24] 1823 	mov	dpl,#0x03
      000E27 12 29 5C         [24] 1824 	lcall	_set_runtime_data
                                   1825 ;	../UI_Manager/ui.c:537: changed = 0xFF;
      000E2A 75 0A FF         [24] 1826 	mov	_changed,#0xff
                                   1827 ;	../UI_Manager/ui.c:538: break;
                                   1828 ;	../UI_Manager/ui.c:540: case BUTTON_DOWN:
      000E2D 80 23            [24] 1829 	sjmp	00107$
      000E2F                       1830 00104$:
                                   1831 ;	../UI_Manager/ui.c:541: set_runtime_data(MACRO_INDEX, DEC, NULL);
      000E2F 75 69 02         [24] 1832 	mov	_set_runtime_data_PARM_2,#0x02
      000E32 75 6A 00         [24] 1833 	mov	_set_runtime_data_PARM_3,#0x00
      000E35 75 82 03         [24] 1834 	mov	dpl,#0x03
      000E38 12 29 5C         [24] 1835 	lcall	_set_runtime_data
                                   1836 ;	../UI_Manager/ui.c:542: changed = 0xFF;  
      000E3B 75 0A FF         [24] 1837 	mov	_changed,#0xff
                                   1838 ;	../UI_Manager/ui.c:543: break;
                                   1839 ;	../UI_Manager/ui.c:544: case BUTTON_FUNCTION:
      000E3E 80 12            [24] 1840 	sjmp	00107$
      000E40                       1841 00105$:
                                   1842 ;	../UI_Manager/ui.c:545: set_ui_state(INC, NULL);
      000E40 75 17 00         [24] 1843 	mov	_set_ui_state_PARM_2,#0x00
      000E43 75 82 01         [24] 1844 	mov	dpl,#0x01
                                   1845 ;	../UI_Manager/ui.c:546: return;
                                   1846 ;	../UI_Manager/ui.c:547: case BUTTON_TIMER:
      000E46 02 13 EB         [24] 1847 	ljmp	_set_ui_state
      000E49                       1848 00106$:
                                   1849 ;	../UI_Manager/ui.c:548: set_ui_state(DEC, NULL);
      000E49 75 17 00         [24] 1850 	mov	_set_ui_state_PARM_2,#0x00
      000E4C 75 82 02         [24] 1851 	mov	dpl,#0x02
                                   1852 ;	../UI_Manager/ui.c:549: return;
                                   1853 ;	../UI_Manager/ui.c:550: }
      000E4F 02 13 EB         [24] 1854 	ljmp	_set_ui_state
      000E52                       1855 00107$:
                                   1856 ;	../UI_Manager/ui.c:552: if(Changed){
      000E52 E5 09            [12] 1857 	mov	a,_Changed
      000E54 60 21            [24] 1858 	jz	00109$
                                   1859 ;	../UI_Manager/ui.c:553: Changed = 0x00;
      000E56 75 09 00         [24] 1860 	mov	_Changed,#0x00
                                   1861 ;	../UI_Manager/ui.c:554: changed = 0xFF;
      000E59 75 0A FF         [24] 1862 	mov	_changed,#0xff
                                   1863 ;	../UI_Manager/ui.c:556: exe_command(CLEAR_DISPLAY);
      000E5C 90 80 00         [24] 1864 	mov	dptr,#0x8000
      000E5F 12 1B 30         [24] 1865 	lcall	_exe_command
                                   1866 ;	../UI_Manager/ui.c:558: write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);
      000E62 75 21 07         [24] 1867 	mov	_write_string_PARM_2,#0x07
      000E65 75 22 04         [24] 1868 	mov	_write_string_PARM_3,#0x04
      000E68 75 23 00         [24] 1869 	mov	_write_string_PARM_4,#0x00
      000E6B 75 24 00         [24] 1870 	mov	_write_string_PARM_5,#0x00
      000E6E 90 30 7A         [24] 1871 	mov	dptr,#___str_21
      000E71 75 F0 80         [24] 1872 	mov	b,#0x80
      000E74 12 18 DD         [24] 1873 	lcall	_write_string
      000E77                       1874 00109$:
                                   1875 ;	../UI_Manager/ui.c:562: if(changed){
      000E77 E5 0A            [12] 1876 	mov	a,_changed
      000E79 60 2E            [24] 1877 	jz	00112$
                                   1878 ;	../UI_Manager/ui.c:563: changed = 0x00;
      000E7B 75 0A 00         [24] 1879 	mov	_changed,#0x00
                                   1880 ;	../UI_Manager/ui.c:565: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      000E7E 75 82 03         [24] 1881 	mov	dpl,#0x03
      000E81 12 28 C8         [24] 1882 	lcall	_get_runtime_data
      000E84 AF 82            [24] 1883 	mov	r7,dpl
      000E86 74 14            [12] 1884 	mov	a,#0x14
      000E88 2F               [12] 1885 	add	a,r7
      000E89 F5 82            [12] 1886 	mov	dpl,a
      000E8B 12 14 7F         [24] 1887 	lcall	_getString
      000E8E AD 82            [24] 1888 	mov	r5,dpl
      000E90 AE 83            [24] 1889 	mov	r6,dph
      000E92 AF F0            [24] 1890 	mov	r7,b
      000E94 75 21 10         [24] 1891 	mov	_write_string_PARM_2,#0x10
      000E97 75 22 06         [24] 1892 	mov	_write_string_PARM_3,#0x06
      000E9A 75 23 01         [24] 1893 	mov	_write_string_PARM_4,#0x01
      000E9D 75 24 00         [24] 1894 	mov	_write_string_PARM_5,#0x00
      000EA0 8D 82            [24] 1895 	mov	dpl,r5
      000EA2 8E 83            [24] 1896 	mov	dph,r6
      000EA4 8F F0            [24] 1897 	mov	b,r7
                                   1898 ;	../UI_Manager/ui.c:568: }
      000EA6 02 18 DD         [24] 1899 	ljmp	_write_string
      000EA9                       1900 00112$:
      000EA9 22               [24] 1901 	ret
                                   1902 ;------------------------------------------------------------
                                   1903 ;Allocation info for local variables in function 'macroSpeedPage'
                                   1904 ;------------------------------------------------------------
                                   1905 ;action                    Allocated to registers r7 
                                   1906 ;------------------------------------------------------------
                                   1907 ;	../UI_Manager/ui.c:570: void macroSpeedPage(uint8_t action){
                                   1908 ;	-----------------------------------------
                                   1909 ;	 function macroSpeedPage
                                   1910 ;	-----------------------------------------
      000EAA                       1911 _macroSpeedPage:
      000EAA AF 82            [24] 1912 	mov	r7,dpl
                                   1913 ;	../UI_Manager/ui.c:572: switch (action)
      000EAC BF 01 02         [24] 1914 	cjne	r7,#0x01,00153$
      000EAF 80 44            [24] 1915 	sjmp	00106$
      000EB1                       1916 00153$:
      000EB1 BF 02 02         [24] 1917 	cjne	r7,#0x02,00154$
      000EB4 80 36            [24] 1918 	sjmp	00105$
      000EB6                       1919 00154$:
      000EB6 BF 03 02         [24] 1920 	cjne	r7,#0x03,00155$
      000EB9 80 0F            [24] 1921 	sjmp	00102$
      000EBB                       1922 00155$:
      000EBB BF 0B 02         [24] 1923 	cjne	r7,#0x0b,00156$
      000EBE 80 1B            [24] 1924 	sjmp	00104$
      000EC0                       1925 00156$:
      000EC0 BF 1F 02         [24] 1926 	cjne	r7,#0x1f,00157$
      000EC3 80 05            [24] 1927 	sjmp	00102$
      000EC5                       1928 00157$:
                                   1929 ;	../UI_Manager/ui.c:575: case BUTTON_UP:
      000EC5 BF 6F 36         [24] 1930 	cjne	r7,#0x6f,00107$
      000EC8 80 11            [24] 1931 	sjmp	00104$
      000ECA                       1932 00102$:
                                   1933 ;	../UI_Manager/ui.c:576: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
      000ECA 75 69 01         [24] 1934 	mov	_set_runtime_data_PARM_2,#0x01
      000ECD 75 6A 00         [24] 1935 	mov	_set_runtime_data_PARM_3,#0x00
      000ED0 75 82 04         [24] 1936 	mov	dpl,#0x04
      000ED3 12 29 5C         [24] 1937 	lcall	_set_runtime_data
                                   1938 ;	../UI_Manager/ui.c:577: changed = 0xFF;
      000ED6 75 0A FF         [24] 1939 	mov	_changed,#0xff
                                   1940 ;	../UI_Manager/ui.c:578: break;
                                   1941 ;	../UI_Manager/ui.c:580: case BUTTON_DOWN:
      000ED9 80 23            [24] 1942 	sjmp	00107$
      000EDB                       1943 00104$:
                                   1944 ;	../UI_Manager/ui.c:581: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
      000EDB 75 69 02         [24] 1945 	mov	_set_runtime_data_PARM_2,#0x02
      000EDE 75 6A 00         [24] 1946 	mov	_set_runtime_data_PARM_3,#0x00
      000EE1 75 82 04         [24] 1947 	mov	dpl,#0x04
      000EE4 12 29 5C         [24] 1948 	lcall	_set_runtime_data
                                   1949 ;	../UI_Manager/ui.c:582: changed = 0xFF;  
      000EE7 75 0A FF         [24] 1950 	mov	_changed,#0xff
                                   1951 ;	../UI_Manager/ui.c:583: break;
                                   1952 ;	../UI_Manager/ui.c:584: case BUTTON_FUNCTION:
      000EEA 80 12            [24] 1953 	sjmp	00107$
      000EEC                       1954 00105$:
                                   1955 ;	../UI_Manager/ui.c:585: set_ui_state(INC, NULL);
      000EEC 75 17 00         [24] 1956 	mov	_set_ui_state_PARM_2,#0x00
      000EEF 75 82 01         [24] 1957 	mov	dpl,#0x01
                                   1958 ;	../UI_Manager/ui.c:586: return;
      000EF2 02 13 EB         [24] 1959 	ljmp	_set_ui_state
                                   1960 ;	../UI_Manager/ui.c:587: case BUTTON_TIMER:
      000EF5                       1961 00106$:
                                   1962 ;	../UI_Manager/ui.c:588: set_ui_state(DEC, NULL);
      000EF5 75 17 00         [24] 1963 	mov	_set_ui_state_PARM_2,#0x00
      000EF8 75 82 02         [24] 1964 	mov	dpl,#0x02
                                   1965 ;	../UI_Manager/ui.c:589: return;
      000EFB 02 13 EB         [24] 1966 	ljmp	_set_ui_state
                                   1967 ;	../UI_Manager/ui.c:590: }
      000EFE                       1968 00107$:
                                   1969 ;	../UI_Manager/ui.c:592: if(Changed){
      000EFE E5 09            [12] 1970 	mov	a,_Changed
      000F00 60 21            [24] 1971 	jz	00109$
                                   1972 ;	../UI_Manager/ui.c:593: Changed = 0x00;
      000F02 75 09 00         [24] 1973 	mov	_Changed,#0x00
                                   1974 ;	../UI_Manager/ui.c:594: changed = 0xFF;
      000F05 75 0A FF         [24] 1975 	mov	_changed,#0xff
                                   1976 ;	../UI_Manager/ui.c:596: exe_command(CLEAR_DISPLAY);
      000F08 90 80 00         [24] 1977 	mov	dptr,#0x8000
      000F0B 12 1B 30         [24] 1978 	lcall	_exe_command
                                   1979 ;	../UI_Manager/ui.c:598: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
      000F0E 75 21 0C         [24] 1980 	mov	_write_string_PARM_2,#0x0c
      000F11 75 22 03         [24] 1981 	mov	_write_string_PARM_3,#0x03
      000F14 75 23 00         [24] 1982 	mov	_write_string_PARM_4,#0x00
      000F17 75 24 00         [24] 1983 	mov	_write_string_PARM_5,#0x00
      000F1A 90 30 81         [24] 1984 	mov	dptr,#___str_22
      000F1D 75 F0 80         [24] 1985 	mov	b,#0x80
      000F20 12 18 DD         [24] 1986 	lcall	_write_string
      000F23                       1987 00109$:
                                   1988 ;	../UI_Manager/ui.c:602: if(changed){
      000F23 E5 0A            [12] 1989 	mov	a,_changed
      000F25 60 4F            [24] 1990 	jz	00115$
                                   1991 ;	../UI_Manager/ui.c:603: changed = 0x00;
      000F27 75 0A 00         [24] 1992 	mov	_changed,#0x00
                                   1993 ;	../UI_Manager/ui.c:605: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
      000F2A 75 82 04         [24] 1994 	mov	dpl,#0x04
      000F2D 12 28 C8         [24] 1995 	lcall	_get_runtime_data
      000F30 E5 82            [12] 1996 	mov	a,dpl
                                   1997 ;	../UI_Manager/ui.c:606: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      000F32 70 14            [24] 1998 	jnz	00111$
      000F34 75 21 10         [24] 1999 	mov	_write_string_PARM_2,#0x10
      000F37 75 22 06         [24] 2000 	mov	_write_string_PARM_3,#0x06
      000F3A 75 23 01         [24] 2001 	mov	_write_string_PARM_4,#0x01
      000F3D F5 24            [12] 2002 	mov	_write_string_PARM_5,a
      000F3F 90 30 8D         [24] 2003 	mov	dptr,#___str_23
      000F42 75 F0 80         [24] 2004 	mov	b,#0x80
      000F45 02 18 DD         [24] 2005 	ljmp	_write_string
      000F48                       2006 00111$:
                                   2007 ;	../UI_Manager/ui.c:608: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000F48 75 21 10         [24] 2008 	mov	_write_string_PARM_2,#0x10
      000F4B 75 22 03         [24] 2009 	mov	_write_string_PARM_3,#0x03
      000F4E 75 23 01         [24] 2010 	mov	_write_string_PARM_4,#0x01
      000F51 75 24 00         [24] 2011 	mov	_write_string_PARM_5,#0x00
      000F54 90 30 91         [24] 2012 	mov	dptr,#___str_24
      000F57 75 F0 80         [24] 2013 	mov	b,#0x80
      000F5A 12 18 DD         [24] 2014 	lcall	_write_string
                                   2015 ;	../UI_Manager/ui.c:609: write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
      000F5D 75 82 04         [24] 2016 	mov	dpl,#0x04
      000F60 12 28 C8         [24] 2017 	lcall	_get_runtime_data
      000F63 AF 82            [24] 2018 	mov	r7,dpl
      000F65 7E 00            [12] 2019 	mov	r6,#0x00
      000F67 75 25 05         [24] 2020 	mov	_write_number_PARM_2,#0x05
      000F6A 75 26 01         [24] 2021 	mov	_write_number_PARM_3,#0x01
                                   2022 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000F6D 8E 27            [24] 2023 	mov	_write_number_PARM_4,r6
      000F6F 8F 82            [24] 2024 	mov	dpl,r7
      000F71 8E 83            [24] 2025 	mov	dph,r6
                                   2026 ;	../UI_Manager/ui.c:613: }
      000F73 02 19 A1         [24] 2027 	ljmp	_write_number
      000F76                       2028 00115$:
      000F76 22               [24] 2029 	ret
                                   2030 ;------------------------------------------------------------
                                   2031 ;Allocation info for local variables in function 'colorPage'
                                   2032 ;------------------------------------------------------------
                                   2033 ;action                    Allocated to registers r7 
                                   2034 ;index                     Allocated to registers r6 
                                   2035 ;------------------------------------------------------------
                                   2036 ;	../UI_Manager/ui.c:615: void colorPage(uint8_t action){
                                   2037 ;	-----------------------------------------
                                   2038 ;	 function colorPage
                                   2039 ;	-----------------------------------------
      000F77                       2040 _colorPage:
      000F77 AF 82            [24] 2041 	mov	r7,dpl
                                   2042 ;	../UI_Manager/ui.c:616: uint8_t index = 0;
      000F79 7E 00            [12] 2043 	mov	r6,#0x00
                                   2044 ;	../UI_Manager/ui.c:618: switch (State)
      000F7B AD 08            [24] 2045 	mov	r5,_State
      000F7D BD 06 02         [24] 2046 	cjne	r5,#0x06,00174$
      000F80 80 0F            [24] 2047 	sjmp	00101$
      000F82                       2048 00174$:
      000F82 BD 07 02         [24] 2049 	cjne	r5,#0x07,00175$
      000F85 80 0E            [24] 2050 	sjmp	00102$
      000F87                       2051 00175$:
      000F87 BD 08 02         [24] 2052 	cjne	r5,#0x08,00176$
      000F8A 80 0D            [24] 2053 	sjmp	00103$
      000F8C                       2054 00176$:
                                   2055 ;	../UI_Manager/ui.c:620: case MANUAL_RED_STATE:
      000F8C BD 09 10         [24] 2056 	cjne	r5,#0x09,00105$
      000F8F 80 0C            [24] 2057 	sjmp	00104$
      000F91                       2058 00101$:
                                   2059 ;	../UI_Manager/ui.c:621: index = RED_INDEX;
      000F91 7E 05            [12] 2060 	mov	r6,#0x05
                                   2061 ;	../UI_Manager/ui.c:622: break;
                                   2062 ;	../UI_Manager/ui.c:623: case MANUAL_GREEN_STATE:
      000F93 80 0A            [24] 2063 	sjmp	00105$
      000F95                       2064 00102$:
                                   2065 ;	../UI_Manager/ui.c:624: index = GREEN_INDEX;
      000F95 7E 06            [12] 2066 	mov	r6,#0x06
                                   2067 ;	../UI_Manager/ui.c:625: break;
                                   2068 ;	../UI_Manager/ui.c:626: case MANUAL_BLUE_STATE:
      000F97 80 06            [24] 2069 	sjmp	00105$
      000F99                       2070 00103$:
                                   2071 ;	../UI_Manager/ui.c:627: index = BLUE_INDEX;
      000F99 7E 07            [12] 2072 	mov	r6,#0x07
                                   2073 ;	../UI_Manager/ui.c:628: break;
                                   2074 ;	../UI_Manager/ui.c:629: case MANUAL_STROBE_STATE:
      000F9B 80 02            [24] 2075 	sjmp	00105$
      000F9D                       2076 00104$:
                                   2077 ;	../UI_Manager/ui.c:630: index = STROBE_INDEX;
      000F9D 7E 08            [12] 2078 	mov	r6,#0x08
                                   2079 ;	../UI_Manager/ui.c:632: }
      000F9F                       2080 00105$:
                                   2081 ;	../UI_Manager/ui.c:634: switch (action)
      000F9F BF 01 02         [24] 2082 	cjne	r7,#0x01,00178$
      000FA2 80 4A            [24] 2083 	sjmp	00111$
      000FA4                       2084 00178$:
      000FA4 BF 02 02         [24] 2085 	cjne	r7,#0x02,00179$
      000FA7 80 3C            [24] 2086 	sjmp	00110$
      000FA9                       2087 00179$:
      000FA9 BF 03 02         [24] 2088 	cjne	r7,#0x03,00180$
      000FAC 80 0F            [24] 2089 	sjmp	00107$
      000FAE                       2090 00180$:
      000FAE BF 0B 02         [24] 2091 	cjne	r7,#0x0b,00181$
      000FB1 80 1E            [24] 2092 	sjmp	00109$
      000FB3                       2093 00181$:
      000FB3 BF 1F 02         [24] 2094 	cjne	r7,#0x1f,00182$
      000FB6 80 05            [24] 2095 	sjmp	00107$
      000FB8                       2096 00182$:
                                   2097 ;	../UI_Manager/ui.c:637: case BUTTON_UP:
      000FB8 BF 6F 3C         [24] 2098 	cjne	r7,#0x6f,00112$
      000FBB 80 14            [24] 2099 	sjmp	00109$
      000FBD                       2100 00107$:
                                   2101 ;	../UI_Manager/ui.c:638: set_runtime_data(index, INC, NULL);
      000FBD 75 69 01         [24] 2102 	mov	_set_runtime_data_PARM_2,#0x01
      000FC0 75 6A 00         [24] 2103 	mov	_set_runtime_data_PARM_3,#0x00
      000FC3 8E 82            [24] 2104 	mov	dpl,r6
      000FC5 C0 06            [24] 2105 	push	ar6
      000FC7 12 29 5C         [24] 2106 	lcall	_set_runtime_data
      000FCA D0 06            [24] 2107 	pop	ar6
                                   2108 ;	../UI_Manager/ui.c:639: changed = 0xFF;
      000FCC 75 0A FF         [24] 2109 	mov	_changed,#0xff
                                   2110 ;	../UI_Manager/ui.c:640: break;
                                   2111 ;	../UI_Manager/ui.c:642: case BUTTON_DOWN:
      000FCF 80 26            [24] 2112 	sjmp	00112$
      000FD1                       2113 00109$:
                                   2114 ;	../UI_Manager/ui.c:643: set_runtime_data(index, DEC, NULL);
      000FD1 75 69 02         [24] 2115 	mov	_set_runtime_data_PARM_2,#0x02
      000FD4 75 6A 00         [24] 2116 	mov	_set_runtime_data_PARM_3,#0x00
      000FD7 8E 82            [24] 2117 	mov	dpl,r6
      000FD9 C0 06            [24] 2118 	push	ar6
      000FDB 12 29 5C         [24] 2119 	lcall	_set_runtime_data
      000FDE D0 06            [24] 2120 	pop	ar6
                                   2121 ;	../UI_Manager/ui.c:644: changed = 0xFF;  
      000FE0 75 0A FF         [24] 2122 	mov	_changed,#0xff
                                   2123 ;	../UI_Manager/ui.c:645: break;
                                   2124 ;	../UI_Manager/ui.c:646: case BUTTON_FUNCTION:
      000FE3 80 12            [24] 2125 	sjmp	00112$
      000FE5                       2126 00110$:
                                   2127 ;	../UI_Manager/ui.c:647: set_ui_state(INC, NULL);
      000FE5 75 17 00         [24] 2128 	mov	_set_ui_state_PARM_2,#0x00
      000FE8 75 82 01         [24] 2129 	mov	dpl,#0x01
                                   2130 ;	../UI_Manager/ui.c:648: return;
      000FEB 02 13 EB         [24] 2131 	ljmp	_set_ui_state
                                   2132 ;	../UI_Manager/ui.c:649: case BUTTON_TIMER:
      000FEE                       2133 00111$:
                                   2134 ;	../UI_Manager/ui.c:650: set_ui_state(DEC, NULL);
      000FEE 75 17 00         [24] 2135 	mov	_set_ui_state_PARM_2,#0x00
      000FF1 75 82 02         [24] 2136 	mov	dpl,#0x02
                                   2137 ;	../UI_Manager/ui.c:651: return;
      000FF4 02 13 EB         [24] 2138 	ljmp	_set_ui_state
                                   2139 ;	../UI_Manager/ui.c:652: }
      000FF7                       2140 00112$:
                                   2141 ;	../UI_Manager/ui.c:654: if(Changed){
      000FF7 E5 09            [12] 2142 	mov	a,_Changed
      000FF9 60 35            [24] 2143 	jz	00114$
                                   2144 ;	../UI_Manager/ui.c:655: Changed = 0x00;
      000FFB 75 09 00         [24] 2145 	mov	_Changed,#0x00
                                   2146 ;	../UI_Manager/ui.c:656: changed = 0xFF;
      000FFE 75 0A FF         [24] 2147 	mov	_changed,#0xff
                                   2148 ;	../UI_Manager/ui.c:658: exe_command(CLEAR_DISPLAY);
      001001 90 80 00         [24] 2149 	mov	dptr,#0x8000
      001004 C0 06            [24] 2150 	push	ar6
      001006 12 1B 30         [24] 2151 	lcall	_exe_command
                                   2152 ;	../UI_Manager/ui.c:660: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
      001009 AF 08            [24] 2153 	mov	r7,_State
      00100B 74 C8            [12] 2154 	mov	a,#0xc8
      00100D 2F               [12] 2155 	add	a,r7
      00100E F5 82            [12] 2156 	mov	dpl,a
      001010 12 14 7F         [24] 2157 	lcall	_getString
      001013 AC 82            [24] 2158 	mov	r4,dpl
      001015 AD 83            [24] 2159 	mov	r5,dph
      001017 AF F0            [24] 2160 	mov	r7,b
      001019 75 21 10         [24] 2161 	mov	_write_string_PARM_2,#0x10
      00101C 75 22 03         [24] 2162 	mov	_write_string_PARM_3,#0x03
      00101F 75 23 00         [24] 2163 	mov	_write_string_PARM_4,#0x00
      001022 75 24 00         [24] 2164 	mov	_write_string_PARM_5,#0x00
      001025 8C 82            [24] 2165 	mov	dpl,r4
      001027 8D 83            [24] 2166 	mov	dph,r5
      001029 8F F0            [24] 2167 	mov	b,r7
      00102B 12 18 DD         [24] 2168 	lcall	_write_string
      00102E D0 06            [24] 2169 	pop	ar6
      001030                       2170 00114$:
                                   2171 ;	../UI_Manager/ui.c:664: if(changed){
      001030 E5 0A            [12] 2172 	mov	a,_changed
      001032 60 55            [24] 2173 	jz	00120$
                                   2174 ;	../UI_Manager/ui.c:665: changed = 0x00;
      001034 75 0A 00         [24] 2175 	mov	_changed,#0x00
                                   2176 ;	../UI_Manager/ui.c:667: if(get_runtime_data(index) == 0){
      001037 8E 82            [24] 2177 	mov	dpl,r6
      001039 C0 06            [24] 2178 	push	ar6
      00103B 12 28 C8         [24] 2179 	lcall	_get_runtime_data
      00103E E5 82            [12] 2180 	mov	a,dpl
      001040 D0 06            [24] 2181 	pop	ar6
                                   2182 ;	../UI_Manager/ui.c:668: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001042 70 14            [24] 2183 	jnz	00116$
      001044 75 21 10         [24] 2184 	mov	_write_string_PARM_2,#0x10
      001047 75 22 06         [24] 2185 	mov	_write_string_PARM_3,#0x06
      00104A 75 23 01         [24] 2186 	mov	_write_string_PARM_4,#0x01
      00104D F5 24            [12] 2187 	mov	_write_string_PARM_5,a
      00104F 90 30 8D         [24] 2188 	mov	dptr,#___str_23
      001052 75 F0 80         [24] 2189 	mov	b,#0x80
      001055 02 18 DD         [24] 2190 	ljmp	_write_string
      001058                       2191 00116$:
                                   2192 ;	../UI_Manager/ui.c:670: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      001058 75 21 10         [24] 2193 	mov	_write_string_PARM_2,#0x10
      00105B 75 22 00         [24] 2194 	mov	_write_string_PARM_3,#0x00
      00105E 75 23 01         [24] 2195 	mov	_write_string_PARM_4,#0x01
      001061 75 24 00         [24] 2196 	mov	_write_string_PARM_5,#0x00
      001064 90 30 91         [24] 2197 	mov	dptr,#___str_24
      001067 75 F0 80         [24] 2198 	mov	b,#0x80
      00106A C0 06            [24] 2199 	push	ar6
      00106C 12 18 DD         [24] 2200 	lcall	_write_string
      00106F D0 06            [24] 2201 	pop	ar6
                                   2202 ;	../UI_Manager/ui.c:671: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
      001071 8E 82            [24] 2203 	mov	dpl,r6
      001073 12 28 C8         [24] 2204 	lcall	_get_runtime_data
      001076 AF 82            [24] 2205 	mov	r7,dpl
      001078 7E 00            [12] 2206 	mov	r6,#0x00
      00107A 75 25 06         [24] 2207 	mov	_write_number_PARM_2,#0x06
      00107D 75 26 01         [24] 2208 	mov	_write_number_PARM_3,#0x01
                                   2209 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      001080 8E 27            [24] 2210 	mov	_write_number_PARM_4,r6
      001082 8F 82            [24] 2211 	mov	dpl,r7
      001084 8E 83            [24] 2212 	mov	dph,r6
                                   2213 ;	../UI_Manager/ui.c:674: }
      001086 02 19 A1         [24] 2214 	ljmp	_write_number
      001089                       2215 00120$:
      001089 22               [24] 2216 	ret
                                   2217 ;------------------------------------------------------------
                                   2218 ;Allocation info for local variables in function 'remotePage'
                                   2219 ;------------------------------------------------------------
                                   2220 ;action                    Allocated to registers r7 
                                   2221 ;remoteNumber              Allocated to registers r6 
                                   2222 ;index                     Allocated to registers r5 
                                   2223 ;------------------------------------------------------------
                                   2224 ;	../UI_Manager/ui.c:676: void remotePage(uint8_t action){
                                   2225 ;	-----------------------------------------
                                   2226 ;	 function remotePage
                                   2227 ;	-----------------------------------------
      00108A                       2228 _remotePage:
      00108A AF 82            [24] 2229 	mov	r7,dpl
                                   2230 ;	../UI_Manager/ui.c:677: uint8_t remoteNumber = 0;
      00108C 7E 00            [12] 2231 	mov	r6,#0x00
                                   2232 ;	../UI_Manager/ui.c:678: uint8_t index = 0;
      00108E 7D 00            [12] 2233 	mov	r5,#0x00
                                   2234 ;	../UI_Manager/ui.c:680: switch (State)
      001090 AC 08            [24] 2235 	mov	r4,_State
      001092 BC 0A 02         [24] 2236 	cjne	r4,#0x0a,00168$
      001095 80 0A            [24] 2237 	sjmp	00101$
      001097                       2238 00168$:
      001097 BC 0B 02         [24] 2239 	cjne	r4,#0x0b,00169$
      00109A 80 0B            [24] 2240 	sjmp	00102$
      00109C                       2241 00169$:
                                   2242 ;	../UI_Manager/ui.c:682: case MANUAL_REMOTE_ACTION_4_STATE:
      00109C BC 0C 12         [24] 2243 	cjne	r4,#0x0c,00104$
      00109F 80 0C            [24] 2244 	sjmp	00103$
      0010A1                       2245 00101$:
                                   2246 ;	../UI_Manager/ui.c:683: index = R4_INDEX;
      0010A1 7D 09            [12] 2247 	mov	r5,#0x09
                                   2248 ;	../UI_Manager/ui.c:684: remoteNumber = 4;
      0010A3 7E 04            [12] 2249 	mov	r6,#0x04
                                   2250 ;	../UI_Manager/ui.c:685: break;
                                   2251 ;	../UI_Manager/ui.c:686: case MANUAL_REMOTE_ACTION_5_STATE:
      0010A5 80 0A            [24] 2252 	sjmp	00104$
      0010A7                       2253 00102$:
                                   2254 ;	../UI_Manager/ui.c:687: index = R5_INDEX;
      0010A7 7D 0A            [12] 2255 	mov	r5,#0x0a
                                   2256 ;	../UI_Manager/ui.c:688: remoteNumber = 5;
      0010A9 7E 05            [12] 2257 	mov	r6,#0x05
                                   2258 ;	../UI_Manager/ui.c:689: break;
                                   2259 ;	../UI_Manager/ui.c:690: case MANUAL_REMOTE_ACTION_6_STATE:
      0010AB 80 04            [24] 2260 	sjmp	00104$
      0010AD                       2261 00103$:
                                   2262 ;	../UI_Manager/ui.c:691: index = R6_INDEX;
      0010AD 7D 0B            [12] 2263 	mov	r5,#0x0b
                                   2264 ;	../UI_Manager/ui.c:692: remoteNumber = 6;
      0010AF 7E 06            [12] 2265 	mov	r6,#0x06
                                   2266 ;	../UI_Manager/ui.c:694: }
      0010B1                       2267 00104$:
                                   2268 ;	../UI_Manager/ui.c:696: switch (action)
      0010B1 BF 01 02         [24] 2269 	cjne	r7,#0x01,00171$
      0010B4 80 48            [24] 2270 	sjmp	00108$
      0010B6                       2271 00171$:
      0010B6 BF 02 02         [24] 2272 	cjne	r7,#0x02,00172$
      0010B9 80 3A            [24] 2273 	sjmp	00107$
      0010BB                       2274 00172$:
      0010BB BF 03 02         [24] 2275 	cjne	r7,#0x03,00173$
      0010BE 80 05            [24] 2276 	sjmp	00105$
      0010C0                       2277 00173$:
                                   2278 ;	../UI_Manager/ui.c:698: case BUTTON_UP:
      0010C0 BF 0B 44         [24] 2279 	cjne	r7,#0x0b,00109$
      0010C3 80 18            [24] 2280 	sjmp	00106$
      0010C5                       2281 00105$:
                                   2282 ;	../UI_Manager/ui.c:699: set_runtime_data(index, INC, NULL);
      0010C5 75 69 01         [24] 2283 	mov	_set_runtime_data_PARM_2,#0x01
      0010C8 75 6A 00         [24] 2284 	mov	_set_runtime_data_PARM_3,#0x00
      0010CB 8D 82            [24] 2285 	mov	dpl,r5
      0010CD C0 06            [24] 2286 	push	ar6
      0010CF C0 05            [24] 2287 	push	ar5
      0010D1 12 29 5C         [24] 2288 	lcall	_set_runtime_data
      0010D4 D0 05            [24] 2289 	pop	ar5
      0010D6 D0 06            [24] 2290 	pop	ar6
                                   2291 ;	../UI_Manager/ui.c:700: changed = 0xFF;
      0010D8 75 0A FF         [24] 2292 	mov	_changed,#0xff
                                   2293 ;	../UI_Manager/ui.c:701: break;
                                   2294 ;	../UI_Manager/ui.c:702: case BUTTON_DOWN:
      0010DB 80 2A            [24] 2295 	sjmp	00109$
      0010DD                       2296 00106$:
                                   2297 ;	../UI_Manager/ui.c:703: set_runtime_data(index, DEC, NULL);
      0010DD 75 69 02         [24] 2298 	mov	_set_runtime_data_PARM_2,#0x02
      0010E0 75 6A 00         [24] 2299 	mov	_set_runtime_data_PARM_3,#0x00
      0010E3 8D 82            [24] 2300 	mov	dpl,r5
      0010E5 C0 06            [24] 2301 	push	ar6
      0010E7 C0 05            [24] 2302 	push	ar5
      0010E9 12 29 5C         [24] 2303 	lcall	_set_runtime_data
      0010EC D0 05            [24] 2304 	pop	ar5
      0010EE D0 06            [24] 2305 	pop	ar6
                                   2306 ;	../UI_Manager/ui.c:704: changed = 0xFF;  
      0010F0 75 0A FF         [24] 2307 	mov	_changed,#0xff
                                   2308 ;	../UI_Manager/ui.c:705: break;
                                   2309 ;	../UI_Manager/ui.c:706: case BUTTON_FUNCTION:
      0010F3 80 12            [24] 2310 	sjmp	00109$
      0010F5                       2311 00107$:
                                   2312 ;	../UI_Manager/ui.c:707: set_ui_state(INC, NULL);
      0010F5 75 17 00         [24] 2313 	mov	_set_ui_state_PARM_2,#0x00
      0010F8 75 82 01         [24] 2314 	mov	dpl,#0x01
                                   2315 ;	../UI_Manager/ui.c:708: return;
      0010FB 02 13 EB         [24] 2316 	ljmp	_set_ui_state
                                   2317 ;	../UI_Manager/ui.c:709: case BUTTON_TIMER:
      0010FE                       2318 00108$:
                                   2319 ;	../UI_Manager/ui.c:710: set_ui_state(DEC, NULL);
      0010FE 75 17 00         [24] 2320 	mov	_set_ui_state_PARM_2,#0x00
      001101 75 82 02         [24] 2321 	mov	dpl,#0x02
                                   2322 ;	../UI_Manager/ui.c:711: return;
      001104 02 13 EB         [24] 2323 	ljmp	_set_ui_state
                                   2324 ;	../UI_Manager/ui.c:712: }
      001107                       2325 00109$:
                                   2326 ;	../UI_Manager/ui.c:714: if(Changed){
      001107 E5 09            [12] 2327 	mov	a,_Changed
      001109 60 6C            [24] 2328 	jz	00115$
                                   2329 ;	../UI_Manager/ui.c:715: Changed = 0x00;
      00110B 75 09 00         [24] 2330 	mov	_Changed,#0x00
                                   2331 ;	../UI_Manager/ui.c:716: changed = 0xFF;
      00110E 75 0A FF         [24] 2332 	mov	_changed,#0xff
                                   2333 ;	../UI_Manager/ui.c:718: exe_command(CLEAR_DISPLAY);
      001111 90 80 00         [24] 2334 	mov	dptr,#0x8000
      001114 C0 06            [24] 2335 	push	ar6
      001116 C0 05            [24] 2336 	push	ar5
      001118 12 1B 30         [24] 2337 	lcall	_exe_command
                                   2338 ;	../UI_Manager/ui.c:720: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
      00111B 75 21 10         [24] 2339 	mov	_write_string_PARM_2,#0x10
      00111E 75 22 01         [24] 2340 	mov	_write_string_PARM_3,#0x01
      001121 75 23 00         [24] 2341 	mov	_write_string_PARM_4,#0x00
      001124 75 24 00         [24] 2342 	mov	_write_string_PARM_5,#0x00
      001127 90 30 92         [24] 2343 	mov	dptr,#___str_25
      00112A 75 F0 80         [24] 2344 	mov	b,#0x80
      00112D 12 18 DD         [24] 2345 	lcall	_write_string
      001130 D0 05            [24] 2346 	pop	ar5
      001132 D0 06            [24] 2347 	pop	ar6
                                   2348 ;	../UI_Manager/ui.c:721: switch (remoteNumber)
      001134 BE 04 02         [24] 2349 	cjne	r6,#0x04,00176$
      001137 80 0A            [24] 2350 	sjmp	00110$
      001139                       2351 00176$:
      001139 BE 05 02         [24] 2352 	cjne	r6,#0x05,00177$
      00113C 80 17            [24] 2353 	sjmp	00111$
      00113E                       2354 00177$:
                                   2355 ;	../UI_Manager/ui.c:723: case 4:
      00113E BE 06 36         [24] 2356 	cjne	r6,#0x06,00115$
      001141 80 24            [24] 2357 	sjmp	00112$
      001143                       2358 00110$:
                                   2359 ;	../UI_Manager/ui.c:724: write_char(CHAR_4, 8, LINE_0);
      001143 75 2B 08         [24] 2360 	mov	_write_char_PARM_2,#0x08
      001146 75 2C 00         [24] 2361 	mov	_write_char_PARM_3,#0x00
      001149 75 82 2C         [24] 2362 	mov	dpl,#0x2c
      00114C C0 05            [24] 2363 	push	ar5
      00114E 12 1A FB         [24] 2364 	lcall	_write_char
      001151 D0 05            [24] 2365 	pop	ar5
                                   2366 ;	../UI_Manager/ui.c:725: break;
                                   2367 ;	../UI_Manager/ui.c:726: case 5:
      001153 80 22            [24] 2368 	sjmp	00115$
      001155                       2369 00111$:
                                   2370 ;	../UI_Manager/ui.c:727: write_char(CHAR_5, 8, LINE_0);
      001155 75 2B 08         [24] 2371 	mov	_write_char_PARM_2,#0x08
      001158 75 2C 00         [24] 2372 	mov	_write_char_PARM_3,#0x00
      00115B 75 82 AC         [24] 2373 	mov	dpl,#0xac
      00115E C0 05            [24] 2374 	push	ar5
      001160 12 1A FB         [24] 2375 	lcall	_write_char
      001163 D0 05            [24] 2376 	pop	ar5
                                   2377 ;	../UI_Manager/ui.c:728: break;
                                   2378 ;	../UI_Manager/ui.c:729: case 6:
      001165 80 10            [24] 2379 	sjmp	00115$
      001167                       2380 00112$:
                                   2381 ;	../UI_Manager/ui.c:730: write_char(CHAR_6, 8, LINE_0);
      001167 75 2B 08         [24] 2382 	mov	_write_char_PARM_2,#0x08
      00116A 75 2C 00         [24] 2383 	mov	_write_char_PARM_3,#0x00
      00116D 75 82 6C         [24] 2384 	mov	dpl,#0x6c
      001170 C0 05            [24] 2385 	push	ar5
      001172 12 1A FB         [24] 2386 	lcall	_write_char
      001175 D0 05            [24] 2387 	pop	ar5
                                   2388 ;	../UI_Manager/ui.c:732: }
      001177                       2389 00115$:
                                   2390 ;	../UI_Manager/ui.c:735: if(changed){
      001177 E5 0A            [12] 2391 	mov	a,_changed
      001179 60 2D            [24] 2392 	jz	00118$
                                   2393 ;	../UI_Manager/ui.c:736: changed = 0x00;
      00117B 75 0A 00         [24] 2394 	mov	_changed,#0x00
                                   2395 ;	../UI_Manager/ui.c:737: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
      00117E 8D 82            [24] 2396 	mov	dpl,r5
      001180 12 28 C8         [24] 2397 	lcall	_get_runtime_data
      001183 AF 82            [24] 2398 	mov	r7,dpl
      001185 74 3C            [12] 2399 	mov	a,#0x3c
      001187 2F               [12] 2400 	add	a,r7
      001188 F5 82            [12] 2401 	mov	dpl,a
      00118A 12 14 7F         [24] 2402 	lcall	_getString
      00118D AD 82            [24] 2403 	mov	r5,dpl
      00118F AE 83            [24] 2404 	mov	r6,dph
      001191 AF F0            [24] 2405 	mov	r7,b
      001193 75 21 10         [24] 2406 	mov	_write_string_PARM_2,#0x10
      001196 75 22 02         [24] 2407 	mov	_write_string_PARM_3,#0x02
      001199 75 23 01         [24] 2408 	mov	_write_string_PARM_4,#0x01
      00119C 75 24 00         [24] 2409 	mov	_write_string_PARM_5,#0x00
      00119F 8D 82            [24] 2410 	mov	dpl,r5
      0011A1 8E 83            [24] 2411 	mov	dph,r6
      0011A3 8F F0            [24] 2412 	mov	b,r7
                                   2413 ;	../UI_Manager/ui.c:739: }
      0011A5 02 18 DD         [24] 2414 	ljmp	_write_string
      0011A8                       2415 00118$:
      0011A8 22               [24] 2416 	ret
                                   2417 ;------------------------------------------------------------
                                   2418 ;Allocation info for local variables in function 'saveLoadPage'
                                   2419 ;------------------------------------------------------------
                                   2420 ;slot                      Allocated with name '_saveLoadPage_slot_65536_141'
                                   2421 ;action                    Allocated to registers r7 
                                   2422 ;------------------------------------------------------------
                                   2423 ;	../UI_Manager/ui.c:741: void saveLoadPage(uint8_t action){
                                   2424 ;	-----------------------------------------
                                   2425 ;	 function saveLoadPage
                                   2426 ;	-----------------------------------------
      0011A9                       2427 _saveLoadPage:
      0011A9 AF 82            [24] 2428 	mov	r7,dpl
                                   2429 ;	../UI_Manager/ui.c:744: switch (action)
      0011AB BF 01 03         [24] 2430 	cjne	r7,#0x01,00161$
      0011AE 02 12 48         [24] 2431 	ljmp	00108$
      0011B1                       2432 00161$:
      0011B1 BF 02 03         [24] 2433 	cjne	r7,#0x02,00162$
      0011B4 02 12 3F         [24] 2434 	ljmp	00107$
      0011B7                       2435 00162$:
      0011B7 BF 03 03         [24] 2436 	cjne	r7,#0x03,00163$
      0011BA 02 12 31         [24] 2437 	ljmp	00105$
      0011BD                       2438 00163$:
      0011BD BF 0B 03         [24] 2439 	cjne	r7,#0x0b,00164$
      0011C0 02 12 38         [24] 2440 	ljmp	00106$
      0011C3                       2441 00164$:
      0011C3 BF 1E 02         [24] 2442 	cjne	r7,#0x1e,00165$
      0011C6 80 03            [24] 2443 	sjmp	00166$
      0011C8                       2444 00165$:
      0011C8 02 12 51         [24] 2445 	ljmp	00109$
      0011CB                       2446 00166$:
                                   2447 ;	../UI_Manager/ui.c:747: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
      0011CB 75 F0 03         [24] 2448 	mov	b,#0x03
      0011CE E5 16            [12] 2449 	mov	a,_saveLoadPage_slot_65536_141
      0011D0 84               [48] 2450 	div	ab
      0011D1 AF F0            [24] 2451 	mov	r7,b
      0011D3 74 0D            [12] 2452 	mov	a,#0x0d
      0011D5 B5 08 06         [24] 2453 	cjne	a,_State,00119$
      0011D8 7D 01            [12] 2454 	mov	r5,#0x01
      0011DA 7E 00            [12] 2455 	mov	r6,#0x00
      0011DC 80 04            [24] 2456 	sjmp	00120$
      0011DE                       2457 00119$:
      0011DE 7D 00            [12] 2458 	mov	r5,#0x00
      0011E0 7E 00            [12] 2459 	mov	r6,#0x00
      0011E2                       2460 00120$:
      0011E2 8D 76            [24] 2461 	mov	_save_load_settings_PARM_2,r5
      0011E4 8F 82            [24] 2462 	mov	dpl,r7
      0011E6 12 28 72         [24] 2463 	lcall	_save_load_settings
                                   2464 ;	../UI_Manager/ui.c:748: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
      0011E9 75 21 10         [24] 2465 	mov	_write_string_PARM_2,#0x10
      0011EC 75 22 00         [24] 2466 	mov	_write_string_PARM_3,#0x00
      0011EF 75 23 01         [24] 2467 	mov	_write_string_PARM_4,#0x01
      0011F2 75 24 00         [24] 2468 	mov	_write_string_PARM_5,#0x00
      0011F5 90 30 91         [24] 2469 	mov	dptr,#___str_24
      0011F8 75 F0 80         [24] 2470 	mov	b,#0x80
      0011FB 12 18 DD         [24] 2471 	lcall	_write_string
                                   2472 ;	../UI_Manager/ui.c:750: if(State == MANUAL_SAVE_SETTINGS_STATE){
      0011FE 74 0D            [12] 2473 	mov	a,#0x0d
      001200 B5 08 17         [24] 2474 	cjne	a,_State,00103$
                                   2475 ;	../UI_Manager/ui.c:751: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001203 75 21 10         [24] 2476 	mov	_write_string_PARM_2,#0x10
      001206 75 22 06         [24] 2477 	mov	_write_string_PARM_3,#0x06
      001209 75 23 01         [24] 2478 	mov	_write_string_PARM_4,#0x01
      00120C 75 24 00         [24] 2479 	mov	_write_string_PARM_5,#0x00
      00120F 90 30 A2         [24] 2480 	mov	dptr,#___str_26
      001212 75 F0 80         [24] 2481 	mov	b,#0x80
      001215 12 18 DD         [24] 2482 	lcall	_write_string
      001218 80 37            [24] 2483 	sjmp	00109$
      00121A                       2484 00103$:
                                   2485 ;	../UI_Manager/ui.c:753: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      00121A 75 21 10         [24] 2486 	mov	_write_string_PARM_2,#0x10
      00121D 75 22 06         [24] 2487 	mov	_write_string_PARM_3,#0x06
      001220 75 23 01         [24] 2488 	mov	_write_string_PARM_4,#0x01
      001223 75 24 00         [24] 2489 	mov	_write_string_PARM_5,#0x00
      001226 90 30 A9         [24] 2490 	mov	dptr,#___str_27
      001229 75 F0 80         [24] 2491 	mov	b,#0x80
      00122C 12 18 DD         [24] 2492 	lcall	_write_string
                                   2493 ;	../UI_Manager/ui.c:755: break;
                                   2494 ;	../UI_Manager/ui.c:756: case BUTTON_UP:
      00122F 80 20            [24] 2495 	sjmp	00109$
      001231                       2496 00105$:
                                   2497 ;	../UI_Manager/ui.c:757: slot++;
      001231 05 16            [12] 2498 	inc	_saveLoadPage_slot_65536_141
                                   2499 ;	../UI_Manager/ui.c:758: changed = 0xFF;
      001233 75 0A FF         [24] 2500 	mov	_changed,#0xff
                                   2501 ;	../UI_Manager/ui.c:759: break;
                                   2502 ;	../UI_Manager/ui.c:760: case BUTTON_DOWN:
      001236 80 19            [24] 2503 	sjmp	00109$
      001238                       2504 00106$:
                                   2505 ;	../UI_Manager/ui.c:761: slot--;
      001238 15 16            [12] 2506 	dec	_saveLoadPage_slot_65536_141
                                   2507 ;	../UI_Manager/ui.c:762: changed = 0xFF;  
      00123A 75 0A FF         [24] 2508 	mov	_changed,#0xff
                                   2509 ;	../UI_Manager/ui.c:763: break;
                                   2510 ;	../UI_Manager/ui.c:764: case BUTTON_FUNCTION:
      00123D 80 12            [24] 2511 	sjmp	00109$
      00123F                       2512 00107$:
                                   2513 ;	../UI_Manager/ui.c:765: set_ui_state(INC, NULL);
      00123F 75 17 00         [24] 2514 	mov	_set_ui_state_PARM_2,#0x00
      001242 75 82 01         [24] 2515 	mov	dpl,#0x01
                                   2516 ;	../UI_Manager/ui.c:766: return;
      001245 02 13 EB         [24] 2517 	ljmp	_set_ui_state
                                   2518 ;	../UI_Manager/ui.c:767: case BUTTON_TIMER:
      001248                       2519 00108$:
                                   2520 ;	../UI_Manager/ui.c:768: set_ui_state(DEC, NULL);
      001248 75 17 00         [24] 2521 	mov	_set_ui_state_PARM_2,#0x00
      00124B 75 82 02         [24] 2522 	mov	dpl,#0x02
                                   2523 ;	../UI_Manager/ui.c:769: return;
      00124E 02 13 EB         [24] 2524 	ljmp	_set_ui_state
                                   2525 ;	../UI_Manager/ui.c:770: }
      001251                       2526 00109$:
                                   2527 ;	../UI_Manager/ui.c:772: if(Changed){
      001251 E5 09            [12] 2528 	mov	a,_Changed
      001253 60 3D            [24] 2529 	jz	00114$
                                   2530 ;	../UI_Manager/ui.c:773: Changed = 0x00;
      001255 75 09 00         [24] 2531 	mov	_Changed,#0x00
                                   2532 ;	../UI_Manager/ui.c:774: changed = 0xFF;
      001258 75 0A FF         [24] 2533 	mov	_changed,#0xff
                                   2534 ;	../UI_Manager/ui.c:776: exe_command(CLEAR_DISPLAY);
      00125B 90 80 00         [24] 2535 	mov	dptr,#0x8000
      00125E 12 1B 30         [24] 2536 	lcall	_exe_command
                                   2537 ;	../UI_Manager/ui.c:778: if(State == MANUAL_SAVE_SETTINGS_STATE){
      001261 74 0D            [12] 2538 	mov	a,#0x0d
      001263 B5 08 17         [24] 2539 	cjne	a,_State,00111$
                                   2540 ;	../UI_Manager/ui.c:779: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
      001266 75 21 0E         [24] 2541 	mov	_write_string_PARM_2,#0x0e
      001269 75 22 02         [24] 2542 	mov	_write_string_PARM_3,#0x02
      00126C 75 23 00         [24] 2543 	mov	_write_string_PARM_4,#0x00
      00126F 75 24 00         [24] 2544 	mov	_write_string_PARM_5,#0x00
      001272 90 30 B1         [24] 2545 	mov	dptr,#___str_28
      001275 75 F0 80         [24] 2546 	mov	b,#0x80
      001278 12 18 DD         [24] 2547 	lcall	_write_string
      00127B 80 15            [24] 2548 	sjmp	00114$
      00127D                       2549 00111$:
                                   2550 ;	../UI_Manager/ui.c:781: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
      00127D 75 21 0E         [24] 2551 	mov	_write_string_PARM_2,#0x0e
      001280 75 22 02         [24] 2552 	mov	_write_string_PARM_3,#0x02
      001283 75 23 00         [24] 2553 	mov	_write_string_PARM_4,#0x00
      001286 75 24 00         [24] 2554 	mov	_write_string_PARM_5,#0x00
      001289 90 30 BF         [24] 2555 	mov	dptr,#___str_29
      00128C 75 F0 80         [24] 2556 	mov	b,#0x80
      00128F 12 18 DD         [24] 2557 	lcall	_write_string
      001292                       2558 00114$:
                                   2559 ;	../UI_Manager/ui.c:786: if(changed){
      001292 E5 0A            [12] 2560 	mov	a,_changed
      001294 60 2E            [24] 2561 	jz	00117$
                                   2562 ;	../UI_Manager/ui.c:787: changed = 0x00;
      001296 75 0A 00         [24] 2563 	mov	_changed,#0x00
                                   2564 ;	../UI_Manager/ui.c:788: write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
      001299 75 F0 03         [24] 2565 	mov	b,#0x03
      00129C E5 16            [12] 2566 	mov	a,_saveLoadPage_slot_65536_141
      00129E 84               [48] 2567 	div	ab
      00129F AF F0            [24] 2568 	mov	r7,b
      0012A1 74 50            [12] 2569 	mov	a,#0x50
      0012A3 2F               [12] 2570 	add	a,r7
      0012A4 F5 82            [12] 2571 	mov	dpl,a
      0012A6 12 14 7F         [24] 2572 	lcall	_getString
      0012A9 AD 82            [24] 2573 	mov	r5,dpl
      0012AB AE 83            [24] 2574 	mov	r6,dph
      0012AD AF F0            [24] 2575 	mov	r7,b
      0012AF 75 21 10         [24] 2576 	mov	_write_string_PARM_2,#0x10
      0012B2 75 22 04         [24] 2577 	mov	_write_string_PARM_3,#0x04
      0012B5 75 23 01         [24] 2578 	mov	_write_string_PARM_4,#0x01
      0012B8 75 24 00         [24] 2579 	mov	_write_string_PARM_5,#0x00
      0012BB 8D 82            [24] 2580 	mov	dpl,r5
      0012BD 8E 83            [24] 2581 	mov	dph,r6
      0012BF 8F F0            [24] 2582 	mov	b,r7
                                   2583 ;	../UI_Manager/ui.c:791: }
      0012C1 02 18 DD         [24] 2584 	ljmp	_write_string
      0012C4                       2585 00117$:
      0012C4 22               [24] 2586 	ret
                                   2587 ;------------------------------------------------------------
                                   2588 ;Allocation info for local variables in function 'dmxAddressPage'
                                   2589 ;------------------------------------------------------------
                                   2590 ;action                    Allocated to registers r7 
                                   2591 ;------------------------------------------------------------
                                   2592 ;	../UI_Manager/ui.c:793: void dmxAddressPage(uint8_t action){
                                   2593 ;	-----------------------------------------
                                   2594 ;	 function dmxAddressPage
                                   2595 ;	-----------------------------------------
      0012C5                       2596 _dmxAddressPage:
      0012C5 AF 82            [24] 2597 	mov	r7,dpl
                                   2598 ;	../UI_Manager/ui.c:795: switch (action)
      0012C7 BF 01 02         [24] 2599 	cjne	r7,#0x01,00146$
      0012CA 80 38            [24] 2600 	sjmp	00106$
      0012CC                       2601 00146$:
      0012CC BF 02 02         [24] 2602 	cjne	r7,#0x02,00147$
      0012CF 80 2A            [24] 2603 	sjmp	00105$
      0012D1                       2604 00147$:
      0012D1 BF 03 02         [24] 2605 	cjne	r7,#0x03,00148$
      0012D4 80 0F            [24] 2606 	sjmp	00102$
      0012D6                       2607 00148$:
      0012D6 BF 0B 02         [24] 2608 	cjne	r7,#0x0b,00149$
      0012D9 80 15            [24] 2609 	sjmp	00104$
      0012DB                       2610 00149$:
      0012DB BF 1F 02         [24] 2611 	cjne	r7,#0x1f,00150$
      0012DE 80 05            [24] 2612 	sjmp	00102$
      0012E0                       2613 00150$:
                                   2614 ;	../UI_Manager/ui.c:798: case BUTTON_UP:
      0012E0 BF 6F 2A         [24] 2615 	cjne	r7,#0x6f,00107$
      0012E3 80 0B            [24] 2616 	sjmp	00104$
      0012E5                       2617 00102$:
                                   2618 ;	../UI_Manager/ui.c:799: set_dmx_address(INC);
      0012E5 75 82 01         [24] 2619 	mov	dpl,#0x01
      0012E8 12 29 D5         [24] 2620 	lcall	_set_dmx_address
                                   2621 ;	../UI_Manager/ui.c:800: changed = 0xFF;
      0012EB 75 0A FF         [24] 2622 	mov	_changed,#0xff
                                   2623 ;	../UI_Manager/ui.c:801: break;
                                   2624 ;	../UI_Manager/ui.c:803: case BUTTON_DOWN:
      0012EE 80 1D            [24] 2625 	sjmp	00107$
      0012F0                       2626 00104$:
                                   2627 ;	../UI_Manager/ui.c:804: set_dmx_address(DEC);
      0012F0 75 82 02         [24] 2628 	mov	dpl,#0x02
      0012F3 12 29 D5         [24] 2629 	lcall	_set_dmx_address
                                   2630 ;	../UI_Manager/ui.c:805: changed = 0xFF;  
      0012F6 75 0A FF         [24] 2631 	mov	_changed,#0xff
                                   2632 ;	../UI_Manager/ui.c:806: break;
                                   2633 ;	../UI_Manager/ui.c:807: case BUTTON_FUNCTION:
      0012F9 80 12            [24] 2634 	sjmp	00107$
      0012FB                       2635 00105$:
                                   2636 ;	../UI_Manager/ui.c:808: set_ui_state(INC, NULL);
      0012FB 75 17 00         [24] 2637 	mov	_set_ui_state_PARM_2,#0x00
      0012FE 75 82 01         [24] 2638 	mov	dpl,#0x01
                                   2639 ;	../UI_Manager/ui.c:809: return;
                                   2640 ;	../UI_Manager/ui.c:810: case BUTTON_TIMER:
      001301 02 13 EB         [24] 2641 	ljmp	_set_ui_state
      001304                       2642 00106$:
                                   2643 ;	../UI_Manager/ui.c:811: set_ui_state(DEC, NULL);
      001304 75 17 00         [24] 2644 	mov	_set_ui_state_PARM_2,#0x00
      001307 75 82 02         [24] 2645 	mov	dpl,#0x02
                                   2646 ;	../UI_Manager/ui.c:812: return;
                                   2647 ;	../UI_Manager/ui.c:813: }
      00130A 02 13 EB         [24] 2648 	ljmp	_set_ui_state
      00130D                       2649 00107$:
                                   2650 ;	../UI_Manager/ui.c:815: if(Changed){
      00130D E5 09            [12] 2651 	mov	a,_Changed
      00130F 60 21            [24] 2652 	jz	00109$
                                   2653 ;	../UI_Manager/ui.c:816: Changed = 0x00;
      001311 75 09 00         [24] 2654 	mov	_Changed,#0x00
                                   2655 ;	../UI_Manager/ui.c:817: changed = 0xFF;
      001314 75 0A FF         [24] 2656 	mov	_changed,#0xff
                                   2657 ;	../UI_Manager/ui.c:819: exe_command(CLEAR_DISPLAY);
      001317 90 80 00         [24] 2658 	mov	dptr,#0x8000
      00131A 12 1B 30         [24] 2659 	lcall	_exe_command
                                   2660 ;	../UI_Manager/ui.c:821: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
      00131D 75 21 0C         [24] 2661 	mov	_write_string_PARM_2,#0x0c
      001320 75 22 02         [24] 2662 	mov	_write_string_PARM_3,#0x02
      001323 75 23 00         [24] 2663 	mov	_write_string_PARM_4,#0x00
      001326 75 24 00         [24] 2664 	mov	_write_string_PARM_5,#0x00
      001329 90 30 CD         [24] 2665 	mov	dptr,#___str_30
      00132C 75 F0 80         [24] 2666 	mov	b,#0x80
      00132F 12 18 DD         [24] 2667 	lcall	_write_string
      001332                       2668 00109$:
                                   2669 ;	../UI_Manager/ui.c:824: if(changed){
      001332 E5 0A            [12] 2670 	mov	a,_changed
      001334 60 12            [24] 2671 	jz	00112$
                                   2672 ;	../UI_Manager/ui.c:825: changed = 0x00;
      001336 75 0A 00         [24] 2673 	mov	_changed,#0x00
                                   2674 ;	../UI_Manager/ui.c:827: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      001339 12 2A 28         [24] 2675 	lcall	_get_dmx_address
      00133C 75 25 04         [24] 2676 	mov	_write_number_PARM_2,#0x04
      00133F 75 26 01         [24] 2677 	mov	_write_number_PARM_3,#0x01
      001342 75 27 00         [24] 2678 	mov	_write_number_PARM_4,#0x00
                                   2679 ;	../UI_Manager/ui.c:830: }
      001345 02 19 A1         [24] 2680 	ljmp	_write_number
      001348                       2681 00112$:
      001348 22               [24] 2682 	ret
                                   2683 ;------------------------------------------------------------
                                   2684 ;Allocation info for local variables in function 'dmxChannelPage'
                                   2685 ;------------------------------------------------------------
                                   2686 ;action                    Allocated to registers r7 
                                   2687 ;------------------------------------------------------------
                                   2688 ;	../UI_Manager/ui.c:832: void dmxChannelPage(uint8_t action){
                                   2689 ;	-----------------------------------------
                                   2690 ;	 function dmxChannelPage
                                   2691 ;	-----------------------------------------
      001349                       2692 _dmxChannelPage:
      001349 AF 82            [24] 2693 	mov	r7,dpl
                                   2694 ;	../UI_Manager/ui.c:834: switch (action)
      00134B BF 01 02         [24] 2695 	cjne	r7,#0x01,00136$
      00134E 80 3A            [24] 2696 	sjmp	00104$
      001350                       2697 00136$:
      001350 BF 02 02         [24] 2698 	cjne	r7,#0x02,00137$
      001353 80 2C            [24] 2699 	sjmp	00103$
      001355                       2700 00137$:
      001355 BF 03 02         [24] 2701 	cjne	r7,#0x03,00138$
      001358 80 05            [24] 2702 	sjmp	00101$
      00135A                       2703 00138$:
                                   2704 ;	../UI_Manager/ui.c:836: case BUTTON_UP:
      00135A BF 0B 36         [24] 2705 	cjne	r7,#0x0b,00105$
      00135D 80 11            [24] 2706 	sjmp	00102$
      00135F                       2707 00101$:
                                   2708 ;	../UI_Manager/ui.c:837: set_runtime_data(MODE_INDEX, INC, NULL);
      00135F 75 69 01         [24] 2709 	mov	_set_runtime_data_PARM_2,#0x01
      001362 75 6A 00         [24] 2710 	mov	_set_runtime_data_PARM_3,#0x00
      001365 75 82 0E         [24] 2711 	mov	dpl,#0x0e
      001368 12 29 5C         [24] 2712 	lcall	_set_runtime_data
                                   2713 ;	../UI_Manager/ui.c:838: changed = 0xFF;
      00136B 75 0A FF         [24] 2714 	mov	_changed,#0xff
                                   2715 ;	../UI_Manager/ui.c:839: break;
                                   2716 ;	../UI_Manager/ui.c:840: case BUTTON_DOWN:
      00136E 80 23            [24] 2717 	sjmp	00105$
      001370                       2718 00102$:
                                   2719 ;	../UI_Manager/ui.c:841: set_runtime_data(MODE_INDEX, DEC, NULL);
      001370 75 69 02         [24] 2720 	mov	_set_runtime_data_PARM_2,#0x02
      001373 75 6A 00         [24] 2721 	mov	_set_runtime_data_PARM_3,#0x00
      001376 75 82 0E         [24] 2722 	mov	dpl,#0x0e
      001379 12 29 5C         [24] 2723 	lcall	_set_runtime_data
                                   2724 ;	../UI_Manager/ui.c:842: changed = 0xFF;  
      00137C 75 0A FF         [24] 2725 	mov	_changed,#0xff
                                   2726 ;	../UI_Manager/ui.c:843: break;
                                   2727 ;	../UI_Manager/ui.c:844: case BUTTON_FUNCTION:
      00137F 80 12            [24] 2728 	sjmp	00105$
      001381                       2729 00103$:
                                   2730 ;	../UI_Manager/ui.c:845: set_ui_state(INC, NULL);
      001381 75 17 00         [24] 2731 	mov	_set_ui_state_PARM_2,#0x00
      001384 75 82 01         [24] 2732 	mov	dpl,#0x01
                                   2733 ;	../UI_Manager/ui.c:846: return;
                                   2734 ;	../UI_Manager/ui.c:847: case BUTTON_TIMER:
      001387 02 13 EB         [24] 2735 	ljmp	_set_ui_state
      00138A                       2736 00104$:
                                   2737 ;	../UI_Manager/ui.c:848: set_ui_state(DEC, NULL);
      00138A 75 17 00         [24] 2738 	mov	_set_ui_state_PARM_2,#0x00
      00138D 75 82 02         [24] 2739 	mov	dpl,#0x02
                                   2740 ;	../UI_Manager/ui.c:849: return;
                                   2741 ;	../UI_Manager/ui.c:850: }
      001390 02 13 EB         [24] 2742 	ljmp	_set_ui_state
      001393                       2743 00105$:
                                   2744 ;	../UI_Manager/ui.c:852: if(Changed){
      001393 E5 09            [12] 2745 	mov	a,_Changed
      001395 60 21            [24] 2746 	jz	00107$
                                   2747 ;	../UI_Manager/ui.c:853: Changed = 0x00;
      001397 75 09 00         [24] 2748 	mov	_Changed,#0x00
                                   2749 ;	../UI_Manager/ui.c:854: changed = 0xFF;
      00139A 75 0A FF         [24] 2750 	mov	_changed,#0xff
                                   2751 ;	../UI_Manager/ui.c:856: exe_command(CLEAR_DISPLAY);
      00139D 90 80 00         [24] 2752 	mov	dptr,#0x8000
      0013A0 12 1B 30         [24] 2753 	lcall	_exe_command
                                   2754 ;	../UI_Manager/ui.c:858: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
      0013A3 75 21 11         [24] 2755 	mov	_write_string_PARM_2,#0x11
      0013A6 75 22 00         [24] 2756 	mov	_write_string_PARM_3,#0x00
      0013A9 75 23 00         [24] 2757 	mov	_write_string_PARM_4,#0x00
      0013AC 75 24 00         [24] 2758 	mov	_write_string_PARM_5,#0x00
      0013AF 90 30 D9         [24] 2759 	mov	dptr,#___str_31
      0013B2 75 F0 80         [24] 2760 	mov	b,#0x80
      0013B5 12 18 DD         [24] 2761 	lcall	_write_string
      0013B8                       2762 00107$:
                                   2763 ;	../UI_Manager/ui.c:861: if(changed){
      0013B8 E5 0A            [12] 2764 	mov	a,_changed
      0013BA 60 2E            [24] 2765 	jz	00110$
                                   2766 ;	../UI_Manager/ui.c:862: changed = 0x00;
      0013BC 75 0A 00         [24] 2767 	mov	_changed,#0x00
                                   2768 ;	../UI_Manager/ui.c:864: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
      0013BF 75 82 0E         [24] 2769 	mov	dpl,#0x0e
      0013C2 12 28 C8         [24] 2770 	lcall	_get_runtime_data
      0013C5 AF 82            [24] 2771 	mov	r7,dpl
      0013C7 74 64            [12] 2772 	mov	a,#0x64
      0013C9 2F               [12] 2773 	add	a,r7
      0013CA F5 82            [12] 2774 	mov	dpl,a
      0013CC 12 14 7F         [24] 2775 	lcall	_getString
      0013CF AD 82            [24] 2776 	mov	r5,dpl
      0013D1 AE 83            [24] 2777 	mov	r6,dph
      0013D3 AF F0            [24] 2778 	mov	r7,b
      0013D5 75 21 10         [24] 2779 	mov	_write_string_PARM_2,#0x10
      0013D8 75 22 01         [24] 2780 	mov	_write_string_PARM_3,#0x01
      0013DB 75 23 01         [24] 2781 	mov	_write_string_PARM_4,#0x01
      0013DE 75 24 00         [24] 2782 	mov	_write_string_PARM_5,#0x00
      0013E1 8D 82            [24] 2783 	mov	dpl,r5
      0013E3 8E 83            [24] 2784 	mov	dph,r6
      0013E5 8F F0            [24] 2785 	mov	b,r7
                                   2786 ;	../UI_Manager/ui.c:867: }
      0013E7 02 18 DD         [24] 2787 	ljmp	_write_string
      0013EA                       2788 00110$:
      0013EA 22               [24] 2789 	ret
                                   2790 ;------------------------------------------------------------
                                   2791 ;Allocation info for local variables in function 'set_ui_state'
                                   2792 ;------------------------------------------------------------
                                   2793 ;state                     Allocated with name '_set_ui_state_PARM_2'
                                   2794 ;inc                       Allocated to registers r7 
                                   2795 ;------------------------------------------------------------
                                   2796 ;	../UI_Manager/ui.c:869: void set_ui_state(uint8_t inc, uint8_t state){
                                   2797 ;	-----------------------------------------
                                   2798 ;	 function set_ui_state
                                   2799 ;	-----------------------------------------
      0013EB                       2800 _set_ui_state:
      0013EB AF 82            [24] 2801 	mov	r7,dpl
                                   2802 ;	../UI_Manager/ui.c:870: Changed = CHANGE_SCREEN_X;
      0013ED 75 09 FF         [24] 2803 	mov	_Changed,#0xff
                                   2804 ;	../UI_Manager/ui.c:872: switch (inc)
      0013F0 BF 01 02         [24] 2805 	cjne	r7,#0x01,00187$
      0013F3 80 3D            [24] 2806 	sjmp	00115$
      0013F5                       2807 00187$:
      0013F5 BF 02 6A         [24] 2808 	cjne	r7,#0x02,00127$
                                   2809 ;	../UI_Manager/ui.c:875: state = State;
      0013F8 85 08 17         [24] 2810 	mov	_set_ui_state_PARM_2,_State
                                   2811 ;	../UI_Manager/ui.c:876: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0013FB 75 82 10         [24] 2812 	mov	dpl,#0x10
      0013FE 12 28 C8         [24] 2813 	lcall	_get_runtime_data
      001401 E5 82            [12] 2814 	mov	a,dpl
      001403 70 17            [24] 2815 	jnz	00113$
                                   2816 ;	../UI_Manager/ui.c:877: if(state == IDLE_STATE){
      001405 E5 17            [12] 2817 	mov	a,_set_ui_state_PARM_2
      001407 70 06            [24] 2818 	jnz	00105$
                                   2819 ;	../UI_Manager/ui.c:878: state = DMX_STATE_LOW;
      001409 75 17 14         [24] 2820 	mov	_set_ui_state_PARM_2,#0x14
      00140C 02 14 77         [24] 2821 	ljmp	00132$
      00140F                       2822 00105$:
                                   2823 ;	../UI_Manager/ui.c:879: } else if(++state > DMX_STATE_HIGH){
      00140F 05 17            [12] 2824 	inc	_set_ui_state_PARM_2
      001411 E5 17            [12] 2825 	mov	a,_set_ui_state_PARM_2
      001413 24 EA            [12] 2826 	add	a,#0xff - 0x15
      001415 50 60            [24] 2827 	jnc	00132$
                                   2828 ;	../UI_Manager/ui.c:880: state = IDLE_STATE;
      001417 75 17 00         [24] 2829 	mov	_set_ui_state_PARM_2,#0x00
      00141A 80 5B            [24] 2830 	sjmp	00132$
      00141C                       2831 00113$:
                                   2832 ;	../UI_Manager/ui.c:883: if(state == IDLE_STATE){
      00141C E5 17            [12] 2833 	mov	a,_set_ui_state_PARM_2
      00141E 70 05            [24] 2834 	jnz	00110$
                                   2835 ;	../UI_Manager/ui.c:884: state = IDLE_STATE + 1; 
      001420 75 17 01         [24] 2836 	mov	_set_ui_state_PARM_2,#0x01
      001423 80 52            [24] 2837 	sjmp	00132$
      001425                       2838 00110$:
                                   2839 ;	../UI_Manager/ui.c:885: } else if(++state > MANUAL_STATE_HIGH){
      001425 05 17            [12] 2840 	inc	_set_ui_state_PARM_2
      001427 E5 17            [12] 2841 	mov	a,_set_ui_state_PARM_2
      001429 24 F1            [12] 2842 	add	a,#0xff - 0x0e
      00142B 50 4A            [24] 2843 	jnc	00132$
                                   2844 ;	../UI_Manager/ui.c:886: state = IDLE_STATE;
      00142D 75 17 00         [24] 2845 	mov	_set_ui_state_PARM_2,#0x00
                                   2846 ;	../UI_Manager/ui.c:889: break;
                                   2847 ;	../UI_Manager/ui.c:890: case INC:
      001430 80 45            [24] 2848 	sjmp	00132$
      001432                       2849 00115$:
                                   2850 ;	../UI_Manager/ui.c:891: state = State;
      001432 85 08 17         [24] 2851 	mov	_set_ui_state_PARM_2,_State
                                   2852 ;	../UI_Manager/ui.c:892: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      001435 75 82 10         [24] 2853 	mov	dpl,#0x10
      001438 12 28 C8         [24] 2854 	lcall	_get_runtime_data
      00143B E5 82            [12] 2855 	mov	a,dpl
      00143D 70 16            [24] 2856 	jnz	00125$
                                   2857 ;	../UI_Manager/ui.c:893: if(state == IDLE_STATE){
      00143F E5 17            [12] 2858 	mov	a,_set_ui_state_PARM_2
      001441 70 05            [24] 2859 	jnz	00119$
                                   2860 ;	../UI_Manager/ui.c:894: state = DMX_STATE_HIGH;
      001443 75 17 15         [24] 2861 	mov	_set_ui_state_PARM_2,#0x15
      001446 80 2F            [24] 2862 	sjmp	00132$
      001448                       2863 00119$:
                                   2864 ;	../UI_Manager/ui.c:895: } else if(--state < DMX_STATE_LOW){
      001448 15 17            [12] 2865 	dec	_set_ui_state_PARM_2
      00144A 74 EC            [12] 2866 	mov	a,#0x100 - 0x14
      00144C 25 17            [12] 2867 	add	a,_set_ui_state_PARM_2
      00144E 40 27            [24] 2868 	jc	00132$
                                   2869 ;	../UI_Manager/ui.c:896: state = IDLE_STATE;
      001450 75 17 00         [24] 2870 	mov	_set_ui_state_PARM_2,#0x00
      001453 80 22            [24] 2871 	sjmp	00132$
      001455                       2872 00125$:
                                   2873 ;	../UI_Manager/ui.c:899: if(state == IDLE_STATE){
      001455 E5 17            [12] 2874 	mov	a,_set_ui_state_PARM_2
      001457 70 05            [24] 2875 	jnz	00122$
                                   2876 ;	../UI_Manager/ui.c:900: state = MANUAL_STATE_HIGH; 
      001459 75 17 0E         [24] 2877 	mov	_set_ui_state_PARM_2,#0x0e
      00145C 80 19            [24] 2878 	sjmp	00132$
      00145E                       2879 00122$:
                                   2880 ;	../UI_Manager/ui.c:902: state--;
      00145E 15 17            [12] 2881 	dec	_set_ui_state_PARM_2
                                   2882 ;	../UI_Manager/ui.c:905: break;
                                   2883 ;	../UI_Manager/ui.c:906: default: 
      001460 80 15            [24] 2884 	sjmp	00132$
      001462                       2885 00127$:
                                   2886 ;	../UI_Manager/ui.c:907: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
      001462 E5 17            [12] 2887 	mov	a,_set_ui_state_PARM_2
      001464 24 F1            [12] 2888 	add	a,#0xff - 0x0e
      001466 50 0C            [24] 2889 	jnc	00128$
      001468 74 EC            [12] 2890 	mov	a,#0x100 - 0x14
      00146A 25 17            [12] 2891 	add	a,_set_ui_state_PARM_2
      00146C 50 09            [24] 2892 	jnc	00132$
      00146E E5 17            [12] 2893 	mov	a,_set_ui_state_PARM_2
      001470 24 EA            [12] 2894 	add	a,#0xff - 0x15
      001472 40 03            [24] 2895 	jc	00132$
      001474                       2896 00128$:
                                   2897 ;	../UI_Manager/ui.c:908: state = IDLE_STATE;
      001474 75 17 00         [24] 2898 	mov	_set_ui_state_PARM_2,#0x00
                                   2899 ;	../UI_Manager/ui.c:911: }
      001477                       2900 00132$:
                                   2901 ;	../UI_Manager/ui.c:913: State = state;
      001477 85 17 08         [24] 2902 	mov	_State,_set_ui_state_PARM_2
                                   2903 ;	../UI_Manager/ui.c:914: }
      00147A 22               [24] 2904 	ret
                                   2905 ;------------------------------------------------------------
                                   2906 ;Allocation info for local variables in function 'get_ui_state'
                                   2907 ;------------------------------------------------------------
                                   2908 ;	../UI_Manager/ui.c:916: uint8_t get_ui_state(){
                                   2909 ;	-----------------------------------------
                                   2910 ;	 function get_ui_state
                                   2911 ;	-----------------------------------------
      00147B                       2912 _get_ui_state:
                                   2913 ;	../UI_Manager/ui.c:917: return State;
      00147B 85 08 82         [24] 2914 	mov	dpl,_State
                                   2915 ;	../UI_Manager/ui.c:918: }
      00147E 22               [24] 2916 	ret
                                   2917 ;------------------------------------------------------------
                                   2918 ;Allocation info for local variables in function 'getString'
                                   2919 ;------------------------------------------------------------
                                   2920 ;index                     Allocated to registers r7 
                                   2921 ;------------------------------------------------------------
                                   2922 ;	../UI_Manager/ui.c:920: char* getString(uint8_t index){
                                   2923 ;	-----------------------------------------
                                   2924 ;	 function getString
                                   2925 ;	-----------------------------------------
      00147F                       2926 _getString:
      00147F AF 82            [24] 2927 	mov	r7,dpl
                                   2928 ;	../UI_Manager/ui.c:921: switch (index)
      001481 8F 06            [24] 2929 	mov	ar6,r7
      001483 BE 00 03         [24] 2930 	cjne	r6,#0x00,00299$
      001486 02 15 70         [24] 2931 	ljmp	00101$
      001489                       2932 00299$:
      001489 BE 01 03         [24] 2933 	cjne	r6,#0x01,00300$
      00148C 02 15 77         [24] 2934 	ljmp	00102$
      00148F                       2935 00300$:
      00148F BF 02 03         [24] 2936 	cjne	r7,#0x02,00301$
      001492 02 15 7E         [24] 2937 	ljmp	00103$
      001495                       2938 00301$:
      001495 BF 14 03         [24] 2939 	cjne	r7,#0x14,00302$
      001498 02 15 85         [24] 2940 	ljmp	00104$
      00149B                       2941 00302$:
      00149B BF 15 03         [24] 2942 	cjne	r7,#0x15,00303$
      00149E 02 15 8C         [24] 2943 	ljmp	00105$
      0014A1                       2944 00303$:
      0014A1 BF 16 03         [24] 2945 	cjne	r7,#0x16,00304$
      0014A4 02 15 93         [24] 2946 	ljmp	00106$
      0014A7                       2947 00304$:
      0014A7 BF 17 03         [24] 2948 	cjne	r7,#0x17,00305$
      0014AA 02 15 9A         [24] 2949 	ljmp	00107$
      0014AD                       2950 00305$:
      0014AD BF 18 03         [24] 2951 	cjne	r7,#0x18,00306$
      0014B0 02 15 A8         [24] 2952 	ljmp	00109$
      0014B3                       2953 00306$:
      0014B3 BF 19 03         [24] 2954 	cjne	r7,#0x19,00307$
      0014B6 02 15 AF         [24] 2955 	ljmp	00110$
      0014B9                       2956 00307$:
      0014B9 BF 1A 03         [24] 2957 	cjne	r7,#0x1a,00308$
      0014BC 02 15 A1         [24] 2958 	ljmp	00108$
      0014BF                       2959 00308$:
      0014BF BF 28 03         [24] 2960 	cjne	r7,#0x28,00309$
      0014C2 02 16 57         [24] 2961 	ljmp	00134$
      0014C5                       2962 00309$:
      0014C5 BF 29 03         [24] 2963 	cjne	r7,#0x29,00310$
      0014C8 02 16 5E         [24] 2964 	ljmp	00135$
      0014CB                       2965 00310$:
      0014CB BF 2A 03         [24] 2966 	cjne	r7,#0x2a,00311$
      0014CE 02 16 65         [24] 2967 	ljmp	00136$
      0014D1                       2968 00311$:
      0014D1 BF 2B 03         [24] 2969 	cjne	r7,#0x2b,00312$
      0014D4 02 16 6C         [24] 2970 	ljmp	00137$
      0014D7                       2971 00312$:
      0014D7 BF 2C 03         [24] 2972 	cjne	r7,#0x2c,00313$
      0014DA 02 16 73         [24] 2973 	ljmp	00138$
      0014DD                       2974 00313$:
      0014DD BF 2D 03         [24] 2975 	cjne	r7,#0x2d,00314$
      0014E0 02 16 7A         [24] 2976 	ljmp	00139$
      0014E3                       2977 00314$:
      0014E3 BF 3C 03         [24] 2978 	cjne	r7,#0x3c,00315$
      0014E6 02 15 D2         [24] 2979 	ljmp	00115$
      0014E9                       2980 00315$:
      0014E9 BF 3D 03         [24] 2981 	cjne	r7,#0x3d,00316$
      0014EC 02 15 D9         [24] 2982 	ljmp	00116$
      0014EF                       2983 00316$:
      0014EF BF 3E 03         [24] 2984 	cjne	r7,#0x3e,00317$
      0014F2 02 15 E0         [24] 2985 	ljmp	00117$
      0014F5                       2986 00317$:
      0014F5 BF 3F 03         [24] 2987 	cjne	r7,#0x3f,00318$
      0014F8 02 15 E7         [24] 2988 	ljmp	00118$
      0014FB                       2989 00318$:
      0014FB BF 40 03         [24] 2990 	cjne	r7,#0x40,00319$
      0014FE 02 15 EE         [24] 2991 	ljmp	00119$
      001501                       2992 00319$:
      001501 BF 41 03         [24] 2993 	cjne	r7,#0x41,00320$
      001504 02 15 F5         [24] 2994 	ljmp	00120$
      001507                       2995 00320$:
      001507 BF 42 03         [24] 2996 	cjne	r7,#0x42,00321$
      00150A 02 15 FC         [24] 2997 	ljmp	00121$
      00150D                       2998 00321$:
      00150D BF 43 03         [24] 2999 	cjne	r7,#0x43,00322$
      001510 02 16 03         [24] 3000 	ljmp	00122$
      001513                       3001 00322$:
      001513 BF 44 03         [24] 3002 	cjne	r7,#0x44,00323$
      001516 02 16 0A         [24] 3003 	ljmp	00123$
      001519                       3004 00323$:
      001519 BF 45 03         [24] 3005 	cjne	r7,#0x45,00324$
      00151C 02 16 11         [24] 3006 	ljmp	00124$
      00151F                       3007 00324$:
      00151F BF 46 03         [24] 3008 	cjne	r7,#0x46,00325$
      001522 02 16 18         [24] 3009 	ljmp	00125$
      001525                       3010 00325$:
      001525 BF 47 03         [24] 3011 	cjne	r7,#0x47,00326$
      001528 02 16 1F         [24] 3012 	ljmp	00126$
      00152B                       3013 00326$:
      00152B BF 48 03         [24] 3014 	cjne	r7,#0x48,00327$
      00152E 02 16 26         [24] 3015 	ljmp	00127$
      001531                       3016 00327$:
      001531 BF 50 03         [24] 3017 	cjne	r7,#0x50,00328$
      001534 02 16 2D         [24] 3018 	ljmp	00128$
      001537                       3019 00328$:
      001537 BF 51 03         [24] 3020 	cjne	r7,#0x51,00329$
      00153A 02 16 34         [24] 3021 	ljmp	00129$
      00153D                       3022 00329$:
      00153D BF 52 03         [24] 3023 	cjne	r7,#0x52,00330$
      001540 02 16 3B         [24] 3024 	ljmp	00130$
      001543                       3025 00330$:
      001543 BF 64 03         [24] 3026 	cjne	r7,#0x64,00331$
      001546 02 16 42         [24] 3027 	ljmp	00131$
      001549                       3028 00331$:
      001549 BF 65 03         [24] 3029 	cjne	r7,#0x65,00332$
      00154C 02 16 49         [24] 3030 	ljmp	00132$
      00154F                       3031 00332$:
      00154F BF 66 03         [24] 3032 	cjne	r7,#0x66,00333$
      001552 02 16 50         [24] 3033 	ljmp	00133$
      001555                       3034 00333$:
      001555 BF CE 03         [24] 3035 	cjne	r7,#0xce,00334$
      001558 02 15 B6         [24] 3036 	ljmp	00111$
      00155B                       3037 00334$:
      00155B BF CF 03         [24] 3038 	cjne	r7,#0xcf,00335$
      00155E 02 15 BD         [24] 3039 	ljmp	00112$
      001561                       3040 00335$:
      001561 BF D0 03         [24] 3041 	cjne	r7,#0xd0,00336$
      001564 02 15 C4         [24] 3042 	ljmp	00113$
      001567                       3043 00336$:
      001567 BF D1 03         [24] 3044 	cjne	r7,#0xd1,00337$
      00156A 02 15 CB         [24] 3045 	ljmp	00114$
      00156D                       3046 00337$:
      00156D 02 16 81         [24] 3047 	ljmp	00140$
                                   3048 ;	../UI_Manager/ui.c:923: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
      001570                       3049 00101$:
                                   3050 ;	../UI_Manager/ui.c:924: return "Wimpy";
      001570 90 30 EA         [24] 3051 	mov	dptr,#___str_32
      001573 75 F0 80         [24] 3052 	mov	b,#0x80
      001576 22               [24] 3053 	ret
                                   3054 ;	../UI_Manager/ui.c:925: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
      001577                       3055 00102$:
                                   3056 ;	../UI_Manager/ui.c:926: return "Mild";
      001577 90 30 F0         [24] 3057 	mov	dptr,#___str_33
      00157A 75 F0 80         [24] 3058 	mov	b,#0x80
      00157D 22               [24] 3059 	ret
                                   3060 ;	../UI_Manager/ui.c:927: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
      00157E                       3061 00103$:
                                   3062 ;	../UI_Manager/ui.c:928: return "Blazin";
      00157E 90 30 F5         [24] 3063 	mov	dptr,#___str_34
      001581 75 F0 80         [24] 3064 	mov	b,#0x80
      001584 22               [24] 3065 	ret
                                   3066 ;	../UI_Manager/ui.c:930: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
      001585                       3067 00104$:
                                   3068 ;	../UI_Manager/ui.c:931: return "Off";
      001585 90 30 8D         [24] 3069 	mov	dptr,#___str_23
      001588 75 F0 80         [24] 3070 	mov	b,#0x80
      00158B 22               [24] 3071 	ret
                                   3072 ;	../UI_Manager/ui.c:932: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
      00158C                       3073 00105$:
                                   3074 ;	../UI_Manager/ui.c:933: return "Rainbow";
      00158C 90 30 FC         [24] 3075 	mov	dptr,#___str_35
      00158F 75 F0 80         [24] 3076 	mov	b,#0x80
      001592 22               [24] 3077 	ret
                                   3078 ;	../UI_Manager/ui.c:934: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
      001593                       3079 00106$:
                                   3080 ;	../UI_Manager/ui.c:935: return "Fire";
      001593 90 31 04         [24] 3081 	mov	dptr,#___str_36
      001596 75 F0 80         [24] 3082 	mov	b,#0x80
      001599 22               [24] 3083 	ret
                                   3084 ;	../UI_Manager/ui.c:936: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
      00159A                       3085 00107$:
                                   3086 ;	../UI_Manager/ui.c:937: return "Water";
      00159A 90 31 09         [24] 3087 	mov	dptr,#___str_37
      00159D 75 F0 80         [24] 3088 	mov	b,#0x80
      0015A0 22               [24] 3089 	ret
                                   3090 ;	../UI_Manager/ui.c:938: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
      0015A1                       3091 00108$:
                                   3092 ;	../UI_Manager/ui.c:939: return "Storm";
      0015A1 90 31 0F         [24] 3093 	mov	dptr,#___str_38
      0015A4 75 F0 80         [24] 3094 	mov	b,#0x80
      0015A7 22               [24] 3095 	ret
                                   3096 ;	../UI_Manager/ui.c:940: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
      0015A8                       3097 00109$:
                                   3098 ;	../UI_Manager/ui.c:941: return "Acid";
      0015A8 90 31 15         [24] 3099 	mov	dptr,#___str_39
      0015AB 75 F0 80         [24] 3100 	mov	b,#0x80
      0015AE 22               [24] 3101 	ret
                                   3102 ;	../UI_Manager/ui.c:942: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
      0015AF                       3103 00110$:
                                   3104 ;	../UI_Manager/ui.c:943: return "Ether";
      0015AF 90 31 1A         [24] 3105 	mov	dptr,#___str_40
      0015B2 75 F0 80         [24] 3106 	mov	b,#0x80
      0015B5 22               [24] 3107 	ret
                                   3108 ;	../UI_Manager/ui.c:945: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
      0015B6                       3109 00111$:
                                   3110 ;	../UI_Manager/ui.c:946: return "Red Level";
      0015B6 90 31 20         [24] 3111 	mov	dptr,#___str_41
      0015B9 75 F0 80         [24] 3112 	mov	b,#0x80
      0015BC 22               [24] 3113 	ret
                                   3114 ;	../UI_Manager/ui.c:947: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
      0015BD                       3115 00112$:
                                   3116 ;	../UI_Manager/ui.c:948: return "Green Level";
      0015BD 90 31 2A         [24] 3117 	mov	dptr,#___str_42
      0015C0 75 F0 80         [24] 3118 	mov	b,#0x80
      0015C3 22               [24] 3119 	ret
                                   3120 ;	../UI_Manager/ui.c:949: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
      0015C4                       3121 00113$:
                                   3122 ;	../UI_Manager/ui.c:950: return "Blue Level";
      0015C4 90 31 36         [24] 3123 	mov	dptr,#___str_43
      0015C7 75 F0 80         [24] 3124 	mov	b,#0x80
      0015CA 22               [24] 3125 	ret
                                   3126 ;	../UI_Manager/ui.c:951: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
      0015CB                       3127 00114$:
                                   3128 ;	../UI_Manager/ui.c:952: return "Strobe Level";
      0015CB 90 31 41         [24] 3129 	mov	dptr,#___str_44
      0015CE 75 F0 80         [24] 3130 	mov	b,#0x80
      0015D1 22               [24] 3131 	ret
                                   3132 ;	../UI_Manager/ui.c:954: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
      0015D2                       3133 00115$:
                                   3134 ;	../UI_Manager/ui.c:955: return "No Action";
      0015D2 90 31 4E         [24] 3135 	mov	dptr,#___str_45
      0015D5 75 F0 80         [24] 3136 	mov	b,#0x80
      0015D8 22               [24] 3137 	ret
                                   3138 ;	../UI_Manager/ui.c:956: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      0015D9                       3139 00116$:
                                   3140 ;	../UI_Manager/ui.c:957: return "Choose Macro";
      0015D9 90 31 58         [24] 3141 	mov	dptr,#___str_46
      0015DC 75 F0 80         [24] 3142 	mov	b,#0x80
      0015DF 22               [24] 3143 	ret
                                   3144 ;	../UI_Manager/ui.c:958: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
      0015E0                       3145 00117$:
                                   3146 ;	../UI_Manager/ui.c:959: return "Red";
      0015E0 90 31 65         [24] 3147 	mov	dptr,#___str_47
      0015E3 75 F0 80         [24] 3148 	mov	b,#0x80
      0015E6 22               [24] 3149 	ret
                                   3150 ;	../UI_Manager/ui.c:960: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
      0015E7                       3151 00118$:
                                   3152 ;	../UI_Manager/ui.c:961: return "Yellow";
      0015E7 90 31 69         [24] 3153 	mov	dptr,#___str_48
      0015EA 75 F0 80         [24] 3154 	mov	b,#0x80
      0015ED 22               [24] 3155 	ret
                                   3156 ;	../UI_Manager/ui.c:962: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
      0015EE                       3157 00119$:
                                   3158 ;	../UI_Manager/ui.c:963: return "Green";
      0015EE 90 31 70         [24] 3159 	mov	dptr,#___str_49
      0015F1 75 F0 80         [24] 3160 	mov	b,#0x80
      0015F4 22               [24] 3161 	ret
                                   3162 ;	../UI_Manager/ui.c:964: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
      0015F5                       3163 00120$:
                                   3164 ;	../UI_Manager/ui.c:965: return "Cyan";
      0015F5 90 31 76         [24] 3165 	mov	dptr,#___str_50
      0015F8 75 F0 80         [24] 3166 	mov	b,#0x80
      0015FB 22               [24] 3167 	ret
                                   3168 ;	../UI_Manager/ui.c:966: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
      0015FC                       3169 00121$:
                                   3170 ;	../UI_Manager/ui.c:967: return "Blue";
      0015FC 90 31 7B         [24] 3171 	mov	dptr,#___str_51
      0015FF 75 F0 80         [24] 3172 	mov	b,#0x80
      001602 22               [24] 3173 	ret
                                   3174 ;	../UI_Manager/ui.c:968: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
      001603                       3175 00122$:
                                   3176 ;	../UI_Manager/ui.c:969: return "Magenta";
      001603 90 31 80         [24] 3177 	mov	dptr,#___str_52
      001606 75 F0 80         [24] 3178 	mov	b,#0x80
      001609 22               [24] 3179 	ret
                                   3180 ;	../UI_Manager/ui.c:970: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
      00160A                       3181 00123$:
                                   3182 ;	../UI_Manager/ui.c:971: return "Strobe Slow";
      00160A 90 31 88         [24] 3183 	mov	dptr,#___str_53
      00160D 75 F0 80         [24] 3184 	mov	b,#0x80
      001610 22               [24] 3185 	ret
                                   3186 ;	../UI_Manager/ui.c:972: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      001611                       3187 00124$:
                                   3188 ;	../UI_Manager/ui.c:973: return "Strobe Medium";
      001611 90 31 94         [24] 3189 	mov	dptr,#___str_54
      001614 75 F0 80         [24] 3190 	mov	b,#0x80
      001617 22               [24] 3191 	ret
                                   3192 ;	../UI_Manager/ui.c:974: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
      001618                       3193 00125$:
                                   3194 ;	../UI_Manager/ui.c:975: return "Strobe Fast";
      001618 90 31 A2         [24] 3195 	mov	dptr,#___str_55
      00161B 75 F0 80         [24] 3196 	mov	b,#0x80
      00161E 22               [24] 3197 	ret
                                   3198 ;	../UI_Manager/ui.c:976: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
      00161F                       3199 00126$:
                                   3200 ;	../UI_Manager/ui.c:977: return "Blackout";
      00161F 90 31 AE         [24] 3201 	mov	dptr,#___str_56
      001622 75 F0 80         [24] 3202 	mov	b,#0x80
      001625 22               [24] 3203 	ret
                                   3204 ;	../UI_Manager/ui.c:978: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
      001626                       3205 00127$:
                                   3206 ;	../UI_Manager/ui.c:979: return "Whiteout";         
      001626 90 31 B7         [24] 3207 	mov	dptr,#___str_57
      001629 75 F0 80         [24] 3208 	mov	b,#0x80
      00162C 22               [24] 3209 	ret
                                   3210 ;	../UI_Manager/ui.c:981: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
      00162D                       3211 00128$:
                                   3212 ;	../UI_Manager/ui.c:982: return "Slot 1";   
      00162D 90 31 C0         [24] 3213 	mov	dptr,#___str_58
      001630 75 F0 80         [24] 3214 	mov	b,#0x80
      001633 22               [24] 3215 	ret
                                   3216 ;	../UI_Manager/ui.c:983: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
      001634                       3217 00129$:
                                   3218 ;	../UI_Manager/ui.c:984: return "Slot 2";   
      001634 90 31 C7         [24] 3219 	mov	dptr,#___str_59
      001637 75 F0 80         [24] 3220 	mov	b,#0x80
      00163A 22               [24] 3221 	ret
                                   3222 ;	../UI_Manager/ui.c:985: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
      00163B                       3223 00130$:
                                   3224 ;	../UI_Manager/ui.c:986: return "Slot 3"; 
      00163B 90 31 CE         [24] 3225 	mov	dptr,#___str_60
      00163E 75 F0 80         [24] 3226 	mov	b,#0x80
                                   3227 ;	../UI_Manager/ui.c:988: case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
      001641 22               [24] 3228 	ret
      001642                       3229 00131$:
                                   3230 ;	../UI_Manager/ui.c:989: return "11 All";     
      001642 90 31 D5         [24] 3231 	mov	dptr,#___str_61
      001645 75 F0 80         [24] 3232 	mov	b,#0x80
                                   3233 ;	../UI_Manager/ui.c:990: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
      001648 22               [24] 3234 	ret
      001649                       3235 00132$:
                                   3236 ;	../UI_Manager/ui.c:991: return " 3 Fog + Macro";   
      001649 90 31 DC         [24] 3237 	mov	dptr,#___str_62
      00164C 75 F0 80         [24] 3238 	mov	b,#0x80
                                   3239 ;	../UI_Manager/ui.c:992: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
      00164F 22               [24] 3240 	ret
      001650                       3241 00133$:
                                   3242 ;	../UI_Manager/ui.c:993: return " 1 Fog";    
      001650 90 31 EB         [24] 3243 	mov	dptr,#___str_63
      001653 75 F0 80         [24] 3244 	mov	b,#0x80
                                   3245 ;	../UI_Manager/ui.c:995: case SECRET_STRING_OFFSET + 0:
      001656 22               [24] 3246 	ret
      001657                       3247 00134$:
                                   3248 ;	../UI_Manager/ui.c:996: return "0x486F6C6D6573";
      001657 90 31 F2         [24] 3249 	mov	dptr,#___str_64
      00165A 75 F0 80         [24] 3250 	mov	b,#0x80
                                   3251 ;	../UI_Manager/ui.c:997: case SECRET_STRING_OFFSET + 1:
      00165D 22               [24] 3252 	ret
      00165E                       3253 00135$:
                                   3254 ;	../UI_Manager/ui.c:998: return "& 576174736F6E";
      00165E 90 32 01         [24] 3255 	mov	dptr,#___str_65
      001661 75 F0 80         [24] 3256 	mov	b,#0x80
                                   3257 ;	../UI_Manager/ui.c:999: case SECRET_STRING_OFFSET + 2:
      001664 22               [24] 3258 	ret
      001665                       3259 00136$:
                                   3260 ;	../UI_Manager/ui.c:1000: return "626F74684F776E41";
      001665 90 32 10         [24] 3261 	mov	dptr,#___str_66
      001668 75 F0 80         [24] 3262 	mov	b,#0x80
                                   3263 ;	../UI_Manager/ui.c:1001: case SECRET_STRING_OFFSET + 3:
      00166B 22               [24] 3264 	ret
      00166C                       3265 00137$:
                                   3266 ;	../UI_Manager/ui.c:1002: return "536E6F7762616C6C";
      00166C 90 32 21         [24] 3267 	mov	dptr,#___str_67
      00166F 75 F0 80         [24] 3268 	mov	b,#0x80
                                   3269 ;	../UI_Manager/ui.c:1003: case SECRET_STRING_OFFSET + 4:
      001672 22               [24] 3270 	ret
      001673                       3271 00138$:
                                   3272 ;	../UI_Manager/ui.c:1004: return "4D6F726961727479";
      001673 90 32 32         [24] 3273 	mov	dptr,#___str_68
      001676 75 F0 80         [24] 3274 	mov	b,#0x80
                                   3275 ;	../UI_Manager/ui.c:1005: case SECRET_STRING_OFFSET + 5:
      001679 22               [24] 3276 	ret
      00167A                       3277 00139$:
                                   3278 ;	../UI_Manager/ui.c:1006: return "646F65734E6F74 ;";
      00167A 90 32 43         [24] 3279 	mov	dptr,#___str_69
      00167D 75 F0 80         [24] 3280 	mov	b,#0x80
                                   3281 ;	../UI_Manager/ui.c:1007: }
      001680 22               [24] 3282 	ret
      001681                       3283 00140$:
                                   3284 ;	../UI_Manager/ui.c:1009: return 0;
      001681 90 00 00         [24] 3285 	mov	dptr,#0x0000
      001684 75 F0 00         [24] 3286 	mov	b,#0x00
                                   3287 ;	../UI_Manager/ui.c:1010: }
      001687 22               [24] 3288 	ret
                                   3289 	.area CSEG    (CODE)
                                   3290 	.area CONST   (CODE)
      002F85                       3291 ___str_0:
      002F85 54 61 6E 6B 20 4C 69  3292 	.ascii "Tank Lights Off"
             67 68 74 73 20 4F 66
             66
      002F94 00                    3293 	.db 0x00
      002F95                       3294 ___str_1:
      002F95 54 61 6E 6B 20 4C 69  3295 	.ascii "Tank Lights On"
             67 68 74 73 20 4F 6E
      002FA3 00                    3296 	.db 0x00
      002FA4                       3297 ___str_2:
      002FA4 46 75 6E 2B 4D 61 6E  3298 	.ascii "Fun+Man to Undo"
             20 74 6F 20 55 6E 64
             6F
      002FB3 00                    3299 	.db 0x00
      002FB4                       3300 ___str_3:
      002FB4 48 65 61 74 65 72 20  3301 	.ascii "Heater Off"
             4F 66 66
      002FBE 00                    3302 	.db 0x00
      002FBF                       3303 ___str_4:
      002FBF 48 65 61 74 65 72 20  3304 	.ascii "Heater On"
             4F 6E
      002FC8 00                    3305 	.db 0x00
      002FC9                       3306 ___str_5:
      002FC9 42 75 72 73 74 2B 55  3307 	.ascii "Burst+Up to Undo"
             70 20 74 6F 20 55 6E
             64 6F
      002FD9 00                    3308 	.db 0x00
      002FDA                       3309 ___str_6:
      002FDA 41 74 6D 6F 73 46 45  3310 	.ascii "AtmosFEAR 221B"
             41 52 20 32 32 31 42
      002FE8 00                    3311 	.db 0x00
      002FE9                       3312 ___str_7:
      002FE9 42 79 20 42 6C 69 7A  3313 	.ascii "By Blizzard Pro"
             7A 61 72 64 20 50 72
             6F
      002FF8 00                    3314 	.db 0x00
      002FF9                       3315 ___str_8:
      002FF9 50 43 20 4C 6F 61 64  3316 	.ascii "PC Load Letter"
             20 4C 65 74 74 65 72
      003007 00                    3317 	.db 0x00
      003008                       3318 ___str_9:
      003008 42 75 72 73 74 20 74  3319 	.ascii "Burst to Refill"
             6F 20 52 65 66 69 6C
             6C
      003017 00                    3320 	.db 0x00
      003018                       3321 ___str_10:
      003018 4D 61 6E 75 61 6C 20  3322 	.ascii "Manual Mode"
             4D 6F 64 65
      003023 00                    3323 	.db 0x00
      003024                       3324 ___str_11:
      003024 41 64 64 72           3325 	.ascii "Addr"
      003028 00                    3326 	.db 0x00
      003029                       3327 ___str_12:
      003029 4D 6F 64 65           3328 	.ascii "Mode"
      00302D 00                    3329 	.db 0x00
      00302E                       3330 ___str_13:
      00302E 44 4D 58 20 4F 6B     3331 	.ascii "DMX Ok"
      003034 00                    3332 	.db 0x00
      003035                       3333 ___str_14:
      003035 4E 6F 20 44 4D 58     3334 	.ascii "No DMX"
      00303B 00                    3335 	.db 0x00
      00303C                       3336 ___str_15:
      00303C 49 6E 74 65 72 76 61  3337 	.ascii "Interval"
             6C
      003044 00                    3338 	.db 0x00
      003045                       3339 ___str_16:
      003045 44 75 72 61 74 69 6F  3340 	.ascii "Duration"
             6E
      00304D 00                    3341 	.db 0x00
      00304E                       3342 ___str_17:
      00304E 46 6F 67 20 4C 65 76  3343 	.ascii "Fog Level"
             65 6C
      003057 00                    3344 	.db 0x00
      003058                       3345 ___str_18:
      003058 46 6F 67 20 49 6E 74  3346 	.ascii "Fog Interval"
             65 72 76 61 6C
      003064 00                    3347 	.db 0x00
      003065                       3348 ___str_19:
      003065 53 65 63 6F 6E 64 73  3349 	.ascii "Seconds"
      00306C 00                    3350 	.db 0x00
      00306D                       3351 ___str_20:
      00306D 46 6F 67 20 44 75 72  3352 	.ascii "Fog Duration"
             61 74 69 6F 6E
      003079 00                    3353 	.db 0x00
      00307A                       3354 ___str_21:
      00307A 4D 61 63 72 6F 73     3355 	.ascii "Macros"
      003080 00                    3356 	.db 0x00
      003081                       3357 ___str_22:
      003081 4D 61 63 72 6F 20 53  3358 	.ascii "Macro Speed"
             70 65 65 64
      00308C 00                    3359 	.db 0x00
      00308D                       3360 ___str_23:
      00308D 4F 66 66              3361 	.ascii "Off"
      003090 00                    3362 	.db 0x00
      003091                       3363 ___str_24:
      003091 00                    3364 	.db 0x00
      003092                       3365 ___str_25:
      003092 52 65 6D 6F 74 65 20  3366 	.ascii "Remote X Action"
             58 20 41 63 74 69 6F
             6E
      0030A1 00                    3367 	.db 0x00
      0030A2                       3368 ___str_26:
      0030A2 53 61 76 65 64 21     3369 	.ascii "Saved!"
      0030A8 00                    3370 	.db 0x00
      0030A9                       3371 ___str_27:
      0030A9 4C 6F 61 64 65 64 21  3372 	.ascii "Loaded!"
      0030B0 00                    3373 	.db 0x00
      0030B1                       3374 ___str_28:
      0030B1 53 61 76 65 20 53 65  3375 	.ascii "Save Settings"
             74 74 69 6E 67 73
      0030BE 00                    3376 	.db 0x00
      0030BF                       3377 ___str_29:
      0030BF 4C 6F 61 64 20 53 65  3378 	.ascii "Load Settings"
             74 74 69 6E 67 73
      0030CC 00                    3379 	.db 0x00
      0030CD                       3380 ___str_30:
      0030CD 44 4D 58 20 41 64 64  3381 	.ascii "DMX Address"
             72 65 73 73
      0030D8 00                    3382 	.db 0x00
      0030D9                       3383 ___str_31:
      0030D9 44 4D 58 20 43 68 61  3384 	.ascii "DMX Channel Mode"
             6E 6E 65 6C 20 4D 6F
             64 65
      0030E9 00                    3385 	.db 0x00
      0030EA                       3386 ___str_32:
      0030EA 57 69 6D 70 79        3387 	.ascii "Wimpy"
      0030EF 00                    3388 	.db 0x00
      0030F0                       3389 ___str_33:
      0030F0 4D 69 6C 64           3390 	.ascii "Mild"
      0030F4 00                    3391 	.db 0x00
      0030F5                       3392 ___str_34:
      0030F5 42 6C 61 7A 69 6E     3393 	.ascii "Blazin"
      0030FB 00                    3394 	.db 0x00
      0030FC                       3395 ___str_35:
      0030FC 52 61 69 6E 62 6F 77  3396 	.ascii "Rainbow"
      003103 00                    3397 	.db 0x00
      003104                       3398 ___str_36:
      003104 46 69 72 65           3399 	.ascii "Fire"
      003108 00                    3400 	.db 0x00
      003109                       3401 ___str_37:
      003109 57 61 74 65 72        3402 	.ascii "Water"
      00310E 00                    3403 	.db 0x00
      00310F                       3404 ___str_38:
      00310F 53 74 6F 72 6D        3405 	.ascii "Storm"
      003114 00                    3406 	.db 0x00
      003115                       3407 ___str_39:
      003115 41 63 69 64           3408 	.ascii "Acid"
      003119 00                    3409 	.db 0x00
      00311A                       3410 ___str_40:
      00311A 45 74 68 65 72        3411 	.ascii "Ether"
      00311F 00                    3412 	.db 0x00
      003120                       3413 ___str_41:
      003120 52 65 64 20 4C 65 76  3414 	.ascii "Red Level"
             65 6C
      003129 00                    3415 	.db 0x00
      00312A                       3416 ___str_42:
      00312A 47 72 65 65 6E 20 4C  3417 	.ascii "Green Level"
             65 76 65 6C
      003135 00                    3418 	.db 0x00
      003136                       3419 ___str_43:
      003136 42 6C 75 65 20 4C 65  3420 	.ascii "Blue Level"
             76 65 6C
      003140 00                    3421 	.db 0x00
      003141                       3422 ___str_44:
      003141 53 74 72 6F 62 65 20  3423 	.ascii "Strobe Level"
             4C 65 76 65 6C
      00314D 00                    3424 	.db 0x00
      00314E                       3425 ___str_45:
      00314E 4E 6F 20 41 63 74 69  3426 	.ascii "No Action"
             6F 6E
      003157 00                    3427 	.db 0x00
      003158                       3428 ___str_46:
      003158 43 68 6F 6F 73 65 20  3429 	.ascii "Choose Macro"
             4D 61 63 72 6F
      003164 00                    3430 	.db 0x00
      003165                       3431 ___str_47:
      003165 52 65 64              3432 	.ascii "Red"
      003168 00                    3433 	.db 0x00
      003169                       3434 ___str_48:
      003169 59 65 6C 6C 6F 77     3435 	.ascii "Yellow"
      00316F 00                    3436 	.db 0x00
      003170                       3437 ___str_49:
      003170 47 72 65 65 6E        3438 	.ascii "Green"
      003175 00                    3439 	.db 0x00
      003176                       3440 ___str_50:
      003176 43 79 61 6E           3441 	.ascii "Cyan"
      00317A 00                    3442 	.db 0x00
      00317B                       3443 ___str_51:
      00317B 42 6C 75 65           3444 	.ascii "Blue"
      00317F 00                    3445 	.db 0x00
      003180                       3446 ___str_52:
      003180 4D 61 67 65 6E 74 61  3447 	.ascii "Magenta"
      003187 00                    3448 	.db 0x00
      003188                       3449 ___str_53:
      003188 53 74 72 6F 62 65 20  3450 	.ascii "Strobe Slow"
             53 6C 6F 77
      003193 00                    3451 	.db 0x00
      003194                       3452 ___str_54:
      003194 53 74 72 6F 62 65 20  3453 	.ascii "Strobe Medium"
             4D 65 64 69 75 6D
      0031A1 00                    3454 	.db 0x00
      0031A2                       3455 ___str_55:
      0031A2 53 74 72 6F 62 65 20  3456 	.ascii "Strobe Fast"
             46 61 73 74
      0031AD 00                    3457 	.db 0x00
      0031AE                       3458 ___str_56:
      0031AE 42 6C 61 63 6B 6F 75  3459 	.ascii "Blackout"
             74
      0031B6 00                    3460 	.db 0x00
      0031B7                       3461 ___str_57:
      0031B7 57 68 69 74 65 6F 75  3462 	.ascii "Whiteout"
             74
      0031BF 00                    3463 	.db 0x00
      0031C0                       3464 ___str_58:
      0031C0 53 6C 6F 74 20 31     3465 	.ascii "Slot 1"
      0031C6 00                    3466 	.db 0x00
      0031C7                       3467 ___str_59:
      0031C7 53 6C 6F 74 20 32     3468 	.ascii "Slot 2"
      0031CD 00                    3469 	.db 0x00
      0031CE                       3470 ___str_60:
      0031CE 53 6C 6F 74 20 33     3471 	.ascii "Slot 3"
      0031D4 00                    3472 	.db 0x00
      0031D5                       3473 ___str_61:
      0031D5 31 31 20 41 6C 6C     3474 	.ascii "11 All"
      0031DB 00                    3475 	.db 0x00
      0031DC                       3476 ___str_62:
      0031DC 20 33 20 46 6F 67 20  3477 	.ascii " 3 Fog + Macro"
             2B 20 4D 61 63 72 6F
      0031EA 00                    3478 	.db 0x00
      0031EB                       3479 ___str_63:
      0031EB 20 31 20 46 6F 67     3480 	.ascii " 1 Fog"
      0031F1 00                    3481 	.db 0x00
      0031F2                       3482 ___str_64:
      0031F2 30 78 34 38 36 46 36  3483 	.ascii "0x486F6C6D6573"
             43 36 44 36 35 37 33
      003200 00                    3484 	.db 0x00
      003201                       3485 ___str_65:
      003201 26 20 35 37 36 31 37  3486 	.ascii "& 576174736F6E"
             34 37 33 36 46 36 45
      00320F 00                    3487 	.db 0x00
      003210                       3488 ___str_66:
      003210 36 32 36 46 37 34 36  3489 	.ascii "626F74684F776E41"
             38 34 46 37 37 36 45
             34 31
      003220 00                    3490 	.db 0x00
      003221                       3491 ___str_67:
      003221 35 33 36 45 36 46 37  3492 	.ascii "536E6F7762616C6C"
             37 36 32 36 31 36 43
             36 43
      003231 00                    3493 	.db 0x00
      003232                       3494 ___str_68:
      003232 34 44 36 46 37 32 36  3495 	.ascii "4D6F726961727479"
             39 36 31 37 32 37 34
             37 39
      003242 00                    3496 	.db 0x00
      003243                       3497 ___str_69:
      003243 36 34 36 46 36 35 37  3498 	.ascii "646F65734E6F74 ;"
             33 34 45 36 46 37 34
             20 3B
      003253 00                    3499 	.db 0x00
                                   3500 	.area XINIT   (CODE)
                                   3501 	.area CABS    (ABS,CODE)
