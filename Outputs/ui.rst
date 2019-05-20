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
                                    310 ;ss                        Allocated to registers 
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
                                    326 ;	../UI_Manager/ui.c:209: static uint8_t timer = 0;
      0000A5 75 10 00         [24]  327 	mov	_idlePage_timer_65536_59,#0x00
                                    328 ;	../UI_Manager/ui.c:211: static uint8_t empty = 0x00;
      0000A8 75 12 00         [24]  329 	mov	_idlePage_empty_65536_59,#0x00
                                    330 ;	../UI_Manager/ui.c:212: static uint8_t tock = 0x00;
      0000AB 75 13 00         [24]  331 	mov	_idlePage_tock_65536_59,#0x00
                                    332 ;	../UI_Manager/ui.c:213: static uint8_t iconChange = 0x00;
      0000AE 75 14 00         [24]  333 	mov	_idlePage_iconChange_65536_59,#0x00
                                    334 ;	../UI_Manager/ui.c:214: static uint8_t playing = PAUSE;
      0000B1 75 15 00         [24]  335 	mov	_idlePage_playing_65536_59,#0x00
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'saveLoadPage'
                                    338 ;------------------------------------------------------------
                                    339 ;slot                      Allocated with name '_saveLoadPage_slot_65536_141'
                                    340 ;action                    Allocated to registers r7 
                                    341 ;------------------------------------------------------------
                                    342 ;	../UI_Manager/ui.c:741: static uint8_t slot = 0;
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
                                    364 ;ss                        Allocated to registers 
                                    365 ;delay                     Allocated with name '_tick_ui_delay_65536_37'
                                    366 ;------------------------------------------------------------
                                    367 ;	../UI_Manager/ui.c:16: void tick_ui(void){
                                    368 ;	-----------------------------------------
                                    369 ;	 function tick_ui
                                    370 ;	-----------------------------------------
      0004EB                        371 _tick_ui:
                           000007   372 	ar7 = 0x07
                           000006   373 	ar6 = 0x06
                           000005   374 	ar5 = 0x05
                           000004   375 	ar4 = 0x04
                           000003   376 	ar3 = 0x03
                           000002   377 	ar2 = 0x02
                           000001   378 	ar1 = 0x01
                           000000   379 	ar0 = 0x00
                                    380 ;	../UI_Manager/ui.c:18: uint8_t action = get_button_action();
      0004EB 12 16 7F         [24]  381 	lcall	_get_button_action
      0004EE AF 82            [24]  382 	mov	r7,dpl
                                    383 ;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_MAN_BURST){
      0004F0 E4               [12]  384 	clr	a
      0004F1 BF 05 01         [24]  385 	cjne	r7,#0x05,00416$
      0004F4 04               [12]  386 	inc	a
      0004F5                        387 00416$:
      0004F5 FE               [12]  388 	mov	r6,a
      0004F6 70 03            [24]  389 	jnz	00103$
      0004F8 BF 0A 21         [24]  390 	cjne	r7,#0x0a,00104$
      0004FB                        391 00103$:
                                    392 ;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
      0004FB EE               [12]  393 	mov	a,r6
      0004FC 60 06            [24]  394 	jz	00174$
      0004FE 7D 02            [12]  395 	mov	r5,#0x02
      000500 7E 00            [12]  396 	mov	r6,#0x00
      000502 80 04            [24]  397 	sjmp	00175$
      000504                        398 00174$:
      000504 7D 03            [12]  399 	mov	r5,#0x03
      000506 7E 00            [12]  400 	mov	r6,#0x00
      000508                        401 00175$:
      000508 8D 82            [24]  402 	mov	dpl,r5
      00050A C0 07            [24]  403 	push	ar7
      00050C 12 2D D8         [24]  404 	lcall	_power_pump
      00050F D0 07            [24]  405 	pop	ar7
                                    406 ;	../UI_Manager/ui.c:26: bursting |= BURSTING;
      000511 AD 0B            [24]  407 	mov	r5,_tick_ui_bursting_65536_37
      000513 7E 00            [12]  408 	mov	r6,#0x00
      000515 43 05 80         [24]  409 	orl	ar5,#0x80
      000518 8D 0B            [24]  410 	mov	_tick_ui_bursting_65536_37,r5
      00051A 80 12            [24]  411 	sjmp	00105$
      00051C                        412 00104$:
                                    413 ;	../UI_Manager/ui.c:27: } else if(bursting & BURSTING){
      00051C E5 0B            [12]  414 	mov	a,_tick_ui_bursting_65536_37
      00051E 30 E7 0D         [24]  415 	jnb	acc.7,00105$
                                    416 ;	../UI_Manager/ui.c:28: power_pump(PUMP_OFF);
      000521 75 82 00         [24]  417 	mov	dpl,#0x00
      000524 C0 07            [24]  418 	push	ar7
      000526 12 2D D8         [24]  419 	lcall	_power_pump
      000529 D0 07            [24]  420 	pop	ar7
                                    421 ;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
      00052B 53 0B 7F         [24]  422 	anl	_tick_ui_bursting_65536_37,#0x7f
      00052E                        423 00105$:
                                    424 ;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
      00052E BF 08 34         [24]  425 	cjne	r7,#0x08,00108$
                                    426 ;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
      000531 75 82 10         [24]  427 	mov	dpl,#0x10
      000534 C0 07            [24]  428 	push	ar7
      000536 12 28 BF         [24]  429 	lcall	_get_runtime_data
      000539 AE 82            [24]  430 	mov	r6,dpl
      00053B D0 07            [24]  431 	pop	ar7
      00053D BE 80 06         [24]  432 	cjne	r6,#0x80,00176$
      000540 7D 00            [12]  433 	mov	r5,#0x00
      000542 7E 00            [12]  434 	mov	r6,#0x00
      000544 80 04            [24]  435 	sjmp	00177$
      000546                        436 00176$:
      000546 7D 80            [12]  437 	mov	r5,#0x80
      000548 7E 00            [12]  438 	mov	r6,#0x00
      00054A                        439 00177$:
      00054A 8D 68            [24]  440 	mov	_set_runtime_data_PARM_3,r5
      00054C 75 67 00         [24]  441 	mov	_set_runtime_data_PARM_2,#0x00
      00054F 75 82 10         [24]  442 	mov	dpl,#0x10
      000552 C0 07            [24]  443 	push	ar7
      000554 12 29 53         [24]  444 	lcall	_set_runtime_data
                                    445 ;	../UI_Manager/ui.c:36: State = IDLE_STATE;
      000557 75 08 00         [24]  446 	mov	_State,#0x00
                                    447 ;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
      00055A 75 09 FF         [24]  448 	mov	_Changed,#0xff
                                    449 ;	../UI_Manager/ui.c:39: set_playing(RESET);
      00055D 75 6B 02         [24]  450 	mov	_Playing,#0x02
                                    451 ;	../UI_Manager/ui.c:41: tick_fogger();
      000560 12 2A 30         [24]  452 	lcall	_tick_fogger
      000563 D0 07            [24]  453 	pop	ar7
      000565                        454 00108$:
                                    455 ;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER_HOLD){
      000565 BF C8 10         [24]  456 	cjne	r7,#0xc8,00113$
                                    457 ;	../UI_Manager/ui.c:47: if(get_playing() == PLAY){
      000568 74 01            [12]  458 	mov	a,#0x01
      00056A B5 6B 05         [24]  459 	cjne	a,_Playing,00110$
                                    460 ;	../UI_Manager/ui.c:48: set_playing(RESET);
      00056D 75 6B 02         [24]  461 	mov	_Playing,#0x02
      000570 80 03            [24]  462 	sjmp	00111$
      000572                        463 00110$:
                                    464 ;	../UI_Manager/ui.c:50: set_playing(PLAY);
      000572 75 6B 01         [24]  465 	mov	_Playing,#0x01
      000575                        466 00111$:
                                    467 ;	../UI_Manager/ui.c:53: tick_fogger();
                                    468 ;	../UI_Manager/ui.c:55: return;
      000575 02 2A 30         [24]  469 	ljmp	_tick_fogger
      000578                        470 00113$:
                                    471 ;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
      000578 BF 09 02         [24]  472 	cjne	r7,#0x09,00431$
      00057B 80 03            [24]  473 	sjmp	00432$
      00057D                        474 00431$:
      00057D 02 06 16         [24]  475 	ljmp	00121$
      000580                        476 00432$:
                                    477 ;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
      000580 75 82 0F         [24]  478 	mov	dpl,#0x0f
      000583 12 28 BF         [24]  479 	lcall	_get_runtime_data
      000586 E5 82            [12]  480 	mov	a,dpl
      000588 F4               [12]  481 	cpl	a
      000589 F5 68            [12]  482 	mov	_set_runtime_data_PARM_3,a
      00058B 75 67 00         [24]  483 	mov	_set_runtime_data_PARM_2,#0x00
      00058E 75 82 0F         [24]  484 	mov	dpl,#0x0f
      000591 12 29 53         [24]  485 	lcall	_set_runtime_data
                                    486 ;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
      000594 90 80 00         [24]  487 	mov	dptr,#0x8000
      000597 12 1B 27         [24]  488 	lcall	_exe_command
                                    489 ;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
      00059A 75 82 0F         [24]  490 	mov	dpl,#0x0f
      00059D 12 28 BF         [24]  491 	lcall	_get_runtime_data
      0005A0 E5 82            [12]  492 	mov	a,dpl
      0005A2 60 17            [24]  493 	jz	00115$
                                    494 ;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
      0005A4 75 21 0F         [24]  495 	mov	_write_string_PARM_2,#0x0f
      0005A7 75 22 00         [24]  496 	mov	_write_string_PARM_3,#0x00
      0005AA 75 23 00         [24]  497 	mov	_write_string_PARM_4,#0x00
      0005AD 75 24 00         [24]  498 	mov	_write_string_PARM_5,#0x00
      0005B0 90 2F 9C         [24]  499 	mov	dptr,#___str_0
      0005B3 75 F0 80         [24]  500 	mov	b,#0x80
      0005B6 12 18 D4         [24]  501 	lcall	_write_string
      0005B9 80 15            [24]  502 	sjmp	00116$
      0005BB                        503 00115$:
                                    504 ;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
      0005BB 75 21 0F         [24]  505 	mov	_write_string_PARM_2,#0x0f
      0005BE 75 22 00         [24]  506 	mov	_write_string_PARM_3,#0x00
      0005C1 75 23 00         [24]  507 	mov	_write_string_PARM_4,#0x00
      0005C4 75 24 00         [24]  508 	mov	_write_string_PARM_5,#0x00
      0005C7 90 2F AC         [24]  509 	mov	dptr,#___str_1
      0005CA 75 F0 80         [24]  510 	mov	b,#0x80
      0005CD 12 18 D4         [24]  511 	lcall	_write_string
      0005D0                        512 00116$:
                                    513 ;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
      0005D0 75 21 0F         [24]  514 	mov	_write_string_PARM_2,#0x0f
      0005D3 75 22 00         [24]  515 	mov	_write_string_PARM_3,#0x00
      0005D6 75 23 01         [24]  516 	mov	_write_string_PARM_4,#0x01
      0005D9 75 24 00         [24]  517 	mov	_write_string_PARM_5,#0x00
      0005DC 90 2F BB         [24]  518 	mov	dptr,#___str_2
      0005DF 75 F0 80         [24]  519 	mov	b,#0x80
      0005E2 12 18 D4         [24]  520 	lcall	_write_string
                                    521 ;	../UI_Manager/ui.c:73: while(delay--){ ;; }
      0005E5 75 0C B5         [24]  522 	mov	_tick_ui_delay_65536_37,#0xb5
      0005E8 75 0D D8         [24]  523 	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
      0005EB 75 0E 07         [24]  524 	mov	(_tick_ui_delay_65536_37 + 2),#0x07
      0005EE 75 0F 00         [24]  525 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      0005F1                        526 00117$:
      0005F1 A8 0C            [24]  527 	mov	r0,_tick_ui_delay_65536_37
      0005F3 A9 0D            [24]  528 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      0005F5 AA 0E            [24]  529 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      0005F7 AE 0F            [24]  530 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      0005F9 15 0C            [12]  531 	dec	_tick_ui_delay_65536_37
      0005FB 74 FF            [12]  532 	mov	a,#0xff
      0005FD B5 0C 0C         [24]  533 	cjne	a,_tick_ui_delay_65536_37,00434$
      000600 15 0D            [12]  534 	dec	(_tick_ui_delay_65536_37 + 1)
      000602 B5 0D 07         [24]  535 	cjne	a,(_tick_ui_delay_65536_37 + 1),00434$
      000605 15 0E            [12]  536 	dec	(_tick_ui_delay_65536_37 + 2)
      000607 B5 0E 02         [24]  537 	cjne	a,(_tick_ui_delay_65536_37 + 2),00434$
      00060A 15 0F            [12]  538 	dec	(_tick_ui_delay_65536_37 + 3)
      00060C                        539 00434$:
      00060C E8               [12]  540 	mov	a,r0
      00060D 49               [12]  541 	orl	a,r1
      00060E 4A               [12]  542 	orl	a,r2
      00060F 4E               [12]  543 	orl	a,r6
      000610 70 DF            [24]  544 	jnz	00117$
                                    545 ;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
      000612 75 09 FF         [24]  546 	mov	_Changed,#0xff
                                    547 ;	../UI_Manager/ui.c:77: return;
      000615 22               [24]  548 	ret
      000616                        549 00121$:
                                    550 ;	../UI_Manager/ui.c:81: if(action == BUTTON_BURST_UP){
      000616 BF 07 02         [24]  551 	cjne	r7,#0x07,00436$
      000619 80 03            [24]  552 	sjmp	00437$
      00061B                        553 00436$:
      00061B 02 06 A7         [24]  554 	ljmp	00129$
      00061E                        555 00437$:
                                    556 ;	../UI_Manager/ui.c:83: exe_command(CLEAR_DISPLAY);
      00061E 90 80 00         [24]  557 	mov	dptr,#0x8000
      000621 12 1B 27         [24]  558 	lcall	_exe_command
                                    559 ;	../UI_Manager/ui.c:84: if(get_heater_enabled()){
      000624 E5 6C            [12]  560 	mov	a,_Heat_Flag
      000626 20 E4 1D         [24]  561 	jb	acc.4,00123$
                                    562 ;	../UI_Manager/ui.c:85: write_string("Heater Off", 15, 2, LINE_0, NOT_SELECTED);
      000629 75 21 0F         [24]  563 	mov	_write_string_PARM_2,#0x0f
      00062C 75 22 02         [24]  564 	mov	_write_string_PARM_3,#0x02
      00062F 75 23 00         [24]  565 	mov	_write_string_PARM_4,#0x00
      000632 75 24 00         [24]  566 	mov	_write_string_PARM_5,#0x00
      000635 90 2F CB         [24]  567 	mov	dptr,#___str_3
      000638 75 F0 80         [24]  568 	mov	b,#0x80
      00063B 12 18 D4         [24]  569 	lcall	_write_string
                                    570 ;	../UI_Manager/ui.c:86: power_heater(HEATER_DISABLE);
      00063E 75 82 01         [24]  571 	mov	dpl,#0x01
      000641 12 2E 1F         [24]  572 	lcall	_power_heater
      000644 80 1B            [24]  573 	sjmp	00124$
      000646                        574 00123$:
                                    575 ;	../UI_Manager/ui.c:88: write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
      000646 75 21 0F         [24]  576 	mov	_write_string_PARM_2,#0x0f
      000649 75 22 02         [24]  577 	mov	_write_string_PARM_3,#0x02
      00064C 75 23 00         [24]  578 	mov	_write_string_PARM_4,#0x00
      00064F 75 24 00         [24]  579 	mov	_write_string_PARM_5,#0x00
      000652 90 2F D6         [24]  580 	mov	dptr,#___str_4
      000655 75 F0 80         [24]  581 	mov	b,#0x80
      000658 12 18 D4         [24]  582 	lcall	_write_string
                                    583 ;	../UI_Manager/ui.c:89: power_heater(HEATER_ENABLE);
      00065B 75 82 00         [24]  584 	mov	dpl,#0x00
      00065E 12 2E 1F         [24]  585 	lcall	_power_heater
      000661                        586 00124$:
                                    587 ;	../UI_Manager/ui.c:92: write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
      000661 75 21 10         [24]  588 	mov	_write_string_PARM_2,#0x10
      000664 75 22 00         [24]  589 	mov	_write_string_PARM_3,#0x00
      000667 75 23 01         [24]  590 	mov	_write_string_PARM_4,#0x01
      00066A 75 24 00         [24]  591 	mov	_write_string_PARM_5,#0x00
      00066D 90 2F E0         [24]  592 	mov	dptr,#___str_5
      000670 75 F0 80         [24]  593 	mov	b,#0x80
      000673 12 18 D4         [24]  594 	lcall	_write_string
                                    595 ;	../UI_Manager/ui.c:96: while(delay--){ ;; }
      000676 75 0C B5         [24]  596 	mov	_tick_ui_delay_65536_37,#0xb5
      000679 75 0D D8         [24]  597 	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
      00067C 75 0E 07         [24]  598 	mov	(_tick_ui_delay_65536_37 + 2),#0x07
      00067F 75 0F 00         [24]  599 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      000682                        600 00125$:
      000682 A8 0C            [24]  601 	mov	r0,_tick_ui_delay_65536_37
      000684 A9 0D            [24]  602 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      000686 AA 0E            [24]  603 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      000688 AE 0F            [24]  604 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      00068A 15 0C            [12]  605 	dec	_tick_ui_delay_65536_37
      00068C 74 FF            [12]  606 	mov	a,#0xff
      00068E B5 0C 0C         [24]  607 	cjne	a,_tick_ui_delay_65536_37,00439$
      000691 15 0D            [12]  608 	dec	(_tick_ui_delay_65536_37 + 1)
      000693 B5 0D 07         [24]  609 	cjne	a,(_tick_ui_delay_65536_37 + 1),00439$
      000696 15 0E            [12]  610 	dec	(_tick_ui_delay_65536_37 + 2)
      000698 B5 0E 02         [24]  611 	cjne	a,(_tick_ui_delay_65536_37 + 2),00439$
      00069B 15 0F            [12]  612 	dec	(_tick_ui_delay_65536_37 + 3)
      00069D                        613 00439$:
      00069D E8               [12]  614 	mov	a,r0
      00069E 49               [12]  615 	orl	a,r1
      00069F 4A               [12]  616 	orl	a,r2
      0006A0 4E               [12]  617 	orl	a,r6
      0006A1 70 DF            [24]  618 	jnz	00125$
                                    619 ;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
      0006A3 75 09 FF         [24]  620 	mov	_Changed,#0xff
                                    621 ;	../UI_Manager/ui.c:100: return;
      0006A6 22               [24]  622 	ret
      0006A7                        623 00129$:
                                    624 ;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_BURST){
      0006A7 BF 06 02         [24]  625 	cjne	r7,#0x06,00441$
      0006AA 80 03            [24]  626 	sjmp	00442$
      0006AC                        627 00441$:
      0006AC 02 07 57         [24]  628 	ljmp	00134$
      0006AF                        629 00442$:
                                    630 ;	../UI_Manager/ui.c:106: ss = bursting & ~BURSTING;
      0006AF 74 7F            [12]  631 	mov	a,#0x7f
      0006B1 55 0B            [12]  632 	anl	a,_tick_ui_bursting_65536_37
      0006B3 FE               [12]  633 	mov	r6,a
                                    634 ;	../UI_Manager/ui.c:108: exe_command(CLEAR_DISPLAY);
      0006B4 90 80 00         [24]  635 	mov	dptr,#0x8000
      0006B7 C0 06            [24]  636 	push	ar6
      0006B9 12 1B 27         [24]  637 	lcall	_exe_command
      0006BC D0 06            [24]  638 	pop	ar6
                                    639 ;	../UI_Manager/ui.c:110: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
      0006BE 8E 04            [24]  640 	mov	ar4,r6
      0006C0 7D 00            [12]  641 	mov	r5,#0x00
      0006C2 75 74 03         [24]  642 	mov	__modsint_PARM_2,#0x03
                                    643 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0006C5 8D 75            [24]  644 	mov	(__modsint_PARM_2 + 1),r5
      0006C7 8C 82            [24]  645 	mov	dpl,r4
      0006C9 8D 83            [24]  646 	mov	dph,r5
      0006CB C0 06            [24]  647 	push	ar6
      0006CD 12 2F 62         [24]  648 	lcall	__modsint
      0006D0 E5 82            [12]  649 	mov	a,dpl
      0006D2 FC               [12]  650 	mov	r4,a
      0006D3 2C               [12]  651 	add	a,r4
      0006D4 FC               [12]  652 	mov	r4,a
      0006D5 24 28            [12]  653 	add	a,#0x28
      0006D7 F5 82            [12]  654 	mov	dpl,a
      0006D9 C0 04            [24]  655 	push	ar4
      0006DB 12 14 76         [24]  656 	lcall	_getString
      0006DE AA 82            [24]  657 	mov	r2,dpl
      0006E0 AB 83            [24]  658 	mov	r3,dph
      0006E2 AD F0            [24]  659 	mov	r5,b
      0006E4 75 21 10         [24]  660 	mov	_write_string_PARM_2,#0x10
      0006E7 75 22 00         [24]  661 	mov	_write_string_PARM_3,#0x00
      0006EA 75 23 00         [24]  662 	mov	_write_string_PARM_4,#0x00
      0006ED 75 24 00         [24]  663 	mov	_write_string_PARM_5,#0x00
      0006F0 8A 82            [24]  664 	mov	dpl,r2
      0006F2 8B 83            [24]  665 	mov	dph,r3
      0006F4 8D F0            [24]  666 	mov	b,r5
      0006F6 12 18 D4         [24]  667 	lcall	_write_string
      0006F9 D0 04            [24]  668 	pop	ar4
                                    669 ;	../UI_Manager/ui.c:111: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0006FB 74 29            [12]  670 	mov	a,#0x29
      0006FD 2C               [12]  671 	add	a,r4
      0006FE F5 82            [12]  672 	mov	dpl,a
      000700 12 14 76         [24]  673 	lcall	_getString
      000703 AB 82            [24]  674 	mov	r3,dpl
      000705 AC 83            [24]  675 	mov	r4,dph
      000707 AD F0            [24]  676 	mov	r5,b
      000709 75 21 10         [24]  677 	mov	_write_string_PARM_2,#0x10
      00070C 75 22 00         [24]  678 	mov	_write_string_PARM_3,#0x00
      00070F 75 23 01         [24]  679 	mov	_write_string_PARM_4,#0x01
      000712 75 24 00         [24]  680 	mov	_write_string_PARM_5,#0x00
      000715 8B 82            [24]  681 	mov	dpl,r3
      000717 8C 83            [24]  682 	mov	dph,r4
      000719 8D F0            [24]  683 	mov	b,r5
      00071B 12 18 D4         [24]  684 	lcall	_write_string
      00071E D0 06            [24]  685 	pop	ar6
                                    686 ;	../UI_Manager/ui.c:113: ss++;
      000720 EE               [12]  687 	mov	a,r6
      000721 04               [12]  688 	inc	a
                                    689 ;	../UI_Manager/ui.c:115: bursting |= (ss & ~BURSTING);
      000722 54 7F            [12]  690 	anl	a,#0x7f
      000724 42 0B            [12]  691 	orl	_tick_ui_bursting_65536_37,a
                                    692 ;	../UI_Manager/ui.c:119: while(delay--){ ;; }
      000726 75 0C DD         [24]  693 	mov	_tick_ui_delay_65536_37,#0xdd
      000729 75 0D 8A         [24]  694 	mov	(_tick_ui_delay_65536_37 + 1),#0x8a
      00072C 75 0E 14         [24]  695 	mov	(_tick_ui_delay_65536_37 + 2),#0x14
      00072F 75 0F 00         [24]  696 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      000732                        697 00130$:
      000732 A8 0C            [24]  698 	mov	r0,_tick_ui_delay_65536_37
      000734 A9 0D            [24]  699 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      000736 AA 0E            [24]  700 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      000738 AE 0F            [24]  701 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      00073A 15 0C            [12]  702 	dec	_tick_ui_delay_65536_37
      00073C 74 FF            [12]  703 	mov	a,#0xff
      00073E B5 0C 0C         [24]  704 	cjne	a,_tick_ui_delay_65536_37,00443$
      000741 15 0D            [12]  705 	dec	(_tick_ui_delay_65536_37 + 1)
      000743 B5 0D 07         [24]  706 	cjne	a,(_tick_ui_delay_65536_37 + 1),00443$
      000746 15 0E            [12]  707 	dec	(_tick_ui_delay_65536_37 + 2)
      000748 B5 0E 02         [24]  708 	cjne	a,(_tick_ui_delay_65536_37 + 2),00443$
      00074B 15 0F            [12]  709 	dec	(_tick_ui_delay_65536_37 + 3)
      00074D                        710 00443$:
      00074D E8               [12]  711 	mov	a,r0
      00074E 49               [12]  712 	orl	a,r1
      00074F 4A               [12]  713 	orl	a,r2
      000750 4E               [12]  714 	orl	a,r6
      000751 70 DF            [24]  715 	jnz	00130$
                                    716 ;	../UI_Manager/ui.c:121: Changed = CHANGE_SCREEN_X;
      000753 75 09 FF         [24]  717 	mov	_Changed,#0xff
                                    718 ;	../UI_Manager/ui.c:123: return;
      000756 22               [24]  719 	ret
      000757                        720 00134$:
                                    721 ;	../UI_Manager/ui.c:127: if(action == BUTTON_FUN_TIME){
      000757 BF 04 06         [24]  722 	cjne	r7,#0x04,00136$
                                    723 ;	../UI_Manager/ui.c:128: State = IDLE_STATE;
      00075A 75 08 00         [24]  724 	mov	_State,#0x00
                                    725 ;	../UI_Manager/ui.c:129: Changed = CHANGE_SCREEN_X;
      00075D 75 09 FF         [24]  726 	mov	_Changed,#0xff
      000760                        727 00136$:
                                    728 ;	../UI_Manager/ui.c:134: if(Changed || 
      000760 E5 09            [12]  729 	mov	a,_Changed
      000762 70 2D            [24]  730 	jnz	00161$
                                    731 ;	../UI_Manager/ui.c:135: action == BUTTON_UP ||
      000764 BF 03 02         [24]  732 	cjne	r7,#0x03,00448$
      000767 80 28            [24]  733 	sjmp	00161$
      000769                        734 00448$:
                                    735 ;	../UI_Manager/ui.c:136: action == BUTTON_UP_HOLD||
      000769 BF 1E 02         [24]  736 	cjne	r7,#0x1e,00449$
      00076C 80 23            [24]  737 	sjmp	00161$
      00076E                        738 00449$:
                                    739 ;	../UI_Manager/ui.c:137: action == BUTTON_UP_BURST ||
      00076E BF 1F 02         [24]  740 	cjne	r7,#0x1f,00450$
      000771 80 1E            [24]  741 	sjmp	00161$
      000773                        742 00450$:
                                    743 ;	../UI_Manager/ui.c:138: action == BUTTON_DOWN ||
      000773 BF 0B 02         [24]  744 	cjne	r7,#0x0b,00451$
      000776 80 19            [24]  745 	sjmp	00161$
      000778                        746 00451$:
                                    747 ;	../UI_Manager/ui.c:139: action == BUTTON_DOWN_HOLD ||
      000778 BF 6E 02         [24]  748 	cjne	r7,#0x6e,00452$
      00077B 80 14            [24]  749 	sjmp	00161$
      00077D                        750 00452$:
                                    751 ;	../UI_Manager/ui.c:140: action == BUTTON_DOWN_BURST ||
      00077D BF 6F 02         [24]  752 	cjne	r7,#0x6f,00453$
      000780 80 0F            [24]  753 	sjmp	00161$
      000782                        754 00453$:
                                    755 ;	../UI_Manager/ui.c:141: action == BUTTON_TIMER ||
      000782 BF 01 02         [24]  756 	cjne	r7,#0x01,00454$
      000785 80 0A            [24]  757 	sjmp	00161$
      000787                        758 00454$:
                                    759 ;	../UI_Manager/ui.c:142: action == BUTTON_FUNCTION ||
      000787 BF 02 02         [24]  760 	cjne	r7,#0x02,00455$
      00078A 80 05            [24]  761 	sjmp	00161$
      00078C                        762 00455$:
                                    763 ;	../UI_Manager/ui.c:143: State == IDLE_STATE){
      00078C E5 08            [12]  764 	mov	a,_State
      00078E 60 01            [24]  765 	jz	00456$
      000790 22               [24]  766 	ret
      000791                        767 00456$:
      000791                        768 00161$:
                                    769 ;	../UI_Manager/ui.c:145: switch (State)
      000791 AE 08            [24]  770 	mov	r6,_State
      000793 BE 01 03         [24]  771 	cjne	r6,#0x01,00457$
      000796 02 08 25         [24]  772 	ljmp	00138$
      000799                        773 00457$:
      000799 BE 02 03         [24]  774 	cjne	r6,#0x02,00458$
      00079C 02 08 2F         [24]  775 	ljmp	00140$
      00079F                        776 00458$:
      00079F BE 03 03         [24]  777 	cjne	r6,#0x03,00459$
      0007A2 02 08 2A         [24]  778 	ljmp	00139$
      0007A5                        779 00459$:
      0007A5 BE 04 03         [24]  780 	cjne	r6,#0x04,00460$
      0007A8 02 08 34         [24]  781 	ljmp	00141$
      0007AB                        782 00460$:
      0007AB BE 05 03         [24]  783 	cjne	r6,#0x05,00461$
      0007AE 02 08 39         [24]  784 	ljmp	00142$
      0007B1                        785 00461$:
      0007B1 BE 06 03         [24]  786 	cjne	r6,#0x06,00462$
      0007B4 02 08 3E         [24]  787 	ljmp	00146$
      0007B7                        788 00462$:
      0007B7 BE 07 03         [24]  789 	cjne	r6,#0x07,00463$
      0007BA 02 08 3E         [24]  790 	ljmp	00146$
      0007BD                        791 00463$:
      0007BD BE 08 03         [24]  792 	cjne	r6,#0x08,00464$
      0007C0 02 08 3E         [24]  793 	ljmp	00146$
      0007C3                        794 00464$:
      0007C3 BE 09 02         [24]  795 	cjne	r6,#0x09,00465$
      0007C6 80 76            [24]  796 	sjmp	00146$
      0007C8                        797 00465$:
      0007C8 BE 0A 02         [24]  798 	cjne	r6,#0x0a,00466$
      0007CB 80 76            [24]  799 	sjmp	00149$
      0007CD                        800 00466$:
      0007CD BE 0B 02         [24]  801 	cjne	r6,#0x0b,00467$
      0007D0 80 71            [24]  802 	sjmp	00149$
      0007D2                        803 00467$:
      0007D2 BE 0C 02         [24]  804 	cjne	r6,#0x0c,00468$
      0007D5 80 6C            [24]  805 	sjmp	00149$
      0007D7                        806 00468$:
      0007D7 BE 0D 02         [24]  807 	cjne	r6,#0x0d,00469$
      0007DA 80 6C            [24]  808 	sjmp	00151$
      0007DC                        809 00469$:
      0007DC BE 0E 02         [24]  810 	cjne	r6,#0x0e,00470$
      0007DF 80 67            [24]  811 	sjmp	00151$
      0007E1                        812 00470$:
      0007E1 BE 14 02         [24]  813 	cjne	r6,#0x14,00471$
      0007E4 80 67            [24]  814 	sjmp	00152$
      0007E6                        815 00471$:
      0007E6 BE 15 02         [24]  816 	cjne	r6,#0x15,00472$
      0007E9 80 67            [24]  817 	sjmp	00153$
      0007EB                        818 00472$:
      0007EB BE 45 69         [24]  819 	cjne	r6,#0x45,00154$
                                    820 ;	../UI_Manager/ui.c:150: exe_command(CLEAR_DISPLAY);
      0007EE 90 80 00         [24]  821 	mov	dptr,#0x8000
      0007F1 12 1B 27         [24]  822 	lcall	_exe_command
                                    823 ;	../UI_Manager/ui.c:151: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0007F4 75 21 10         [24]  824 	mov	_write_string_PARM_2,#0x10
      0007F7 75 22 01         [24]  825 	mov	_write_string_PARM_3,#0x01
      0007FA 75 23 00         [24]  826 	mov	_write_string_PARM_4,#0x00
      0007FD 75 24 00         [24]  827 	mov	_write_string_PARM_5,#0x00
      000800 90 2F F1         [24]  828 	mov	dptr,#___str_6
      000803 75 F0 80         [24]  829 	mov	b,#0x80
      000806 12 18 D4         [24]  830 	lcall	_write_string
                                    831 ;	../UI_Manager/ui.c:152: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000809 75 21 10         [24]  832 	mov	_write_string_PARM_2,#0x10
      00080C 75 22 00         [24]  833 	mov	_write_string_PARM_3,#0x00
      00080F 75 23 01         [24]  834 	mov	_write_string_PARM_4,#0x01
      000812 75 24 00         [24]  835 	mov	_write_string_PARM_5,#0x00
      000815 90 30 00         [24]  836 	mov	dptr,#___str_7
      000818 75 F0 80         [24]  837 	mov	b,#0x80
      00081B 12 18 D4         [24]  838 	lcall	_write_string
                                    839 ;	../UI_Manager/ui.c:154: Changed = CHANGE_SCREEN_X;
      00081E 75 09 FF         [24]  840 	mov	_Changed,#0xff
                                    841 ;	../UI_Manager/ui.c:155: State = IDLE_STATE;
      000821 75 08 00         [24]  842 	mov	_State,#0x00
                                    843 ;	../UI_Manager/ui.c:157: break;
                                    844 ;	../UI_Manager/ui.c:158: case MANUAL_FOG_POWER_STATE:
      000824 22               [24]  845 	ret
      000825                        846 00138$:
                                    847 ;	../UI_Manager/ui.c:159: fogLevelPage(action);
      000825 8F 82            [24]  848 	mov	dpl,r7
                                    849 ;	../UI_Manager/ui.c:160: break;
                                    850 ;	../UI_Manager/ui.c:161: case MANUAL_FOG_INTERVAL_STATE:
      000827 02 0B 5D         [24]  851 	ljmp	_fogLevelPage
      00082A                        852 00139$:
                                    853 ;	../UI_Manager/ui.c:162: fogIntervalPage(action);
      00082A 8F 82            [24]  854 	mov	dpl,r7
                                    855 ;	../UI_Manager/ui.c:163: break;
                                    856 ;	../UI_Manager/ui.c:164: case MANUAL_FOG_DURATION_STATE:
      00082C 02 0C 97         [24]  857 	ljmp	_fogIntervalPage
      00082F                        858 00140$:
                                    859 ;	../UI_Manager/ui.c:165: fogDurationPage(action);
      00082F 8F 82            [24]  860 	mov	dpl,r7
                                    861 ;	../UI_Manager/ui.c:166: break;
                                    862 ;	../UI_Manager/ui.c:167: case MANUAL_COLOR_MACRO_STATE:
      000831 02 0D 46         [24]  863 	ljmp	_fogDurationPage
      000834                        864 00141$:
                                    865 ;	../UI_Manager/ui.c:168: macroPage(action);
      000834 8F 82            [24]  866 	mov	dpl,r7
                                    867 ;	../UI_Manager/ui.c:169: break;
                                    868 ;	../UI_Manager/ui.c:170: case MANUAL_MACRO_SPEED_STATE:
      000836 02 0D F5         [24]  869 	ljmp	_macroPage
      000839                        870 00142$:
                                    871 ;	../UI_Manager/ui.c:171: macroSpeedPage(action);
      000839 8F 82            [24]  872 	mov	dpl,r7
                                    873 ;	../UI_Manager/ui.c:172: break;
                                    874 ;	../UI_Manager/ui.c:176: case MANUAL_STROBE_STATE:
      00083B 02 0E A1         [24]  875 	ljmp	_macroSpeedPage
      00083E                        876 00146$:
                                    877 ;	../UI_Manager/ui.c:177: colorPage(action);
      00083E 8F 82            [24]  878 	mov	dpl,r7
                                    879 ;	../UI_Manager/ui.c:178: break;
                                    880 ;	../UI_Manager/ui.c:181: case MANUAL_REMOTE_ACTION_6_STATE:
      000840 02 0F 6E         [24]  881 	ljmp	_colorPage
      000843                        882 00149$:
                                    883 ;	../UI_Manager/ui.c:182: remotePage(action);
      000843 8F 82            [24]  884 	mov	dpl,r7
                                    885 ;	../UI_Manager/ui.c:183: break;
                                    886 ;	../UI_Manager/ui.c:185: case MANUAL_SAVE_SETTINGS_STATE:
      000845 02 10 81         [24]  887 	ljmp	_remotePage
      000848                        888 00151$:
                                    889 ;	../UI_Manager/ui.c:186: saveLoadPage(action);
      000848 8F 82            [24]  890 	mov	dpl,r7
                                    891 ;	../UI_Manager/ui.c:187: break;
                                    892 ;	../UI_Manager/ui.c:188: case DMX_ADDRESS_STATE:
      00084A 02 11 A0         [24]  893 	ljmp	_saveLoadPage
      00084D                        894 00152$:
                                    895 ;	../UI_Manager/ui.c:189: dmxAddressPage(action);
      00084D 8F 82            [24]  896 	mov	dpl,r7
                                    897 ;	../UI_Manager/ui.c:190: break;
                                    898 ;	../UI_Manager/ui.c:191: case DMX_CHANNEL_MODE_STATE:
      00084F 02 12 BC         [24]  899 	ljmp	_dmxAddressPage
      000852                        900 00153$:
                                    901 ;	../UI_Manager/ui.c:192: dmxChannelPage(action);
      000852 8F 82            [24]  902 	mov	dpl,r7
                                    903 ;	../UI_Manager/ui.c:193: break;
                                    904 ;	../UI_Manager/ui.c:194: default: //IDLE state
      000854 02 13 40         [24]  905 	ljmp	_dmxChannelPage
      000857                        906 00154$:
                                    907 ;	../UI_Manager/ui.c:195: idlePage();
      000857 C0 07            [24]  908 	push	ar7
      000859 12 08 77         [24]  909 	lcall	_idlePage
      00085C D0 07            [24]  910 	pop	ar7
                                    911 ;	../UI_Manager/ui.c:197: if(action == BUTTON_FUNCTION){
      00085E BF 02 09         [24]  912 	cjne	r7,#0x02,00158$
                                    913 ;	../UI_Manager/ui.c:198: set_ui_state(INC, NULL);
      000861 75 17 00         [24]  914 	mov	_set_ui_state_PARM_2,#0x00
      000864 75 82 01         [24]  915 	mov	dpl,#0x01
      000867 02 13 E2         [24]  916 	ljmp	_set_ui_state
      00086A                        917 00158$:
                                    918 ;	../UI_Manager/ui.c:199: } else if(action == BUTTON_TIMER){
      00086A BF 01 09         [24]  919 	cjne	r7,#0x01,00172$
                                    920 ;	../UI_Manager/ui.c:200: set_ui_state(DEC, NULL);
      00086D 75 17 00         [24]  921 	mov	_set_ui_state_PARM_2,#0x00
      000870 75 82 02         [24]  922 	mov	dpl,#0x02
                                    923 ;	../UI_Manager/ui.c:203: }
                                    924 ;	../UI_Manager/ui.c:206: }
      000873 02 13 E2         [24]  925 	ljmp	_set_ui_state
      000876                        926 00172$:
      000876 22               [24]  927 	ret
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'idlePage'
                                    930 ;------------------------------------------------------------
                                    931 ;timer                     Allocated with name '_idlePage_timer_65536_59'
                                    932 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_59'
                                    933 ;empty                     Allocated with name '_idlePage_empty_65536_59'
                                    934 ;tock                      Allocated with name '_idlePage_tock_65536_59'
                                    935 ;iconChange                Allocated with name '_idlePage_iconChange_65536_59'
                                    936 ;playing                   Allocated with name '_idlePage_playing_65536_59'
                                    937 ;temp                      Allocated to registers r7 
                                    938 ;------------------------------------------------------------
                                    939 ;	../UI_Manager/ui.c:208: void idlePage(){
                                    940 ;	-----------------------------------------
                                    941 ;	 function idlePage
                                    942 ;	-----------------------------------------
      000877                        943 _idlePage:
                                    944 ;	../UI_Manager/ui.c:217: if(Changed){
      000877 E5 09            [12]  945 	mov	a,_Changed
      000879 70 03            [24]  946 	jnz	00329$
      00087B 02 09 5E         [24]  947 	ljmp	00116$
      00087E                        948 00329$:
                                    949 ;	../UI_Manager/ui.c:218: exe_command(CLEAR_DISPLAY);
      00087E 90 80 00         [24]  950 	mov	dptr,#0x8000
      000881 12 1B 27         [24]  951 	lcall	_exe_command
                                    952 ;	../UI_Manager/ui.c:219: Changed = 0x00;
      000884 75 09 00         [24]  953 	mov	_Changed,#0x00
                                    954 ;	../UI_Manager/ui.c:220: changed = 0xFF;
      000887 75 0A FF         [24]  955 	mov	_changed,#0xff
                                    956 ;	../UI_Manager/ui.c:221: timer = 0xFF;
      00088A 75 10 FF         [24]  957 	mov	_idlePage_timer_65536_59,#0xff
                                    958 ;	../UI_Manager/ui.c:222: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
      00088D 75 11 55         [24]  959 	mov	_idlePage_intervalOrDuration_65536_59,#0x55
                                    960 ;	../UI_Manager/ui.c:225: if(get_fog_fluid_level() == TANK_EMPTY && get_heated()){
      000890 E5 6D            [12]  961 	mov	a,_Fluid_Level
      000892 70 33            [24]  962 	jnz	00102$
      000894 E5 6C            [12]  963 	mov	a,_Heat_Flag
      000896 30 E7 2E         [24]  964 	jnb	acc.7,00102$
                                    965 ;	../UI_Manager/ui.c:227: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000899 75 21 10         [24]  966 	mov	_write_string_PARM_2,#0x10
      00089C 75 22 01         [24]  967 	mov	_write_string_PARM_3,#0x01
      00089F 75 23 00         [24]  968 	mov	_write_string_PARM_4,#0x00
      0008A2 75 24 00         [24]  969 	mov	_write_string_PARM_5,#0x00
      0008A5 90 30 10         [24]  970 	mov	dptr,#___str_8
      0008A8 75 F0 80         [24]  971 	mov	b,#0x80
      0008AB 12 18 D4         [24]  972 	lcall	_write_string
                                    973 ;	../UI_Manager/ui.c:228: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      0008AE 75 21 10         [24]  974 	mov	_write_string_PARM_2,#0x10
      0008B1 75 22 00         [24]  975 	mov	_write_string_PARM_3,#0x00
      0008B4 75 23 01         [24]  976 	mov	_write_string_PARM_4,#0x01
      0008B7 75 24 00         [24]  977 	mov	_write_string_PARM_5,#0x00
      0008BA 90 30 1F         [24]  978 	mov	dptr,#___str_9
      0008BD 75 F0 80         [24]  979 	mov	b,#0x80
      0008C0 12 18 D4         [24]  980 	lcall	_write_string
                                    981 ;	../UI_Manager/ui.c:230: empty = 0xFF;
      0008C3 75 12 FF         [24]  982 	mov	_idlePage_empty_65536_59,#0xff
                                    983 ;	../UI_Manager/ui.c:232: return;
      0008C6 22               [24]  984 	ret
      0008C7                        985 00102$:
                                    986 ;	../UI_Manager/ui.c:235: if(empty){
      0008C7 E5 12            [12]  987 	mov	a,_idlePage_empty_65536_59
      0008C9 60 0C            [24]  988 	jz	00107$
                                    989 ;	../UI_Manager/ui.c:236: if(get_fog_fluid_level() == TANK_FULL){
      0008CB 74 01            [12]  990 	mov	a,#0x01
      0008CD B5 6D 06         [24]  991 	cjne	a,_Fluid_Level,00105$
                                    992 ;	../UI_Manager/ui.c:237: empty = 0x00;
      0008D0 75 12 00         [24]  993 	mov	_idlePage_empty_65536_59,#0x00
                                    994 ;	../UI_Manager/ui.c:238: Changed = CHANGE_SCREEN_X;
      0008D3 75 09 FF         [24]  995 	mov	_Changed,#0xff
      0008D6                        996 00105$:
                                    997 ;	../UI_Manager/ui.c:241: return;
      0008D6 22               [24]  998 	ret
      0008D7                        999 00107$:
                                   1000 ;	../UI_Manager/ui.c:244: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
      0008D7 75 82 10         [24] 1001 	mov	dpl,#0x10
      0008DA 12 28 BF         [24] 1002 	lcall	_get_runtime_data
      0008DD E5 82            [12] 1003 	mov	a,dpl
      0008DF 60 17            [24] 1004 	jz	00113$
                                   1005 ;	../UI_Manager/ui.c:245: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      0008E1 75 21 10         [24] 1006 	mov	_write_string_PARM_2,#0x10
      0008E4 75 22 01         [24] 1007 	mov	_write_string_PARM_3,#0x01
      0008E7 75 23 00         [24] 1008 	mov	_write_string_PARM_4,#0x00
      0008EA 75 24 00         [24] 1009 	mov	_write_string_PARM_5,#0x00
      0008ED 90 30 2F         [24] 1010 	mov	dptr,#___str_10
      0008F0 75 F0 80         [24] 1011 	mov	b,#0x80
      0008F3 12 18 D4         [24] 1012 	lcall	_write_string
      0008F6 80 66            [24] 1013 	sjmp	00116$
      0008F8                       1014 00113$:
                                   1015 ;	../UI_Manager/ui.c:248: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      0008F8 12 2A 1F         [24] 1016 	lcall	_get_dmx_address
      0008FB 75 25 04         [24] 1017 	mov	_write_number_PARM_2,#0x04
      0008FE 75 26 01         [24] 1018 	mov	_write_number_PARM_3,#0x01
      000901 75 27 00         [24] 1019 	mov	_write_number_PARM_4,#0x00
      000904 12 19 98         [24] 1020 	lcall	_write_number
                                   1021 ;	../UI_Manager/ui.c:249: switch (get_runtime_data(MODE_INDEX))
      000907 75 82 0E         [24] 1022 	mov	dpl,#0x0e
      00090A 12 28 BF         [24] 1023 	lcall	_get_runtime_data
      00090D AF 82            [24] 1024 	mov	r7,dpl
      00090F BF 01 02         [24] 1025 	cjne	r7,#0x01,00336$
      000912 80 05            [24] 1026 	sjmp	00108$
      000914                       1027 00336$:
                                   1028 ;	../UI_Manager/ui.c:251: case OPTION_DMX_MODE_3:
      000914 BF 02 0A         [24] 1029 	cjne	r7,#0x02,00110$
      000917 80 04            [24] 1030 	sjmp	00109$
      000919                       1031 00108$:
                                   1032 ;	../UI_Manager/ui.c:252: temp = 3;
      000919 7F 03            [12] 1033 	mov	r7,#0x03
                                   1034 ;	../UI_Manager/ui.c:253: break;
                                   1035 ;	../UI_Manager/ui.c:254: case OPTION_DMX_MODE_1: 
      00091B 80 06            [24] 1036 	sjmp	00111$
      00091D                       1037 00109$:
                                   1038 ;	../UI_Manager/ui.c:255: temp = 1;
      00091D 7F 01            [12] 1039 	mov	r7,#0x01
                                   1040 ;	../UI_Manager/ui.c:256: break;
                                   1041 ;	../UI_Manager/ui.c:257: default:
      00091F 80 02            [24] 1042 	sjmp	00111$
      000921                       1043 00110$:
                                   1044 ;	../UI_Manager/ui.c:258: temp = 10;
      000921 7F 0A            [12] 1045 	mov	r7,#0x0a
                                   1046 ;	../UI_Manager/ui.c:260: }
      000923                       1047 00111$:
                                   1048 ;	../UI_Manager/ui.c:261: write_number(temp, 12, LINE_1, NOT_SELECTED);
      000923 7E 00            [12] 1049 	mov	r6,#0x00
      000925 75 25 0C         [24] 1050 	mov	_write_number_PARM_2,#0x0c
      000928 75 26 01         [24] 1051 	mov	_write_number_PARM_3,#0x01
                                   1052 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      00092B 8E 27            [24] 1053 	mov	_write_number_PARM_4,r6
      00092D 8F 82            [24] 1054 	mov	dpl,r7
      00092F 8E 83            [24] 1055 	mov	dph,r6
      000931 12 19 98         [24] 1056 	lcall	_write_number
                                   1057 ;	../UI_Manager/ui.c:263: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
      000934 75 21 04         [24] 1058 	mov	_write_string_PARM_2,#0x04
      000937 75 22 00         [24] 1059 	mov	_write_string_PARM_3,#0x00
      00093A 75 23 01         [24] 1060 	mov	_write_string_PARM_4,#0x01
      00093D 75 24 00         [24] 1061 	mov	_write_string_PARM_5,#0x00
      000940 90 30 3B         [24] 1062 	mov	dptr,#___str_11
      000943 75 F0 80         [24] 1063 	mov	b,#0x80
      000946 12 18 D4         [24] 1064 	lcall	_write_string
                                   1065 ;	../UI_Manager/ui.c:264: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
      000949 75 21 04         [24] 1066 	mov	_write_string_PARM_2,#0x04
      00094C 75 22 09         [24] 1067 	mov	_write_string_PARM_3,#0x09
      00094F 75 23 01         [24] 1068 	mov	_write_string_PARM_4,#0x01
      000952 75 24 00         [24] 1069 	mov	_write_string_PARM_5,#0x00
      000955 90 30 40         [24] 1070 	mov	dptr,#___str_12
      000958 75 F0 80         [24] 1071 	mov	b,#0x80
      00095B 12 18 D4         [24] 1072 	lcall	_write_string
      00095E                       1073 00116$:
                                   1074 ;	../UI_Manager/ui.c:272: tock++;
      00095E 05 13            [12] 1075 	inc	_idlePage_tock_65536_59
                                   1076 ;	../UI_Manager/ui.c:273: if(get_playing() == PLAY){
      000960 74 01            [12] 1077 	mov	a,#0x01
      000962 B5 6B 55         [24] 1078 	cjne	a,_Playing,00134$
                                   1079 ;	../UI_Manager/ui.c:274: if(playing == PAUSE){
      000965 E5 15            [12] 1080 	mov	a,_idlePage_playing_65536_59
                                   1081 ;	../UI_Manager/ui.c:275: iconChange |= PLAY_CHANGE;
      000967 70 08            [24] 1082 	jnz	00118$
      000969 AE 14            [24] 1083 	mov	r6,_idlePage_iconChange_65536_59
      00096B FF               [12] 1084 	mov	r7,a
      00096C 43 06 20         [24] 1085 	orl	ar6,#0x20
      00096F 8E 14            [24] 1086 	mov	_idlePage_iconChange_65536_59,r6
      000971                       1087 00118$:
                                   1088 ;	../UI_Manager/ui.c:278: if(get_interval_or_duration() == INTERVAL){
      000971 E5 6A            [12] 1089 	mov	a,_Interval_Or_Duration
      000973 70 16            [24] 1090 	jnz	00127$
                                   1091 ;	../UI_Manager/ui.c:280: if(iconChange & PLAY_CHANGE){
      000975 E5 14            [12] 1092 	mov	a,_idlePage_iconChange_65536_59
      000977 30 E5 35         [24] 1093 	jnb	acc.5,00128$
                                   1094 ;	../UI_Manager/ui.c:281: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      00097A 75 2B 0E         [24] 1095 	mov	_write_char_PARM_2,#0x0e
      00097D 75 2C 00         [24] 1096 	mov	_write_char_PARM_3,#0x00
      000980 75 82 80         [24] 1097 	mov	dpl,#0x80
      000983 12 1A F2         [24] 1098 	lcall	_write_char
                                   1099 ;	../UI_Manager/ui.c:282: iconChange &= ~PLAY_CHANGE;
      000986 53 14 DF         [24] 1100 	anl	_idlePage_iconChange_65536_59,#0xdf
      000989 80 24            [24] 1101 	sjmp	00128$
      00098B                       1102 00127$:
                                   1103 ;	../UI_Manager/ui.c:286: if(tock == 0x80 + 55){ //blink if fogging
      00098B 74 B7            [12] 1104 	mov	a,#0xb7
      00098D B5 13 0E         [24] 1105 	cjne	a,_idlePage_tock_65536_59,00124$
                                   1106 ;	../UI_Manager/ui.c:287: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      000990 75 2B 0E         [24] 1107 	mov	_write_char_PARM_2,#0x0e
      000993 75 2C 00         [24] 1108 	mov	_write_char_PARM_3,#0x00
      000996 75 82 80         [24] 1109 	mov	dpl,#0x80
      000999 12 1A F2         [24] 1110 	lcall	_write_char
      00099C 80 11            [24] 1111 	sjmp	00128$
      00099E                       1112 00124$:
                                   1113 ;	../UI_Manager/ui.c:288: } else if(tock == 0x08 + 55){
      00099E 74 3F            [12] 1114 	mov	a,#0x3f
      0009A0 B5 13 0C         [24] 1115 	cjne	a,_idlePage_tock_65536_59,00128$
                                   1116 ;	../UI_Manager/ui.c:289: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      0009A3 75 2B 0E         [24] 1117 	mov	_write_char_PARM_2,#0x0e
      0009A6 75 2C 00         [24] 1118 	mov	_write_char_PARM_3,#0x00
      0009A9 75 82 04         [24] 1119 	mov	dpl,#0x04
      0009AC 12 1A F2         [24] 1120 	lcall	_write_char
      0009AF                       1121 00128$:
                                   1122 ;	../UI_Manager/ui.c:292: iconChange |= PAUSE_CHANGE;
      0009AF AE 14            [24] 1123 	mov	r6,_idlePage_iconChange_65536_59
      0009B1 7F 00            [12] 1124 	mov	r7,#0x00
      0009B3 43 06 10         [24] 1125 	orl	ar6,#0x10
      0009B6 8E 14            [24] 1126 	mov	_idlePage_iconChange_65536_59,r6
      0009B8 80 2E            [24] 1127 	sjmp	00135$
      0009BA                       1128 00134$:
                                   1129 ;	../UI_Manager/ui.c:294: if(playing == PLAY){
      0009BA 74 01            [12] 1130 	mov	a,#0x01
      0009BC B5 15 09         [24] 1131 	cjne	a,_idlePage_playing_65536_59,00130$
                                   1132 ;	../UI_Manager/ui.c:295: iconChange |= PAUSE_CHANGE;
      0009BF AE 14            [24] 1133 	mov	r6,_idlePage_iconChange_65536_59
      0009C1 7F 00            [12] 1134 	mov	r7,#0x00
      0009C3 43 06 10         [24] 1135 	orl	ar6,#0x10
      0009C6 8E 14            [24] 1136 	mov	_idlePage_iconChange_65536_59,r6
      0009C8                       1137 00130$:
                                   1138 ;	../UI_Manager/ui.c:298: if(iconChange & PAUSE_CHANGE){
      0009C8 E5 14            [12] 1139 	mov	a,_idlePage_iconChange_65536_59
      0009CA 30 E4 18         [24] 1140 	jnb	acc.4,00132$
                                   1141 ;	../UI_Manager/ui.c:299: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      0009CD 75 2B 0E         [24] 1142 	mov	_write_char_PARM_2,#0x0e
      0009D0 75 2C 00         [24] 1143 	mov	_write_char_PARM_3,#0x00
      0009D3 75 82 04         [24] 1144 	mov	dpl,#0x04
      0009D6 12 1A F2         [24] 1145 	lcall	_write_char
                                   1146 ;	../UI_Manager/ui.c:300: iconChange |= PLAY_CHANGE;
      0009D9 AE 14            [24] 1147 	mov	r6,_idlePage_iconChange_65536_59
      0009DB 7F 00            [12] 1148 	mov	r7,#0x00
      0009DD 43 06 20         [24] 1149 	orl	ar6,#0x20
      0009E0 8E 14            [24] 1150 	mov	_idlePage_iconChange_65536_59,r6
                                   1151 ;	../UI_Manager/ui.c:301: iconChange &= ~PAUSE_CHANGE;
      0009E2 53 14 EF         [24] 1152 	anl	_idlePage_iconChange_65536_59,#0xef
      0009E5                       1153 00132$:
                                   1154 ;	../UI_Manager/ui.c:304: playing = PAUSE;
      0009E5 75 15 00         [24] 1155 	mov	_idlePage_playing_65536_59,#0x00
      0009E8                       1156 00135$:
                                   1157 ;	../UI_Manager/ui.c:307: if(get_heater_enabled()){
      0009E8 E5 6C            [12] 1158 	mov	a,_Heat_Flag
      0009EA 20 E4 5E         [24] 1159 	jb	acc.4,00149$
                                   1160 ;	../UI_Manager/ui.c:308: if(get_heated()){
      0009ED E5 6C            [12] 1161 	mov	a,_Heat_Flag
      0009EF 30 E7 16         [24] 1162 	jnb	acc.7,00144$
                                   1163 ;	../UI_Manager/ui.c:309: if(iconChange & HEATED_CHANGE){
      0009F2 E5 14            [12] 1164 	mov	a,_idlePage_iconChange_65536_59
      0009F4 30 E0 49         [24] 1165 	jnb	acc.0,00145$
                                   1166 ;	../UI_Manager/ui.c:310: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
      0009F7 75 2B 0F         [24] 1167 	mov	_write_char_PARM_2,#0x0f
      0009FA 75 2C 00         [24] 1168 	mov	_write_char_PARM_3,#0x00
      0009FD 75 82 60         [24] 1169 	mov	dpl,#0x60
      000A00 12 1A F2         [24] 1170 	lcall	_write_char
                                   1171 ;	../UI_Manager/ui.c:311: iconChange &= ~HEATED_CHANGE;
      000A03 53 14 FE         [24] 1172 	anl	_idlePage_iconChange_65536_59,#0xfe
      000A06 80 38            [24] 1173 	sjmp	00145$
      000A08                       1174 00144$:
                                   1175 ;	../UI_Manager/ui.c:314: if(!(tock)){
      000A08 E5 13            [12] 1176 	mov	a,_idlePage_tock_65536_59
      000A0A 70 2B            [24] 1177 	jnz	00142$
                                   1178 ;	../UI_Manager/ui.c:315: if(iconChange & HEATING_CHANGE){
      000A0C E5 14            [12] 1179 	mov	a,_idlePage_iconChange_65536_59
      000A0E 30 E1 11         [24] 1180 	jnb	acc.1,00139$
                                   1181 ;	../UI_Manager/ui.c:316: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
      000A11 75 2B 0F         [24] 1182 	mov	_write_char_PARM_2,#0x0f
      000A14 75 2C 00         [24] 1183 	mov	_write_char_PARM_3,#0x00
      000A17 75 82 04         [24] 1184 	mov	dpl,#0x04
      000A1A 12 1A F2         [24] 1185 	lcall	_write_char
                                   1186 ;	../UI_Manager/ui.c:317: iconChange &= ~HEATING_CHANGE;
      000A1D 53 14 FD         [24] 1187 	anl	_idlePage_iconChange_65536_59,#0xfd
      000A20 80 15            [24] 1188 	sjmp	00142$
      000A22                       1189 00139$:
                                   1190 ;	../UI_Manager/ui.c:319: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
      000A22 75 2B 0F         [24] 1191 	mov	_write_char_PARM_2,#0x0f
      000A25 75 2C 00         [24] 1192 	mov	_write_char_PARM_3,#0x00
      000A28 75 82 A0         [24] 1193 	mov	dpl,#0xa0
      000A2B 12 1A F2         [24] 1194 	lcall	_write_char
                                   1195 ;	../UI_Manager/ui.c:320: iconChange |= HEATING_CHANGE;
      000A2E AE 14            [24] 1196 	mov	r6,_idlePage_iconChange_65536_59
      000A30 7F 00            [12] 1197 	mov	r7,#0x00
      000A32 43 06 02         [24] 1198 	orl	ar6,#0x02
      000A35 8E 14            [24] 1199 	mov	_idlePage_iconChange_65536_59,r6
      000A37                       1200 00142$:
                                   1201 ;	../UI_Manager/ui.c:323: iconChange |= HEATED_CHANGE;
      000A37 AE 14            [24] 1202 	mov	r6,_idlePage_iconChange_65536_59
      000A39 7F 00            [12] 1203 	mov	r7,#0x00
      000A3B 43 06 01         [24] 1204 	orl	ar6,#0x01
      000A3E 8E 14            [24] 1205 	mov	_idlePage_iconChange_65536_59,r6
      000A40                       1206 00145$:
                                   1207 ;	../UI_Manager/ui.c:325: iconChange |= HEATER_CHANGE;
      000A40 AE 14            [24] 1208 	mov	r6,_idlePage_iconChange_65536_59
      000A42 7F 00            [12] 1209 	mov	r7,#0x00
      000A44 43 06 08         [24] 1210 	orl	ar6,#0x08
      000A47 8E 14            [24] 1211 	mov	_idlePage_iconChange_65536_59,r6
      000A49 80 17            [24] 1212 	sjmp	00150$
      000A4B                       1213 00149$:
                                   1214 ;	../UI_Manager/ui.c:327: if(iconChange & HEATER_CHANGE){
      000A4B E5 14            [12] 1215 	mov	a,_idlePage_iconChange_65536_59
      000A4D 30 E3 0F         [24] 1216 	jnb	acc.3,00147$
                                   1217 ;	../UI_Manager/ui.c:328: write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
      000A50 75 2B 0F         [24] 1218 	mov	_write_char_PARM_2,#0x0f
      000A53 75 2C 00         [24] 1219 	mov	_write_char_PARM_3,#0x00
      000A56 75 82 00         [24] 1220 	mov	dpl,#0x00
      000A59 12 1A F2         [24] 1221 	lcall	_write_char
                                   1222 ;	../UI_Manager/ui.c:329: iconChange &= ~HEATER_CHANGE;
      000A5C 53 14 F7         [24] 1223 	anl	_idlePage_iconChange_65536_59,#0xf7
      000A5F                       1224 00147$:
                                   1225 ;	../UI_Manager/ui.c:331: iconChange |= HEATER_CHANGE | HEATED_CHANGE;
      000A5F 43 14 09         [24] 1226 	orl	_idlePage_iconChange_65536_59,#0x09
      000A62                       1227 00150$:
                                   1228 ;	../UI_Manager/ui.c:336: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      000A62 75 82 10         [24] 1229 	mov	dpl,#0x10
      000A65 12 28 BF         [24] 1230 	lcall	_get_runtime_data
      000A68 E5 82            [12] 1231 	mov	a,dpl
      000A6A 60 03            [24] 1232 	jz	00356$
      000A6C 02 0A FD         [24] 1233 	ljmp	00168$
      000A6F                       1234 00356$:
                                   1235 ;	../UI_Manager/ui.c:339: if(has_dmx()){
      000A6F E5 36            [12] 1236 	mov	a,_Has_DMX
      000A71 60 28            [24] 1237 	jz	00156$
                                   1238 ;	../UI_Manager/ui.c:340: if(changed & DMX_OK_CHANGE){
      000A73 E5 0A            [12] 1239 	mov	a,_changed
      000A75 30 E7 49         [24] 1240 	jnb	acc.7,00157$
                                   1241 ;	../UI_Manager/ui.c:341: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
      000A78 75 21 06         [24] 1242 	mov	_write_string_PARM_2,#0x06
      000A7B 75 22 01         [24] 1243 	mov	_write_string_PARM_3,#0x01
      000A7E 75 23 00         [24] 1244 	mov	_write_string_PARM_4,#0x00
      000A81 75 24 00         [24] 1245 	mov	_write_string_PARM_5,#0x00
      000A84 90 30 45         [24] 1246 	mov	dptr,#___str_13
      000A87 75 F0 80         [24] 1247 	mov	b,#0x80
      000A8A 12 18 D4         [24] 1248 	lcall	_write_string
                                   1249 ;	../UI_Manager/ui.c:342: changed |= NO_DMX_CHANGE;
      000A8D AE 0A            [24] 1250 	mov	r6,_changed
      000A8F 7F 00            [12] 1251 	mov	r7,#0x00
      000A91 43 06 40         [24] 1252 	orl	ar6,#0x40
      000A94 8E 0A            [24] 1253 	mov	_changed,r6
                                   1254 ;	../UI_Manager/ui.c:343: changed &= ~DMX_OK_CHANGE;
      000A96 53 0A 7F         [24] 1255 	anl	_changed,#0x7f
      000A99 80 26            [24] 1256 	sjmp	00157$
      000A9B                       1257 00156$:
                                   1258 ;	../UI_Manager/ui.c:346: if(changed & NO_DMX_CHANGE){
      000A9B E5 0A            [12] 1259 	mov	a,_changed
      000A9D 30 E6 21         [24] 1260 	jnb	acc.6,00157$
                                   1261 ;	../UI_Manager/ui.c:347: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
      000AA0 75 21 06         [24] 1262 	mov	_write_string_PARM_2,#0x06
      000AA3 75 22 01         [24] 1263 	mov	_write_string_PARM_3,#0x01
      000AA6 75 23 00         [24] 1264 	mov	_write_string_PARM_4,#0x00
      000AA9 75 24 00         [24] 1265 	mov	_write_string_PARM_5,#0x00
      000AAC 90 30 4C         [24] 1266 	mov	dptr,#___str_14
      000AAF 75 F0 80         [24] 1267 	mov	b,#0x80
      000AB2 12 18 D4         [24] 1268 	lcall	_write_string
                                   1269 ;	../UI_Manager/ui.c:348: changed |= DMX_OK_CHANGE;
      000AB5 AE 0A            [24] 1270 	mov	r6,_changed
      000AB7 7F 00            [12] 1271 	mov	r7,#0x00
      000AB9 43 06 80         [24] 1272 	orl	ar6,#0x80
      000ABC 8E 0A            [24] 1273 	mov	_changed,r6
                                   1274 ;	../UI_Manager/ui.c:349: changed &= ~NO_DMX_CHANGE;
      000ABE 53 0A BF         [24] 1275 	anl	_changed,#0xbf
      000AC1                       1276 00157$:
                                   1277 ;	../UI_Manager/ui.c:353: temp = get_timer();
                                   1278 ;	../UI_Manager/ui.c:356: if(timer != temp){
      000AC1 E5 69            [12] 1279 	mov	a,_Timer
      000AC3 FF               [12] 1280 	mov	r7,a
      000AC4 B5 10 01         [24] 1281 	cjne	a,_idlePage_timer_65536_59,00360$
      000AC7 22               [24] 1282 	ret
      000AC8                       1283 00360$:
                                   1284 ;	../UI_Manager/ui.c:358: write_number(temp, 7, LINE_0, NOT_SELECTED);
      000AC8 8F 05            [24] 1285 	mov	ar5,r7
      000ACA 7E 00            [12] 1286 	mov	r6,#0x00
      000ACC 75 25 07         [24] 1287 	mov	_write_number_PARM_2,#0x07
                                   1288 ;	1-genFromRTrack replaced	mov	_write_number_PARM_3,#0x00
      000ACF 8E 26            [24] 1289 	mov	_write_number_PARM_3,r6
                                   1290 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000AD1 8E 27            [24] 1291 	mov	_write_number_PARM_4,r6
      000AD3 8D 82            [24] 1292 	mov	dpl,r5
      000AD5 8E 83            [24] 1293 	mov	dph,r6
      000AD7 C0 07            [24] 1294 	push	ar7
      000AD9 12 19 98         [24] 1295 	lcall	_write_number
      000ADC D0 07            [24] 1296 	pop	ar7
                                   1297 ;	../UI_Manager/ui.c:359: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
      000ADE E5 6A            [12] 1298 	mov	a,_Interval_Or_Duration
      000AE0 70 05            [24] 1299 	jnz	00172$
      000AE2 7D 92            [12] 1300 	mov	r5,#0x92
      000AE4 FE               [12] 1301 	mov	r6,a
      000AE5 80 04            [24] 1302 	sjmp	00173$
      000AE7                       1303 00172$:
      000AE7 7D 22            [12] 1304 	mov	r5,#0x22
      000AE9 7E 00            [12] 1305 	mov	r6,#0x00
      000AEB                       1306 00173$:
      000AEB 8D 82            [24] 1307 	mov	dpl,r5
      000AED 75 2B 0B         [24] 1308 	mov	_write_char_PARM_2,#0x0b
      000AF0 75 2C 00         [24] 1309 	mov	_write_char_PARM_3,#0x00
      000AF3 C0 07            [24] 1310 	push	ar7
      000AF5 12 1A F2         [24] 1311 	lcall	_write_char
      000AF8 D0 07            [24] 1312 	pop	ar7
                                   1313 ;	../UI_Manager/ui.c:361: timer = temp;
      000AFA 8F 10            [24] 1314 	mov	_idlePage_timer_65536_59,r7
      000AFC 22               [24] 1315 	ret
      000AFD                       1316 00168$:
                                   1317 ;	../UI_Manager/ui.c:366: temp = get_interval_or_duration();
                                   1318 ;	../UI_Manager/ui.c:368: if(intervalOrDuration != temp){
      000AFD E5 6A            [12] 1319 	mov	a,_Interval_Or_Duration
      000AFF FF               [12] 1320 	mov	r7,a
      000B00 B5 11 02         [24] 1321 	cjne	a,_idlePage_intervalOrDuration_65536_59,00362$
      000B03 80 37            [24] 1322 	sjmp	00164$
      000B05                       1323 00362$:
                                   1324 ;	../UI_Manager/ui.c:369: if(temp == INTERVAL){
      000B05 EF               [12] 1325 	mov	a,r7
                                   1326 ;	../UI_Manager/ui.c:370: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
      000B06 70 19            [24] 1327 	jnz	00161$
      000B08 75 21 09         [24] 1328 	mov	_write_string_PARM_2,#0x09
      000B0B F5 22            [12] 1329 	mov	_write_string_PARM_3,a
      000B0D 75 23 01         [24] 1330 	mov	_write_string_PARM_4,#0x01
      000B10 F5 24            [12] 1331 	mov	_write_string_PARM_5,a
      000B12 90 30 53         [24] 1332 	mov	dptr,#___str_15
      000B15 75 F0 80         [24] 1333 	mov	b,#0x80
      000B18 C0 07            [24] 1334 	push	ar7
      000B1A 12 18 D4         [24] 1335 	lcall	_write_string
      000B1D D0 07            [24] 1336 	pop	ar7
      000B1F 80 19            [24] 1337 	sjmp	00162$
      000B21                       1338 00161$:
                                   1339 ;	../UI_Manager/ui.c:372: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
      000B21 75 21 09         [24] 1340 	mov	_write_string_PARM_2,#0x09
      000B24 75 22 00         [24] 1341 	mov	_write_string_PARM_3,#0x00
      000B27 75 23 01         [24] 1342 	mov	_write_string_PARM_4,#0x01
      000B2A 75 24 00         [24] 1343 	mov	_write_string_PARM_5,#0x00
      000B2D 90 30 5C         [24] 1344 	mov	dptr,#___str_16
      000B30 75 F0 80         [24] 1345 	mov	b,#0x80
      000B33 C0 07            [24] 1346 	push	ar7
      000B35 12 18 D4         [24] 1347 	lcall	_write_string
      000B38 D0 07            [24] 1348 	pop	ar7
      000B3A                       1349 00162$:
                                   1350 ;	../UI_Manager/ui.c:375: intervalOrDuration = temp;
      000B3A 8F 11            [24] 1351 	mov	_idlePage_intervalOrDuration_65536_59,r7
      000B3C                       1352 00164$:
                                   1353 ;	../UI_Manager/ui.c:378: temp = get_timer();
                                   1354 ;	../UI_Manager/ui.c:380: if(timer != temp){
      000B3C E5 69            [12] 1355 	mov	a,_Timer
      000B3E FF               [12] 1356 	mov	r7,a
      000B3F B5 10 01         [24] 1357 	cjne	a,_idlePage_timer_65536_59,00364$
      000B42 22               [24] 1358 	ret
      000B43                       1359 00364$:
                                   1360 ;	../UI_Manager/ui.c:382: write_number(temp, NUMBER_END_INDEX, LINE_1, NOT_SELECTED);
      000B43 8F 05            [24] 1361 	mov	ar5,r7
      000B45 7E 00            [12] 1362 	mov	r6,#0x00
      000B47 75 25 0C         [24] 1363 	mov	_write_number_PARM_2,#0x0c
      000B4A 75 26 01         [24] 1364 	mov	_write_number_PARM_3,#0x01
                                   1365 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000B4D 8E 27            [24] 1366 	mov	_write_number_PARM_4,r6
      000B4F 8D 82            [24] 1367 	mov	dpl,r5
      000B51 8E 83            [24] 1368 	mov	dph,r6
      000B53 C0 07            [24] 1369 	push	ar7
      000B55 12 19 98         [24] 1370 	lcall	_write_number
      000B58 D0 07            [24] 1371 	pop	ar7
                                   1372 ;	../UI_Manager/ui.c:384: timer = temp;
      000B5A 8F 10            [24] 1373 	mov	_idlePage_timer_65536_59,r7
                                   1374 ;	../UI_Manager/ui.c:388: }
      000B5C 22               [24] 1375 	ret
                                   1376 ;------------------------------------------------------------
                                   1377 ;Allocation info for local variables in function 'fogLevelPage'
                                   1378 ;------------------------------------------------------------
                                   1379 ;action                    Allocated to registers r7 
                                   1380 ;------------------------------------------------------------
                                   1381 ;	../UI_Manager/ui.c:390: void fogLevelPage(uint8_t action){
                                   1382 ;	-----------------------------------------
                                   1383 ;	 function fogLevelPage
                                   1384 ;	-----------------------------------------
      000B5D                       1385 _fogLevelPage:
      000B5D AF 82            [24] 1386 	mov	r7,dpl
                                   1387 ;	../UI_Manager/ui.c:392: switch (action)
      000B5F BF 01 02         [24] 1388 	cjne	r7,#0x01,00152$
      000B62 80 3A            [24] 1389 	sjmp	00104$
      000B64                       1390 00152$:
      000B64 BF 02 02         [24] 1391 	cjne	r7,#0x02,00153$
      000B67 80 2C            [24] 1392 	sjmp	00103$
      000B69                       1393 00153$:
      000B69 BF 03 02         [24] 1394 	cjne	r7,#0x03,00154$
      000B6C 80 05            [24] 1395 	sjmp	00101$
      000B6E                       1396 00154$:
                                   1397 ;	../UI_Manager/ui.c:394: case BUTTON_UP:
      000B6E BF 0B 36         [24] 1398 	cjne	r7,#0x0b,00105$
      000B71 80 11            [24] 1399 	sjmp	00102$
      000B73                       1400 00101$:
                                   1401 ;	../UI_Manager/ui.c:395: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
      000B73 75 67 01         [24] 1402 	mov	_set_runtime_data_PARM_2,#0x01
      000B76 75 68 00         [24] 1403 	mov	_set_runtime_data_PARM_3,#0x00
      000B79 75 82 00         [24] 1404 	mov	dpl,#0x00
      000B7C 12 29 53         [24] 1405 	lcall	_set_runtime_data
                                   1406 ;	../UI_Manager/ui.c:396: changed = 0xFF;
      000B7F 75 0A FF         [24] 1407 	mov	_changed,#0xff
                                   1408 ;	../UI_Manager/ui.c:397: break;
                                   1409 ;	../UI_Manager/ui.c:398: case BUTTON_DOWN:
      000B82 80 23            [24] 1410 	sjmp	00105$
      000B84                       1411 00102$:
                                   1412 ;	../UI_Manager/ui.c:399: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
      000B84 75 67 02         [24] 1413 	mov	_set_runtime_data_PARM_2,#0x02
      000B87 75 68 00         [24] 1414 	mov	_set_runtime_data_PARM_3,#0x00
      000B8A 75 82 00         [24] 1415 	mov	dpl,#0x00
      000B8D 12 29 53         [24] 1416 	lcall	_set_runtime_data
                                   1417 ;	../UI_Manager/ui.c:400: changed = 0xFF;  
      000B90 75 0A FF         [24] 1418 	mov	_changed,#0xff
                                   1419 ;	../UI_Manager/ui.c:401: break;
                                   1420 ;	../UI_Manager/ui.c:402: case BUTTON_FUNCTION:
      000B93 80 12            [24] 1421 	sjmp	00105$
      000B95                       1422 00103$:
                                   1423 ;	../UI_Manager/ui.c:403: set_ui_state(INC, NULL);
      000B95 75 17 00         [24] 1424 	mov	_set_ui_state_PARM_2,#0x00
      000B98 75 82 01         [24] 1425 	mov	dpl,#0x01
                                   1426 ;	../UI_Manager/ui.c:404: return;
      000B9B 02 13 E2         [24] 1427 	ljmp	_set_ui_state
                                   1428 ;	../UI_Manager/ui.c:405: case BUTTON_TIMER:
      000B9E                       1429 00104$:
                                   1430 ;	../UI_Manager/ui.c:406: set_ui_state(DEC, NULL);
      000B9E 75 17 00         [24] 1431 	mov	_set_ui_state_PARM_2,#0x00
      000BA1 75 82 02         [24] 1432 	mov	dpl,#0x02
                                   1433 ;	../UI_Manager/ui.c:407: return;
      000BA4 02 13 E2         [24] 1434 	ljmp	_set_ui_state
                                   1435 ;	../UI_Manager/ui.c:408: }
      000BA7                       1436 00105$:
                                   1437 ;	../UI_Manager/ui.c:410: if(Changed){
      000BA7 E5 09            [12] 1438 	mov	a,_Changed
      000BA9 60 21            [24] 1439 	jz	00107$
                                   1440 ;	../UI_Manager/ui.c:411: Changed = 0x00;
      000BAB 75 09 00         [24] 1441 	mov	_Changed,#0x00
                                   1442 ;	../UI_Manager/ui.c:412: changed = 0xFF;
      000BAE 75 0A FF         [24] 1443 	mov	_changed,#0xff
                                   1444 ;	../UI_Manager/ui.c:414: exe_command(CLEAR_DISPLAY);
      000BB1 90 80 00         [24] 1445 	mov	dptr,#0x8000
      000BB4 12 1B 27         [24] 1446 	lcall	_exe_command
                                   1447 ;	../UI_Manager/ui.c:416: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
      000BB7 75 21 0A         [24] 1448 	mov	_write_string_PARM_2,#0x0a
      000BBA 75 22 03         [24] 1449 	mov	_write_string_PARM_3,#0x03
      000BBD 75 23 00         [24] 1450 	mov	_write_string_PARM_4,#0x00
      000BC0 75 24 00         [24] 1451 	mov	_write_string_PARM_5,#0x00
      000BC3 90 30 65         [24] 1452 	mov	dptr,#___str_17
      000BC6 75 F0 80         [24] 1453 	mov	b,#0x80
      000BC9 12 18 D4         [24] 1454 	lcall	_write_string
      000BCC                       1455 00107$:
                                   1456 ;	../UI_Manager/ui.c:420: if(changed){
      000BCC E5 0A            [12] 1457 	mov	a,_changed
      000BCE 70 01            [24] 1458 	jnz	00157$
      000BD0 22               [24] 1459 	ret
      000BD1                       1460 00157$:
                                   1461 ;	../UI_Manager/ui.c:421: changed = 0x00;
      000BD1 75 0A 00         [24] 1462 	mov	_changed,#0x00
                                   1463 ;	../UI_Manager/ui.c:423: switch (get_runtime_data(FOG_POWER_INDEX))
      000BD4 75 82 00         [24] 1464 	mov	dpl,#0x00
      000BD7 12 28 BF         [24] 1465 	lcall	_get_runtime_data
      000BDA AF 82            [24] 1466 	mov	r7,dpl
      000BDC BF 00 02         [24] 1467 	cjne	r7,#0x00,00158$
      000BDF 80 0B            [24] 1468 	sjmp	00108$
      000BE1                       1469 00158$:
      000BE1 BF 01 02         [24] 1470 	cjne	r7,#0x01,00159$
      000BE4 80 33            [24] 1471 	sjmp	00109$
      000BE6                       1472 00159$:
      000BE6 BF 02 02         [24] 1473 	cjne	r7,#0x02,00160$
      000BE9 80 67            [24] 1474 	sjmp	00110$
      000BEB                       1475 00160$:
      000BEB 22               [24] 1476 	ret
                                   1477 ;	../UI_Manager/ui.c:425: case OPTION_FOG_LOW:
      000BEC                       1478 00108$:
                                   1479 ;	../UI_Manager/ui.c:426: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000BEC 75 82 00         [24] 1480 	mov	dpl,#0x00
      000BEF 12 14 76         [24] 1481 	lcall	_getString
      000BF2 AD 82            [24] 1482 	mov	r5,dpl
      000BF4 AE 83            [24] 1483 	mov	r6,dph
      000BF6 AF F0            [24] 1484 	mov	r7,b
      000BF8 75 21 10         [24] 1485 	mov	_write_string_PARM_2,#0x10
      000BFB 75 22 03         [24] 1486 	mov	_write_string_PARM_3,#0x03
      000BFE 75 23 01         [24] 1487 	mov	_write_string_PARM_4,#0x01
      000C01 75 24 00         [24] 1488 	mov	_write_string_PARM_5,#0x00
      000C04 8D 82            [24] 1489 	mov	dpl,r5
      000C06 8E 83            [24] 1490 	mov	dph,r6
      000C08 8F F0            [24] 1491 	mov	b,r7
      000C0A 12 18 D4         [24] 1492 	lcall	_write_string
                                   1493 ;	../UI_Manager/ui.c:427: write_char(CHAR_LVL_1, 12, LINE_1);
      000C0D 75 2B 0C         [24] 1494 	mov	_write_char_PARM_2,#0x0c
      000C10 75 2C 01         [24] 1495 	mov	_write_char_PARM_3,#0x01
      000C13 75 82 40         [24] 1496 	mov	dpl,#0x40
                                   1497 ;	../UI_Manager/ui.c:428: break;
      000C16 02 1A F2         [24] 1498 	ljmp	_write_char
                                   1499 ;	../UI_Manager/ui.c:429: case OPTION_FOG_MEDIUM:
      000C19                       1500 00109$:
                                   1501 ;	../UI_Manager/ui.c:430: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000C19 75 82 01         [24] 1502 	mov	dpl,#0x01
      000C1C 12 14 76         [24] 1503 	lcall	_getString
      000C1F AD 82            [24] 1504 	mov	r5,dpl
      000C21 AE 83            [24] 1505 	mov	r6,dph
      000C23 AF F0            [24] 1506 	mov	r7,b
      000C25 75 21 10         [24] 1507 	mov	_write_string_PARM_2,#0x10
      000C28 75 22 03         [24] 1508 	mov	_write_string_PARM_3,#0x03
      000C2B 75 23 01         [24] 1509 	mov	_write_string_PARM_4,#0x01
      000C2E 75 24 00         [24] 1510 	mov	_write_string_PARM_5,#0x00
      000C31 8D 82            [24] 1511 	mov	dpl,r5
      000C33 8E 83            [24] 1512 	mov	dph,r6
      000C35 8F F0            [24] 1513 	mov	b,r7
      000C37 12 18 D4         [24] 1514 	lcall	_write_string
                                   1515 ;	../UI_Manager/ui.c:431: write_char(CHAR_LVL_1, 12, LINE_1);
      000C3A 75 2B 0C         [24] 1516 	mov	_write_char_PARM_2,#0x0c
      000C3D 75 2C 01         [24] 1517 	mov	_write_char_PARM_3,#0x01
      000C40 75 82 40         [24] 1518 	mov	dpl,#0x40
      000C43 12 1A F2         [24] 1519 	lcall	_write_char
                                   1520 ;	../UI_Manager/ui.c:432: write_char(CHAR_LVL_2, 13, LINE_1);
      000C46 75 2B 0D         [24] 1521 	mov	_write_char_PARM_2,#0x0d
      000C49 75 2C 01         [24] 1522 	mov	_write_char_PARM_3,#0x01
      000C4C 75 82 C0         [24] 1523 	mov	dpl,#0xc0
                                   1524 ;	../UI_Manager/ui.c:433: break;
                                   1525 ;	../UI_Manager/ui.c:434: case OPTION_FOG_HIGH:
      000C4F 02 1A F2         [24] 1526 	ljmp	_write_char
      000C52                       1527 00110$:
                                   1528 ;	../UI_Manager/ui.c:435: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000C52 75 82 02         [24] 1529 	mov	dpl,#0x02
      000C55 12 14 76         [24] 1530 	lcall	_getString
      000C58 AD 82            [24] 1531 	mov	r5,dpl
      000C5A AE 83            [24] 1532 	mov	r6,dph
      000C5C AF F0            [24] 1533 	mov	r7,b
      000C5E 75 21 10         [24] 1534 	mov	_write_string_PARM_2,#0x10
      000C61 75 22 03         [24] 1535 	mov	_write_string_PARM_3,#0x03
      000C64 75 23 01         [24] 1536 	mov	_write_string_PARM_4,#0x01
      000C67 75 24 00         [24] 1537 	mov	_write_string_PARM_5,#0x00
      000C6A 8D 82            [24] 1538 	mov	dpl,r5
      000C6C 8E 83            [24] 1539 	mov	dph,r6
      000C6E 8F F0            [24] 1540 	mov	b,r7
      000C70 12 18 D4         [24] 1541 	lcall	_write_string
                                   1542 ;	../UI_Manager/ui.c:436: write_char(CHAR_LVL_1, 12, LINE_1);
      000C73 75 2B 0C         [24] 1543 	mov	_write_char_PARM_2,#0x0c
      000C76 75 2C 01         [24] 1544 	mov	_write_char_PARM_3,#0x01
      000C79 75 82 40         [24] 1545 	mov	dpl,#0x40
      000C7C 12 1A F2         [24] 1546 	lcall	_write_char
                                   1547 ;	../UI_Manager/ui.c:437: write_char(CHAR_LVL_2, 13, LINE_1);
      000C7F 75 2B 0D         [24] 1548 	mov	_write_char_PARM_2,#0x0d
      000C82 75 2C 01         [24] 1549 	mov	_write_char_PARM_3,#0x01
      000C85 75 82 C0         [24] 1550 	mov	dpl,#0xc0
      000C88 12 1A F2         [24] 1551 	lcall	_write_char
                                   1552 ;	../UI_Manager/ui.c:438: write_char(CHAR_LVL_3, 14, LINE_1);
      000C8B 75 2B 0E         [24] 1553 	mov	_write_char_PARM_2,#0x0e
      000C8E 75 2C 01         [24] 1554 	mov	_write_char_PARM_3,#0x01
      000C91 75 82 20         [24] 1555 	mov	dpl,#0x20
                                   1556 ;	../UI_Manager/ui.c:440: }
                                   1557 ;	../UI_Manager/ui.c:443: }
      000C94 02 1A F2         [24] 1558 	ljmp	_write_char
                                   1559 ;------------------------------------------------------------
                                   1560 ;Allocation info for local variables in function 'fogIntervalPage'
                                   1561 ;------------------------------------------------------------
                                   1562 ;action                    Allocated to registers r7 
                                   1563 ;------------------------------------------------------------
                                   1564 ;	../UI_Manager/ui.c:445: void fogIntervalPage(uint8_t action){
                                   1565 ;	-----------------------------------------
                                   1566 ;	 function fogIntervalPage
                                   1567 ;	-----------------------------------------
      000C97                       1568 _fogIntervalPage:
      000C97 AF 82            [24] 1569 	mov	r7,dpl
                                   1570 ;	../UI_Manager/ui.c:447: switch (action)
      000C99 BF 01 02         [24] 1571 	cjne	r7,#0x01,00146$
      000C9C 80 44            [24] 1572 	sjmp	00106$
      000C9E                       1573 00146$:
      000C9E BF 02 02         [24] 1574 	cjne	r7,#0x02,00147$
      000CA1 80 36            [24] 1575 	sjmp	00105$
      000CA3                       1576 00147$:
      000CA3 BF 03 02         [24] 1577 	cjne	r7,#0x03,00148$
      000CA6 80 0F            [24] 1578 	sjmp	00102$
      000CA8                       1579 00148$:
      000CA8 BF 0B 02         [24] 1580 	cjne	r7,#0x0b,00149$
      000CAB 80 1B            [24] 1581 	sjmp	00104$
      000CAD                       1582 00149$:
      000CAD BF 1F 02         [24] 1583 	cjne	r7,#0x1f,00150$
      000CB0 80 05            [24] 1584 	sjmp	00102$
      000CB2                       1585 00150$:
                                   1586 ;	../UI_Manager/ui.c:450: case BUTTON_UP:
      000CB2 BF 6F 36         [24] 1587 	cjne	r7,#0x6f,00107$
      000CB5 80 11            [24] 1588 	sjmp	00104$
      000CB7                       1589 00102$:
                                   1590 ;	../UI_Manager/ui.c:451: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
      000CB7 75 67 01         [24] 1591 	mov	_set_runtime_data_PARM_2,#0x01
      000CBA 75 68 00         [24] 1592 	mov	_set_runtime_data_PARM_3,#0x00
      000CBD 75 82 02         [24] 1593 	mov	dpl,#0x02
      000CC0 12 29 53         [24] 1594 	lcall	_set_runtime_data
                                   1595 ;	../UI_Manager/ui.c:452: changed = 0xFF;
      000CC3 75 0A FF         [24] 1596 	mov	_changed,#0xff
                                   1597 ;	../UI_Manager/ui.c:453: break;
                                   1598 ;	../UI_Manager/ui.c:455: case BUTTON_DOWN:
      000CC6 80 23            [24] 1599 	sjmp	00107$
      000CC8                       1600 00104$:
                                   1601 ;	../UI_Manager/ui.c:456: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
      000CC8 75 67 02         [24] 1602 	mov	_set_runtime_data_PARM_2,#0x02
      000CCB 75 68 00         [24] 1603 	mov	_set_runtime_data_PARM_3,#0x00
      000CCE 75 82 02         [24] 1604 	mov	dpl,#0x02
      000CD1 12 29 53         [24] 1605 	lcall	_set_runtime_data
                                   1606 ;	../UI_Manager/ui.c:457: changed = 0xFF;  
      000CD4 75 0A FF         [24] 1607 	mov	_changed,#0xff
                                   1608 ;	../UI_Manager/ui.c:458: break;
                                   1609 ;	../UI_Manager/ui.c:459: case BUTTON_FUNCTION:
      000CD7 80 12            [24] 1610 	sjmp	00107$
      000CD9                       1611 00105$:
                                   1612 ;	../UI_Manager/ui.c:460: set_ui_state(INC, NULL);
      000CD9 75 17 00         [24] 1613 	mov	_set_ui_state_PARM_2,#0x00
      000CDC 75 82 01         [24] 1614 	mov	dpl,#0x01
                                   1615 ;	../UI_Manager/ui.c:461: return;
                                   1616 ;	../UI_Manager/ui.c:462: case BUTTON_TIMER:
      000CDF 02 13 E2         [24] 1617 	ljmp	_set_ui_state
      000CE2                       1618 00106$:
                                   1619 ;	../UI_Manager/ui.c:463: set_ui_state(DEC, NULL);
      000CE2 75 17 00         [24] 1620 	mov	_set_ui_state_PARM_2,#0x00
      000CE5 75 82 02         [24] 1621 	mov	dpl,#0x02
                                   1622 ;	../UI_Manager/ui.c:464: return;
                                   1623 ;	../UI_Manager/ui.c:465: }
      000CE8 02 13 E2         [24] 1624 	ljmp	_set_ui_state
      000CEB                       1625 00107$:
                                   1626 ;	../UI_Manager/ui.c:467: if(Changed){
      000CEB E5 09            [12] 1627 	mov	a,_Changed
      000CED 60 36            [24] 1628 	jz	00109$
                                   1629 ;	../UI_Manager/ui.c:468: Changed = 0x00;
      000CEF 75 09 00         [24] 1630 	mov	_Changed,#0x00
                                   1631 ;	../UI_Manager/ui.c:469: changed = 0xFF;
      000CF2 75 0A FF         [24] 1632 	mov	_changed,#0xff
                                   1633 ;	../UI_Manager/ui.c:471: exe_command(CLEAR_DISPLAY);
      000CF5 90 80 00         [24] 1634 	mov	dptr,#0x8000
      000CF8 12 1B 27         [24] 1635 	lcall	_exe_command
                                   1636 ;	../UI_Manager/ui.c:473: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
      000CFB 75 21 0D         [24] 1637 	mov	_write_string_PARM_2,#0x0d
      000CFE 75 22 02         [24] 1638 	mov	_write_string_PARM_3,#0x02
      000D01 75 23 00         [24] 1639 	mov	_write_string_PARM_4,#0x00
      000D04 75 24 00         [24] 1640 	mov	_write_string_PARM_5,#0x00
      000D07 90 30 6F         [24] 1641 	mov	dptr,#___str_18
      000D0A 75 F0 80         [24] 1642 	mov	b,#0x80
      000D0D 12 18 D4         [24] 1643 	lcall	_write_string
                                   1644 ;	../UI_Manager/ui.c:474: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      000D10 75 21 08         [24] 1645 	mov	_write_string_PARM_2,#0x08
      000D13 75 22 07         [24] 1646 	mov	_write_string_PARM_3,#0x07
      000D16 75 23 01         [24] 1647 	mov	_write_string_PARM_4,#0x01
      000D19 75 24 00         [24] 1648 	mov	_write_string_PARM_5,#0x00
      000D1C 90 30 7C         [24] 1649 	mov	dptr,#___str_19
      000D1F 75 F0 80         [24] 1650 	mov	b,#0x80
      000D22 12 18 D4         [24] 1651 	lcall	_write_string
      000D25                       1652 00109$:
                                   1653 ;	../UI_Manager/ui.c:478: if(changed){
      000D25 E5 0A            [12] 1654 	mov	a,_changed
      000D27 60 1C            [24] 1655 	jz	00112$
                                   1656 ;	../UI_Manager/ui.c:479: changed = 0x00;
      000D29 75 0A 00         [24] 1657 	mov	_changed,#0x00
                                   1658 ;	../UI_Manager/ui.c:481: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);
      000D2C 75 82 02         [24] 1659 	mov	dpl,#0x02
      000D2F 12 28 BF         [24] 1660 	lcall	_get_runtime_data
      000D32 AF 82            [24] 1661 	mov	r7,dpl
      000D34 7E 00            [12] 1662 	mov	r6,#0x00
      000D36 75 25 01         [24] 1663 	mov	_write_number_PARM_2,#0x01
      000D39 75 26 01         [24] 1664 	mov	_write_number_PARM_3,#0x01
                                   1665 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000D3C 8E 27            [24] 1666 	mov	_write_number_PARM_4,r6
      000D3E 8F 82            [24] 1667 	mov	dpl,r7
      000D40 8E 83            [24] 1668 	mov	dph,r6
                                   1669 ;	../UI_Manager/ui.c:486: }
      000D42 02 19 98         [24] 1670 	ljmp	_write_number
      000D45                       1671 00112$:
      000D45 22               [24] 1672 	ret
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'fogDurationPage'
                                   1675 ;------------------------------------------------------------
                                   1676 ;action                    Allocated to registers r7 
                                   1677 ;------------------------------------------------------------
                                   1678 ;	../UI_Manager/ui.c:488: void fogDurationPage(uint8_t action){
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function fogDurationPage
                                   1681 ;	-----------------------------------------
      000D46                       1682 _fogDurationPage:
      000D46 AF 82            [24] 1683 	mov	r7,dpl
                                   1684 ;	../UI_Manager/ui.c:490: switch (action)
      000D48 BF 01 02         [24] 1685 	cjne	r7,#0x01,00146$
      000D4B 80 44            [24] 1686 	sjmp	00106$
      000D4D                       1687 00146$:
      000D4D BF 02 02         [24] 1688 	cjne	r7,#0x02,00147$
      000D50 80 36            [24] 1689 	sjmp	00105$
      000D52                       1690 00147$:
      000D52 BF 03 02         [24] 1691 	cjne	r7,#0x03,00148$
      000D55 80 0F            [24] 1692 	sjmp	00102$
      000D57                       1693 00148$:
      000D57 BF 0B 02         [24] 1694 	cjne	r7,#0x0b,00149$
      000D5A 80 1B            [24] 1695 	sjmp	00104$
      000D5C                       1696 00149$:
      000D5C BF 1F 02         [24] 1697 	cjne	r7,#0x1f,00150$
      000D5F 80 05            [24] 1698 	sjmp	00102$
      000D61                       1699 00150$:
                                   1700 ;	../UI_Manager/ui.c:493: case BUTTON_UP:
      000D61 BF 6F 36         [24] 1701 	cjne	r7,#0x6f,00107$
      000D64 80 11            [24] 1702 	sjmp	00104$
      000D66                       1703 00102$:
                                   1704 ;	../UI_Manager/ui.c:494: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
      000D66 75 67 01         [24] 1705 	mov	_set_runtime_data_PARM_2,#0x01
      000D69 75 68 00         [24] 1706 	mov	_set_runtime_data_PARM_3,#0x00
      000D6C 75 82 01         [24] 1707 	mov	dpl,#0x01
      000D6F 12 29 53         [24] 1708 	lcall	_set_runtime_data
                                   1709 ;	../UI_Manager/ui.c:495: changed = 0xFF;
      000D72 75 0A FF         [24] 1710 	mov	_changed,#0xff
                                   1711 ;	../UI_Manager/ui.c:496: break;
                                   1712 ;	../UI_Manager/ui.c:498: case BUTTON_DOWN:
      000D75 80 23            [24] 1713 	sjmp	00107$
      000D77                       1714 00104$:
                                   1715 ;	../UI_Manager/ui.c:499: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
      000D77 75 67 02         [24] 1716 	mov	_set_runtime_data_PARM_2,#0x02
      000D7A 75 68 00         [24] 1717 	mov	_set_runtime_data_PARM_3,#0x00
      000D7D 75 82 01         [24] 1718 	mov	dpl,#0x01
      000D80 12 29 53         [24] 1719 	lcall	_set_runtime_data
                                   1720 ;	../UI_Manager/ui.c:500: changed = 0xFF;  
      000D83 75 0A FF         [24] 1721 	mov	_changed,#0xff
                                   1722 ;	../UI_Manager/ui.c:501: break;
                                   1723 ;	../UI_Manager/ui.c:502: case BUTTON_FUNCTION:
      000D86 80 12            [24] 1724 	sjmp	00107$
      000D88                       1725 00105$:
                                   1726 ;	../UI_Manager/ui.c:503: set_ui_state(INC, NULL);
      000D88 75 17 00         [24] 1727 	mov	_set_ui_state_PARM_2,#0x00
      000D8B 75 82 01         [24] 1728 	mov	dpl,#0x01
                                   1729 ;	../UI_Manager/ui.c:504: return;
                                   1730 ;	../UI_Manager/ui.c:505: case BUTTON_TIMER:
      000D8E 02 13 E2         [24] 1731 	ljmp	_set_ui_state
      000D91                       1732 00106$:
                                   1733 ;	../UI_Manager/ui.c:506: set_ui_state(DEC, NULL);
      000D91 75 17 00         [24] 1734 	mov	_set_ui_state_PARM_2,#0x00
      000D94 75 82 02         [24] 1735 	mov	dpl,#0x02
                                   1736 ;	../UI_Manager/ui.c:507: return;
                                   1737 ;	../UI_Manager/ui.c:508: }
      000D97 02 13 E2         [24] 1738 	ljmp	_set_ui_state
      000D9A                       1739 00107$:
                                   1740 ;	../UI_Manager/ui.c:510: if(Changed){
      000D9A E5 09            [12] 1741 	mov	a,_Changed
      000D9C 60 36            [24] 1742 	jz	00109$
                                   1743 ;	../UI_Manager/ui.c:511: Changed = 0x00;
      000D9E 75 09 00         [24] 1744 	mov	_Changed,#0x00
                                   1745 ;	../UI_Manager/ui.c:512: changed = 0xFF;
      000DA1 75 0A FF         [24] 1746 	mov	_changed,#0xff
                                   1747 ;	../UI_Manager/ui.c:514: exe_command(CLEAR_DISPLAY);
      000DA4 90 80 00         [24] 1748 	mov	dptr,#0x8000
      000DA7 12 1B 27         [24] 1749 	lcall	_exe_command
                                   1750 ;	../UI_Manager/ui.c:516: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
      000DAA 75 21 0D         [24] 1751 	mov	_write_string_PARM_2,#0x0d
      000DAD 75 22 02         [24] 1752 	mov	_write_string_PARM_3,#0x02
      000DB0 75 23 00         [24] 1753 	mov	_write_string_PARM_4,#0x00
      000DB3 75 24 00         [24] 1754 	mov	_write_string_PARM_5,#0x00
      000DB6 90 30 84         [24] 1755 	mov	dptr,#___str_20
      000DB9 75 F0 80         [24] 1756 	mov	b,#0x80
      000DBC 12 18 D4         [24] 1757 	lcall	_write_string
                                   1758 ;	../UI_Manager/ui.c:517: write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);
      000DBF 75 21 08         [24] 1759 	mov	_write_string_PARM_2,#0x08
      000DC2 75 22 07         [24] 1760 	mov	_write_string_PARM_3,#0x07
      000DC5 75 23 01         [24] 1761 	mov	_write_string_PARM_4,#0x01
      000DC8 75 24 00         [24] 1762 	mov	_write_string_PARM_5,#0x00
      000DCB 90 30 7C         [24] 1763 	mov	dptr,#___str_19
      000DCE 75 F0 80         [24] 1764 	mov	b,#0x80
      000DD1 12 18 D4         [24] 1765 	lcall	_write_string
      000DD4                       1766 00109$:
                                   1767 ;	../UI_Manager/ui.c:521: if(changed){
      000DD4 E5 0A            [12] 1768 	mov	a,_changed
      000DD6 60 1C            [24] 1769 	jz	00112$
                                   1770 ;	../UI_Manager/ui.c:522: changed = 0x00;
      000DD8 75 0A 00         [24] 1771 	mov	_changed,#0x00
                                   1772 ;	../UI_Manager/ui.c:524: write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);
      000DDB 75 82 01         [24] 1773 	mov	dpl,#0x01
      000DDE 12 28 BF         [24] 1774 	lcall	_get_runtime_data
      000DE1 AF 82            [24] 1775 	mov	r7,dpl
      000DE3 7E 00            [12] 1776 	mov	r6,#0x00
      000DE5 75 25 01         [24] 1777 	mov	_write_number_PARM_2,#0x01
      000DE8 75 26 01         [24] 1778 	mov	_write_number_PARM_3,#0x01
                                   1779 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000DEB 8E 27            [24] 1780 	mov	_write_number_PARM_4,r6
      000DED 8F 82            [24] 1781 	mov	dpl,r7
      000DEF 8E 83            [24] 1782 	mov	dph,r6
                                   1783 ;	../UI_Manager/ui.c:527: }
      000DF1 02 19 98         [24] 1784 	ljmp	_write_number
      000DF4                       1785 00112$:
      000DF4 22               [24] 1786 	ret
                                   1787 ;------------------------------------------------------------
                                   1788 ;Allocation info for local variables in function 'macroPage'
                                   1789 ;------------------------------------------------------------
                                   1790 ;action                    Allocated to registers r7 
                                   1791 ;------------------------------------------------------------
                                   1792 ;	../UI_Manager/ui.c:529: void macroPage(uint8_t action){
                                   1793 ;	-----------------------------------------
                                   1794 ;	 function macroPage
                                   1795 ;	-----------------------------------------
      000DF5                       1796 _macroPage:
      000DF5 AF 82            [24] 1797 	mov	r7,dpl
                                   1798 ;	../UI_Manager/ui.c:531: switch (action)
      000DF7 BF 01 02         [24] 1799 	cjne	r7,#0x01,00146$
      000DFA 80 44            [24] 1800 	sjmp	00106$
      000DFC                       1801 00146$:
      000DFC BF 02 02         [24] 1802 	cjne	r7,#0x02,00147$
      000DFF 80 36            [24] 1803 	sjmp	00105$
      000E01                       1804 00147$:
      000E01 BF 03 02         [24] 1805 	cjne	r7,#0x03,00148$
      000E04 80 0F            [24] 1806 	sjmp	00102$
      000E06                       1807 00148$:
      000E06 BF 0B 02         [24] 1808 	cjne	r7,#0x0b,00149$
      000E09 80 1B            [24] 1809 	sjmp	00104$
      000E0B                       1810 00149$:
      000E0B BF 1F 02         [24] 1811 	cjne	r7,#0x1f,00150$
      000E0E 80 05            [24] 1812 	sjmp	00102$
      000E10                       1813 00150$:
                                   1814 ;	../UI_Manager/ui.c:534: case BUTTON_UP:
      000E10 BF 6F 36         [24] 1815 	cjne	r7,#0x6f,00107$
      000E13 80 11            [24] 1816 	sjmp	00104$
      000E15                       1817 00102$:
                                   1818 ;	../UI_Manager/ui.c:535: set_runtime_data(MACRO_INDEX, INC, NULL);
      000E15 75 67 01         [24] 1819 	mov	_set_runtime_data_PARM_2,#0x01
      000E18 75 68 00         [24] 1820 	mov	_set_runtime_data_PARM_3,#0x00
      000E1B 75 82 03         [24] 1821 	mov	dpl,#0x03
      000E1E 12 29 53         [24] 1822 	lcall	_set_runtime_data
                                   1823 ;	../UI_Manager/ui.c:536: changed = 0xFF;
      000E21 75 0A FF         [24] 1824 	mov	_changed,#0xff
                                   1825 ;	../UI_Manager/ui.c:537: break;
                                   1826 ;	../UI_Manager/ui.c:539: case BUTTON_DOWN:
      000E24 80 23            [24] 1827 	sjmp	00107$
      000E26                       1828 00104$:
                                   1829 ;	../UI_Manager/ui.c:540: set_runtime_data(MACRO_INDEX, DEC, NULL);
      000E26 75 67 02         [24] 1830 	mov	_set_runtime_data_PARM_2,#0x02
      000E29 75 68 00         [24] 1831 	mov	_set_runtime_data_PARM_3,#0x00
      000E2C 75 82 03         [24] 1832 	mov	dpl,#0x03
      000E2F 12 29 53         [24] 1833 	lcall	_set_runtime_data
                                   1834 ;	../UI_Manager/ui.c:541: changed = 0xFF;  
      000E32 75 0A FF         [24] 1835 	mov	_changed,#0xff
                                   1836 ;	../UI_Manager/ui.c:542: break;
                                   1837 ;	../UI_Manager/ui.c:543: case BUTTON_FUNCTION:
      000E35 80 12            [24] 1838 	sjmp	00107$
      000E37                       1839 00105$:
                                   1840 ;	../UI_Manager/ui.c:544: set_ui_state(INC, NULL);
      000E37 75 17 00         [24] 1841 	mov	_set_ui_state_PARM_2,#0x00
      000E3A 75 82 01         [24] 1842 	mov	dpl,#0x01
                                   1843 ;	../UI_Manager/ui.c:545: return;
                                   1844 ;	../UI_Manager/ui.c:546: case BUTTON_TIMER:
      000E3D 02 13 E2         [24] 1845 	ljmp	_set_ui_state
      000E40                       1846 00106$:
                                   1847 ;	../UI_Manager/ui.c:547: set_ui_state(DEC, NULL);
      000E40 75 17 00         [24] 1848 	mov	_set_ui_state_PARM_2,#0x00
      000E43 75 82 02         [24] 1849 	mov	dpl,#0x02
                                   1850 ;	../UI_Manager/ui.c:548: return;
                                   1851 ;	../UI_Manager/ui.c:549: }
      000E46 02 13 E2         [24] 1852 	ljmp	_set_ui_state
      000E49                       1853 00107$:
                                   1854 ;	../UI_Manager/ui.c:551: if(Changed){
      000E49 E5 09            [12] 1855 	mov	a,_Changed
      000E4B 60 21            [24] 1856 	jz	00109$
                                   1857 ;	../UI_Manager/ui.c:552: Changed = 0x00;
      000E4D 75 09 00         [24] 1858 	mov	_Changed,#0x00
                                   1859 ;	../UI_Manager/ui.c:553: changed = 0xFF;
      000E50 75 0A FF         [24] 1860 	mov	_changed,#0xff
                                   1861 ;	../UI_Manager/ui.c:555: exe_command(CLEAR_DISPLAY);
      000E53 90 80 00         [24] 1862 	mov	dptr,#0x8000
      000E56 12 1B 27         [24] 1863 	lcall	_exe_command
                                   1864 ;	../UI_Manager/ui.c:557: write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);
      000E59 75 21 07         [24] 1865 	mov	_write_string_PARM_2,#0x07
      000E5C 75 22 04         [24] 1866 	mov	_write_string_PARM_3,#0x04
      000E5F 75 23 00         [24] 1867 	mov	_write_string_PARM_4,#0x00
      000E62 75 24 00         [24] 1868 	mov	_write_string_PARM_5,#0x00
      000E65 90 30 91         [24] 1869 	mov	dptr,#___str_21
      000E68 75 F0 80         [24] 1870 	mov	b,#0x80
      000E6B 12 18 D4         [24] 1871 	lcall	_write_string
      000E6E                       1872 00109$:
                                   1873 ;	../UI_Manager/ui.c:561: if(changed){
      000E6E E5 0A            [12] 1874 	mov	a,_changed
      000E70 60 2E            [24] 1875 	jz	00112$
                                   1876 ;	../UI_Manager/ui.c:562: changed = 0x00;
      000E72 75 0A 00         [24] 1877 	mov	_changed,#0x00
                                   1878 ;	../UI_Manager/ui.c:564: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      000E75 75 82 03         [24] 1879 	mov	dpl,#0x03
      000E78 12 28 BF         [24] 1880 	lcall	_get_runtime_data
      000E7B AF 82            [24] 1881 	mov	r7,dpl
      000E7D 74 14            [12] 1882 	mov	a,#0x14
      000E7F 2F               [12] 1883 	add	a,r7
      000E80 F5 82            [12] 1884 	mov	dpl,a
      000E82 12 14 76         [24] 1885 	lcall	_getString
      000E85 AD 82            [24] 1886 	mov	r5,dpl
      000E87 AE 83            [24] 1887 	mov	r6,dph
      000E89 AF F0            [24] 1888 	mov	r7,b
      000E8B 75 21 10         [24] 1889 	mov	_write_string_PARM_2,#0x10
      000E8E 75 22 06         [24] 1890 	mov	_write_string_PARM_3,#0x06
      000E91 75 23 01         [24] 1891 	mov	_write_string_PARM_4,#0x01
      000E94 75 24 00         [24] 1892 	mov	_write_string_PARM_5,#0x00
      000E97 8D 82            [24] 1893 	mov	dpl,r5
      000E99 8E 83            [24] 1894 	mov	dph,r6
      000E9B 8F F0            [24] 1895 	mov	b,r7
                                   1896 ;	../UI_Manager/ui.c:567: }
      000E9D 02 18 D4         [24] 1897 	ljmp	_write_string
      000EA0                       1898 00112$:
      000EA0 22               [24] 1899 	ret
                                   1900 ;------------------------------------------------------------
                                   1901 ;Allocation info for local variables in function 'macroSpeedPage'
                                   1902 ;------------------------------------------------------------
                                   1903 ;action                    Allocated to registers r7 
                                   1904 ;------------------------------------------------------------
                                   1905 ;	../UI_Manager/ui.c:569: void macroSpeedPage(uint8_t action){
                                   1906 ;	-----------------------------------------
                                   1907 ;	 function macroSpeedPage
                                   1908 ;	-----------------------------------------
      000EA1                       1909 _macroSpeedPage:
      000EA1 AF 82            [24] 1910 	mov	r7,dpl
                                   1911 ;	../UI_Manager/ui.c:571: switch (action)
      000EA3 BF 01 02         [24] 1912 	cjne	r7,#0x01,00153$
      000EA6 80 44            [24] 1913 	sjmp	00106$
      000EA8                       1914 00153$:
      000EA8 BF 02 02         [24] 1915 	cjne	r7,#0x02,00154$
      000EAB 80 36            [24] 1916 	sjmp	00105$
      000EAD                       1917 00154$:
      000EAD BF 03 02         [24] 1918 	cjne	r7,#0x03,00155$
      000EB0 80 0F            [24] 1919 	sjmp	00102$
      000EB2                       1920 00155$:
      000EB2 BF 0B 02         [24] 1921 	cjne	r7,#0x0b,00156$
      000EB5 80 1B            [24] 1922 	sjmp	00104$
      000EB7                       1923 00156$:
      000EB7 BF 1F 02         [24] 1924 	cjne	r7,#0x1f,00157$
      000EBA 80 05            [24] 1925 	sjmp	00102$
      000EBC                       1926 00157$:
                                   1927 ;	../UI_Manager/ui.c:574: case BUTTON_UP:
      000EBC BF 6F 36         [24] 1928 	cjne	r7,#0x6f,00107$
      000EBF 80 11            [24] 1929 	sjmp	00104$
      000EC1                       1930 00102$:
                                   1931 ;	../UI_Manager/ui.c:575: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
      000EC1 75 67 01         [24] 1932 	mov	_set_runtime_data_PARM_2,#0x01
      000EC4 75 68 00         [24] 1933 	mov	_set_runtime_data_PARM_3,#0x00
      000EC7 75 82 04         [24] 1934 	mov	dpl,#0x04
      000ECA 12 29 53         [24] 1935 	lcall	_set_runtime_data
                                   1936 ;	../UI_Manager/ui.c:576: changed = 0xFF;
      000ECD 75 0A FF         [24] 1937 	mov	_changed,#0xff
                                   1938 ;	../UI_Manager/ui.c:577: break;
                                   1939 ;	../UI_Manager/ui.c:579: case BUTTON_DOWN:
      000ED0 80 23            [24] 1940 	sjmp	00107$
      000ED2                       1941 00104$:
                                   1942 ;	../UI_Manager/ui.c:580: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
      000ED2 75 67 02         [24] 1943 	mov	_set_runtime_data_PARM_2,#0x02
      000ED5 75 68 00         [24] 1944 	mov	_set_runtime_data_PARM_3,#0x00
      000ED8 75 82 04         [24] 1945 	mov	dpl,#0x04
      000EDB 12 29 53         [24] 1946 	lcall	_set_runtime_data
                                   1947 ;	../UI_Manager/ui.c:581: changed = 0xFF;  
      000EDE 75 0A FF         [24] 1948 	mov	_changed,#0xff
                                   1949 ;	../UI_Manager/ui.c:582: break;
                                   1950 ;	../UI_Manager/ui.c:583: case BUTTON_FUNCTION:
      000EE1 80 12            [24] 1951 	sjmp	00107$
      000EE3                       1952 00105$:
                                   1953 ;	../UI_Manager/ui.c:584: set_ui_state(INC, NULL);
      000EE3 75 17 00         [24] 1954 	mov	_set_ui_state_PARM_2,#0x00
      000EE6 75 82 01         [24] 1955 	mov	dpl,#0x01
                                   1956 ;	../UI_Manager/ui.c:585: return;
      000EE9 02 13 E2         [24] 1957 	ljmp	_set_ui_state
                                   1958 ;	../UI_Manager/ui.c:586: case BUTTON_TIMER:
      000EEC                       1959 00106$:
                                   1960 ;	../UI_Manager/ui.c:587: set_ui_state(DEC, NULL);
      000EEC 75 17 00         [24] 1961 	mov	_set_ui_state_PARM_2,#0x00
      000EEF 75 82 02         [24] 1962 	mov	dpl,#0x02
                                   1963 ;	../UI_Manager/ui.c:588: return;
      000EF2 02 13 E2         [24] 1964 	ljmp	_set_ui_state
                                   1965 ;	../UI_Manager/ui.c:589: }
      000EF5                       1966 00107$:
                                   1967 ;	../UI_Manager/ui.c:591: if(Changed){
      000EF5 E5 09            [12] 1968 	mov	a,_Changed
      000EF7 60 21            [24] 1969 	jz	00109$
                                   1970 ;	../UI_Manager/ui.c:592: Changed = 0x00;
      000EF9 75 09 00         [24] 1971 	mov	_Changed,#0x00
                                   1972 ;	../UI_Manager/ui.c:593: changed = 0xFF;
      000EFC 75 0A FF         [24] 1973 	mov	_changed,#0xff
                                   1974 ;	../UI_Manager/ui.c:595: exe_command(CLEAR_DISPLAY);
      000EFF 90 80 00         [24] 1975 	mov	dptr,#0x8000
      000F02 12 1B 27         [24] 1976 	lcall	_exe_command
                                   1977 ;	../UI_Manager/ui.c:597: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
      000F05 75 21 0C         [24] 1978 	mov	_write_string_PARM_2,#0x0c
      000F08 75 22 03         [24] 1979 	mov	_write_string_PARM_3,#0x03
      000F0B 75 23 00         [24] 1980 	mov	_write_string_PARM_4,#0x00
      000F0E 75 24 00         [24] 1981 	mov	_write_string_PARM_5,#0x00
      000F11 90 30 98         [24] 1982 	mov	dptr,#___str_22
      000F14 75 F0 80         [24] 1983 	mov	b,#0x80
      000F17 12 18 D4         [24] 1984 	lcall	_write_string
      000F1A                       1985 00109$:
                                   1986 ;	../UI_Manager/ui.c:601: if(changed){
      000F1A E5 0A            [12] 1987 	mov	a,_changed
      000F1C 60 4F            [24] 1988 	jz	00115$
                                   1989 ;	../UI_Manager/ui.c:602: changed = 0x00;
      000F1E 75 0A 00         [24] 1990 	mov	_changed,#0x00
                                   1991 ;	../UI_Manager/ui.c:604: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
      000F21 75 82 04         [24] 1992 	mov	dpl,#0x04
      000F24 12 28 BF         [24] 1993 	lcall	_get_runtime_data
      000F27 E5 82            [12] 1994 	mov	a,dpl
                                   1995 ;	../UI_Manager/ui.c:605: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      000F29 70 14            [24] 1996 	jnz	00111$
      000F2B 75 21 10         [24] 1997 	mov	_write_string_PARM_2,#0x10
      000F2E 75 22 06         [24] 1998 	mov	_write_string_PARM_3,#0x06
      000F31 75 23 01         [24] 1999 	mov	_write_string_PARM_4,#0x01
      000F34 F5 24            [12] 2000 	mov	_write_string_PARM_5,a
      000F36 90 30 A4         [24] 2001 	mov	dptr,#___str_23
      000F39 75 F0 80         [24] 2002 	mov	b,#0x80
      000F3C 02 18 D4         [24] 2003 	ljmp	_write_string
      000F3F                       2004 00111$:
                                   2005 ;	../UI_Manager/ui.c:607: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000F3F 75 21 10         [24] 2006 	mov	_write_string_PARM_2,#0x10
      000F42 75 22 03         [24] 2007 	mov	_write_string_PARM_3,#0x03
      000F45 75 23 01         [24] 2008 	mov	_write_string_PARM_4,#0x01
      000F48 75 24 00         [24] 2009 	mov	_write_string_PARM_5,#0x00
      000F4B 90 30 A8         [24] 2010 	mov	dptr,#___str_24
      000F4E 75 F0 80         [24] 2011 	mov	b,#0x80
      000F51 12 18 D4         [24] 2012 	lcall	_write_string
                                   2013 ;	../UI_Manager/ui.c:608: write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
      000F54 75 82 04         [24] 2014 	mov	dpl,#0x04
      000F57 12 28 BF         [24] 2015 	lcall	_get_runtime_data
      000F5A AF 82            [24] 2016 	mov	r7,dpl
      000F5C 7E 00            [12] 2017 	mov	r6,#0x00
      000F5E 75 25 05         [24] 2018 	mov	_write_number_PARM_2,#0x05
      000F61 75 26 01         [24] 2019 	mov	_write_number_PARM_3,#0x01
                                   2020 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000F64 8E 27            [24] 2021 	mov	_write_number_PARM_4,r6
      000F66 8F 82            [24] 2022 	mov	dpl,r7
      000F68 8E 83            [24] 2023 	mov	dph,r6
                                   2024 ;	../UI_Manager/ui.c:612: }
      000F6A 02 19 98         [24] 2025 	ljmp	_write_number
      000F6D                       2026 00115$:
      000F6D 22               [24] 2027 	ret
                                   2028 ;------------------------------------------------------------
                                   2029 ;Allocation info for local variables in function 'colorPage'
                                   2030 ;------------------------------------------------------------
                                   2031 ;action                    Allocated to registers r7 
                                   2032 ;index                     Allocated to registers r6 
                                   2033 ;------------------------------------------------------------
                                   2034 ;	../UI_Manager/ui.c:614: void colorPage(uint8_t action){
                                   2035 ;	-----------------------------------------
                                   2036 ;	 function colorPage
                                   2037 ;	-----------------------------------------
      000F6E                       2038 _colorPage:
      000F6E AF 82            [24] 2039 	mov	r7,dpl
                                   2040 ;	../UI_Manager/ui.c:615: uint8_t index = 0;
      000F70 7E 00            [12] 2041 	mov	r6,#0x00
                                   2042 ;	../UI_Manager/ui.c:617: switch (State)
      000F72 AD 08            [24] 2043 	mov	r5,_State
      000F74 BD 06 02         [24] 2044 	cjne	r5,#0x06,00174$
      000F77 80 0F            [24] 2045 	sjmp	00101$
      000F79                       2046 00174$:
      000F79 BD 07 02         [24] 2047 	cjne	r5,#0x07,00175$
      000F7C 80 0E            [24] 2048 	sjmp	00102$
      000F7E                       2049 00175$:
      000F7E BD 08 02         [24] 2050 	cjne	r5,#0x08,00176$
      000F81 80 0D            [24] 2051 	sjmp	00103$
      000F83                       2052 00176$:
                                   2053 ;	../UI_Manager/ui.c:619: case MANUAL_RED_STATE:
      000F83 BD 09 10         [24] 2054 	cjne	r5,#0x09,00105$
      000F86 80 0C            [24] 2055 	sjmp	00104$
      000F88                       2056 00101$:
                                   2057 ;	../UI_Manager/ui.c:620: index = RED_INDEX;
      000F88 7E 05            [12] 2058 	mov	r6,#0x05
                                   2059 ;	../UI_Manager/ui.c:621: break;
                                   2060 ;	../UI_Manager/ui.c:622: case MANUAL_GREEN_STATE:
      000F8A 80 0A            [24] 2061 	sjmp	00105$
      000F8C                       2062 00102$:
                                   2063 ;	../UI_Manager/ui.c:623: index = GREEN_INDEX;
      000F8C 7E 06            [12] 2064 	mov	r6,#0x06
                                   2065 ;	../UI_Manager/ui.c:624: break;
                                   2066 ;	../UI_Manager/ui.c:625: case MANUAL_BLUE_STATE:
      000F8E 80 06            [24] 2067 	sjmp	00105$
      000F90                       2068 00103$:
                                   2069 ;	../UI_Manager/ui.c:626: index = BLUE_INDEX;
      000F90 7E 07            [12] 2070 	mov	r6,#0x07
                                   2071 ;	../UI_Manager/ui.c:627: break;
                                   2072 ;	../UI_Manager/ui.c:628: case MANUAL_STROBE_STATE:
      000F92 80 02            [24] 2073 	sjmp	00105$
      000F94                       2074 00104$:
                                   2075 ;	../UI_Manager/ui.c:629: index = STROBE_INDEX;
      000F94 7E 08            [12] 2076 	mov	r6,#0x08
                                   2077 ;	../UI_Manager/ui.c:631: }
      000F96                       2078 00105$:
                                   2079 ;	../UI_Manager/ui.c:633: switch (action)
      000F96 BF 01 02         [24] 2080 	cjne	r7,#0x01,00178$
      000F99 80 4A            [24] 2081 	sjmp	00111$
      000F9B                       2082 00178$:
      000F9B BF 02 02         [24] 2083 	cjne	r7,#0x02,00179$
      000F9E 80 3C            [24] 2084 	sjmp	00110$
      000FA0                       2085 00179$:
      000FA0 BF 03 02         [24] 2086 	cjne	r7,#0x03,00180$
      000FA3 80 0F            [24] 2087 	sjmp	00107$
      000FA5                       2088 00180$:
      000FA5 BF 0B 02         [24] 2089 	cjne	r7,#0x0b,00181$
      000FA8 80 1E            [24] 2090 	sjmp	00109$
      000FAA                       2091 00181$:
      000FAA BF 1F 02         [24] 2092 	cjne	r7,#0x1f,00182$
      000FAD 80 05            [24] 2093 	sjmp	00107$
      000FAF                       2094 00182$:
                                   2095 ;	../UI_Manager/ui.c:636: case BUTTON_UP:
      000FAF BF 6F 3C         [24] 2096 	cjne	r7,#0x6f,00112$
      000FB2 80 14            [24] 2097 	sjmp	00109$
      000FB4                       2098 00107$:
                                   2099 ;	../UI_Manager/ui.c:637: set_runtime_data(index, INC, NULL);
      000FB4 75 67 01         [24] 2100 	mov	_set_runtime_data_PARM_2,#0x01
      000FB7 75 68 00         [24] 2101 	mov	_set_runtime_data_PARM_3,#0x00
      000FBA 8E 82            [24] 2102 	mov	dpl,r6
      000FBC C0 06            [24] 2103 	push	ar6
      000FBE 12 29 53         [24] 2104 	lcall	_set_runtime_data
      000FC1 D0 06            [24] 2105 	pop	ar6
                                   2106 ;	../UI_Manager/ui.c:638: changed = 0xFF;
      000FC3 75 0A FF         [24] 2107 	mov	_changed,#0xff
                                   2108 ;	../UI_Manager/ui.c:639: break;
                                   2109 ;	../UI_Manager/ui.c:641: case BUTTON_DOWN:
      000FC6 80 26            [24] 2110 	sjmp	00112$
      000FC8                       2111 00109$:
                                   2112 ;	../UI_Manager/ui.c:642: set_runtime_data(index, DEC, NULL);
      000FC8 75 67 02         [24] 2113 	mov	_set_runtime_data_PARM_2,#0x02
      000FCB 75 68 00         [24] 2114 	mov	_set_runtime_data_PARM_3,#0x00
      000FCE 8E 82            [24] 2115 	mov	dpl,r6
      000FD0 C0 06            [24] 2116 	push	ar6
      000FD2 12 29 53         [24] 2117 	lcall	_set_runtime_data
      000FD5 D0 06            [24] 2118 	pop	ar6
                                   2119 ;	../UI_Manager/ui.c:643: changed = 0xFF;  
      000FD7 75 0A FF         [24] 2120 	mov	_changed,#0xff
                                   2121 ;	../UI_Manager/ui.c:644: break;
                                   2122 ;	../UI_Manager/ui.c:645: case BUTTON_FUNCTION:
      000FDA 80 12            [24] 2123 	sjmp	00112$
      000FDC                       2124 00110$:
                                   2125 ;	../UI_Manager/ui.c:646: set_ui_state(INC, NULL);
      000FDC 75 17 00         [24] 2126 	mov	_set_ui_state_PARM_2,#0x00
      000FDF 75 82 01         [24] 2127 	mov	dpl,#0x01
                                   2128 ;	../UI_Manager/ui.c:647: return;
      000FE2 02 13 E2         [24] 2129 	ljmp	_set_ui_state
                                   2130 ;	../UI_Manager/ui.c:648: case BUTTON_TIMER:
      000FE5                       2131 00111$:
                                   2132 ;	../UI_Manager/ui.c:649: set_ui_state(DEC, NULL);
      000FE5 75 17 00         [24] 2133 	mov	_set_ui_state_PARM_2,#0x00
      000FE8 75 82 02         [24] 2134 	mov	dpl,#0x02
                                   2135 ;	../UI_Manager/ui.c:650: return;
      000FEB 02 13 E2         [24] 2136 	ljmp	_set_ui_state
                                   2137 ;	../UI_Manager/ui.c:651: }
      000FEE                       2138 00112$:
                                   2139 ;	../UI_Manager/ui.c:653: if(Changed){
      000FEE E5 09            [12] 2140 	mov	a,_Changed
      000FF0 60 35            [24] 2141 	jz	00114$
                                   2142 ;	../UI_Manager/ui.c:654: Changed = 0x00;
      000FF2 75 09 00         [24] 2143 	mov	_Changed,#0x00
                                   2144 ;	../UI_Manager/ui.c:655: changed = 0xFF;
      000FF5 75 0A FF         [24] 2145 	mov	_changed,#0xff
                                   2146 ;	../UI_Manager/ui.c:657: exe_command(CLEAR_DISPLAY);
      000FF8 90 80 00         [24] 2147 	mov	dptr,#0x8000
      000FFB C0 06            [24] 2148 	push	ar6
      000FFD 12 1B 27         [24] 2149 	lcall	_exe_command
                                   2150 ;	../UI_Manager/ui.c:659: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
      001000 AF 08            [24] 2151 	mov	r7,_State
      001002 74 C8            [12] 2152 	mov	a,#0xc8
      001004 2F               [12] 2153 	add	a,r7
      001005 F5 82            [12] 2154 	mov	dpl,a
      001007 12 14 76         [24] 2155 	lcall	_getString
      00100A AC 82            [24] 2156 	mov	r4,dpl
      00100C AD 83            [24] 2157 	mov	r5,dph
      00100E AF F0            [24] 2158 	mov	r7,b
      001010 75 21 10         [24] 2159 	mov	_write_string_PARM_2,#0x10
      001013 75 22 03         [24] 2160 	mov	_write_string_PARM_3,#0x03
      001016 75 23 00         [24] 2161 	mov	_write_string_PARM_4,#0x00
      001019 75 24 00         [24] 2162 	mov	_write_string_PARM_5,#0x00
      00101C 8C 82            [24] 2163 	mov	dpl,r4
      00101E 8D 83            [24] 2164 	mov	dph,r5
      001020 8F F0            [24] 2165 	mov	b,r7
      001022 12 18 D4         [24] 2166 	lcall	_write_string
      001025 D0 06            [24] 2167 	pop	ar6
      001027                       2168 00114$:
                                   2169 ;	../UI_Manager/ui.c:663: if(changed){
      001027 E5 0A            [12] 2170 	mov	a,_changed
      001029 60 55            [24] 2171 	jz	00120$
                                   2172 ;	../UI_Manager/ui.c:664: changed = 0x00;
      00102B 75 0A 00         [24] 2173 	mov	_changed,#0x00
                                   2174 ;	../UI_Manager/ui.c:666: if(get_runtime_data(index) == 0){
      00102E 8E 82            [24] 2175 	mov	dpl,r6
      001030 C0 06            [24] 2176 	push	ar6
      001032 12 28 BF         [24] 2177 	lcall	_get_runtime_data
      001035 E5 82            [12] 2178 	mov	a,dpl
      001037 D0 06            [24] 2179 	pop	ar6
                                   2180 ;	../UI_Manager/ui.c:667: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001039 70 14            [24] 2181 	jnz	00116$
      00103B 75 21 10         [24] 2182 	mov	_write_string_PARM_2,#0x10
      00103E 75 22 06         [24] 2183 	mov	_write_string_PARM_3,#0x06
      001041 75 23 01         [24] 2184 	mov	_write_string_PARM_4,#0x01
      001044 F5 24            [12] 2185 	mov	_write_string_PARM_5,a
      001046 90 30 A4         [24] 2186 	mov	dptr,#___str_23
      001049 75 F0 80         [24] 2187 	mov	b,#0x80
      00104C 02 18 D4         [24] 2188 	ljmp	_write_string
      00104F                       2189 00116$:
                                   2190 ;	../UI_Manager/ui.c:669: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      00104F 75 21 10         [24] 2191 	mov	_write_string_PARM_2,#0x10
      001052 75 22 00         [24] 2192 	mov	_write_string_PARM_3,#0x00
      001055 75 23 01         [24] 2193 	mov	_write_string_PARM_4,#0x01
      001058 75 24 00         [24] 2194 	mov	_write_string_PARM_5,#0x00
      00105B 90 30 A8         [24] 2195 	mov	dptr,#___str_24
      00105E 75 F0 80         [24] 2196 	mov	b,#0x80
      001061 C0 06            [24] 2197 	push	ar6
      001063 12 18 D4         [24] 2198 	lcall	_write_string
      001066 D0 06            [24] 2199 	pop	ar6
                                   2200 ;	../UI_Manager/ui.c:670: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
      001068 8E 82            [24] 2201 	mov	dpl,r6
      00106A 12 28 BF         [24] 2202 	lcall	_get_runtime_data
      00106D AF 82            [24] 2203 	mov	r7,dpl
      00106F 7E 00            [12] 2204 	mov	r6,#0x00
      001071 75 25 06         [24] 2205 	mov	_write_number_PARM_2,#0x06
      001074 75 26 01         [24] 2206 	mov	_write_number_PARM_3,#0x01
                                   2207 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      001077 8E 27            [24] 2208 	mov	_write_number_PARM_4,r6
      001079 8F 82            [24] 2209 	mov	dpl,r7
      00107B 8E 83            [24] 2210 	mov	dph,r6
                                   2211 ;	../UI_Manager/ui.c:673: }
      00107D 02 19 98         [24] 2212 	ljmp	_write_number
      001080                       2213 00120$:
      001080 22               [24] 2214 	ret
                                   2215 ;------------------------------------------------------------
                                   2216 ;Allocation info for local variables in function 'remotePage'
                                   2217 ;------------------------------------------------------------
                                   2218 ;action                    Allocated to registers r7 
                                   2219 ;remoteNumber              Allocated to registers r6 
                                   2220 ;index                     Allocated to registers r5 
                                   2221 ;------------------------------------------------------------
                                   2222 ;	../UI_Manager/ui.c:675: void remotePage(uint8_t action){
                                   2223 ;	-----------------------------------------
                                   2224 ;	 function remotePage
                                   2225 ;	-----------------------------------------
      001081                       2226 _remotePage:
      001081 AF 82            [24] 2227 	mov	r7,dpl
                                   2228 ;	../UI_Manager/ui.c:676: uint8_t remoteNumber = 0;
      001083 7E 00            [12] 2229 	mov	r6,#0x00
                                   2230 ;	../UI_Manager/ui.c:677: uint8_t index = 0;
      001085 7D 00            [12] 2231 	mov	r5,#0x00
                                   2232 ;	../UI_Manager/ui.c:679: switch (State)
      001087 AC 08            [24] 2233 	mov	r4,_State
      001089 BC 0A 02         [24] 2234 	cjne	r4,#0x0a,00168$
      00108C 80 0A            [24] 2235 	sjmp	00101$
      00108E                       2236 00168$:
      00108E BC 0B 02         [24] 2237 	cjne	r4,#0x0b,00169$
      001091 80 0B            [24] 2238 	sjmp	00102$
      001093                       2239 00169$:
                                   2240 ;	../UI_Manager/ui.c:681: case MANUAL_REMOTE_ACTION_4_STATE:
      001093 BC 0C 12         [24] 2241 	cjne	r4,#0x0c,00104$
      001096 80 0C            [24] 2242 	sjmp	00103$
      001098                       2243 00101$:
                                   2244 ;	../UI_Manager/ui.c:682: index = R4_INDEX;
      001098 7D 09            [12] 2245 	mov	r5,#0x09
                                   2246 ;	../UI_Manager/ui.c:683: remoteNumber = 4;
      00109A 7E 04            [12] 2247 	mov	r6,#0x04
                                   2248 ;	../UI_Manager/ui.c:684: break;
                                   2249 ;	../UI_Manager/ui.c:685: case MANUAL_REMOTE_ACTION_5_STATE:
      00109C 80 0A            [24] 2250 	sjmp	00104$
      00109E                       2251 00102$:
                                   2252 ;	../UI_Manager/ui.c:686: index = R5_INDEX;
      00109E 7D 0A            [12] 2253 	mov	r5,#0x0a
                                   2254 ;	../UI_Manager/ui.c:687: remoteNumber = 5;
      0010A0 7E 05            [12] 2255 	mov	r6,#0x05
                                   2256 ;	../UI_Manager/ui.c:688: break;
                                   2257 ;	../UI_Manager/ui.c:689: case MANUAL_REMOTE_ACTION_6_STATE:
      0010A2 80 04            [24] 2258 	sjmp	00104$
      0010A4                       2259 00103$:
                                   2260 ;	../UI_Manager/ui.c:690: index = R6_INDEX;
      0010A4 7D 0B            [12] 2261 	mov	r5,#0x0b
                                   2262 ;	../UI_Manager/ui.c:691: remoteNumber = 6;
      0010A6 7E 06            [12] 2263 	mov	r6,#0x06
                                   2264 ;	../UI_Manager/ui.c:693: }
      0010A8                       2265 00104$:
                                   2266 ;	../UI_Manager/ui.c:695: switch (action)
      0010A8 BF 01 02         [24] 2267 	cjne	r7,#0x01,00171$
      0010AB 80 48            [24] 2268 	sjmp	00108$
      0010AD                       2269 00171$:
      0010AD BF 02 02         [24] 2270 	cjne	r7,#0x02,00172$
      0010B0 80 3A            [24] 2271 	sjmp	00107$
      0010B2                       2272 00172$:
      0010B2 BF 03 02         [24] 2273 	cjne	r7,#0x03,00173$
      0010B5 80 05            [24] 2274 	sjmp	00105$
      0010B7                       2275 00173$:
                                   2276 ;	../UI_Manager/ui.c:697: case BUTTON_UP:
      0010B7 BF 0B 44         [24] 2277 	cjne	r7,#0x0b,00109$
      0010BA 80 18            [24] 2278 	sjmp	00106$
      0010BC                       2279 00105$:
                                   2280 ;	../UI_Manager/ui.c:698: set_runtime_data(index, INC, NULL);
      0010BC 75 67 01         [24] 2281 	mov	_set_runtime_data_PARM_2,#0x01
      0010BF 75 68 00         [24] 2282 	mov	_set_runtime_data_PARM_3,#0x00
      0010C2 8D 82            [24] 2283 	mov	dpl,r5
      0010C4 C0 06            [24] 2284 	push	ar6
      0010C6 C0 05            [24] 2285 	push	ar5
      0010C8 12 29 53         [24] 2286 	lcall	_set_runtime_data
      0010CB D0 05            [24] 2287 	pop	ar5
      0010CD D0 06            [24] 2288 	pop	ar6
                                   2289 ;	../UI_Manager/ui.c:699: changed = 0xFF;
      0010CF 75 0A FF         [24] 2290 	mov	_changed,#0xff
                                   2291 ;	../UI_Manager/ui.c:700: break;
                                   2292 ;	../UI_Manager/ui.c:701: case BUTTON_DOWN:
      0010D2 80 2A            [24] 2293 	sjmp	00109$
      0010D4                       2294 00106$:
                                   2295 ;	../UI_Manager/ui.c:702: set_runtime_data(index, DEC, NULL);
      0010D4 75 67 02         [24] 2296 	mov	_set_runtime_data_PARM_2,#0x02
      0010D7 75 68 00         [24] 2297 	mov	_set_runtime_data_PARM_3,#0x00
      0010DA 8D 82            [24] 2298 	mov	dpl,r5
      0010DC C0 06            [24] 2299 	push	ar6
      0010DE C0 05            [24] 2300 	push	ar5
      0010E0 12 29 53         [24] 2301 	lcall	_set_runtime_data
      0010E3 D0 05            [24] 2302 	pop	ar5
      0010E5 D0 06            [24] 2303 	pop	ar6
                                   2304 ;	../UI_Manager/ui.c:703: changed = 0xFF;  
      0010E7 75 0A FF         [24] 2305 	mov	_changed,#0xff
                                   2306 ;	../UI_Manager/ui.c:704: break;
                                   2307 ;	../UI_Manager/ui.c:705: case BUTTON_FUNCTION:
      0010EA 80 12            [24] 2308 	sjmp	00109$
      0010EC                       2309 00107$:
                                   2310 ;	../UI_Manager/ui.c:706: set_ui_state(INC, NULL);
      0010EC 75 17 00         [24] 2311 	mov	_set_ui_state_PARM_2,#0x00
      0010EF 75 82 01         [24] 2312 	mov	dpl,#0x01
                                   2313 ;	../UI_Manager/ui.c:707: return;
      0010F2 02 13 E2         [24] 2314 	ljmp	_set_ui_state
                                   2315 ;	../UI_Manager/ui.c:708: case BUTTON_TIMER:
      0010F5                       2316 00108$:
                                   2317 ;	../UI_Manager/ui.c:709: set_ui_state(DEC, NULL);
      0010F5 75 17 00         [24] 2318 	mov	_set_ui_state_PARM_2,#0x00
      0010F8 75 82 02         [24] 2319 	mov	dpl,#0x02
                                   2320 ;	../UI_Manager/ui.c:710: return;
      0010FB 02 13 E2         [24] 2321 	ljmp	_set_ui_state
                                   2322 ;	../UI_Manager/ui.c:711: }
      0010FE                       2323 00109$:
                                   2324 ;	../UI_Manager/ui.c:713: if(Changed){
      0010FE E5 09            [12] 2325 	mov	a,_Changed
      001100 60 6C            [24] 2326 	jz	00115$
                                   2327 ;	../UI_Manager/ui.c:714: Changed = 0x00;
      001102 75 09 00         [24] 2328 	mov	_Changed,#0x00
                                   2329 ;	../UI_Manager/ui.c:715: changed = 0xFF;
      001105 75 0A FF         [24] 2330 	mov	_changed,#0xff
                                   2331 ;	../UI_Manager/ui.c:717: exe_command(CLEAR_DISPLAY);
      001108 90 80 00         [24] 2332 	mov	dptr,#0x8000
      00110B C0 06            [24] 2333 	push	ar6
      00110D C0 05            [24] 2334 	push	ar5
      00110F 12 1B 27         [24] 2335 	lcall	_exe_command
                                   2336 ;	../UI_Manager/ui.c:719: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
      001112 75 21 10         [24] 2337 	mov	_write_string_PARM_2,#0x10
      001115 75 22 01         [24] 2338 	mov	_write_string_PARM_3,#0x01
      001118 75 23 00         [24] 2339 	mov	_write_string_PARM_4,#0x00
      00111B 75 24 00         [24] 2340 	mov	_write_string_PARM_5,#0x00
      00111E 90 30 A9         [24] 2341 	mov	dptr,#___str_25
      001121 75 F0 80         [24] 2342 	mov	b,#0x80
      001124 12 18 D4         [24] 2343 	lcall	_write_string
      001127 D0 05            [24] 2344 	pop	ar5
      001129 D0 06            [24] 2345 	pop	ar6
                                   2346 ;	../UI_Manager/ui.c:720: switch (remoteNumber)
      00112B BE 04 02         [24] 2347 	cjne	r6,#0x04,00176$
      00112E 80 0A            [24] 2348 	sjmp	00110$
      001130                       2349 00176$:
      001130 BE 05 02         [24] 2350 	cjne	r6,#0x05,00177$
      001133 80 17            [24] 2351 	sjmp	00111$
      001135                       2352 00177$:
                                   2353 ;	../UI_Manager/ui.c:722: case 4:
      001135 BE 06 36         [24] 2354 	cjne	r6,#0x06,00115$
      001138 80 24            [24] 2355 	sjmp	00112$
      00113A                       2356 00110$:
                                   2357 ;	../UI_Manager/ui.c:723: write_char(CHAR_4, 8, LINE_0);
      00113A 75 2B 08         [24] 2358 	mov	_write_char_PARM_2,#0x08
      00113D 75 2C 00         [24] 2359 	mov	_write_char_PARM_3,#0x00
      001140 75 82 2C         [24] 2360 	mov	dpl,#0x2c
      001143 C0 05            [24] 2361 	push	ar5
      001145 12 1A F2         [24] 2362 	lcall	_write_char
      001148 D0 05            [24] 2363 	pop	ar5
                                   2364 ;	../UI_Manager/ui.c:724: break;
                                   2365 ;	../UI_Manager/ui.c:725: case 5:
      00114A 80 22            [24] 2366 	sjmp	00115$
      00114C                       2367 00111$:
                                   2368 ;	../UI_Manager/ui.c:726: write_char(CHAR_5, 8, LINE_0);
      00114C 75 2B 08         [24] 2369 	mov	_write_char_PARM_2,#0x08
      00114F 75 2C 00         [24] 2370 	mov	_write_char_PARM_3,#0x00
      001152 75 82 AC         [24] 2371 	mov	dpl,#0xac
      001155 C0 05            [24] 2372 	push	ar5
      001157 12 1A F2         [24] 2373 	lcall	_write_char
      00115A D0 05            [24] 2374 	pop	ar5
                                   2375 ;	../UI_Manager/ui.c:727: break;
                                   2376 ;	../UI_Manager/ui.c:728: case 6:
      00115C 80 10            [24] 2377 	sjmp	00115$
      00115E                       2378 00112$:
                                   2379 ;	../UI_Manager/ui.c:729: write_char(CHAR_6, 8, LINE_0);
      00115E 75 2B 08         [24] 2380 	mov	_write_char_PARM_2,#0x08
      001161 75 2C 00         [24] 2381 	mov	_write_char_PARM_3,#0x00
      001164 75 82 6C         [24] 2382 	mov	dpl,#0x6c
      001167 C0 05            [24] 2383 	push	ar5
      001169 12 1A F2         [24] 2384 	lcall	_write_char
      00116C D0 05            [24] 2385 	pop	ar5
                                   2386 ;	../UI_Manager/ui.c:731: }
      00116E                       2387 00115$:
                                   2388 ;	../UI_Manager/ui.c:734: if(changed){
      00116E E5 0A            [12] 2389 	mov	a,_changed
      001170 60 2D            [24] 2390 	jz	00118$
                                   2391 ;	../UI_Manager/ui.c:735: changed = 0x00;
      001172 75 0A 00         [24] 2392 	mov	_changed,#0x00
                                   2393 ;	../UI_Manager/ui.c:736: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
      001175 8D 82            [24] 2394 	mov	dpl,r5
      001177 12 28 BF         [24] 2395 	lcall	_get_runtime_data
      00117A AF 82            [24] 2396 	mov	r7,dpl
      00117C 74 3C            [12] 2397 	mov	a,#0x3c
      00117E 2F               [12] 2398 	add	a,r7
      00117F F5 82            [12] 2399 	mov	dpl,a
      001181 12 14 76         [24] 2400 	lcall	_getString
      001184 AD 82            [24] 2401 	mov	r5,dpl
      001186 AE 83            [24] 2402 	mov	r6,dph
      001188 AF F0            [24] 2403 	mov	r7,b
      00118A 75 21 10         [24] 2404 	mov	_write_string_PARM_2,#0x10
      00118D 75 22 02         [24] 2405 	mov	_write_string_PARM_3,#0x02
      001190 75 23 01         [24] 2406 	mov	_write_string_PARM_4,#0x01
      001193 75 24 00         [24] 2407 	mov	_write_string_PARM_5,#0x00
      001196 8D 82            [24] 2408 	mov	dpl,r5
      001198 8E 83            [24] 2409 	mov	dph,r6
      00119A 8F F0            [24] 2410 	mov	b,r7
                                   2411 ;	../UI_Manager/ui.c:738: }
      00119C 02 18 D4         [24] 2412 	ljmp	_write_string
      00119F                       2413 00118$:
      00119F 22               [24] 2414 	ret
                                   2415 ;------------------------------------------------------------
                                   2416 ;Allocation info for local variables in function 'saveLoadPage'
                                   2417 ;------------------------------------------------------------
                                   2418 ;slot                      Allocated with name '_saveLoadPage_slot_65536_141'
                                   2419 ;action                    Allocated to registers r7 
                                   2420 ;------------------------------------------------------------
                                   2421 ;	../UI_Manager/ui.c:740: void saveLoadPage(uint8_t action){
                                   2422 ;	-----------------------------------------
                                   2423 ;	 function saveLoadPage
                                   2424 ;	-----------------------------------------
      0011A0                       2425 _saveLoadPage:
      0011A0 AF 82            [24] 2426 	mov	r7,dpl
                                   2427 ;	../UI_Manager/ui.c:743: switch (action)
      0011A2 BF 01 03         [24] 2428 	cjne	r7,#0x01,00161$
      0011A5 02 12 3F         [24] 2429 	ljmp	00108$
      0011A8                       2430 00161$:
      0011A8 BF 02 03         [24] 2431 	cjne	r7,#0x02,00162$
      0011AB 02 12 36         [24] 2432 	ljmp	00107$
      0011AE                       2433 00162$:
      0011AE BF 03 03         [24] 2434 	cjne	r7,#0x03,00163$
      0011B1 02 12 28         [24] 2435 	ljmp	00105$
      0011B4                       2436 00163$:
      0011B4 BF 0B 03         [24] 2437 	cjne	r7,#0x0b,00164$
      0011B7 02 12 2F         [24] 2438 	ljmp	00106$
      0011BA                       2439 00164$:
      0011BA BF 1E 02         [24] 2440 	cjne	r7,#0x1e,00165$
      0011BD 80 03            [24] 2441 	sjmp	00166$
      0011BF                       2442 00165$:
      0011BF 02 12 48         [24] 2443 	ljmp	00109$
      0011C2                       2444 00166$:
                                   2445 ;	../UI_Manager/ui.c:746: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
      0011C2 75 F0 03         [24] 2446 	mov	b,#0x03
      0011C5 E5 16            [12] 2447 	mov	a,_saveLoadPage_slot_65536_141
      0011C7 84               [48] 2448 	div	ab
      0011C8 AF F0            [24] 2449 	mov	r7,b
      0011CA 74 0D            [12] 2450 	mov	a,#0x0d
      0011CC B5 08 06         [24] 2451 	cjne	a,_State,00119$
      0011CF 7D 01            [12] 2452 	mov	r5,#0x01
      0011D1 7E 00            [12] 2453 	mov	r6,#0x00
      0011D3 80 04            [24] 2454 	sjmp	00120$
      0011D5                       2455 00119$:
      0011D5 7D 00            [12] 2456 	mov	r5,#0x00
      0011D7 7E 00            [12] 2457 	mov	r6,#0x00
      0011D9                       2458 00120$:
      0011D9 8D 74            [24] 2459 	mov	_save_load_settings_PARM_2,r5
      0011DB 8F 82            [24] 2460 	mov	dpl,r7
      0011DD 12 28 69         [24] 2461 	lcall	_save_load_settings
                                   2462 ;	../UI_Manager/ui.c:747: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
      0011E0 75 21 10         [24] 2463 	mov	_write_string_PARM_2,#0x10
      0011E3 75 22 00         [24] 2464 	mov	_write_string_PARM_3,#0x00
      0011E6 75 23 01         [24] 2465 	mov	_write_string_PARM_4,#0x01
      0011E9 75 24 00         [24] 2466 	mov	_write_string_PARM_5,#0x00
      0011EC 90 30 A8         [24] 2467 	mov	dptr,#___str_24
      0011EF 75 F0 80         [24] 2468 	mov	b,#0x80
      0011F2 12 18 D4         [24] 2469 	lcall	_write_string
                                   2470 ;	../UI_Manager/ui.c:749: if(State == MANUAL_SAVE_SETTINGS_STATE){
      0011F5 74 0D            [12] 2471 	mov	a,#0x0d
      0011F7 B5 08 17         [24] 2472 	cjne	a,_State,00103$
                                   2473 ;	../UI_Manager/ui.c:750: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      0011FA 75 21 10         [24] 2474 	mov	_write_string_PARM_2,#0x10
      0011FD 75 22 06         [24] 2475 	mov	_write_string_PARM_3,#0x06
      001200 75 23 01         [24] 2476 	mov	_write_string_PARM_4,#0x01
      001203 75 24 00         [24] 2477 	mov	_write_string_PARM_5,#0x00
      001206 90 30 B9         [24] 2478 	mov	dptr,#___str_26
      001209 75 F0 80         [24] 2479 	mov	b,#0x80
      00120C 12 18 D4         [24] 2480 	lcall	_write_string
      00120F 80 37            [24] 2481 	sjmp	00109$
      001211                       2482 00103$:
                                   2483 ;	../UI_Manager/ui.c:752: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001211 75 21 10         [24] 2484 	mov	_write_string_PARM_2,#0x10
      001214 75 22 06         [24] 2485 	mov	_write_string_PARM_3,#0x06
      001217 75 23 01         [24] 2486 	mov	_write_string_PARM_4,#0x01
      00121A 75 24 00         [24] 2487 	mov	_write_string_PARM_5,#0x00
      00121D 90 30 C0         [24] 2488 	mov	dptr,#___str_27
      001220 75 F0 80         [24] 2489 	mov	b,#0x80
      001223 12 18 D4         [24] 2490 	lcall	_write_string
                                   2491 ;	../UI_Manager/ui.c:754: break;
                                   2492 ;	../UI_Manager/ui.c:755: case BUTTON_UP:
      001226 80 20            [24] 2493 	sjmp	00109$
      001228                       2494 00105$:
                                   2495 ;	../UI_Manager/ui.c:756: slot++;
      001228 05 16            [12] 2496 	inc	_saveLoadPage_slot_65536_141
                                   2497 ;	../UI_Manager/ui.c:757: changed = 0xFF;
      00122A 75 0A FF         [24] 2498 	mov	_changed,#0xff
                                   2499 ;	../UI_Manager/ui.c:758: break;
                                   2500 ;	../UI_Manager/ui.c:759: case BUTTON_DOWN:
      00122D 80 19            [24] 2501 	sjmp	00109$
      00122F                       2502 00106$:
                                   2503 ;	../UI_Manager/ui.c:760: slot--;
      00122F 15 16            [12] 2504 	dec	_saveLoadPage_slot_65536_141
                                   2505 ;	../UI_Manager/ui.c:761: changed = 0xFF;  
      001231 75 0A FF         [24] 2506 	mov	_changed,#0xff
                                   2507 ;	../UI_Manager/ui.c:762: break;
                                   2508 ;	../UI_Manager/ui.c:763: case BUTTON_FUNCTION:
      001234 80 12            [24] 2509 	sjmp	00109$
      001236                       2510 00107$:
                                   2511 ;	../UI_Manager/ui.c:764: set_ui_state(INC, NULL);
      001236 75 17 00         [24] 2512 	mov	_set_ui_state_PARM_2,#0x00
      001239 75 82 01         [24] 2513 	mov	dpl,#0x01
                                   2514 ;	../UI_Manager/ui.c:765: return;
      00123C 02 13 E2         [24] 2515 	ljmp	_set_ui_state
                                   2516 ;	../UI_Manager/ui.c:766: case BUTTON_TIMER:
      00123F                       2517 00108$:
                                   2518 ;	../UI_Manager/ui.c:767: set_ui_state(DEC, NULL);
      00123F 75 17 00         [24] 2519 	mov	_set_ui_state_PARM_2,#0x00
      001242 75 82 02         [24] 2520 	mov	dpl,#0x02
                                   2521 ;	../UI_Manager/ui.c:768: return;
      001245 02 13 E2         [24] 2522 	ljmp	_set_ui_state
                                   2523 ;	../UI_Manager/ui.c:769: }
      001248                       2524 00109$:
                                   2525 ;	../UI_Manager/ui.c:771: if(Changed){
      001248 E5 09            [12] 2526 	mov	a,_Changed
      00124A 60 3D            [24] 2527 	jz	00114$
                                   2528 ;	../UI_Manager/ui.c:772: Changed = 0x00;
      00124C 75 09 00         [24] 2529 	mov	_Changed,#0x00
                                   2530 ;	../UI_Manager/ui.c:773: changed = 0xFF;
      00124F 75 0A FF         [24] 2531 	mov	_changed,#0xff
                                   2532 ;	../UI_Manager/ui.c:775: exe_command(CLEAR_DISPLAY);
      001252 90 80 00         [24] 2533 	mov	dptr,#0x8000
      001255 12 1B 27         [24] 2534 	lcall	_exe_command
                                   2535 ;	../UI_Manager/ui.c:777: if(State == MANUAL_SAVE_SETTINGS_STATE){
      001258 74 0D            [12] 2536 	mov	a,#0x0d
      00125A B5 08 17         [24] 2537 	cjne	a,_State,00111$
                                   2538 ;	../UI_Manager/ui.c:778: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
      00125D 75 21 0E         [24] 2539 	mov	_write_string_PARM_2,#0x0e
      001260 75 22 02         [24] 2540 	mov	_write_string_PARM_3,#0x02
      001263 75 23 00         [24] 2541 	mov	_write_string_PARM_4,#0x00
      001266 75 24 00         [24] 2542 	mov	_write_string_PARM_5,#0x00
      001269 90 30 C8         [24] 2543 	mov	dptr,#___str_28
      00126C 75 F0 80         [24] 2544 	mov	b,#0x80
      00126F 12 18 D4         [24] 2545 	lcall	_write_string
      001272 80 15            [24] 2546 	sjmp	00114$
      001274                       2547 00111$:
                                   2548 ;	../UI_Manager/ui.c:780: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
      001274 75 21 0E         [24] 2549 	mov	_write_string_PARM_2,#0x0e
      001277 75 22 02         [24] 2550 	mov	_write_string_PARM_3,#0x02
      00127A 75 23 00         [24] 2551 	mov	_write_string_PARM_4,#0x00
      00127D 75 24 00         [24] 2552 	mov	_write_string_PARM_5,#0x00
      001280 90 30 D6         [24] 2553 	mov	dptr,#___str_29
      001283 75 F0 80         [24] 2554 	mov	b,#0x80
      001286 12 18 D4         [24] 2555 	lcall	_write_string
      001289                       2556 00114$:
                                   2557 ;	../UI_Manager/ui.c:785: if(changed){
      001289 E5 0A            [12] 2558 	mov	a,_changed
      00128B 60 2E            [24] 2559 	jz	00117$
                                   2560 ;	../UI_Manager/ui.c:786: changed = 0x00;
      00128D 75 0A 00         [24] 2561 	mov	_changed,#0x00
                                   2562 ;	../UI_Manager/ui.c:787: write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
      001290 75 F0 03         [24] 2563 	mov	b,#0x03
      001293 E5 16            [12] 2564 	mov	a,_saveLoadPage_slot_65536_141
      001295 84               [48] 2565 	div	ab
      001296 AF F0            [24] 2566 	mov	r7,b
      001298 74 50            [12] 2567 	mov	a,#0x50
      00129A 2F               [12] 2568 	add	a,r7
      00129B F5 82            [12] 2569 	mov	dpl,a
      00129D 12 14 76         [24] 2570 	lcall	_getString
      0012A0 AD 82            [24] 2571 	mov	r5,dpl
      0012A2 AE 83            [24] 2572 	mov	r6,dph
      0012A4 AF F0            [24] 2573 	mov	r7,b
      0012A6 75 21 10         [24] 2574 	mov	_write_string_PARM_2,#0x10
      0012A9 75 22 04         [24] 2575 	mov	_write_string_PARM_3,#0x04
      0012AC 75 23 01         [24] 2576 	mov	_write_string_PARM_4,#0x01
      0012AF 75 24 00         [24] 2577 	mov	_write_string_PARM_5,#0x00
      0012B2 8D 82            [24] 2578 	mov	dpl,r5
      0012B4 8E 83            [24] 2579 	mov	dph,r6
      0012B6 8F F0            [24] 2580 	mov	b,r7
                                   2581 ;	../UI_Manager/ui.c:790: }
      0012B8 02 18 D4         [24] 2582 	ljmp	_write_string
      0012BB                       2583 00117$:
      0012BB 22               [24] 2584 	ret
                                   2585 ;------------------------------------------------------------
                                   2586 ;Allocation info for local variables in function 'dmxAddressPage'
                                   2587 ;------------------------------------------------------------
                                   2588 ;action                    Allocated to registers r7 
                                   2589 ;------------------------------------------------------------
                                   2590 ;	../UI_Manager/ui.c:792: void dmxAddressPage(uint8_t action){
                                   2591 ;	-----------------------------------------
                                   2592 ;	 function dmxAddressPage
                                   2593 ;	-----------------------------------------
      0012BC                       2594 _dmxAddressPage:
      0012BC AF 82            [24] 2595 	mov	r7,dpl
                                   2596 ;	../UI_Manager/ui.c:794: switch (action)
      0012BE BF 01 02         [24] 2597 	cjne	r7,#0x01,00146$
      0012C1 80 38            [24] 2598 	sjmp	00106$
      0012C3                       2599 00146$:
      0012C3 BF 02 02         [24] 2600 	cjne	r7,#0x02,00147$
      0012C6 80 2A            [24] 2601 	sjmp	00105$
      0012C8                       2602 00147$:
      0012C8 BF 03 02         [24] 2603 	cjne	r7,#0x03,00148$
      0012CB 80 0F            [24] 2604 	sjmp	00102$
      0012CD                       2605 00148$:
      0012CD BF 0B 02         [24] 2606 	cjne	r7,#0x0b,00149$
      0012D0 80 15            [24] 2607 	sjmp	00104$
      0012D2                       2608 00149$:
      0012D2 BF 1F 02         [24] 2609 	cjne	r7,#0x1f,00150$
      0012D5 80 05            [24] 2610 	sjmp	00102$
      0012D7                       2611 00150$:
                                   2612 ;	../UI_Manager/ui.c:797: case BUTTON_UP:
      0012D7 BF 6F 2A         [24] 2613 	cjne	r7,#0x6f,00107$
      0012DA 80 0B            [24] 2614 	sjmp	00104$
      0012DC                       2615 00102$:
                                   2616 ;	../UI_Manager/ui.c:798: set_dmx_address(INC);
      0012DC 75 82 01         [24] 2617 	mov	dpl,#0x01
      0012DF 12 29 CC         [24] 2618 	lcall	_set_dmx_address
                                   2619 ;	../UI_Manager/ui.c:799: changed = 0xFF;
      0012E2 75 0A FF         [24] 2620 	mov	_changed,#0xff
                                   2621 ;	../UI_Manager/ui.c:800: break;
                                   2622 ;	../UI_Manager/ui.c:802: case BUTTON_DOWN:
      0012E5 80 1D            [24] 2623 	sjmp	00107$
      0012E7                       2624 00104$:
                                   2625 ;	../UI_Manager/ui.c:803: set_dmx_address(DEC);
      0012E7 75 82 02         [24] 2626 	mov	dpl,#0x02
      0012EA 12 29 CC         [24] 2627 	lcall	_set_dmx_address
                                   2628 ;	../UI_Manager/ui.c:804: changed = 0xFF;  
      0012ED 75 0A FF         [24] 2629 	mov	_changed,#0xff
                                   2630 ;	../UI_Manager/ui.c:805: break;
                                   2631 ;	../UI_Manager/ui.c:806: case BUTTON_FUNCTION:
      0012F0 80 12            [24] 2632 	sjmp	00107$
      0012F2                       2633 00105$:
                                   2634 ;	../UI_Manager/ui.c:807: set_ui_state(INC, NULL);
      0012F2 75 17 00         [24] 2635 	mov	_set_ui_state_PARM_2,#0x00
      0012F5 75 82 01         [24] 2636 	mov	dpl,#0x01
                                   2637 ;	../UI_Manager/ui.c:808: return;
                                   2638 ;	../UI_Manager/ui.c:809: case BUTTON_TIMER:
      0012F8 02 13 E2         [24] 2639 	ljmp	_set_ui_state
      0012FB                       2640 00106$:
                                   2641 ;	../UI_Manager/ui.c:810: set_ui_state(DEC, NULL);
      0012FB 75 17 00         [24] 2642 	mov	_set_ui_state_PARM_2,#0x00
      0012FE 75 82 02         [24] 2643 	mov	dpl,#0x02
                                   2644 ;	../UI_Manager/ui.c:811: return;
                                   2645 ;	../UI_Manager/ui.c:812: }
      001301 02 13 E2         [24] 2646 	ljmp	_set_ui_state
      001304                       2647 00107$:
                                   2648 ;	../UI_Manager/ui.c:814: if(Changed){
      001304 E5 09            [12] 2649 	mov	a,_Changed
      001306 60 21            [24] 2650 	jz	00109$
                                   2651 ;	../UI_Manager/ui.c:815: Changed = 0x00;
      001308 75 09 00         [24] 2652 	mov	_Changed,#0x00
                                   2653 ;	../UI_Manager/ui.c:816: changed = 0xFF;
      00130B 75 0A FF         [24] 2654 	mov	_changed,#0xff
                                   2655 ;	../UI_Manager/ui.c:818: exe_command(CLEAR_DISPLAY);
      00130E 90 80 00         [24] 2656 	mov	dptr,#0x8000
      001311 12 1B 27         [24] 2657 	lcall	_exe_command
                                   2658 ;	../UI_Manager/ui.c:820: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
      001314 75 21 0C         [24] 2659 	mov	_write_string_PARM_2,#0x0c
      001317 75 22 02         [24] 2660 	mov	_write_string_PARM_3,#0x02
      00131A 75 23 00         [24] 2661 	mov	_write_string_PARM_4,#0x00
      00131D 75 24 00         [24] 2662 	mov	_write_string_PARM_5,#0x00
      001320 90 30 E4         [24] 2663 	mov	dptr,#___str_30
      001323 75 F0 80         [24] 2664 	mov	b,#0x80
      001326 12 18 D4         [24] 2665 	lcall	_write_string
      001329                       2666 00109$:
                                   2667 ;	../UI_Manager/ui.c:823: if(changed){
      001329 E5 0A            [12] 2668 	mov	a,_changed
      00132B 60 12            [24] 2669 	jz	00112$
                                   2670 ;	../UI_Manager/ui.c:824: changed = 0x00;
      00132D 75 0A 00         [24] 2671 	mov	_changed,#0x00
                                   2672 ;	../UI_Manager/ui.c:826: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      001330 12 2A 1F         [24] 2673 	lcall	_get_dmx_address
      001333 75 25 04         [24] 2674 	mov	_write_number_PARM_2,#0x04
      001336 75 26 01         [24] 2675 	mov	_write_number_PARM_3,#0x01
      001339 75 27 00         [24] 2676 	mov	_write_number_PARM_4,#0x00
                                   2677 ;	../UI_Manager/ui.c:829: }
      00133C 02 19 98         [24] 2678 	ljmp	_write_number
      00133F                       2679 00112$:
      00133F 22               [24] 2680 	ret
                                   2681 ;------------------------------------------------------------
                                   2682 ;Allocation info for local variables in function 'dmxChannelPage'
                                   2683 ;------------------------------------------------------------
                                   2684 ;action                    Allocated to registers r7 
                                   2685 ;------------------------------------------------------------
                                   2686 ;	../UI_Manager/ui.c:831: void dmxChannelPage(uint8_t action){
                                   2687 ;	-----------------------------------------
                                   2688 ;	 function dmxChannelPage
                                   2689 ;	-----------------------------------------
      001340                       2690 _dmxChannelPage:
      001340 AF 82            [24] 2691 	mov	r7,dpl
                                   2692 ;	../UI_Manager/ui.c:833: switch (action)
      001342 BF 01 02         [24] 2693 	cjne	r7,#0x01,00136$
      001345 80 3A            [24] 2694 	sjmp	00104$
      001347                       2695 00136$:
      001347 BF 02 02         [24] 2696 	cjne	r7,#0x02,00137$
      00134A 80 2C            [24] 2697 	sjmp	00103$
      00134C                       2698 00137$:
      00134C BF 03 02         [24] 2699 	cjne	r7,#0x03,00138$
      00134F 80 05            [24] 2700 	sjmp	00101$
      001351                       2701 00138$:
                                   2702 ;	../UI_Manager/ui.c:835: case BUTTON_UP:
      001351 BF 0B 36         [24] 2703 	cjne	r7,#0x0b,00105$
      001354 80 11            [24] 2704 	sjmp	00102$
      001356                       2705 00101$:
                                   2706 ;	../UI_Manager/ui.c:836: set_runtime_data(MODE_INDEX, INC, NULL);
      001356 75 67 01         [24] 2707 	mov	_set_runtime_data_PARM_2,#0x01
      001359 75 68 00         [24] 2708 	mov	_set_runtime_data_PARM_3,#0x00
      00135C 75 82 0E         [24] 2709 	mov	dpl,#0x0e
      00135F 12 29 53         [24] 2710 	lcall	_set_runtime_data
                                   2711 ;	../UI_Manager/ui.c:837: changed = 0xFF;
      001362 75 0A FF         [24] 2712 	mov	_changed,#0xff
                                   2713 ;	../UI_Manager/ui.c:838: break;
                                   2714 ;	../UI_Manager/ui.c:839: case BUTTON_DOWN:
      001365 80 23            [24] 2715 	sjmp	00105$
      001367                       2716 00102$:
                                   2717 ;	../UI_Manager/ui.c:840: set_runtime_data(MODE_INDEX, DEC, NULL);
      001367 75 67 02         [24] 2718 	mov	_set_runtime_data_PARM_2,#0x02
      00136A 75 68 00         [24] 2719 	mov	_set_runtime_data_PARM_3,#0x00
      00136D 75 82 0E         [24] 2720 	mov	dpl,#0x0e
      001370 12 29 53         [24] 2721 	lcall	_set_runtime_data
                                   2722 ;	../UI_Manager/ui.c:841: changed = 0xFF;  
      001373 75 0A FF         [24] 2723 	mov	_changed,#0xff
                                   2724 ;	../UI_Manager/ui.c:842: break;
                                   2725 ;	../UI_Manager/ui.c:843: case BUTTON_FUNCTION:
      001376 80 12            [24] 2726 	sjmp	00105$
      001378                       2727 00103$:
                                   2728 ;	../UI_Manager/ui.c:844: set_ui_state(INC, NULL);
      001378 75 17 00         [24] 2729 	mov	_set_ui_state_PARM_2,#0x00
      00137B 75 82 01         [24] 2730 	mov	dpl,#0x01
                                   2731 ;	../UI_Manager/ui.c:845: return;
                                   2732 ;	../UI_Manager/ui.c:846: case BUTTON_TIMER:
      00137E 02 13 E2         [24] 2733 	ljmp	_set_ui_state
      001381                       2734 00104$:
                                   2735 ;	../UI_Manager/ui.c:847: set_ui_state(DEC, NULL);
      001381 75 17 00         [24] 2736 	mov	_set_ui_state_PARM_2,#0x00
      001384 75 82 02         [24] 2737 	mov	dpl,#0x02
                                   2738 ;	../UI_Manager/ui.c:848: return;
                                   2739 ;	../UI_Manager/ui.c:849: }
      001387 02 13 E2         [24] 2740 	ljmp	_set_ui_state
      00138A                       2741 00105$:
                                   2742 ;	../UI_Manager/ui.c:851: if(Changed){
      00138A E5 09            [12] 2743 	mov	a,_Changed
      00138C 60 21            [24] 2744 	jz	00107$
                                   2745 ;	../UI_Manager/ui.c:852: Changed = 0x00;
      00138E 75 09 00         [24] 2746 	mov	_Changed,#0x00
                                   2747 ;	../UI_Manager/ui.c:853: changed = 0xFF;
      001391 75 0A FF         [24] 2748 	mov	_changed,#0xff
                                   2749 ;	../UI_Manager/ui.c:855: exe_command(CLEAR_DISPLAY);
      001394 90 80 00         [24] 2750 	mov	dptr,#0x8000
      001397 12 1B 27         [24] 2751 	lcall	_exe_command
                                   2752 ;	../UI_Manager/ui.c:857: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
      00139A 75 21 11         [24] 2753 	mov	_write_string_PARM_2,#0x11
      00139D 75 22 00         [24] 2754 	mov	_write_string_PARM_3,#0x00
      0013A0 75 23 00         [24] 2755 	mov	_write_string_PARM_4,#0x00
      0013A3 75 24 00         [24] 2756 	mov	_write_string_PARM_5,#0x00
      0013A6 90 30 F0         [24] 2757 	mov	dptr,#___str_31
      0013A9 75 F0 80         [24] 2758 	mov	b,#0x80
      0013AC 12 18 D4         [24] 2759 	lcall	_write_string
      0013AF                       2760 00107$:
                                   2761 ;	../UI_Manager/ui.c:860: if(changed){
      0013AF E5 0A            [12] 2762 	mov	a,_changed
      0013B1 60 2E            [24] 2763 	jz	00110$
                                   2764 ;	../UI_Manager/ui.c:861: changed = 0x00;
      0013B3 75 0A 00         [24] 2765 	mov	_changed,#0x00
                                   2766 ;	../UI_Manager/ui.c:863: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
      0013B6 75 82 0E         [24] 2767 	mov	dpl,#0x0e
      0013B9 12 28 BF         [24] 2768 	lcall	_get_runtime_data
      0013BC AF 82            [24] 2769 	mov	r7,dpl
      0013BE 74 64            [12] 2770 	mov	a,#0x64
      0013C0 2F               [12] 2771 	add	a,r7
      0013C1 F5 82            [12] 2772 	mov	dpl,a
      0013C3 12 14 76         [24] 2773 	lcall	_getString
      0013C6 AD 82            [24] 2774 	mov	r5,dpl
      0013C8 AE 83            [24] 2775 	mov	r6,dph
      0013CA AF F0            [24] 2776 	mov	r7,b
      0013CC 75 21 10         [24] 2777 	mov	_write_string_PARM_2,#0x10
      0013CF 75 22 01         [24] 2778 	mov	_write_string_PARM_3,#0x01
      0013D2 75 23 01         [24] 2779 	mov	_write_string_PARM_4,#0x01
      0013D5 75 24 00         [24] 2780 	mov	_write_string_PARM_5,#0x00
      0013D8 8D 82            [24] 2781 	mov	dpl,r5
      0013DA 8E 83            [24] 2782 	mov	dph,r6
      0013DC 8F F0            [24] 2783 	mov	b,r7
                                   2784 ;	../UI_Manager/ui.c:866: }
      0013DE 02 18 D4         [24] 2785 	ljmp	_write_string
      0013E1                       2786 00110$:
      0013E1 22               [24] 2787 	ret
                                   2788 ;------------------------------------------------------------
                                   2789 ;Allocation info for local variables in function 'set_ui_state'
                                   2790 ;------------------------------------------------------------
                                   2791 ;state                     Allocated with name '_set_ui_state_PARM_2'
                                   2792 ;inc                       Allocated to registers r7 
                                   2793 ;------------------------------------------------------------
                                   2794 ;	../UI_Manager/ui.c:868: void set_ui_state(uint8_t inc, uint8_t state){
                                   2795 ;	-----------------------------------------
                                   2796 ;	 function set_ui_state
                                   2797 ;	-----------------------------------------
      0013E2                       2798 _set_ui_state:
      0013E2 AF 82            [24] 2799 	mov	r7,dpl
                                   2800 ;	../UI_Manager/ui.c:869: Changed = CHANGE_SCREEN_X;
      0013E4 75 09 FF         [24] 2801 	mov	_Changed,#0xff
                                   2802 ;	../UI_Manager/ui.c:871: switch (inc)
      0013E7 BF 01 02         [24] 2803 	cjne	r7,#0x01,00187$
      0013EA 80 3D            [24] 2804 	sjmp	00115$
      0013EC                       2805 00187$:
      0013EC BF 02 6A         [24] 2806 	cjne	r7,#0x02,00127$
                                   2807 ;	../UI_Manager/ui.c:874: state = State;
      0013EF 85 08 17         [24] 2808 	mov	_set_ui_state_PARM_2,_State
                                   2809 ;	../UI_Manager/ui.c:875: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0013F2 75 82 10         [24] 2810 	mov	dpl,#0x10
      0013F5 12 28 BF         [24] 2811 	lcall	_get_runtime_data
      0013F8 E5 82            [12] 2812 	mov	a,dpl
      0013FA 70 17            [24] 2813 	jnz	00113$
                                   2814 ;	../UI_Manager/ui.c:876: if(state == IDLE_STATE){
      0013FC E5 17            [12] 2815 	mov	a,_set_ui_state_PARM_2
      0013FE 70 06            [24] 2816 	jnz	00105$
                                   2817 ;	../UI_Manager/ui.c:877: state = DMX_STATE_LOW;
      001400 75 17 14         [24] 2818 	mov	_set_ui_state_PARM_2,#0x14
      001403 02 14 6E         [24] 2819 	ljmp	00132$
      001406                       2820 00105$:
                                   2821 ;	../UI_Manager/ui.c:878: } else if(++state > DMX_STATE_HIGH){
      001406 05 17            [12] 2822 	inc	_set_ui_state_PARM_2
      001408 E5 17            [12] 2823 	mov	a,_set_ui_state_PARM_2
      00140A 24 EA            [12] 2824 	add	a,#0xff - 0x15
      00140C 50 60            [24] 2825 	jnc	00132$
                                   2826 ;	../UI_Manager/ui.c:879: state = IDLE_STATE;
      00140E 75 17 00         [24] 2827 	mov	_set_ui_state_PARM_2,#0x00
      001411 80 5B            [24] 2828 	sjmp	00132$
      001413                       2829 00113$:
                                   2830 ;	../UI_Manager/ui.c:882: if(state == IDLE_STATE){
      001413 E5 17            [12] 2831 	mov	a,_set_ui_state_PARM_2
      001415 70 05            [24] 2832 	jnz	00110$
                                   2833 ;	../UI_Manager/ui.c:883: state = IDLE_STATE + 1; 
      001417 75 17 01         [24] 2834 	mov	_set_ui_state_PARM_2,#0x01
      00141A 80 52            [24] 2835 	sjmp	00132$
      00141C                       2836 00110$:
                                   2837 ;	../UI_Manager/ui.c:884: } else if(++state > MANUAL_STATE_HIGH){
      00141C 05 17            [12] 2838 	inc	_set_ui_state_PARM_2
      00141E E5 17            [12] 2839 	mov	a,_set_ui_state_PARM_2
      001420 24 F1            [12] 2840 	add	a,#0xff - 0x0e
      001422 50 4A            [24] 2841 	jnc	00132$
                                   2842 ;	../UI_Manager/ui.c:885: state = IDLE_STATE;
      001424 75 17 00         [24] 2843 	mov	_set_ui_state_PARM_2,#0x00
                                   2844 ;	../UI_Manager/ui.c:888: break;
                                   2845 ;	../UI_Manager/ui.c:889: case INC:
      001427 80 45            [24] 2846 	sjmp	00132$
      001429                       2847 00115$:
                                   2848 ;	../UI_Manager/ui.c:890: state = State;
      001429 85 08 17         [24] 2849 	mov	_set_ui_state_PARM_2,_State
                                   2850 ;	../UI_Manager/ui.c:891: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00142C 75 82 10         [24] 2851 	mov	dpl,#0x10
      00142F 12 28 BF         [24] 2852 	lcall	_get_runtime_data
      001432 E5 82            [12] 2853 	mov	a,dpl
      001434 70 16            [24] 2854 	jnz	00125$
                                   2855 ;	../UI_Manager/ui.c:892: if(state == IDLE_STATE){
      001436 E5 17            [12] 2856 	mov	a,_set_ui_state_PARM_2
      001438 70 05            [24] 2857 	jnz	00119$
                                   2858 ;	../UI_Manager/ui.c:893: state = DMX_STATE_HIGH;
      00143A 75 17 15         [24] 2859 	mov	_set_ui_state_PARM_2,#0x15
      00143D 80 2F            [24] 2860 	sjmp	00132$
      00143F                       2861 00119$:
                                   2862 ;	../UI_Manager/ui.c:894: } else if(--state < DMX_STATE_LOW){
      00143F 15 17            [12] 2863 	dec	_set_ui_state_PARM_2
      001441 74 EC            [12] 2864 	mov	a,#0x100 - 0x14
      001443 25 17            [12] 2865 	add	a,_set_ui_state_PARM_2
      001445 40 27            [24] 2866 	jc	00132$
                                   2867 ;	../UI_Manager/ui.c:895: state = IDLE_STATE;
      001447 75 17 00         [24] 2868 	mov	_set_ui_state_PARM_2,#0x00
      00144A 80 22            [24] 2869 	sjmp	00132$
      00144C                       2870 00125$:
                                   2871 ;	../UI_Manager/ui.c:898: if(state == IDLE_STATE){
      00144C E5 17            [12] 2872 	mov	a,_set_ui_state_PARM_2
      00144E 70 05            [24] 2873 	jnz	00122$
                                   2874 ;	../UI_Manager/ui.c:899: state = MANUAL_STATE_HIGH; 
      001450 75 17 0E         [24] 2875 	mov	_set_ui_state_PARM_2,#0x0e
      001453 80 19            [24] 2876 	sjmp	00132$
      001455                       2877 00122$:
                                   2878 ;	../UI_Manager/ui.c:901: state--;
      001455 15 17            [12] 2879 	dec	_set_ui_state_PARM_2
                                   2880 ;	../UI_Manager/ui.c:904: break;
                                   2881 ;	../UI_Manager/ui.c:905: default: 
      001457 80 15            [24] 2882 	sjmp	00132$
      001459                       2883 00127$:
                                   2884 ;	../UI_Manager/ui.c:906: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
      001459 E5 17            [12] 2885 	mov	a,_set_ui_state_PARM_2
      00145B 24 F1            [12] 2886 	add	a,#0xff - 0x0e
      00145D 50 0C            [24] 2887 	jnc	00128$
      00145F 74 EC            [12] 2888 	mov	a,#0x100 - 0x14
      001461 25 17            [12] 2889 	add	a,_set_ui_state_PARM_2
      001463 50 09            [24] 2890 	jnc	00132$
      001465 E5 17            [12] 2891 	mov	a,_set_ui_state_PARM_2
      001467 24 EA            [12] 2892 	add	a,#0xff - 0x15
      001469 40 03            [24] 2893 	jc	00132$
      00146B                       2894 00128$:
                                   2895 ;	../UI_Manager/ui.c:907: state = IDLE_STATE;
      00146B 75 17 00         [24] 2896 	mov	_set_ui_state_PARM_2,#0x00
                                   2897 ;	../UI_Manager/ui.c:910: }
      00146E                       2898 00132$:
                                   2899 ;	../UI_Manager/ui.c:912: State = state;
      00146E 85 17 08         [24] 2900 	mov	_State,_set_ui_state_PARM_2
                                   2901 ;	../UI_Manager/ui.c:913: }
      001471 22               [24] 2902 	ret
                                   2903 ;------------------------------------------------------------
                                   2904 ;Allocation info for local variables in function 'get_ui_state'
                                   2905 ;------------------------------------------------------------
                                   2906 ;	../UI_Manager/ui.c:915: uint8_t get_ui_state(){
                                   2907 ;	-----------------------------------------
                                   2908 ;	 function get_ui_state
                                   2909 ;	-----------------------------------------
      001472                       2910 _get_ui_state:
                                   2911 ;	../UI_Manager/ui.c:916: return State;
      001472 85 08 82         [24] 2912 	mov	dpl,_State
                                   2913 ;	../UI_Manager/ui.c:917: }
      001475 22               [24] 2914 	ret
                                   2915 ;------------------------------------------------------------
                                   2916 ;Allocation info for local variables in function 'getString'
                                   2917 ;------------------------------------------------------------
                                   2918 ;index                     Allocated to registers r7 
                                   2919 ;------------------------------------------------------------
                                   2920 ;	../UI_Manager/ui.c:919: char* getString(uint8_t index){
                                   2921 ;	-----------------------------------------
                                   2922 ;	 function getString
                                   2923 ;	-----------------------------------------
      001476                       2924 _getString:
      001476 AF 82            [24] 2925 	mov	r7,dpl
                                   2926 ;	../UI_Manager/ui.c:920: switch (index)
      001478 8F 06            [24] 2927 	mov	ar6,r7
      00147A BE 00 03         [24] 2928 	cjne	r6,#0x00,00299$
      00147D 02 15 67         [24] 2929 	ljmp	00101$
      001480                       2930 00299$:
      001480 BE 01 03         [24] 2931 	cjne	r6,#0x01,00300$
      001483 02 15 6E         [24] 2932 	ljmp	00102$
      001486                       2933 00300$:
      001486 BF 02 03         [24] 2934 	cjne	r7,#0x02,00301$
      001489 02 15 75         [24] 2935 	ljmp	00103$
      00148C                       2936 00301$:
      00148C BF 14 03         [24] 2937 	cjne	r7,#0x14,00302$
      00148F 02 15 7C         [24] 2938 	ljmp	00104$
      001492                       2939 00302$:
      001492 BF 15 03         [24] 2940 	cjne	r7,#0x15,00303$
      001495 02 15 83         [24] 2941 	ljmp	00105$
      001498                       2942 00303$:
      001498 BF 16 03         [24] 2943 	cjne	r7,#0x16,00304$
      00149B 02 15 8A         [24] 2944 	ljmp	00106$
      00149E                       2945 00304$:
      00149E BF 17 03         [24] 2946 	cjne	r7,#0x17,00305$
      0014A1 02 15 91         [24] 2947 	ljmp	00107$
      0014A4                       2948 00305$:
      0014A4 BF 18 03         [24] 2949 	cjne	r7,#0x18,00306$
      0014A7 02 15 9F         [24] 2950 	ljmp	00109$
      0014AA                       2951 00306$:
      0014AA BF 19 03         [24] 2952 	cjne	r7,#0x19,00307$
      0014AD 02 15 A6         [24] 2953 	ljmp	00110$
      0014B0                       2954 00307$:
      0014B0 BF 1A 03         [24] 2955 	cjne	r7,#0x1a,00308$
      0014B3 02 15 98         [24] 2956 	ljmp	00108$
      0014B6                       2957 00308$:
      0014B6 BF 28 03         [24] 2958 	cjne	r7,#0x28,00309$
      0014B9 02 16 4E         [24] 2959 	ljmp	00134$
      0014BC                       2960 00309$:
      0014BC BF 29 03         [24] 2961 	cjne	r7,#0x29,00310$
      0014BF 02 16 55         [24] 2962 	ljmp	00135$
      0014C2                       2963 00310$:
      0014C2 BF 2A 03         [24] 2964 	cjne	r7,#0x2a,00311$
      0014C5 02 16 5C         [24] 2965 	ljmp	00136$
      0014C8                       2966 00311$:
      0014C8 BF 2B 03         [24] 2967 	cjne	r7,#0x2b,00312$
      0014CB 02 16 63         [24] 2968 	ljmp	00137$
      0014CE                       2969 00312$:
      0014CE BF 2C 03         [24] 2970 	cjne	r7,#0x2c,00313$
      0014D1 02 16 6A         [24] 2971 	ljmp	00138$
      0014D4                       2972 00313$:
      0014D4 BF 2D 03         [24] 2973 	cjne	r7,#0x2d,00314$
      0014D7 02 16 71         [24] 2974 	ljmp	00139$
      0014DA                       2975 00314$:
      0014DA BF 3C 03         [24] 2976 	cjne	r7,#0x3c,00315$
      0014DD 02 15 C9         [24] 2977 	ljmp	00115$
      0014E0                       2978 00315$:
      0014E0 BF 3D 03         [24] 2979 	cjne	r7,#0x3d,00316$
      0014E3 02 15 D0         [24] 2980 	ljmp	00116$
      0014E6                       2981 00316$:
      0014E6 BF 3E 03         [24] 2982 	cjne	r7,#0x3e,00317$
      0014E9 02 15 D7         [24] 2983 	ljmp	00117$
      0014EC                       2984 00317$:
      0014EC BF 3F 03         [24] 2985 	cjne	r7,#0x3f,00318$
      0014EF 02 15 DE         [24] 2986 	ljmp	00118$
      0014F2                       2987 00318$:
      0014F2 BF 40 03         [24] 2988 	cjne	r7,#0x40,00319$
      0014F5 02 15 E5         [24] 2989 	ljmp	00119$
      0014F8                       2990 00319$:
      0014F8 BF 41 03         [24] 2991 	cjne	r7,#0x41,00320$
      0014FB 02 15 EC         [24] 2992 	ljmp	00120$
      0014FE                       2993 00320$:
      0014FE BF 42 03         [24] 2994 	cjne	r7,#0x42,00321$
      001501 02 15 F3         [24] 2995 	ljmp	00121$
      001504                       2996 00321$:
      001504 BF 43 03         [24] 2997 	cjne	r7,#0x43,00322$
      001507 02 15 FA         [24] 2998 	ljmp	00122$
      00150A                       2999 00322$:
      00150A BF 44 03         [24] 3000 	cjne	r7,#0x44,00323$
      00150D 02 16 01         [24] 3001 	ljmp	00123$
      001510                       3002 00323$:
      001510 BF 45 03         [24] 3003 	cjne	r7,#0x45,00324$
      001513 02 16 08         [24] 3004 	ljmp	00124$
      001516                       3005 00324$:
      001516 BF 46 03         [24] 3006 	cjne	r7,#0x46,00325$
      001519 02 16 0F         [24] 3007 	ljmp	00125$
      00151C                       3008 00325$:
      00151C BF 47 03         [24] 3009 	cjne	r7,#0x47,00326$
      00151F 02 16 16         [24] 3010 	ljmp	00126$
      001522                       3011 00326$:
      001522 BF 48 03         [24] 3012 	cjne	r7,#0x48,00327$
      001525 02 16 1D         [24] 3013 	ljmp	00127$
      001528                       3014 00327$:
      001528 BF 50 03         [24] 3015 	cjne	r7,#0x50,00328$
      00152B 02 16 24         [24] 3016 	ljmp	00128$
      00152E                       3017 00328$:
      00152E BF 51 03         [24] 3018 	cjne	r7,#0x51,00329$
      001531 02 16 2B         [24] 3019 	ljmp	00129$
      001534                       3020 00329$:
      001534 BF 52 03         [24] 3021 	cjne	r7,#0x52,00330$
      001537 02 16 32         [24] 3022 	ljmp	00130$
      00153A                       3023 00330$:
      00153A BF 64 03         [24] 3024 	cjne	r7,#0x64,00331$
      00153D 02 16 39         [24] 3025 	ljmp	00131$
      001540                       3026 00331$:
      001540 BF 65 03         [24] 3027 	cjne	r7,#0x65,00332$
      001543 02 16 40         [24] 3028 	ljmp	00132$
      001546                       3029 00332$:
      001546 BF 66 03         [24] 3030 	cjne	r7,#0x66,00333$
      001549 02 16 47         [24] 3031 	ljmp	00133$
      00154C                       3032 00333$:
      00154C BF CE 03         [24] 3033 	cjne	r7,#0xce,00334$
      00154F 02 15 AD         [24] 3034 	ljmp	00111$
      001552                       3035 00334$:
      001552 BF CF 03         [24] 3036 	cjne	r7,#0xcf,00335$
      001555 02 15 B4         [24] 3037 	ljmp	00112$
      001558                       3038 00335$:
      001558 BF D0 03         [24] 3039 	cjne	r7,#0xd0,00336$
      00155B 02 15 BB         [24] 3040 	ljmp	00113$
      00155E                       3041 00336$:
      00155E BF D1 03         [24] 3042 	cjne	r7,#0xd1,00337$
      001561 02 15 C2         [24] 3043 	ljmp	00114$
      001564                       3044 00337$:
      001564 02 16 78         [24] 3045 	ljmp	00140$
                                   3046 ;	../UI_Manager/ui.c:922: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
      001567                       3047 00101$:
                                   3048 ;	../UI_Manager/ui.c:923: return "Wimpy";
      001567 90 31 01         [24] 3049 	mov	dptr,#___str_32
      00156A 75 F0 80         [24] 3050 	mov	b,#0x80
      00156D 22               [24] 3051 	ret
                                   3052 ;	../UI_Manager/ui.c:924: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
      00156E                       3053 00102$:
                                   3054 ;	../UI_Manager/ui.c:925: return "Mild";
      00156E 90 31 07         [24] 3055 	mov	dptr,#___str_33
      001571 75 F0 80         [24] 3056 	mov	b,#0x80
      001574 22               [24] 3057 	ret
                                   3058 ;	../UI_Manager/ui.c:926: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
      001575                       3059 00103$:
                                   3060 ;	../UI_Manager/ui.c:927: return "Blazin";
      001575 90 31 0C         [24] 3061 	mov	dptr,#___str_34
      001578 75 F0 80         [24] 3062 	mov	b,#0x80
      00157B 22               [24] 3063 	ret
                                   3064 ;	../UI_Manager/ui.c:929: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
      00157C                       3065 00104$:
                                   3066 ;	../UI_Manager/ui.c:930: return "Off";
      00157C 90 30 A4         [24] 3067 	mov	dptr,#___str_23
      00157F 75 F0 80         [24] 3068 	mov	b,#0x80
      001582 22               [24] 3069 	ret
                                   3070 ;	../UI_Manager/ui.c:931: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
      001583                       3071 00105$:
                                   3072 ;	../UI_Manager/ui.c:932: return "Rainbow";
      001583 90 31 13         [24] 3073 	mov	dptr,#___str_35
      001586 75 F0 80         [24] 3074 	mov	b,#0x80
      001589 22               [24] 3075 	ret
                                   3076 ;	../UI_Manager/ui.c:933: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
      00158A                       3077 00106$:
                                   3078 ;	../UI_Manager/ui.c:934: return "Fire";
      00158A 90 31 1B         [24] 3079 	mov	dptr,#___str_36
      00158D 75 F0 80         [24] 3080 	mov	b,#0x80
      001590 22               [24] 3081 	ret
                                   3082 ;	../UI_Manager/ui.c:935: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
      001591                       3083 00107$:
                                   3084 ;	../UI_Manager/ui.c:936: return "Water";
      001591 90 31 20         [24] 3085 	mov	dptr,#___str_37
      001594 75 F0 80         [24] 3086 	mov	b,#0x80
      001597 22               [24] 3087 	ret
                                   3088 ;	../UI_Manager/ui.c:937: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
      001598                       3089 00108$:
                                   3090 ;	../UI_Manager/ui.c:938: return "Storm";
      001598 90 31 26         [24] 3091 	mov	dptr,#___str_38
      00159B 75 F0 80         [24] 3092 	mov	b,#0x80
      00159E 22               [24] 3093 	ret
                                   3094 ;	../UI_Manager/ui.c:939: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
      00159F                       3095 00109$:
                                   3096 ;	../UI_Manager/ui.c:940: return "Acid";
      00159F 90 31 2C         [24] 3097 	mov	dptr,#___str_39
      0015A2 75 F0 80         [24] 3098 	mov	b,#0x80
      0015A5 22               [24] 3099 	ret
                                   3100 ;	../UI_Manager/ui.c:941: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
      0015A6                       3101 00110$:
                                   3102 ;	../UI_Manager/ui.c:942: return "Ether";
      0015A6 90 31 31         [24] 3103 	mov	dptr,#___str_40
      0015A9 75 F0 80         [24] 3104 	mov	b,#0x80
      0015AC 22               [24] 3105 	ret
                                   3106 ;	../UI_Manager/ui.c:944: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
      0015AD                       3107 00111$:
                                   3108 ;	../UI_Manager/ui.c:945: return "Red Level";
      0015AD 90 31 37         [24] 3109 	mov	dptr,#___str_41
      0015B0 75 F0 80         [24] 3110 	mov	b,#0x80
      0015B3 22               [24] 3111 	ret
                                   3112 ;	../UI_Manager/ui.c:946: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
      0015B4                       3113 00112$:
                                   3114 ;	../UI_Manager/ui.c:947: return "Green Level";
      0015B4 90 31 41         [24] 3115 	mov	dptr,#___str_42
      0015B7 75 F0 80         [24] 3116 	mov	b,#0x80
      0015BA 22               [24] 3117 	ret
                                   3118 ;	../UI_Manager/ui.c:948: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
      0015BB                       3119 00113$:
                                   3120 ;	../UI_Manager/ui.c:949: return "Blue Level";
      0015BB 90 31 4D         [24] 3121 	mov	dptr,#___str_43
      0015BE 75 F0 80         [24] 3122 	mov	b,#0x80
      0015C1 22               [24] 3123 	ret
                                   3124 ;	../UI_Manager/ui.c:950: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
      0015C2                       3125 00114$:
                                   3126 ;	../UI_Manager/ui.c:951: return "Strobe Level";
      0015C2 90 31 58         [24] 3127 	mov	dptr,#___str_44
      0015C5 75 F0 80         [24] 3128 	mov	b,#0x80
      0015C8 22               [24] 3129 	ret
                                   3130 ;	../UI_Manager/ui.c:953: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
      0015C9                       3131 00115$:
                                   3132 ;	../UI_Manager/ui.c:954: return "No Action";
      0015C9 90 31 65         [24] 3133 	mov	dptr,#___str_45
      0015CC 75 F0 80         [24] 3134 	mov	b,#0x80
      0015CF 22               [24] 3135 	ret
                                   3136 ;	../UI_Manager/ui.c:955: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      0015D0                       3137 00116$:
                                   3138 ;	../UI_Manager/ui.c:956: return "Choose Macro";
      0015D0 90 31 6F         [24] 3139 	mov	dptr,#___str_46
      0015D3 75 F0 80         [24] 3140 	mov	b,#0x80
      0015D6 22               [24] 3141 	ret
                                   3142 ;	../UI_Manager/ui.c:957: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
      0015D7                       3143 00117$:
                                   3144 ;	../UI_Manager/ui.c:958: return "Red";
      0015D7 90 31 7C         [24] 3145 	mov	dptr,#___str_47
      0015DA 75 F0 80         [24] 3146 	mov	b,#0x80
      0015DD 22               [24] 3147 	ret
                                   3148 ;	../UI_Manager/ui.c:959: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
      0015DE                       3149 00118$:
                                   3150 ;	../UI_Manager/ui.c:960: return "Yellow";
      0015DE 90 31 80         [24] 3151 	mov	dptr,#___str_48
      0015E1 75 F0 80         [24] 3152 	mov	b,#0x80
      0015E4 22               [24] 3153 	ret
                                   3154 ;	../UI_Manager/ui.c:961: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
      0015E5                       3155 00119$:
                                   3156 ;	../UI_Manager/ui.c:962: return "Green";
      0015E5 90 31 87         [24] 3157 	mov	dptr,#___str_49
      0015E8 75 F0 80         [24] 3158 	mov	b,#0x80
      0015EB 22               [24] 3159 	ret
                                   3160 ;	../UI_Manager/ui.c:963: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
      0015EC                       3161 00120$:
                                   3162 ;	../UI_Manager/ui.c:964: return "Cyan";
      0015EC 90 31 8D         [24] 3163 	mov	dptr,#___str_50
      0015EF 75 F0 80         [24] 3164 	mov	b,#0x80
      0015F2 22               [24] 3165 	ret
                                   3166 ;	../UI_Manager/ui.c:965: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
      0015F3                       3167 00121$:
                                   3168 ;	../UI_Manager/ui.c:966: return "Blue";
      0015F3 90 31 92         [24] 3169 	mov	dptr,#___str_51
      0015F6 75 F0 80         [24] 3170 	mov	b,#0x80
      0015F9 22               [24] 3171 	ret
                                   3172 ;	../UI_Manager/ui.c:967: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
      0015FA                       3173 00122$:
                                   3174 ;	../UI_Manager/ui.c:968: return "Magenta";
      0015FA 90 31 97         [24] 3175 	mov	dptr,#___str_52
      0015FD 75 F0 80         [24] 3176 	mov	b,#0x80
      001600 22               [24] 3177 	ret
                                   3178 ;	../UI_Manager/ui.c:969: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
      001601                       3179 00123$:
                                   3180 ;	../UI_Manager/ui.c:970: return "Strobe Slow";
      001601 90 31 9F         [24] 3181 	mov	dptr,#___str_53
      001604 75 F0 80         [24] 3182 	mov	b,#0x80
      001607 22               [24] 3183 	ret
                                   3184 ;	../UI_Manager/ui.c:971: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      001608                       3185 00124$:
                                   3186 ;	../UI_Manager/ui.c:972: return "Strobe Medium";
      001608 90 31 AB         [24] 3187 	mov	dptr,#___str_54
      00160B 75 F0 80         [24] 3188 	mov	b,#0x80
      00160E 22               [24] 3189 	ret
                                   3190 ;	../UI_Manager/ui.c:973: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
      00160F                       3191 00125$:
                                   3192 ;	../UI_Manager/ui.c:974: return "Strobe Fast";
      00160F 90 31 B9         [24] 3193 	mov	dptr,#___str_55
      001612 75 F0 80         [24] 3194 	mov	b,#0x80
      001615 22               [24] 3195 	ret
                                   3196 ;	../UI_Manager/ui.c:975: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
      001616                       3197 00126$:
                                   3198 ;	../UI_Manager/ui.c:976: return "Blackout";
      001616 90 31 C5         [24] 3199 	mov	dptr,#___str_56
      001619 75 F0 80         [24] 3200 	mov	b,#0x80
      00161C 22               [24] 3201 	ret
                                   3202 ;	../UI_Manager/ui.c:977: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
      00161D                       3203 00127$:
                                   3204 ;	../UI_Manager/ui.c:978: return "Whiteout";         
      00161D 90 31 CE         [24] 3205 	mov	dptr,#___str_57
      001620 75 F0 80         [24] 3206 	mov	b,#0x80
      001623 22               [24] 3207 	ret
                                   3208 ;	../UI_Manager/ui.c:980: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
      001624                       3209 00128$:
                                   3210 ;	../UI_Manager/ui.c:981: return "Slot 1";   
      001624 90 31 D7         [24] 3211 	mov	dptr,#___str_58
      001627 75 F0 80         [24] 3212 	mov	b,#0x80
      00162A 22               [24] 3213 	ret
                                   3214 ;	../UI_Manager/ui.c:982: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
      00162B                       3215 00129$:
                                   3216 ;	../UI_Manager/ui.c:983: return "Slot 2";   
      00162B 90 31 DE         [24] 3217 	mov	dptr,#___str_59
      00162E 75 F0 80         [24] 3218 	mov	b,#0x80
      001631 22               [24] 3219 	ret
                                   3220 ;	../UI_Manager/ui.c:984: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
      001632                       3221 00130$:
                                   3222 ;	../UI_Manager/ui.c:985: return "Slot 3"; 
      001632 90 31 E5         [24] 3223 	mov	dptr,#___str_60
      001635 75 F0 80         [24] 3224 	mov	b,#0x80
                                   3225 ;	../UI_Manager/ui.c:987: case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
      001638 22               [24] 3226 	ret
      001639                       3227 00131$:
                                   3228 ;	../UI_Manager/ui.c:988: return "11 All";     
      001639 90 31 EC         [24] 3229 	mov	dptr,#___str_61
      00163C 75 F0 80         [24] 3230 	mov	b,#0x80
                                   3231 ;	../UI_Manager/ui.c:989: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
      00163F 22               [24] 3232 	ret
      001640                       3233 00132$:
                                   3234 ;	../UI_Manager/ui.c:990: return "3 Fog + Macro";   
      001640 90 31 F3         [24] 3235 	mov	dptr,#___str_62
      001643 75 F0 80         [24] 3236 	mov	b,#0x80
                                   3237 ;	../UI_Manager/ui.c:991: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
      001646 22               [24] 3238 	ret
      001647                       3239 00133$:
                                   3240 ;	../UI_Manager/ui.c:992: return "1 Fog";    
      001647 90 32 01         [24] 3241 	mov	dptr,#___str_63
      00164A 75 F0 80         [24] 3242 	mov	b,#0x80
                                   3243 ;	../UI_Manager/ui.c:994: case SECRET_STRING_OFFSET + 0:
      00164D 22               [24] 3244 	ret
      00164E                       3245 00134$:
                                   3246 ;	../UI_Manager/ui.c:995: return "0x486F6C6D6573";
      00164E 90 32 07         [24] 3247 	mov	dptr,#___str_64
      001651 75 F0 80         [24] 3248 	mov	b,#0x80
                                   3249 ;	../UI_Manager/ui.c:996: case SECRET_STRING_OFFSET + 1:
      001654 22               [24] 3250 	ret
      001655                       3251 00135$:
                                   3252 ;	../UI_Manager/ui.c:997: return "& 576174736F6E";
      001655 90 32 16         [24] 3253 	mov	dptr,#___str_65
      001658 75 F0 80         [24] 3254 	mov	b,#0x80
                                   3255 ;	../UI_Manager/ui.c:998: case SECRET_STRING_OFFSET + 2:
      00165B 22               [24] 3256 	ret
      00165C                       3257 00136$:
                                   3258 ;	../UI_Manager/ui.c:999: return "626F74684F776E41";
      00165C 90 32 25         [24] 3259 	mov	dptr,#___str_66
      00165F 75 F0 80         [24] 3260 	mov	b,#0x80
                                   3261 ;	../UI_Manager/ui.c:1000: case SECRET_STRING_OFFSET + 3:
      001662 22               [24] 3262 	ret
      001663                       3263 00137$:
                                   3264 ;	../UI_Manager/ui.c:1001: return "536E6F7762616C6C";
      001663 90 32 36         [24] 3265 	mov	dptr,#___str_67
      001666 75 F0 80         [24] 3266 	mov	b,#0x80
                                   3267 ;	../UI_Manager/ui.c:1002: case SECRET_STRING_OFFSET + 4:
      001669 22               [24] 3268 	ret
      00166A                       3269 00138$:
                                   3270 ;	../UI_Manager/ui.c:1003: return "4D6F726961727479";
      00166A 90 32 47         [24] 3271 	mov	dptr,#___str_68
      00166D 75 F0 80         [24] 3272 	mov	b,#0x80
                                   3273 ;	../UI_Manager/ui.c:1004: case SECRET_STRING_OFFSET + 5:
      001670 22               [24] 3274 	ret
      001671                       3275 00139$:
                                   3276 ;	../UI_Manager/ui.c:1005: return "646F65734E6F74 ;";
      001671 90 32 58         [24] 3277 	mov	dptr,#___str_69
      001674 75 F0 80         [24] 3278 	mov	b,#0x80
                                   3279 ;	../UI_Manager/ui.c:1006: }
      001677 22               [24] 3280 	ret
      001678                       3281 00140$:
                                   3282 ;	../UI_Manager/ui.c:1008: return 0;
      001678 90 00 00         [24] 3283 	mov	dptr,#0x0000
      00167B 75 F0 00         [24] 3284 	mov	b,#0x00
                                   3285 ;	../UI_Manager/ui.c:1009: }
      00167E 22               [24] 3286 	ret
                                   3287 	.area CSEG    (CODE)
                                   3288 	.area CONST   (CODE)
      002F9C                       3289 ___str_0:
      002F9C 54 61 6E 6B 20 4C 69  3290 	.ascii "Tank Lights Off"
             67 68 74 73 20 4F 66
             66
      002FAB 00                    3291 	.db 0x00
      002FAC                       3292 ___str_1:
      002FAC 54 61 6E 6B 20 4C 69  3293 	.ascii "Tank Lights On"
             67 68 74 73 20 4F 6E
      002FBA 00                    3294 	.db 0x00
      002FBB                       3295 ___str_2:
      002FBB 46 75 6E 2B 4D 61 6E  3296 	.ascii "Fun+Man to Undo"
             20 74 6F 20 55 6E 64
             6F
      002FCA 00                    3297 	.db 0x00
      002FCB                       3298 ___str_3:
      002FCB 48 65 61 74 65 72 20  3299 	.ascii "Heater Off"
             4F 66 66
      002FD5 00                    3300 	.db 0x00
      002FD6                       3301 ___str_4:
      002FD6 48 65 61 74 65 72 20  3302 	.ascii "Heater On"
             4F 6E
      002FDF 00                    3303 	.db 0x00
      002FE0                       3304 ___str_5:
      002FE0 42 75 72 73 74 2B 55  3305 	.ascii "Burst+Up to Undo"
             70 20 74 6F 20 55 6E
             64 6F
      002FF0 00                    3306 	.db 0x00
      002FF1                       3307 ___str_6:
      002FF1 41 74 6D 6F 73 46 45  3308 	.ascii "AtmosFEAR 221B"
             41 52 20 32 32 31 42
      002FFF 00                    3309 	.db 0x00
      003000                       3310 ___str_7:
      003000 42 79 20 42 6C 69 7A  3311 	.ascii "By Blizzard Pro"
             7A 61 72 64 20 50 72
             6F
      00300F 00                    3312 	.db 0x00
      003010                       3313 ___str_8:
      003010 50 43 20 4C 6F 61 64  3314 	.ascii "PC Load Letter"
             20 4C 65 74 74 65 72
      00301E 00                    3315 	.db 0x00
      00301F                       3316 ___str_9:
      00301F 42 75 72 73 74 20 74  3317 	.ascii "Burst to Refill"
             6F 20 52 65 66 69 6C
             6C
      00302E 00                    3318 	.db 0x00
      00302F                       3319 ___str_10:
      00302F 4D 61 6E 75 61 6C 20  3320 	.ascii "Manual Mode"
             4D 6F 64 65
      00303A 00                    3321 	.db 0x00
      00303B                       3322 ___str_11:
      00303B 41 64 64 72           3323 	.ascii "Addr"
      00303F 00                    3324 	.db 0x00
      003040                       3325 ___str_12:
      003040 4D 6F 64 65           3326 	.ascii "Mode"
      003044 00                    3327 	.db 0x00
      003045                       3328 ___str_13:
      003045 44 4D 58 20 4F 6B     3329 	.ascii "DMX Ok"
      00304B 00                    3330 	.db 0x00
      00304C                       3331 ___str_14:
      00304C 4E 6F 20 44 4D 58     3332 	.ascii "No DMX"
      003052 00                    3333 	.db 0x00
      003053                       3334 ___str_15:
      003053 49 6E 74 65 72 76 61  3335 	.ascii "Interval"
             6C
      00305B 00                    3336 	.db 0x00
      00305C                       3337 ___str_16:
      00305C 44 75 72 61 74 69 6F  3338 	.ascii "Duration"
             6E
      003064 00                    3339 	.db 0x00
      003065                       3340 ___str_17:
      003065 46 6F 67 20 4C 65 76  3341 	.ascii "Fog Level"
             65 6C
      00306E 00                    3342 	.db 0x00
      00306F                       3343 ___str_18:
      00306F 46 6F 67 20 49 6E 74  3344 	.ascii "Fog Interval"
             65 72 76 61 6C
      00307B 00                    3345 	.db 0x00
      00307C                       3346 ___str_19:
      00307C 53 65 63 6F 6E 64 73  3347 	.ascii "Seconds"
      003083 00                    3348 	.db 0x00
      003084                       3349 ___str_20:
      003084 46 6F 67 20 44 75 72  3350 	.ascii "Fog Duration"
             61 74 69 6F 6E
      003090 00                    3351 	.db 0x00
      003091                       3352 ___str_21:
      003091 4D 61 63 72 6F 73     3353 	.ascii "Macros"
      003097 00                    3354 	.db 0x00
      003098                       3355 ___str_22:
      003098 4D 61 63 72 6F 20 53  3356 	.ascii "Macro Speed"
             70 65 65 64
      0030A3 00                    3357 	.db 0x00
      0030A4                       3358 ___str_23:
      0030A4 4F 66 66              3359 	.ascii "Off"
      0030A7 00                    3360 	.db 0x00
      0030A8                       3361 ___str_24:
      0030A8 00                    3362 	.db 0x00
      0030A9                       3363 ___str_25:
      0030A9 52 65 6D 6F 74 65 20  3364 	.ascii "Remote X Action"
             58 20 41 63 74 69 6F
             6E
      0030B8 00                    3365 	.db 0x00
      0030B9                       3366 ___str_26:
      0030B9 53 61 76 65 64 21     3367 	.ascii "Saved!"
      0030BF 00                    3368 	.db 0x00
      0030C0                       3369 ___str_27:
      0030C0 4C 6F 61 64 65 64 21  3370 	.ascii "Loaded!"
      0030C7 00                    3371 	.db 0x00
      0030C8                       3372 ___str_28:
      0030C8 53 61 76 65 20 53 65  3373 	.ascii "Save Settings"
             74 74 69 6E 67 73
      0030D5 00                    3374 	.db 0x00
      0030D6                       3375 ___str_29:
      0030D6 4C 6F 61 64 20 53 65  3376 	.ascii "Load Settings"
             74 74 69 6E 67 73
      0030E3 00                    3377 	.db 0x00
      0030E4                       3378 ___str_30:
      0030E4 44 4D 58 20 41 64 64  3379 	.ascii "DMX Address"
             72 65 73 73
      0030EF 00                    3380 	.db 0x00
      0030F0                       3381 ___str_31:
      0030F0 44 4D 58 20 43 68 61  3382 	.ascii "DMX Channel Mode"
             6E 6E 65 6C 20 4D 6F
             64 65
      003100 00                    3383 	.db 0x00
      003101                       3384 ___str_32:
      003101 57 69 6D 70 79        3385 	.ascii "Wimpy"
      003106 00                    3386 	.db 0x00
      003107                       3387 ___str_33:
      003107 4D 69 6C 64           3388 	.ascii "Mild"
      00310B 00                    3389 	.db 0x00
      00310C                       3390 ___str_34:
      00310C 42 6C 61 7A 69 6E     3391 	.ascii "Blazin"
      003112 00                    3392 	.db 0x00
      003113                       3393 ___str_35:
      003113 52 61 69 6E 62 6F 77  3394 	.ascii "Rainbow"
      00311A 00                    3395 	.db 0x00
      00311B                       3396 ___str_36:
      00311B 46 69 72 65           3397 	.ascii "Fire"
      00311F 00                    3398 	.db 0x00
      003120                       3399 ___str_37:
      003120 57 61 74 65 72        3400 	.ascii "Water"
      003125 00                    3401 	.db 0x00
      003126                       3402 ___str_38:
      003126 53 74 6F 72 6D        3403 	.ascii "Storm"
      00312B 00                    3404 	.db 0x00
      00312C                       3405 ___str_39:
      00312C 41 63 69 64           3406 	.ascii "Acid"
      003130 00                    3407 	.db 0x00
      003131                       3408 ___str_40:
      003131 45 74 68 65 72        3409 	.ascii "Ether"
      003136 00                    3410 	.db 0x00
      003137                       3411 ___str_41:
      003137 52 65 64 20 4C 65 76  3412 	.ascii "Red Level"
             65 6C
      003140 00                    3413 	.db 0x00
      003141                       3414 ___str_42:
      003141 47 72 65 65 6E 20 4C  3415 	.ascii "Green Level"
             65 76 65 6C
      00314C 00                    3416 	.db 0x00
      00314D                       3417 ___str_43:
      00314D 42 6C 75 65 20 4C 65  3418 	.ascii "Blue Level"
             76 65 6C
      003157 00                    3419 	.db 0x00
      003158                       3420 ___str_44:
      003158 53 74 72 6F 62 65 20  3421 	.ascii "Strobe Level"
             4C 65 76 65 6C
      003164 00                    3422 	.db 0x00
      003165                       3423 ___str_45:
      003165 4E 6F 20 41 63 74 69  3424 	.ascii "No Action"
             6F 6E
      00316E 00                    3425 	.db 0x00
      00316F                       3426 ___str_46:
      00316F 43 68 6F 6F 73 65 20  3427 	.ascii "Choose Macro"
             4D 61 63 72 6F
      00317B 00                    3428 	.db 0x00
      00317C                       3429 ___str_47:
      00317C 52 65 64              3430 	.ascii "Red"
      00317F 00                    3431 	.db 0x00
      003180                       3432 ___str_48:
      003180 59 65 6C 6C 6F 77     3433 	.ascii "Yellow"
      003186 00                    3434 	.db 0x00
      003187                       3435 ___str_49:
      003187 47 72 65 65 6E        3436 	.ascii "Green"
      00318C 00                    3437 	.db 0x00
      00318D                       3438 ___str_50:
      00318D 43 79 61 6E           3439 	.ascii "Cyan"
      003191 00                    3440 	.db 0x00
      003192                       3441 ___str_51:
      003192 42 6C 75 65           3442 	.ascii "Blue"
      003196 00                    3443 	.db 0x00
      003197                       3444 ___str_52:
      003197 4D 61 67 65 6E 74 61  3445 	.ascii "Magenta"
      00319E 00                    3446 	.db 0x00
      00319F                       3447 ___str_53:
      00319F 53 74 72 6F 62 65 20  3448 	.ascii "Strobe Slow"
             53 6C 6F 77
      0031AA 00                    3449 	.db 0x00
      0031AB                       3450 ___str_54:
      0031AB 53 74 72 6F 62 65 20  3451 	.ascii "Strobe Medium"
             4D 65 64 69 75 6D
      0031B8 00                    3452 	.db 0x00
      0031B9                       3453 ___str_55:
      0031B9 53 74 72 6F 62 65 20  3454 	.ascii "Strobe Fast"
             46 61 73 74
      0031C4 00                    3455 	.db 0x00
      0031C5                       3456 ___str_56:
      0031C5 42 6C 61 63 6B 6F 75  3457 	.ascii "Blackout"
             74
      0031CD 00                    3458 	.db 0x00
      0031CE                       3459 ___str_57:
      0031CE 57 68 69 74 65 6F 75  3460 	.ascii "Whiteout"
             74
      0031D6 00                    3461 	.db 0x00
      0031D7                       3462 ___str_58:
      0031D7 53 6C 6F 74 20 31     3463 	.ascii "Slot 1"
      0031DD 00                    3464 	.db 0x00
      0031DE                       3465 ___str_59:
      0031DE 53 6C 6F 74 20 32     3466 	.ascii "Slot 2"
      0031E4 00                    3467 	.db 0x00
      0031E5                       3468 ___str_60:
      0031E5 53 6C 6F 74 20 33     3469 	.ascii "Slot 3"
      0031EB 00                    3470 	.db 0x00
      0031EC                       3471 ___str_61:
      0031EC 31 31 20 41 6C 6C     3472 	.ascii "11 All"
      0031F2 00                    3473 	.db 0x00
      0031F3                       3474 ___str_62:
      0031F3 33 20 46 6F 67 20 2B  3475 	.ascii "3 Fog + Macro"
             20 4D 61 63 72 6F
      003200 00                    3476 	.db 0x00
      003201                       3477 ___str_63:
      003201 31 20 46 6F 67        3478 	.ascii "1 Fog"
      003206 00                    3479 	.db 0x00
      003207                       3480 ___str_64:
      003207 30 78 34 38 36 46 36  3481 	.ascii "0x486F6C6D6573"
             43 36 44 36 35 37 33
      003215 00                    3482 	.db 0x00
      003216                       3483 ___str_65:
      003216 26 20 35 37 36 31 37  3484 	.ascii "& 576174736F6E"
             34 37 33 36 46 36 45
      003224 00                    3485 	.db 0x00
      003225                       3486 ___str_66:
      003225 36 32 36 46 37 34 36  3487 	.ascii "626F74684F776E41"
             38 34 46 37 37 36 45
             34 31
      003235 00                    3488 	.db 0x00
      003236                       3489 ___str_67:
      003236 35 33 36 45 36 46 37  3490 	.ascii "536E6F7762616C6C"
             37 36 32 36 31 36 43
             36 43
      003246 00                    3491 	.db 0x00
      003247                       3492 ___str_68:
      003247 34 44 36 46 37 32 36  3493 	.ascii "4D6F726961727479"
             39 36 31 37 32 37 34
             37 39
      003257 00                    3494 	.db 0x00
      003258                       3495 ___str_69:
      003258 36 34 36 46 36 35 37  3496 	.ascii "646F65734E6F74 ;"
             33 34 45 36 46 37 34
             20 3B
      003268 00                    3497 	.db 0x00
                                   3498 	.area XINIT   (CODE)
                                   3499 	.area CABS    (ABS,CODE)
