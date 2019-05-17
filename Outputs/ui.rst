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
                                     16 	.globl _power_pump
                                     17 	.globl _tick_fogger
                                     18 	.globl _set_dmx_address
                                     19 	.globl _get_dmx_address
                                     20 	.globl _set_runtime_data
                                     21 	.globl _get_runtime_data
                                     22 	.globl _save_load_settings
                                     23 	.globl _CPRL2
                                     24 	.globl _CT2
                                     25 	.globl _TR2
                                     26 	.globl _EXEN2
                                     27 	.globl _TCLK
                                     28 	.globl _RCLK
                                     29 	.globl _REN
                                     30 	.globl _SM2
                                     31 	.globl _SM1
                                     32 	.globl _SM0
                                     33 	.globl _RCK
                                     34 	.globl _SER
                                     35 	.globl _SCK
                                     36 	.globl _RI
                                     37 	.globl _ES
                                     38 	.globl _ET0
                                     39 	.globl _EA
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _P1_7
                                     57 	.globl _P1_6
                                     58 	.globl _P1_5
                                     59 	.globl _P1_4
                                     60 	.globl _P1_3
                                     61 	.globl _P1_2
                                     62 	.globl _P1_1
                                     63 	.globl _P1_0
                                     64 	.globl _P0_7
                                     65 	.globl _P0_6
                                     66 	.globl _P0_5
                                     67 	.globl _P0_4
                                     68 	.globl _P0_3
                                     69 	.globl _P0_2
                                     70 	.globl _P0_1
                                     71 	.globl _P0_0
                                     72 	.globl _IAP_ADRH
                                     73 	.globl _IAP_ADRL
                                     74 	.globl _IAPEN
                                     75 	.globl _TH0
                                     76 	.globl _TL0
                                     77 	.globl _CKCON
                                     78 	.globl _TMOD
                                     79 	.globl _TCON
                                     80 	.globl _PWMDATA17L
                                     81 	.globl _PWMDATA17H
                                     82 	.globl _PWMDATA14L
                                     83 	.globl _PWMDATA14H
                                     84 	.globl _PWMDATA11L
                                     85 	.globl _PWMDATA11H
                                     86 	.globl _PWM_EA2
                                     87 	.globl _PWM_EA1
                                     88 	.globl _SBUF
                                     89 	.globl _TL3
                                     90 	.globl _TH3
                                     91 	.globl _T2CON
                                     92 	.globl _RCAP2H
                                     93 	.globl _RCAP2L
                                     94 	.globl _SCON
                                     95 	.globl _P1_OPT
                                     96 	.globl _ADCVAL2
                                     97 	.globl _ADCVAL1
                                     98 	.globl _ADCSEL
                                     99 	.globl _EXIF
                                    100 	.globl _EIE
                                    101 	.globl _IE
                                    102 	.globl _P3
                                    103 	.globl _P2
                                    104 	.globl _P1
                                    105 	.globl _P0
                                    106 	.globl _PCLKSEL
                                    107 	.globl _CHIPCON
                                    108 	.globl _set_ui_state_PARM_2
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
      00000C                        236 _tick_ui_delay_65536_37:
      00000C                        237 	.ds 4
      000010                        238 _idlePage_timer_65536_55:
      000010                        239 	.ds 1
      000011                        240 _idlePage_intervalOrDuration_65536_55:
      000011                        241 	.ds 1
      000012                        242 _idlePage_empty_65536_55:
      000012                        243 	.ds 1
      000013                        244 _idlePage_tock_65536_55:
      000013                        245 	.ds 1
      000014                        246 _idlePage_iconChange_65536_55:
      000014                        247 	.ds 1
      000015                        248 _idlePage_playing_65536_55:
      000015                        249 	.ds 1
      000016                        250 _saveLoadPage_slot_65536_134:
      000016                        251 	.ds 1
      000017                        252 _set_ui_state_PARM_2:
      000017                        253 	.ds 1
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 	.area	OSEG    (OVR,DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; indirectly addressable internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area ISEG    (DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area IABS    (ABS,DATA)
                                    266 	.area IABS    (ABS,DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; bit data
                                    269 ;--------------------------------------------------------
                                    270 	.area BSEG    (BIT)
                                    271 ;--------------------------------------------------------
                                    272 ; paged external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area PSEG    (PAG,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XSEG    (XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XABS    (ABS,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external initialized ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XISEG   (XDATA)
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT0 (CODE)
                                    289 	.area GSINIT1 (CODE)
                                    290 	.area GSINIT2 (CODE)
                                    291 	.area GSINIT3 (CODE)
                                    292 	.area GSINIT4 (CODE)
                                    293 	.area GSINIT5 (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area CSEG    (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; global & static initialisations
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 ;------------------------------------------------------------
                                    305 ;Allocation info for local variables in function 'tick_ui'
                                    306 ;------------------------------------------------------------
                                    307 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    308 ;action                    Allocated to registers r7 
                                    309 ;ss                        Allocated to registers 
                                    310 ;delay                     Allocated with name '_tick_ui_delay_65536_37'
                                    311 ;------------------------------------------------------------
                                    312 ;	../UI_Manager/ui.c:17: static uint8_t bursting = 0;
      0000A2 75 0B 00         [24]  313 	mov	_tick_ui_bursting_65536_37,#0x00
                                    314 ;------------------------------------------------------------
                                    315 ;Allocation info for local variables in function 'idlePage'
                                    316 ;------------------------------------------------------------
                                    317 ;timer                     Allocated with name '_idlePage_timer_65536_55'
                                    318 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_55'
                                    319 ;empty                     Allocated with name '_idlePage_empty_65536_55'
                                    320 ;tock                      Allocated with name '_idlePage_tock_65536_55'
                                    321 ;iconChange                Allocated with name '_idlePage_iconChange_65536_55'
                                    322 ;playing                   Allocated with name '_idlePage_playing_65536_55'
                                    323 ;temp                      Allocated to registers r7 
                                    324 ;------------------------------------------------------------
                                    325 ;	../UI_Manager/ui.c:186: static uint8_t timer = 0;
      0000A5 75 10 00         [24]  326 	mov	_idlePage_timer_65536_55,#0x00
                                    327 ;	../UI_Manager/ui.c:188: static uint8_t empty = 0x00;
      0000A8 75 12 00         [24]  328 	mov	_idlePage_empty_65536_55,#0x00
                                    329 ;	../UI_Manager/ui.c:189: static uint8_t tock = 0x00;
      0000AB 75 13 00         [24]  330 	mov	_idlePage_tock_65536_55,#0x00
                                    331 ;	../UI_Manager/ui.c:190: static uint8_t iconChange = 0x00;
      0000AE 75 14 00         [24]  332 	mov	_idlePage_iconChange_65536_55,#0x00
                                    333 ;	../UI_Manager/ui.c:191: static uint8_t playing = PAUSE;
      0000B1 75 15 00         [24]  334 	mov	_idlePage_playing_65536_55,#0x00
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'saveLoadPage'
                                    337 ;------------------------------------------------------------
                                    338 ;slot                      Allocated with name '_saveLoadPage_slot_65536_134'
                                    339 ;action                    Allocated to registers r7 
                                    340 ;------------------------------------------------------------
                                    341 ;	../UI_Manager/ui.c:706: static uint8_t slot = 0;
      0000B4 75 16 00         [24]  342 	mov	_saveLoadPage_slot_65536_134,#0x00
                                    343 ;	../UI_Manager/ui.c:12: static volatile uint8_t State = WELCOME_STATE;
      0000B7 75 08 45         [24]  344 	mov	_State,#0x45
                                    345 ;	../UI_Manager/ui.c:13: static volatile uint8_t Changed = CHANGE_SCREEN_X;
      0000BA 75 09 FF         [24]  346 	mov	_Changed,#0xff
                                    347 ;	../UI_Manager/ui.c:14: static volatile uint8_t changed = CHANGE_SCREEN_X;
      0000BD 75 0A FF         [24]  348 	mov	_changed,#0xff
                                    349 ;--------------------------------------------------------
                                    350 ; Home
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
                                    353 	.area HOME    (CODE)
                                    354 ;--------------------------------------------------------
                                    355 ; code
                                    356 ;--------------------------------------------------------
                                    357 	.area CSEG    (CODE)
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'tick_ui'
                                    360 ;------------------------------------------------------------
                                    361 ;bursting                  Allocated with name '_tick_ui_bursting_65536_37'
                                    362 ;action                    Allocated to registers r7 
                                    363 ;ss                        Allocated to registers 
                                    364 ;delay                     Allocated with name '_tick_ui_delay_65536_37'
                                    365 ;------------------------------------------------------------
                                    366 ;	../UI_Manager/ui.c:16: void tick_ui(void){
                                    367 ;	-----------------------------------------
                                    368 ;	 function tick_ui
                                    369 ;	-----------------------------------------
      0004EB                        370 _tick_ui:
                           000007   371 	ar7 = 0x07
                           000006   372 	ar6 = 0x06
                           000005   373 	ar5 = 0x05
                           000004   374 	ar4 = 0x04
                           000003   375 	ar3 = 0x03
                           000002   376 	ar2 = 0x02
                           000001   377 	ar1 = 0x01
                           000000   378 	ar0 = 0x00
                                    379 ;	../UI_Manager/ui.c:18: uint8_t action = get_button_action();
      0004EB 12 15 CB         [24]  380 	lcall	_get_button_action
      0004EE AF 82            [24]  381 	mov	r7,dpl
                                    382 ;	../UI_Manager/ui.c:24: if(action == BUTTON_BURST || action == BUTTON_FUN_BURST){
      0004F0 E4               [12]  383 	clr	a
      0004F1 BF 05 01         [24]  384 	cjne	r7,#0x05,00387$
      0004F4 04               [12]  385 	inc	a
      0004F5                        386 00387$:
      0004F5 FE               [12]  387 	mov	r6,a
      0004F6 70 03            [24]  388 	jnz	00103$
      0004F8 BF 0B 21         [24]  389 	cjne	r7,#0x0b,00104$
      0004FB                        390 00103$:
                                    391 ;	../UI_Manager/ui.c:25: power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
      0004FB EE               [12]  392 	mov	a,r6
      0004FC 60 06            [24]  393 	jz	00166$
      0004FE 7D 02            [12]  394 	mov	r5,#0x02
      000500 7E 00            [12]  395 	mov	r6,#0x00
      000502 80 04            [24]  396 	sjmp	00167$
      000504                        397 00166$:
      000504 7D 03            [12]  398 	mov	r5,#0x03
      000506 7E 00            [12]  399 	mov	r6,#0x00
      000508                        400 00167$:
      000508 8D 82            [24]  401 	mov	dpl,r5
      00050A C0 07            [24]  402 	push	ar7
      00050C 12 2C 2C         [24]  403 	lcall	_power_pump
      00050F D0 07            [24]  404 	pop	ar7
                                    405 ;	../UI_Manager/ui.c:26: bursting |= BURSTING;
      000511 AD 0B            [24]  406 	mov	r5,_tick_ui_bursting_65536_37
      000513 7E 00            [12]  407 	mov	r6,#0x00
      000515 43 05 80         [24]  408 	orl	ar5,#0x80
      000518 8D 0B            [24]  409 	mov	_tick_ui_bursting_65536_37,r5
      00051A 80 12            [24]  410 	sjmp	00105$
      00051C                        411 00104$:
                                    412 ;	../UI_Manager/ui.c:27: } else if(bursting & BURSTING){
      00051C E5 0B            [12]  413 	mov	a,_tick_ui_bursting_65536_37
      00051E 30 E7 0D         [24]  414 	jnb	acc.7,00105$
                                    415 ;	../UI_Manager/ui.c:28: power_pump(PUMP_OFF);
      000521 75 82 00         [24]  416 	mov	dpl,#0x00
      000524 C0 07            [24]  417 	push	ar7
      000526 12 2C 2C         [24]  418 	lcall	_power_pump
      000529 D0 07            [24]  419 	pop	ar7
                                    420 ;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
      00052B 53 0B 7F         [24]  421 	anl	_tick_ui_bursting_65536_37,#0x7f
      00052E                        422 00105$:
                                    423 ;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
      00052E BF 07 34         [24]  424 	cjne	r7,#0x07,00108$
                                    425 ;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
      000531 75 82 10         [24]  426 	mov	dpl,#0x10
      000534 C0 07            [24]  427 	push	ar7
      000536 12 27 13         [24]  428 	lcall	_get_runtime_data
      000539 AE 82            [24]  429 	mov	r6,dpl
      00053B D0 07            [24]  430 	pop	ar7
      00053D BE 80 06         [24]  431 	cjne	r6,#0x80,00168$
      000540 7D 00            [12]  432 	mov	r5,#0x00
      000542 7E 00            [12]  433 	mov	r6,#0x00
      000544 80 04            [24]  434 	sjmp	00169$
      000546                        435 00168$:
      000546 7D 80            [12]  436 	mov	r5,#0x80
      000548 7E 00            [12]  437 	mov	r6,#0x00
      00054A                        438 00169$:
      00054A 8D 66            [24]  439 	mov	_set_runtime_data_PARM_3,r5
      00054C 75 65 00         [24]  440 	mov	_set_runtime_data_PARM_2,#0x00
      00054F 75 82 10         [24]  441 	mov	dpl,#0x10
      000552 C0 07            [24]  442 	push	ar7
      000554 12 27 A7         [24]  443 	lcall	_set_runtime_data
                                    444 ;	../UI_Manager/ui.c:36: State = IDLE_STATE;
      000557 75 08 00         [24]  445 	mov	_State,#0x00
                                    446 ;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
      00055A 75 09 FF         [24]  447 	mov	_Changed,#0xff
                                    448 ;	../UI_Manager/ui.c:39: set_playing(RESET);
      00055D 75 69 02         [24]  449 	mov	_Playing,#0x02
                                    450 ;	../UI_Manager/ui.c:41: tick_fogger();
      000560 12 28 84         [24]  451 	lcall	_tick_fogger
      000563 D0 07            [24]  452 	pop	ar7
      000565                        453 00108$:
                                    454 ;	../UI_Manager/ui.c:46: if(action == BUTTON_TIMER){
      000565 BF 01 10         [24]  455 	cjne	r7,#0x01,00113$
                                    456 ;	../UI_Manager/ui.c:47: if(get_playing() == PLAY){
      000568 74 01            [12]  457 	mov	a,#0x01
      00056A B5 69 05         [24]  458 	cjne	a,_Playing,00110$
                                    459 ;	../UI_Manager/ui.c:48: set_playing(RESET);
      00056D 75 69 02         [24]  460 	mov	_Playing,#0x02
      000570 80 03            [24]  461 	sjmp	00111$
      000572                        462 00110$:
                                    463 ;	../UI_Manager/ui.c:50: set_playing(PLAY);
      000572 75 69 01         [24]  464 	mov	_Playing,#0x01
      000575                        465 00111$:
                                    466 ;	../UI_Manager/ui.c:53: tick_fogger();
                                    467 ;	../UI_Manager/ui.c:55: return;
      000575 02 28 84         [24]  468 	ljmp	_tick_fogger
      000578                        469 00113$:
                                    470 ;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
      000578 BF 08 02         [24]  471 	cjne	r7,#0x08,00402$
      00057B 80 03            [24]  472 	sjmp	00403$
      00057D                        473 00402$:
      00057D 02 06 16         [24]  474 	ljmp	00121$
      000580                        475 00403$:
                                    476 ;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
      000580 75 82 0F         [24]  477 	mov	dpl,#0x0f
      000583 12 27 13         [24]  478 	lcall	_get_runtime_data
      000586 E5 82            [12]  479 	mov	a,dpl
      000588 F4               [12]  480 	cpl	a
      000589 F5 66            [12]  481 	mov	_set_runtime_data_PARM_3,a
      00058B 75 65 00         [24]  482 	mov	_set_runtime_data_PARM_2,#0x00
      00058E 75 82 0F         [24]  483 	mov	dpl,#0x0f
      000591 12 27 A7         [24]  484 	lcall	_set_runtime_data
                                    485 ;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
      000594 90 80 00         [24]  486 	mov	dptr,#0x8000
      000597 12 1A 5F         [24]  487 	lcall	_exe_command
                                    488 ;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
      00059A 75 82 0F         [24]  489 	mov	dpl,#0x0f
      00059D 12 27 13         [24]  490 	lcall	_get_runtime_data
      0005A0 E5 82            [12]  491 	mov	a,dpl
      0005A2 60 17            [24]  492 	jz	00115$
                                    493 ;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
      0005A4 75 21 0F         [24]  494 	mov	_write_string_PARM_2,#0x0f
      0005A7 75 22 00         [24]  495 	mov	_write_string_PARM_3,#0x00
      0005AA 75 23 00         [24]  496 	mov	_write_string_PARM_4,#0x00
      0005AD 75 24 00         [24]  497 	mov	_write_string_PARM_5,#0x00
      0005B0 90 2D F0         [24]  498 	mov	dptr,#___str_0
      0005B3 75 F0 80         [24]  499 	mov	b,#0x80
      0005B6 12 18 0C         [24]  500 	lcall	_write_string
      0005B9 80 15            [24]  501 	sjmp	00116$
      0005BB                        502 00115$:
                                    503 ;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
      0005BB 75 21 0F         [24]  504 	mov	_write_string_PARM_2,#0x0f
      0005BE 75 22 00         [24]  505 	mov	_write_string_PARM_3,#0x00
      0005C1 75 23 00         [24]  506 	mov	_write_string_PARM_4,#0x00
      0005C4 75 24 00         [24]  507 	mov	_write_string_PARM_5,#0x00
      0005C7 90 2E 00         [24]  508 	mov	dptr,#___str_1
      0005CA 75 F0 80         [24]  509 	mov	b,#0x80
      0005CD 12 18 0C         [24]  510 	lcall	_write_string
      0005D0                        511 00116$:
                                    512 ;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
      0005D0 75 21 0F         [24]  513 	mov	_write_string_PARM_2,#0x0f
      0005D3 75 22 00         [24]  514 	mov	_write_string_PARM_3,#0x00
      0005D6 75 23 01         [24]  515 	mov	_write_string_PARM_4,#0x01
      0005D9 75 24 00         [24]  516 	mov	_write_string_PARM_5,#0x00
      0005DC 90 2E 0F         [24]  517 	mov	dptr,#___str_2
      0005DF 75 F0 80         [24]  518 	mov	b,#0x80
      0005E2 12 18 0C         [24]  519 	lcall	_write_string
                                    520 ;	../UI_Manager/ui.c:73: while(delay--){ ;; }
      0005E5 75 0C B5         [24]  521 	mov	_tick_ui_delay_65536_37,#0xb5
      0005E8 75 0D D8         [24]  522 	mov	(_tick_ui_delay_65536_37 + 1),#0xd8
      0005EB 75 0E 07         [24]  523 	mov	(_tick_ui_delay_65536_37 + 2),#0x07
      0005EE 75 0F 00         [24]  524 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      0005F1                        525 00117$:
      0005F1 A8 0C            [24]  526 	mov	r0,_tick_ui_delay_65536_37
      0005F3 A9 0D            [24]  527 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      0005F5 AA 0E            [24]  528 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      0005F7 AE 0F            [24]  529 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      0005F9 15 0C            [12]  530 	dec	_tick_ui_delay_65536_37
      0005FB 74 FF            [12]  531 	mov	a,#0xff
      0005FD B5 0C 0C         [24]  532 	cjne	a,_tick_ui_delay_65536_37,00405$
      000600 15 0D            [12]  533 	dec	(_tick_ui_delay_65536_37 + 1)
      000602 B5 0D 07         [24]  534 	cjne	a,(_tick_ui_delay_65536_37 + 1),00405$
      000605 15 0E            [12]  535 	dec	(_tick_ui_delay_65536_37 + 2)
      000607 B5 0E 02         [24]  536 	cjne	a,(_tick_ui_delay_65536_37 + 2),00405$
      00060A 15 0F            [12]  537 	dec	(_tick_ui_delay_65536_37 + 3)
      00060C                        538 00405$:
      00060C E8               [12]  539 	mov	a,r0
      00060D 49               [12]  540 	orl	a,r1
      00060E 4A               [12]  541 	orl	a,r2
      00060F 4E               [12]  542 	orl	a,r6
      000610 70 DF            [24]  543 	jnz	00117$
                                    544 ;	../UI_Manager/ui.c:75: Changed = CHANGE_SCREEN_X;
      000612 75 09 FF         [24]  545 	mov	_Changed,#0xff
                                    546 ;	../UI_Manager/ui.c:77: return;
      000615 22               [24]  547 	ret
      000616                        548 00121$:
                                    549 ;	../UI_Manager/ui.c:81: if(action == BUTTON_MAN_BURST){
      000616 BF 09 02         [24]  550 	cjne	r7,#0x09,00407$
      000619 80 03            [24]  551 	sjmp	00408$
      00061B                        552 00407$:
      00061B 02 06 C6         [24]  553 	ljmp	00126$
      00061E                        554 00408$:
                                    555 ;	../UI_Manager/ui.c:83: ss = bursting & ~BURSTING;
      00061E 74 7F            [12]  556 	mov	a,#0x7f
      000620 55 0B            [12]  557 	anl	a,_tick_ui_bursting_65536_37
      000622 FE               [12]  558 	mov	r6,a
                                    559 ;	../UI_Manager/ui.c:85: exe_command(CLEAR_DISPLAY);
      000623 90 80 00         [24]  560 	mov	dptr,#0x8000
      000626 C0 06            [24]  561 	push	ar6
      000628 12 1A 5F         [24]  562 	lcall	_exe_command
      00062B D0 06            [24]  563 	pop	ar6
                                    564 ;	../UI_Manager/ui.c:87: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
      00062D 8E 04            [24]  565 	mov	ar4,r6
      00062F 7D 00            [12]  566 	mov	r5,#0x00
      000631 75 72 03         [24]  567 	mov	__modsint_PARM_2,#0x03
                                    568 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000634 8D 73            [24]  569 	mov	(__modsint_PARM_2 + 1),r5
      000636 8C 82            [24]  570 	mov	dpl,r4
      000638 8D 83            [24]  571 	mov	dph,r5
      00063A C0 06            [24]  572 	push	ar6
      00063C 12 2D B6         [24]  573 	lcall	__modsint
      00063F E5 82            [12]  574 	mov	a,dpl
      000641 FC               [12]  575 	mov	r4,a
      000642 2C               [12]  576 	add	a,r4
      000643 FC               [12]  577 	mov	r4,a
      000644 24 28            [12]  578 	add	a,#0x28
      000646 F5 82            [12]  579 	mov	dpl,a
      000648 C0 04            [24]  580 	push	ar4
      00064A 12 13 C2         [24]  581 	lcall	_getString
      00064D AA 82            [24]  582 	mov	r2,dpl
      00064F AB 83            [24]  583 	mov	r3,dph
      000651 AD F0            [24]  584 	mov	r5,b
      000653 75 21 10         [24]  585 	mov	_write_string_PARM_2,#0x10
      000656 75 22 00         [24]  586 	mov	_write_string_PARM_3,#0x00
      000659 75 23 00         [24]  587 	mov	_write_string_PARM_4,#0x00
      00065C 75 24 00         [24]  588 	mov	_write_string_PARM_5,#0x00
      00065F 8A 82            [24]  589 	mov	dpl,r2
      000661 8B 83            [24]  590 	mov	dph,r3
      000663 8D F0            [24]  591 	mov	b,r5
      000665 12 18 0C         [24]  592 	lcall	_write_string
      000668 D0 04            [24]  593 	pop	ar4
                                    594 ;	../UI_Manager/ui.c:88: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      00066A 74 29            [12]  595 	mov	a,#0x29
      00066C 2C               [12]  596 	add	a,r4
      00066D F5 82            [12]  597 	mov	dpl,a
      00066F 12 13 C2         [24]  598 	lcall	_getString
      000672 AB 82            [24]  599 	mov	r3,dpl
      000674 AC 83            [24]  600 	mov	r4,dph
      000676 AD F0            [24]  601 	mov	r5,b
      000678 75 21 10         [24]  602 	mov	_write_string_PARM_2,#0x10
      00067B 75 22 00         [24]  603 	mov	_write_string_PARM_3,#0x00
      00067E 75 23 01         [24]  604 	mov	_write_string_PARM_4,#0x01
      000681 75 24 00         [24]  605 	mov	_write_string_PARM_5,#0x00
      000684 8B 82            [24]  606 	mov	dpl,r3
      000686 8C 83            [24]  607 	mov	dph,r4
      000688 8D F0            [24]  608 	mov	b,r5
      00068A 12 18 0C         [24]  609 	lcall	_write_string
      00068D D0 06            [24]  610 	pop	ar6
                                    611 ;	../UI_Manager/ui.c:90: ss++;
      00068F EE               [12]  612 	mov	a,r6
      000690 04               [12]  613 	inc	a
                                    614 ;	../UI_Manager/ui.c:92: bursting |= (ss & ~BURSTING);
      000691 54 7F            [12]  615 	anl	a,#0x7f
      000693 42 0B            [12]  616 	orl	_tick_ui_bursting_65536_37,a
                                    617 ;	../UI_Manager/ui.c:96: while(delay--){ ;; }
      000695 75 0C DD         [24]  618 	mov	_tick_ui_delay_65536_37,#0xdd
      000698 75 0D 8A         [24]  619 	mov	(_tick_ui_delay_65536_37 + 1),#0x8a
      00069B 75 0E 14         [24]  620 	mov	(_tick_ui_delay_65536_37 + 2),#0x14
      00069E 75 0F 00         [24]  621 	mov	(_tick_ui_delay_65536_37 + 3),#0x00
      0006A1                        622 00122$:
      0006A1 A8 0C            [24]  623 	mov	r0,_tick_ui_delay_65536_37
      0006A3 A9 0D            [24]  624 	mov	r1,(_tick_ui_delay_65536_37 + 1)
      0006A5 AA 0E            [24]  625 	mov	r2,(_tick_ui_delay_65536_37 + 2)
      0006A7 AE 0F            [24]  626 	mov	r6,(_tick_ui_delay_65536_37 + 3)
      0006A9 15 0C            [12]  627 	dec	_tick_ui_delay_65536_37
      0006AB 74 FF            [12]  628 	mov	a,#0xff
      0006AD B5 0C 0C         [24]  629 	cjne	a,_tick_ui_delay_65536_37,00409$
      0006B0 15 0D            [12]  630 	dec	(_tick_ui_delay_65536_37 + 1)
      0006B2 B5 0D 07         [24]  631 	cjne	a,(_tick_ui_delay_65536_37 + 1),00409$
      0006B5 15 0E            [12]  632 	dec	(_tick_ui_delay_65536_37 + 2)
      0006B7 B5 0E 02         [24]  633 	cjne	a,(_tick_ui_delay_65536_37 + 2),00409$
      0006BA 15 0F            [12]  634 	dec	(_tick_ui_delay_65536_37 + 3)
      0006BC                        635 00409$:
      0006BC E8               [12]  636 	mov	a,r0
      0006BD 49               [12]  637 	orl	a,r1
      0006BE 4A               [12]  638 	orl	a,r2
      0006BF 4E               [12]  639 	orl	a,r6
      0006C0 70 DF            [24]  640 	jnz	00122$
                                    641 ;	../UI_Manager/ui.c:98: Changed = CHANGE_SCREEN_X;
      0006C2 75 09 FF         [24]  642 	mov	_Changed,#0xff
                                    643 ;	../UI_Manager/ui.c:100: return;
      0006C5 22               [24]  644 	ret
      0006C6                        645 00126$:
                                    646 ;	../UI_Manager/ui.c:104: if(action == BUTTON_FUN_TIME){
      0006C6 BF 04 06         [24]  647 	cjne	r7,#0x04,00128$
                                    648 ;	../UI_Manager/ui.c:105: State = IDLE_STATE;
      0006C9 75 08 00         [24]  649 	mov	_State,#0x00
                                    650 ;	../UI_Manager/ui.c:106: Changed = CHANGE_SCREEN_X;
      0006CC 75 09 FF         [24]  651 	mov	_Changed,#0xff
      0006CF                        652 00128$:
                                    653 ;	../UI_Manager/ui.c:111: if(Changed || 
      0006CF E5 09            [12]  654 	mov	a,_Changed
      0006D1 70 2D            [24]  655 	jnz	00153$
                                    656 ;	../UI_Manager/ui.c:112: action == BUTTON_UP ||
      0006D3 BF 03 02         [24]  657 	cjne	r7,#0x03,00414$
      0006D6 80 28            [24]  658 	sjmp	00153$
      0006D8                        659 00414$:
                                    660 ;	../UI_Manager/ui.c:113: action == BUTTON_UP_HOLD||
      0006D8 BF 1E 02         [24]  661 	cjne	r7,#0x1e,00415$
      0006DB 80 23            [24]  662 	sjmp	00153$
      0006DD                        663 00415$:
                                    664 ;	../UI_Manager/ui.c:114: action == BUTTON_UP_BURST ||
      0006DD BF 1F 02         [24]  665 	cjne	r7,#0x1f,00416$
      0006E0 80 1E            [24]  666 	sjmp	00153$
      0006E2                        667 00416$:
                                    668 ;	../UI_Manager/ui.c:115: action == BUTTON_DOWN ||
      0006E2 BF 0A 02         [24]  669 	cjne	r7,#0x0a,00417$
      0006E5 80 19            [24]  670 	sjmp	00153$
      0006E7                        671 00417$:
                                    672 ;	../UI_Manager/ui.c:116: action == BUTTON_DOWN_HOLD ||
      0006E7 BF 64 02         [24]  673 	cjne	r7,#0x64,00418$
      0006EA 80 14            [24]  674 	sjmp	00153$
      0006EC                        675 00418$:
                                    676 ;	../UI_Manager/ui.c:117: action == BUTTON_DOWN_BURST ||
      0006EC BF 65 02         [24]  677 	cjne	r7,#0x65,00419$
      0006EF 80 0F            [24]  678 	sjmp	00153$
      0006F1                        679 00419$:
                                    680 ;	../UI_Manager/ui.c:118: action == BUTTON_FUN_UP ||
      0006F1 BF 0C 02         [24]  681 	cjne	r7,#0x0c,00420$
      0006F4 80 0A            [24]  682 	sjmp	00153$
      0006F6                        683 00420$:
                                    684 ;	../UI_Manager/ui.c:119: action == BUTTON_FUNCTION ||
      0006F6 BF 02 02         [24]  685 	cjne	r7,#0x02,00421$
      0006F9 80 05            [24]  686 	sjmp	00153$
      0006FB                        687 00421$:
                                    688 ;	../UI_Manager/ui.c:120: State == IDLE_STATE){
      0006FB E5 08            [12]  689 	mov	a,_State
      0006FD 60 01            [24]  690 	jz	00422$
      0006FF 22               [24]  691 	ret
      000700                        692 00422$:
      000700                        693 00153$:
                                    694 ;	../UI_Manager/ui.c:122: switch (State)
      000700 AE 08            [24]  695 	mov	r6,_State
      000702 BE 01 03         [24]  696 	cjne	r6,#0x01,00423$
      000705 02 07 94         [24]  697 	ljmp	00130$
      000708                        698 00423$:
      000708 BE 02 03         [24]  699 	cjne	r6,#0x02,00424$
      00070B 02 07 9E         [24]  700 	ljmp	00132$
      00070E                        701 00424$:
      00070E BE 03 03         [24]  702 	cjne	r6,#0x03,00425$
      000711 02 07 99         [24]  703 	ljmp	00131$
      000714                        704 00425$:
      000714 BE 04 03         [24]  705 	cjne	r6,#0x04,00426$
      000717 02 07 A3         [24]  706 	ljmp	00133$
      00071A                        707 00426$:
      00071A BE 05 03         [24]  708 	cjne	r6,#0x05,00427$
      00071D 02 07 A8         [24]  709 	ljmp	00134$
      000720                        710 00427$:
      000720 BE 06 03         [24]  711 	cjne	r6,#0x06,00428$
      000723 02 07 AD         [24]  712 	ljmp	00138$
      000726                        713 00428$:
      000726 BE 07 03         [24]  714 	cjne	r6,#0x07,00429$
      000729 02 07 AD         [24]  715 	ljmp	00138$
      00072C                        716 00429$:
      00072C BE 08 03         [24]  717 	cjne	r6,#0x08,00430$
      00072F 02 07 AD         [24]  718 	ljmp	00138$
      000732                        719 00430$:
      000732 BE 09 02         [24]  720 	cjne	r6,#0x09,00431$
      000735 80 76            [24]  721 	sjmp	00138$
      000737                        722 00431$:
      000737 BE 0A 02         [24]  723 	cjne	r6,#0x0a,00432$
      00073A 80 76            [24]  724 	sjmp	00141$
      00073C                        725 00432$:
      00073C BE 0B 02         [24]  726 	cjne	r6,#0x0b,00433$
      00073F 80 71            [24]  727 	sjmp	00141$
      000741                        728 00433$:
      000741 BE 0C 02         [24]  729 	cjne	r6,#0x0c,00434$
      000744 80 6C            [24]  730 	sjmp	00141$
      000746                        731 00434$:
      000746 BE 0D 02         [24]  732 	cjne	r6,#0x0d,00435$
      000749 80 6C            [24]  733 	sjmp	00143$
      00074B                        734 00435$:
      00074B BE 0E 02         [24]  735 	cjne	r6,#0x0e,00436$
      00074E 80 67            [24]  736 	sjmp	00143$
      000750                        737 00436$:
      000750 BE 14 02         [24]  738 	cjne	r6,#0x14,00437$
      000753 80 67            [24]  739 	sjmp	00144$
      000755                        740 00437$:
      000755 BE 15 02         [24]  741 	cjne	r6,#0x15,00438$
      000758 80 67            [24]  742 	sjmp	00145$
      00075A                        743 00438$:
      00075A BE 45 69         [24]  744 	cjne	r6,#0x45,00146$
                                    745 ;	../UI_Manager/ui.c:127: exe_command(CLEAR_DISPLAY);
      00075D 90 80 00         [24]  746 	mov	dptr,#0x8000
      000760 12 1A 5F         [24]  747 	lcall	_exe_command
                                    748 ;	../UI_Manager/ui.c:128: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000763 75 21 10         [24]  749 	mov	_write_string_PARM_2,#0x10
      000766 75 22 01         [24]  750 	mov	_write_string_PARM_3,#0x01
      000769 75 23 00         [24]  751 	mov	_write_string_PARM_4,#0x00
      00076C 75 24 00         [24]  752 	mov	_write_string_PARM_5,#0x00
      00076F 90 2E 1F         [24]  753 	mov	dptr,#___str_3
      000772 75 F0 80         [24]  754 	mov	b,#0x80
      000775 12 18 0C         [24]  755 	lcall	_write_string
                                    756 ;	../UI_Manager/ui.c:129: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000778 75 21 10         [24]  757 	mov	_write_string_PARM_2,#0x10
      00077B 75 22 00         [24]  758 	mov	_write_string_PARM_3,#0x00
      00077E 75 23 01         [24]  759 	mov	_write_string_PARM_4,#0x01
      000781 75 24 00         [24]  760 	mov	_write_string_PARM_5,#0x00
      000784 90 2E 2E         [24]  761 	mov	dptr,#___str_4
      000787 75 F0 80         [24]  762 	mov	b,#0x80
      00078A 12 18 0C         [24]  763 	lcall	_write_string
                                    764 ;	../UI_Manager/ui.c:131: Changed = CHANGE_SCREEN_X;
      00078D 75 09 FF         [24]  765 	mov	_Changed,#0xff
                                    766 ;	../UI_Manager/ui.c:132: State = IDLE_STATE;
      000790 75 08 00         [24]  767 	mov	_State,#0x00
                                    768 ;	../UI_Manager/ui.c:134: break;
                                    769 ;	../UI_Manager/ui.c:135: case MANUAL_FOG_POWER_STATE:
      000793 22               [24]  770 	ret
      000794                        771 00130$:
                                    772 ;	../UI_Manager/ui.c:136: fogLevelPage(action);
      000794 8F 82            [24]  773 	mov	dpl,r7
                                    774 ;	../UI_Manager/ui.c:137: break;
                                    775 ;	../UI_Manager/ui.c:138: case MANUAL_FOG_INTERVAL_STATE:
      000796 02 0A A5         [24]  776 	ljmp	_fogLevelPage
      000799                        777 00131$:
                                    778 ;	../UI_Manager/ui.c:139: fogIntervalPage(action);
      000799 8F 82            [24]  779 	mov	dpl,r7
                                    780 ;	../UI_Manager/ui.c:140: break;
                                    781 ;	../UI_Manager/ui.c:141: case MANUAL_FOG_DURATION_STATE:
      00079B 02 0B D7         [24]  782 	ljmp	_fogIntervalPage
      00079E                        783 00132$:
                                    784 ;	../UI_Manager/ui.c:142: fogDurationPage(action);
      00079E 8F 82            [24]  785 	mov	dpl,r7
                                    786 ;	../UI_Manager/ui.c:143: break;
                                    787 ;	../UI_Manager/ui.c:144: case MANUAL_COLOR_MACRO_STATE:
      0007A0 02 0C 86         [24]  788 	ljmp	_fogDurationPage
      0007A3                        789 00133$:
                                    790 ;	../UI_Manager/ui.c:145: macroPage(action);
      0007A3 8F 82            [24]  791 	mov	dpl,r7
                                    792 ;	../UI_Manager/ui.c:146: break;
                                    793 ;	../UI_Manager/ui.c:147: case MANUAL_MACRO_SPEED_STATE:
      0007A5 02 0D 35         [24]  794 	ljmp	_macroPage
      0007A8                        795 00134$:
                                    796 ;	../UI_Manager/ui.c:148: macroSpeedPage(action);
      0007A8 8F 82            [24]  797 	mov	dpl,r7
                                    798 ;	../UI_Manager/ui.c:149: break;
                                    799 ;	../UI_Manager/ui.c:153: case MANUAL_STROBE_STATE:
      0007AA 02 0D E1         [24]  800 	ljmp	_macroSpeedPage
      0007AD                        801 00138$:
                                    802 ;	../UI_Manager/ui.c:154: colorPage(action);
      0007AD 8F 82            [24]  803 	mov	dpl,r7
                                    804 ;	../UI_Manager/ui.c:155: break;
                                    805 ;	../UI_Manager/ui.c:158: case MANUAL_REMOTE_ACTION_6_STATE:
      0007AF 02 0E AE         [24]  806 	ljmp	_colorPage
      0007B2                        807 00141$:
                                    808 ;	../UI_Manager/ui.c:159: remotePage(action);
      0007B2 8F 82            [24]  809 	mov	dpl,r7
                                    810 ;	../UI_Manager/ui.c:160: break;
                                    811 ;	../UI_Manager/ui.c:162: case MANUAL_SAVE_SETTINGS_STATE:
      0007B4 02 0F C4         [24]  812 	ljmp	_remotePage
      0007B7                        813 00143$:
                                    814 ;	../UI_Manager/ui.c:163: saveLoadPage(action);
      0007B7 8F 82            [24]  815 	mov	dpl,r7
                                    816 ;	../UI_Manager/ui.c:164: break;
                                    817 ;	../UI_Manager/ui.c:165: case DMX_ADDRESS_STATE:
      0007B9 02 10 E2         [24]  818 	ljmp	_saveLoadPage
      0007BC                        819 00144$:
                                    820 ;	../UI_Manager/ui.c:166: dmxAddressPage(action);
      0007BC 8F 82            [24]  821 	mov	dpl,r7
                                    822 ;	../UI_Manager/ui.c:167: break;
                                    823 ;	../UI_Manager/ui.c:168: case DMX_CHANNEL_MODE_STATE:
      0007BE 02 11 FA         [24]  824 	ljmp	_dmxAddressPage
      0007C1                        825 00145$:
                                    826 ;	../UI_Manager/ui.c:169: dmxChannelPage(action);
      0007C1 8F 82            [24]  827 	mov	dpl,r7
                                    828 ;	../UI_Manager/ui.c:170: break;
                                    829 ;	../UI_Manager/ui.c:171: default: //IDLE state
      0007C3 02 12 7E         [24]  830 	ljmp	_dmxChannelPage
      0007C6                        831 00146$:
                                    832 ;	../UI_Manager/ui.c:172: idlePage();
      0007C6 C0 07            [24]  833 	push	ar7
      0007C8 12 07 E6         [24]  834 	lcall	_idlePage
      0007CB D0 07            [24]  835 	pop	ar7
                                    836 ;	../UI_Manager/ui.c:174: if(action == BUTTON_FUNCTION){
      0007CD BF 02 09         [24]  837 	cjne	r7,#0x02,00150$
                                    838 ;	../UI_Manager/ui.c:175: set_ui_state(INC, NULL);
      0007D0 75 17 00         [24]  839 	mov	_set_ui_state_PARM_2,#0x00
      0007D3 75 82 01         [24]  840 	mov	dpl,#0x01
      0007D6 02 13 20         [24]  841 	ljmp	_set_ui_state
      0007D9                        842 00150$:
                                    843 ;	../UI_Manager/ui.c:176: } else if(action == BUTTON_FUN_UP){
      0007D9 BF 0C 09         [24]  844 	cjne	r7,#0x0c,00164$
                                    845 ;	../UI_Manager/ui.c:177: set_ui_state(DEC, NULL);
      0007DC 75 17 00         [24]  846 	mov	_set_ui_state_PARM_2,#0x00
      0007DF 75 82 02         [24]  847 	mov	dpl,#0x02
                                    848 ;	../UI_Manager/ui.c:180: }
                                    849 ;	../UI_Manager/ui.c:183: }
      0007E2 02 13 20         [24]  850 	ljmp	_set_ui_state
      0007E5                        851 00164$:
      0007E5 22               [24]  852 	ret
                                    853 ;------------------------------------------------------------
                                    854 ;Allocation info for local variables in function 'idlePage'
                                    855 ;------------------------------------------------------------
                                    856 ;timer                     Allocated with name '_idlePage_timer_65536_55'
                                    857 ;intervalOrDuration        Allocated with name '_idlePage_intervalOrDuration_65536_55'
                                    858 ;empty                     Allocated with name '_idlePage_empty_65536_55'
                                    859 ;tock                      Allocated with name '_idlePage_tock_65536_55'
                                    860 ;iconChange                Allocated with name '_idlePage_iconChange_65536_55'
                                    861 ;playing                   Allocated with name '_idlePage_playing_65536_55'
                                    862 ;temp                      Allocated to registers r7 
                                    863 ;------------------------------------------------------------
                                    864 ;	../UI_Manager/ui.c:185: void idlePage(){
                                    865 ;	-----------------------------------------
                                    866 ;	 function idlePage
                                    867 ;	-----------------------------------------
      0007E6                        868 _idlePage:
                                    869 ;	../UI_Manager/ui.c:194: if(Changed){
      0007E6 E5 09            [12]  870 	mov	a,_Changed
      0007E8 70 03            [24]  871 	jnz	00314$
      0007EA 02 08 CD         [24]  872 	ljmp	00116$
      0007ED                        873 00314$:
                                    874 ;	../UI_Manager/ui.c:195: exe_command(CLEAR_DISPLAY);
      0007ED 90 80 00         [24]  875 	mov	dptr,#0x8000
      0007F0 12 1A 5F         [24]  876 	lcall	_exe_command
                                    877 ;	../UI_Manager/ui.c:196: Changed = 0x00;
      0007F3 75 09 00         [24]  878 	mov	_Changed,#0x00
                                    879 ;	../UI_Manager/ui.c:197: changed = 0xFF;
      0007F6 75 0A FF         [24]  880 	mov	_changed,#0xff
                                    881 ;	../UI_Manager/ui.c:198: timer = 0xFF;
      0007F9 75 10 FF         [24]  882 	mov	_idlePage_timer_65536_55,#0xff
                                    883 ;	../UI_Manager/ui.c:199: intervalOrDuration = 0x55; //guaranteed to not be interval or duration
      0007FC 75 11 55         [24]  884 	mov	_idlePage_intervalOrDuration_65536_55,#0x55
                                    885 ;	../UI_Manager/ui.c:202: if(get_fog_fluid_level() == TANK_EMPTY && get_heated()){
      0007FF E5 6B            [12]  886 	mov	a,_Fluid_Level
      000801 70 33            [24]  887 	jnz	00102$
      000803 E5 6A            [12]  888 	mov	a,_Heat_Flag
      000805 30 E7 2E         [24]  889 	jnb	acc.7,00102$
                                    890 ;	../UI_Manager/ui.c:204: write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000808 75 21 10         [24]  891 	mov	_write_string_PARM_2,#0x10
      00080B 75 22 01         [24]  892 	mov	_write_string_PARM_3,#0x01
      00080E 75 23 00         [24]  893 	mov	_write_string_PARM_4,#0x00
      000811 75 24 00         [24]  894 	mov	_write_string_PARM_5,#0x00
      000814 90 2E 3E         [24]  895 	mov	dptr,#___str_5
      000817 75 F0 80         [24]  896 	mov	b,#0x80
      00081A 12 18 0C         [24]  897 	lcall	_write_string
                                    898 ;	../UI_Manager/ui.c:205: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      00081D 75 21 10         [24]  899 	mov	_write_string_PARM_2,#0x10
      000820 75 22 00         [24]  900 	mov	_write_string_PARM_3,#0x00
      000823 75 23 01         [24]  901 	mov	_write_string_PARM_4,#0x01
      000826 75 24 00         [24]  902 	mov	_write_string_PARM_5,#0x00
      000829 90 2E 4D         [24]  903 	mov	dptr,#___str_6
      00082C 75 F0 80         [24]  904 	mov	b,#0x80
      00082F 12 18 0C         [24]  905 	lcall	_write_string
                                    906 ;	../UI_Manager/ui.c:207: empty = 0xFF;
      000832 75 12 FF         [24]  907 	mov	_idlePage_empty_65536_55,#0xff
                                    908 ;	../UI_Manager/ui.c:209: return;
      000835 22               [24]  909 	ret
      000836                        910 00102$:
                                    911 ;	../UI_Manager/ui.c:212: if(empty){
      000836 E5 12            [12]  912 	mov	a,_idlePage_empty_65536_55
      000838 60 0C            [24]  913 	jz	00107$
                                    914 ;	../UI_Manager/ui.c:213: if(get_fog_fluid_level() == TANK_FULL){
      00083A 74 01            [12]  915 	mov	a,#0x01
      00083C B5 6B 06         [24]  916 	cjne	a,_Fluid_Level,00105$
                                    917 ;	../UI_Manager/ui.c:214: empty = 0x00;
      00083F 75 12 00         [24]  918 	mov	_idlePage_empty_65536_55,#0x00
                                    919 ;	../UI_Manager/ui.c:215: Changed = CHANGE_SCREEN_X;
      000842 75 09 FF         [24]  920 	mov	_Changed,#0xff
      000845                        921 00105$:
                                    922 ;	../UI_Manager/ui.c:218: return;
      000845 22               [24]  923 	ret
      000846                        924 00107$:
                                    925 ;	../UI_Manager/ui.c:221: if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
      000846 75 82 10         [24]  926 	mov	dpl,#0x10
      000849 12 27 13         [24]  927 	lcall	_get_runtime_data
      00084C E5 82            [12]  928 	mov	a,dpl
      00084E 60 17            [24]  929 	jz	00113$
                                    930 ;	../UI_Manager/ui.c:222: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000850 75 21 10         [24]  931 	mov	_write_string_PARM_2,#0x10
      000853 75 22 01         [24]  932 	mov	_write_string_PARM_3,#0x01
      000856 75 23 00         [24]  933 	mov	_write_string_PARM_4,#0x00
      000859 75 24 00         [24]  934 	mov	_write_string_PARM_5,#0x00
      00085C 90 2E 5D         [24]  935 	mov	dptr,#___str_7
      00085F 75 F0 80         [24]  936 	mov	b,#0x80
      000862 12 18 0C         [24]  937 	lcall	_write_string
      000865 80 66            [24]  938 	sjmp	00116$
      000867                        939 00113$:
                                    940 ;	../UI_Manager/ui.c:225: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      000867 12 28 73         [24]  941 	lcall	_get_dmx_address
      00086A 75 25 04         [24]  942 	mov	_write_number_PARM_2,#0x04
      00086D 75 26 01         [24]  943 	mov	_write_number_PARM_3,#0x01
      000870 75 27 00         [24]  944 	mov	_write_number_PARM_4,#0x00
      000873 12 18 D0         [24]  945 	lcall	_write_number
                                    946 ;	../UI_Manager/ui.c:226: switch (get_runtime_data(MODE_INDEX))
      000876 75 82 0E         [24]  947 	mov	dpl,#0x0e
      000879 12 27 13         [24]  948 	lcall	_get_runtime_data
      00087C AF 82            [24]  949 	mov	r7,dpl
      00087E BF 01 02         [24]  950 	cjne	r7,#0x01,00321$
      000881 80 05            [24]  951 	sjmp	00108$
      000883                        952 00321$:
                                    953 ;	../UI_Manager/ui.c:228: case OPTION_DMX_MODE_3:
      000883 BF 02 0A         [24]  954 	cjne	r7,#0x02,00110$
      000886 80 04            [24]  955 	sjmp	00109$
      000888                        956 00108$:
                                    957 ;	../UI_Manager/ui.c:229: temp = 3;
      000888 7F 03            [12]  958 	mov	r7,#0x03
                                    959 ;	../UI_Manager/ui.c:230: break;
                                    960 ;	../UI_Manager/ui.c:231: case OPTION_DMX_MODE_1: 
      00088A 80 06            [24]  961 	sjmp	00111$
      00088C                        962 00109$:
                                    963 ;	../UI_Manager/ui.c:232: temp = 1;
      00088C 7F 01            [12]  964 	mov	r7,#0x01
                                    965 ;	../UI_Manager/ui.c:233: break;
                                    966 ;	../UI_Manager/ui.c:234: default:
      00088E 80 02            [24]  967 	sjmp	00111$
      000890                        968 00110$:
                                    969 ;	../UI_Manager/ui.c:235: temp = 10;
      000890 7F 0A            [12]  970 	mov	r7,#0x0a
                                    971 ;	../UI_Manager/ui.c:237: }
      000892                        972 00111$:
                                    973 ;	../UI_Manager/ui.c:238: write_number(temp, 12, LINE_1, NOT_SELECTED);
      000892 7E 00            [12]  974 	mov	r6,#0x00
      000894 75 25 0C         [24]  975 	mov	_write_number_PARM_2,#0x0c
      000897 75 26 01         [24]  976 	mov	_write_number_PARM_3,#0x01
                                    977 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      00089A 8E 27            [24]  978 	mov	_write_number_PARM_4,r6
      00089C 8F 82            [24]  979 	mov	dpl,r7
      00089E 8E 83            [24]  980 	mov	dph,r6
      0008A0 12 18 D0         [24]  981 	lcall	_write_number
                                    982 ;	../UI_Manager/ui.c:240: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
      0008A3 75 21 04         [24]  983 	mov	_write_string_PARM_2,#0x04
      0008A6 75 22 00         [24]  984 	mov	_write_string_PARM_3,#0x00
      0008A9 75 23 01         [24]  985 	mov	_write_string_PARM_4,#0x01
      0008AC 75 24 00         [24]  986 	mov	_write_string_PARM_5,#0x00
      0008AF 90 2E 69         [24]  987 	mov	dptr,#___str_8
      0008B2 75 F0 80         [24]  988 	mov	b,#0x80
      0008B5 12 18 0C         [24]  989 	lcall	_write_string
                                    990 ;	../UI_Manager/ui.c:241: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
      0008B8 75 21 04         [24]  991 	mov	_write_string_PARM_2,#0x04
      0008BB 75 22 09         [24]  992 	mov	_write_string_PARM_3,#0x09
      0008BE 75 23 01         [24]  993 	mov	_write_string_PARM_4,#0x01
      0008C1 75 24 00         [24]  994 	mov	_write_string_PARM_5,#0x00
      0008C4 90 2E 6E         [24]  995 	mov	dptr,#___str_9
      0008C7 75 F0 80         [24]  996 	mov	b,#0x80
      0008CA 12 18 0C         [24]  997 	lcall	_write_string
      0008CD                        998 00116$:
                                    999 ;	../UI_Manager/ui.c:249: tock++;
      0008CD 05 13            [12] 1000 	inc	_idlePage_tock_65536_55
                                   1001 ;	../UI_Manager/ui.c:250: if(get_playing() == PLAY){
      0008CF 74 01            [12] 1002 	mov	a,#0x01
      0008D1 B5 69 55         [24] 1003 	cjne	a,_Playing,00134$
                                   1004 ;	../UI_Manager/ui.c:251: if(playing == PAUSE){
      0008D4 E5 15            [12] 1005 	mov	a,_idlePage_playing_65536_55
                                   1006 ;	../UI_Manager/ui.c:252: iconChange |= PLAY_CHANGE;
      0008D6 70 08            [24] 1007 	jnz	00118$
      0008D8 AE 14            [24] 1008 	mov	r6,_idlePage_iconChange_65536_55
      0008DA FF               [12] 1009 	mov	r7,a
      0008DB 43 06 20         [24] 1010 	orl	ar6,#0x20
      0008DE 8E 14            [24] 1011 	mov	_idlePage_iconChange_65536_55,r6
      0008E0                       1012 00118$:
                                   1013 ;	../UI_Manager/ui.c:255: if(get_interval_or_duration() == INTERVAL){
      0008E0 E5 68            [12] 1014 	mov	a,_Interval_Or_Duration
      0008E2 70 16            [24] 1015 	jnz	00127$
                                   1016 ;	../UI_Manager/ui.c:257: if(iconChange & PLAY_CHANGE){
      0008E4 E5 14            [12] 1017 	mov	a,_idlePage_iconChange_65536_55
      0008E6 30 E5 35         [24] 1018 	jnb	acc.5,00128$
                                   1019 ;	../UI_Manager/ui.c:258: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      0008E9 75 2B 0E         [24] 1020 	mov	_write_char_PARM_2,#0x0e
      0008EC 75 2C 00         [24] 1021 	mov	_write_char_PARM_3,#0x00
      0008EF 75 82 80         [24] 1022 	mov	dpl,#0x80
      0008F2 12 1A 2A         [24] 1023 	lcall	_write_char
                                   1024 ;	../UI_Manager/ui.c:259: iconChange &= ~PLAY_CHANGE;
      0008F5 53 14 DF         [24] 1025 	anl	_idlePage_iconChange_65536_55,#0xdf
      0008F8 80 24            [24] 1026 	sjmp	00128$
      0008FA                       1027 00127$:
                                   1028 ;	../UI_Manager/ui.c:263: if(tock == 0x80 + 55){ //blink if fogging
      0008FA 74 B7            [12] 1029 	mov	a,#0xb7
      0008FC B5 13 0E         [24] 1030 	cjne	a,_idlePage_tock_65536_55,00124$
                                   1031 ;	../UI_Manager/ui.c:264: write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
      0008FF 75 2B 0E         [24] 1032 	mov	_write_char_PARM_2,#0x0e
      000902 75 2C 00         [24] 1033 	mov	_write_char_PARM_3,#0x00
      000905 75 82 80         [24] 1034 	mov	dpl,#0x80
      000908 12 1A 2A         [24] 1035 	lcall	_write_char
      00090B 80 11            [24] 1036 	sjmp	00128$
      00090D                       1037 00124$:
                                   1038 ;	../UI_Manager/ui.c:265: } else if(tock == 0x08 + 55){
      00090D 74 3F            [12] 1039 	mov	a,#0x3f
      00090F B5 13 0C         [24] 1040 	cjne	a,_idlePage_tock_65536_55,00128$
                                   1041 ;	../UI_Manager/ui.c:266: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      000912 75 2B 0E         [24] 1042 	mov	_write_char_PARM_2,#0x0e
      000915 75 2C 00         [24] 1043 	mov	_write_char_PARM_3,#0x00
      000918 75 82 04         [24] 1044 	mov	dpl,#0x04
      00091B 12 1A 2A         [24] 1045 	lcall	_write_char
      00091E                       1046 00128$:
                                   1047 ;	../UI_Manager/ui.c:269: iconChange |= PAUSE_CHANGE;
      00091E AE 14            [24] 1048 	mov	r6,_idlePage_iconChange_65536_55
      000920 7F 00            [12] 1049 	mov	r7,#0x00
      000922 43 06 10         [24] 1050 	orl	ar6,#0x10
      000925 8E 14            [24] 1051 	mov	_idlePage_iconChange_65536_55,r6
      000927 80 2E            [24] 1052 	sjmp	00135$
      000929                       1053 00134$:
                                   1054 ;	../UI_Manager/ui.c:271: if(playing == PLAY){
      000929 74 01            [12] 1055 	mov	a,#0x01
      00092B B5 15 09         [24] 1056 	cjne	a,_idlePage_playing_65536_55,00130$
                                   1057 ;	../UI_Manager/ui.c:272: iconChange |= PAUSE_CHANGE;
      00092E AE 14            [24] 1058 	mov	r6,_idlePage_iconChange_65536_55
      000930 7F 00            [12] 1059 	mov	r7,#0x00
      000932 43 06 10         [24] 1060 	orl	ar6,#0x10
      000935 8E 14            [24] 1061 	mov	_idlePage_iconChange_65536_55,r6
      000937                       1062 00130$:
                                   1063 ;	../UI_Manager/ui.c:275: if(iconChange & PAUSE_CHANGE){
      000937 E5 14            [12] 1064 	mov	a,_idlePage_iconChange_65536_55
      000939 30 E4 18         [24] 1065 	jnb	acc.4,00132$
                                   1066 ;	../UI_Manager/ui.c:276: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      00093C 75 2B 0E         [24] 1067 	mov	_write_char_PARM_2,#0x0e
      00093F 75 2C 00         [24] 1068 	mov	_write_char_PARM_3,#0x00
      000942 75 82 04         [24] 1069 	mov	dpl,#0x04
      000945 12 1A 2A         [24] 1070 	lcall	_write_char
                                   1071 ;	../UI_Manager/ui.c:277: iconChange |= PLAY_CHANGE;
      000948 AE 14            [24] 1072 	mov	r6,_idlePage_iconChange_65536_55
      00094A 7F 00            [12] 1073 	mov	r7,#0x00
      00094C 43 06 20         [24] 1074 	orl	ar6,#0x20
      00094F 8E 14            [24] 1075 	mov	_idlePage_iconChange_65536_55,r6
                                   1076 ;	../UI_Manager/ui.c:278: iconChange &= ~PAUSE_CHANGE;
      000951 53 14 EF         [24] 1077 	anl	_idlePage_iconChange_65536_55,#0xef
      000954                       1078 00132$:
                                   1079 ;	../UI_Manager/ui.c:281: playing = PAUSE;
      000954 75 15 00         [24] 1080 	mov	_idlePage_playing_65536_55,#0x00
      000957                       1081 00135$:
                                   1082 ;	../UI_Manager/ui.c:284: if(get_heated()){
      000957 E5 6A            [12] 1083 	mov	a,_Heat_Flag
      000959 30 E7 16         [24] 1084 	jnb	acc.7,00144$
                                   1085 ;	../UI_Manager/ui.c:285: if(iconChange & HEATED_CHANGE){
      00095C E5 14            [12] 1086 	mov	a,_idlePage_iconChange_65536_55
      00095E 30 E0 49         [24] 1087 	jnb	acc.0,00145$
                                   1088 ;	../UI_Manager/ui.c:286: write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
      000961 75 2B 0F         [24] 1089 	mov	_write_char_PARM_2,#0x0f
      000964 75 2C 00         [24] 1090 	mov	_write_char_PARM_3,#0x00
      000967 75 82 60         [24] 1091 	mov	dpl,#0x60
      00096A 12 1A 2A         [24] 1092 	lcall	_write_char
                                   1093 ;	../UI_Manager/ui.c:287: iconChange &= ~HEATED_CHANGE;
      00096D 53 14 FE         [24] 1094 	anl	_idlePage_iconChange_65536_55,#0xfe
      000970 80 38            [24] 1095 	sjmp	00145$
      000972                       1096 00144$:
                                   1097 ;	../UI_Manager/ui.c:290: if(!(tock)){
      000972 E5 13            [12] 1098 	mov	a,_idlePage_tock_65536_55
      000974 70 2B            [24] 1099 	jnz	00142$
                                   1100 ;	../UI_Manager/ui.c:291: if(iconChange & HEATING_CHANGE){
      000976 E5 14            [12] 1101 	mov	a,_idlePage_iconChange_65536_55
      000978 30 E1 11         [24] 1102 	jnb	acc.1,00139$
                                   1103 ;	../UI_Manager/ui.c:292: write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
      00097B 75 2B 0F         [24] 1104 	mov	_write_char_PARM_2,#0x0f
      00097E 75 2C 00         [24] 1105 	mov	_write_char_PARM_3,#0x00
      000981 75 82 04         [24] 1106 	mov	dpl,#0x04
      000984 12 1A 2A         [24] 1107 	lcall	_write_char
                                   1108 ;	../UI_Manager/ui.c:293: iconChange &= ~HEATING_CHANGE;
      000987 53 14 FD         [24] 1109 	anl	_idlePage_iconChange_65536_55,#0xfd
      00098A 80 15            [24] 1110 	sjmp	00142$
      00098C                       1111 00139$:
                                   1112 ;	../UI_Manager/ui.c:295: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
      00098C 75 2B 0F         [24] 1113 	mov	_write_char_PARM_2,#0x0f
      00098F 75 2C 00         [24] 1114 	mov	_write_char_PARM_3,#0x00
      000992 75 82 A0         [24] 1115 	mov	dpl,#0xa0
      000995 12 1A 2A         [24] 1116 	lcall	_write_char
                                   1117 ;	../UI_Manager/ui.c:296: iconChange |= HEATING_CHANGE;
      000998 AE 14            [24] 1118 	mov	r6,_idlePage_iconChange_65536_55
      00099A 7F 00            [12] 1119 	mov	r7,#0x00
      00099C 43 06 02         [24] 1120 	orl	ar6,#0x02
      00099F 8E 14            [24] 1121 	mov	_idlePage_iconChange_65536_55,r6
      0009A1                       1122 00142$:
                                   1123 ;	../UI_Manager/ui.c:299: iconChange |= HEATED_CHANGE;
      0009A1 AE 14            [24] 1124 	mov	r6,_idlePage_iconChange_65536_55
      0009A3 7F 00            [12] 1125 	mov	r7,#0x00
      0009A5 43 06 01         [24] 1126 	orl	ar6,#0x01
      0009A8 8E 14            [24] 1127 	mov	_idlePage_iconChange_65536_55,r6
      0009AA                       1128 00145$:
                                   1129 ;	../UI_Manager/ui.c:304: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0009AA 75 82 10         [24] 1130 	mov	dpl,#0x10
      0009AD 12 27 13         [24] 1131 	lcall	_get_runtime_data
      0009B0 E5 82            [12] 1132 	mov	a,dpl
      0009B2 60 03            [24] 1133 	jz	00339$
      0009B4 02 0A 45         [24] 1134 	ljmp	00163$
      0009B7                       1135 00339$:
                                   1136 ;	../UI_Manager/ui.c:307: if(has_dmx()){
      0009B7 E5 36            [12] 1137 	mov	a,_Has_DMX
      0009B9 60 28            [24] 1138 	jz	00151$
                                   1139 ;	../UI_Manager/ui.c:308: if(changed & DMX_OK_CHANGE){
      0009BB E5 0A            [12] 1140 	mov	a,_changed
      0009BD 30 E7 49         [24] 1141 	jnb	acc.7,00152$
                                   1142 ;	../UI_Manager/ui.c:309: write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
      0009C0 75 21 06         [24] 1143 	mov	_write_string_PARM_2,#0x06
      0009C3 75 22 01         [24] 1144 	mov	_write_string_PARM_3,#0x01
      0009C6 75 23 00         [24] 1145 	mov	_write_string_PARM_4,#0x00
      0009C9 75 24 00         [24] 1146 	mov	_write_string_PARM_5,#0x00
      0009CC 90 2E 73         [24] 1147 	mov	dptr,#___str_10
      0009CF 75 F0 80         [24] 1148 	mov	b,#0x80
      0009D2 12 18 0C         [24] 1149 	lcall	_write_string
                                   1150 ;	../UI_Manager/ui.c:310: changed |= NO_DMX_CHANGE;
      0009D5 AE 0A            [24] 1151 	mov	r6,_changed
      0009D7 7F 00            [12] 1152 	mov	r7,#0x00
      0009D9 43 06 40         [24] 1153 	orl	ar6,#0x40
      0009DC 8E 0A            [24] 1154 	mov	_changed,r6
                                   1155 ;	../UI_Manager/ui.c:311: changed &= ~DMX_OK_CHANGE;
      0009DE 53 0A 7F         [24] 1156 	anl	_changed,#0x7f
      0009E1 80 26            [24] 1157 	sjmp	00152$
      0009E3                       1158 00151$:
                                   1159 ;	../UI_Manager/ui.c:314: if(changed & NO_DMX_CHANGE){
      0009E3 E5 0A            [12] 1160 	mov	a,_changed
      0009E5 30 E6 21         [24] 1161 	jnb	acc.6,00152$
                                   1162 ;	../UI_Manager/ui.c:315: write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
      0009E8 75 21 06         [24] 1163 	mov	_write_string_PARM_2,#0x06
      0009EB 75 22 01         [24] 1164 	mov	_write_string_PARM_3,#0x01
      0009EE 75 23 00         [24] 1165 	mov	_write_string_PARM_4,#0x00
      0009F1 75 24 00         [24] 1166 	mov	_write_string_PARM_5,#0x00
      0009F4 90 2E 7A         [24] 1167 	mov	dptr,#___str_11
      0009F7 75 F0 80         [24] 1168 	mov	b,#0x80
      0009FA 12 18 0C         [24] 1169 	lcall	_write_string
                                   1170 ;	../UI_Manager/ui.c:316: changed |= DMX_OK_CHANGE;
      0009FD AE 0A            [24] 1171 	mov	r6,_changed
      0009FF 7F 00            [12] 1172 	mov	r7,#0x00
      000A01 43 06 80         [24] 1173 	orl	ar6,#0x80
      000A04 8E 0A            [24] 1174 	mov	_changed,r6
                                   1175 ;	../UI_Manager/ui.c:317: changed &= ~NO_DMX_CHANGE;
      000A06 53 0A BF         [24] 1176 	anl	_changed,#0xbf
      000A09                       1177 00152$:
                                   1178 ;	../UI_Manager/ui.c:321: temp = get_timer();
                                   1179 ;	../UI_Manager/ui.c:324: if(timer != temp){
      000A09 E5 67            [12] 1180 	mov	a,_Timer
      000A0B FF               [12] 1181 	mov	r7,a
      000A0C B5 10 01         [24] 1182 	cjne	a,_idlePage_timer_65536_55,00343$
      000A0F 22               [24] 1183 	ret
      000A10                       1184 00343$:
                                   1185 ;	../UI_Manager/ui.c:326: write_number(temp, 7, LINE_0, NOT_SELECTED);
      000A10 8F 05            [24] 1186 	mov	ar5,r7
      000A12 7E 00            [12] 1187 	mov	r6,#0x00
      000A14 75 25 07         [24] 1188 	mov	_write_number_PARM_2,#0x07
                                   1189 ;	1-genFromRTrack replaced	mov	_write_number_PARM_3,#0x00
      000A17 8E 26            [24] 1190 	mov	_write_number_PARM_3,r6
                                   1191 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000A19 8E 27            [24] 1192 	mov	_write_number_PARM_4,r6
      000A1B 8D 82            [24] 1193 	mov	dpl,r5
      000A1D 8E 83            [24] 1194 	mov	dph,r6
      000A1F C0 07            [24] 1195 	push	ar7
      000A21 12 18 D0         [24] 1196 	lcall	_write_number
      000A24 D0 07            [24] 1197 	pop	ar7
                                   1198 ;	../UI_Manager/ui.c:327: write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);
      000A26 E5 68            [12] 1199 	mov	a,_Interval_Or_Duration
      000A28 70 05            [24] 1200 	jnz	00167$
      000A2A 7D 92            [12] 1201 	mov	r5,#0x92
      000A2C FE               [12] 1202 	mov	r6,a
      000A2D 80 04            [24] 1203 	sjmp	00168$
      000A2F                       1204 00167$:
      000A2F 7D 22            [12] 1205 	mov	r5,#0x22
      000A31 7E 00            [12] 1206 	mov	r6,#0x00
      000A33                       1207 00168$:
      000A33 8D 82            [24] 1208 	mov	dpl,r5
      000A35 75 2B 0B         [24] 1209 	mov	_write_char_PARM_2,#0x0b
      000A38 75 2C 00         [24] 1210 	mov	_write_char_PARM_3,#0x00
      000A3B C0 07            [24] 1211 	push	ar7
      000A3D 12 1A 2A         [24] 1212 	lcall	_write_char
      000A40 D0 07            [24] 1213 	pop	ar7
                                   1214 ;	../UI_Manager/ui.c:329: timer = temp;
      000A42 8F 10            [24] 1215 	mov	_idlePage_timer_65536_55,r7
      000A44 22               [24] 1216 	ret
      000A45                       1217 00163$:
                                   1218 ;	../UI_Manager/ui.c:334: temp = get_interval_or_duration();
                                   1219 ;	../UI_Manager/ui.c:336: if(intervalOrDuration != temp){
      000A45 E5 68            [12] 1220 	mov	a,_Interval_Or_Duration
      000A47 FF               [12] 1221 	mov	r7,a
      000A48 B5 11 02         [24] 1222 	cjne	a,_idlePage_intervalOrDuration_65536_55,00345$
      000A4B 80 37            [24] 1223 	sjmp	00159$
      000A4D                       1224 00345$:
                                   1225 ;	../UI_Manager/ui.c:337: if(temp == INTERVAL){
      000A4D EF               [12] 1226 	mov	a,r7
                                   1227 ;	../UI_Manager/ui.c:338: write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
      000A4E 70 19            [24] 1228 	jnz	00156$
      000A50 75 21 09         [24] 1229 	mov	_write_string_PARM_2,#0x09
      000A53 F5 22            [12] 1230 	mov	_write_string_PARM_3,a
      000A55 75 23 01         [24] 1231 	mov	_write_string_PARM_4,#0x01
      000A58 F5 24            [12] 1232 	mov	_write_string_PARM_5,a
      000A5A 90 2E 81         [24] 1233 	mov	dptr,#___str_12
      000A5D 75 F0 80         [24] 1234 	mov	b,#0x80
      000A60 C0 07            [24] 1235 	push	ar7
      000A62 12 18 0C         [24] 1236 	lcall	_write_string
      000A65 D0 07            [24] 1237 	pop	ar7
      000A67 80 19            [24] 1238 	sjmp	00157$
      000A69                       1239 00156$:
                                   1240 ;	../UI_Manager/ui.c:340: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
      000A69 75 21 09         [24] 1241 	mov	_write_string_PARM_2,#0x09
      000A6C 75 22 00         [24] 1242 	mov	_write_string_PARM_3,#0x00
      000A6F 75 23 01         [24] 1243 	mov	_write_string_PARM_4,#0x01
      000A72 75 24 00         [24] 1244 	mov	_write_string_PARM_5,#0x00
      000A75 90 2E 8A         [24] 1245 	mov	dptr,#___str_13
      000A78 75 F0 80         [24] 1246 	mov	b,#0x80
      000A7B C0 07            [24] 1247 	push	ar7
      000A7D 12 18 0C         [24] 1248 	lcall	_write_string
      000A80 D0 07            [24] 1249 	pop	ar7
      000A82                       1250 00157$:
                                   1251 ;	../UI_Manager/ui.c:343: intervalOrDuration = temp;
      000A82 8F 11            [24] 1252 	mov	_idlePage_intervalOrDuration_65536_55,r7
      000A84                       1253 00159$:
                                   1254 ;	../UI_Manager/ui.c:346: temp = get_timer();
                                   1255 ;	../UI_Manager/ui.c:348: if(timer != temp){
      000A84 E5 67            [12] 1256 	mov	a,_Timer
      000A86 FF               [12] 1257 	mov	r7,a
      000A87 B5 10 01         [24] 1258 	cjne	a,_idlePage_timer_65536_55,00347$
      000A8A 22               [24] 1259 	ret
      000A8B                       1260 00347$:
                                   1261 ;	../UI_Manager/ui.c:350: write_number(temp, NUMBER_END_INDEX, LINE_1, NOT_SELECTED);
      000A8B 8F 05            [24] 1262 	mov	ar5,r7
      000A8D 7E 00            [12] 1263 	mov	r6,#0x00
      000A8F 75 25 0C         [24] 1264 	mov	_write_number_PARM_2,#0x0c
      000A92 75 26 01         [24] 1265 	mov	_write_number_PARM_3,#0x01
                                   1266 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000A95 8E 27            [24] 1267 	mov	_write_number_PARM_4,r6
      000A97 8D 82            [24] 1268 	mov	dpl,r5
      000A99 8E 83            [24] 1269 	mov	dph,r6
      000A9B C0 07            [24] 1270 	push	ar7
      000A9D 12 18 D0         [24] 1271 	lcall	_write_number
      000AA0 D0 07            [24] 1272 	pop	ar7
                                   1273 ;	../UI_Manager/ui.c:352: timer = temp;
      000AA2 8F 10            [24] 1274 	mov	_idlePage_timer_65536_55,r7
                                   1275 ;	../UI_Manager/ui.c:356: }
      000AA4 22               [24] 1276 	ret
                                   1277 ;------------------------------------------------------------
                                   1278 ;Allocation info for local variables in function 'fogLevelPage'
                                   1279 ;------------------------------------------------------------
                                   1280 ;action                    Allocated to registers r7 
                                   1281 ;------------------------------------------------------------
                                   1282 ;	../UI_Manager/ui.c:358: void fogLevelPage(uint8_t action){
                                   1283 ;	-----------------------------------------
                                   1284 ;	 function fogLevelPage
                                   1285 ;	-----------------------------------------
      000AA5                       1286 _fogLevelPage:
      000AA5 AF 82            [24] 1287 	mov	r7,dpl
                                   1288 ;	../UI_Manager/ui.c:360: switch (action)
      000AA7 BF 02 02         [24] 1289 	cjne	r7,#0x02,00148$
      000AAA 80 31            [24] 1290 	sjmp	00103$
      000AAC                       1291 00148$:
      000AAC BF 03 02         [24] 1292 	cjne	r7,#0x03,00149$
      000AAF 80 0A            [24] 1293 	sjmp	00101$
      000AB1                       1294 00149$:
      000AB1 BF 0A 02         [24] 1295 	cjne	r7,#0x0a,00150$
      000AB4 80 16            [24] 1296 	sjmp	00102$
      000AB6                       1297 00150$:
                                   1298 ;	../UI_Manager/ui.c:362: case BUTTON_UP:
      000AB6 BF 0C 36         [24] 1299 	cjne	r7,#0x0c,00105$
      000AB9 80 2B            [24] 1300 	sjmp	00104$
      000ABB                       1301 00101$:
                                   1302 ;	../UI_Manager/ui.c:363: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
      000ABB 75 65 01         [24] 1303 	mov	_set_runtime_data_PARM_2,#0x01
      000ABE 75 66 00         [24] 1304 	mov	_set_runtime_data_PARM_3,#0x00
      000AC1 75 82 00         [24] 1305 	mov	dpl,#0x00
      000AC4 12 27 A7         [24] 1306 	lcall	_set_runtime_data
                                   1307 ;	../UI_Manager/ui.c:364: changed = 0xFF;
      000AC7 75 0A FF         [24] 1308 	mov	_changed,#0xff
                                   1309 ;	../UI_Manager/ui.c:365: break;
                                   1310 ;	../UI_Manager/ui.c:366: case BUTTON_DOWN:
      000ACA 80 23            [24] 1311 	sjmp	00105$
      000ACC                       1312 00102$:
                                   1313 ;	../UI_Manager/ui.c:367: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
      000ACC 75 65 02         [24] 1314 	mov	_set_runtime_data_PARM_2,#0x02
      000ACF 75 66 00         [24] 1315 	mov	_set_runtime_data_PARM_3,#0x00
      000AD2 75 82 00         [24] 1316 	mov	dpl,#0x00
      000AD5 12 27 A7         [24] 1317 	lcall	_set_runtime_data
                                   1318 ;	../UI_Manager/ui.c:368: changed = 0xFF;  
      000AD8 75 0A FF         [24] 1319 	mov	_changed,#0xff
                                   1320 ;	../UI_Manager/ui.c:369: break;
                                   1321 ;	../UI_Manager/ui.c:370: case BUTTON_FUNCTION:
      000ADB 80 12            [24] 1322 	sjmp	00105$
      000ADD                       1323 00103$:
                                   1324 ;	../UI_Manager/ui.c:371: set_ui_state(INC, NULL);
      000ADD 75 17 00         [24] 1325 	mov	_set_ui_state_PARM_2,#0x00
      000AE0 75 82 01         [24] 1326 	mov	dpl,#0x01
                                   1327 ;	../UI_Manager/ui.c:372: return;
      000AE3 02 13 20         [24] 1328 	ljmp	_set_ui_state
                                   1329 ;	../UI_Manager/ui.c:373: case BUTTON_FUN_UP:
      000AE6                       1330 00104$:
                                   1331 ;	../UI_Manager/ui.c:374: set_ui_state(DEC, NULL);
      000AE6 75 17 00         [24] 1332 	mov	_set_ui_state_PARM_2,#0x00
      000AE9 75 82 02         [24] 1333 	mov	dpl,#0x02
                                   1334 ;	../UI_Manager/ui.c:375: return;
      000AEC 02 13 20         [24] 1335 	ljmp	_set_ui_state
                                   1336 ;	../UI_Manager/ui.c:376: }
      000AEF                       1337 00105$:
                                   1338 ;	../UI_Manager/ui.c:378: if(Changed){
      000AEF E5 09            [12] 1339 	mov	a,_Changed
      000AF1 60 21            [24] 1340 	jz	00107$
                                   1341 ;	../UI_Manager/ui.c:379: Changed = 0x00;
      000AF3 75 09 00         [24] 1342 	mov	_Changed,#0x00
                                   1343 ;	../UI_Manager/ui.c:380: changed = 0xFF;
      000AF6 75 0A FF         [24] 1344 	mov	_changed,#0xff
                                   1345 ;	../UI_Manager/ui.c:382: exe_command(CLEAR_DISPLAY);
      000AF9 90 80 00         [24] 1346 	mov	dptr,#0x8000
      000AFC 12 1A 5F         [24] 1347 	lcall	_exe_command
                                   1348 ;	../UI_Manager/ui.c:384: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
      000AFF 75 21 0A         [24] 1349 	mov	_write_string_PARM_2,#0x0a
      000B02 75 22 03         [24] 1350 	mov	_write_string_PARM_3,#0x03
      000B05 75 23 00         [24] 1351 	mov	_write_string_PARM_4,#0x00
      000B08 75 24 00         [24] 1352 	mov	_write_string_PARM_5,#0x00
      000B0B 90 2E 93         [24] 1353 	mov	dptr,#___str_14
      000B0E 75 F0 80         [24] 1354 	mov	b,#0x80
      000B11 12 18 0C         [24] 1355 	lcall	_write_string
      000B14                       1356 00107$:
                                   1357 ;	../UI_Manager/ui.c:388: if(changed){
      000B14 E5 0A            [12] 1358 	mov	a,_changed
      000B16 70 01            [24] 1359 	jnz	00153$
      000B18 22               [24] 1360 	ret
      000B19                       1361 00153$:
                                   1362 ;	../UI_Manager/ui.c:389: changed = 0x00;
      000B19 75 0A 00         [24] 1363 	mov	_changed,#0x00
                                   1364 ;	../UI_Manager/ui.c:391: switch (get_runtime_data(FOG_POWER_INDEX))
      000B1C 75 82 00         [24] 1365 	mov	dpl,#0x00
      000B1F 12 27 13         [24] 1366 	lcall	_get_runtime_data
      000B22 AF 82            [24] 1367 	mov	r7,dpl
      000B24 BF 02 02         [24] 1368 	cjne	r7,#0x02,00154$
      000B27 80 30            [24] 1369 	sjmp	00109$
      000B29                       1370 00154$:
      000B29 BF 04 66         [24] 1371 	cjne	r7,#0x04,00110$
                                   1372 ;	../UI_Manager/ui.c:394: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000B2C 75 82 02         [24] 1373 	mov	dpl,#0x02
      000B2F 12 13 C2         [24] 1374 	lcall	_getString
      000B32 AD 82            [24] 1375 	mov	r5,dpl
      000B34 AE 83            [24] 1376 	mov	r6,dph
      000B36 AF F0            [24] 1377 	mov	r7,b
      000B38 75 21 10         [24] 1378 	mov	_write_string_PARM_2,#0x10
      000B3B 75 22 03         [24] 1379 	mov	_write_string_PARM_3,#0x03
      000B3E 75 23 01         [24] 1380 	mov	_write_string_PARM_4,#0x01
      000B41 75 24 00         [24] 1381 	mov	_write_string_PARM_5,#0x00
      000B44 8D 82            [24] 1382 	mov	dpl,r5
      000B46 8E 83            [24] 1383 	mov	dph,r6
      000B48 8F F0            [24] 1384 	mov	b,r7
      000B4A 12 18 0C         [24] 1385 	lcall	_write_string
                                   1386 ;	../UI_Manager/ui.c:395: write_char(CHAR_LVL_1, 12, LINE_1);
      000B4D 75 2B 0C         [24] 1387 	mov	_write_char_PARM_2,#0x0c
      000B50 75 2C 01         [24] 1388 	mov	_write_char_PARM_3,#0x01
      000B53 75 82 40         [24] 1389 	mov	dpl,#0x40
                                   1390 ;	../UI_Manager/ui.c:396: break;
      000B56 02 1A 2A         [24] 1391 	ljmp	_write_char
                                   1392 ;	../UI_Manager/ui.c:397: case FOG_MED:
      000B59                       1393 00109$:
                                   1394 ;	../UI_Manager/ui.c:398: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000B59 75 82 01         [24] 1395 	mov	dpl,#0x01
      000B5C 12 13 C2         [24] 1396 	lcall	_getString
      000B5F AD 82            [24] 1397 	mov	r5,dpl
      000B61 AE 83            [24] 1398 	mov	r6,dph
      000B63 AF F0            [24] 1399 	mov	r7,b
      000B65 75 21 10         [24] 1400 	mov	_write_string_PARM_2,#0x10
      000B68 75 22 03         [24] 1401 	mov	_write_string_PARM_3,#0x03
      000B6B 75 23 01         [24] 1402 	mov	_write_string_PARM_4,#0x01
      000B6E 75 24 00         [24] 1403 	mov	_write_string_PARM_5,#0x00
      000B71 8D 82            [24] 1404 	mov	dpl,r5
      000B73 8E 83            [24] 1405 	mov	dph,r6
      000B75 8F F0            [24] 1406 	mov	b,r7
      000B77 12 18 0C         [24] 1407 	lcall	_write_string
                                   1408 ;	../UI_Manager/ui.c:399: write_char(CHAR_LVL_1, 12, LINE_1);
      000B7A 75 2B 0C         [24] 1409 	mov	_write_char_PARM_2,#0x0c
      000B7D 75 2C 01         [24] 1410 	mov	_write_char_PARM_3,#0x01
      000B80 75 82 40         [24] 1411 	mov	dpl,#0x40
      000B83 12 1A 2A         [24] 1412 	lcall	_write_char
                                   1413 ;	../UI_Manager/ui.c:400: write_char(CHAR_LVL_2, 13, LINE_1);
      000B86 75 2B 0D         [24] 1414 	mov	_write_char_PARM_2,#0x0d
      000B89 75 2C 01         [24] 1415 	mov	_write_char_PARM_3,#0x01
      000B8C 75 82 C0         [24] 1416 	mov	dpl,#0xc0
                                   1417 ;	../UI_Manager/ui.c:401: break;
                                   1418 ;	../UI_Manager/ui.c:402: default:
      000B8F 02 1A 2A         [24] 1419 	ljmp	_write_char
      000B92                       1420 00110$:
                                   1421 ;	../UI_Manager/ui.c:403: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000B92 75 82 00         [24] 1422 	mov	dpl,#0x00
      000B95 12 13 C2         [24] 1423 	lcall	_getString
      000B98 AD 82            [24] 1424 	mov	r5,dpl
      000B9A AE 83            [24] 1425 	mov	r6,dph
      000B9C AF F0            [24] 1426 	mov	r7,b
      000B9E 75 21 10         [24] 1427 	mov	_write_string_PARM_2,#0x10
      000BA1 75 22 03         [24] 1428 	mov	_write_string_PARM_3,#0x03
      000BA4 75 23 01         [24] 1429 	mov	_write_string_PARM_4,#0x01
      000BA7 75 24 00         [24] 1430 	mov	_write_string_PARM_5,#0x00
      000BAA 8D 82            [24] 1431 	mov	dpl,r5
      000BAC 8E 83            [24] 1432 	mov	dph,r6
      000BAE 8F F0            [24] 1433 	mov	b,r7
      000BB0 12 18 0C         [24] 1434 	lcall	_write_string
                                   1435 ;	../UI_Manager/ui.c:404: write_char(CHAR_LVL_1, 12, LINE_1);
      000BB3 75 2B 0C         [24] 1436 	mov	_write_char_PARM_2,#0x0c
      000BB6 75 2C 01         [24] 1437 	mov	_write_char_PARM_3,#0x01
      000BB9 75 82 40         [24] 1438 	mov	dpl,#0x40
      000BBC 12 1A 2A         [24] 1439 	lcall	_write_char
                                   1440 ;	../UI_Manager/ui.c:405: write_char(CHAR_LVL_2, 13, LINE_1);
      000BBF 75 2B 0D         [24] 1441 	mov	_write_char_PARM_2,#0x0d
      000BC2 75 2C 01         [24] 1442 	mov	_write_char_PARM_3,#0x01
      000BC5 75 82 C0         [24] 1443 	mov	dpl,#0xc0
      000BC8 12 1A 2A         [24] 1444 	lcall	_write_char
                                   1445 ;	../UI_Manager/ui.c:406: write_char(CHAR_LVL_3, 14, LINE_1);
      000BCB 75 2B 0E         [24] 1446 	mov	_write_char_PARM_2,#0x0e
      000BCE 75 2C 01         [24] 1447 	mov	_write_char_PARM_3,#0x01
      000BD1 75 82 20         [24] 1448 	mov	dpl,#0x20
                                   1449 ;	../UI_Manager/ui.c:408: }
                                   1450 ;	../UI_Manager/ui.c:411: }
      000BD4 02 1A 2A         [24] 1451 	ljmp	_write_char
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'fogIntervalPage'
                                   1454 ;------------------------------------------------------------
                                   1455 ;action                    Allocated to registers r7 
                                   1456 ;------------------------------------------------------------
                                   1457 ;	../UI_Manager/ui.c:413: void fogIntervalPage(uint8_t action){
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function fogIntervalPage
                                   1460 ;	-----------------------------------------
      000BD7                       1461 _fogIntervalPage:
      000BD7 AF 82            [24] 1462 	mov	r7,dpl
                                   1463 ;	../UI_Manager/ui.c:415: switch (action)
      000BD9 BF 02 02         [24] 1464 	cjne	r7,#0x02,00146$
      000BDC 80 3B            [24] 1465 	sjmp	00105$
      000BDE                       1466 00146$:
      000BDE BF 03 02         [24] 1467 	cjne	r7,#0x03,00147$
      000BE1 80 14            [24] 1468 	sjmp	00102$
      000BE3                       1469 00147$:
      000BE3 BF 0A 02         [24] 1470 	cjne	r7,#0x0a,00148$
      000BE6 80 20            [24] 1471 	sjmp	00104$
      000BE8                       1472 00148$:
      000BE8 BF 0C 02         [24] 1473 	cjne	r7,#0x0c,00149$
      000BEB 80 35            [24] 1474 	sjmp	00106$
      000BED                       1475 00149$:
      000BED BF 1F 02         [24] 1476 	cjne	r7,#0x1f,00150$
      000BF0 80 05            [24] 1477 	sjmp	00102$
      000BF2                       1478 00150$:
                                   1479 ;	../UI_Manager/ui.c:418: case BUTTON_UP:
      000BF2 BF 65 36         [24] 1480 	cjne	r7,#0x65,00107$
      000BF5 80 11            [24] 1481 	sjmp	00104$
      000BF7                       1482 00102$:
                                   1483 ;	../UI_Manager/ui.c:419: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
      000BF7 75 65 01         [24] 1484 	mov	_set_runtime_data_PARM_2,#0x01
      000BFA 75 66 00         [24] 1485 	mov	_set_runtime_data_PARM_3,#0x00
      000BFD 75 82 02         [24] 1486 	mov	dpl,#0x02
      000C00 12 27 A7         [24] 1487 	lcall	_set_runtime_data
                                   1488 ;	../UI_Manager/ui.c:420: changed = 0xFF;
      000C03 75 0A FF         [24] 1489 	mov	_changed,#0xff
                                   1490 ;	../UI_Manager/ui.c:421: break;
                                   1491 ;	../UI_Manager/ui.c:423: case BUTTON_DOWN:
      000C06 80 23            [24] 1492 	sjmp	00107$
      000C08                       1493 00104$:
                                   1494 ;	../UI_Manager/ui.c:424: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
      000C08 75 65 02         [24] 1495 	mov	_set_runtime_data_PARM_2,#0x02
      000C0B 75 66 00         [24] 1496 	mov	_set_runtime_data_PARM_3,#0x00
      000C0E 75 82 02         [24] 1497 	mov	dpl,#0x02
      000C11 12 27 A7         [24] 1498 	lcall	_set_runtime_data
                                   1499 ;	../UI_Manager/ui.c:425: changed = 0xFF;  
      000C14 75 0A FF         [24] 1500 	mov	_changed,#0xff
                                   1501 ;	../UI_Manager/ui.c:426: break;
                                   1502 ;	../UI_Manager/ui.c:427: case BUTTON_FUNCTION:
      000C17 80 12            [24] 1503 	sjmp	00107$
      000C19                       1504 00105$:
                                   1505 ;	../UI_Manager/ui.c:428: set_ui_state(INC, NULL);
      000C19 75 17 00         [24] 1506 	mov	_set_ui_state_PARM_2,#0x00
      000C1C 75 82 01         [24] 1507 	mov	dpl,#0x01
                                   1508 ;	../UI_Manager/ui.c:429: return;
                                   1509 ;	../UI_Manager/ui.c:430: case BUTTON_FUN_UP:
      000C1F 02 13 20         [24] 1510 	ljmp	_set_ui_state
      000C22                       1511 00106$:
                                   1512 ;	../UI_Manager/ui.c:431: set_ui_state(DEC, NULL);
      000C22 75 17 00         [24] 1513 	mov	_set_ui_state_PARM_2,#0x00
      000C25 75 82 02         [24] 1514 	mov	dpl,#0x02
                                   1515 ;	../UI_Manager/ui.c:432: return;
                                   1516 ;	../UI_Manager/ui.c:433: }
      000C28 02 13 20         [24] 1517 	ljmp	_set_ui_state
      000C2B                       1518 00107$:
                                   1519 ;	../UI_Manager/ui.c:435: if(Changed){
      000C2B E5 09            [12] 1520 	mov	a,_Changed
      000C2D 60 36            [24] 1521 	jz	00109$
                                   1522 ;	../UI_Manager/ui.c:436: Changed = 0x00;
      000C2F 75 09 00         [24] 1523 	mov	_Changed,#0x00
                                   1524 ;	../UI_Manager/ui.c:437: changed = 0xFF;
      000C32 75 0A FF         [24] 1525 	mov	_changed,#0xff
                                   1526 ;	../UI_Manager/ui.c:439: exe_command(CLEAR_DISPLAY);
      000C35 90 80 00         [24] 1527 	mov	dptr,#0x8000
      000C38 12 1A 5F         [24] 1528 	lcall	_exe_command
                                   1529 ;	../UI_Manager/ui.c:441: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
      000C3B 75 21 0D         [24] 1530 	mov	_write_string_PARM_2,#0x0d
      000C3E 75 22 02         [24] 1531 	mov	_write_string_PARM_3,#0x02
      000C41 75 23 00         [24] 1532 	mov	_write_string_PARM_4,#0x00
      000C44 75 24 00         [24] 1533 	mov	_write_string_PARM_5,#0x00
      000C47 90 2E 9D         [24] 1534 	mov	dptr,#___str_15
      000C4A 75 F0 80         [24] 1535 	mov	b,#0x80
      000C4D 12 18 0C         [24] 1536 	lcall	_write_string
                                   1537 ;	../UI_Manager/ui.c:442: write_string("Seconds", sizeof("Seconds"), 8, LINE_1, NOT_SELECTED);
      000C50 75 21 08         [24] 1538 	mov	_write_string_PARM_2,#0x08
      000C53 75 22 08         [24] 1539 	mov	_write_string_PARM_3,#0x08
      000C56 75 23 01         [24] 1540 	mov	_write_string_PARM_4,#0x01
      000C59 75 24 00         [24] 1541 	mov	_write_string_PARM_5,#0x00
      000C5C 90 2E AA         [24] 1542 	mov	dptr,#___str_16
      000C5F 75 F0 80         [24] 1543 	mov	b,#0x80
      000C62 12 18 0C         [24] 1544 	lcall	_write_string
      000C65                       1545 00109$:
                                   1546 ;	../UI_Manager/ui.c:446: if(changed){
      000C65 E5 0A            [12] 1547 	mov	a,_changed
      000C67 60 1C            [24] 1548 	jz	00112$
                                   1549 ;	../UI_Manager/ui.c:447: changed = 0x00;
      000C69 75 0A 00         [24] 1550 	mov	_changed,#0x00
                                   1551 ;	../UI_Manager/ui.c:449: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 4, LINE_1, NOT_SELECTED);
      000C6C 75 82 02         [24] 1552 	mov	dpl,#0x02
      000C6F 12 27 13         [24] 1553 	lcall	_get_runtime_data
      000C72 AF 82            [24] 1554 	mov	r7,dpl
      000C74 7E 00            [12] 1555 	mov	r6,#0x00
      000C76 75 25 04         [24] 1556 	mov	_write_number_PARM_2,#0x04
      000C79 75 26 01         [24] 1557 	mov	_write_number_PARM_3,#0x01
                                   1558 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000C7C 8E 27            [24] 1559 	mov	_write_number_PARM_4,r6
      000C7E 8F 82            [24] 1560 	mov	dpl,r7
      000C80 8E 83            [24] 1561 	mov	dph,r6
                                   1562 ;	../UI_Manager/ui.c:454: }
      000C82 02 18 D0         [24] 1563 	ljmp	_write_number
      000C85                       1564 00112$:
      000C85 22               [24] 1565 	ret
                                   1566 ;------------------------------------------------------------
                                   1567 ;Allocation info for local variables in function 'fogDurationPage'
                                   1568 ;------------------------------------------------------------
                                   1569 ;action                    Allocated to registers r7 
                                   1570 ;------------------------------------------------------------
                                   1571 ;	../UI_Manager/ui.c:456: void fogDurationPage(uint8_t action){
                                   1572 ;	-----------------------------------------
                                   1573 ;	 function fogDurationPage
                                   1574 ;	-----------------------------------------
      000C86                       1575 _fogDurationPage:
      000C86 AF 82            [24] 1576 	mov	r7,dpl
                                   1577 ;	../UI_Manager/ui.c:458: switch (action)
      000C88 BF 02 02         [24] 1578 	cjne	r7,#0x02,00146$
      000C8B 80 3B            [24] 1579 	sjmp	00105$
      000C8D                       1580 00146$:
      000C8D BF 03 02         [24] 1581 	cjne	r7,#0x03,00147$
      000C90 80 14            [24] 1582 	sjmp	00102$
      000C92                       1583 00147$:
      000C92 BF 0A 02         [24] 1584 	cjne	r7,#0x0a,00148$
      000C95 80 20            [24] 1585 	sjmp	00104$
      000C97                       1586 00148$:
      000C97 BF 0C 02         [24] 1587 	cjne	r7,#0x0c,00149$
      000C9A 80 35            [24] 1588 	sjmp	00106$
      000C9C                       1589 00149$:
      000C9C BF 1F 02         [24] 1590 	cjne	r7,#0x1f,00150$
      000C9F 80 05            [24] 1591 	sjmp	00102$
      000CA1                       1592 00150$:
                                   1593 ;	../UI_Manager/ui.c:461: case BUTTON_UP:
      000CA1 BF 65 36         [24] 1594 	cjne	r7,#0x65,00107$
      000CA4 80 11            [24] 1595 	sjmp	00104$
      000CA6                       1596 00102$:
                                   1597 ;	../UI_Manager/ui.c:462: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
      000CA6 75 65 01         [24] 1598 	mov	_set_runtime_data_PARM_2,#0x01
      000CA9 75 66 00         [24] 1599 	mov	_set_runtime_data_PARM_3,#0x00
      000CAC 75 82 01         [24] 1600 	mov	dpl,#0x01
      000CAF 12 27 A7         [24] 1601 	lcall	_set_runtime_data
                                   1602 ;	../UI_Manager/ui.c:463: changed = 0xFF;
      000CB2 75 0A FF         [24] 1603 	mov	_changed,#0xff
                                   1604 ;	../UI_Manager/ui.c:464: break;
                                   1605 ;	../UI_Manager/ui.c:466: case BUTTON_DOWN:
      000CB5 80 23            [24] 1606 	sjmp	00107$
      000CB7                       1607 00104$:
                                   1608 ;	../UI_Manager/ui.c:467: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
      000CB7 75 65 02         [24] 1609 	mov	_set_runtime_data_PARM_2,#0x02
      000CBA 75 66 00         [24] 1610 	mov	_set_runtime_data_PARM_3,#0x00
      000CBD 75 82 01         [24] 1611 	mov	dpl,#0x01
      000CC0 12 27 A7         [24] 1612 	lcall	_set_runtime_data
                                   1613 ;	../UI_Manager/ui.c:468: changed = 0xFF;  
      000CC3 75 0A FF         [24] 1614 	mov	_changed,#0xff
                                   1615 ;	../UI_Manager/ui.c:469: break;
                                   1616 ;	../UI_Manager/ui.c:470: case BUTTON_FUNCTION:
      000CC6 80 12            [24] 1617 	sjmp	00107$
      000CC8                       1618 00105$:
                                   1619 ;	../UI_Manager/ui.c:471: set_ui_state(INC, NULL);
      000CC8 75 17 00         [24] 1620 	mov	_set_ui_state_PARM_2,#0x00
      000CCB 75 82 01         [24] 1621 	mov	dpl,#0x01
                                   1622 ;	../UI_Manager/ui.c:472: return;
                                   1623 ;	../UI_Manager/ui.c:473: case BUTTON_FUN_UP:
      000CCE 02 13 20         [24] 1624 	ljmp	_set_ui_state
      000CD1                       1625 00106$:
                                   1626 ;	../UI_Manager/ui.c:474: set_ui_state(DEC, NULL);
      000CD1 75 17 00         [24] 1627 	mov	_set_ui_state_PARM_2,#0x00
      000CD4 75 82 02         [24] 1628 	mov	dpl,#0x02
                                   1629 ;	../UI_Manager/ui.c:475: return;
                                   1630 ;	../UI_Manager/ui.c:476: }
      000CD7 02 13 20         [24] 1631 	ljmp	_set_ui_state
      000CDA                       1632 00107$:
                                   1633 ;	../UI_Manager/ui.c:478: if(Changed){
      000CDA E5 09            [12] 1634 	mov	a,_Changed
      000CDC 60 36            [24] 1635 	jz	00109$
                                   1636 ;	../UI_Manager/ui.c:479: Changed = 0x00;
      000CDE 75 09 00         [24] 1637 	mov	_Changed,#0x00
                                   1638 ;	../UI_Manager/ui.c:480: changed = 0xFF;
      000CE1 75 0A FF         [24] 1639 	mov	_changed,#0xff
                                   1640 ;	../UI_Manager/ui.c:482: exe_command(CLEAR_DISPLAY);
      000CE4 90 80 00         [24] 1641 	mov	dptr,#0x8000
      000CE7 12 1A 5F         [24] 1642 	lcall	_exe_command
                                   1643 ;	../UI_Manager/ui.c:484: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
      000CEA 75 21 0D         [24] 1644 	mov	_write_string_PARM_2,#0x0d
      000CED 75 22 02         [24] 1645 	mov	_write_string_PARM_3,#0x02
      000CF0 75 23 00         [24] 1646 	mov	_write_string_PARM_4,#0x00
      000CF3 75 24 00         [24] 1647 	mov	_write_string_PARM_5,#0x00
      000CF6 90 2E B2         [24] 1648 	mov	dptr,#___str_17
      000CF9 75 F0 80         [24] 1649 	mov	b,#0x80
      000CFC 12 18 0C         [24] 1650 	lcall	_write_string
                                   1651 ;	../UI_Manager/ui.c:485: write_string("Seconds", sizeof("Seconds"), 8, LINE_1, NOT_SELECTED);
      000CFF 75 21 08         [24] 1652 	mov	_write_string_PARM_2,#0x08
      000D02 75 22 08         [24] 1653 	mov	_write_string_PARM_3,#0x08
      000D05 75 23 01         [24] 1654 	mov	_write_string_PARM_4,#0x01
      000D08 75 24 00         [24] 1655 	mov	_write_string_PARM_5,#0x00
      000D0B 90 2E AA         [24] 1656 	mov	dptr,#___str_16
      000D0E 75 F0 80         [24] 1657 	mov	b,#0x80
      000D11 12 18 0C         [24] 1658 	lcall	_write_string
      000D14                       1659 00109$:
                                   1660 ;	../UI_Manager/ui.c:489: if(changed){
      000D14 E5 0A            [12] 1661 	mov	a,_changed
      000D16 60 1C            [24] 1662 	jz	00112$
                                   1663 ;	../UI_Manager/ui.c:490: changed = 0x00;
      000D18 75 0A 00         [24] 1664 	mov	_changed,#0x00
                                   1665 ;	../UI_Manager/ui.c:492: write_number(get_runtime_data(FOG_DURATION_INDEX), 4, LINE_1, NOT_SELECTED);
      000D1B 75 82 01         [24] 1666 	mov	dpl,#0x01
      000D1E 12 27 13         [24] 1667 	lcall	_get_runtime_data
      000D21 AF 82            [24] 1668 	mov	r7,dpl
      000D23 7E 00            [12] 1669 	mov	r6,#0x00
      000D25 75 25 04         [24] 1670 	mov	_write_number_PARM_2,#0x04
      000D28 75 26 01         [24] 1671 	mov	_write_number_PARM_3,#0x01
                                   1672 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000D2B 8E 27            [24] 1673 	mov	_write_number_PARM_4,r6
      000D2D 8F 82            [24] 1674 	mov	dpl,r7
      000D2F 8E 83            [24] 1675 	mov	dph,r6
                                   1676 ;	../UI_Manager/ui.c:495: }
      000D31 02 18 D0         [24] 1677 	ljmp	_write_number
      000D34                       1678 00112$:
      000D34 22               [24] 1679 	ret
                                   1680 ;------------------------------------------------------------
                                   1681 ;Allocation info for local variables in function 'macroPage'
                                   1682 ;------------------------------------------------------------
                                   1683 ;action                    Allocated to registers r7 
                                   1684 ;------------------------------------------------------------
                                   1685 ;	../UI_Manager/ui.c:497: void macroPage(uint8_t action){
                                   1686 ;	-----------------------------------------
                                   1687 ;	 function macroPage
                                   1688 ;	-----------------------------------------
      000D35                       1689 _macroPage:
      000D35 AF 82            [24] 1690 	mov	r7,dpl
                                   1691 ;	../UI_Manager/ui.c:499: switch (action)
      000D37 BF 02 02         [24] 1692 	cjne	r7,#0x02,00146$
      000D3A 80 3B            [24] 1693 	sjmp	00105$
      000D3C                       1694 00146$:
      000D3C BF 03 02         [24] 1695 	cjne	r7,#0x03,00147$
      000D3F 80 14            [24] 1696 	sjmp	00102$
      000D41                       1697 00147$:
      000D41 BF 0A 02         [24] 1698 	cjne	r7,#0x0a,00148$
      000D44 80 20            [24] 1699 	sjmp	00104$
      000D46                       1700 00148$:
      000D46 BF 0C 02         [24] 1701 	cjne	r7,#0x0c,00149$
      000D49 80 35            [24] 1702 	sjmp	00106$
      000D4B                       1703 00149$:
      000D4B BF 1F 02         [24] 1704 	cjne	r7,#0x1f,00150$
      000D4E 80 05            [24] 1705 	sjmp	00102$
      000D50                       1706 00150$:
                                   1707 ;	../UI_Manager/ui.c:502: case BUTTON_UP:
      000D50 BF 65 36         [24] 1708 	cjne	r7,#0x65,00107$
      000D53 80 11            [24] 1709 	sjmp	00104$
      000D55                       1710 00102$:
                                   1711 ;	../UI_Manager/ui.c:503: set_runtime_data(MACRO_INDEX, INC, NULL);
      000D55 75 65 01         [24] 1712 	mov	_set_runtime_data_PARM_2,#0x01
      000D58 75 66 00         [24] 1713 	mov	_set_runtime_data_PARM_3,#0x00
      000D5B 75 82 03         [24] 1714 	mov	dpl,#0x03
      000D5E 12 27 A7         [24] 1715 	lcall	_set_runtime_data
                                   1716 ;	../UI_Manager/ui.c:504: changed = 0xFF;
      000D61 75 0A FF         [24] 1717 	mov	_changed,#0xff
                                   1718 ;	../UI_Manager/ui.c:505: break;
                                   1719 ;	../UI_Manager/ui.c:507: case BUTTON_DOWN:
      000D64 80 23            [24] 1720 	sjmp	00107$
      000D66                       1721 00104$:
                                   1722 ;	../UI_Manager/ui.c:508: set_runtime_data(MACRO_INDEX, DEC, NULL);
      000D66 75 65 02         [24] 1723 	mov	_set_runtime_data_PARM_2,#0x02
      000D69 75 66 00         [24] 1724 	mov	_set_runtime_data_PARM_3,#0x00
      000D6C 75 82 03         [24] 1725 	mov	dpl,#0x03
      000D6F 12 27 A7         [24] 1726 	lcall	_set_runtime_data
                                   1727 ;	../UI_Manager/ui.c:509: changed = 0xFF;  
      000D72 75 0A FF         [24] 1728 	mov	_changed,#0xff
                                   1729 ;	../UI_Manager/ui.c:510: break;
                                   1730 ;	../UI_Manager/ui.c:511: case BUTTON_FUNCTION:
      000D75 80 12            [24] 1731 	sjmp	00107$
      000D77                       1732 00105$:
                                   1733 ;	../UI_Manager/ui.c:512: set_ui_state(INC, NULL);
      000D77 75 17 00         [24] 1734 	mov	_set_ui_state_PARM_2,#0x00
      000D7A 75 82 01         [24] 1735 	mov	dpl,#0x01
                                   1736 ;	../UI_Manager/ui.c:513: return;
                                   1737 ;	../UI_Manager/ui.c:514: case BUTTON_FUN_UP:
      000D7D 02 13 20         [24] 1738 	ljmp	_set_ui_state
      000D80                       1739 00106$:
                                   1740 ;	../UI_Manager/ui.c:515: set_ui_state(DEC, NULL);
      000D80 75 17 00         [24] 1741 	mov	_set_ui_state_PARM_2,#0x00
      000D83 75 82 02         [24] 1742 	mov	dpl,#0x02
                                   1743 ;	../UI_Manager/ui.c:516: return;
                                   1744 ;	../UI_Manager/ui.c:517: }
      000D86 02 13 20         [24] 1745 	ljmp	_set_ui_state
      000D89                       1746 00107$:
                                   1747 ;	../UI_Manager/ui.c:519: if(Changed){
      000D89 E5 09            [12] 1748 	mov	a,_Changed
      000D8B 60 21            [24] 1749 	jz	00109$
                                   1750 ;	../UI_Manager/ui.c:520: Changed = 0x00;
      000D8D 75 09 00         [24] 1751 	mov	_Changed,#0x00
                                   1752 ;	../UI_Manager/ui.c:521: changed = 0xFF;
      000D90 75 0A FF         [24] 1753 	mov	_changed,#0xff
                                   1754 ;	../UI_Manager/ui.c:523: exe_command(CLEAR_DISPLAY);
      000D93 90 80 00         [24] 1755 	mov	dptr,#0x8000
      000D96 12 1A 5F         [24] 1756 	lcall	_exe_command
                                   1757 ;	../UI_Manager/ui.c:525: write_string("Macros", sizeof("Macros"), 6, LINE_0, NOT_SELECTED);
      000D99 75 21 07         [24] 1758 	mov	_write_string_PARM_2,#0x07
      000D9C 75 22 06         [24] 1759 	mov	_write_string_PARM_3,#0x06
      000D9F 75 23 00         [24] 1760 	mov	_write_string_PARM_4,#0x00
      000DA2 75 24 00         [24] 1761 	mov	_write_string_PARM_5,#0x00
      000DA5 90 2E BF         [24] 1762 	mov	dptr,#___str_18
      000DA8 75 F0 80         [24] 1763 	mov	b,#0x80
      000DAB 12 18 0C         [24] 1764 	lcall	_write_string
      000DAE                       1765 00109$:
                                   1766 ;	../UI_Manager/ui.c:529: if(changed){
      000DAE E5 0A            [12] 1767 	mov	a,_changed
      000DB0 60 2E            [24] 1768 	jz	00112$
                                   1769 ;	../UI_Manager/ui.c:530: changed = 0x00;
      000DB2 75 0A 00         [24] 1770 	mov	_changed,#0x00
                                   1771 ;	../UI_Manager/ui.c:532: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000DB5 75 82 03         [24] 1772 	mov	dpl,#0x03
      000DB8 12 27 13         [24] 1773 	lcall	_get_runtime_data
      000DBB AF 82            [24] 1774 	mov	r7,dpl
      000DBD 74 14            [12] 1775 	mov	a,#0x14
      000DBF 2F               [12] 1776 	add	a,r7
      000DC0 F5 82            [12] 1777 	mov	dpl,a
      000DC2 12 13 C2         [24] 1778 	lcall	_getString
      000DC5 AD 82            [24] 1779 	mov	r5,dpl
      000DC7 AE 83            [24] 1780 	mov	r6,dph
      000DC9 AF F0            [24] 1781 	mov	r7,b
      000DCB 75 21 10         [24] 1782 	mov	_write_string_PARM_2,#0x10
      000DCE 75 22 03         [24] 1783 	mov	_write_string_PARM_3,#0x03
      000DD1 75 23 01         [24] 1784 	mov	_write_string_PARM_4,#0x01
      000DD4 75 24 00         [24] 1785 	mov	_write_string_PARM_5,#0x00
      000DD7 8D 82            [24] 1786 	mov	dpl,r5
      000DD9 8E 83            [24] 1787 	mov	dph,r6
      000DDB 8F F0            [24] 1788 	mov	b,r7
                                   1789 ;	../UI_Manager/ui.c:535: }
      000DDD 02 18 0C         [24] 1790 	ljmp	_write_string
      000DE0                       1791 00112$:
      000DE0 22               [24] 1792 	ret
                                   1793 ;------------------------------------------------------------
                                   1794 ;Allocation info for local variables in function 'macroSpeedPage'
                                   1795 ;------------------------------------------------------------
                                   1796 ;action                    Allocated to registers r7 
                                   1797 ;------------------------------------------------------------
                                   1798 ;	../UI_Manager/ui.c:537: void macroSpeedPage(uint8_t action){
                                   1799 ;	-----------------------------------------
                                   1800 ;	 function macroSpeedPage
                                   1801 ;	-----------------------------------------
      000DE1                       1802 _macroSpeedPage:
      000DE1 AF 82            [24] 1803 	mov	r7,dpl
                                   1804 ;	../UI_Manager/ui.c:539: switch (action)
      000DE3 BF 02 02         [24] 1805 	cjne	r7,#0x02,00153$
      000DE6 80 3B            [24] 1806 	sjmp	00105$
      000DE8                       1807 00153$:
      000DE8 BF 03 02         [24] 1808 	cjne	r7,#0x03,00154$
      000DEB 80 14            [24] 1809 	sjmp	00102$
      000DED                       1810 00154$:
      000DED BF 0A 02         [24] 1811 	cjne	r7,#0x0a,00155$
      000DF0 80 20            [24] 1812 	sjmp	00104$
      000DF2                       1813 00155$:
      000DF2 BF 0C 02         [24] 1814 	cjne	r7,#0x0c,00156$
      000DF5 80 35            [24] 1815 	sjmp	00106$
      000DF7                       1816 00156$:
      000DF7 BF 1F 02         [24] 1817 	cjne	r7,#0x1f,00157$
      000DFA 80 05            [24] 1818 	sjmp	00102$
      000DFC                       1819 00157$:
                                   1820 ;	../UI_Manager/ui.c:542: case BUTTON_UP:
      000DFC BF 65 36         [24] 1821 	cjne	r7,#0x65,00107$
      000DFF 80 11            [24] 1822 	sjmp	00104$
      000E01                       1823 00102$:
                                   1824 ;	../UI_Manager/ui.c:543: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
      000E01 75 65 01         [24] 1825 	mov	_set_runtime_data_PARM_2,#0x01
      000E04 75 66 00         [24] 1826 	mov	_set_runtime_data_PARM_3,#0x00
      000E07 75 82 04         [24] 1827 	mov	dpl,#0x04
      000E0A 12 27 A7         [24] 1828 	lcall	_set_runtime_data
                                   1829 ;	../UI_Manager/ui.c:544: changed = 0xFF;
      000E0D 75 0A FF         [24] 1830 	mov	_changed,#0xff
                                   1831 ;	../UI_Manager/ui.c:545: break;
                                   1832 ;	../UI_Manager/ui.c:547: case BUTTON_DOWN:
      000E10 80 23            [24] 1833 	sjmp	00107$
      000E12                       1834 00104$:
                                   1835 ;	../UI_Manager/ui.c:548: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
      000E12 75 65 02         [24] 1836 	mov	_set_runtime_data_PARM_2,#0x02
      000E15 75 66 00         [24] 1837 	mov	_set_runtime_data_PARM_3,#0x00
      000E18 75 82 04         [24] 1838 	mov	dpl,#0x04
      000E1B 12 27 A7         [24] 1839 	lcall	_set_runtime_data
                                   1840 ;	../UI_Manager/ui.c:549: changed = 0xFF;  
      000E1E 75 0A FF         [24] 1841 	mov	_changed,#0xff
                                   1842 ;	../UI_Manager/ui.c:550: break;
                                   1843 ;	../UI_Manager/ui.c:551: case BUTTON_FUNCTION:
      000E21 80 12            [24] 1844 	sjmp	00107$
      000E23                       1845 00105$:
                                   1846 ;	../UI_Manager/ui.c:552: set_ui_state(INC, NULL);
      000E23 75 17 00         [24] 1847 	mov	_set_ui_state_PARM_2,#0x00
      000E26 75 82 01         [24] 1848 	mov	dpl,#0x01
                                   1849 ;	../UI_Manager/ui.c:553: return;
      000E29 02 13 20         [24] 1850 	ljmp	_set_ui_state
                                   1851 ;	../UI_Manager/ui.c:554: case BUTTON_FUN_UP:
      000E2C                       1852 00106$:
                                   1853 ;	../UI_Manager/ui.c:555: set_ui_state(DEC, NULL);
      000E2C 75 17 00         [24] 1854 	mov	_set_ui_state_PARM_2,#0x00
      000E2F 75 82 02         [24] 1855 	mov	dpl,#0x02
                                   1856 ;	../UI_Manager/ui.c:556: return;
      000E32 02 13 20         [24] 1857 	ljmp	_set_ui_state
                                   1858 ;	../UI_Manager/ui.c:557: }
      000E35                       1859 00107$:
                                   1860 ;	../UI_Manager/ui.c:559: if(Changed){
      000E35 E5 09            [12] 1861 	mov	a,_Changed
      000E37 60 21            [24] 1862 	jz	00109$
                                   1863 ;	../UI_Manager/ui.c:560: Changed = 0x00;
      000E39 75 09 00         [24] 1864 	mov	_Changed,#0x00
                                   1865 ;	../UI_Manager/ui.c:561: changed = 0xFF;
      000E3C 75 0A FF         [24] 1866 	mov	_changed,#0xff
                                   1867 ;	../UI_Manager/ui.c:563: exe_command(CLEAR_DISPLAY);
      000E3F 90 80 00         [24] 1868 	mov	dptr,#0x8000
      000E42 12 1A 5F         [24] 1869 	lcall	_exe_command
                                   1870 ;	../UI_Manager/ui.c:565: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
      000E45 75 21 0C         [24] 1871 	mov	_write_string_PARM_2,#0x0c
      000E48 75 22 03         [24] 1872 	mov	_write_string_PARM_3,#0x03
      000E4B 75 23 00         [24] 1873 	mov	_write_string_PARM_4,#0x00
      000E4E 75 24 00         [24] 1874 	mov	_write_string_PARM_5,#0x00
      000E51 90 2E C6         [24] 1875 	mov	dptr,#___str_19
      000E54 75 F0 80         [24] 1876 	mov	b,#0x80
      000E57 12 18 0C         [24] 1877 	lcall	_write_string
      000E5A                       1878 00109$:
                                   1879 ;	../UI_Manager/ui.c:569: if(changed){
      000E5A E5 0A            [12] 1880 	mov	a,_changed
      000E5C 60 4F            [24] 1881 	jz	00115$
                                   1882 ;	../UI_Manager/ui.c:570: changed = 0x00;
      000E5E 75 0A 00         [24] 1883 	mov	_changed,#0x00
                                   1884 ;	../UI_Manager/ui.c:572: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
      000E61 75 82 04         [24] 1885 	mov	dpl,#0x04
      000E64 12 27 13         [24] 1886 	lcall	_get_runtime_data
      000E67 E5 82            [12] 1887 	mov	a,dpl
                                   1888 ;	../UI_Manager/ui.c:573: write_string("Off", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E69 70 14            [24] 1889 	jnz	00111$
      000E6B 75 21 10         [24] 1890 	mov	_write_string_PARM_2,#0x10
      000E6E 75 22 03         [24] 1891 	mov	_write_string_PARM_3,#0x03
      000E71 75 23 01         [24] 1892 	mov	_write_string_PARM_4,#0x01
      000E74 F5 24            [12] 1893 	mov	_write_string_PARM_5,a
      000E76 90 2E D2         [24] 1894 	mov	dptr,#___str_20
      000E79 75 F0 80         [24] 1895 	mov	b,#0x80
      000E7C 02 18 0C         [24] 1896 	ljmp	_write_string
      000E7F                       1897 00111$:
                                   1898 ;	../UI_Manager/ui.c:575: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E7F 75 21 10         [24] 1899 	mov	_write_string_PARM_2,#0x10
      000E82 75 22 03         [24] 1900 	mov	_write_string_PARM_3,#0x03
      000E85 75 23 01         [24] 1901 	mov	_write_string_PARM_4,#0x01
      000E88 75 24 00         [24] 1902 	mov	_write_string_PARM_5,#0x00
      000E8B 90 2E D6         [24] 1903 	mov	dptr,#___str_21
      000E8E 75 F0 80         [24] 1904 	mov	b,#0x80
      000E91 12 18 0C         [24] 1905 	lcall	_write_string
                                   1906 ;	../UI_Manager/ui.c:576: write_number(get_runtime_data(MACRO_SPEED_INDEX), 6, LINE_1, NOT_SELECTED);
      000E94 75 82 04         [24] 1907 	mov	dpl,#0x04
      000E97 12 27 13         [24] 1908 	lcall	_get_runtime_data
      000E9A AF 82            [24] 1909 	mov	r7,dpl
      000E9C 7E 00            [12] 1910 	mov	r6,#0x00
      000E9E 75 25 06         [24] 1911 	mov	_write_number_PARM_2,#0x06
      000EA1 75 26 01         [24] 1912 	mov	_write_number_PARM_3,#0x01
                                   1913 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000EA4 8E 27            [24] 1914 	mov	_write_number_PARM_4,r6
      000EA6 8F 82            [24] 1915 	mov	dpl,r7
      000EA8 8E 83            [24] 1916 	mov	dph,r6
                                   1917 ;	../UI_Manager/ui.c:580: }
      000EAA 02 18 D0         [24] 1918 	ljmp	_write_number
      000EAD                       1919 00115$:
      000EAD 22               [24] 1920 	ret
                                   1921 ;------------------------------------------------------------
                                   1922 ;Allocation info for local variables in function 'colorPage'
                                   1923 ;------------------------------------------------------------
                                   1924 ;action                    Allocated to registers r7 
                                   1925 ;index                     Allocated to registers r6 
                                   1926 ;------------------------------------------------------------
                                   1927 ;	../UI_Manager/ui.c:582: void colorPage(uint8_t action){
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function colorPage
                                   1930 ;	-----------------------------------------
      000EAE                       1931 _colorPage:
      000EAE AF 82            [24] 1932 	mov	r7,dpl
                                   1933 ;	../UI_Manager/ui.c:583: uint8_t index = 0;
      000EB0 7E 00            [12] 1934 	mov	r6,#0x00
                                   1935 ;	../UI_Manager/ui.c:585: switch (State)
      000EB2 AD 08            [24] 1936 	mov	r5,_State
      000EB4 BD 06 02         [24] 1937 	cjne	r5,#0x06,00174$
      000EB7 80 0F            [24] 1938 	sjmp	00101$
      000EB9                       1939 00174$:
      000EB9 BD 07 02         [24] 1940 	cjne	r5,#0x07,00175$
      000EBC 80 12            [24] 1941 	sjmp	00103$
      000EBE                       1942 00175$:
      000EBE BD 08 02         [24] 1943 	cjne	r5,#0x08,00176$
      000EC1 80 09            [24] 1944 	sjmp	00102$
      000EC3                       1945 00176$:
                                   1946 ;	../UI_Manager/ui.c:587: case MANUAL_RED_STATE:
      000EC3 BD 09 10         [24] 1947 	cjne	r5,#0x09,00105$
      000EC6 80 0C            [24] 1948 	sjmp	00104$
      000EC8                       1949 00101$:
                                   1950 ;	../UI_Manager/ui.c:588: index = RED_INDEX;
      000EC8 7E 05            [12] 1951 	mov	r6,#0x05
                                   1952 ;	../UI_Manager/ui.c:589: break;
                                   1953 ;	../UI_Manager/ui.c:590: case MANUAL_GREEN_STATE:
      000ECA 80 0A            [24] 1954 	sjmp	00105$
      000ECC                       1955 00102$:
                                   1956 ;	../UI_Manager/ui.c:591: index = GREEN_INDEX;
      000ECC 7E 06            [12] 1957 	mov	r6,#0x06
                                   1958 ;	../UI_Manager/ui.c:592: break;
                                   1959 ;	../UI_Manager/ui.c:593: case MANUAL_BLUE_STATE:
      000ECE 80 06            [24] 1960 	sjmp	00105$
      000ED0                       1961 00103$:
                                   1962 ;	../UI_Manager/ui.c:594: index = BLUE_INDEX;
      000ED0 7E 07            [12] 1963 	mov	r6,#0x07
                                   1964 ;	../UI_Manager/ui.c:595: break;
                                   1965 ;	../UI_Manager/ui.c:596: case MANUAL_STROBE_STATE:
      000ED2 80 02            [24] 1966 	sjmp	00105$
      000ED4                       1967 00104$:
                                   1968 ;	../UI_Manager/ui.c:597: index = STROBE_INDEX;
      000ED4 7E 08            [12] 1969 	mov	r6,#0x08
                                   1970 ;	../UI_Manager/ui.c:599: }
      000ED6                       1971 00105$:
                                   1972 ;	../UI_Manager/ui.c:601: switch (action)
      000ED6 BF 02 02         [24] 1973 	cjne	r7,#0x02,00178$
      000ED9 80 41            [24] 1974 	sjmp	00110$
      000EDB                       1975 00178$:
      000EDB BF 03 02         [24] 1976 	cjne	r7,#0x03,00179$
      000EDE 80 14            [24] 1977 	sjmp	00107$
      000EE0                       1978 00179$:
      000EE0 BF 0A 02         [24] 1979 	cjne	r7,#0x0a,00180$
      000EE3 80 23            [24] 1980 	sjmp	00109$
      000EE5                       1981 00180$:
      000EE5 BF 0C 02         [24] 1982 	cjne	r7,#0x0c,00181$
      000EE8 80 3B            [24] 1983 	sjmp	00111$
      000EEA                       1984 00181$:
      000EEA BF 1F 02         [24] 1985 	cjne	r7,#0x1f,00182$
      000EED 80 05            [24] 1986 	sjmp	00107$
      000EEF                       1987 00182$:
                                   1988 ;	../UI_Manager/ui.c:604: case BUTTON_UP:
      000EEF BF 65 3C         [24] 1989 	cjne	r7,#0x65,00112$
      000EF2 80 14            [24] 1990 	sjmp	00109$
      000EF4                       1991 00107$:
                                   1992 ;	../UI_Manager/ui.c:605: set_runtime_data(index, INC, NULL);
      000EF4 75 65 01         [24] 1993 	mov	_set_runtime_data_PARM_2,#0x01
      000EF7 75 66 00         [24] 1994 	mov	_set_runtime_data_PARM_3,#0x00
      000EFA 8E 82            [24] 1995 	mov	dpl,r6
      000EFC C0 06            [24] 1996 	push	ar6
      000EFE 12 27 A7         [24] 1997 	lcall	_set_runtime_data
      000F01 D0 06            [24] 1998 	pop	ar6
                                   1999 ;	../UI_Manager/ui.c:606: changed = 0xFF;
      000F03 75 0A FF         [24] 2000 	mov	_changed,#0xff
                                   2001 ;	../UI_Manager/ui.c:607: break;
                                   2002 ;	../UI_Manager/ui.c:609: case BUTTON_DOWN:
      000F06 80 26            [24] 2003 	sjmp	00112$
      000F08                       2004 00109$:
                                   2005 ;	../UI_Manager/ui.c:610: set_runtime_data(index, DEC, NULL);
      000F08 75 65 02         [24] 2006 	mov	_set_runtime_data_PARM_2,#0x02
      000F0B 75 66 00         [24] 2007 	mov	_set_runtime_data_PARM_3,#0x00
      000F0E 8E 82            [24] 2008 	mov	dpl,r6
      000F10 C0 06            [24] 2009 	push	ar6
      000F12 12 27 A7         [24] 2010 	lcall	_set_runtime_data
      000F15 D0 06            [24] 2011 	pop	ar6
                                   2012 ;	../UI_Manager/ui.c:611: changed = 0xFF;  
      000F17 75 0A FF         [24] 2013 	mov	_changed,#0xff
                                   2014 ;	../UI_Manager/ui.c:612: break;
                                   2015 ;	../UI_Manager/ui.c:613: case BUTTON_FUNCTION:
      000F1A 80 12            [24] 2016 	sjmp	00112$
      000F1C                       2017 00110$:
                                   2018 ;	../UI_Manager/ui.c:614: set_ui_state(INC, NULL);
      000F1C 75 17 00         [24] 2019 	mov	_set_ui_state_PARM_2,#0x00
      000F1F 75 82 01         [24] 2020 	mov	dpl,#0x01
                                   2021 ;	../UI_Manager/ui.c:615: return;
      000F22 02 13 20         [24] 2022 	ljmp	_set_ui_state
                                   2023 ;	../UI_Manager/ui.c:616: case BUTTON_FUN_UP:
      000F25                       2024 00111$:
                                   2025 ;	../UI_Manager/ui.c:617: set_ui_state(DEC, NULL);
      000F25 75 17 00         [24] 2026 	mov	_set_ui_state_PARM_2,#0x00
      000F28 75 82 02         [24] 2027 	mov	dpl,#0x02
                                   2028 ;	../UI_Manager/ui.c:618: return;
      000F2B 02 13 20         [24] 2029 	ljmp	_set_ui_state
                                   2030 ;	../UI_Manager/ui.c:619: }
      000F2E                       2031 00112$:
                                   2032 ;	../UI_Manager/ui.c:621: if(Changed){
      000F2E E5 09            [12] 2033 	mov	a,_Changed
      000F30 60 35            [24] 2034 	jz	00114$
                                   2035 ;	../UI_Manager/ui.c:622: Changed = 0x00;
      000F32 75 09 00         [24] 2036 	mov	_Changed,#0x00
                                   2037 ;	../UI_Manager/ui.c:623: changed = 0xFF;
      000F35 75 0A FF         [24] 2038 	mov	_changed,#0xff
                                   2039 ;	../UI_Manager/ui.c:625: exe_command(CLEAR_DISPLAY);
      000F38 90 80 00         [24] 2040 	mov	dptr,#0x8000
      000F3B C0 06            [24] 2041 	push	ar6
      000F3D 12 1A 5F         [24] 2042 	lcall	_exe_command
                                   2043 ;	../UI_Manager/ui.c:627: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
      000F40 AF 08            [24] 2044 	mov	r7,_State
      000F42 74 C8            [12] 2045 	mov	a,#0xc8
      000F44 2F               [12] 2046 	add	a,r7
      000F45 F5 82            [12] 2047 	mov	dpl,a
      000F47 12 13 C2         [24] 2048 	lcall	_getString
      000F4A AC 82            [24] 2049 	mov	r4,dpl
      000F4C AD 83            [24] 2050 	mov	r5,dph
      000F4E AF F0            [24] 2051 	mov	r7,b
      000F50 75 21 10         [24] 2052 	mov	_write_string_PARM_2,#0x10
      000F53 75 22 03         [24] 2053 	mov	_write_string_PARM_3,#0x03
      000F56 75 23 00         [24] 2054 	mov	_write_string_PARM_4,#0x00
      000F59 75 24 00         [24] 2055 	mov	_write_string_PARM_5,#0x00
      000F5C 8C 82            [24] 2056 	mov	dpl,r4
      000F5E 8D 83            [24] 2057 	mov	dph,r5
      000F60 8F F0            [24] 2058 	mov	b,r7
      000F62 12 18 0C         [24] 2059 	lcall	_write_string
      000F65 D0 06            [24] 2060 	pop	ar6
      000F67                       2061 00114$:
                                   2062 ;	../UI_Manager/ui.c:631: if(changed){
      000F67 E5 0A            [12] 2063 	mov	a,_changed
      000F69 60 58            [24] 2064 	jz	00120$
                                   2065 ;	../UI_Manager/ui.c:632: changed = 0x00;
      000F6B 75 0A 00         [24] 2066 	mov	_changed,#0x00
                                   2067 ;	../UI_Manager/ui.c:634: if(get_runtime_data(get_runtime_data(index)) == 0){
      000F6E 8E 82            [24] 2068 	mov	dpl,r6
      000F70 C0 06            [24] 2069 	push	ar6
      000F72 12 27 13         [24] 2070 	lcall	_get_runtime_data
      000F75 12 27 13         [24] 2071 	lcall	_get_runtime_data
      000F78 E5 82            [12] 2072 	mov	a,dpl
      000F7A D0 06            [24] 2073 	pop	ar6
                                   2074 ;	../UI_Manager/ui.c:635: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      000F7C 70 14            [24] 2075 	jnz	00116$
      000F7E 75 21 10         [24] 2076 	mov	_write_string_PARM_2,#0x10
      000F81 75 22 06         [24] 2077 	mov	_write_string_PARM_3,#0x06
      000F84 75 23 01         [24] 2078 	mov	_write_string_PARM_4,#0x01
      000F87 F5 24            [12] 2079 	mov	_write_string_PARM_5,a
      000F89 90 2E D2         [24] 2080 	mov	dptr,#___str_20
      000F8C 75 F0 80         [24] 2081 	mov	b,#0x80
      000F8F 02 18 0C         [24] 2082 	ljmp	_write_string
      000F92                       2083 00116$:
                                   2084 ;	../UI_Manager/ui.c:637: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000F92 75 21 10         [24] 2085 	mov	_write_string_PARM_2,#0x10
      000F95 75 22 00         [24] 2086 	mov	_write_string_PARM_3,#0x00
      000F98 75 23 01         [24] 2087 	mov	_write_string_PARM_4,#0x01
      000F9B 75 24 00         [24] 2088 	mov	_write_string_PARM_5,#0x00
      000F9E 90 2E D6         [24] 2089 	mov	dptr,#___str_21
      000FA1 75 F0 80         [24] 2090 	mov	b,#0x80
      000FA4 C0 06            [24] 2091 	push	ar6
      000FA6 12 18 0C         [24] 2092 	lcall	_write_string
      000FA9 D0 06            [24] 2093 	pop	ar6
                                   2094 ;	../UI_Manager/ui.c:638: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
      000FAB 8E 82            [24] 2095 	mov	dpl,r6
      000FAD 12 27 13         [24] 2096 	lcall	_get_runtime_data
      000FB0 AF 82            [24] 2097 	mov	r7,dpl
      000FB2 7E 00            [12] 2098 	mov	r6,#0x00
      000FB4 75 25 06         [24] 2099 	mov	_write_number_PARM_2,#0x06
      000FB7 75 26 01         [24] 2100 	mov	_write_number_PARM_3,#0x01
                                   2101 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000FBA 8E 27            [24] 2102 	mov	_write_number_PARM_4,r6
      000FBC 8F 82            [24] 2103 	mov	dpl,r7
      000FBE 8E 83            [24] 2104 	mov	dph,r6
                                   2105 ;	../UI_Manager/ui.c:641: }
      000FC0 02 18 D0         [24] 2106 	ljmp	_write_number
      000FC3                       2107 00120$:
      000FC3 22               [24] 2108 	ret
                                   2109 ;------------------------------------------------------------
                                   2110 ;Allocation info for local variables in function 'remotePage'
                                   2111 ;------------------------------------------------------------
                                   2112 ;action                    Allocated to registers r7 
                                   2113 ;remoteNumber              Allocated to registers r6 
                                   2114 ;index                     Allocated to registers r5 
                                   2115 ;------------------------------------------------------------
                                   2116 ;	../UI_Manager/ui.c:643: void remotePage(uint8_t action){
                                   2117 ;	-----------------------------------------
                                   2118 ;	 function remotePage
                                   2119 ;	-----------------------------------------
      000FC4                       2120 _remotePage:
      000FC4 AF 82            [24] 2121 	mov	r7,dpl
                                   2122 ;	../UI_Manager/ui.c:644: uint8_t remoteNumber = MANUAL_REMOTE_ACTION_6_STATE - State + 4;
      000FC6 AE 08            [24] 2123 	mov	r6,_State
      000FC8 74 10            [12] 2124 	mov	a,#0x10
      000FCA C3               [12] 2125 	clr	c
      000FCB 9E               [12] 2126 	subb	a,r6
      000FCC FE               [12] 2127 	mov	r6,a
                                   2128 ;	../UI_Manager/ui.c:645: uint8_t index = 0;
      000FCD 7D 00            [12] 2129 	mov	r5,#0x00
                                   2130 ;	../UI_Manager/ui.c:647: switch (State)
      000FCF AC 08            [24] 2131 	mov	r4,_State
      000FD1 BC 0A 02         [24] 2132 	cjne	r4,#0x0a,00168$
      000FD4 80 0A            [24] 2133 	sjmp	00101$
      000FD6                       2134 00168$:
      000FD6 BC 0B 02         [24] 2135 	cjne	r4,#0x0b,00169$
      000FD9 80 09            [24] 2136 	sjmp	00102$
      000FDB                       2137 00169$:
                                   2138 ;	../UI_Manager/ui.c:649: case MANUAL_REMOTE_ACTION_4_STATE:
      000FDB BC 0C 0C         [24] 2139 	cjne	r4,#0x0c,00104$
      000FDE 80 08            [24] 2140 	sjmp	00103$
      000FE0                       2141 00101$:
                                   2142 ;	../UI_Manager/ui.c:650: index = R4_INDEX;
      000FE0 7D 09            [12] 2143 	mov	r5,#0x09
                                   2144 ;	../UI_Manager/ui.c:651: break;
                                   2145 ;	../UI_Manager/ui.c:652: case MANUAL_REMOTE_ACTION_5_STATE:
      000FE2 80 06            [24] 2146 	sjmp	00104$
      000FE4                       2147 00102$:
                                   2148 ;	../UI_Manager/ui.c:653: index = R5_INDEX;
      000FE4 7D 0A            [12] 2149 	mov	r5,#0x0a
                                   2150 ;	../UI_Manager/ui.c:654: break;
                                   2151 ;	../UI_Manager/ui.c:655: case MANUAL_REMOTE_ACTION_6_STATE:
      000FE6 80 02            [24] 2152 	sjmp	00104$
      000FE8                       2153 00103$:
                                   2154 ;	../UI_Manager/ui.c:656: index = R6_INDEX;
      000FE8 7D 0B            [12] 2155 	mov	r5,#0x0b
                                   2156 ;	../UI_Manager/ui.c:658: }
      000FEA                       2157 00104$:
                                   2158 ;	../UI_Manager/ui.c:660: switch (action)
      000FEA BF 02 02         [24] 2159 	cjne	r7,#0x02,00171$
      000FED 80 3F            [24] 2160 	sjmp	00107$
      000FEF                       2161 00171$:
      000FEF BF 03 02         [24] 2162 	cjne	r7,#0x03,00172$
      000FF2 80 0A            [24] 2163 	sjmp	00105$
      000FF4                       2164 00172$:
      000FF4 BF 0A 02         [24] 2165 	cjne	r7,#0x0a,00173$
      000FF7 80 1D            [24] 2166 	sjmp	00106$
      000FF9                       2167 00173$:
                                   2168 ;	../UI_Manager/ui.c:662: case BUTTON_UP:
      000FF9 BF 0C 44         [24] 2169 	cjne	r7,#0x0c,00109$
      000FFC 80 39            [24] 2170 	sjmp	00108$
      000FFE                       2171 00105$:
                                   2172 ;	../UI_Manager/ui.c:663: set_runtime_data(index, INC, NULL);
      000FFE 75 65 01         [24] 2173 	mov	_set_runtime_data_PARM_2,#0x01
      001001 75 66 00         [24] 2174 	mov	_set_runtime_data_PARM_3,#0x00
      001004 8D 82            [24] 2175 	mov	dpl,r5
      001006 C0 06            [24] 2176 	push	ar6
      001008 C0 05            [24] 2177 	push	ar5
      00100A 12 27 A7         [24] 2178 	lcall	_set_runtime_data
      00100D D0 05            [24] 2179 	pop	ar5
      00100F D0 06            [24] 2180 	pop	ar6
                                   2181 ;	../UI_Manager/ui.c:664: changed = 0xFF;
      001011 75 0A FF         [24] 2182 	mov	_changed,#0xff
                                   2183 ;	../UI_Manager/ui.c:665: break;
                                   2184 ;	../UI_Manager/ui.c:666: case BUTTON_DOWN:
      001014 80 2A            [24] 2185 	sjmp	00109$
      001016                       2186 00106$:
                                   2187 ;	../UI_Manager/ui.c:667: set_runtime_data(index, DEC, NULL);
      001016 75 65 02         [24] 2188 	mov	_set_runtime_data_PARM_2,#0x02
      001019 75 66 00         [24] 2189 	mov	_set_runtime_data_PARM_3,#0x00
      00101C 8D 82            [24] 2190 	mov	dpl,r5
      00101E C0 06            [24] 2191 	push	ar6
      001020 C0 05            [24] 2192 	push	ar5
      001022 12 27 A7         [24] 2193 	lcall	_set_runtime_data
      001025 D0 05            [24] 2194 	pop	ar5
      001027 D0 06            [24] 2195 	pop	ar6
                                   2196 ;	../UI_Manager/ui.c:668: changed = 0xFF;  
      001029 75 0A FF         [24] 2197 	mov	_changed,#0xff
                                   2198 ;	../UI_Manager/ui.c:669: break;
                                   2199 ;	../UI_Manager/ui.c:670: case BUTTON_FUNCTION:
      00102C 80 12            [24] 2200 	sjmp	00109$
      00102E                       2201 00107$:
                                   2202 ;	../UI_Manager/ui.c:671: set_ui_state(INC, NULL);
      00102E 75 17 00         [24] 2203 	mov	_set_ui_state_PARM_2,#0x00
      001031 75 82 01         [24] 2204 	mov	dpl,#0x01
                                   2205 ;	../UI_Manager/ui.c:672: return;
      001034 02 13 20         [24] 2206 	ljmp	_set_ui_state
                                   2207 ;	../UI_Manager/ui.c:673: case BUTTON_FUN_UP:
      001037                       2208 00108$:
                                   2209 ;	../UI_Manager/ui.c:674: set_ui_state(DEC, NULL);
      001037 75 17 00         [24] 2210 	mov	_set_ui_state_PARM_2,#0x00
      00103A 75 82 02         [24] 2211 	mov	dpl,#0x02
                                   2212 ;	../UI_Manager/ui.c:675: return;
      00103D 02 13 20         [24] 2213 	ljmp	_set_ui_state
                                   2214 ;	../UI_Manager/ui.c:676: }
      001040                       2215 00109$:
                                   2216 ;	../UI_Manager/ui.c:678: if(Changed){
      001040 E5 09            [12] 2217 	mov	a,_Changed
      001042 60 6C            [24] 2218 	jz	00115$
                                   2219 ;	../UI_Manager/ui.c:679: Changed = 0x00;
      001044 75 09 00         [24] 2220 	mov	_Changed,#0x00
                                   2221 ;	../UI_Manager/ui.c:680: changed = 0xFF;
      001047 75 0A FF         [24] 2222 	mov	_changed,#0xff
                                   2223 ;	../UI_Manager/ui.c:682: exe_command(CLEAR_DISPLAY);
      00104A 90 80 00         [24] 2224 	mov	dptr,#0x8000
      00104D C0 06            [24] 2225 	push	ar6
      00104F C0 05            [24] 2226 	push	ar5
      001051 12 1A 5F         [24] 2227 	lcall	_exe_command
                                   2228 ;	../UI_Manager/ui.c:684: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
      001054 75 21 10         [24] 2229 	mov	_write_string_PARM_2,#0x10
      001057 75 22 01         [24] 2230 	mov	_write_string_PARM_3,#0x01
      00105A 75 23 00         [24] 2231 	mov	_write_string_PARM_4,#0x00
      00105D 75 24 00         [24] 2232 	mov	_write_string_PARM_5,#0x00
      001060 90 2E D7         [24] 2233 	mov	dptr,#___str_22
      001063 75 F0 80         [24] 2234 	mov	b,#0x80
      001066 12 18 0C         [24] 2235 	lcall	_write_string
      001069 D0 05            [24] 2236 	pop	ar5
      00106B D0 06            [24] 2237 	pop	ar6
                                   2238 ;	../UI_Manager/ui.c:685: switch (remoteNumber)
      00106D BE 04 02         [24] 2239 	cjne	r6,#0x04,00176$
      001070 80 0A            [24] 2240 	sjmp	00110$
      001072                       2241 00176$:
      001072 BE 05 02         [24] 2242 	cjne	r6,#0x05,00177$
      001075 80 17            [24] 2243 	sjmp	00111$
      001077                       2244 00177$:
                                   2245 ;	../UI_Manager/ui.c:687: case 4:
      001077 BE 06 36         [24] 2246 	cjne	r6,#0x06,00115$
      00107A 80 24            [24] 2247 	sjmp	00112$
      00107C                       2248 00110$:
                                   2249 ;	../UI_Manager/ui.c:688: write_char(CHAR_4, 8, LINE_0);
      00107C 75 2B 08         [24] 2250 	mov	_write_char_PARM_2,#0x08
      00107F 75 2C 00         [24] 2251 	mov	_write_char_PARM_3,#0x00
      001082 75 82 2C         [24] 2252 	mov	dpl,#0x2c
      001085 C0 05            [24] 2253 	push	ar5
      001087 12 1A 2A         [24] 2254 	lcall	_write_char
      00108A D0 05            [24] 2255 	pop	ar5
                                   2256 ;	../UI_Manager/ui.c:689: break;
                                   2257 ;	../UI_Manager/ui.c:690: case 5:
      00108C 80 22            [24] 2258 	sjmp	00115$
      00108E                       2259 00111$:
                                   2260 ;	../UI_Manager/ui.c:691: write_char(CHAR_5, 8, LINE_0);
      00108E 75 2B 08         [24] 2261 	mov	_write_char_PARM_2,#0x08
      001091 75 2C 00         [24] 2262 	mov	_write_char_PARM_3,#0x00
      001094 75 82 AC         [24] 2263 	mov	dpl,#0xac
      001097 C0 05            [24] 2264 	push	ar5
      001099 12 1A 2A         [24] 2265 	lcall	_write_char
      00109C D0 05            [24] 2266 	pop	ar5
                                   2267 ;	../UI_Manager/ui.c:692: break;
                                   2268 ;	../UI_Manager/ui.c:693: case 6:
      00109E 80 10            [24] 2269 	sjmp	00115$
      0010A0                       2270 00112$:
                                   2271 ;	../UI_Manager/ui.c:694: write_char(CHAR_6, 8, LINE_0);
      0010A0 75 2B 08         [24] 2272 	mov	_write_char_PARM_2,#0x08
      0010A3 75 2C 00         [24] 2273 	mov	_write_char_PARM_3,#0x00
      0010A6 75 82 6C         [24] 2274 	mov	dpl,#0x6c
      0010A9 C0 05            [24] 2275 	push	ar5
      0010AB 12 1A 2A         [24] 2276 	lcall	_write_char
      0010AE D0 05            [24] 2277 	pop	ar5
                                   2278 ;	../UI_Manager/ui.c:696: }
      0010B0                       2279 00115$:
                                   2280 ;	../UI_Manager/ui.c:699: if(changed){
      0010B0 E5 0A            [12] 2281 	mov	a,_changed
      0010B2 60 2D            [24] 2282 	jz	00118$
                                   2283 ;	../UI_Manager/ui.c:700: changed = 0x00;
      0010B4 75 0A 00         [24] 2284 	mov	_changed,#0x00
                                   2285 ;	../UI_Manager/ui.c:701: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
      0010B7 8D 82            [24] 2286 	mov	dpl,r5
      0010B9 12 27 13         [24] 2287 	lcall	_get_runtime_data
      0010BC AF 82            [24] 2288 	mov	r7,dpl
      0010BE 74 3C            [12] 2289 	mov	a,#0x3c
      0010C0 2F               [12] 2290 	add	a,r7
      0010C1 F5 82            [12] 2291 	mov	dpl,a
      0010C3 12 13 C2         [24] 2292 	lcall	_getString
      0010C6 AD 82            [24] 2293 	mov	r5,dpl
      0010C8 AE 83            [24] 2294 	mov	r6,dph
      0010CA AF F0            [24] 2295 	mov	r7,b
      0010CC 75 21 10         [24] 2296 	mov	_write_string_PARM_2,#0x10
      0010CF 75 22 04         [24] 2297 	mov	_write_string_PARM_3,#0x04
      0010D2 75 23 01         [24] 2298 	mov	_write_string_PARM_4,#0x01
      0010D5 75 24 00         [24] 2299 	mov	_write_string_PARM_5,#0x00
      0010D8 8D 82            [24] 2300 	mov	dpl,r5
      0010DA 8E 83            [24] 2301 	mov	dph,r6
      0010DC 8F F0            [24] 2302 	mov	b,r7
                                   2303 ;	../UI_Manager/ui.c:703: }
      0010DE 02 18 0C         [24] 2304 	ljmp	_write_string
      0010E1                       2305 00118$:
      0010E1 22               [24] 2306 	ret
                                   2307 ;------------------------------------------------------------
                                   2308 ;Allocation info for local variables in function 'saveLoadPage'
                                   2309 ;------------------------------------------------------------
                                   2310 ;slot                      Allocated with name '_saveLoadPage_slot_65536_134'
                                   2311 ;action                    Allocated to registers r7 
                                   2312 ;------------------------------------------------------------
                                   2313 ;	../UI_Manager/ui.c:705: void saveLoadPage(uint8_t action){
                                   2314 ;	-----------------------------------------
                                   2315 ;	 function saveLoadPage
                                   2316 ;	-----------------------------------------
      0010E2                       2317 _saveLoadPage:
      0010E2 AF 82            [24] 2318 	mov	r7,dpl
                                   2319 ;	../UI_Manager/ui.c:708: switch (action)
      0010E4 BF 02 03         [24] 2320 	cjne	r7,#0x02,00161$
      0010E7 02 11 78         [24] 2321 	ljmp	00107$
      0010EA                       2322 00161$:
      0010EA BF 03 03         [24] 2323 	cjne	r7,#0x03,00162$
      0010ED 02 11 6A         [24] 2324 	ljmp	00105$
      0010F0                       2325 00162$:
      0010F0 BF 0A 03         [24] 2326 	cjne	r7,#0x0a,00163$
      0010F3 02 11 71         [24] 2327 	ljmp	00106$
      0010F6                       2328 00163$:
      0010F6 BF 0C 03         [24] 2329 	cjne	r7,#0x0c,00164$
      0010F9 02 11 81         [24] 2330 	ljmp	00108$
      0010FC                       2331 00164$:
      0010FC BF 1E 02         [24] 2332 	cjne	r7,#0x1e,00165$
      0010FF 80 03            [24] 2333 	sjmp	00166$
      001101                       2334 00165$:
      001101 02 11 8A         [24] 2335 	ljmp	00109$
      001104                       2336 00166$:
                                   2337 ;	../UI_Manager/ui.c:711: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
      001104 75 F0 03         [24] 2338 	mov	b,#0x03
      001107 E5 16            [12] 2339 	mov	a,_saveLoadPage_slot_65536_134
      001109 84               [48] 2340 	div	ab
      00110A AF F0            [24] 2341 	mov	r7,b
      00110C 74 0D            [12] 2342 	mov	a,#0x0d
      00110E B5 08 06         [24] 2343 	cjne	a,_State,00119$
      001111 7D 01            [12] 2344 	mov	r5,#0x01
      001113 7E 00            [12] 2345 	mov	r6,#0x00
      001115 80 04            [24] 2346 	sjmp	00120$
      001117                       2347 00119$:
      001117 7D 00            [12] 2348 	mov	r5,#0x00
      001119 7E 00            [12] 2349 	mov	r6,#0x00
      00111B                       2350 00120$:
      00111B 8D 72            [24] 2351 	mov	_save_load_settings_PARM_2,r5
      00111D 8F 82            [24] 2352 	mov	dpl,r7
      00111F 12 26 BD         [24] 2353 	lcall	_save_load_settings
                                   2354 ;	../UI_Manager/ui.c:712: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
      001122 75 21 10         [24] 2355 	mov	_write_string_PARM_2,#0x10
      001125 75 22 00         [24] 2356 	mov	_write_string_PARM_3,#0x00
      001128 75 23 01         [24] 2357 	mov	_write_string_PARM_4,#0x01
      00112B 75 24 00         [24] 2358 	mov	_write_string_PARM_5,#0x00
      00112E 90 2E D6         [24] 2359 	mov	dptr,#___str_21
      001131 75 F0 80         [24] 2360 	mov	b,#0x80
      001134 12 18 0C         [24] 2361 	lcall	_write_string
                                   2362 ;	../UI_Manager/ui.c:714: if(State == MANUAL_SAVE_SETTINGS_STATE){
      001137 74 0D            [12] 2363 	mov	a,#0x0d
      001139 B5 08 17         [24] 2364 	cjne	a,_State,00103$
                                   2365 ;	../UI_Manager/ui.c:715: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      00113C 75 21 10         [24] 2366 	mov	_write_string_PARM_2,#0x10
      00113F 75 22 06         [24] 2367 	mov	_write_string_PARM_3,#0x06
      001142 75 23 01         [24] 2368 	mov	_write_string_PARM_4,#0x01
      001145 75 24 00         [24] 2369 	mov	_write_string_PARM_5,#0x00
      001148 90 2E E7         [24] 2370 	mov	dptr,#___str_23
      00114B 75 F0 80         [24] 2371 	mov	b,#0x80
      00114E 12 18 0C         [24] 2372 	lcall	_write_string
      001151 80 37            [24] 2373 	sjmp	00109$
      001153                       2374 00103$:
                                   2375 ;	../UI_Manager/ui.c:717: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001153 75 21 10         [24] 2376 	mov	_write_string_PARM_2,#0x10
      001156 75 22 06         [24] 2377 	mov	_write_string_PARM_3,#0x06
      001159 75 23 01         [24] 2378 	mov	_write_string_PARM_4,#0x01
      00115C 75 24 00         [24] 2379 	mov	_write_string_PARM_5,#0x00
      00115F 90 2E EE         [24] 2380 	mov	dptr,#___str_24
      001162 75 F0 80         [24] 2381 	mov	b,#0x80
      001165 12 18 0C         [24] 2382 	lcall	_write_string
                                   2383 ;	../UI_Manager/ui.c:719: break;
                                   2384 ;	../UI_Manager/ui.c:720: case BUTTON_UP:
      001168 80 20            [24] 2385 	sjmp	00109$
      00116A                       2386 00105$:
                                   2387 ;	../UI_Manager/ui.c:721: slot++;
      00116A 05 16            [12] 2388 	inc	_saveLoadPage_slot_65536_134
                                   2389 ;	../UI_Manager/ui.c:722: changed = 0xFF;
      00116C 75 0A FF         [24] 2390 	mov	_changed,#0xff
                                   2391 ;	../UI_Manager/ui.c:723: break;
                                   2392 ;	../UI_Manager/ui.c:724: case BUTTON_DOWN:
      00116F 80 19            [24] 2393 	sjmp	00109$
      001171                       2394 00106$:
                                   2395 ;	../UI_Manager/ui.c:725: slot--;
      001171 15 16            [12] 2396 	dec	_saveLoadPage_slot_65536_134
                                   2397 ;	../UI_Manager/ui.c:726: changed = 0xFF;  
      001173 75 0A FF         [24] 2398 	mov	_changed,#0xff
                                   2399 ;	../UI_Manager/ui.c:727: break;
                                   2400 ;	../UI_Manager/ui.c:728: case BUTTON_FUNCTION:
      001176 80 12            [24] 2401 	sjmp	00109$
      001178                       2402 00107$:
                                   2403 ;	../UI_Manager/ui.c:729: set_ui_state(INC, NULL);
      001178 75 17 00         [24] 2404 	mov	_set_ui_state_PARM_2,#0x00
      00117B 75 82 01         [24] 2405 	mov	dpl,#0x01
                                   2406 ;	../UI_Manager/ui.c:730: return;
      00117E 02 13 20         [24] 2407 	ljmp	_set_ui_state
                                   2408 ;	../UI_Manager/ui.c:731: case BUTTON_FUN_UP:
      001181                       2409 00108$:
                                   2410 ;	../UI_Manager/ui.c:732: set_ui_state(DEC, NULL);
      001181 75 17 00         [24] 2411 	mov	_set_ui_state_PARM_2,#0x00
      001184 75 82 02         [24] 2412 	mov	dpl,#0x02
                                   2413 ;	../UI_Manager/ui.c:733: return;
      001187 02 13 20         [24] 2414 	ljmp	_set_ui_state
                                   2415 ;	../UI_Manager/ui.c:734: }
      00118A                       2416 00109$:
                                   2417 ;	../UI_Manager/ui.c:736: if(Changed){
      00118A E5 09            [12] 2418 	mov	a,_Changed
      00118C 60 3D            [24] 2419 	jz	00114$
                                   2420 ;	../UI_Manager/ui.c:737: Changed = 0x00;
      00118E 75 09 00         [24] 2421 	mov	_Changed,#0x00
                                   2422 ;	../UI_Manager/ui.c:738: changed = 0xFF;
      001191 75 0A FF         [24] 2423 	mov	_changed,#0xff
                                   2424 ;	../UI_Manager/ui.c:740: exe_command(CLEAR_DISPLAY);
      001194 90 80 00         [24] 2425 	mov	dptr,#0x8000
      001197 12 1A 5F         [24] 2426 	lcall	_exe_command
                                   2427 ;	../UI_Manager/ui.c:742: if(State == MANUAL_SAVE_SETTINGS_STATE){
      00119A 74 0D            [12] 2428 	mov	a,#0x0d
      00119C B5 08 17         [24] 2429 	cjne	a,_State,00111$
                                   2430 ;	../UI_Manager/ui.c:743: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
      00119F 75 21 0E         [24] 2431 	mov	_write_string_PARM_2,#0x0e
      0011A2 75 22 02         [24] 2432 	mov	_write_string_PARM_3,#0x02
      0011A5 75 23 00         [24] 2433 	mov	_write_string_PARM_4,#0x00
      0011A8 75 24 00         [24] 2434 	mov	_write_string_PARM_5,#0x00
      0011AB 90 2E F6         [24] 2435 	mov	dptr,#___str_25
      0011AE 75 F0 80         [24] 2436 	mov	b,#0x80
      0011B1 12 18 0C         [24] 2437 	lcall	_write_string
      0011B4 80 15            [24] 2438 	sjmp	00114$
      0011B6                       2439 00111$:
                                   2440 ;	../UI_Manager/ui.c:745: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
      0011B6 75 21 0E         [24] 2441 	mov	_write_string_PARM_2,#0x0e
      0011B9 75 22 02         [24] 2442 	mov	_write_string_PARM_3,#0x02
      0011BC 75 23 00         [24] 2443 	mov	_write_string_PARM_4,#0x00
      0011BF 75 24 00         [24] 2444 	mov	_write_string_PARM_5,#0x00
      0011C2 90 2F 04         [24] 2445 	mov	dptr,#___str_26
      0011C5 75 F0 80         [24] 2446 	mov	b,#0x80
      0011C8 12 18 0C         [24] 2447 	lcall	_write_string
      0011CB                       2448 00114$:
                                   2449 ;	../UI_Manager/ui.c:750: if(changed){
      0011CB E5 0A            [12] 2450 	mov	a,_changed
      0011CD 60 2A            [24] 2451 	jz	00117$
                                   2452 ;	../UI_Manager/ui.c:751: changed = 0x00;
      0011CF 75 0A 00         [24] 2453 	mov	_changed,#0x00
                                   2454 ;	../UI_Manager/ui.c:752: write_string(getString(slot % (SLOT_COUNT - 1)), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);  
      0011D2 75 F0 03         [24] 2455 	mov	b,#0x03
      0011D5 E5 16            [12] 2456 	mov	a,_saveLoadPage_slot_65536_134
      0011D7 84               [48] 2457 	div	ab
      0011D8 85 F0 82         [24] 2458 	mov	dpl,b
      0011DB 12 13 C2         [24] 2459 	lcall	_getString
      0011DE AD 82            [24] 2460 	mov	r5,dpl
      0011E0 AE 83            [24] 2461 	mov	r6,dph
      0011E2 AF F0            [24] 2462 	mov	r7,b
      0011E4 75 21 10         [24] 2463 	mov	_write_string_PARM_2,#0x10
      0011E7 75 22 06         [24] 2464 	mov	_write_string_PARM_3,#0x06
      0011EA 75 23 01         [24] 2465 	mov	_write_string_PARM_4,#0x01
      0011ED 75 24 00         [24] 2466 	mov	_write_string_PARM_5,#0x00
      0011F0 8D 82            [24] 2467 	mov	dpl,r5
      0011F2 8E 83            [24] 2468 	mov	dph,r6
      0011F4 8F F0            [24] 2469 	mov	b,r7
                                   2470 ;	../UI_Manager/ui.c:755: }
      0011F6 02 18 0C         [24] 2471 	ljmp	_write_string
      0011F9                       2472 00117$:
      0011F9 22               [24] 2473 	ret
                                   2474 ;------------------------------------------------------------
                                   2475 ;Allocation info for local variables in function 'dmxAddressPage'
                                   2476 ;------------------------------------------------------------
                                   2477 ;action                    Allocated to registers r7 
                                   2478 ;------------------------------------------------------------
                                   2479 ;	../UI_Manager/ui.c:757: void dmxAddressPage(uint8_t action){
                                   2480 ;	-----------------------------------------
                                   2481 ;	 function dmxAddressPage
                                   2482 ;	-----------------------------------------
      0011FA                       2483 _dmxAddressPage:
      0011FA AF 82            [24] 2484 	mov	r7,dpl
                                   2485 ;	../UI_Manager/ui.c:759: switch (action)
      0011FC BF 02 02         [24] 2486 	cjne	r7,#0x02,00146$
      0011FF 80 2F            [24] 2487 	sjmp	00105$
      001201                       2488 00146$:
      001201 BF 03 02         [24] 2489 	cjne	r7,#0x03,00147$
      001204 80 14            [24] 2490 	sjmp	00102$
      001206                       2491 00147$:
      001206 BF 0A 02         [24] 2492 	cjne	r7,#0x0a,00148$
      001209 80 1A            [24] 2493 	sjmp	00104$
      00120B                       2494 00148$:
      00120B BF 0C 02         [24] 2495 	cjne	r7,#0x0c,00149$
      00120E 80 29            [24] 2496 	sjmp	00106$
      001210                       2497 00149$:
      001210 BF 1F 02         [24] 2498 	cjne	r7,#0x1f,00150$
      001213 80 05            [24] 2499 	sjmp	00102$
      001215                       2500 00150$:
                                   2501 ;	../UI_Manager/ui.c:762: case BUTTON_UP:
      001215 BF 65 2A         [24] 2502 	cjne	r7,#0x65,00107$
      001218 80 0B            [24] 2503 	sjmp	00104$
      00121A                       2504 00102$:
                                   2505 ;	../UI_Manager/ui.c:763: set_dmx_address(INC);
      00121A 75 82 01         [24] 2506 	mov	dpl,#0x01
      00121D 12 28 20         [24] 2507 	lcall	_set_dmx_address
                                   2508 ;	../UI_Manager/ui.c:764: changed = 0xFF;
      001220 75 0A FF         [24] 2509 	mov	_changed,#0xff
                                   2510 ;	../UI_Manager/ui.c:765: break;
                                   2511 ;	../UI_Manager/ui.c:767: case BUTTON_DOWN:
      001223 80 1D            [24] 2512 	sjmp	00107$
      001225                       2513 00104$:
                                   2514 ;	../UI_Manager/ui.c:768: set_dmx_address(DEC);
      001225 75 82 02         [24] 2515 	mov	dpl,#0x02
      001228 12 28 20         [24] 2516 	lcall	_set_dmx_address
                                   2517 ;	../UI_Manager/ui.c:769: changed = 0xFF;  
      00122B 75 0A FF         [24] 2518 	mov	_changed,#0xff
                                   2519 ;	../UI_Manager/ui.c:770: break;
                                   2520 ;	../UI_Manager/ui.c:771: case BUTTON_FUNCTION:
      00122E 80 12            [24] 2521 	sjmp	00107$
      001230                       2522 00105$:
                                   2523 ;	../UI_Manager/ui.c:772: set_ui_state(INC, NULL);
      001230 75 17 00         [24] 2524 	mov	_set_ui_state_PARM_2,#0x00
      001233 75 82 01         [24] 2525 	mov	dpl,#0x01
                                   2526 ;	../UI_Manager/ui.c:773: return;
                                   2527 ;	../UI_Manager/ui.c:774: case BUTTON_FUN_UP:
      001236 02 13 20         [24] 2528 	ljmp	_set_ui_state
      001239                       2529 00106$:
                                   2530 ;	../UI_Manager/ui.c:775: set_ui_state(DEC, NULL);
      001239 75 17 00         [24] 2531 	mov	_set_ui_state_PARM_2,#0x00
      00123C 75 82 02         [24] 2532 	mov	dpl,#0x02
                                   2533 ;	../UI_Manager/ui.c:776: return;
                                   2534 ;	../UI_Manager/ui.c:777: }
      00123F 02 13 20         [24] 2535 	ljmp	_set_ui_state
      001242                       2536 00107$:
                                   2537 ;	../UI_Manager/ui.c:779: if(Changed){
      001242 E5 09            [12] 2538 	mov	a,_Changed
      001244 60 21            [24] 2539 	jz	00109$
                                   2540 ;	../UI_Manager/ui.c:780: Changed = 0x00;
      001246 75 09 00         [24] 2541 	mov	_Changed,#0x00
                                   2542 ;	../UI_Manager/ui.c:781: changed = 0xFF;
      001249 75 0A FF         [24] 2543 	mov	_changed,#0xff
                                   2544 ;	../UI_Manager/ui.c:783: exe_command(CLEAR_DISPLAY);
      00124C 90 80 00         [24] 2545 	mov	dptr,#0x8000
      00124F 12 1A 5F         [24] 2546 	lcall	_exe_command
                                   2547 ;	../UI_Manager/ui.c:785: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
      001252 75 21 0C         [24] 2548 	mov	_write_string_PARM_2,#0x0c
      001255 75 22 02         [24] 2549 	mov	_write_string_PARM_3,#0x02
      001258 75 23 00         [24] 2550 	mov	_write_string_PARM_4,#0x00
      00125B 75 24 00         [24] 2551 	mov	_write_string_PARM_5,#0x00
      00125E 90 2F 12         [24] 2552 	mov	dptr,#___str_27
      001261 75 F0 80         [24] 2553 	mov	b,#0x80
      001264 12 18 0C         [24] 2554 	lcall	_write_string
      001267                       2555 00109$:
                                   2556 ;	../UI_Manager/ui.c:788: if(changed){
      001267 E5 0A            [12] 2557 	mov	a,_changed
      001269 60 12            [24] 2558 	jz	00112$
                                   2559 ;	../UI_Manager/ui.c:789: changed = 0x00;
      00126B 75 0A 00         [24] 2560 	mov	_changed,#0x00
                                   2561 ;	../UI_Manager/ui.c:791: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      00126E 12 28 73         [24] 2562 	lcall	_get_dmx_address
      001271 75 25 04         [24] 2563 	mov	_write_number_PARM_2,#0x04
      001274 75 26 01         [24] 2564 	mov	_write_number_PARM_3,#0x01
      001277 75 27 00         [24] 2565 	mov	_write_number_PARM_4,#0x00
                                   2566 ;	../UI_Manager/ui.c:794: }
      00127A 02 18 D0         [24] 2567 	ljmp	_write_number
      00127D                       2568 00112$:
      00127D 22               [24] 2569 	ret
                                   2570 ;------------------------------------------------------------
                                   2571 ;Allocation info for local variables in function 'dmxChannelPage'
                                   2572 ;------------------------------------------------------------
                                   2573 ;action                    Allocated to registers r7 
                                   2574 ;------------------------------------------------------------
                                   2575 ;	../UI_Manager/ui.c:796: void dmxChannelPage(uint8_t action){
                                   2576 ;	-----------------------------------------
                                   2577 ;	 function dmxChannelPage
                                   2578 ;	-----------------------------------------
      00127E                       2579 _dmxChannelPage:
      00127E AF 82            [24] 2580 	mov	r7,dpl
                                   2581 ;	../UI_Manager/ui.c:798: switch (action)
      001280 BF 02 02         [24] 2582 	cjne	r7,#0x02,00136$
      001283 80 31            [24] 2583 	sjmp	00103$
      001285                       2584 00136$:
      001285 BF 03 02         [24] 2585 	cjne	r7,#0x03,00137$
      001288 80 0A            [24] 2586 	sjmp	00101$
      00128A                       2587 00137$:
      00128A BF 0A 02         [24] 2588 	cjne	r7,#0x0a,00138$
      00128D 80 16            [24] 2589 	sjmp	00102$
      00128F                       2590 00138$:
                                   2591 ;	../UI_Manager/ui.c:800: case BUTTON_UP:
      00128F BF 0C 36         [24] 2592 	cjne	r7,#0x0c,00105$
      001292 80 2B            [24] 2593 	sjmp	00104$
      001294                       2594 00101$:
                                   2595 ;	../UI_Manager/ui.c:801: set_runtime_data(MODE_INDEX, INC, NULL);
      001294 75 65 01         [24] 2596 	mov	_set_runtime_data_PARM_2,#0x01
      001297 75 66 00         [24] 2597 	mov	_set_runtime_data_PARM_3,#0x00
      00129A 75 82 0E         [24] 2598 	mov	dpl,#0x0e
      00129D 12 27 A7         [24] 2599 	lcall	_set_runtime_data
                                   2600 ;	../UI_Manager/ui.c:802: changed = 0xFF;
      0012A0 75 0A FF         [24] 2601 	mov	_changed,#0xff
                                   2602 ;	../UI_Manager/ui.c:803: break;
                                   2603 ;	../UI_Manager/ui.c:804: case BUTTON_DOWN:
      0012A3 80 23            [24] 2604 	sjmp	00105$
      0012A5                       2605 00102$:
                                   2606 ;	../UI_Manager/ui.c:805: set_runtime_data(MODE_INDEX, DEC, NULL);
      0012A5 75 65 02         [24] 2607 	mov	_set_runtime_data_PARM_2,#0x02
      0012A8 75 66 00         [24] 2608 	mov	_set_runtime_data_PARM_3,#0x00
      0012AB 75 82 0E         [24] 2609 	mov	dpl,#0x0e
      0012AE 12 27 A7         [24] 2610 	lcall	_set_runtime_data
                                   2611 ;	../UI_Manager/ui.c:806: changed = 0xFF;  
      0012B1 75 0A FF         [24] 2612 	mov	_changed,#0xff
                                   2613 ;	../UI_Manager/ui.c:807: break;
                                   2614 ;	../UI_Manager/ui.c:808: case BUTTON_FUNCTION:
      0012B4 80 12            [24] 2615 	sjmp	00105$
      0012B6                       2616 00103$:
                                   2617 ;	../UI_Manager/ui.c:809: set_ui_state(INC, NULL);
      0012B6 75 17 00         [24] 2618 	mov	_set_ui_state_PARM_2,#0x00
      0012B9 75 82 01         [24] 2619 	mov	dpl,#0x01
                                   2620 ;	../UI_Manager/ui.c:810: return;
                                   2621 ;	../UI_Manager/ui.c:811: case BUTTON_FUN_UP:
      0012BC 02 13 20         [24] 2622 	ljmp	_set_ui_state
      0012BF                       2623 00104$:
                                   2624 ;	../UI_Manager/ui.c:812: set_ui_state(DEC, NULL);
      0012BF 75 17 00         [24] 2625 	mov	_set_ui_state_PARM_2,#0x00
      0012C2 75 82 02         [24] 2626 	mov	dpl,#0x02
                                   2627 ;	../UI_Manager/ui.c:813: return;
                                   2628 ;	../UI_Manager/ui.c:814: }
      0012C5 02 13 20         [24] 2629 	ljmp	_set_ui_state
      0012C8                       2630 00105$:
                                   2631 ;	../UI_Manager/ui.c:816: if(Changed){
      0012C8 E5 09            [12] 2632 	mov	a,_Changed
      0012CA 60 21            [24] 2633 	jz	00107$
                                   2634 ;	../UI_Manager/ui.c:817: Changed = 0x00;
      0012CC 75 09 00         [24] 2635 	mov	_Changed,#0x00
                                   2636 ;	../UI_Manager/ui.c:818: changed = 0xFF;
      0012CF 75 0A FF         [24] 2637 	mov	_changed,#0xff
                                   2638 ;	../UI_Manager/ui.c:820: exe_command(CLEAR_DISPLAY);
      0012D2 90 80 00         [24] 2639 	mov	dptr,#0x8000
      0012D5 12 1A 5F         [24] 2640 	lcall	_exe_command
                                   2641 ;	../UI_Manager/ui.c:822: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
      0012D8 75 21 11         [24] 2642 	mov	_write_string_PARM_2,#0x11
      0012DB 75 22 00         [24] 2643 	mov	_write_string_PARM_3,#0x00
      0012DE 75 23 00         [24] 2644 	mov	_write_string_PARM_4,#0x00
      0012E1 75 24 00         [24] 2645 	mov	_write_string_PARM_5,#0x00
      0012E4 90 2F 1E         [24] 2646 	mov	dptr,#___str_28
      0012E7 75 F0 80         [24] 2647 	mov	b,#0x80
      0012EA 12 18 0C         [24] 2648 	lcall	_write_string
      0012ED                       2649 00107$:
                                   2650 ;	../UI_Manager/ui.c:825: if(changed){
      0012ED E5 0A            [12] 2651 	mov	a,_changed
      0012EF 60 2E            [24] 2652 	jz	00110$
                                   2653 ;	../UI_Manager/ui.c:826: changed = 0x00;
      0012F1 75 0A 00         [24] 2654 	mov	_changed,#0x00
                                   2655 ;	../UI_Manager/ui.c:828: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
      0012F4 75 82 0E         [24] 2656 	mov	dpl,#0x0e
      0012F7 12 27 13         [24] 2657 	lcall	_get_runtime_data
      0012FA AF 82            [24] 2658 	mov	r7,dpl
      0012FC 74 64            [12] 2659 	mov	a,#0x64
      0012FE 2F               [12] 2660 	add	a,r7
      0012FF F5 82            [12] 2661 	mov	dpl,a
      001301 12 13 C2         [24] 2662 	lcall	_getString
      001304 AD 82            [24] 2663 	mov	r5,dpl
      001306 AE 83            [24] 2664 	mov	r6,dph
      001308 AF F0            [24] 2665 	mov	r7,b
      00130A 75 21 10         [24] 2666 	mov	_write_string_PARM_2,#0x10
      00130D 75 22 01         [24] 2667 	mov	_write_string_PARM_3,#0x01
      001310 75 23 01         [24] 2668 	mov	_write_string_PARM_4,#0x01
      001313 75 24 00         [24] 2669 	mov	_write_string_PARM_5,#0x00
      001316 8D 82            [24] 2670 	mov	dpl,r5
      001318 8E 83            [24] 2671 	mov	dph,r6
      00131A 8F F0            [24] 2672 	mov	b,r7
                                   2673 ;	../UI_Manager/ui.c:831: }
      00131C 02 18 0C         [24] 2674 	ljmp	_write_string
      00131F                       2675 00110$:
      00131F 22               [24] 2676 	ret
                                   2677 ;------------------------------------------------------------
                                   2678 ;Allocation info for local variables in function 'set_ui_state'
                                   2679 ;------------------------------------------------------------
                                   2680 ;state                     Allocated with name '_set_ui_state_PARM_2'
                                   2681 ;inc                       Allocated to registers r7 
                                   2682 ;------------------------------------------------------------
                                   2683 ;	../UI_Manager/ui.c:833: void set_ui_state(uint8_t inc, uint8_t state){
                                   2684 ;	-----------------------------------------
                                   2685 ;	 function set_ui_state
                                   2686 ;	-----------------------------------------
      001320                       2687 _set_ui_state:
      001320 AF 82            [24] 2688 	mov	r7,dpl
                                   2689 ;	../UI_Manager/ui.c:834: Changed = CHANGE_SCREEN_X;
      001322 75 09 FF         [24] 2690 	mov	_Changed,#0xff
                                   2691 ;	../UI_Manager/ui.c:836: switch (inc)
      001325 BF 01 02         [24] 2692 	cjne	r7,#0x01,00193$
      001328 80 08            [24] 2693 	sjmp	00101$
      00132A                       2694 00193$:
      00132A BF 02 02         [24] 2695 	cjne	r7,#0x02,00194$
      00132D 80 3D            [24] 2696 	sjmp	00115$
      00132F                       2697 00194$:
      00132F 02 13 A5         [24] 2698 	ljmp	00129$
                                   2699 ;	../UI_Manager/ui.c:838: case INC:
      001332                       2700 00101$:
                                   2701 ;	../UI_Manager/ui.c:839: state = State;
      001332 85 08 17         [24] 2702 	mov	_set_ui_state_PARM_2,_State
                                   2703 ;	../UI_Manager/ui.c:840: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      001335 75 82 10         [24] 2704 	mov	dpl,#0x10
      001338 12 27 13         [24] 2705 	lcall	_get_runtime_data
      00133B E5 82            [12] 2706 	mov	a,dpl
      00133D 70 17            [24] 2707 	jnz	00113$
                                   2708 ;	../UI_Manager/ui.c:841: if(state == IDLE_STATE){
      00133F E5 17            [12] 2709 	mov	a,_set_ui_state_PARM_2
      001341 70 06            [24] 2710 	jnz	00105$
                                   2711 ;	../UI_Manager/ui.c:842: state = DMX_STATE_LOW;
      001343 75 17 14         [24] 2712 	mov	_set_ui_state_PARM_2,#0x14
      001346 02 13 BA         [24] 2713 	ljmp	00134$
      001349                       2714 00105$:
                                   2715 ;	../UI_Manager/ui.c:843: } else if(++state > DMX_STATE_HIGH){
      001349 05 17            [12] 2716 	inc	_set_ui_state_PARM_2
      00134B E5 17            [12] 2717 	mov	a,_set_ui_state_PARM_2
      00134D 24 EA            [12] 2718 	add	a,#0xff - 0x15
      00134F 50 69            [24] 2719 	jnc	00134$
                                   2720 ;	../UI_Manager/ui.c:844: state = IDLE_STATE;
      001351 75 17 00         [24] 2721 	mov	_set_ui_state_PARM_2,#0x00
      001354 80 64            [24] 2722 	sjmp	00134$
      001356                       2723 00113$:
                                   2724 ;	../UI_Manager/ui.c:847: if(state == IDLE_STATE){
      001356 E5 17            [12] 2725 	mov	a,_set_ui_state_PARM_2
      001358 70 05            [24] 2726 	jnz	00110$
                                   2727 ;	../UI_Manager/ui.c:848: state = IDLE_STATE + 1; 
      00135A 75 17 01         [24] 2728 	mov	_set_ui_state_PARM_2,#0x01
      00135D 80 5B            [24] 2729 	sjmp	00134$
      00135F                       2730 00110$:
                                   2731 ;	../UI_Manager/ui.c:849: } else if(++state > MANUAL_STATE_HIGH){
      00135F 05 17            [12] 2732 	inc	_set_ui_state_PARM_2
      001361 E5 17            [12] 2733 	mov	a,_set_ui_state_PARM_2
      001363 24 F1            [12] 2734 	add	a,#0xff - 0x0e
      001365 50 53            [24] 2735 	jnc	00134$
                                   2736 ;	../UI_Manager/ui.c:850: State = IDLE_STATE;
      001367 75 08 00         [24] 2737 	mov	_State,#0x00
                                   2738 ;	../UI_Manager/ui.c:853: break;
                                   2739 ;	../UI_Manager/ui.c:854: case DEC:
      00136A 80 4E            [24] 2740 	sjmp	00134$
      00136C                       2741 00115$:
                                   2742 ;	../UI_Manager/ui.c:855: state = State;
      00136C 85 08 17         [24] 2743 	mov	_set_ui_state_PARM_2,_State
                                   2744 ;	../UI_Manager/ui.c:856: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00136F 75 82 10         [24] 2745 	mov	dpl,#0x10
      001372 12 27 13         [24] 2746 	lcall	_get_runtime_data
      001375 E5 82            [12] 2747 	mov	a,dpl
      001377 70 16            [24] 2748 	jnz	00127$
                                   2749 ;	../UI_Manager/ui.c:857: if(state == IDLE_STATE){
      001379 E5 17            [12] 2750 	mov	a,_set_ui_state_PARM_2
      00137B 70 05            [24] 2751 	jnz	00119$
                                   2752 ;	../UI_Manager/ui.c:858: state = DMX_STATE_HIGH;
      00137D 75 17 15         [24] 2753 	mov	_set_ui_state_PARM_2,#0x15
      001380 80 38            [24] 2754 	sjmp	00134$
      001382                       2755 00119$:
                                   2756 ;	../UI_Manager/ui.c:859: } else if(--State < DMX_STATE_LOW){
      001382 15 08            [12] 2757 	dec	_State
      001384 74 EC            [12] 2758 	mov	a,#0x100 - 0x14
      001386 25 08            [12] 2759 	add	a,_State
      001388 40 30            [24] 2760 	jc	00134$
                                   2761 ;	../UI_Manager/ui.c:860: State = IDLE_STATE;
      00138A 75 08 00         [24] 2762 	mov	_State,#0x00
      00138D 80 2B            [24] 2763 	sjmp	00134$
      00138F                       2764 00127$:
                                   2765 ;	../UI_Manager/ui.c:863: if(state == IDLE_STATE){
      00138F E5 17            [12] 2766 	mov	a,_set_ui_state_PARM_2
      001391 70 05            [24] 2767 	jnz	00124$
                                   2768 ;	../UI_Manager/ui.c:864: state = MANUAL_STATE_HIGH; 
      001393 75 17 0E         [24] 2769 	mov	_set_ui_state_PARM_2,#0x0e
      001396 80 22            [24] 2770 	sjmp	00134$
      001398                       2771 00124$:
                                   2772 ;	../UI_Manager/ui.c:865: } else if(--State < DMX_STATE_HIGH){
      001398 15 08            [12] 2773 	dec	_State
      00139A 74 EB            [12] 2774 	mov	a,#0x100 - 0x15
      00139C 25 08            [12] 2775 	add	a,_State
      00139E 40 1A            [24] 2776 	jc	00134$
                                   2777 ;	../UI_Manager/ui.c:866: State = IDLE_STATE;
      0013A0 75 08 00         [24] 2778 	mov	_State,#0x00
                                   2779 ;	../UI_Manager/ui.c:869: break;
                                   2780 ;	../UI_Manager/ui.c:870: default: 
      0013A3 80 15            [24] 2781 	sjmp	00134$
      0013A5                       2782 00129$:
                                   2783 ;	../UI_Manager/ui.c:871: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
      0013A5 E5 17            [12] 2784 	mov	a,_set_ui_state_PARM_2
      0013A7 24 F1            [12] 2785 	add	a,#0xff - 0x0e
      0013A9 50 0C            [24] 2786 	jnc	00130$
      0013AB 74 EC            [12] 2787 	mov	a,#0x100 - 0x14
      0013AD 25 17            [12] 2788 	add	a,_set_ui_state_PARM_2
      0013AF 50 09            [24] 2789 	jnc	00134$
      0013B1 E5 17            [12] 2790 	mov	a,_set_ui_state_PARM_2
      0013B3 24 EA            [12] 2791 	add	a,#0xff - 0x15
      0013B5 40 03            [24] 2792 	jc	00134$
      0013B7                       2793 00130$:
                                   2794 ;	../UI_Manager/ui.c:872: state = IDLE_STATE;
      0013B7 75 17 00         [24] 2795 	mov	_set_ui_state_PARM_2,#0x00
                                   2796 ;	../UI_Manager/ui.c:875: }
      0013BA                       2797 00134$:
                                   2798 ;	../UI_Manager/ui.c:877: State = state;
      0013BA 85 17 08         [24] 2799 	mov	_State,_set_ui_state_PARM_2
                                   2800 ;	../UI_Manager/ui.c:878: }
      0013BD 22               [24] 2801 	ret
                                   2802 ;------------------------------------------------------------
                                   2803 ;Allocation info for local variables in function 'get_ui_state'
                                   2804 ;------------------------------------------------------------
                                   2805 ;	../UI_Manager/ui.c:880: uint8_t get_ui_state(){
                                   2806 ;	-----------------------------------------
                                   2807 ;	 function get_ui_state
                                   2808 ;	-----------------------------------------
      0013BE                       2809 _get_ui_state:
                                   2810 ;	../UI_Manager/ui.c:881: return State;
      0013BE 85 08 82         [24] 2811 	mov	dpl,_State
                                   2812 ;	../UI_Manager/ui.c:882: }
      0013C1 22               [24] 2813 	ret
                                   2814 ;------------------------------------------------------------
                                   2815 ;Allocation info for local variables in function 'getString'
                                   2816 ;------------------------------------------------------------
                                   2817 ;index                     Allocated to registers r7 
                                   2818 ;------------------------------------------------------------
                                   2819 ;	../UI_Manager/ui.c:884: char* getString(uint8_t index){
                                   2820 ;	-----------------------------------------
                                   2821 ;	 function getString
                                   2822 ;	-----------------------------------------
      0013C2                       2823 _getString:
      0013C2 AF 82            [24] 2824 	mov	r7,dpl
                                   2825 ;	../UI_Manager/ui.c:885: switch (index)
      0013C4 8F 06            [24] 2826 	mov	ar6,r7
      0013C6 BE 00 03         [24] 2827 	cjne	r6,#0x00,00299$
      0013C9 02 14 C1         [24] 2828 	ljmp	00103$
      0013CC                       2829 00299$:
      0013CC BE 01 03         [24] 2830 	cjne	r6,#0x01,00300$
      0013CF 02 14 BA         [24] 2831 	ljmp	00102$
      0013D2                       2832 00300$:
      0013D2 BF 02 03         [24] 2833 	cjne	r7,#0x02,00301$
      0013D5 02 14 B3         [24] 2834 	ljmp	00101$
      0013D8                       2835 00301$:
      0013D8 BF 14 03         [24] 2836 	cjne	r7,#0x14,00302$
      0013DB 02 14 C8         [24] 2837 	ljmp	00104$
      0013DE                       2838 00302$:
      0013DE BF 15 03         [24] 2839 	cjne	r7,#0x15,00303$
      0013E1 02 14 CF         [24] 2840 	ljmp	00105$
      0013E4                       2841 00303$:
      0013E4 BF 16 03         [24] 2842 	cjne	r7,#0x16,00304$
      0013E7 02 14 D6         [24] 2843 	ljmp	00106$
      0013EA                       2844 00304$:
      0013EA BF 17 03         [24] 2845 	cjne	r7,#0x17,00305$
      0013ED 02 14 DD         [24] 2846 	ljmp	00107$
      0013F0                       2847 00305$:
      0013F0 BF 18 03         [24] 2848 	cjne	r7,#0x18,00306$
      0013F3 02 14 EB         [24] 2849 	ljmp	00109$
      0013F6                       2850 00306$:
      0013F6 BF 19 03         [24] 2851 	cjne	r7,#0x19,00307$
      0013F9 02 14 F2         [24] 2852 	ljmp	00110$
      0013FC                       2853 00307$:
      0013FC BF 1A 03         [24] 2854 	cjne	r7,#0x1a,00308$
      0013FF 02 14 E4         [24] 2855 	ljmp	00108$
      001402                       2856 00308$:
      001402 BF 28 03         [24] 2857 	cjne	r7,#0x28,00309$
      001405 02 15 9A         [24] 2858 	ljmp	00134$
      001408                       2859 00309$:
      001408 BF 29 03         [24] 2860 	cjne	r7,#0x29,00310$
      00140B 02 15 A1         [24] 2861 	ljmp	00135$
      00140E                       2862 00310$:
      00140E BF 2A 03         [24] 2863 	cjne	r7,#0x2a,00311$
      001411 02 15 A8         [24] 2864 	ljmp	00136$
      001414                       2865 00311$:
      001414 BF 2B 03         [24] 2866 	cjne	r7,#0x2b,00312$
      001417 02 15 AF         [24] 2867 	ljmp	00137$
      00141A                       2868 00312$:
      00141A BF 2C 03         [24] 2869 	cjne	r7,#0x2c,00313$
      00141D 02 15 B6         [24] 2870 	ljmp	00138$
      001420                       2871 00313$:
      001420 BF 2D 03         [24] 2872 	cjne	r7,#0x2d,00314$
      001423 02 15 BD         [24] 2873 	ljmp	00139$
      001426                       2874 00314$:
      001426 BF 3C 03         [24] 2875 	cjne	r7,#0x3c,00315$
      001429 02 15 15         [24] 2876 	ljmp	00115$
      00142C                       2877 00315$:
      00142C BF 3D 03         [24] 2878 	cjne	r7,#0x3d,00316$
      00142F 02 15 1C         [24] 2879 	ljmp	00116$
      001432                       2880 00316$:
      001432 BF 3E 03         [24] 2881 	cjne	r7,#0x3e,00317$
      001435 02 15 23         [24] 2882 	ljmp	00117$
      001438                       2883 00317$:
      001438 BF 3F 03         [24] 2884 	cjne	r7,#0x3f,00318$
      00143B 02 15 2A         [24] 2885 	ljmp	00118$
      00143E                       2886 00318$:
      00143E BF 40 03         [24] 2887 	cjne	r7,#0x40,00319$
      001441 02 15 31         [24] 2888 	ljmp	00119$
      001444                       2889 00319$:
      001444 BF 41 03         [24] 2890 	cjne	r7,#0x41,00320$
      001447 02 15 38         [24] 2891 	ljmp	00120$
      00144A                       2892 00320$:
      00144A BF 42 03         [24] 2893 	cjne	r7,#0x42,00321$
      00144D 02 15 3F         [24] 2894 	ljmp	00121$
      001450                       2895 00321$:
      001450 BF 43 03         [24] 2896 	cjne	r7,#0x43,00322$
      001453 02 15 46         [24] 2897 	ljmp	00122$
      001456                       2898 00322$:
      001456 BF 44 03         [24] 2899 	cjne	r7,#0x44,00323$
      001459 02 15 4D         [24] 2900 	ljmp	00123$
      00145C                       2901 00323$:
      00145C BF 45 03         [24] 2902 	cjne	r7,#0x45,00324$
      00145F 02 15 54         [24] 2903 	ljmp	00124$
      001462                       2904 00324$:
      001462 BF 46 03         [24] 2905 	cjne	r7,#0x46,00325$
      001465 02 15 5B         [24] 2906 	ljmp	00125$
      001468                       2907 00325$:
      001468 BF 47 03         [24] 2908 	cjne	r7,#0x47,00326$
      00146B 02 15 62         [24] 2909 	ljmp	00126$
      00146E                       2910 00326$:
      00146E BF 48 03         [24] 2911 	cjne	r7,#0x48,00327$
      001471 02 15 69         [24] 2912 	ljmp	00127$
      001474                       2913 00327$:
      001474 BF 50 03         [24] 2914 	cjne	r7,#0x50,00328$
      001477 02 15 70         [24] 2915 	ljmp	00128$
      00147A                       2916 00328$:
      00147A BF 51 03         [24] 2917 	cjne	r7,#0x51,00329$
      00147D 02 15 77         [24] 2918 	ljmp	00129$
      001480                       2919 00329$:
      001480 BF 52 03         [24] 2920 	cjne	r7,#0x52,00330$
      001483 02 15 7E         [24] 2921 	ljmp	00130$
      001486                       2922 00330$:
      001486 BF 64 03         [24] 2923 	cjne	r7,#0x64,00331$
      001489 02 15 85         [24] 2924 	ljmp	00131$
      00148C                       2925 00331$:
      00148C BF 65 03         [24] 2926 	cjne	r7,#0x65,00332$
      00148F 02 15 8C         [24] 2927 	ljmp	00132$
      001492                       2928 00332$:
      001492 BF 66 03         [24] 2929 	cjne	r7,#0x66,00333$
      001495 02 15 93         [24] 2930 	ljmp	00133$
      001498                       2931 00333$:
      001498 BF CE 03         [24] 2932 	cjne	r7,#0xce,00334$
      00149B 02 14 F9         [24] 2933 	ljmp	00111$
      00149E                       2934 00334$:
      00149E BF CF 03         [24] 2935 	cjne	r7,#0xcf,00335$
      0014A1 02 15 07         [24] 2936 	ljmp	00113$
      0014A4                       2937 00335$:
      0014A4 BF D0 03         [24] 2938 	cjne	r7,#0xd0,00336$
      0014A7 02 15 00         [24] 2939 	ljmp	00112$
      0014AA                       2940 00336$:
      0014AA BF D1 03         [24] 2941 	cjne	r7,#0xd1,00337$
      0014AD 02 15 0E         [24] 2942 	ljmp	00114$
      0014B0                       2943 00337$:
      0014B0 02 15 C4         [24] 2944 	ljmp	00140$
                                   2945 ;	../UI_Manager/ui.c:887: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
      0014B3                       2946 00101$:
                                   2947 ;	../UI_Manager/ui.c:888: return "Wimpy";
      0014B3 90 2F 2F         [24] 2948 	mov	dptr,#___str_29
      0014B6 75 F0 80         [24] 2949 	mov	b,#0x80
      0014B9 22               [24] 2950 	ret
                                   2951 ;	../UI_Manager/ui.c:889: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
      0014BA                       2952 00102$:
                                   2953 ;	../UI_Manager/ui.c:890: return "Mild";
      0014BA 90 2F 35         [24] 2954 	mov	dptr,#___str_30
      0014BD 75 F0 80         [24] 2955 	mov	b,#0x80
      0014C0 22               [24] 2956 	ret
                                   2957 ;	../UI_Manager/ui.c:891: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
      0014C1                       2958 00103$:
                                   2959 ;	../UI_Manager/ui.c:892: return "Blazin";
      0014C1 90 2F 3A         [24] 2960 	mov	dptr,#___str_31
      0014C4 75 F0 80         [24] 2961 	mov	b,#0x80
      0014C7 22               [24] 2962 	ret
                                   2963 ;	../UI_Manager/ui.c:894: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
      0014C8                       2964 00104$:
                                   2965 ;	../UI_Manager/ui.c:895: return "Off";
      0014C8 90 2E D2         [24] 2966 	mov	dptr,#___str_20
      0014CB 75 F0 80         [24] 2967 	mov	b,#0x80
      0014CE 22               [24] 2968 	ret
                                   2969 ;	../UI_Manager/ui.c:896: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
      0014CF                       2970 00105$:
                                   2971 ;	../UI_Manager/ui.c:897: return "Rainbow";
      0014CF 90 2F 41         [24] 2972 	mov	dptr,#___str_32
      0014D2 75 F0 80         [24] 2973 	mov	b,#0x80
      0014D5 22               [24] 2974 	ret
                                   2975 ;	../UI_Manager/ui.c:898: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
      0014D6                       2976 00106$:
                                   2977 ;	../UI_Manager/ui.c:899: return "Fire";
      0014D6 90 2F 49         [24] 2978 	mov	dptr,#___str_33
      0014D9 75 F0 80         [24] 2979 	mov	b,#0x80
      0014DC 22               [24] 2980 	ret
                                   2981 ;	../UI_Manager/ui.c:900: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
      0014DD                       2982 00107$:
                                   2983 ;	../UI_Manager/ui.c:901: return "Water";
      0014DD 90 2F 4E         [24] 2984 	mov	dptr,#___str_34
      0014E0 75 F0 80         [24] 2985 	mov	b,#0x80
      0014E3 22               [24] 2986 	ret
                                   2987 ;	../UI_Manager/ui.c:902: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
      0014E4                       2988 00108$:
                                   2989 ;	../UI_Manager/ui.c:903: return "Storm";
      0014E4 90 2F 54         [24] 2990 	mov	dptr,#___str_35
      0014E7 75 F0 80         [24] 2991 	mov	b,#0x80
      0014EA 22               [24] 2992 	ret
                                   2993 ;	../UI_Manager/ui.c:904: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
      0014EB                       2994 00109$:
                                   2995 ;	../UI_Manager/ui.c:905: return "Acid";
      0014EB 90 2F 5A         [24] 2996 	mov	dptr,#___str_36
      0014EE 75 F0 80         [24] 2997 	mov	b,#0x80
      0014F1 22               [24] 2998 	ret
                                   2999 ;	../UI_Manager/ui.c:906: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
      0014F2                       3000 00110$:
                                   3001 ;	../UI_Manager/ui.c:907: return "Ether";
      0014F2 90 2F 5F         [24] 3002 	mov	dptr,#___str_37
      0014F5 75 F0 80         [24] 3003 	mov	b,#0x80
      0014F8 22               [24] 3004 	ret
                                   3005 ;	../UI_Manager/ui.c:909: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
      0014F9                       3006 00111$:
                                   3007 ;	../UI_Manager/ui.c:910: return "Red Level";
      0014F9 90 2F 65         [24] 3008 	mov	dptr,#___str_38
      0014FC 75 F0 80         [24] 3009 	mov	b,#0x80
      0014FF 22               [24] 3010 	ret
                                   3011 ;	../UI_Manager/ui.c:911: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
      001500                       3012 00112$:
                                   3013 ;	../UI_Manager/ui.c:912: return "Green Level";
      001500 90 2F 6F         [24] 3014 	mov	dptr,#___str_39
      001503 75 F0 80         [24] 3015 	mov	b,#0x80
      001506 22               [24] 3016 	ret
                                   3017 ;	../UI_Manager/ui.c:913: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
      001507                       3018 00113$:
                                   3019 ;	../UI_Manager/ui.c:914: return "Blue Level";
      001507 90 2F 7B         [24] 3020 	mov	dptr,#___str_40
      00150A 75 F0 80         [24] 3021 	mov	b,#0x80
      00150D 22               [24] 3022 	ret
                                   3023 ;	../UI_Manager/ui.c:915: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
      00150E                       3024 00114$:
                                   3025 ;	../UI_Manager/ui.c:916: return "Strobe Level";
      00150E 90 2F 86         [24] 3026 	mov	dptr,#___str_41
      001511 75 F0 80         [24] 3027 	mov	b,#0x80
      001514 22               [24] 3028 	ret
                                   3029 ;	../UI_Manager/ui.c:918: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
      001515                       3030 00115$:
                                   3031 ;	../UI_Manager/ui.c:919: return "No Action";
      001515 90 2F 93         [24] 3032 	mov	dptr,#___str_42
      001518 75 F0 80         [24] 3033 	mov	b,#0x80
      00151B 22               [24] 3034 	ret
                                   3035 ;	../UI_Manager/ui.c:920: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      00151C                       3036 00116$:
                                   3037 ;	../UI_Manager/ui.c:921: return "Choose Macro";
      00151C 90 2F 9D         [24] 3038 	mov	dptr,#___str_43
      00151F 75 F0 80         [24] 3039 	mov	b,#0x80
      001522 22               [24] 3040 	ret
                                   3041 ;	../UI_Manager/ui.c:922: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
      001523                       3042 00117$:
                                   3043 ;	../UI_Manager/ui.c:923: return "Red";
      001523 90 2F AA         [24] 3044 	mov	dptr,#___str_44
      001526 75 F0 80         [24] 3045 	mov	b,#0x80
      001529 22               [24] 3046 	ret
                                   3047 ;	../UI_Manager/ui.c:924: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
      00152A                       3048 00118$:
                                   3049 ;	../UI_Manager/ui.c:925: return "Yellow";
      00152A 90 2F AE         [24] 3050 	mov	dptr,#___str_45
      00152D 75 F0 80         [24] 3051 	mov	b,#0x80
      001530 22               [24] 3052 	ret
                                   3053 ;	../UI_Manager/ui.c:926: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
      001531                       3054 00119$:
                                   3055 ;	../UI_Manager/ui.c:927: return "Green";
      001531 90 2F B5         [24] 3056 	mov	dptr,#___str_46
      001534 75 F0 80         [24] 3057 	mov	b,#0x80
      001537 22               [24] 3058 	ret
                                   3059 ;	../UI_Manager/ui.c:928: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
      001538                       3060 00120$:
                                   3061 ;	../UI_Manager/ui.c:929: return "Cyan";
      001538 90 2F BB         [24] 3062 	mov	dptr,#___str_47
      00153B 75 F0 80         [24] 3063 	mov	b,#0x80
      00153E 22               [24] 3064 	ret
                                   3065 ;	../UI_Manager/ui.c:930: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
      00153F                       3066 00121$:
                                   3067 ;	../UI_Manager/ui.c:931: return "Blue";
      00153F 90 2F C0         [24] 3068 	mov	dptr,#___str_48
      001542 75 F0 80         [24] 3069 	mov	b,#0x80
      001545 22               [24] 3070 	ret
                                   3071 ;	../UI_Manager/ui.c:932: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
      001546                       3072 00122$:
                                   3073 ;	../UI_Manager/ui.c:933: return "Magenta";
      001546 90 2F C5         [24] 3074 	mov	dptr,#___str_49
      001549 75 F0 80         [24] 3075 	mov	b,#0x80
      00154C 22               [24] 3076 	ret
                                   3077 ;	../UI_Manager/ui.c:934: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
      00154D                       3078 00123$:
                                   3079 ;	../UI_Manager/ui.c:935: return "Strobe Slow";
      00154D 90 2F CD         [24] 3080 	mov	dptr,#___str_50
      001550 75 F0 80         [24] 3081 	mov	b,#0x80
      001553 22               [24] 3082 	ret
                                   3083 ;	../UI_Manager/ui.c:936: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      001554                       3084 00124$:
                                   3085 ;	../UI_Manager/ui.c:937: return "Strobe Medium";
      001554 90 2F D9         [24] 3086 	mov	dptr,#___str_51
      001557 75 F0 80         [24] 3087 	mov	b,#0x80
      00155A 22               [24] 3088 	ret
                                   3089 ;	../UI_Manager/ui.c:938: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
      00155B                       3090 00125$:
                                   3091 ;	../UI_Manager/ui.c:939: return "Strobe Fast";
      00155B 90 2F E7         [24] 3092 	mov	dptr,#___str_52
      00155E 75 F0 80         [24] 3093 	mov	b,#0x80
      001561 22               [24] 3094 	ret
                                   3095 ;	../UI_Manager/ui.c:940: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
      001562                       3096 00126$:
                                   3097 ;	../UI_Manager/ui.c:941: return "Blackout";
      001562 90 2F F3         [24] 3098 	mov	dptr,#___str_53
      001565 75 F0 80         [24] 3099 	mov	b,#0x80
      001568 22               [24] 3100 	ret
                                   3101 ;	../UI_Manager/ui.c:942: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
      001569                       3102 00127$:
                                   3103 ;	../UI_Manager/ui.c:943: return "Whiteout";         
      001569 90 2F FC         [24] 3104 	mov	dptr,#___str_54
      00156C 75 F0 80         [24] 3105 	mov	b,#0x80
      00156F 22               [24] 3106 	ret
                                   3107 ;	../UI_Manager/ui.c:945: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
      001570                       3108 00128$:
                                   3109 ;	../UI_Manager/ui.c:946: return "Slot 1";   
      001570 90 30 05         [24] 3110 	mov	dptr,#___str_55
      001573 75 F0 80         [24] 3111 	mov	b,#0x80
      001576 22               [24] 3112 	ret
                                   3113 ;	../UI_Manager/ui.c:947: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
      001577                       3114 00129$:
                                   3115 ;	../UI_Manager/ui.c:948: return "Slot 2";   
      001577 90 30 0C         [24] 3116 	mov	dptr,#___str_56
      00157A 75 F0 80         [24] 3117 	mov	b,#0x80
      00157D 22               [24] 3118 	ret
                                   3119 ;	../UI_Manager/ui.c:949: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
      00157E                       3120 00130$:
                                   3121 ;	../UI_Manager/ui.c:950: return "Slot 3"; 
      00157E 90 30 13         [24] 3122 	mov	dptr,#___str_57
      001581 75 F0 80         [24] 3123 	mov	b,#0x80
                                   3124 ;	../UI_Manager/ui.c:952: case DMX_STRING_OFFSET + OPTION_DMX_MODE_9: 
      001584 22               [24] 3125 	ret
      001585                       3126 00131$:
                                   3127 ;	../UI_Manager/ui.c:953: return "10 All";     
      001585 90 30 1A         [24] 3128 	mov	dptr,#___str_58
      001588 75 F0 80         [24] 3129 	mov	b,#0x80
                                   3130 ;	../UI_Manager/ui.c:954: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
      00158B 22               [24] 3131 	ret
      00158C                       3132 00132$:
                                   3133 ;	../UI_Manager/ui.c:955: return "3 Fog + Macro";   
      00158C 90 30 21         [24] 3134 	mov	dptr,#___str_59
      00158F 75 F0 80         [24] 3135 	mov	b,#0x80
                                   3136 ;	../UI_Manager/ui.c:956: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
      001592 22               [24] 3137 	ret
      001593                       3138 00133$:
                                   3139 ;	../UI_Manager/ui.c:957: return "1 Fog";    
      001593 90 30 2F         [24] 3140 	mov	dptr,#___str_60
      001596 75 F0 80         [24] 3141 	mov	b,#0x80
                                   3142 ;	../UI_Manager/ui.c:959: case SECRET_STRING_OFFSET + 0:
      001599 22               [24] 3143 	ret
      00159A                       3144 00134$:
                                   3145 ;	../UI_Manager/ui.c:960: return "0x486F6C6D6573";
      00159A 90 30 35         [24] 3146 	mov	dptr,#___str_61
      00159D 75 F0 80         [24] 3147 	mov	b,#0x80
                                   3148 ;	../UI_Manager/ui.c:961: case SECRET_STRING_OFFSET + 1:
      0015A0 22               [24] 3149 	ret
      0015A1                       3150 00135$:
                                   3151 ;	../UI_Manager/ui.c:962: return "& 576174736F6E";
      0015A1 90 30 44         [24] 3152 	mov	dptr,#___str_62
      0015A4 75 F0 80         [24] 3153 	mov	b,#0x80
                                   3154 ;	../UI_Manager/ui.c:963: case SECRET_STRING_OFFSET + 2:
      0015A7 22               [24] 3155 	ret
      0015A8                       3156 00136$:
                                   3157 ;	../UI_Manager/ui.c:964: return "626F74684F776E41";
      0015A8 90 30 53         [24] 3158 	mov	dptr,#___str_63
      0015AB 75 F0 80         [24] 3159 	mov	b,#0x80
                                   3160 ;	../UI_Manager/ui.c:965: case SECRET_STRING_OFFSET + 3:
      0015AE 22               [24] 3161 	ret
      0015AF                       3162 00137$:
                                   3163 ;	../UI_Manager/ui.c:966: return "536E6F7762616C6C";
      0015AF 90 30 64         [24] 3164 	mov	dptr,#___str_64
      0015B2 75 F0 80         [24] 3165 	mov	b,#0x80
                                   3166 ;	../UI_Manager/ui.c:967: case SECRET_STRING_OFFSET + 4:
      0015B5 22               [24] 3167 	ret
      0015B6                       3168 00138$:
                                   3169 ;	../UI_Manager/ui.c:968: return "4D6F726961727479";
      0015B6 90 30 75         [24] 3170 	mov	dptr,#___str_65
      0015B9 75 F0 80         [24] 3171 	mov	b,#0x80
                                   3172 ;	../UI_Manager/ui.c:969: case SECRET_STRING_OFFSET + 5:
      0015BC 22               [24] 3173 	ret
      0015BD                       3174 00139$:
                                   3175 ;	../UI_Manager/ui.c:970: return "646F65734E6F74 ;";
      0015BD 90 30 86         [24] 3176 	mov	dptr,#___str_66
      0015C0 75 F0 80         [24] 3177 	mov	b,#0x80
                                   3178 ;	../UI_Manager/ui.c:971: }
      0015C3 22               [24] 3179 	ret
      0015C4                       3180 00140$:
                                   3181 ;	../UI_Manager/ui.c:973: return 0;
      0015C4 90 00 00         [24] 3182 	mov	dptr,#0x0000
      0015C7 75 F0 00         [24] 3183 	mov	b,#0x00
                                   3184 ;	../UI_Manager/ui.c:974: }
      0015CA 22               [24] 3185 	ret
                                   3186 	.area CSEG    (CODE)
                                   3187 	.area CONST   (CODE)
      002DF0                       3188 ___str_0:
      002DF0 54 61 6E 6B 20 4C 69  3189 	.ascii "Tank Lights Off"
             67 68 74 73 20 4F 66
             66
      002DFF 00                    3190 	.db 0x00
      002E00                       3191 ___str_1:
      002E00 54 61 6E 6B 20 4C 69  3192 	.ascii "Tank Lights On"
             67 68 74 73 20 4F 6E
      002E0E 00                    3193 	.db 0x00
      002E0F                       3194 ___str_2:
      002E0F 46 75 6E 2B 4D 61 6E  3195 	.ascii "Fun+Man to Undo"
             20 74 6F 20 55 6E 64
             6F
      002E1E 00                    3196 	.db 0x00
      002E1F                       3197 ___str_3:
      002E1F 41 74 6D 6F 73 46 45  3198 	.ascii "AtmosFEAR 221B"
             41 52 20 32 32 31 42
      002E2D 00                    3199 	.db 0x00
      002E2E                       3200 ___str_4:
      002E2E 42 79 20 42 6C 69 7A  3201 	.ascii "By Blizzard Pro"
             7A 61 72 64 20 50 72
             6F
      002E3D 00                    3202 	.db 0x00
      002E3E                       3203 ___str_5:
      002E3E 50 43 20 4C 6F 61 64  3204 	.ascii "PC Load Letter"
             20 4C 65 74 74 65 72
      002E4C 00                    3205 	.db 0x00
      002E4D                       3206 ___str_6:
      002E4D 42 75 72 73 74 20 74  3207 	.ascii "Burst to Refill"
             6F 20 52 65 66 69 6C
             6C
      002E5C 00                    3208 	.db 0x00
      002E5D                       3209 ___str_7:
      002E5D 4D 61 6E 75 61 6C 20  3210 	.ascii "Manual Mode"
             4D 6F 64 65
      002E68 00                    3211 	.db 0x00
      002E69                       3212 ___str_8:
      002E69 41 64 64 72           3213 	.ascii "Addr"
      002E6D 00                    3214 	.db 0x00
      002E6E                       3215 ___str_9:
      002E6E 4D 6F 64 65           3216 	.ascii "Mode"
      002E72 00                    3217 	.db 0x00
      002E73                       3218 ___str_10:
      002E73 44 4D 58 20 4F 6B     3219 	.ascii "DMX Ok"
      002E79 00                    3220 	.db 0x00
      002E7A                       3221 ___str_11:
      002E7A 4E 6F 20 44 4D 58     3222 	.ascii "No DMX"
      002E80 00                    3223 	.db 0x00
      002E81                       3224 ___str_12:
      002E81 49 6E 74 65 72 76 61  3225 	.ascii "Interval"
             6C
      002E89 00                    3226 	.db 0x00
      002E8A                       3227 ___str_13:
      002E8A 44 75 72 61 74 69 6F  3228 	.ascii "Duration"
             6E
      002E92 00                    3229 	.db 0x00
      002E93                       3230 ___str_14:
      002E93 46 6F 67 20 4C 65 76  3231 	.ascii "Fog Level"
             65 6C
      002E9C 00                    3232 	.db 0x00
      002E9D                       3233 ___str_15:
      002E9D 46 6F 67 20 49 6E 74  3234 	.ascii "Fog Interval"
             65 72 76 61 6C
      002EA9 00                    3235 	.db 0x00
      002EAA                       3236 ___str_16:
      002EAA 53 65 63 6F 6E 64 73  3237 	.ascii "Seconds"
      002EB1 00                    3238 	.db 0x00
      002EB2                       3239 ___str_17:
      002EB2 46 6F 67 20 44 75 72  3240 	.ascii "Fog Duration"
             61 74 69 6F 6E
      002EBE 00                    3241 	.db 0x00
      002EBF                       3242 ___str_18:
      002EBF 4D 61 63 72 6F 73     3243 	.ascii "Macros"
      002EC5 00                    3244 	.db 0x00
      002EC6                       3245 ___str_19:
      002EC6 4D 61 63 72 6F 20 53  3246 	.ascii "Macro Speed"
             70 65 65 64
      002ED1 00                    3247 	.db 0x00
      002ED2                       3248 ___str_20:
      002ED2 4F 66 66              3249 	.ascii "Off"
      002ED5 00                    3250 	.db 0x00
      002ED6                       3251 ___str_21:
      002ED6 00                    3252 	.db 0x00
      002ED7                       3253 ___str_22:
      002ED7 52 65 6D 6F 74 65 20  3254 	.ascii "Remote X Action"
             58 20 41 63 74 69 6F
             6E
      002EE6 00                    3255 	.db 0x00
      002EE7                       3256 ___str_23:
      002EE7 53 61 76 65 64 21     3257 	.ascii "Saved!"
      002EED 00                    3258 	.db 0x00
      002EEE                       3259 ___str_24:
      002EEE 4C 6F 61 64 65 64 21  3260 	.ascii "Loaded!"
      002EF5 00                    3261 	.db 0x00
      002EF6                       3262 ___str_25:
      002EF6 53 61 76 65 20 53 65  3263 	.ascii "Save Settings"
             74 74 69 6E 67 73
      002F03 00                    3264 	.db 0x00
      002F04                       3265 ___str_26:
      002F04 4C 6F 61 64 20 53 65  3266 	.ascii "Load Settings"
             74 74 69 6E 67 73
      002F11 00                    3267 	.db 0x00
      002F12                       3268 ___str_27:
      002F12 44 4D 58 20 41 64 64  3269 	.ascii "DMX Address"
             72 65 73 73
      002F1D 00                    3270 	.db 0x00
      002F1E                       3271 ___str_28:
      002F1E 44 4D 58 20 43 68 61  3272 	.ascii "DMX Channel Mode"
             6E 6E 65 6C 20 4D 6F
             64 65
      002F2E 00                    3273 	.db 0x00
      002F2F                       3274 ___str_29:
      002F2F 57 69 6D 70 79        3275 	.ascii "Wimpy"
      002F34 00                    3276 	.db 0x00
      002F35                       3277 ___str_30:
      002F35 4D 69 6C 64           3278 	.ascii "Mild"
      002F39 00                    3279 	.db 0x00
      002F3A                       3280 ___str_31:
      002F3A 42 6C 61 7A 69 6E     3281 	.ascii "Blazin"
      002F40 00                    3282 	.db 0x00
      002F41                       3283 ___str_32:
      002F41 52 61 69 6E 62 6F 77  3284 	.ascii "Rainbow"
      002F48 00                    3285 	.db 0x00
      002F49                       3286 ___str_33:
      002F49 46 69 72 65           3287 	.ascii "Fire"
      002F4D 00                    3288 	.db 0x00
      002F4E                       3289 ___str_34:
      002F4E 57 61 74 65 72        3290 	.ascii "Water"
      002F53 00                    3291 	.db 0x00
      002F54                       3292 ___str_35:
      002F54 53 74 6F 72 6D        3293 	.ascii "Storm"
      002F59 00                    3294 	.db 0x00
      002F5A                       3295 ___str_36:
      002F5A 41 63 69 64           3296 	.ascii "Acid"
      002F5E 00                    3297 	.db 0x00
      002F5F                       3298 ___str_37:
      002F5F 45 74 68 65 72        3299 	.ascii "Ether"
      002F64 00                    3300 	.db 0x00
      002F65                       3301 ___str_38:
      002F65 52 65 64 20 4C 65 76  3302 	.ascii "Red Level"
             65 6C
      002F6E 00                    3303 	.db 0x00
      002F6F                       3304 ___str_39:
      002F6F 47 72 65 65 6E 20 4C  3305 	.ascii "Green Level"
             65 76 65 6C
      002F7A 00                    3306 	.db 0x00
      002F7B                       3307 ___str_40:
      002F7B 42 6C 75 65 20 4C 65  3308 	.ascii "Blue Level"
             76 65 6C
      002F85 00                    3309 	.db 0x00
      002F86                       3310 ___str_41:
      002F86 53 74 72 6F 62 65 20  3311 	.ascii "Strobe Level"
             4C 65 76 65 6C
      002F92 00                    3312 	.db 0x00
      002F93                       3313 ___str_42:
      002F93 4E 6F 20 41 63 74 69  3314 	.ascii "No Action"
             6F 6E
      002F9C 00                    3315 	.db 0x00
      002F9D                       3316 ___str_43:
      002F9D 43 68 6F 6F 73 65 20  3317 	.ascii "Choose Macro"
             4D 61 63 72 6F
      002FA9 00                    3318 	.db 0x00
      002FAA                       3319 ___str_44:
      002FAA 52 65 64              3320 	.ascii "Red"
      002FAD 00                    3321 	.db 0x00
      002FAE                       3322 ___str_45:
      002FAE 59 65 6C 6C 6F 77     3323 	.ascii "Yellow"
      002FB4 00                    3324 	.db 0x00
      002FB5                       3325 ___str_46:
      002FB5 47 72 65 65 6E        3326 	.ascii "Green"
      002FBA 00                    3327 	.db 0x00
      002FBB                       3328 ___str_47:
      002FBB 43 79 61 6E           3329 	.ascii "Cyan"
      002FBF 00                    3330 	.db 0x00
      002FC0                       3331 ___str_48:
      002FC0 42 6C 75 65           3332 	.ascii "Blue"
      002FC4 00                    3333 	.db 0x00
      002FC5                       3334 ___str_49:
      002FC5 4D 61 67 65 6E 74 61  3335 	.ascii "Magenta"
      002FCC 00                    3336 	.db 0x00
      002FCD                       3337 ___str_50:
      002FCD 53 74 72 6F 62 65 20  3338 	.ascii "Strobe Slow"
             53 6C 6F 77
      002FD8 00                    3339 	.db 0x00
      002FD9                       3340 ___str_51:
      002FD9 53 74 72 6F 62 65 20  3341 	.ascii "Strobe Medium"
             4D 65 64 69 75 6D
      002FE6 00                    3342 	.db 0x00
      002FE7                       3343 ___str_52:
      002FE7 53 74 72 6F 62 65 20  3344 	.ascii "Strobe Fast"
             46 61 73 74
      002FF2 00                    3345 	.db 0x00
      002FF3                       3346 ___str_53:
      002FF3 42 6C 61 63 6B 6F 75  3347 	.ascii "Blackout"
             74
      002FFB 00                    3348 	.db 0x00
      002FFC                       3349 ___str_54:
      002FFC 57 68 69 74 65 6F 75  3350 	.ascii "Whiteout"
             74
      003004 00                    3351 	.db 0x00
      003005                       3352 ___str_55:
      003005 53 6C 6F 74 20 31     3353 	.ascii "Slot 1"
      00300B 00                    3354 	.db 0x00
      00300C                       3355 ___str_56:
      00300C 53 6C 6F 74 20 32     3356 	.ascii "Slot 2"
      003012 00                    3357 	.db 0x00
      003013                       3358 ___str_57:
      003013 53 6C 6F 74 20 33     3359 	.ascii "Slot 3"
      003019 00                    3360 	.db 0x00
      00301A                       3361 ___str_58:
      00301A 31 30 20 41 6C 6C     3362 	.ascii "10 All"
      003020 00                    3363 	.db 0x00
      003021                       3364 ___str_59:
      003021 33 20 46 6F 67 20 2B  3365 	.ascii "3 Fog + Macro"
             20 4D 61 63 72 6F
      00302E 00                    3366 	.db 0x00
      00302F                       3367 ___str_60:
      00302F 31 20 46 6F 67        3368 	.ascii "1 Fog"
      003034 00                    3369 	.db 0x00
      003035                       3370 ___str_61:
      003035 30 78 34 38 36 46 36  3371 	.ascii "0x486F6C6D6573"
             43 36 44 36 35 37 33
      003043 00                    3372 	.db 0x00
      003044                       3373 ___str_62:
      003044 26 20 35 37 36 31 37  3374 	.ascii "& 576174736F6E"
             34 37 33 36 46 36 45
      003052 00                    3375 	.db 0x00
      003053                       3376 ___str_63:
      003053 36 32 36 46 37 34 36  3377 	.ascii "626F74684F776E41"
             38 34 46 37 37 36 45
             34 31
      003063 00                    3378 	.db 0x00
      003064                       3379 ___str_64:
      003064 35 33 36 45 36 46 37  3380 	.ascii "536E6F7762616C6C"
             37 36 32 36 31 36 43
             36 43
      003074 00                    3381 	.db 0x00
      003075                       3382 ___str_65:
      003075 34 44 36 46 37 32 36  3383 	.ascii "4D6F726961727479"
             39 36 31 37 32 37 34
             37 39
      003085 00                    3384 	.db 0x00
      003086                       3385 ___str_66:
      003086 36 34 36 46 36 35 37  3386 	.ascii "646F65734E6F74 ;"
             33 34 45 36 46 37 34
             20 3B
      003096 00                    3387 	.db 0x00
                                   3388 	.area XINIT   (CODE)
                                   3389 	.area CABS    (ABS,CODE)
