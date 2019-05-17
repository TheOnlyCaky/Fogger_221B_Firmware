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
                                    341 ;	../UI_Manager/ui.c:703: static uint8_t slot = 0;
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
      0004EB 12 16 22         [24]  380 	lcall	_get_button_action
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
      00050C 12 2C 83         [24]  403 	lcall	_power_pump
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
      000526 12 2C 83         [24]  418 	lcall	_power_pump
      000529 D0 07            [24]  419 	pop	ar7
                                    420 ;	../UI_Manager/ui.c:29: bursting &= ~BURSTING;
      00052B 53 0B 7F         [24]  421 	anl	_tick_ui_bursting_65536_37,#0x7f
      00052E                        422 00105$:
                                    423 ;	../UI_Manager/ui.c:33: if(action == BUTTON_MANUAL){
      00052E BF 07 34         [24]  424 	cjne	r7,#0x07,00108$
                                    425 ;	../UI_Manager/ui.c:34: set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);
      000531 75 82 10         [24]  426 	mov	dpl,#0x10
      000534 C0 07            [24]  427 	push	ar7
      000536 12 27 6A         [24]  428 	lcall	_get_runtime_data
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
      000554 12 27 FE         [24]  443 	lcall	_set_runtime_data
                                    444 ;	../UI_Manager/ui.c:36: State = IDLE_STATE;
      000557 75 08 00         [24]  445 	mov	_State,#0x00
                                    446 ;	../UI_Manager/ui.c:37: Changed = CHANGE_SCREEN_X;
      00055A 75 09 FF         [24]  447 	mov	_Changed,#0xff
                                    448 ;	../UI_Manager/ui.c:39: set_playing(RESET);
      00055D 75 69 02         [24]  449 	mov	_Playing,#0x02
                                    450 ;	../UI_Manager/ui.c:41: tick_fogger();
      000560 12 28 DB         [24]  451 	lcall	_tick_fogger
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
      000575 02 28 DB         [24]  468 	ljmp	_tick_fogger
      000578                        469 00113$:
                                    470 ;	../UI_Manager/ui.c:59: if(action == BUTTON_FUN_MAN){
      000578 BF 08 02         [24]  471 	cjne	r7,#0x08,00402$
      00057B 80 03            [24]  472 	sjmp	00403$
      00057D                        473 00402$:
      00057D 02 06 16         [24]  474 	ljmp	00121$
      000580                        475 00403$:
                                    476 ;	../UI_Manager/ui.c:60: set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));
      000580 75 82 0F         [24]  477 	mov	dpl,#0x0f
      000583 12 27 6A         [24]  478 	lcall	_get_runtime_data
      000586 E5 82            [12]  479 	mov	a,dpl
      000588 F4               [12]  480 	cpl	a
      000589 F5 66            [12]  481 	mov	_set_runtime_data_PARM_3,a
      00058B 75 65 00         [24]  482 	mov	_set_runtime_data_PARM_2,#0x00
      00058E 75 82 0F         [24]  483 	mov	dpl,#0x0f
      000591 12 27 FE         [24]  484 	lcall	_set_runtime_data
                                    485 ;	../UI_Manager/ui.c:62: exe_command(CLEAR_DISPLAY);
      000594 90 80 00         [24]  486 	mov	dptr,#0x8000
      000597 12 1A B6         [24]  487 	lcall	_exe_command
                                    488 ;	../UI_Manager/ui.c:63: if(get_runtime_data(TANK_LIGHTS_INDEX)){
      00059A 75 82 0F         [24]  489 	mov	dpl,#0x0f
      00059D 12 27 6A         [24]  490 	lcall	_get_runtime_data
      0005A0 E5 82            [12]  491 	mov	a,dpl
      0005A2 60 17            [24]  492 	jz	00115$
                                    493 ;	../UI_Manager/ui.c:64: write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
      0005A4 75 21 0F         [24]  494 	mov	_write_string_PARM_2,#0x0f
      0005A7 75 22 00         [24]  495 	mov	_write_string_PARM_3,#0x00
      0005AA 75 23 00         [24]  496 	mov	_write_string_PARM_4,#0x00
      0005AD 75 24 00         [24]  497 	mov	_write_string_PARM_5,#0x00
      0005B0 90 2E 47         [24]  498 	mov	dptr,#___str_0
      0005B3 75 F0 80         [24]  499 	mov	b,#0x80
      0005B6 12 18 63         [24]  500 	lcall	_write_string
      0005B9 80 15            [24]  501 	sjmp	00116$
      0005BB                        502 00115$:
                                    503 ;	../UI_Manager/ui.c:66: write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
      0005BB 75 21 0F         [24]  504 	mov	_write_string_PARM_2,#0x0f
      0005BE 75 22 00         [24]  505 	mov	_write_string_PARM_3,#0x00
      0005C1 75 23 00         [24]  506 	mov	_write_string_PARM_4,#0x00
      0005C4 75 24 00         [24]  507 	mov	_write_string_PARM_5,#0x00
      0005C7 90 2E 57         [24]  508 	mov	dptr,#___str_1
      0005CA 75 F0 80         [24]  509 	mov	b,#0x80
      0005CD 12 18 63         [24]  510 	lcall	_write_string
      0005D0                        511 00116$:
                                    512 ;	../UI_Manager/ui.c:69: write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
      0005D0 75 21 0F         [24]  513 	mov	_write_string_PARM_2,#0x0f
      0005D3 75 22 00         [24]  514 	mov	_write_string_PARM_3,#0x00
      0005D6 75 23 01         [24]  515 	mov	_write_string_PARM_4,#0x01
      0005D9 75 24 00         [24]  516 	mov	_write_string_PARM_5,#0x00
      0005DC 90 2E 66         [24]  517 	mov	dptr,#___str_2
      0005DF 75 F0 80         [24]  518 	mov	b,#0x80
      0005E2 12 18 63         [24]  519 	lcall	_write_string
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
      000628 12 1A B6         [24]  562 	lcall	_exe_command
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
      00063C 12 2E 0D         [24]  573 	lcall	__modsint
      00063F E5 82            [12]  574 	mov	a,dpl
      000641 FC               [12]  575 	mov	r4,a
      000642 2C               [12]  576 	add	a,r4
      000643 FC               [12]  577 	mov	r4,a
      000644 24 28            [12]  578 	add	a,#0x28
      000646 F5 82            [12]  579 	mov	dpl,a
      000648 C0 04            [24]  580 	push	ar4
      00064A 12 14 19         [24]  581 	lcall	_getString
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
      000665 12 18 63         [24]  592 	lcall	_write_string
      000668 D0 04            [24]  593 	pop	ar4
                                    594 ;	../UI_Manager/ui.c:88: write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      00066A 74 29            [12]  595 	mov	a,#0x29
      00066C 2C               [12]  596 	add	a,r4
      00066D F5 82            [12]  597 	mov	dpl,a
      00066F 12 14 19         [24]  598 	lcall	_getString
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
      00068A 12 18 63         [24]  609 	lcall	_write_string
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
      000760 12 1A B6         [24]  747 	lcall	_exe_command
                                    748 ;	../UI_Manager/ui.c:128: write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000763 75 21 10         [24]  749 	mov	_write_string_PARM_2,#0x10
      000766 75 22 01         [24]  750 	mov	_write_string_PARM_3,#0x01
      000769 75 23 00         [24]  751 	mov	_write_string_PARM_4,#0x00
      00076C 75 24 00         [24]  752 	mov	_write_string_PARM_5,#0x00
      00076F 90 2E 76         [24]  753 	mov	dptr,#___str_3
      000772 75 F0 80         [24]  754 	mov	b,#0x80
      000775 12 18 63         [24]  755 	lcall	_write_string
                                    756 ;	../UI_Manager/ui.c:129: write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000778 75 21 10         [24]  757 	mov	_write_string_PARM_2,#0x10
      00077B 75 22 00         [24]  758 	mov	_write_string_PARM_3,#0x00
      00077E 75 23 01         [24]  759 	mov	_write_string_PARM_4,#0x01
      000781 75 24 00         [24]  760 	mov	_write_string_PARM_5,#0x00
      000784 90 2E 85         [24]  761 	mov	dptr,#___str_4
      000787 75 F0 80         [24]  762 	mov	b,#0x80
      00078A 12 18 63         [24]  763 	lcall	_write_string
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
      00079B 02 0B F1         [24]  782 	ljmp	_fogIntervalPage
      00079E                        783 00132$:
                                    784 ;	../UI_Manager/ui.c:142: fogDurationPage(action);
      00079E 8F 82            [24]  785 	mov	dpl,r7
                                    786 ;	../UI_Manager/ui.c:143: break;
                                    787 ;	../UI_Manager/ui.c:144: case MANUAL_COLOR_MACRO_STATE:
      0007A0 02 0C A6         [24]  788 	ljmp	_fogDurationPage
      0007A3                        789 00133$:
                                    790 ;	../UI_Manager/ui.c:145: macroPage(action);
      0007A3 8F 82            [24]  791 	mov	dpl,r7
                                    792 ;	../UI_Manager/ui.c:146: break;
                                    793 ;	../UI_Manager/ui.c:147: case MANUAL_MACRO_SPEED_STATE:
      0007A5 02 0D 5B         [24]  794 	ljmp	_macroPage
      0007A8                        795 00134$:
                                    796 ;	../UI_Manager/ui.c:148: macroSpeedPage(action);
      0007A8 8F 82            [24]  797 	mov	dpl,r7
                                    798 ;	../UI_Manager/ui.c:149: break;
                                    799 ;	../UI_Manager/ui.c:153: case MANUAL_STROBE_STATE:
      0007AA 02 0E 0D         [24]  800 	ljmp	_macroSpeedPage
      0007AD                        801 00138$:
                                    802 ;	../UI_Manager/ui.c:154: colorPage(action);
      0007AD 8F 82            [24]  803 	mov	dpl,r7
                                    804 ;	../UI_Manager/ui.c:155: break;
                                    805 ;	../UI_Manager/ui.c:158: case MANUAL_REMOTE_ACTION_6_STATE:
      0007AF 02 0E EA         [24]  806 	ljmp	_colorPage
      0007B2                        807 00141$:
                                    808 ;	../UI_Manager/ui.c:159: remotePage(action);
      0007B2 8F 82            [24]  809 	mov	dpl,r7
                                    810 ;	../UI_Manager/ui.c:160: break;
                                    811 ;	../UI_Manager/ui.c:162: case MANUAL_SAVE_SETTINGS_STATE:
      0007B4 02 10 10         [24]  812 	ljmp	_remotePage
      0007B7                        813 00143$:
                                    814 ;	../UI_Manager/ui.c:163: saveLoadPage(action);
      0007B7 8F 82            [24]  815 	mov	dpl,r7
                                    816 ;	../UI_Manager/ui.c:164: break;
                                    817 ;	../UI_Manager/ui.c:165: case DMX_ADDRESS_STATE:
      0007B9 02 11 34         [24]  818 	ljmp	_saveLoadPage
      0007BC                        819 00144$:
                                    820 ;	../UI_Manager/ui.c:166: dmxAddressPage(action);
      0007BC 8F 82            [24]  821 	mov	dpl,r7
                                    822 ;	../UI_Manager/ui.c:167: break;
                                    823 ;	../UI_Manager/ui.c:168: case DMX_CHANNEL_MODE_STATE:
      0007BE 02 12 51         [24]  824 	ljmp	_dmxAddressPage
      0007C1                        825 00145$:
                                    826 ;	../UI_Manager/ui.c:169: dmxChannelPage(action);
      0007C1 8F 82            [24]  827 	mov	dpl,r7
                                    828 ;	../UI_Manager/ui.c:170: break;
                                    829 ;	../UI_Manager/ui.c:171: default: //IDLE state
      0007C3 02 12 D5         [24]  830 	ljmp	_dmxChannelPage
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
      0007D6 02 13 77         [24]  841 	ljmp	_set_ui_state
      0007D9                        842 00150$:
                                    843 ;	../UI_Manager/ui.c:176: } else if(action == BUTTON_FUN_UP){
      0007D9 BF 0C 09         [24]  844 	cjne	r7,#0x0c,00164$
                                    845 ;	../UI_Manager/ui.c:177: set_ui_state(DEC, NULL);
      0007DC 75 17 00         [24]  846 	mov	_set_ui_state_PARM_2,#0x00
      0007DF 75 82 02         [24]  847 	mov	dpl,#0x02
                                    848 ;	../UI_Manager/ui.c:180: }
                                    849 ;	../UI_Manager/ui.c:183: }
      0007E2 02 13 77         [24]  850 	ljmp	_set_ui_state
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
      0007F0 12 1A B6         [24]  876 	lcall	_exe_command
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
      000814 90 2E 95         [24]  895 	mov	dptr,#___str_5
      000817 75 F0 80         [24]  896 	mov	b,#0x80
      00081A 12 18 63         [24]  897 	lcall	_write_string
                                    898 ;	../UI_Manager/ui.c:205: write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      00081D 75 21 10         [24]  899 	mov	_write_string_PARM_2,#0x10
      000820 75 22 00         [24]  900 	mov	_write_string_PARM_3,#0x00
      000823 75 23 01         [24]  901 	mov	_write_string_PARM_4,#0x01
      000826 75 24 00         [24]  902 	mov	_write_string_PARM_5,#0x00
      000829 90 2E A4         [24]  903 	mov	dptr,#___str_6
      00082C 75 F0 80         [24]  904 	mov	b,#0x80
      00082F 12 18 63         [24]  905 	lcall	_write_string
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
      000849 12 27 6A         [24]  927 	lcall	_get_runtime_data
      00084C E5 82            [12]  928 	mov	a,dpl
      00084E 60 17            [24]  929 	jz	00113$
                                    930 ;	../UI_Manager/ui.c:222: write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
      000850 75 21 10         [24]  931 	mov	_write_string_PARM_2,#0x10
      000853 75 22 01         [24]  932 	mov	_write_string_PARM_3,#0x01
      000856 75 23 00         [24]  933 	mov	_write_string_PARM_4,#0x00
      000859 75 24 00         [24]  934 	mov	_write_string_PARM_5,#0x00
      00085C 90 2E B4         [24]  935 	mov	dptr,#___str_7
      00085F 75 F0 80         [24]  936 	mov	b,#0x80
      000862 12 18 63         [24]  937 	lcall	_write_string
      000865 80 66            [24]  938 	sjmp	00116$
      000867                        939 00113$:
                                    940 ;	../UI_Manager/ui.c:225: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      000867 12 28 CA         [24]  941 	lcall	_get_dmx_address
      00086A 75 25 04         [24]  942 	mov	_write_number_PARM_2,#0x04
      00086D 75 26 01         [24]  943 	mov	_write_number_PARM_3,#0x01
      000870 75 27 00         [24]  944 	mov	_write_number_PARM_4,#0x00
      000873 12 19 27         [24]  945 	lcall	_write_number
                                    946 ;	../UI_Manager/ui.c:226: switch (get_runtime_data(MODE_INDEX))
      000876 75 82 0E         [24]  947 	mov	dpl,#0x0e
      000879 12 27 6A         [24]  948 	lcall	_get_runtime_data
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
      0008A0 12 19 27         [24]  981 	lcall	_write_number
                                    982 ;	../UI_Manager/ui.c:240: write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
      0008A3 75 21 04         [24]  983 	mov	_write_string_PARM_2,#0x04
      0008A6 75 22 00         [24]  984 	mov	_write_string_PARM_3,#0x00
      0008A9 75 23 01         [24]  985 	mov	_write_string_PARM_4,#0x01
      0008AC 75 24 00         [24]  986 	mov	_write_string_PARM_5,#0x00
      0008AF 90 2E C0         [24]  987 	mov	dptr,#___str_8
      0008B2 75 F0 80         [24]  988 	mov	b,#0x80
      0008B5 12 18 63         [24]  989 	lcall	_write_string
                                    990 ;	../UI_Manager/ui.c:241: write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
      0008B8 75 21 04         [24]  991 	mov	_write_string_PARM_2,#0x04
      0008BB 75 22 09         [24]  992 	mov	_write_string_PARM_3,#0x09
      0008BE 75 23 01         [24]  993 	mov	_write_string_PARM_4,#0x01
      0008C1 75 24 00         [24]  994 	mov	_write_string_PARM_5,#0x00
      0008C4 90 2E C5         [24]  995 	mov	dptr,#___str_9
      0008C7 75 F0 80         [24]  996 	mov	b,#0x80
      0008CA 12 18 63         [24]  997 	lcall	_write_string
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
      0008F2 12 1A 81         [24] 1023 	lcall	_write_char
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
      000908 12 1A 81         [24] 1035 	lcall	_write_char
      00090B 80 11            [24] 1036 	sjmp	00128$
      00090D                       1037 00124$:
                                   1038 ;	../UI_Manager/ui.c:265: } else if(tock == 0x08 + 55){
      00090D 74 3F            [12] 1039 	mov	a,#0x3f
      00090F B5 13 0C         [24] 1040 	cjne	a,_idlePage_tock_65536_55,00128$
                                   1041 ;	../UI_Manager/ui.c:266: write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
      000912 75 2B 0E         [24] 1042 	mov	_write_char_PARM_2,#0x0e
      000915 75 2C 00         [24] 1043 	mov	_write_char_PARM_3,#0x00
      000918 75 82 04         [24] 1044 	mov	dpl,#0x04
      00091B 12 1A 81         [24] 1045 	lcall	_write_char
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
      000945 12 1A 81         [24] 1070 	lcall	_write_char
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
      00096A 12 1A 81         [24] 1092 	lcall	_write_char
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
      000984 12 1A 81         [24] 1107 	lcall	_write_char
                                   1108 ;	../UI_Manager/ui.c:293: iconChange &= ~HEATING_CHANGE;
      000987 53 14 FD         [24] 1109 	anl	_idlePage_iconChange_65536_55,#0xfd
      00098A 80 15            [24] 1110 	sjmp	00142$
      00098C                       1111 00139$:
                                   1112 ;	../UI_Manager/ui.c:295: write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
      00098C 75 2B 0F         [24] 1113 	mov	_write_char_PARM_2,#0x0f
      00098F 75 2C 00         [24] 1114 	mov	_write_char_PARM_3,#0x00
      000992 75 82 A0         [24] 1115 	mov	dpl,#0xa0
      000995 12 1A 81         [24] 1116 	lcall	_write_char
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
      0009AD 12 27 6A         [24] 1131 	lcall	_get_runtime_data
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
      0009CC 90 2E CA         [24] 1147 	mov	dptr,#___str_10
      0009CF 75 F0 80         [24] 1148 	mov	b,#0x80
      0009D2 12 18 63         [24] 1149 	lcall	_write_string
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
      0009F4 90 2E D1         [24] 1167 	mov	dptr,#___str_11
      0009F7 75 F0 80         [24] 1168 	mov	b,#0x80
      0009FA 12 18 63         [24] 1169 	lcall	_write_string
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
      000A21 12 19 27         [24] 1196 	lcall	_write_number
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
      000A3D 12 1A 81         [24] 1212 	lcall	_write_char
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
      000A5A 90 2E D8         [24] 1233 	mov	dptr,#___str_12
      000A5D 75 F0 80         [24] 1234 	mov	b,#0x80
      000A60 C0 07            [24] 1235 	push	ar7
      000A62 12 18 63         [24] 1236 	lcall	_write_string
      000A65 D0 07            [24] 1237 	pop	ar7
      000A67 80 19            [24] 1238 	sjmp	00157$
      000A69                       1239 00156$:
                                   1240 ;	../UI_Manager/ui.c:340: write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
      000A69 75 21 09         [24] 1241 	mov	_write_string_PARM_2,#0x09
      000A6C 75 22 00         [24] 1242 	mov	_write_string_PARM_3,#0x00
      000A6F 75 23 01         [24] 1243 	mov	_write_string_PARM_4,#0x01
      000A72 75 24 00         [24] 1244 	mov	_write_string_PARM_5,#0x00
      000A75 90 2E E1         [24] 1245 	mov	dptr,#___str_13
      000A78 75 F0 80         [24] 1246 	mov	b,#0x80
      000A7B C0 07            [24] 1247 	push	ar7
      000A7D 12 18 63         [24] 1248 	lcall	_write_string
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
      000A9D 12 19 27         [24] 1271 	lcall	_write_number
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
                                   1288 ;	../UI_Manager/ui.c:360: if(Changed){
      000AA7 E5 09            [12] 1289 	mov	a,_Changed
      000AA9 60 25            [24] 1290 	jz	00102$
                                   1291 ;	../UI_Manager/ui.c:361: Changed = 0x00;
      000AAB 75 09 00         [24] 1292 	mov	_Changed,#0x00
                                   1293 ;	../UI_Manager/ui.c:362: changed = 0xFF;
      000AAE 75 0A FF         [24] 1294 	mov	_changed,#0xff
                                   1295 ;	../UI_Manager/ui.c:364: exe_command(CLEAR_DISPLAY);
      000AB1 90 80 00         [24] 1296 	mov	dptr,#0x8000
      000AB4 C0 07            [24] 1297 	push	ar7
      000AB6 12 1A B6         [24] 1298 	lcall	_exe_command
                                   1299 ;	../UI_Manager/ui.c:366: write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);
      000AB9 75 21 0A         [24] 1300 	mov	_write_string_PARM_2,#0x0a
      000ABC 75 22 03         [24] 1301 	mov	_write_string_PARM_3,#0x03
      000ABF 75 23 00         [24] 1302 	mov	_write_string_PARM_4,#0x00
      000AC2 75 24 00         [24] 1303 	mov	_write_string_PARM_5,#0x00
      000AC5 90 2E EA         [24] 1304 	mov	dptr,#___str_14
      000AC8 75 F0 80         [24] 1305 	mov	b,#0x80
      000ACB 12 18 63         [24] 1306 	lcall	_write_string
      000ACE D0 07            [24] 1307 	pop	ar7
      000AD0                       1308 00102$:
                                   1309 ;	../UI_Manager/ui.c:370: if(changed){
      000AD0 E5 0A            [12] 1310 	mov	a,_changed
      000AD2 70 03            [24] 1311 	jnz	00149$
      000AD4 02 0B AA         [24] 1312 	ljmp	00108$
      000AD7                       1313 00149$:
                                   1314 ;	../UI_Manager/ui.c:371: changed = 0x00;
      000AD7 75 0A 00         [24] 1315 	mov	_changed,#0x00
                                   1316 ;	../UI_Manager/ui.c:373: switch (get_runtime_data(FOG_POWER_INDEX))
      000ADA 75 82 00         [24] 1317 	mov	dpl,#0x00
      000ADD C0 07            [24] 1318 	push	ar7
      000ADF 12 27 6A         [24] 1319 	lcall	_get_runtime_data
      000AE2 AE 82            [24] 1320 	mov	r6,dpl
      000AE4 D0 07            [24] 1321 	pop	ar7
      000AE6 BE 02 02         [24] 1322 	cjne	r6,#0x02,00150$
      000AE9 80 37            [24] 1323 	sjmp	00104$
      000AEB                       1324 00150$:
      000AEB BE 04 73         [24] 1325 	cjne	r6,#0x04,00105$
                                   1326 ;	../UI_Manager/ui.c:376: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000AEE 75 82 02         [24] 1327 	mov	dpl,#0x02
      000AF1 C0 07            [24] 1328 	push	ar7
      000AF3 12 14 19         [24] 1329 	lcall	_getString
      000AF6 AC 82            [24] 1330 	mov	r4,dpl
      000AF8 AD 83            [24] 1331 	mov	r5,dph
      000AFA AE F0            [24] 1332 	mov	r6,b
      000AFC 75 21 10         [24] 1333 	mov	_write_string_PARM_2,#0x10
      000AFF 75 22 03         [24] 1334 	mov	_write_string_PARM_3,#0x03
      000B02 75 23 01         [24] 1335 	mov	_write_string_PARM_4,#0x01
      000B05 75 24 00         [24] 1336 	mov	_write_string_PARM_5,#0x00
      000B08 8C 82            [24] 1337 	mov	dpl,r4
      000B0A 8D 83            [24] 1338 	mov	dph,r5
      000B0C 8E F0            [24] 1339 	mov	b,r6
      000B0E 12 18 63         [24] 1340 	lcall	_write_string
                                   1341 ;	../UI_Manager/ui.c:377: write_char(CHAR_LVL_1, 12, LINE_1);
      000B11 75 2B 0C         [24] 1342 	mov	_write_char_PARM_2,#0x0c
      000B14 75 2C 01         [24] 1343 	mov	_write_char_PARM_3,#0x01
      000B17 75 82 40         [24] 1344 	mov	dpl,#0x40
      000B1A 12 1A 81         [24] 1345 	lcall	_write_char
      000B1D D0 07            [24] 1346 	pop	ar7
                                   1347 ;	../UI_Manager/ui.c:378: break;
      000B1F 02 0B AA         [24] 1348 	ljmp	00108$
                                   1349 ;	../UI_Manager/ui.c:379: case FOG_MED:
      000B22                       1350 00104$:
                                   1351 ;	../UI_Manager/ui.c:380: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000B22 75 82 01         [24] 1352 	mov	dpl,#0x01
      000B25 C0 07            [24] 1353 	push	ar7
      000B27 12 14 19         [24] 1354 	lcall	_getString
      000B2A AC 82            [24] 1355 	mov	r4,dpl
      000B2C AD 83            [24] 1356 	mov	r5,dph
      000B2E AE F0            [24] 1357 	mov	r6,b
      000B30 75 21 10         [24] 1358 	mov	_write_string_PARM_2,#0x10
      000B33 75 22 03         [24] 1359 	mov	_write_string_PARM_3,#0x03
      000B36 75 23 01         [24] 1360 	mov	_write_string_PARM_4,#0x01
      000B39 75 24 00         [24] 1361 	mov	_write_string_PARM_5,#0x00
      000B3C 8C 82            [24] 1362 	mov	dpl,r4
      000B3E 8D 83            [24] 1363 	mov	dph,r5
      000B40 8E F0            [24] 1364 	mov	b,r6
      000B42 12 18 63         [24] 1365 	lcall	_write_string
                                   1366 ;	../UI_Manager/ui.c:381: write_char(CHAR_LVL_1, 12, LINE_1);
      000B45 75 2B 0C         [24] 1367 	mov	_write_char_PARM_2,#0x0c
      000B48 75 2C 01         [24] 1368 	mov	_write_char_PARM_3,#0x01
      000B4B 75 82 40         [24] 1369 	mov	dpl,#0x40
      000B4E 12 1A 81         [24] 1370 	lcall	_write_char
                                   1371 ;	../UI_Manager/ui.c:382: write_char(CHAR_LVL_2, 13, LINE_1);
      000B51 75 2B 0D         [24] 1372 	mov	_write_char_PARM_2,#0x0d
      000B54 75 2C 01         [24] 1373 	mov	_write_char_PARM_3,#0x01
      000B57 75 82 C0         [24] 1374 	mov	dpl,#0xc0
      000B5A 12 1A 81         [24] 1375 	lcall	_write_char
      000B5D D0 07            [24] 1376 	pop	ar7
                                   1377 ;	../UI_Manager/ui.c:383: break;
                                   1378 ;	../UI_Manager/ui.c:384: default:
      000B5F 80 49            [24] 1379 	sjmp	00108$
      000B61                       1380 00105$:
                                   1381 ;	../UI_Manager/ui.c:385: write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000B61 75 82 00         [24] 1382 	mov	dpl,#0x00
      000B64 C0 07            [24] 1383 	push	ar7
      000B66 12 14 19         [24] 1384 	lcall	_getString
      000B69 AC 82            [24] 1385 	mov	r4,dpl
      000B6B AD 83            [24] 1386 	mov	r5,dph
      000B6D AE F0            [24] 1387 	mov	r6,b
      000B6F 75 21 10         [24] 1388 	mov	_write_string_PARM_2,#0x10
      000B72 75 22 03         [24] 1389 	mov	_write_string_PARM_3,#0x03
      000B75 75 23 01         [24] 1390 	mov	_write_string_PARM_4,#0x01
      000B78 75 24 00         [24] 1391 	mov	_write_string_PARM_5,#0x00
      000B7B 8C 82            [24] 1392 	mov	dpl,r4
      000B7D 8D 83            [24] 1393 	mov	dph,r5
      000B7F 8E F0            [24] 1394 	mov	b,r6
      000B81 12 18 63         [24] 1395 	lcall	_write_string
                                   1396 ;	../UI_Manager/ui.c:386: write_char(CHAR_LVL_1, 12, LINE_1);
      000B84 75 2B 0C         [24] 1397 	mov	_write_char_PARM_2,#0x0c
      000B87 75 2C 01         [24] 1398 	mov	_write_char_PARM_3,#0x01
      000B8A 75 82 40         [24] 1399 	mov	dpl,#0x40
      000B8D 12 1A 81         [24] 1400 	lcall	_write_char
                                   1401 ;	../UI_Manager/ui.c:387: write_char(CHAR_LVL_2, 13, LINE_1);
      000B90 75 2B 0D         [24] 1402 	mov	_write_char_PARM_2,#0x0d
      000B93 75 2C 01         [24] 1403 	mov	_write_char_PARM_3,#0x01
      000B96 75 82 C0         [24] 1404 	mov	dpl,#0xc0
      000B99 12 1A 81         [24] 1405 	lcall	_write_char
                                   1406 ;	../UI_Manager/ui.c:388: write_char(CHAR_LVL_3, 14, LINE_1);
      000B9C 75 2B 0E         [24] 1407 	mov	_write_char_PARM_2,#0x0e
      000B9F 75 2C 01         [24] 1408 	mov	_write_char_PARM_3,#0x01
      000BA2 75 82 20         [24] 1409 	mov	dpl,#0x20
      000BA5 12 1A 81         [24] 1410 	lcall	_write_char
      000BA8 D0 07            [24] 1411 	pop	ar7
                                   1412 ;	../UI_Manager/ui.c:390: }
      000BAA                       1413 00108$:
                                   1414 ;	../UI_Manager/ui.c:394: switch (action)
      000BAA BF 02 02         [24] 1415 	cjne	r7,#0x02,00153$
      000BAD 80 2F            [24] 1416 	sjmp	00111$
      000BAF                       1417 00153$:
      000BAF BF 03 02         [24] 1418 	cjne	r7,#0x03,00154$
      000BB2 80 0A            [24] 1419 	sjmp	00109$
      000BB4                       1420 00154$:
      000BB4 BF 0A 02         [24] 1421 	cjne	r7,#0x0a,00155$
      000BB7 80 15            [24] 1422 	sjmp	00110$
      000BB9                       1423 00155$:
                                   1424 ;	../UI_Manager/ui.c:396: case BUTTON_UP:
      000BB9 BF 0C 34         [24] 1425 	cjne	r7,#0x0c,00114$
      000BBC 80 29            [24] 1426 	sjmp	00112$
      000BBE                       1427 00109$:
                                   1428 ;	../UI_Manager/ui.c:397: set_runtime_data(FOG_POWER_INDEX, INC, NULL);
      000BBE 75 65 01         [24] 1429 	mov	_set_runtime_data_PARM_2,#0x01
      000BC1 75 66 00         [24] 1430 	mov	_set_runtime_data_PARM_3,#0x00
      000BC4 75 82 00         [24] 1431 	mov	dpl,#0x00
      000BC7 12 27 FE         [24] 1432 	lcall	_set_runtime_data
                                   1433 ;	../UI_Manager/ui.c:398: changed = 0xFF;
      000BCA 75 0A FF         [24] 1434 	mov	_changed,#0xff
                                   1435 ;	../UI_Manager/ui.c:399: break;
                                   1436 ;	../UI_Manager/ui.c:400: case BUTTON_DOWN:
      000BCD 22               [24] 1437 	ret
      000BCE                       1438 00110$:
                                   1439 ;	../UI_Manager/ui.c:401: set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
      000BCE 75 65 02         [24] 1440 	mov	_set_runtime_data_PARM_2,#0x02
      000BD1 75 66 00         [24] 1441 	mov	_set_runtime_data_PARM_3,#0x00
      000BD4 75 82 00         [24] 1442 	mov	dpl,#0x00
      000BD7 12 27 FE         [24] 1443 	lcall	_set_runtime_data
                                   1444 ;	../UI_Manager/ui.c:402: changed = 0xFF;  
      000BDA 75 0A FF         [24] 1445 	mov	_changed,#0xff
                                   1446 ;	../UI_Manager/ui.c:403: break;
                                   1447 ;	../UI_Manager/ui.c:404: case BUTTON_FUNCTION:
      000BDD 22               [24] 1448 	ret
      000BDE                       1449 00111$:
                                   1450 ;	../UI_Manager/ui.c:405: set_ui_state(INC, NULL);
      000BDE 75 17 00         [24] 1451 	mov	_set_ui_state_PARM_2,#0x00
      000BE1 75 82 01         [24] 1452 	mov	dpl,#0x01
                                   1453 ;	../UI_Manager/ui.c:406: break;
                                   1454 ;	../UI_Manager/ui.c:407: case BUTTON_FUN_UP:
      000BE4 02 13 77         [24] 1455 	ljmp	_set_ui_state
      000BE7                       1456 00112$:
                                   1457 ;	../UI_Manager/ui.c:408: set_ui_state(DEC, NULL);
      000BE7 75 17 00         [24] 1458 	mov	_set_ui_state_PARM_2,#0x00
      000BEA 75 82 02         [24] 1459 	mov	dpl,#0x02
                                   1460 ;	../UI_Manager/ui.c:410: }
                                   1461 ;	../UI_Manager/ui.c:411: }
      000BED 02 13 77         [24] 1462 	ljmp	_set_ui_state
      000BF0                       1463 00114$:
      000BF0 22               [24] 1464 	ret
                                   1465 ;------------------------------------------------------------
                                   1466 ;Allocation info for local variables in function 'fogIntervalPage'
                                   1467 ;------------------------------------------------------------
                                   1468 ;action                    Allocated to registers r7 
                                   1469 ;------------------------------------------------------------
                                   1470 ;	../UI_Manager/ui.c:413: void fogIntervalPage(uint8_t action){
                                   1471 ;	-----------------------------------------
                                   1472 ;	 function fogIntervalPage
                                   1473 ;	-----------------------------------------
      000BF1                       1474 _fogIntervalPage:
      000BF1 AF 82            [24] 1475 	mov	r7,dpl
                                   1476 ;	../UI_Manager/ui.c:415: if(Changed){
      000BF3 E5 09            [12] 1477 	mov	a,_Changed
      000BF5 60 3A            [24] 1478 	jz	00102$
                                   1479 ;	../UI_Manager/ui.c:416: Changed = 0x00;
      000BF7 75 09 00         [24] 1480 	mov	_Changed,#0x00
                                   1481 ;	../UI_Manager/ui.c:417: changed = 0xFF;
      000BFA 75 0A FF         [24] 1482 	mov	_changed,#0xff
                                   1483 ;	../UI_Manager/ui.c:419: exe_command(CLEAR_DISPLAY);
      000BFD 90 80 00         [24] 1484 	mov	dptr,#0x8000
      000C00 C0 07            [24] 1485 	push	ar7
      000C02 12 1A B6         [24] 1486 	lcall	_exe_command
                                   1487 ;	../UI_Manager/ui.c:421: write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
      000C05 75 21 0D         [24] 1488 	mov	_write_string_PARM_2,#0x0d
      000C08 75 22 02         [24] 1489 	mov	_write_string_PARM_3,#0x02
      000C0B 75 23 00         [24] 1490 	mov	_write_string_PARM_4,#0x00
      000C0E 75 24 00         [24] 1491 	mov	_write_string_PARM_5,#0x00
      000C11 90 2E F4         [24] 1492 	mov	dptr,#___str_15
      000C14 75 F0 80         [24] 1493 	mov	b,#0x80
      000C17 12 18 63         [24] 1494 	lcall	_write_string
                                   1495 ;	../UI_Manager/ui.c:422: write_string("Seconds", sizeof("Seconds"), 8, LINE_1, NOT_SELECTED);
      000C1A 75 21 08         [24] 1496 	mov	_write_string_PARM_2,#0x08
      000C1D 75 22 08         [24] 1497 	mov	_write_string_PARM_3,#0x08
      000C20 75 23 01         [24] 1498 	mov	_write_string_PARM_4,#0x01
      000C23 75 24 00         [24] 1499 	mov	_write_string_PARM_5,#0x00
      000C26 90 2F 01         [24] 1500 	mov	dptr,#___str_16
      000C29 75 F0 80         [24] 1501 	mov	b,#0x80
      000C2C 12 18 63         [24] 1502 	lcall	_write_string
      000C2F D0 07            [24] 1503 	pop	ar7
      000C31                       1504 00102$:
                                   1505 ;	../UI_Manager/ui.c:426: if(changed){
      000C31 E5 0A            [12] 1506 	mov	a,_changed
      000C33 60 20            [24] 1507 	jz	00104$
                                   1508 ;	../UI_Manager/ui.c:427: changed = 0x00;
      000C35 75 0A 00         [24] 1509 	mov	_changed,#0x00
                                   1510 ;	../UI_Manager/ui.c:429: write_number(get_runtime_data(FOG_INTERVAL_INDEX), 4, LINE_1, NOT_SELECTED);
      000C38 75 82 02         [24] 1511 	mov	dpl,#0x02
      000C3B C0 07            [24] 1512 	push	ar7
      000C3D 12 27 6A         [24] 1513 	lcall	_get_runtime_data
      000C40 AE 82            [24] 1514 	mov	r6,dpl
      000C42 7D 00            [12] 1515 	mov	r5,#0x00
      000C44 75 25 04         [24] 1516 	mov	_write_number_PARM_2,#0x04
      000C47 75 26 01         [24] 1517 	mov	_write_number_PARM_3,#0x01
                                   1518 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000C4A 8D 27            [24] 1519 	mov	_write_number_PARM_4,r5
      000C4C 8E 82            [24] 1520 	mov	dpl,r6
      000C4E 8D 83            [24] 1521 	mov	dph,r5
      000C50 12 19 27         [24] 1522 	lcall	_write_number
      000C53 D0 07            [24] 1523 	pop	ar7
      000C55                       1524 00104$:
                                   1525 ;	../UI_Manager/ui.c:433: switch (action)
      000C55 BF 02 02         [24] 1526 	cjne	r7,#0x02,00148$
      000C58 80 39            [24] 1527 	sjmp	00109$
      000C5A                       1528 00148$:
      000C5A BF 03 02         [24] 1529 	cjne	r7,#0x03,00149$
      000C5D 80 14            [24] 1530 	sjmp	00106$
      000C5F                       1531 00149$:
      000C5F BF 0A 02         [24] 1532 	cjne	r7,#0x0a,00150$
      000C62 80 1F            [24] 1533 	sjmp	00108$
      000C64                       1534 00150$:
      000C64 BF 0C 02         [24] 1535 	cjne	r7,#0x0c,00151$
      000C67 80 33            [24] 1536 	sjmp	00110$
      000C69                       1537 00151$:
      000C69 BF 1F 02         [24] 1538 	cjne	r7,#0x1f,00152$
      000C6C 80 05            [24] 1539 	sjmp	00106$
      000C6E                       1540 00152$:
                                   1541 ;	../UI_Manager/ui.c:436: case BUTTON_UP:
      000C6E BF 65 34         [24] 1542 	cjne	r7,#0x65,00112$
      000C71 80 10            [24] 1543 	sjmp	00108$
      000C73                       1544 00106$:
                                   1545 ;	../UI_Manager/ui.c:437: set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
      000C73 75 65 01         [24] 1546 	mov	_set_runtime_data_PARM_2,#0x01
      000C76 75 66 00         [24] 1547 	mov	_set_runtime_data_PARM_3,#0x00
      000C79 75 82 02         [24] 1548 	mov	dpl,#0x02
      000C7C 12 27 FE         [24] 1549 	lcall	_set_runtime_data
                                   1550 ;	../UI_Manager/ui.c:438: changed = 0xFF;
      000C7F 75 0A FF         [24] 1551 	mov	_changed,#0xff
                                   1552 ;	../UI_Manager/ui.c:439: break;
                                   1553 ;	../UI_Manager/ui.c:441: case BUTTON_DOWN:
      000C82 22               [24] 1554 	ret
      000C83                       1555 00108$:
                                   1556 ;	../UI_Manager/ui.c:442: set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
      000C83 75 65 02         [24] 1557 	mov	_set_runtime_data_PARM_2,#0x02
      000C86 75 66 00         [24] 1558 	mov	_set_runtime_data_PARM_3,#0x00
      000C89 75 82 02         [24] 1559 	mov	dpl,#0x02
      000C8C 12 27 FE         [24] 1560 	lcall	_set_runtime_data
                                   1561 ;	../UI_Manager/ui.c:443: changed = 0xFF;  
      000C8F 75 0A FF         [24] 1562 	mov	_changed,#0xff
                                   1563 ;	../UI_Manager/ui.c:444: break;
                                   1564 ;	../UI_Manager/ui.c:445: case BUTTON_FUNCTION:
      000C92 22               [24] 1565 	ret
      000C93                       1566 00109$:
                                   1567 ;	../UI_Manager/ui.c:446: set_ui_state(INC, NULL);
      000C93 75 17 00         [24] 1568 	mov	_set_ui_state_PARM_2,#0x00
      000C96 75 82 01         [24] 1569 	mov	dpl,#0x01
                                   1570 ;	../UI_Manager/ui.c:447: break;
                                   1571 ;	../UI_Manager/ui.c:448: case BUTTON_FUN_UP:
      000C99 02 13 77         [24] 1572 	ljmp	_set_ui_state
      000C9C                       1573 00110$:
                                   1574 ;	../UI_Manager/ui.c:449: set_ui_state(DEC, NULL);
      000C9C 75 17 00         [24] 1575 	mov	_set_ui_state_PARM_2,#0x00
      000C9F 75 82 02         [24] 1576 	mov	dpl,#0x02
                                   1577 ;	../UI_Manager/ui.c:451: }
                                   1578 ;	../UI_Manager/ui.c:452: }
      000CA2 02 13 77         [24] 1579 	ljmp	_set_ui_state
      000CA5                       1580 00112$:
      000CA5 22               [24] 1581 	ret
                                   1582 ;------------------------------------------------------------
                                   1583 ;Allocation info for local variables in function 'fogDurationPage'
                                   1584 ;------------------------------------------------------------
                                   1585 ;action                    Allocated to registers r7 
                                   1586 ;------------------------------------------------------------
                                   1587 ;	../UI_Manager/ui.c:454: void fogDurationPage(uint8_t action){
                                   1588 ;	-----------------------------------------
                                   1589 ;	 function fogDurationPage
                                   1590 ;	-----------------------------------------
      000CA6                       1591 _fogDurationPage:
      000CA6 AF 82            [24] 1592 	mov	r7,dpl
                                   1593 ;	../UI_Manager/ui.c:456: if(Changed){
      000CA8 E5 09            [12] 1594 	mov	a,_Changed
      000CAA 60 3A            [24] 1595 	jz	00102$
                                   1596 ;	../UI_Manager/ui.c:457: Changed = 0x00;
      000CAC 75 09 00         [24] 1597 	mov	_Changed,#0x00
                                   1598 ;	../UI_Manager/ui.c:458: changed = 0xFF;
      000CAF 75 0A FF         [24] 1599 	mov	_changed,#0xff
                                   1600 ;	../UI_Manager/ui.c:460: exe_command(CLEAR_DISPLAY);
      000CB2 90 80 00         [24] 1601 	mov	dptr,#0x8000
      000CB5 C0 07            [24] 1602 	push	ar7
      000CB7 12 1A B6         [24] 1603 	lcall	_exe_command
                                   1604 ;	../UI_Manager/ui.c:462: write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
      000CBA 75 21 0D         [24] 1605 	mov	_write_string_PARM_2,#0x0d
      000CBD 75 22 02         [24] 1606 	mov	_write_string_PARM_3,#0x02
      000CC0 75 23 00         [24] 1607 	mov	_write_string_PARM_4,#0x00
      000CC3 75 24 00         [24] 1608 	mov	_write_string_PARM_5,#0x00
      000CC6 90 2F 09         [24] 1609 	mov	dptr,#___str_17
      000CC9 75 F0 80         [24] 1610 	mov	b,#0x80
      000CCC 12 18 63         [24] 1611 	lcall	_write_string
                                   1612 ;	../UI_Manager/ui.c:463: write_string("Seconds", sizeof("Seconds"), 8, LINE_1, NOT_SELECTED);
      000CCF 75 21 08         [24] 1613 	mov	_write_string_PARM_2,#0x08
      000CD2 75 22 08         [24] 1614 	mov	_write_string_PARM_3,#0x08
      000CD5 75 23 01         [24] 1615 	mov	_write_string_PARM_4,#0x01
      000CD8 75 24 00         [24] 1616 	mov	_write_string_PARM_5,#0x00
      000CDB 90 2F 01         [24] 1617 	mov	dptr,#___str_16
      000CDE 75 F0 80         [24] 1618 	mov	b,#0x80
      000CE1 12 18 63         [24] 1619 	lcall	_write_string
      000CE4 D0 07            [24] 1620 	pop	ar7
      000CE6                       1621 00102$:
                                   1622 ;	../UI_Manager/ui.c:467: if(changed){
      000CE6 E5 0A            [12] 1623 	mov	a,_changed
      000CE8 60 20            [24] 1624 	jz	00104$
                                   1625 ;	../UI_Manager/ui.c:468: changed = 0x00;
      000CEA 75 0A 00         [24] 1626 	mov	_changed,#0x00
                                   1627 ;	../UI_Manager/ui.c:470: write_number(get_runtime_data(FOG_DURATION_INDEX), 4, LINE_1, NOT_SELECTED);
      000CED 75 82 01         [24] 1628 	mov	dpl,#0x01
      000CF0 C0 07            [24] 1629 	push	ar7
      000CF2 12 27 6A         [24] 1630 	lcall	_get_runtime_data
      000CF5 AE 82            [24] 1631 	mov	r6,dpl
      000CF7 7D 00            [12] 1632 	mov	r5,#0x00
      000CF9 75 25 04         [24] 1633 	mov	_write_number_PARM_2,#0x04
      000CFC 75 26 01         [24] 1634 	mov	_write_number_PARM_3,#0x01
                                   1635 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000CFF 8D 27            [24] 1636 	mov	_write_number_PARM_4,r5
      000D01 8E 82            [24] 1637 	mov	dpl,r6
      000D03 8D 83            [24] 1638 	mov	dph,r5
      000D05 12 19 27         [24] 1639 	lcall	_write_number
      000D08 D0 07            [24] 1640 	pop	ar7
      000D0A                       1641 00104$:
                                   1642 ;	../UI_Manager/ui.c:474: switch (action)
      000D0A BF 02 02         [24] 1643 	cjne	r7,#0x02,00148$
      000D0D 80 39            [24] 1644 	sjmp	00109$
      000D0F                       1645 00148$:
      000D0F BF 03 02         [24] 1646 	cjne	r7,#0x03,00149$
      000D12 80 14            [24] 1647 	sjmp	00106$
      000D14                       1648 00149$:
      000D14 BF 0A 02         [24] 1649 	cjne	r7,#0x0a,00150$
      000D17 80 1F            [24] 1650 	sjmp	00108$
      000D19                       1651 00150$:
      000D19 BF 0C 02         [24] 1652 	cjne	r7,#0x0c,00151$
      000D1C 80 33            [24] 1653 	sjmp	00110$
      000D1E                       1654 00151$:
      000D1E BF 1F 02         [24] 1655 	cjne	r7,#0x1f,00152$
      000D21 80 05            [24] 1656 	sjmp	00106$
      000D23                       1657 00152$:
                                   1658 ;	../UI_Manager/ui.c:477: case BUTTON_UP:
      000D23 BF 65 34         [24] 1659 	cjne	r7,#0x65,00112$
      000D26 80 10            [24] 1660 	sjmp	00108$
      000D28                       1661 00106$:
                                   1662 ;	../UI_Manager/ui.c:478: set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
      000D28 75 65 01         [24] 1663 	mov	_set_runtime_data_PARM_2,#0x01
      000D2B 75 66 00         [24] 1664 	mov	_set_runtime_data_PARM_3,#0x00
      000D2E 75 82 01         [24] 1665 	mov	dpl,#0x01
      000D31 12 27 FE         [24] 1666 	lcall	_set_runtime_data
                                   1667 ;	../UI_Manager/ui.c:479: changed = 0xFF;
      000D34 75 0A FF         [24] 1668 	mov	_changed,#0xff
                                   1669 ;	../UI_Manager/ui.c:480: break;
                                   1670 ;	../UI_Manager/ui.c:482: case BUTTON_DOWN:
      000D37 22               [24] 1671 	ret
      000D38                       1672 00108$:
                                   1673 ;	../UI_Manager/ui.c:483: set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
      000D38 75 65 02         [24] 1674 	mov	_set_runtime_data_PARM_2,#0x02
      000D3B 75 66 00         [24] 1675 	mov	_set_runtime_data_PARM_3,#0x00
      000D3E 75 82 01         [24] 1676 	mov	dpl,#0x01
      000D41 12 27 FE         [24] 1677 	lcall	_set_runtime_data
                                   1678 ;	../UI_Manager/ui.c:484: changed = 0xFF;  
      000D44 75 0A FF         [24] 1679 	mov	_changed,#0xff
                                   1680 ;	../UI_Manager/ui.c:485: break;
                                   1681 ;	../UI_Manager/ui.c:486: case BUTTON_FUNCTION:
      000D47 22               [24] 1682 	ret
      000D48                       1683 00109$:
                                   1684 ;	../UI_Manager/ui.c:487: set_ui_state(INC, NULL);
      000D48 75 17 00         [24] 1685 	mov	_set_ui_state_PARM_2,#0x00
      000D4B 75 82 01         [24] 1686 	mov	dpl,#0x01
                                   1687 ;	../UI_Manager/ui.c:488: break;
                                   1688 ;	../UI_Manager/ui.c:489: case BUTTON_FUN_UP:
      000D4E 02 13 77         [24] 1689 	ljmp	_set_ui_state
      000D51                       1690 00110$:
                                   1691 ;	../UI_Manager/ui.c:490: set_ui_state(DEC, NULL);
      000D51 75 17 00         [24] 1692 	mov	_set_ui_state_PARM_2,#0x00
      000D54 75 82 02         [24] 1693 	mov	dpl,#0x02
                                   1694 ;	../UI_Manager/ui.c:492: }
                                   1695 ;	../UI_Manager/ui.c:493: }
      000D57 02 13 77         [24] 1696 	ljmp	_set_ui_state
      000D5A                       1697 00112$:
      000D5A 22               [24] 1698 	ret
                                   1699 ;------------------------------------------------------------
                                   1700 ;Allocation info for local variables in function 'macroPage'
                                   1701 ;------------------------------------------------------------
                                   1702 ;action                    Allocated to registers r7 
                                   1703 ;------------------------------------------------------------
                                   1704 ;	../UI_Manager/ui.c:495: void macroPage(uint8_t action){
                                   1705 ;	-----------------------------------------
                                   1706 ;	 function macroPage
                                   1707 ;	-----------------------------------------
      000D5B                       1708 _macroPage:
      000D5B AF 82            [24] 1709 	mov	r7,dpl
                                   1710 ;	../UI_Manager/ui.c:497: if(Changed){
      000D5D E5 09            [12] 1711 	mov	a,_Changed
      000D5F 60 25            [24] 1712 	jz	00102$
                                   1713 ;	../UI_Manager/ui.c:498: Changed = 0x00;
      000D61 75 09 00         [24] 1714 	mov	_Changed,#0x00
                                   1715 ;	../UI_Manager/ui.c:499: changed = 0xFF;
      000D64 75 0A FF         [24] 1716 	mov	_changed,#0xff
                                   1717 ;	../UI_Manager/ui.c:501: exe_command(CLEAR_DISPLAY);
      000D67 90 80 00         [24] 1718 	mov	dptr,#0x8000
      000D6A C0 07            [24] 1719 	push	ar7
      000D6C 12 1A B6         [24] 1720 	lcall	_exe_command
                                   1721 ;	../UI_Manager/ui.c:503: write_string("Macros", sizeof("Macros"), 6, LINE_0, NOT_SELECTED);
      000D6F 75 21 07         [24] 1722 	mov	_write_string_PARM_2,#0x07
      000D72 75 22 06         [24] 1723 	mov	_write_string_PARM_3,#0x06
      000D75 75 23 00         [24] 1724 	mov	_write_string_PARM_4,#0x00
      000D78 75 24 00         [24] 1725 	mov	_write_string_PARM_5,#0x00
      000D7B 90 2F 16         [24] 1726 	mov	dptr,#___str_18
      000D7E 75 F0 80         [24] 1727 	mov	b,#0x80
      000D81 12 18 63         [24] 1728 	lcall	_write_string
      000D84 D0 07            [24] 1729 	pop	ar7
      000D86                       1730 00102$:
                                   1731 ;	../UI_Manager/ui.c:507: if(changed){
      000D86 E5 0A            [12] 1732 	mov	a,_changed
      000D88 60 32            [24] 1733 	jz	00104$
                                   1734 ;	../UI_Manager/ui.c:508: changed = 0x00;
      000D8A 75 0A 00         [24] 1735 	mov	_changed,#0x00
                                   1736 ;	../UI_Manager/ui.c:510: write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000D8D 75 82 03         [24] 1737 	mov	dpl,#0x03
      000D90 C0 07            [24] 1738 	push	ar7
      000D92 12 27 6A         [24] 1739 	lcall	_get_runtime_data
      000D95 AE 82            [24] 1740 	mov	r6,dpl
      000D97 74 14            [12] 1741 	mov	a,#0x14
      000D99 2E               [12] 1742 	add	a,r6
      000D9A F5 82            [12] 1743 	mov	dpl,a
      000D9C 12 14 19         [24] 1744 	lcall	_getString
      000D9F AC 82            [24] 1745 	mov	r4,dpl
      000DA1 AD 83            [24] 1746 	mov	r5,dph
      000DA3 AE F0            [24] 1747 	mov	r6,b
      000DA5 75 21 10         [24] 1748 	mov	_write_string_PARM_2,#0x10
      000DA8 75 22 03         [24] 1749 	mov	_write_string_PARM_3,#0x03
      000DAB 75 23 01         [24] 1750 	mov	_write_string_PARM_4,#0x01
      000DAE 75 24 00         [24] 1751 	mov	_write_string_PARM_5,#0x00
      000DB1 8C 82            [24] 1752 	mov	dpl,r4
      000DB3 8D 83            [24] 1753 	mov	dph,r5
      000DB5 8E F0            [24] 1754 	mov	b,r6
      000DB7 12 18 63         [24] 1755 	lcall	_write_string
      000DBA D0 07            [24] 1756 	pop	ar7
      000DBC                       1757 00104$:
                                   1758 ;	../UI_Manager/ui.c:514: switch (action)
      000DBC BF 02 02         [24] 1759 	cjne	r7,#0x02,00148$
      000DBF 80 39            [24] 1760 	sjmp	00109$
      000DC1                       1761 00148$:
      000DC1 BF 03 02         [24] 1762 	cjne	r7,#0x03,00149$
      000DC4 80 14            [24] 1763 	sjmp	00106$
      000DC6                       1764 00149$:
      000DC6 BF 0A 02         [24] 1765 	cjne	r7,#0x0a,00150$
      000DC9 80 1F            [24] 1766 	sjmp	00108$
      000DCB                       1767 00150$:
      000DCB BF 0C 02         [24] 1768 	cjne	r7,#0x0c,00151$
      000DCE 80 33            [24] 1769 	sjmp	00110$
      000DD0                       1770 00151$:
      000DD0 BF 1F 02         [24] 1771 	cjne	r7,#0x1f,00152$
      000DD3 80 05            [24] 1772 	sjmp	00106$
      000DD5                       1773 00152$:
                                   1774 ;	../UI_Manager/ui.c:517: case BUTTON_UP:
      000DD5 BF 65 34         [24] 1775 	cjne	r7,#0x65,00112$
      000DD8 80 10            [24] 1776 	sjmp	00108$
      000DDA                       1777 00106$:
                                   1778 ;	../UI_Manager/ui.c:518: set_runtime_data(MACRO_INDEX, INC, NULL);
      000DDA 75 65 01         [24] 1779 	mov	_set_runtime_data_PARM_2,#0x01
      000DDD 75 66 00         [24] 1780 	mov	_set_runtime_data_PARM_3,#0x00
      000DE0 75 82 03         [24] 1781 	mov	dpl,#0x03
      000DE3 12 27 FE         [24] 1782 	lcall	_set_runtime_data
                                   1783 ;	../UI_Manager/ui.c:519: changed = 0xFF;
      000DE6 75 0A FF         [24] 1784 	mov	_changed,#0xff
                                   1785 ;	../UI_Manager/ui.c:520: break;
                                   1786 ;	../UI_Manager/ui.c:522: case BUTTON_DOWN:
      000DE9 22               [24] 1787 	ret
      000DEA                       1788 00108$:
                                   1789 ;	../UI_Manager/ui.c:523: set_runtime_data(MACRO_INDEX, DEC, NULL);
      000DEA 75 65 02         [24] 1790 	mov	_set_runtime_data_PARM_2,#0x02
      000DED 75 66 00         [24] 1791 	mov	_set_runtime_data_PARM_3,#0x00
      000DF0 75 82 03         [24] 1792 	mov	dpl,#0x03
      000DF3 12 27 FE         [24] 1793 	lcall	_set_runtime_data
                                   1794 ;	../UI_Manager/ui.c:524: changed = 0xFF;  
      000DF6 75 0A FF         [24] 1795 	mov	_changed,#0xff
                                   1796 ;	../UI_Manager/ui.c:525: break;
                                   1797 ;	../UI_Manager/ui.c:526: case BUTTON_FUNCTION:
      000DF9 22               [24] 1798 	ret
      000DFA                       1799 00109$:
                                   1800 ;	../UI_Manager/ui.c:527: set_ui_state(INC, NULL);
      000DFA 75 17 00         [24] 1801 	mov	_set_ui_state_PARM_2,#0x00
      000DFD 75 82 01         [24] 1802 	mov	dpl,#0x01
                                   1803 ;	../UI_Manager/ui.c:528: break;
                                   1804 ;	../UI_Manager/ui.c:529: case BUTTON_FUN_UP:
      000E00 02 13 77         [24] 1805 	ljmp	_set_ui_state
      000E03                       1806 00110$:
                                   1807 ;	../UI_Manager/ui.c:530: set_ui_state(DEC, NULL);
      000E03 75 17 00         [24] 1808 	mov	_set_ui_state_PARM_2,#0x00
      000E06 75 82 02         [24] 1809 	mov	dpl,#0x02
                                   1810 ;	../UI_Manager/ui.c:532: }
                                   1811 ;	../UI_Manager/ui.c:533: }
      000E09 02 13 77         [24] 1812 	ljmp	_set_ui_state
      000E0C                       1813 00112$:
      000E0C 22               [24] 1814 	ret
                                   1815 ;------------------------------------------------------------
                                   1816 ;Allocation info for local variables in function 'macroSpeedPage'
                                   1817 ;------------------------------------------------------------
                                   1818 ;action                    Allocated to registers r7 
                                   1819 ;------------------------------------------------------------
                                   1820 ;	../UI_Manager/ui.c:535: void macroSpeedPage(uint8_t action){
                                   1821 ;	-----------------------------------------
                                   1822 ;	 function macroSpeedPage
                                   1823 ;	-----------------------------------------
      000E0D                       1824 _macroSpeedPage:
      000E0D AF 82            [24] 1825 	mov	r7,dpl
                                   1826 ;	../UI_Manager/ui.c:537: if(Changed){
      000E0F E5 09            [12] 1827 	mov	a,_Changed
      000E11 60 25            [24] 1828 	jz	00102$
                                   1829 ;	../UI_Manager/ui.c:538: Changed = 0x00;
      000E13 75 09 00         [24] 1830 	mov	_Changed,#0x00
                                   1831 ;	../UI_Manager/ui.c:539: changed = 0xFF;
      000E16 75 0A FF         [24] 1832 	mov	_changed,#0xff
                                   1833 ;	../UI_Manager/ui.c:541: exe_command(CLEAR_DISPLAY);
      000E19 90 80 00         [24] 1834 	mov	dptr,#0x8000
      000E1C C0 07            [24] 1835 	push	ar7
      000E1E 12 1A B6         [24] 1836 	lcall	_exe_command
                                   1837 ;	../UI_Manager/ui.c:543: write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);
      000E21 75 21 0C         [24] 1838 	mov	_write_string_PARM_2,#0x0c
      000E24 75 22 03         [24] 1839 	mov	_write_string_PARM_3,#0x03
      000E27 75 23 00         [24] 1840 	mov	_write_string_PARM_4,#0x00
      000E2A 75 24 00         [24] 1841 	mov	_write_string_PARM_5,#0x00
      000E2D 90 2F 1D         [24] 1842 	mov	dptr,#___str_19
      000E30 75 F0 80         [24] 1843 	mov	b,#0x80
      000E33 12 18 63         [24] 1844 	lcall	_write_string
      000E36 D0 07            [24] 1845 	pop	ar7
      000E38                       1846 00102$:
                                   1847 ;	../UI_Manager/ui.c:547: if(changed){
      000E38 E5 0A            [12] 1848 	mov	a,_changed
      000E3A 60 5D            [24] 1849 	jz	00107$
                                   1850 ;	../UI_Manager/ui.c:548: changed = 0x00;
      000E3C 75 0A 00         [24] 1851 	mov	_changed,#0x00
                                   1852 ;	../UI_Manager/ui.c:550: if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
      000E3F 75 82 04         [24] 1853 	mov	dpl,#0x04
      000E42 C0 07            [24] 1854 	push	ar7
      000E44 12 27 6A         [24] 1855 	lcall	_get_runtime_data
      000E47 E5 82            [12] 1856 	mov	a,dpl
      000E49 D0 07            [24] 1857 	pop	ar7
                                   1858 ;	../UI_Manager/ui.c:551: write_string("Off", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E4B 70 1A            [24] 1859 	jnz	00104$
      000E4D 75 21 10         [24] 1860 	mov	_write_string_PARM_2,#0x10
      000E50 75 22 03         [24] 1861 	mov	_write_string_PARM_3,#0x03
      000E53 75 23 01         [24] 1862 	mov	_write_string_PARM_4,#0x01
      000E56 F5 24            [12] 1863 	mov	_write_string_PARM_5,a
      000E58 90 2F 29         [24] 1864 	mov	dptr,#___str_20
      000E5B 75 F0 80         [24] 1865 	mov	b,#0x80
      000E5E C0 07            [24] 1866 	push	ar7
      000E60 12 18 63         [24] 1867 	lcall	_write_string
      000E63 D0 07            [24] 1868 	pop	ar7
      000E65 80 32            [24] 1869 	sjmp	00107$
      000E67                       1870 00104$:
                                   1871 ;	../UI_Manager/ui.c:553: write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
      000E67 75 21 10         [24] 1872 	mov	_write_string_PARM_2,#0x10
      000E6A 75 22 03         [24] 1873 	mov	_write_string_PARM_3,#0x03
      000E6D 75 23 01         [24] 1874 	mov	_write_string_PARM_4,#0x01
      000E70 75 24 00         [24] 1875 	mov	_write_string_PARM_5,#0x00
      000E73 90 2F 2D         [24] 1876 	mov	dptr,#___str_21
      000E76 75 F0 80         [24] 1877 	mov	b,#0x80
      000E79 C0 07            [24] 1878 	push	ar7
      000E7B 12 18 63         [24] 1879 	lcall	_write_string
                                   1880 ;	../UI_Manager/ui.c:554: write_number(get_runtime_data(MACRO_SPEED_INDEX), 6, LINE_1, NOT_SELECTED);
      000E7E 75 82 04         [24] 1881 	mov	dpl,#0x04
      000E81 12 27 6A         [24] 1882 	lcall	_get_runtime_data
      000E84 AE 82            [24] 1883 	mov	r6,dpl
      000E86 7D 00            [12] 1884 	mov	r5,#0x00
      000E88 75 25 06         [24] 1885 	mov	_write_number_PARM_2,#0x06
      000E8B 75 26 01         [24] 1886 	mov	_write_number_PARM_3,#0x01
                                   1887 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000E8E 8D 27            [24] 1888 	mov	_write_number_PARM_4,r5
      000E90 8E 82            [24] 1889 	mov	dpl,r6
      000E92 8D 83            [24] 1890 	mov	dph,r5
      000E94 12 19 27         [24] 1891 	lcall	_write_number
      000E97 D0 07            [24] 1892 	pop	ar7
      000E99                       1893 00107$:
                                   1894 ;	../UI_Manager/ui.c:558: switch (action)
      000E99 BF 02 02         [24] 1895 	cjne	r7,#0x02,00156$
      000E9C 80 39            [24] 1896 	sjmp	00112$
      000E9E                       1897 00156$:
      000E9E BF 03 02         [24] 1898 	cjne	r7,#0x03,00157$
      000EA1 80 14            [24] 1899 	sjmp	00109$
      000EA3                       1900 00157$:
      000EA3 BF 0A 02         [24] 1901 	cjne	r7,#0x0a,00158$
      000EA6 80 1F            [24] 1902 	sjmp	00111$
      000EA8                       1903 00158$:
      000EA8 BF 0C 02         [24] 1904 	cjne	r7,#0x0c,00159$
      000EAB 80 33            [24] 1905 	sjmp	00113$
      000EAD                       1906 00159$:
      000EAD BF 1F 02         [24] 1907 	cjne	r7,#0x1f,00160$
      000EB0 80 05            [24] 1908 	sjmp	00109$
      000EB2                       1909 00160$:
                                   1910 ;	../UI_Manager/ui.c:561: case BUTTON_UP:
      000EB2 BF 65 34         [24] 1911 	cjne	r7,#0x65,00115$
      000EB5 80 10            [24] 1912 	sjmp	00111$
      000EB7                       1913 00109$:
                                   1914 ;	../UI_Manager/ui.c:562: set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
      000EB7 75 65 01         [24] 1915 	mov	_set_runtime_data_PARM_2,#0x01
      000EBA 75 66 00         [24] 1916 	mov	_set_runtime_data_PARM_3,#0x00
      000EBD 75 82 04         [24] 1917 	mov	dpl,#0x04
      000EC0 12 27 FE         [24] 1918 	lcall	_set_runtime_data
                                   1919 ;	../UI_Manager/ui.c:563: changed = 0xFF;
      000EC3 75 0A FF         [24] 1920 	mov	_changed,#0xff
                                   1921 ;	../UI_Manager/ui.c:564: break;
                                   1922 ;	../UI_Manager/ui.c:566: case BUTTON_DOWN:
      000EC6 22               [24] 1923 	ret
      000EC7                       1924 00111$:
                                   1925 ;	../UI_Manager/ui.c:567: set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
      000EC7 75 65 02         [24] 1926 	mov	_set_runtime_data_PARM_2,#0x02
      000ECA 75 66 00         [24] 1927 	mov	_set_runtime_data_PARM_3,#0x00
      000ECD 75 82 04         [24] 1928 	mov	dpl,#0x04
      000ED0 12 27 FE         [24] 1929 	lcall	_set_runtime_data
                                   1930 ;	../UI_Manager/ui.c:568: changed = 0xFF;  
      000ED3 75 0A FF         [24] 1931 	mov	_changed,#0xff
                                   1932 ;	../UI_Manager/ui.c:569: break;
                                   1933 ;	../UI_Manager/ui.c:570: case BUTTON_FUNCTION:
      000ED6 22               [24] 1934 	ret
      000ED7                       1935 00112$:
                                   1936 ;	../UI_Manager/ui.c:571: set_ui_state(INC, NULL);
      000ED7 75 17 00         [24] 1937 	mov	_set_ui_state_PARM_2,#0x00
      000EDA 75 82 01         [24] 1938 	mov	dpl,#0x01
                                   1939 ;	../UI_Manager/ui.c:572: break;
                                   1940 ;	../UI_Manager/ui.c:573: case BUTTON_FUN_UP:
      000EDD 02 13 77         [24] 1941 	ljmp	_set_ui_state
      000EE0                       1942 00113$:
                                   1943 ;	../UI_Manager/ui.c:574: set_ui_state(DEC, NULL);
      000EE0 75 17 00         [24] 1944 	mov	_set_ui_state_PARM_2,#0x00
      000EE3 75 82 02         [24] 1945 	mov	dpl,#0x02
                                   1946 ;	../UI_Manager/ui.c:576: }
                                   1947 ;	../UI_Manager/ui.c:577: }
      000EE6 02 13 77         [24] 1948 	ljmp	_set_ui_state
      000EE9                       1949 00115$:
      000EE9 22               [24] 1950 	ret
                                   1951 ;------------------------------------------------------------
                                   1952 ;Allocation info for local variables in function 'colorPage'
                                   1953 ;------------------------------------------------------------
                                   1954 ;action                    Allocated to registers r7 
                                   1955 ;index                     Allocated to registers r6 
                                   1956 ;------------------------------------------------------------
                                   1957 ;	../UI_Manager/ui.c:579: void colorPage(uint8_t action){
                                   1958 ;	-----------------------------------------
                                   1959 ;	 function colorPage
                                   1960 ;	-----------------------------------------
      000EEA                       1961 _colorPage:
      000EEA AF 82            [24] 1962 	mov	r7,dpl
                                   1963 ;	../UI_Manager/ui.c:580: uint8_t index = 0;
      000EEC 7E 00            [12] 1964 	mov	r6,#0x00
                                   1965 ;	../UI_Manager/ui.c:582: switch (State)
      000EEE AD 08            [24] 1966 	mov	r5,_State
      000EF0 BD 06 02         [24] 1967 	cjne	r5,#0x06,00174$
      000EF3 80 0F            [24] 1968 	sjmp	00101$
      000EF5                       1969 00174$:
      000EF5 BD 07 02         [24] 1970 	cjne	r5,#0x07,00175$
      000EF8 80 12            [24] 1971 	sjmp	00103$
      000EFA                       1972 00175$:
      000EFA BD 08 02         [24] 1973 	cjne	r5,#0x08,00176$
      000EFD 80 09            [24] 1974 	sjmp	00102$
      000EFF                       1975 00176$:
                                   1976 ;	../UI_Manager/ui.c:584: case MANUAL_RED_STATE:
      000EFF BD 09 10         [24] 1977 	cjne	r5,#0x09,00105$
      000F02 80 0C            [24] 1978 	sjmp	00104$
      000F04                       1979 00101$:
                                   1980 ;	../UI_Manager/ui.c:585: index = RED_INDEX;
      000F04 7E 05            [12] 1981 	mov	r6,#0x05
                                   1982 ;	../UI_Manager/ui.c:586: break;
                                   1983 ;	../UI_Manager/ui.c:587: case MANUAL_GREEN_STATE:
      000F06 80 0A            [24] 1984 	sjmp	00105$
      000F08                       1985 00102$:
                                   1986 ;	../UI_Manager/ui.c:588: index = GREEN_INDEX;
      000F08 7E 06            [12] 1987 	mov	r6,#0x06
                                   1988 ;	../UI_Manager/ui.c:589: break;
                                   1989 ;	../UI_Manager/ui.c:590: case MANUAL_BLUE_STATE:
      000F0A 80 06            [24] 1990 	sjmp	00105$
      000F0C                       1991 00103$:
                                   1992 ;	../UI_Manager/ui.c:591: index = BLUE_INDEX;
      000F0C 7E 07            [12] 1993 	mov	r6,#0x07
                                   1994 ;	../UI_Manager/ui.c:592: break;
                                   1995 ;	../UI_Manager/ui.c:593: case MANUAL_STROBE_STATE:
      000F0E 80 02            [24] 1996 	sjmp	00105$
      000F10                       1997 00104$:
                                   1998 ;	../UI_Manager/ui.c:594: index = STROBE_INDEX;
      000F10 7E 08            [12] 1999 	mov	r6,#0x08
                                   2000 ;	../UI_Manager/ui.c:596: }
      000F12                       2001 00105$:
                                   2002 ;	../UI_Manager/ui.c:598: if(Changed){
      000F12 E5 09            [12] 2003 	mov	a,_Changed
      000F14 60 39            [24] 2004 	jz	00107$
                                   2005 ;	../UI_Manager/ui.c:599: Changed = 0x00;
      000F16 75 09 00         [24] 2006 	mov	_Changed,#0x00
                                   2007 ;	../UI_Manager/ui.c:600: changed = 0xFF;
      000F19 75 0A FF         [24] 2008 	mov	_changed,#0xff
                                   2009 ;	../UI_Manager/ui.c:602: exe_command(CLEAR_DISPLAY);
      000F1C 90 80 00         [24] 2010 	mov	dptr,#0x8000
      000F1F C0 07            [24] 2011 	push	ar7
      000F21 C0 06            [24] 2012 	push	ar6
      000F23 12 1A B6         [24] 2013 	lcall	_exe_command
                                   2014 ;	../UI_Manager/ui.c:604: write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);
      000F26 AD 08            [24] 2015 	mov	r5,_State
      000F28 74 C8            [12] 2016 	mov	a,#0xc8
      000F2A 2D               [12] 2017 	add	a,r5
      000F2B F5 82            [12] 2018 	mov	dpl,a
      000F2D 12 14 19         [24] 2019 	lcall	_getString
      000F30 AB 82            [24] 2020 	mov	r3,dpl
      000F32 AC 83            [24] 2021 	mov	r4,dph
      000F34 AD F0            [24] 2022 	mov	r5,b
      000F36 75 21 10         [24] 2023 	mov	_write_string_PARM_2,#0x10
      000F39 75 22 03         [24] 2024 	mov	_write_string_PARM_3,#0x03
      000F3C 75 23 00         [24] 2025 	mov	_write_string_PARM_4,#0x00
      000F3F 75 24 00         [24] 2026 	mov	_write_string_PARM_5,#0x00
      000F42 8B 82            [24] 2027 	mov	dpl,r3
      000F44 8C 83            [24] 2028 	mov	dph,r4
      000F46 8D F0            [24] 2029 	mov	b,r5
      000F48 12 18 63         [24] 2030 	lcall	_write_string
      000F4B D0 06            [24] 2031 	pop	ar6
      000F4D D0 07            [24] 2032 	pop	ar7
      000F4F                       2033 00107$:
                                   2034 ;	../UI_Manager/ui.c:608: if(changed){
      000F4F E5 0A            [12] 2035 	mov	a,_changed
      000F51 60 6E            [24] 2036 	jz	00112$
                                   2037 ;	../UI_Manager/ui.c:609: changed = 0x00;
      000F53 75 0A 00         [24] 2038 	mov	_changed,#0x00
                                   2039 ;	../UI_Manager/ui.c:611: if(get_runtime_data(get_runtime_data(index)) == 0){
      000F56 8E 82            [24] 2040 	mov	dpl,r6
      000F58 C0 07            [24] 2041 	push	ar7
      000F5A C0 06            [24] 2042 	push	ar6
      000F5C 12 27 6A         [24] 2043 	lcall	_get_runtime_data
      000F5F 12 27 6A         [24] 2044 	lcall	_get_runtime_data
      000F62 E5 82            [12] 2045 	mov	a,dpl
      000F64 D0 06            [24] 2046 	pop	ar6
      000F66 D0 07            [24] 2047 	pop	ar7
                                   2048 ;	../UI_Manager/ui.c:612: write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      000F68 70 1E            [24] 2049 	jnz	00109$
      000F6A 75 21 10         [24] 2050 	mov	_write_string_PARM_2,#0x10
      000F6D 75 22 06         [24] 2051 	mov	_write_string_PARM_3,#0x06
      000F70 75 23 01         [24] 2052 	mov	_write_string_PARM_4,#0x01
      000F73 F5 24            [12] 2053 	mov	_write_string_PARM_5,a
      000F75 90 2F 29         [24] 2054 	mov	dptr,#___str_20
      000F78 75 F0 80         [24] 2055 	mov	b,#0x80
      000F7B C0 07            [24] 2056 	push	ar7
      000F7D C0 06            [24] 2057 	push	ar6
      000F7F 12 18 63         [24] 2058 	lcall	_write_string
      000F82 D0 06            [24] 2059 	pop	ar6
      000F84 D0 07            [24] 2060 	pop	ar7
      000F86 80 39            [24] 2061 	sjmp	00112$
      000F88                       2062 00109$:
                                   2063 ;	../UI_Manager/ui.c:614: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
      000F88 75 21 10         [24] 2064 	mov	_write_string_PARM_2,#0x10
      000F8B 75 22 00         [24] 2065 	mov	_write_string_PARM_3,#0x00
      000F8E 75 23 01         [24] 2066 	mov	_write_string_PARM_4,#0x01
      000F91 75 24 00         [24] 2067 	mov	_write_string_PARM_5,#0x00
      000F94 90 2F 2D         [24] 2068 	mov	dptr,#___str_21
      000F97 75 F0 80         [24] 2069 	mov	b,#0x80
      000F9A C0 07            [24] 2070 	push	ar7
      000F9C C0 06            [24] 2071 	push	ar6
      000F9E 12 18 63         [24] 2072 	lcall	_write_string
      000FA1 D0 06            [24] 2073 	pop	ar6
                                   2074 ;	../UI_Manager/ui.c:615: write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
      000FA3 8E 82            [24] 2075 	mov	dpl,r6
      000FA5 C0 06            [24] 2076 	push	ar6
      000FA7 12 27 6A         [24] 2077 	lcall	_get_runtime_data
      000FAA AD 82            [24] 2078 	mov	r5,dpl
      000FAC 7C 00            [12] 2079 	mov	r4,#0x00
      000FAE 75 25 06         [24] 2080 	mov	_write_number_PARM_2,#0x06
      000FB1 75 26 01         [24] 2081 	mov	_write_number_PARM_3,#0x01
                                   2082 ;	1-genFromRTrack replaced	mov	_write_number_PARM_4,#0x00
      000FB4 8C 27            [24] 2083 	mov	_write_number_PARM_4,r4
      000FB6 8D 82            [24] 2084 	mov	dpl,r5
      000FB8 8C 83            [24] 2085 	mov	dph,r4
      000FBA 12 19 27         [24] 2086 	lcall	_write_number
      000FBD D0 06            [24] 2087 	pop	ar6
      000FBF D0 07            [24] 2088 	pop	ar7
      000FC1                       2089 00112$:
                                   2090 ;	../UI_Manager/ui.c:619: switch (action)
      000FC1 BF 02 02         [24] 2091 	cjne	r7,#0x02,00181$
      000FC4 80 37            [24] 2092 	sjmp	00117$
      000FC6                       2093 00181$:
      000FC6 BF 03 02         [24] 2094 	cjne	r7,#0x03,00182$
      000FC9 80 14            [24] 2095 	sjmp	00114$
      000FCB                       2096 00182$:
      000FCB BF 0A 02         [24] 2097 	cjne	r7,#0x0a,00183$
      000FCE 80 1E            [24] 2098 	sjmp	00116$
      000FD0                       2099 00183$:
      000FD0 BF 0C 02         [24] 2100 	cjne	r7,#0x0c,00184$
      000FD3 80 31            [24] 2101 	sjmp	00118$
      000FD5                       2102 00184$:
      000FD5 BF 1F 02         [24] 2103 	cjne	r7,#0x1f,00185$
      000FD8 80 05            [24] 2104 	sjmp	00114$
      000FDA                       2105 00185$:
                                   2106 ;	../UI_Manager/ui.c:622: case BUTTON_UP:
      000FDA BF 65 32         [24] 2107 	cjne	r7,#0x65,00120$
      000FDD 80 0F            [24] 2108 	sjmp	00116$
      000FDF                       2109 00114$:
                                   2110 ;	../UI_Manager/ui.c:623: set_runtime_data(index, INC, NULL);
      000FDF 75 65 01         [24] 2111 	mov	_set_runtime_data_PARM_2,#0x01
      000FE2 75 66 00         [24] 2112 	mov	_set_runtime_data_PARM_3,#0x00
      000FE5 8E 82            [24] 2113 	mov	dpl,r6
      000FE7 12 27 FE         [24] 2114 	lcall	_set_runtime_data
                                   2115 ;	../UI_Manager/ui.c:624: changed = 0xFF;
      000FEA 75 0A FF         [24] 2116 	mov	_changed,#0xff
                                   2117 ;	../UI_Manager/ui.c:625: break;
                                   2118 ;	../UI_Manager/ui.c:627: case BUTTON_DOWN:
      000FED 22               [24] 2119 	ret
      000FEE                       2120 00116$:
                                   2121 ;	../UI_Manager/ui.c:628: set_runtime_data(index, DEC, NULL);
      000FEE 75 65 02         [24] 2122 	mov	_set_runtime_data_PARM_2,#0x02
      000FF1 75 66 00         [24] 2123 	mov	_set_runtime_data_PARM_3,#0x00
      000FF4 8E 82            [24] 2124 	mov	dpl,r6
      000FF6 12 27 FE         [24] 2125 	lcall	_set_runtime_data
                                   2126 ;	../UI_Manager/ui.c:629: changed = 0xFF;  
      000FF9 75 0A FF         [24] 2127 	mov	_changed,#0xff
                                   2128 ;	../UI_Manager/ui.c:630: break;
                                   2129 ;	../UI_Manager/ui.c:631: case BUTTON_FUNCTION:
      000FFC 22               [24] 2130 	ret
      000FFD                       2131 00117$:
                                   2132 ;	../UI_Manager/ui.c:632: set_ui_state(INC, NULL);
      000FFD 75 17 00         [24] 2133 	mov	_set_ui_state_PARM_2,#0x00
      001000 75 82 01         [24] 2134 	mov	dpl,#0x01
                                   2135 ;	../UI_Manager/ui.c:633: break;
                                   2136 ;	../UI_Manager/ui.c:634: case BUTTON_FUN_UP:
      001003 02 13 77         [24] 2137 	ljmp	_set_ui_state
      001006                       2138 00118$:
                                   2139 ;	../UI_Manager/ui.c:635: set_ui_state(DEC, NULL);
      001006 75 17 00         [24] 2140 	mov	_set_ui_state_PARM_2,#0x00
      001009 75 82 02         [24] 2141 	mov	dpl,#0x02
                                   2142 ;	../UI_Manager/ui.c:637: }
                                   2143 ;	../UI_Manager/ui.c:638: }
      00100C 02 13 77         [24] 2144 	ljmp	_set_ui_state
      00100F                       2145 00120$:
      00100F 22               [24] 2146 	ret
                                   2147 ;------------------------------------------------------------
                                   2148 ;Allocation info for local variables in function 'remotePage'
                                   2149 ;------------------------------------------------------------
                                   2150 ;action                    Allocated to registers r7 
                                   2151 ;remoteNumber              Allocated to registers r6 
                                   2152 ;index                     Allocated to registers r5 
                                   2153 ;------------------------------------------------------------
                                   2154 ;	../UI_Manager/ui.c:640: void remotePage(uint8_t action){
                                   2155 ;	-----------------------------------------
                                   2156 ;	 function remotePage
                                   2157 ;	-----------------------------------------
      001010                       2158 _remotePage:
      001010 AF 82            [24] 2159 	mov	r7,dpl
                                   2160 ;	../UI_Manager/ui.c:641: uint8_t remoteNumber = MANUAL_REMOTE_ACTION_6_STATE - State + 4;
      001012 AE 08            [24] 2161 	mov	r6,_State
      001014 74 10            [12] 2162 	mov	a,#0x10
      001016 C3               [12] 2163 	clr	c
      001017 9E               [12] 2164 	subb	a,r6
      001018 FE               [12] 2165 	mov	r6,a
                                   2166 ;	../UI_Manager/ui.c:642: uint8_t index = 0;
      001019 7D 00            [12] 2167 	mov	r5,#0x00
                                   2168 ;	../UI_Manager/ui.c:644: switch (State)
      00101B AC 08            [24] 2169 	mov	r4,_State
      00101D BC 0A 02         [24] 2170 	cjne	r4,#0x0a,00168$
      001020 80 0A            [24] 2171 	sjmp	00101$
      001022                       2172 00168$:
      001022 BC 0B 02         [24] 2173 	cjne	r4,#0x0b,00169$
      001025 80 09            [24] 2174 	sjmp	00102$
      001027                       2175 00169$:
                                   2176 ;	../UI_Manager/ui.c:646: case MANUAL_REMOTE_ACTION_4_STATE:
      001027 BC 0C 0C         [24] 2177 	cjne	r4,#0x0c,00104$
      00102A 80 08            [24] 2178 	sjmp	00103$
      00102C                       2179 00101$:
                                   2180 ;	../UI_Manager/ui.c:647: index = R4_INDEX;
      00102C 7D 09            [12] 2181 	mov	r5,#0x09
                                   2182 ;	../UI_Manager/ui.c:648: break;
                                   2183 ;	../UI_Manager/ui.c:649: case MANUAL_REMOTE_ACTION_5_STATE:
      00102E 80 06            [24] 2184 	sjmp	00104$
      001030                       2185 00102$:
                                   2186 ;	../UI_Manager/ui.c:650: index = R5_INDEX;
      001030 7D 0A            [12] 2187 	mov	r5,#0x0a
                                   2188 ;	../UI_Manager/ui.c:651: break;
                                   2189 ;	../UI_Manager/ui.c:652: case MANUAL_REMOTE_ACTION_6_STATE:
      001032 80 02            [24] 2190 	sjmp	00104$
      001034                       2191 00103$:
                                   2192 ;	../UI_Manager/ui.c:653: index = R6_INDEX;
      001034 7D 0B            [12] 2193 	mov	r5,#0x0b
                                   2194 ;	../UI_Manager/ui.c:655: }
      001036                       2195 00104$:
                                   2196 ;	../UI_Manager/ui.c:657: if(Changed){
      001036 E5 09            [12] 2197 	mov	a,_Changed
      001038 60 7C            [24] 2198 	jz	00110$
                                   2199 ;	../UI_Manager/ui.c:658: Changed = 0x00;
      00103A 75 09 00         [24] 2200 	mov	_Changed,#0x00
                                   2201 ;	../UI_Manager/ui.c:659: changed = 0xFF;
      00103D 75 0A FF         [24] 2202 	mov	_changed,#0xff
                                   2203 ;	../UI_Manager/ui.c:661: exe_command(CLEAR_DISPLAY);
      001040 90 80 00         [24] 2204 	mov	dptr,#0x8000
      001043 C0 07            [24] 2205 	push	ar7
      001045 C0 06            [24] 2206 	push	ar6
      001047 C0 05            [24] 2207 	push	ar5
      001049 12 1A B6         [24] 2208 	lcall	_exe_command
                                   2209 ;	../UI_Manager/ui.c:663: write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
      00104C 75 21 10         [24] 2210 	mov	_write_string_PARM_2,#0x10
      00104F 75 22 01         [24] 2211 	mov	_write_string_PARM_3,#0x01
      001052 75 23 00         [24] 2212 	mov	_write_string_PARM_4,#0x00
      001055 75 24 00         [24] 2213 	mov	_write_string_PARM_5,#0x00
      001058 90 2F 2E         [24] 2214 	mov	dptr,#___str_22
      00105B 75 F0 80         [24] 2215 	mov	b,#0x80
      00105E 12 18 63         [24] 2216 	lcall	_write_string
      001061 D0 05            [24] 2217 	pop	ar5
      001063 D0 06            [24] 2218 	pop	ar6
      001065 D0 07            [24] 2219 	pop	ar7
                                   2220 ;	../UI_Manager/ui.c:664: switch (remoteNumber)
      001067 BE 04 02         [24] 2221 	cjne	r6,#0x04,00172$
      00106A 80 0A            [24] 2222 	sjmp	00105$
      00106C                       2223 00172$:
      00106C BE 05 02         [24] 2224 	cjne	r6,#0x05,00173$
      00106F 80 1B            [24] 2225 	sjmp	00106$
      001071                       2226 00173$:
                                   2227 ;	../UI_Manager/ui.c:666: case 4:
      001071 BE 06 42         [24] 2228 	cjne	r6,#0x06,00110$
      001074 80 2C            [24] 2229 	sjmp	00107$
      001076                       2230 00105$:
                                   2231 ;	../UI_Manager/ui.c:667: write_char(CHAR_4, 8, LINE_0);
      001076 75 2B 08         [24] 2232 	mov	_write_char_PARM_2,#0x08
      001079 75 2C 00         [24] 2233 	mov	_write_char_PARM_3,#0x00
      00107C 75 82 2C         [24] 2234 	mov	dpl,#0x2c
      00107F C0 07            [24] 2235 	push	ar7
      001081 C0 05            [24] 2236 	push	ar5
      001083 12 1A 81         [24] 2237 	lcall	_write_char
      001086 D0 05            [24] 2238 	pop	ar5
      001088 D0 07            [24] 2239 	pop	ar7
                                   2240 ;	../UI_Manager/ui.c:668: break;
                                   2241 ;	../UI_Manager/ui.c:669: case 5:
      00108A 80 2A            [24] 2242 	sjmp	00110$
      00108C                       2243 00106$:
                                   2244 ;	../UI_Manager/ui.c:670: write_char(CHAR_5, 8, LINE_0);
      00108C 75 2B 08         [24] 2245 	mov	_write_char_PARM_2,#0x08
      00108F 75 2C 00         [24] 2246 	mov	_write_char_PARM_3,#0x00
      001092 75 82 AC         [24] 2247 	mov	dpl,#0xac
      001095 C0 07            [24] 2248 	push	ar7
      001097 C0 05            [24] 2249 	push	ar5
      001099 12 1A 81         [24] 2250 	lcall	_write_char
      00109C D0 05            [24] 2251 	pop	ar5
      00109E D0 07            [24] 2252 	pop	ar7
                                   2253 ;	../UI_Manager/ui.c:671: break;
                                   2254 ;	../UI_Manager/ui.c:672: case 6:
      0010A0 80 14            [24] 2255 	sjmp	00110$
      0010A2                       2256 00107$:
                                   2257 ;	../UI_Manager/ui.c:673: write_char(CHAR_6, 8, LINE_0);
      0010A2 75 2B 08         [24] 2258 	mov	_write_char_PARM_2,#0x08
      0010A5 75 2C 00         [24] 2259 	mov	_write_char_PARM_3,#0x00
      0010A8 75 82 6C         [24] 2260 	mov	dpl,#0x6c
      0010AB C0 07            [24] 2261 	push	ar7
      0010AD C0 05            [24] 2262 	push	ar5
      0010AF 12 1A 81         [24] 2263 	lcall	_write_char
      0010B2 D0 05            [24] 2264 	pop	ar5
      0010B4 D0 07            [24] 2265 	pop	ar7
                                   2266 ;	../UI_Manager/ui.c:675: }
      0010B6                       2267 00110$:
                                   2268 ;	../UI_Manager/ui.c:678: if(changed){
      0010B6 E5 0A            [12] 2269 	mov	a,_changed
      0010B8 60 35            [24] 2270 	jz	00112$
                                   2271 ;	../UI_Manager/ui.c:679: changed = 0x00;
      0010BA 75 0A 00         [24] 2272 	mov	_changed,#0x00
                                   2273 ;	../UI_Manager/ui.c:680: write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
      0010BD 8D 82            [24] 2274 	mov	dpl,r5
      0010BF C0 07            [24] 2275 	push	ar7
      0010C1 C0 05            [24] 2276 	push	ar5
      0010C3 12 27 6A         [24] 2277 	lcall	_get_runtime_data
      0010C6 AE 82            [24] 2278 	mov	r6,dpl
      0010C8 74 3C            [12] 2279 	mov	a,#0x3c
      0010CA 2E               [12] 2280 	add	a,r6
      0010CB F5 82            [12] 2281 	mov	dpl,a
      0010CD 12 14 19         [24] 2282 	lcall	_getString
      0010D0 AB 82            [24] 2283 	mov	r3,dpl
      0010D2 AC 83            [24] 2284 	mov	r4,dph
      0010D4 AE F0            [24] 2285 	mov	r6,b
      0010D6 75 21 10         [24] 2286 	mov	_write_string_PARM_2,#0x10
      0010D9 75 22 04         [24] 2287 	mov	_write_string_PARM_3,#0x04
      0010DC 75 23 01         [24] 2288 	mov	_write_string_PARM_4,#0x01
      0010DF 75 24 00         [24] 2289 	mov	_write_string_PARM_5,#0x00
      0010E2 8B 82            [24] 2290 	mov	dpl,r3
      0010E4 8C 83            [24] 2291 	mov	dph,r4
      0010E6 8E F0            [24] 2292 	mov	b,r6
      0010E8 12 18 63         [24] 2293 	lcall	_write_string
      0010EB D0 05            [24] 2294 	pop	ar5
      0010ED D0 07            [24] 2295 	pop	ar7
      0010EF                       2296 00112$:
                                   2297 ;	../UI_Manager/ui.c:683: switch (action)
      0010EF BF 02 02         [24] 2298 	cjne	r7,#0x02,00176$
      0010F2 80 2D            [24] 2299 	sjmp	00115$
      0010F4                       2300 00176$:
      0010F4 BF 03 02         [24] 2301 	cjne	r7,#0x03,00177$
      0010F7 80 0A            [24] 2302 	sjmp	00113$
      0010F9                       2303 00177$:
      0010F9 BF 0A 02         [24] 2304 	cjne	r7,#0x0a,00178$
      0010FC 80 14            [24] 2305 	sjmp	00114$
      0010FE                       2306 00178$:
                                   2307 ;	../UI_Manager/ui.c:685: case BUTTON_UP:
      0010FE BF 0C 32         [24] 2308 	cjne	r7,#0x0c,00118$
      001101 80 27            [24] 2309 	sjmp	00116$
      001103                       2310 00113$:
                                   2311 ;	../UI_Manager/ui.c:686: set_runtime_data(index, INC, NULL);
      001103 75 65 01         [24] 2312 	mov	_set_runtime_data_PARM_2,#0x01
      001106 75 66 00         [24] 2313 	mov	_set_runtime_data_PARM_3,#0x00
      001109 8D 82            [24] 2314 	mov	dpl,r5
      00110B 12 27 FE         [24] 2315 	lcall	_set_runtime_data
                                   2316 ;	../UI_Manager/ui.c:687: changed = 0xFF;
      00110E 75 0A FF         [24] 2317 	mov	_changed,#0xff
                                   2318 ;	../UI_Manager/ui.c:688: break;
                                   2319 ;	../UI_Manager/ui.c:689: case BUTTON_DOWN:
      001111 22               [24] 2320 	ret
      001112                       2321 00114$:
                                   2322 ;	../UI_Manager/ui.c:690: set_runtime_data(index, DEC, NULL);
      001112 75 65 02         [24] 2323 	mov	_set_runtime_data_PARM_2,#0x02
      001115 75 66 00         [24] 2324 	mov	_set_runtime_data_PARM_3,#0x00
      001118 8D 82            [24] 2325 	mov	dpl,r5
      00111A 12 27 FE         [24] 2326 	lcall	_set_runtime_data
                                   2327 ;	../UI_Manager/ui.c:691: changed = 0xFF;  
      00111D 75 0A FF         [24] 2328 	mov	_changed,#0xff
                                   2329 ;	../UI_Manager/ui.c:692: break;
                                   2330 ;	../UI_Manager/ui.c:693: case BUTTON_FUNCTION:
      001120 22               [24] 2331 	ret
      001121                       2332 00115$:
                                   2333 ;	../UI_Manager/ui.c:694: set_ui_state(INC, NULL);
      001121 75 17 00         [24] 2334 	mov	_set_ui_state_PARM_2,#0x00
      001124 75 82 01         [24] 2335 	mov	dpl,#0x01
                                   2336 ;	../UI_Manager/ui.c:695: break;
                                   2337 ;	../UI_Manager/ui.c:696: case BUTTON_FUN_UP:
      001127 02 13 77         [24] 2338 	ljmp	_set_ui_state
      00112A                       2339 00116$:
                                   2340 ;	../UI_Manager/ui.c:697: set_ui_state(DEC, NULL);
      00112A 75 17 00         [24] 2341 	mov	_set_ui_state_PARM_2,#0x00
      00112D 75 82 02         [24] 2342 	mov	dpl,#0x02
                                   2343 ;	../UI_Manager/ui.c:699: }
                                   2344 ;	../UI_Manager/ui.c:700: }
      001130 02 13 77         [24] 2345 	ljmp	_set_ui_state
      001133                       2346 00118$:
      001133 22               [24] 2347 	ret
                                   2348 ;------------------------------------------------------------
                                   2349 ;Allocation info for local variables in function 'saveLoadPage'
                                   2350 ;------------------------------------------------------------
                                   2351 ;slot                      Allocated with name '_saveLoadPage_slot_65536_134'
                                   2352 ;action                    Allocated to registers r7 
                                   2353 ;------------------------------------------------------------
                                   2354 ;	../UI_Manager/ui.c:702: void saveLoadPage(uint8_t action){
                                   2355 ;	-----------------------------------------
                                   2356 ;	 function saveLoadPage
                                   2357 ;	-----------------------------------------
      001134                       2358 _saveLoadPage:
      001134 AF 82            [24] 2359 	mov	r7,dpl
                                   2360 ;	../UI_Manager/ui.c:705: if(Changed){
      001136 E5 09            [12] 2361 	mov	a,_Changed
      001138 60 49            [24] 2362 	jz	00105$
                                   2363 ;	../UI_Manager/ui.c:706: Changed = 0x00;
      00113A 75 09 00         [24] 2364 	mov	_Changed,#0x00
                                   2365 ;	../UI_Manager/ui.c:707: changed = 0xFF;
      00113D 75 0A FF         [24] 2366 	mov	_changed,#0xff
                                   2367 ;	../UI_Manager/ui.c:709: exe_command(CLEAR_DISPLAY);
      001140 90 80 00         [24] 2368 	mov	dptr,#0x8000
      001143 C0 07            [24] 2369 	push	ar7
      001145 12 1A B6         [24] 2370 	lcall	_exe_command
      001148 D0 07            [24] 2371 	pop	ar7
                                   2372 ;	../UI_Manager/ui.c:711: if(State == MANUAL_SAVE_SETTINGS_STATE){
      00114A 74 0D            [12] 2373 	mov	a,#0x0d
      00114C B5 08 1B         [24] 2374 	cjne	a,_State,00102$
                                   2375 ;	../UI_Manager/ui.c:712: write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
      00114F 75 21 0E         [24] 2376 	mov	_write_string_PARM_2,#0x0e
      001152 75 22 02         [24] 2377 	mov	_write_string_PARM_3,#0x02
      001155 75 23 00         [24] 2378 	mov	_write_string_PARM_4,#0x00
      001158 75 24 00         [24] 2379 	mov	_write_string_PARM_5,#0x00
      00115B 90 2F 3E         [24] 2380 	mov	dptr,#___str_23
      00115E 75 F0 80         [24] 2381 	mov	b,#0x80
      001161 C0 07            [24] 2382 	push	ar7
      001163 12 18 63         [24] 2383 	lcall	_write_string
      001166 D0 07            [24] 2384 	pop	ar7
      001168 80 19            [24] 2385 	sjmp	00105$
      00116A                       2386 00102$:
                                   2387 ;	../UI_Manager/ui.c:714: write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
      00116A 75 21 0E         [24] 2388 	mov	_write_string_PARM_2,#0x0e
      00116D 75 22 02         [24] 2389 	mov	_write_string_PARM_3,#0x02
      001170 75 23 00         [24] 2390 	mov	_write_string_PARM_4,#0x00
      001173 75 24 00         [24] 2391 	mov	_write_string_PARM_5,#0x00
      001176 90 2F 4C         [24] 2392 	mov	dptr,#___str_24
      001179 75 F0 80         [24] 2393 	mov	b,#0x80
      00117C C0 07            [24] 2394 	push	ar7
      00117E 12 18 63         [24] 2395 	lcall	_write_string
      001181 D0 07            [24] 2396 	pop	ar7
      001183                       2397 00105$:
                                   2398 ;	../UI_Manager/ui.c:719: if(changed){
      001183 E5 0A            [12] 2399 	mov	a,_changed
      001185 60 2E            [24] 2400 	jz	00107$
                                   2401 ;	../UI_Manager/ui.c:720: changed = 0x00;
      001187 75 0A 00         [24] 2402 	mov	_changed,#0x00
                                   2403 ;	../UI_Manager/ui.c:721: write_string(getString(slot % (SLOT_COUNT - 1)), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);  
      00118A 75 F0 03         [24] 2404 	mov	b,#0x03
      00118D E5 16            [12] 2405 	mov	a,_saveLoadPage_slot_65536_134
      00118F 84               [48] 2406 	div	ab
      001190 85 F0 82         [24] 2407 	mov	dpl,b
      001193 C0 07            [24] 2408 	push	ar7
      001195 12 14 19         [24] 2409 	lcall	_getString
      001198 AC 82            [24] 2410 	mov	r4,dpl
      00119A AD 83            [24] 2411 	mov	r5,dph
      00119C AE F0            [24] 2412 	mov	r6,b
      00119E 75 21 10         [24] 2413 	mov	_write_string_PARM_2,#0x10
      0011A1 75 22 06         [24] 2414 	mov	_write_string_PARM_3,#0x06
      0011A4 75 23 01         [24] 2415 	mov	_write_string_PARM_4,#0x01
      0011A7 75 24 00         [24] 2416 	mov	_write_string_PARM_5,#0x00
      0011AA 8C 82            [24] 2417 	mov	dpl,r4
      0011AC 8D 83            [24] 2418 	mov	dph,r5
      0011AE 8E F0            [24] 2419 	mov	b,r6
      0011B0 12 18 63         [24] 2420 	lcall	_write_string
      0011B3 D0 07            [24] 2421 	pop	ar7
      0011B5                       2422 00107$:
                                   2423 ;	../UI_Manager/ui.c:724: switch (action)
      0011B5 BF 02 03         [24] 2424 	cjne	r7,#0x02,00165$
      0011B8 02 12 3F         [24] 2425 	ljmp	00114$
      0011BB                       2426 00165$:
      0011BB BF 03 02         [24] 2427 	cjne	r7,#0x03,00166$
      0011BE 80 73            [24] 2428 	sjmp	00112$
      0011C0                       2429 00166$:
      0011C0 BF 0A 02         [24] 2430 	cjne	r7,#0x0a,00167$
      0011C3 80 74            [24] 2431 	sjmp	00113$
      0011C5                       2432 00167$:
      0011C5 BF 0C 03         [24] 2433 	cjne	r7,#0x0c,00168$
      0011C8 02 12 48         [24] 2434 	ljmp	00115$
      0011CB                       2435 00168$:
      0011CB BF 1E 02         [24] 2436 	cjne	r7,#0x1e,00169$
      0011CE 80 01            [24] 2437 	sjmp	00170$
      0011D0                       2438 00169$:
      0011D0 22               [24] 2439 	ret
      0011D1                       2440 00170$:
                                   2441 ;	../UI_Manager/ui.c:727: save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
      0011D1 75 F0 03         [24] 2442 	mov	b,#0x03
      0011D4 E5 16            [12] 2443 	mov	a,_saveLoadPage_slot_65536_134
      0011D6 84               [48] 2444 	div	ab
      0011D7 AF F0            [24] 2445 	mov	r7,b
      0011D9 74 0D            [12] 2446 	mov	a,#0x0d
      0011DB B5 08 06         [24] 2447 	cjne	a,_State,00119$
      0011DE 7D 01            [12] 2448 	mov	r5,#0x01
      0011E0 7E 00            [12] 2449 	mov	r6,#0x00
      0011E2 80 04            [24] 2450 	sjmp	00120$
      0011E4                       2451 00119$:
      0011E4 7D 00            [12] 2452 	mov	r5,#0x00
      0011E6 7E 00            [12] 2453 	mov	r6,#0x00
      0011E8                       2454 00120$:
      0011E8 8D 72            [24] 2455 	mov	_save_load_settings_PARM_2,r5
      0011EA 8F 82            [24] 2456 	mov	dpl,r7
      0011EC 12 27 14         [24] 2457 	lcall	_save_load_settings
                                   2458 ;	../UI_Manager/ui.c:728: write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 
      0011EF 75 21 10         [24] 2459 	mov	_write_string_PARM_2,#0x10
      0011F2 75 22 00         [24] 2460 	mov	_write_string_PARM_3,#0x00
      0011F5 75 23 01         [24] 2461 	mov	_write_string_PARM_4,#0x01
      0011F8 75 24 00         [24] 2462 	mov	_write_string_PARM_5,#0x00
      0011FB 90 2F 2D         [24] 2463 	mov	dptr,#___str_21
      0011FE 75 F0 80         [24] 2464 	mov	b,#0x80
      001201 12 18 63         [24] 2465 	lcall	_write_string
                                   2466 ;	../UI_Manager/ui.c:730: if(State == MANUAL_SAVE_SETTINGS_STATE){
      001204 74 0D            [12] 2467 	mov	a,#0x0d
      001206 B5 08 15         [24] 2468 	cjne	a,_State,00110$
                                   2469 ;	../UI_Manager/ui.c:731: write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      001209 75 21 10         [24] 2470 	mov	_write_string_PARM_2,#0x10
      00120C 75 22 06         [24] 2471 	mov	_write_string_PARM_3,#0x06
      00120F 75 23 01         [24] 2472 	mov	_write_string_PARM_4,#0x01
      001212 75 24 00         [24] 2473 	mov	_write_string_PARM_5,#0x00
      001215 90 2F 5A         [24] 2474 	mov	dptr,#___str_25
      001218 75 F0 80         [24] 2475 	mov	b,#0x80
      00121B 02 18 63         [24] 2476 	ljmp	_write_string
      00121E                       2477 00110$:
                                   2478 ;	../UI_Manager/ui.c:733: write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
      00121E 75 21 10         [24] 2479 	mov	_write_string_PARM_2,#0x10
      001221 75 22 06         [24] 2480 	mov	_write_string_PARM_3,#0x06
      001224 75 23 01         [24] 2481 	mov	_write_string_PARM_4,#0x01
      001227 75 24 00         [24] 2482 	mov	_write_string_PARM_5,#0x00
      00122A 90 2F 61         [24] 2483 	mov	dptr,#___str_26
      00122D 75 F0 80         [24] 2484 	mov	b,#0x80
                                   2485 ;	../UI_Manager/ui.c:735: break;
                                   2486 ;	../UI_Manager/ui.c:736: case BUTTON_UP:
      001230 02 18 63         [24] 2487 	ljmp	_write_string
      001233                       2488 00112$:
                                   2489 ;	../UI_Manager/ui.c:737: slot++;
      001233 05 16            [12] 2490 	inc	_saveLoadPage_slot_65536_134
                                   2491 ;	../UI_Manager/ui.c:738: changed = 0xFF;
      001235 75 0A FF         [24] 2492 	mov	_changed,#0xff
                                   2493 ;	../UI_Manager/ui.c:739: break;
                                   2494 ;	../UI_Manager/ui.c:740: case BUTTON_DOWN:
      001238 22               [24] 2495 	ret
      001239                       2496 00113$:
                                   2497 ;	../UI_Manager/ui.c:741: slot--;
      001239 15 16            [12] 2498 	dec	_saveLoadPage_slot_65536_134
                                   2499 ;	../UI_Manager/ui.c:742: changed = 0xFF;  
      00123B 75 0A FF         [24] 2500 	mov	_changed,#0xff
                                   2501 ;	../UI_Manager/ui.c:743: break;
                                   2502 ;	../UI_Manager/ui.c:744: case BUTTON_FUNCTION:
      00123E 22               [24] 2503 	ret
      00123F                       2504 00114$:
                                   2505 ;	../UI_Manager/ui.c:745: set_ui_state(INC, NULL);
      00123F 75 17 00         [24] 2506 	mov	_set_ui_state_PARM_2,#0x00
      001242 75 82 01         [24] 2507 	mov	dpl,#0x01
                                   2508 ;	../UI_Manager/ui.c:746: break;
                                   2509 ;	../UI_Manager/ui.c:747: case BUTTON_FUN_UP:
      001245 02 13 77         [24] 2510 	ljmp	_set_ui_state
      001248                       2511 00115$:
                                   2512 ;	../UI_Manager/ui.c:748: set_ui_state(DEC, NULL);
      001248 75 17 00         [24] 2513 	mov	_set_ui_state_PARM_2,#0x00
      00124B 75 82 02         [24] 2514 	mov	dpl,#0x02
                                   2515 ;	../UI_Manager/ui.c:750: }
                                   2516 ;	../UI_Manager/ui.c:751: }
      00124E 02 13 77         [24] 2517 	ljmp	_set_ui_state
                                   2518 ;------------------------------------------------------------
                                   2519 ;Allocation info for local variables in function 'dmxAddressPage'
                                   2520 ;------------------------------------------------------------
                                   2521 ;action                    Allocated to registers r7 
                                   2522 ;------------------------------------------------------------
                                   2523 ;	../UI_Manager/ui.c:753: void dmxAddressPage(uint8_t action){
                                   2524 ;	-----------------------------------------
                                   2525 ;	 function dmxAddressPage
                                   2526 ;	-----------------------------------------
      001251                       2527 _dmxAddressPage:
      001251 AF 82            [24] 2528 	mov	r7,dpl
                                   2529 ;	../UI_Manager/ui.c:755: switch (action)
      001253 BF 02 02         [24] 2530 	cjne	r7,#0x02,00146$
      001256 80 2F            [24] 2531 	sjmp	00105$
      001258                       2532 00146$:
      001258 BF 03 02         [24] 2533 	cjne	r7,#0x03,00147$
      00125B 80 14            [24] 2534 	sjmp	00102$
      00125D                       2535 00147$:
      00125D BF 0A 02         [24] 2536 	cjne	r7,#0x0a,00148$
      001260 80 1A            [24] 2537 	sjmp	00104$
      001262                       2538 00148$:
      001262 BF 0C 02         [24] 2539 	cjne	r7,#0x0c,00149$
      001265 80 29            [24] 2540 	sjmp	00106$
      001267                       2541 00149$:
      001267 BF 1F 02         [24] 2542 	cjne	r7,#0x1f,00150$
      00126A 80 05            [24] 2543 	sjmp	00102$
      00126C                       2544 00150$:
                                   2545 ;	../UI_Manager/ui.c:758: case BUTTON_UP:
      00126C BF 65 2A         [24] 2546 	cjne	r7,#0x65,00107$
      00126F 80 0B            [24] 2547 	sjmp	00104$
      001271                       2548 00102$:
                                   2549 ;	../UI_Manager/ui.c:759: set_dmx_address(INC);
      001271 75 82 01         [24] 2550 	mov	dpl,#0x01
      001274 12 28 77         [24] 2551 	lcall	_set_dmx_address
                                   2552 ;	../UI_Manager/ui.c:760: changed = 0xFF;
      001277 75 0A FF         [24] 2553 	mov	_changed,#0xff
                                   2554 ;	../UI_Manager/ui.c:761: break;
                                   2555 ;	../UI_Manager/ui.c:763: case BUTTON_DOWN:
      00127A 80 1D            [24] 2556 	sjmp	00107$
      00127C                       2557 00104$:
                                   2558 ;	../UI_Manager/ui.c:764: set_dmx_address(DEC);
      00127C 75 82 02         [24] 2559 	mov	dpl,#0x02
      00127F 12 28 77         [24] 2560 	lcall	_set_dmx_address
                                   2561 ;	../UI_Manager/ui.c:765: changed = 0xFF;  
      001282 75 0A FF         [24] 2562 	mov	_changed,#0xff
                                   2563 ;	../UI_Manager/ui.c:766: break;
                                   2564 ;	../UI_Manager/ui.c:767: case BUTTON_FUNCTION:
      001285 80 12            [24] 2565 	sjmp	00107$
      001287                       2566 00105$:
                                   2567 ;	../UI_Manager/ui.c:768: set_ui_state(INC, NULL);
      001287 75 17 00         [24] 2568 	mov	_set_ui_state_PARM_2,#0x00
      00128A 75 82 01         [24] 2569 	mov	dpl,#0x01
                                   2570 ;	../UI_Manager/ui.c:769: return;
                                   2571 ;	../UI_Manager/ui.c:770: case BUTTON_FUN_UP:
      00128D 02 13 77         [24] 2572 	ljmp	_set_ui_state
      001290                       2573 00106$:
                                   2574 ;	../UI_Manager/ui.c:771: set_ui_state(DEC, NULL);
      001290 75 17 00         [24] 2575 	mov	_set_ui_state_PARM_2,#0x00
      001293 75 82 02         [24] 2576 	mov	dpl,#0x02
                                   2577 ;	../UI_Manager/ui.c:772: return;
                                   2578 ;	../UI_Manager/ui.c:773: }
      001296 02 13 77         [24] 2579 	ljmp	_set_ui_state
      001299                       2580 00107$:
                                   2581 ;	../UI_Manager/ui.c:775: if(Changed){
      001299 E5 09            [12] 2582 	mov	a,_Changed
      00129B 60 21            [24] 2583 	jz	00109$
                                   2584 ;	../UI_Manager/ui.c:776: Changed = 0x00;
      00129D 75 09 00         [24] 2585 	mov	_Changed,#0x00
                                   2586 ;	../UI_Manager/ui.c:777: changed = 0xFF;
      0012A0 75 0A FF         [24] 2587 	mov	_changed,#0xff
                                   2588 ;	../UI_Manager/ui.c:779: exe_command(CLEAR_DISPLAY);
      0012A3 90 80 00         [24] 2589 	mov	dptr,#0x8000
      0012A6 12 1A B6         [24] 2590 	lcall	_exe_command
                                   2591 ;	../UI_Manager/ui.c:781: write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
      0012A9 75 21 0C         [24] 2592 	mov	_write_string_PARM_2,#0x0c
      0012AC 75 22 02         [24] 2593 	mov	_write_string_PARM_3,#0x02
      0012AF 75 23 00         [24] 2594 	mov	_write_string_PARM_4,#0x00
      0012B2 75 24 00         [24] 2595 	mov	_write_string_PARM_5,#0x00
      0012B5 90 2F 69         [24] 2596 	mov	dptr,#___str_27
      0012B8 75 F0 80         [24] 2597 	mov	b,#0x80
      0012BB 12 18 63         [24] 2598 	lcall	_write_string
      0012BE                       2599 00109$:
                                   2600 ;	../UI_Manager/ui.c:784: if(changed){
      0012BE E5 0A            [12] 2601 	mov	a,_changed
      0012C0 60 12            [24] 2602 	jz	00112$
                                   2603 ;	../UI_Manager/ui.c:785: changed = 0x00;
      0012C2 75 0A 00         [24] 2604 	mov	_changed,#0x00
                                   2605 ;	../UI_Manager/ui.c:787: write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
      0012C5 12 28 CA         [24] 2606 	lcall	_get_dmx_address
      0012C8 75 25 04         [24] 2607 	mov	_write_number_PARM_2,#0x04
      0012CB 75 26 01         [24] 2608 	mov	_write_number_PARM_3,#0x01
      0012CE 75 27 00         [24] 2609 	mov	_write_number_PARM_4,#0x00
                                   2610 ;	../UI_Manager/ui.c:790: }
      0012D1 02 19 27         [24] 2611 	ljmp	_write_number
      0012D4                       2612 00112$:
      0012D4 22               [24] 2613 	ret
                                   2614 ;------------------------------------------------------------
                                   2615 ;Allocation info for local variables in function 'dmxChannelPage'
                                   2616 ;------------------------------------------------------------
                                   2617 ;action                    Allocated to registers r7 
                                   2618 ;------------------------------------------------------------
                                   2619 ;	../UI_Manager/ui.c:792: void dmxChannelPage(uint8_t action){
                                   2620 ;	-----------------------------------------
                                   2621 ;	 function dmxChannelPage
                                   2622 ;	-----------------------------------------
      0012D5                       2623 _dmxChannelPage:
      0012D5 AF 82            [24] 2624 	mov	r7,dpl
                                   2625 ;	../UI_Manager/ui.c:794: switch (action)
      0012D7 BF 02 02         [24] 2626 	cjne	r7,#0x02,00136$
      0012DA 80 31            [24] 2627 	sjmp	00103$
      0012DC                       2628 00136$:
      0012DC BF 03 02         [24] 2629 	cjne	r7,#0x03,00137$
      0012DF 80 0A            [24] 2630 	sjmp	00101$
      0012E1                       2631 00137$:
      0012E1 BF 0A 02         [24] 2632 	cjne	r7,#0x0a,00138$
      0012E4 80 16            [24] 2633 	sjmp	00102$
      0012E6                       2634 00138$:
                                   2635 ;	../UI_Manager/ui.c:796: case BUTTON_UP:
      0012E6 BF 0C 36         [24] 2636 	cjne	r7,#0x0c,00105$
      0012E9 80 2B            [24] 2637 	sjmp	00104$
      0012EB                       2638 00101$:
                                   2639 ;	../UI_Manager/ui.c:797: set_runtime_data(MODE_INDEX, INC, NULL);
      0012EB 75 65 01         [24] 2640 	mov	_set_runtime_data_PARM_2,#0x01
      0012EE 75 66 00         [24] 2641 	mov	_set_runtime_data_PARM_3,#0x00
      0012F1 75 82 0E         [24] 2642 	mov	dpl,#0x0e
      0012F4 12 27 FE         [24] 2643 	lcall	_set_runtime_data
                                   2644 ;	../UI_Manager/ui.c:798: changed = 0xFF;
      0012F7 75 0A FF         [24] 2645 	mov	_changed,#0xff
                                   2646 ;	../UI_Manager/ui.c:799: break;
                                   2647 ;	../UI_Manager/ui.c:800: case BUTTON_DOWN:
      0012FA 80 23            [24] 2648 	sjmp	00105$
      0012FC                       2649 00102$:
                                   2650 ;	../UI_Manager/ui.c:801: set_runtime_data(MODE_INDEX, DEC, NULL);
      0012FC 75 65 02         [24] 2651 	mov	_set_runtime_data_PARM_2,#0x02
      0012FF 75 66 00         [24] 2652 	mov	_set_runtime_data_PARM_3,#0x00
      001302 75 82 0E         [24] 2653 	mov	dpl,#0x0e
      001305 12 27 FE         [24] 2654 	lcall	_set_runtime_data
                                   2655 ;	../UI_Manager/ui.c:802: changed = 0xFF;  
      001308 75 0A FF         [24] 2656 	mov	_changed,#0xff
                                   2657 ;	../UI_Manager/ui.c:803: break;
                                   2658 ;	../UI_Manager/ui.c:804: case BUTTON_FUNCTION:
      00130B 80 12            [24] 2659 	sjmp	00105$
      00130D                       2660 00103$:
                                   2661 ;	../UI_Manager/ui.c:805: set_ui_state(INC, NULL);
      00130D 75 17 00         [24] 2662 	mov	_set_ui_state_PARM_2,#0x00
      001310 75 82 01         [24] 2663 	mov	dpl,#0x01
                                   2664 ;	../UI_Manager/ui.c:806: return;
                                   2665 ;	../UI_Manager/ui.c:807: case BUTTON_FUN_UP:
      001313 02 13 77         [24] 2666 	ljmp	_set_ui_state
      001316                       2667 00104$:
                                   2668 ;	../UI_Manager/ui.c:808: set_ui_state(DEC, NULL);
      001316 75 17 00         [24] 2669 	mov	_set_ui_state_PARM_2,#0x00
      001319 75 82 02         [24] 2670 	mov	dpl,#0x02
                                   2671 ;	../UI_Manager/ui.c:809: return;
                                   2672 ;	../UI_Manager/ui.c:810: }
      00131C 02 13 77         [24] 2673 	ljmp	_set_ui_state
      00131F                       2674 00105$:
                                   2675 ;	../UI_Manager/ui.c:812: if(Changed){
      00131F E5 09            [12] 2676 	mov	a,_Changed
      001321 60 21            [24] 2677 	jz	00107$
                                   2678 ;	../UI_Manager/ui.c:813: Changed = 0x00;
      001323 75 09 00         [24] 2679 	mov	_Changed,#0x00
                                   2680 ;	../UI_Manager/ui.c:814: changed = 0xFF;
      001326 75 0A FF         [24] 2681 	mov	_changed,#0xff
                                   2682 ;	../UI_Manager/ui.c:816: exe_command(CLEAR_DISPLAY);
      001329 90 80 00         [24] 2683 	mov	dptr,#0x8000
      00132C 12 1A B6         [24] 2684 	lcall	_exe_command
                                   2685 ;	../UI_Manager/ui.c:818: write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
      00132F 75 21 11         [24] 2686 	mov	_write_string_PARM_2,#0x11
      001332 75 22 00         [24] 2687 	mov	_write_string_PARM_3,#0x00
      001335 75 23 00         [24] 2688 	mov	_write_string_PARM_4,#0x00
      001338 75 24 00         [24] 2689 	mov	_write_string_PARM_5,#0x00
      00133B 90 2F 75         [24] 2690 	mov	dptr,#___str_28
      00133E 75 F0 80         [24] 2691 	mov	b,#0x80
      001341 12 18 63         [24] 2692 	lcall	_write_string
      001344                       2693 00107$:
                                   2694 ;	../UI_Manager/ui.c:821: if(changed){
      001344 E5 0A            [12] 2695 	mov	a,_changed
      001346 60 2E            [24] 2696 	jz	00110$
                                   2697 ;	../UI_Manager/ui.c:822: changed = 0x00;
      001348 75 0A 00         [24] 2698 	mov	_changed,#0x00
                                   2699 ;	../UI_Manager/ui.c:824: write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);
      00134B 75 82 0E         [24] 2700 	mov	dpl,#0x0e
      00134E 12 27 6A         [24] 2701 	lcall	_get_runtime_data
      001351 AF 82            [24] 2702 	mov	r7,dpl
      001353 74 64            [12] 2703 	mov	a,#0x64
      001355 2F               [12] 2704 	add	a,r7
      001356 F5 82            [12] 2705 	mov	dpl,a
      001358 12 14 19         [24] 2706 	lcall	_getString
      00135B AD 82            [24] 2707 	mov	r5,dpl
      00135D AE 83            [24] 2708 	mov	r6,dph
      00135F AF F0            [24] 2709 	mov	r7,b
      001361 75 21 10         [24] 2710 	mov	_write_string_PARM_2,#0x10
      001364 75 22 01         [24] 2711 	mov	_write_string_PARM_3,#0x01
      001367 75 23 01         [24] 2712 	mov	_write_string_PARM_4,#0x01
      00136A 75 24 00         [24] 2713 	mov	_write_string_PARM_5,#0x00
      00136D 8D 82            [24] 2714 	mov	dpl,r5
      00136F 8E 83            [24] 2715 	mov	dph,r6
      001371 8F F0            [24] 2716 	mov	b,r7
                                   2717 ;	../UI_Manager/ui.c:827: }
      001373 02 18 63         [24] 2718 	ljmp	_write_string
      001376                       2719 00110$:
      001376 22               [24] 2720 	ret
                                   2721 ;------------------------------------------------------------
                                   2722 ;Allocation info for local variables in function 'set_ui_state'
                                   2723 ;------------------------------------------------------------
                                   2724 ;state                     Allocated with name '_set_ui_state_PARM_2'
                                   2725 ;inc                       Allocated to registers r7 
                                   2726 ;------------------------------------------------------------
                                   2727 ;	../UI_Manager/ui.c:829: void set_ui_state(uint8_t inc, uint8_t state){
                                   2728 ;	-----------------------------------------
                                   2729 ;	 function set_ui_state
                                   2730 ;	-----------------------------------------
      001377                       2731 _set_ui_state:
      001377 AF 82            [24] 2732 	mov	r7,dpl
                                   2733 ;	../UI_Manager/ui.c:830: Changed = CHANGE_SCREEN_X;
      001379 75 09 FF         [24] 2734 	mov	_Changed,#0xff
                                   2735 ;	../UI_Manager/ui.c:832: switch (inc)
      00137C BF 01 02         [24] 2736 	cjne	r7,#0x01,00193$
      00137F 80 08            [24] 2737 	sjmp	00101$
      001381                       2738 00193$:
      001381 BF 02 02         [24] 2739 	cjne	r7,#0x02,00194$
      001384 80 3D            [24] 2740 	sjmp	00115$
      001386                       2741 00194$:
      001386 02 13 FC         [24] 2742 	ljmp	00129$
                                   2743 ;	../UI_Manager/ui.c:834: case INC:
      001389                       2744 00101$:
                                   2745 ;	../UI_Manager/ui.c:835: state = State;
      001389 85 08 17         [24] 2746 	mov	_set_ui_state_PARM_2,_State
                                   2747 ;	../UI_Manager/ui.c:836: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      00138C 75 82 10         [24] 2748 	mov	dpl,#0x10
      00138F 12 27 6A         [24] 2749 	lcall	_get_runtime_data
      001392 E5 82            [12] 2750 	mov	a,dpl
      001394 70 17            [24] 2751 	jnz	00113$
                                   2752 ;	../UI_Manager/ui.c:837: if(state == IDLE_STATE){
      001396 E5 17            [12] 2753 	mov	a,_set_ui_state_PARM_2
      001398 70 06            [24] 2754 	jnz	00105$
                                   2755 ;	../UI_Manager/ui.c:838: state = DMX_STATE_LOW;
      00139A 75 17 14         [24] 2756 	mov	_set_ui_state_PARM_2,#0x14
      00139D 02 14 11         [24] 2757 	ljmp	00134$
      0013A0                       2758 00105$:
                                   2759 ;	../UI_Manager/ui.c:839: } else if(++state > DMX_STATE_HIGH){
      0013A0 05 17            [12] 2760 	inc	_set_ui_state_PARM_2
      0013A2 E5 17            [12] 2761 	mov	a,_set_ui_state_PARM_2
      0013A4 24 EA            [12] 2762 	add	a,#0xff - 0x15
      0013A6 50 69            [24] 2763 	jnc	00134$
                                   2764 ;	../UI_Manager/ui.c:840: state = IDLE_STATE;
      0013A8 75 17 00         [24] 2765 	mov	_set_ui_state_PARM_2,#0x00
      0013AB 80 64            [24] 2766 	sjmp	00134$
      0013AD                       2767 00113$:
                                   2768 ;	../UI_Manager/ui.c:843: if(state == IDLE_STATE){
      0013AD E5 17            [12] 2769 	mov	a,_set_ui_state_PARM_2
      0013AF 70 05            [24] 2770 	jnz	00110$
                                   2771 ;	../UI_Manager/ui.c:844: state = IDLE_STATE + 1; 
      0013B1 75 17 01         [24] 2772 	mov	_set_ui_state_PARM_2,#0x01
      0013B4 80 5B            [24] 2773 	sjmp	00134$
      0013B6                       2774 00110$:
                                   2775 ;	../UI_Manager/ui.c:845: } else if(++state > MANUAL_STATE_HIGH){
      0013B6 05 17            [12] 2776 	inc	_set_ui_state_PARM_2
      0013B8 E5 17            [12] 2777 	mov	a,_set_ui_state_PARM_2
      0013BA 24 F1            [12] 2778 	add	a,#0xff - 0x0e
      0013BC 50 53            [24] 2779 	jnc	00134$
                                   2780 ;	../UI_Manager/ui.c:846: State = IDLE_STATE;
      0013BE 75 08 00         [24] 2781 	mov	_State,#0x00
                                   2782 ;	../UI_Manager/ui.c:849: break;
                                   2783 ;	../UI_Manager/ui.c:850: case DEC:
      0013C1 80 4E            [24] 2784 	sjmp	00134$
      0013C3                       2785 00115$:
                                   2786 ;	../UI_Manager/ui.c:851: state = State;
      0013C3 85 08 17         [24] 2787 	mov	_set_ui_state_PARM_2,_State
                                   2788 ;	../UI_Manager/ui.c:852: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0013C6 75 82 10         [24] 2789 	mov	dpl,#0x10
      0013C9 12 27 6A         [24] 2790 	lcall	_get_runtime_data
      0013CC E5 82            [12] 2791 	mov	a,dpl
      0013CE 70 16            [24] 2792 	jnz	00127$
                                   2793 ;	../UI_Manager/ui.c:853: if(state == IDLE_STATE){
      0013D0 E5 17            [12] 2794 	mov	a,_set_ui_state_PARM_2
      0013D2 70 05            [24] 2795 	jnz	00119$
                                   2796 ;	../UI_Manager/ui.c:854: state = DMX_STATE_HIGH;
      0013D4 75 17 15         [24] 2797 	mov	_set_ui_state_PARM_2,#0x15
      0013D7 80 38            [24] 2798 	sjmp	00134$
      0013D9                       2799 00119$:
                                   2800 ;	../UI_Manager/ui.c:855: } else if(--State < DMX_STATE_LOW){
      0013D9 15 08            [12] 2801 	dec	_State
      0013DB 74 EC            [12] 2802 	mov	a,#0x100 - 0x14
      0013DD 25 08            [12] 2803 	add	a,_State
      0013DF 40 30            [24] 2804 	jc	00134$
                                   2805 ;	../UI_Manager/ui.c:856: State = IDLE_STATE;
      0013E1 75 08 00         [24] 2806 	mov	_State,#0x00
      0013E4 80 2B            [24] 2807 	sjmp	00134$
      0013E6                       2808 00127$:
                                   2809 ;	../UI_Manager/ui.c:859: if(state == IDLE_STATE){
      0013E6 E5 17            [12] 2810 	mov	a,_set_ui_state_PARM_2
      0013E8 70 05            [24] 2811 	jnz	00124$
                                   2812 ;	../UI_Manager/ui.c:860: state = MANUAL_STATE_HIGH; 
      0013EA 75 17 0E         [24] 2813 	mov	_set_ui_state_PARM_2,#0x0e
      0013ED 80 22            [24] 2814 	sjmp	00134$
      0013EF                       2815 00124$:
                                   2816 ;	../UI_Manager/ui.c:861: } else if(--State < DMX_STATE_HIGH){
      0013EF 15 08            [12] 2817 	dec	_State
      0013F1 74 EB            [12] 2818 	mov	a,#0x100 - 0x15
      0013F3 25 08            [12] 2819 	add	a,_State
      0013F5 40 1A            [24] 2820 	jc	00134$
                                   2821 ;	../UI_Manager/ui.c:862: State = IDLE_STATE;
      0013F7 75 08 00         [24] 2822 	mov	_State,#0x00
                                   2823 ;	../UI_Manager/ui.c:865: break;
                                   2824 ;	../UI_Manager/ui.c:866: default: 
      0013FA 80 15            [24] 2825 	sjmp	00134$
      0013FC                       2826 00129$:
                                   2827 ;	../UI_Manager/ui.c:867: if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
      0013FC E5 17            [12] 2828 	mov	a,_set_ui_state_PARM_2
      0013FE 24 F1            [12] 2829 	add	a,#0xff - 0x0e
      001400 50 0C            [24] 2830 	jnc	00130$
      001402 74 EC            [12] 2831 	mov	a,#0x100 - 0x14
      001404 25 17            [12] 2832 	add	a,_set_ui_state_PARM_2
      001406 50 09            [24] 2833 	jnc	00134$
      001408 E5 17            [12] 2834 	mov	a,_set_ui_state_PARM_2
      00140A 24 EA            [12] 2835 	add	a,#0xff - 0x15
      00140C 40 03            [24] 2836 	jc	00134$
      00140E                       2837 00130$:
                                   2838 ;	../UI_Manager/ui.c:868: state = IDLE_STATE;
      00140E 75 17 00         [24] 2839 	mov	_set_ui_state_PARM_2,#0x00
                                   2840 ;	../UI_Manager/ui.c:871: }
      001411                       2841 00134$:
                                   2842 ;	../UI_Manager/ui.c:873: State = state;
      001411 85 17 08         [24] 2843 	mov	_State,_set_ui_state_PARM_2
                                   2844 ;	../UI_Manager/ui.c:874: }
      001414 22               [24] 2845 	ret
                                   2846 ;------------------------------------------------------------
                                   2847 ;Allocation info for local variables in function 'get_ui_state'
                                   2848 ;------------------------------------------------------------
                                   2849 ;	../UI_Manager/ui.c:876: uint8_t get_ui_state(){
                                   2850 ;	-----------------------------------------
                                   2851 ;	 function get_ui_state
                                   2852 ;	-----------------------------------------
      001415                       2853 _get_ui_state:
                                   2854 ;	../UI_Manager/ui.c:877: return State;
      001415 85 08 82         [24] 2855 	mov	dpl,_State
                                   2856 ;	../UI_Manager/ui.c:878: }
      001418 22               [24] 2857 	ret
                                   2858 ;------------------------------------------------------------
                                   2859 ;Allocation info for local variables in function 'getString'
                                   2860 ;------------------------------------------------------------
                                   2861 ;index                     Allocated to registers r7 
                                   2862 ;------------------------------------------------------------
                                   2863 ;	../UI_Manager/ui.c:880: char* getString(uint8_t index){
                                   2864 ;	-----------------------------------------
                                   2865 ;	 function getString
                                   2866 ;	-----------------------------------------
      001419                       2867 _getString:
      001419 AF 82            [24] 2868 	mov	r7,dpl
                                   2869 ;	../UI_Manager/ui.c:881: switch (index)
      00141B 8F 06            [24] 2870 	mov	ar6,r7
      00141D BE 00 03         [24] 2871 	cjne	r6,#0x00,00299$
      001420 02 15 18         [24] 2872 	ljmp	00103$
      001423                       2873 00299$:
      001423 BE 01 03         [24] 2874 	cjne	r6,#0x01,00300$
      001426 02 15 11         [24] 2875 	ljmp	00102$
      001429                       2876 00300$:
      001429 BF 02 03         [24] 2877 	cjne	r7,#0x02,00301$
      00142C 02 15 0A         [24] 2878 	ljmp	00101$
      00142F                       2879 00301$:
      00142F BF 14 03         [24] 2880 	cjne	r7,#0x14,00302$
      001432 02 15 1F         [24] 2881 	ljmp	00104$
      001435                       2882 00302$:
      001435 BF 15 03         [24] 2883 	cjne	r7,#0x15,00303$
      001438 02 15 26         [24] 2884 	ljmp	00105$
      00143B                       2885 00303$:
      00143B BF 16 03         [24] 2886 	cjne	r7,#0x16,00304$
      00143E 02 15 2D         [24] 2887 	ljmp	00106$
      001441                       2888 00304$:
      001441 BF 17 03         [24] 2889 	cjne	r7,#0x17,00305$
      001444 02 15 34         [24] 2890 	ljmp	00107$
      001447                       2891 00305$:
      001447 BF 18 03         [24] 2892 	cjne	r7,#0x18,00306$
      00144A 02 15 42         [24] 2893 	ljmp	00109$
      00144D                       2894 00306$:
      00144D BF 19 03         [24] 2895 	cjne	r7,#0x19,00307$
      001450 02 15 49         [24] 2896 	ljmp	00110$
      001453                       2897 00307$:
      001453 BF 1A 03         [24] 2898 	cjne	r7,#0x1a,00308$
      001456 02 15 3B         [24] 2899 	ljmp	00108$
      001459                       2900 00308$:
      001459 BF 28 03         [24] 2901 	cjne	r7,#0x28,00309$
      00145C 02 15 F1         [24] 2902 	ljmp	00134$
      00145F                       2903 00309$:
      00145F BF 29 03         [24] 2904 	cjne	r7,#0x29,00310$
      001462 02 15 F8         [24] 2905 	ljmp	00135$
      001465                       2906 00310$:
      001465 BF 2A 03         [24] 2907 	cjne	r7,#0x2a,00311$
      001468 02 15 FF         [24] 2908 	ljmp	00136$
      00146B                       2909 00311$:
      00146B BF 2B 03         [24] 2910 	cjne	r7,#0x2b,00312$
      00146E 02 16 06         [24] 2911 	ljmp	00137$
      001471                       2912 00312$:
      001471 BF 2C 03         [24] 2913 	cjne	r7,#0x2c,00313$
      001474 02 16 0D         [24] 2914 	ljmp	00138$
      001477                       2915 00313$:
      001477 BF 2D 03         [24] 2916 	cjne	r7,#0x2d,00314$
      00147A 02 16 14         [24] 2917 	ljmp	00139$
      00147D                       2918 00314$:
      00147D BF 3C 03         [24] 2919 	cjne	r7,#0x3c,00315$
      001480 02 15 6C         [24] 2920 	ljmp	00115$
      001483                       2921 00315$:
      001483 BF 3D 03         [24] 2922 	cjne	r7,#0x3d,00316$
      001486 02 15 73         [24] 2923 	ljmp	00116$
      001489                       2924 00316$:
      001489 BF 3E 03         [24] 2925 	cjne	r7,#0x3e,00317$
      00148C 02 15 7A         [24] 2926 	ljmp	00117$
      00148F                       2927 00317$:
      00148F BF 3F 03         [24] 2928 	cjne	r7,#0x3f,00318$
      001492 02 15 81         [24] 2929 	ljmp	00118$
      001495                       2930 00318$:
      001495 BF 40 03         [24] 2931 	cjne	r7,#0x40,00319$
      001498 02 15 88         [24] 2932 	ljmp	00119$
      00149B                       2933 00319$:
      00149B BF 41 03         [24] 2934 	cjne	r7,#0x41,00320$
      00149E 02 15 8F         [24] 2935 	ljmp	00120$
      0014A1                       2936 00320$:
      0014A1 BF 42 03         [24] 2937 	cjne	r7,#0x42,00321$
      0014A4 02 15 96         [24] 2938 	ljmp	00121$
      0014A7                       2939 00321$:
      0014A7 BF 43 03         [24] 2940 	cjne	r7,#0x43,00322$
      0014AA 02 15 9D         [24] 2941 	ljmp	00122$
      0014AD                       2942 00322$:
      0014AD BF 44 03         [24] 2943 	cjne	r7,#0x44,00323$
      0014B0 02 15 A4         [24] 2944 	ljmp	00123$
      0014B3                       2945 00323$:
      0014B3 BF 45 03         [24] 2946 	cjne	r7,#0x45,00324$
      0014B6 02 15 AB         [24] 2947 	ljmp	00124$
      0014B9                       2948 00324$:
      0014B9 BF 46 03         [24] 2949 	cjne	r7,#0x46,00325$
      0014BC 02 15 B2         [24] 2950 	ljmp	00125$
      0014BF                       2951 00325$:
      0014BF BF 47 03         [24] 2952 	cjne	r7,#0x47,00326$
      0014C2 02 15 B9         [24] 2953 	ljmp	00126$
      0014C5                       2954 00326$:
      0014C5 BF 48 03         [24] 2955 	cjne	r7,#0x48,00327$
      0014C8 02 15 C0         [24] 2956 	ljmp	00127$
      0014CB                       2957 00327$:
      0014CB BF 50 03         [24] 2958 	cjne	r7,#0x50,00328$
      0014CE 02 15 C7         [24] 2959 	ljmp	00128$
      0014D1                       2960 00328$:
      0014D1 BF 51 03         [24] 2961 	cjne	r7,#0x51,00329$
      0014D4 02 15 CE         [24] 2962 	ljmp	00129$
      0014D7                       2963 00329$:
      0014D7 BF 52 03         [24] 2964 	cjne	r7,#0x52,00330$
      0014DA 02 15 D5         [24] 2965 	ljmp	00130$
      0014DD                       2966 00330$:
      0014DD BF 64 03         [24] 2967 	cjne	r7,#0x64,00331$
      0014E0 02 15 DC         [24] 2968 	ljmp	00131$
      0014E3                       2969 00331$:
      0014E3 BF 65 03         [24] 2970 	cjne	r7,#0x65,00332$
      0014E6 02 15 E3         [24] 2971 	ljmp	00132$
      0014E9                       2972 00332$:
      0014E9 BF 66 03         [24] 2973 	cjne	r7,#0x66,00333$
      0014EC 02 15 EA         [24] 2974 	ljmp	00133$
      0014EF                       2975 00333$:
      0014EF BF CE 03         [24] 2976 	cjne	r7,#0xce,00334$
      0014F2 02 15 50         [24] 2977 	ljmp	00111$
      0014F5                       2978 00334$:
      0014F5 BF CF 03         [24] 2979 	cjne	r7,#0xcf,00335$
      0014F8 02 15 5E         [24] 2980 	ljmp	00113$
      0014FB                       2981 00335$:
      0014FB BF D0 03         [24] 2982 	cjne	r7,#0xd0,00336$
      0014FE 02 15 57         [24] 2983 	ljmp	00112$
      001501                       2984 00336$:
      001501 BF D1 03         [24] 2985 	cjne	r7,#0xd1,00337$
      001504 02 15 65         [24] 2986 	ljmp	00114$
      001507                       2987 00337$:
      001507 02 16 1B         [24] 2988 	ljmp	00140$
                                   2989 ;	../UI_Manager/ui.c:883: case POWER_STRING_OFFSET + OPTION_FOG_LOW:
      00150A                       2990 00101$:
                                   2991 ;	../UI_Manager/ui.c:884: return "Wimpy";
      00150A 90 2F 86         [24] 2992 	mov	dptr,#___str_29
      00150D 75 F0 80         [24] 2993 	mov	b,#0x80
      001510 22               [24] 2994 	ret
                                   2995 ;	../UI_Manager/ui.c:885: case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
      001511                       2996 00102$:
                                   2997 ;	../UI_Manager/ui.c:886: return "Mild";
      001511 90 2F 8C         [24] 2998 	mov	dptr,#___str_30
      001514 75 F0 80         [24] 2999 	mov	b,#0x80
      001517 22               [24] 3000 	ret
                                   3001 ;	../UI_Manager/ui.c:887: case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
      001518                       3002 00103$:
                                   3003 ;	../UI_Manager/ui.c:888: return "Blazin";
      001518 90 2F 91         [24] 3004 	mov	dptr,#___str_31
      00151B 75 F0 80         [24] 3005 	mov	b,#0x80
      00151E 22               [24] 3006 	ret
                                   3007 ;	../UI_Manager/ui.c:890: case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
      00151F                       3008 00104$:
                                   3009 ;	../UI_Manager/ui.c:891: return "Off";
      00151F 90 2F 29         [24] 3010 	mov	dptr,#___str_20
      001522 75 F0 80         [24] 3011 	mov	b,#0x80
      001525 22               [24] 3012 	ret
                                   3013 ;	../UI_Manager/ui.c:892: case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
      001526                       3014 00105$:
                                   3015 ;	../UI_Manager/ui.c:893: return "Rainbow";
      001526 90 2F 98         [24] 3016 	mov	dptr,#___str_32
      001529 75 F0 80         [24] 3017 	mov	b,#0x80
      00152C 22               [24] 3018 	ret
                                   3019 ;	../UI_Manager/ui.c:894: case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
      00152D                       3020 00106$:
                                   3021 ;	../UI_Manager/ui.c:895: return "Fire";
      00152D 90 2F A0         [24] 3022 	mov	dptr,#___str_33
      001530 75 F0 80         [24] 3023 	mov	b,#0x80
      001533 22               [24] 3024 	ret
                                   3025 ;	../UI_Manager/ui.c:896: case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
      001534                       3026 00107$:
                                   3027 ;	../UI_Manager/ui.c:897: return "Water";
      001534 90 2F A5         [24] 3028 	mov	dptr,#___str_34
      001537 75 F0 80         [24] 3029 	mov	b,#0x80
      00153A 22               [24] 3030 	ret
                                   3031 ;	../UI_Manager/ui.c:898: case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
      00153B                       3032 00108$:
                                   3033 ;	../UI_Manager/ui.c:899: return "Storm";
      00153B 90 2F AB         [24] 3034 	mov	dptr,#___str_35
      00153E 75 F0 80         [24] 3035 	mov	b,#0x80
      001541 22               [24] 3036 	ret
                                   3037 ;	../UI_Manager/ui.c:900: case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
      001542                       3038 00109$:
                                   3039 ;	../UI_Manager/ui.c:901: return "Acid";
      001542 90 2F B1         [24] 3040 	mov	dptr,#___str_36
      001545 75 F0 80         [24] 3041 	mov	b,#0x80
      001548 22               [24] 3042 	ret
                                   3043 ;	../UI_Manager/ui.c:902: case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
      001549                       3044 00110$:
                                   3045 ;	../UI_Manager/ui.c:903: return "Ether";
      001549 90 2F B6         [24] 3046 	mov	dptr,#___str_37
      00154C 75 F0 80         [24] 3047 	mov	b,#0x80
      00154F 22               [24] 3048 	ret
                                   3049 ;	../UI_Manager/ui.c:905: case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
      001550                       3050 00111$:
                                   3051 ;	../UI_Manager/ui.c:906: return "Red Level";
      001550 90 2F BC         [24] 3052 	mov	dptr,#___str_38
      001553 75 F0 80         [24] 3053 	mov	b,#0x80
      001556 22               [24] 3054 	ret
                                   3055 ;	../UI_Manager/ui.c:907: case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
      001557                       3056 00112$:
                                   3057 ;	../UI_Manager/ui.c:908: return "Green Level";
      001557 90 2F C6         [24] 3058 	mov	dptr,#___str_39
      00155A 75 F0 80         [24] 3059 	mov	b,#0x80
      00155D 22               [24] 3060 	ret
                                   3061 ;	../UI_Manager/ui.c:909: case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
      00155E                       3062 00113$:
                                   3063 ;	../UI_Manager/ui.c:910: return "Blue Level";
      00155E 90 2F D2         [24] 3064 	mov	dptr,#___str_40
      001561 75 F0 80         [24] 3065 	mov	b,#0x80
      001564 22               [24] 3066 	ret
                                   3067 ;	../UI_Manager/ui.c:911: case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
      001565                       3068 00114$:
                                   3069 ;	../UI_Manager/ui.c:912: return "Strobe Level";
      001565 90 2F DD         [24] 3070 	mov	dptr,#___str_41
      001568 75 F0 80         [24] 3071 	mov	b,#0x80
      00156B 22               [24] 3072 	ret
                                   3073 ;	../UI_Manager/ui.c:914: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
      00156C                       3074 00115$:
                                   3075 ;	../UI_Manager/ui.c:915: return "No Action";
      00156C 90 2F EA         [24] 3076 	mov	dptr,#___str_42
      00156F 75 F0 80         [24] 3077 	mov	b,#0x80
      001572 22               [24] 3078 	ret
                                   3079 ;	../UI_Manager/ui.c:916: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      001573                       3080 00116$:
                                   3081 ;	../UI_Manager/ui.c:917: return "Choose Macro";
      001573 90 2F F4         [24] 3082 	mov	dptr,#___str_43
      001576 75 F0 80         [24] 3083 	mov	b,#0x80
      001579 22               [24] 3084 	ret
                                   3085 ;	../UI_Manager/ui.c:918: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
      00157A                       3086 00117$:
                                   3087 ;	../UI_Manager/ui.c:919: return "Red";
      00157A 90 30 01         [24] 3088 	mov	dptr,#___str_44
      00157D 75 F0 80         [24] 3089 	mov	b,#0x80
      001580 22               [24] 3090 	ret
                                   3091 ;	../UI_Manager/ui.c:920: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
      001581                       3092 00118$:
                                   3093 ;	../UI_Manager/ui.c:921: return "Yellow";
      001581 90 30 05         [24] 3094 	mov	dptr,#___str_45
      001584 75 F0 80         [24] 3095 	mov	b,#0x80
      001587 22               [24] 3096 	ret
                                   3097 ;	../UI_Manager/ui.c:922: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
      001588                       3098 00119$:
                                   3099 ;	../UI_Manager/ui.c:923: return "Green";
      001588 90 30 0C         [24] 3100 	mov	dptr,#___str_46
      00158B 75 F0 80         [24] 3101 	mov	b,#0x80
      00158E 22               [24] 3102 	ret
                                   3103 ;	../UI_Manager/ui.c:924: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
      00158F                       3104 00120$:
                                   3105 ;	../UI_Manager/ui.c:925: return "Cyan";
      00158F 90 30 12         [24] 3106 	mov	dptr,#___str_47
      001592 75 F0 80         [24] 3107 	mov	b,#0x80
      001595 22               [24] 3108 	ret
                                   3109 ;	../UI_Manager/ui.c:926: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
      001596                       3110 00121$:
                                   3111 ;	../UI_Manager/ui.c:927: return "Blue";
      001596 90 30 17         [24] 3112 	mov	dptr,#___str_48
      001599 75 F0 80         [24] 3113 	mov	b,#0x80
      00159C 22               [24] 3114 	ret
                                   3115 ;	../UI_Manager/ui.c:928: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
      00159D                       3116 00122$:
                                   3117 ;	../UI_Manager/ui.c:929: return "Magenta";
      00159D 90 30 1C         [24] 3118 	mov	dptr,#___str_49
      0015A0 75 F0 80         [24] 3119 	mov	b,#0x80
      0015A3 22               [24] 3120 	ret
                                   3121 ;	../UI_Manager/ui.c:930: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
      0015A4                       3122 00123$:
                                   3123 ;	../UI_Manager/ui.c:931: return "Strobe Slow";
      0015A4 90 30 24         [24] 3124 	mov	dptr,#___str_50
      0015A7 75 F0 80         [24] 3125 	mov	b,#0x80
      0015AA 22               [24] 3126 	ret
                                   3127 ;	../UI_Manager/ui.c:932: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      0015AB                       3128 00124$:
                                   3129 ;	../UI_Manager/ui.c:933: return "Strobe Medium";
      0015AB 90 30 30         [24] 3130 	mov	dptr,#___str_51
      0015AE 75 F0 80         [24] 3131 	mov	b,#0x80
      0015B1 22               [24] 3132 	ret
                                   3133 ;	../UI_Manager/ui.c:934: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
      0015B2                       3134 00125$:
                                   3135 ;	../UI_Manager/ui.c:935: return "Strobe Fast";
      0015B2 90 30 3E         [24] 3136 	mov	dptr,#___str_52
      0015B5 75 F0 80         [24] 3137 	mov	b,#0x80
      0015B8 22               [24] 3138 	ret
                                   3139 ;	../UI_Manager/ui.c:936: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
      0015B9                       3140 00126$:
                                   3141 ;	../UI_Manager/ui.c:937: return "Blackout";
      0015B9 90 30 4A         [24] 3142 	mov	dptr,#___str_53
      0015BC 75 F0 80         [24] 3143 	mov	b,#0x80
      0015BF 22               [24] 3144 	ret
                                   3145 ;	../UI_Manager/ui.c:938: case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
      0015C0                       3146 00127$:
                                   3147 ;	../UI_Manager/ui.c:939: return "Whiteout";         
      0015C0 90 30 53         [24] 3148 	mov	dptr,#___str_54
      0015C3 75 F0 80         [24] 3149 	mov	b,#0x80
      0015C6 22               [24] 3150 	ret
                                   3151 ;	../UI_Manager/ui.c:941: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
      0015C7                       3152 00128$:
                                   3153 ;	../UI_Manager/ui.c:942: return "Slot 1";   
      0015C7 90 30 5C         [24] 3154 	mov	dptr,#___str_55
      0015CA 75 F0 80         [24] 3155 	mov	b,#0x80
      0015CD 22               [24] 3156 	ret
                                   3157 ;	../UI_Manager/ui.c:943: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
      0015CE                       3158 00129$:
                                   3159 ;	../UI_Manager/ui.c:944: return "Slot 2";   
      0015CE 90 30 63         [24] 3160 	mov	dptr,#___str_56
      0015D1 75 F0 80         [24] 3161 	mov	b,#0x80
      0015D4 22               [24] 3162 	ret
                                   3163 ;	../UI_Manager/ui.c:945: case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
      0015D5                       3164 00130$:
                                   3165 ;	../UI_Manager/ui.c:946: return "Slot 3"; 
      0015D5 90 30 6A         [24] 3166 	mov	dptr,#___str_57
      0015D8 75 F0 80         [24] 3167 	mov	b,#0x80
                                   3168 ;	../UI_Manager/ui.c:948: case DMX_STRING_OFFSET + OPTION_DMX_MODE_9: 
      0015DB 22               [24] 3169 	ret
      0015DC                       3170 00131$:
                                   3171 ;	../UI_Manager/ui.c:949: return "10 All";     
      0015DC 90 30 71         [24] 3172 	mov	dptr,#___str_58
      0015DF 75 F0 80         [24] 3173 	mov	b,#0x80
                                   3174 ;	../UI_Manager/ui.c:950: case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
      0015E2 22               [24] 3175 	ret
      0015E3                       3176 00132$:
                                   3177 ;	../UI_Manager/ui.c:951: return "3 Fog + Macro";   
      0015E3 90 30 78         [24] 3178 	mov	dptr,#___str_59
      0015E6 75 F0 80         [24] 3179 	mov	b,#0x80
                                   3180 ;	../UI_Manager/ui.c:952: case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
      0015E9 22               [24] 3181 	ret
      0015EA                       3182 00133$:
                                   3183 ;	../UI_Manager/ui.c:953: return "1 Fog";    
      0015EA 90 30 86         [24] 3184 	mov	dptr,#___str_60
      0015ED 75 F0 80         [24] 3185 	mov	b,#0x80
                                   3186 ;	../UI_Manager/ui.c:955: case SECRET_STRING_OFFSET + 0:
      0015F0 22               [24] 3187 	ret
      0015F1                       3188 00134$:
                                   3189 ;	../UI_Manager/ui.c:956: return "0x486F6C6D6573";
      0015F1 90 30 8C         [24] 3190 	mov	dptr,#___str_61
      0015F4 75 F0 80         [24] 3191 	mov	b,#0x80
                                   3192 ;	../UI_Manager/ui.c:957: case SECRET_STRING_OFFSET + 1:
      0015F7 22               [24] 3193 	ret
      0015F8                       3194 00135$:
                                   3195 ;	../UI_Manager/ui.c:958: return "& 576174736F6E";
      0015F8 90 30 9B         [24] 3196 	mov	dptr,#___str_62
      0015FB 75 F0 80         [24] 3197 	mov	b,#0x80
                                   3198 ;	../UI_Manager/ui.c:959: case SECRET_STRING_OFFSET + 2:
      0015FE 22               [24] 3199 	ret
      0015FF                       3200 00136$:
                                   3201 ;	../UI_Manager/ui.c:960: return "626F74684F776E41";
      0015FF 90 30 AA         [24] 3202 	mov	dptr,#___str_63
      001602 75 F0 80         [24] 3203 	mov	b,#0x80
                                   3204 ;	../UI_Manager/ui.c:961: case SECRET_STRING_OFFSET + 3:
      001605 22               [24] 3205 	ret
      001606                       3206 00137$:
                                   3207 ;	../UI_Manager/ui.c:962: return "536E6F7762616C6C";
      001606 90 30 BB         [24] 3208 	mov	dptr,#___str_64
      001609 75 F0 80         [24] 3209 	mov	b,#0x80
                                   3210 ;	../UI_Manager/ui.c:963: case SECRET_STRING_OFFSET + 4:
      00160C 22               [24] 3211 	ret
      00160D                       3212 00138$:
                                   3213 ;	../UI_Manager/ui.c:964: return "4D6F726961727479";
      00160D 90 30 CC         [24] 3214 	mov	dptr,#___str_65
      001610 75 F0 80         [24] 3215 	mov	b,#0x80
                                   3216 ;	../UI_Manager/ui.c:965: case SECRET_STRING_OFFSET + 5:
      001613 22               [24] 3217 	ret
      001614                       3218 00139$:
                                   3219 ;	../UI_Manager/ui.c:966: return "646F65734E6F74 ;";
      001614 90 30 DD         [24] 3220 	mov	dptr,#___str_66
      001617 75 F0 80         [24] 3221 	mov	b,#0x80
                                   3222 ;	../UI_Manager/ui.c:967: }
      00161A 22               [24] 3223 	ret
      00161B                       3224 00140$:
                                   3225 ;	../UI_Manager/ui.c:969: return 0;
      00161B 90 00 00         [24] 3226 	mov	dptr,#0x0000
      00161E 75 F0 00         [24] 3227 	mov	b,#0x00
                                   3228 ;	../UI_Manager/ui.c:970: }
      001621 22               [24] 3229 	ret
                                   3230 	.area CSEG    (CODE)
                                   3231 	.area CONST   (CODE)
      002E47                       3232 ___str_0:
      002E47 54 61 6E 6B 20 4C 69  3233 	.ascii "Tank Lights Off"
             67 68 74 73 20 4F 66
             66
      002E56 00                    3234 	.db 0x00
      002E57                       3235 ___str_1:
      002E57 54 61 6E 6B 20 4C 69  3236 	.ascii "Tank Lights On"
             67 68 74 73 20 4F 6E
      002E65 00                    3237 	.db 0x00
      002E66                       3238 ___str_2:
      002E66 46 75 6E 2B 4D 61 6E  3239 	.ascii "Fun+Man to Undo"
             20 74 6F 20 55 6E 64
             6F
      002E75 00                    3240 	.db 0x00
      002E76                       3241 ___str_3:
      002E76 41 74 6D 6F 73 46 45  3242 	.ascii "AtmosFEAR 221B"
             41 52 20 32 32 31 42
      002E84 00                    3243 	.db 0x00
      002E85                       3244 ___str_4:
      002E85 42 79 20 42 6C 69 7A  3245 	.ascii "By Blizzard Pro"
             7A 61 72 64 20 50 72
             6F
      002E94 00                    3246 	.db 0x00
      002E95                       3247 ___str_5:
      002E95 50 43 20 4C 6F 61 64  3248 	.ascii "PC Load Letter"
             20 4C 65 74 74 65 72
      002EA3 00                    3249 	.db 0x00
      002EA4                       3250 ___str_6:
      002EA4 42 75 72 73 74 20 74  3251 	.ascii "Burst to Refill"
             6F 20 52 65 66 69 6C
             6C
      002EB3 00                    3252 	.db 0x00
      002EB4                       3253 ___str_7:
      002EB4 4D 61 6E 75 61 6C 20  3254 	.ascii "Manual Mode"
             4D 6F 64 65
      002EBF 00                    3255 	.db 0x00
      002EC0                       3256 ___str_8:
      002EC0 41 64 64 72           3257 	.ascii "Addr"
      002EC4 00                    3258 	.db 0x00
      002EC5                       3259 ___str_9:
      002EC5 4D 6F 64 65           3260 	.ascii "Mode"
      002EC9 00                    3261 	.db 0x00
      002ECA                       3262 ___str_10:
      002ECA 44 4D 58 20 4F 6B     3263 	.ascii "DMX Ok"
      002ED0 00                    3264 	.db 0x00
      002ED1                       3265 ___str_11:
      002ED1 4E 6F 20 44 4D 58     3266 	.ascii "No DMX"
      002ED7 00                    3267 	.db 0x00
      002ED8                       3268 ___str_12:
      002ED8 49 6E 74 65 72 76 61  3269 	.ascii "Interval"
             6C
      002EE0 00                    3270 	.db 0x00
      002EE1                       3271 ___str_13:
      002EE1 44 75 72 61 74 69 6F  3272 	.ascii "Duration"
             6E
      002EE9 00                    3273 	.db 0x00
      002EEA                       3274 ___str_14:
      002EEA 46 6F 67 20 4C 65 76  3275 	.ascii "Fog Level"
             65 6C
      002EF3 00                    3276 	.db 0x00
      002EF4                       3277 ___str_15:
      002EF4 46 6F 67 20 49 6E 74  3278 	.ascii "Fog Interval"
             65 72 76 61 6C
      002F00 00                    3279 	.db 0x00
      002F01                       3280 ___str_16:
      002F01 53 65 63 6F 6E 64 73  3281 	.ascii "Seconds"
      002F08 00                    3282 	.db 0x00
      002F09                       3283 ___str_17:
      002F09 46 6F 67 20 44 75 72  3284 	.ascii "Fog Duration"
             61 74 69 6F 6E
      002F15 00                    3285 	.db 0x00
      002F16                       3286 ___str_18:
      002F16 4D 61 63 72 6F 73     3287 	.ascii "Macros"
      002F1C 00                    3288 	.db 0x00
      002F1D                       3289 ___str_19:
      002F1D 4D 61 63 72 6F 20 53  3290 	.ascii "Macro Speed"
             70 65 65 64
      002F28 00                    3291 	.db 0x00
      002F29                       3292 ___str_20:
      002F29 4F 66 66              3293 	.ascii "Off"
      002F2C 00                    3294 	.db 0x00
      002F2D                       3295 ___str_21:
      002F2D 00                    3296 	.db 0x00
      002F2E                       3297 ___str_22:
      002F2E 52 65 6D 6F 74 65 20  3298 	.ascii "Remote X Action"
             58 20 41 63 74 69 6F
             6E
      002F3D 00                    3299 	.db 0x00
      002F3E                       3300 ___str_23:
      002F3E 53 61 76 65 20 53 65  3301 	.ascii "Save Settings"
             74 74 69 6E 67 73
      002F4B 00                    3302 	.db 0x00
      002F4C                       3303 ___str_24:
      002F4C 4C 6F 61 64 20 53 65  3304 	.ascii "Load Settings"
             74 74 69 6E 67 73
      002F59 00                    3305 	.db 0x00
      002F5A                       3306 ___str_25:
      002F5A 53 61 76 65 64 21     3307 	.ascii "Saved!"
      002F60 00                    3308 	.db 0x00
      002F61                       3309 ___str_26:
      002F61 4C 6F 61 64 65 64 21  3310 	.ascii "Loaded!"
      002F68 00                    3311 	.db 0x00
      002F69                       3312 ___str_27:
      002F69 44 4D 58 20 41 64 64  3313 	.ascii "DMX Address"
             72 65 73 73
      002F74 00                    3314 	.db 0x00
      002F75                       3315 ___str_28:
      002F75 44 4D 58 20 43 68 61  3316 	.ascii "DMX Channel Mode"
             6E 6E 65 6C 20 4D 6F
             64 65
      002F85 00                    3317 	.db 0x00
      002F86                       3318 ___str_29:
      002F86 57 69 6D 70 79        3319 	.ascii "Wimpy"
      002F8B 00                    3320 	.db 0x00
      002F8C                       3321 ___str_30:
      002F8C 4D 69 6C 64           3322 	.ascii "Mild"
      002F90 00                    3323 	.db 0x00
      002F91                       3324 ___str_31:
      002F91 42 6C 61 7A 69 6E     3325 	.ascii "Blazin"
      002F97 00                    3326 	.db 0x00
      002F98                       3327 ___str_32:
      002F98 52 61 69 6E 62 6F 77  3328 	.ascii "Rainbow"
      002F9F 00                    3329 	.db 0x00
      002FA0                       3330 ___str_33:
      002FA0 46 69 72 65           3331 	.ascii "Fire"
      002FA4 00                    3332 	.db 0x00
      002FA5                       3333 ___str_34:
      002FA5 57 61 74 65 72        3334 	.ascii "Water"
      002FAA 00                    3335 	.db 0x00
      002FAB                       3336 ___str_35:
      002FAB 53 74 6F 72 6D        3337 	.ascii "Storm"
      002FB0 00                    3338 	.db 0x00
      002FB1                       3339 ___str_36:
      002FB1 41 63 69 64           3340 	.ascii "Acid"
      002FB5 00                    3341 	.db 0x00
      002FB6                       3342 ___str_37:
      002FB6 45 74 68 65 72        3343 	.ascii "Ether"
      002FBB 00                    3344 	.db 0x00
      002FBC                       3345 ___str_38:
      002FBC 52 65 64 20 4C 65 76  3346 	.ascii "Red Level"
             65 6C
      002FC5 00                    3347 	.db 0x00
      002FC6                       3348 ___str_39:
      002FC6 47 72 65 65 6E 20 4C  3349 	.ascii "Green Level"
             65 76 65 6C
      002FD1 00                    3350 	.db 0x00
      002FD2                       3351 ___str_40:
      002FD2 42 6C 75 65 20 4C 65  3352 	.ascii "Blue Level"
             76 65 6C
      002FDC 00                    3353 	.db 0x00
      002FDD                       3354 ___str_41:
      002FDD 53 74 72 6F 62 65 20  3355 	.ascii "Strobe Level"
             4C 65 76 65 6C
      002FE9 00                    3356 	.db 0x00
      002FEA                       3357 ___str_42:
      002FEA 4E 6F 20 41 63 74 69  3358 	.ascii "No Action"
             6F 6E
      002FF3 00                    3359 	.db 0x00
      002FF4                       3360 ___str_43:
      002FF4 43 68 6F 6F 73 65 20  3361 	.ascii "Choose Macro"
             4D 61 63 72 6F
      003000 00                    3362 	.db 0x00
      003001                       3363 ___str_44:
      003001 52 65 64              3364 	.ascii "Red"
      003004 00                    3365 	.db 0x00
      003005                       3366 ___str_45:
      003005 59 65 6C 6C 6F 77     3367 	.ascii "Yellow"
      00300B 00                    3368 	.db 0x00
      00300C                       3369 ___str_46:
      00300C 47 72 65 65 6E        3370 	.ascii "Green"
      003011 00                    3371 	.db 0x00
      003012                       3372 ___str_47:
      003012 43 79 61 6E           3373 	.ascii "Cyan"
      003016 00                    3374 	.db 0x00
      003017                       3375 ___str_48:
      003017 42 6C 75 65           3376 	.ascii "Blue"
      00301B 00                    3377 	.db 0x00
      00301C                       3378 ___str_49:
      00301C 4D 61 67 65 6E 74 61  3379 	.ascii "Magenta"
      003023 00                    3380 	.db 0x00
      003024                       3381 ___str_50:
      003024 53 74 72 6F 62 65 20  3382 	.ascii "Strobe Slow"
             53 6C 6F 77
      00302F 00                    3383 	.db 0x00
      003030                       3384 ___str_51:
      003030 53 74 72 6F 62 65 20  3385 	.ascii "Strobe Medium"
             4D 65 64 69 75 6D
      00303D 00                    3386 	.db 0x00
      00303E                       3387 ___str_52:
      00303E 53 74 72 6F 62 65 20  3388 	.ascii "Strobe Fast"
             46 61 73 74
      003049 00                    3389 	.db 0x00
      00304A                       3390 ___str_53:
      00304A 42 6C 61 63 6B 6F 75  3391 	.ascii "Blackout"
             74
      003052 00                    3392 	.db 0x00
      003053                       3393 ___str_54:
      003053 57 68 69 74 65 6F 75  3394 	.ascii "Whiteout"
             74
      00305B 00                    3395 	.db 0x00
      00305C                       3396 ___str_55:
      00305C 53 6C 6F 74 20 31     3397 	.ascii "Slot 1"
      003062 00                    3398 	.db 0x00
      003063                       3399 ___str_56:
      003063 53 6C 6F 74 20 32     3400 	.ascii "Slot 2"
      003069 00                    3401 	.db 0x00
      00306A                       3402 ___str_57:
      00306A 53 6C 6F 74 20 33     3403 	.ascii "Slot 3"
      003070 00                    3404 	.db 0x00
      003071                       3405 ___str_58:
      003071 31 30 20 41 6C 6C     3406 	.ascii "10 All"
      003077 00                    3407 	.db 0x00
      003078                       3408 ___str_59:
      003078 33 20 46 6F 67 20 2B  3409 	.ascii "3 Fog + Macro"
             20 4D 61 63 72 6F
      003085 00                    3410 	.db 0x00
      003086                       3411 ___str_60:
      003086 31 20 46 6F 67        3412 	.ascii "1 Fog"
      00308B 00                    3413 	.db 0x00
      00308C                       3414 ___str_61:
      00308C 30 78 34 38 36 46 36  3415 	.ascii "0x486F6C6D6573"
             43 36 44 36 35 37 33
      00309A 00                    3416 	.db 0x00
      00309B                       3417 ___str_62:
      00309B 26 20 35 37 36 31 37  3418 	.ascii "& 576174736F6E"
             34 37 33 36 46 36 45
      0030A9 00                    3419 	.db 0x00
      0030AA                       3420 ___str_63:
      0030AA 36 32 36 46 37 34 36  3421 	.ascii "626F74684F776E41"
             38 34 46 37 37 36 45
             34 31
      0030BA 00                    3422 	.db 0x00
      0030BB                       3423 ___str_64:
      0030BB 35 33 36 45 36 46 37  3424 	.ascii "536E6F7762616C6C"
             37 36 32 36 31 36 43
             36 43
      0030CB 00                    3425 	.db 0x00
      0030CC                       3426 ___str_65:
      0030CC 34 44 36 46 37 32 36  3427 	.ascii "4D6F726961727479"
             39 36 31 37 32 37 34
             37 39
      0030DC 00                    3428 	.db 0x00
      0030DD                       3429 ___str_66:
      0030DD 36 34 36 46 36 35 37  3430 	.ascii "646F65734E6F74 ;"
             33 34 45 36 46 37 34
             20 3B
      0030ED 00                    3431 	.db 0x00
                                   3432 	.area XINIT   (CODE)
                                   3433 	.area CABS    (ABS,CODE)
