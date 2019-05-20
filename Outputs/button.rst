                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module button
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_adc_value
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
                                     97 	.globl _get_button_action
                                     98 ;--------------------------------------------------------
                                     99 ; special function registers
                                    100 ;--------------------------------------------------------
                                    101 	.area RSEG    (ABS,DATA)
      000000                        102 	.org 0x0000
                           0000BF   103 _CHIPCON	=	0x00bf
                           0000B7   104 _PCLKSEL	=	0x00b7
                           000080   105 _P0	=	0x0080
                           000090   106 _P1	=	0x0090
                           0000A0   107 _P2	=	0x00a0
                           0000B0   108 _P3	=	0x00b0
                           0000A8   109 _IE	=	0x00a8
                           0000E8   110 _EIE	=	0x00e8
                           000091   111 _EXIF	=	0x0091
                           0000DA   112 _ADCSEL	=	0x00da
                           0000DB   113 _ADCVAL1	=	0x00db
                           0000DC   114 _ADCVAL2	=	0x00dc
                           0000D9   115 _P1_OPT	=	0x00d9
                           000098   116 _SCON	=	0x0098
                           0000CA   117 _RCAP2L	=	0x00ca
                           0000CB   118 _RCAP2H	=	0x00cb
                           0000C8   119 _T2CON	=	0x00c8
                           00009B   120 _TH3	=	0x009b
                           00009A   121 _TL3	=	0x009a
                           000099   122 _SBUF	=	0x0099
                           0000D3   123 _PWM_EA1	=	0x00d3
                           0000D4   124 _PWM_EA2	=	0x00d4
                           0000BD   125 _PWMDATA11H	=	0x00bd
                           0000BE   126 _PWMDATA11L	=	0x00be
                           0000B5   127 _PWMDATA14H	=	0x00b5
                           0000B6   128 _PWMDATA14L	=	0x00b6
                           0000AD   129 _PWMDATA17H	=	0x00ad
                           0000AE   130 _PWMDATA17L	=	0x00ae
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008E   133 _CKCON	=	0x008e
                           00008A   134 _TL0	=	0x008a
                           00008C   135 _TH0	=	0x008c
                           0000E4   136 _IAPEN	=	0x00e4
                           0000E5   137 _IAP_ADRL	=	0x00e5
                           0000E6   138 _IAP_ADRH	=	0x00e6
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000090   152 _P1_0	=	0x0090
                           000091   153 _P1_1	=	0x0091
                           000092   154 _P1_2	=	0x0092
                           000093   155 _P1_3	=	0x0093
                           000094   156 _P1_4	=	0x0094
                           000095   157 _P1_5	=	0x0095
                           000096   158 _P1_6	=	0x0096
                           000097   159 _P1_7	=	0x0097
                           0000A0   160 _P2_0	=	0x00a0
                           0000A1   161 _P2_1	=	0x00a1
                           0000A2   162 _P2_2	=	0x00a2
                           0000A3   163 _P2_3	=	0x00a3
                           0000A4   164 _P2_4	=	0x00a4
                           0000A5   165 _P2_5	=	0x00a5
                           0000A6   166 _P2_6	=	0x00a6
                           0000A7   167 _P2_7	=	0x00a7
                           0000B0   168 _P3_0	=	0x00b0
                           0000B1   169 _P3_1	=	0x00b1
                           0000B2   170 _P3_2	=	0x00b2
                           0000B3   171 _P3_3	=	0x00b3
                           0000B4   172 _P3_4	=	0x00b4
                           0000B5   173 _P3_5	=	0x00b5
                           0000B6   174 _P3_6	=	0x00b6
                           0000B7   175 _P3_7	=	0x00b7
                           0000AF   176 _EA	=	0x00af
                           0000A9   177 _ET0	=	0x00a9
                           0000AC   178 _ES	=	0x00ac
                           000098   179 _RI	=	0x0098
                           000093   180 _SCK	=	0x0093
                           000095   181 _SER	=	0x0095
                           000092   182 _RCK	=	0x0092
                           00009F   183 _SM0	=	0x009f
                           00009E   184 _SM1	=	0x009e
                           00009D   185 _SM2	=	0x009d
                           00009C   186 _REN	=	0x009c
                           0000CD   187 _RCLK	=	0x00cd
                           0000CC   188 _TCLK	=	0x00cc
                           0000CB   189 _EXEN2	=	0x00cb
                           0000CA   190 _TR2	=	0x00ca
                           0000C9   191 _CT2	=	0x00c9
                           0000C8   192 _CPRL2	=	0x00c8
                                    193 ;--------------------------------------------------------
                                    194 ; overlayable register banks
                                    195 ;--------------------------------------------------------
                                    196 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        197 	.ds 8
                                    198 ;--------------------------------------------------------
                                    199 ; internal ram data
                                    200 ;--------------------------------------------------------
                                    201 	.area DSEG    (DATA)
      000018                        202 _get_button_action_lastAction_65536_3:
      000018                        203 	.ds 1
      000019                        204 _get_button_action_pressOK_65536_3:
      000019                        205 	.ds 1
                                    206 ;--------------------------------------------------------
                                    207 ; overlayable items in internal ram 
                                    208 ;--------------------------------------------------------
                                    209 ;--------------------------------------------------------
                                    210 ; indirectly addressable internal ram data
                                    211 ;--------------------------------------------------------
                                    212 	.area ISEG    (DATA)
                                    213 ;--------------------------------------------------------
                                    214 ; absolute internal ram data
                                    215 ;--------------------------------------------------------
                                    216 	.area IABS    (ABS,DATA)
                                    217 	.area IABS    (ABS,DATA)
                                    218 ;--------------------------------------------------------
                                    219 ; bit data
                                    220 ;--------------------------------------------------------
                                    221 	.area BSEG    (BIT)
                                    222 ;--------------------------------------------------------
                                    223 ; paged external ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area PSEG    (PAG,XDATA)
                                    226 ;--------------------------------------------------------
                                    227 ; external ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area XSEG    (XDATA)
                                    230 ;--------------------------------------------------------
                                    231 ; absolute external ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area XABS    (ABS,XDATA)
                                    234 ;--------------------------------------------------------
                                    235 ; external initialized ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area XISEG   (XDATA)
                                    238 	.area HOME    (CODE)
                                    239 	.area GSINIT0 (CODE)
                                    240 	.area GSINIT1 (CODE)
                                    241 	.area GSINIT2 (CODE)
                                    242 	.area GSINIT3 (CODE)
                                    243 	.area GSINIT4 (CODE)
                                    244 	.area GSINIT5 (CODE)
                                    245 	.area GSINIT  (CODE)
                                    246 	.area GSFINAL (CODE)
                                    247 	.area CSEG    (CODE)
                                    248 ;--------------------------------------------------------
                                    249 ; global & static initialisations
                                    250 ;--------------------------------------------------------
                                    251 	.area HOME    (CODE)
                                    252 	.area GSINIT  (CODE)
                                    253 	.area GSFINAL (CODE)
                                    254 	.area GSINIT  (CODE)
                                    255 ;------------------------------------------------------------
                                    256 ;Allocation info for local variables in function 'get_button_action'
                                    257 ;------------------------------------------------------------
                                    258 ;lastAction                Allocated with name '_get_button_action_lastAction_65536_3'
                                    259 ;pressOK                   Allocated with name '_get_button_action_pressOK_65536_3'
                                    260 ;level                     Allocated to registers r6 r7 
                                    261 ;retVal                    Allocated to registers r5 
                                    262 ;------------------------------------------------------------
                                    263 ;	../UI_Manager/Button_Manager/button.c:14: static uint8_t lastAction = BUTTON_NA;
      0000C0 75 18 00         [24]  264 	mov	_get_button_action_lastAction_65536_3,#0x00
                                    265 ;	../UI_Manager/Button_Manager/button.c:15: static uint8_t pressOK = 0;
      0000C3 75 19 00         [24]  266 	mov	_get_button_action_pressOK_65536_3,#0x00
                                    267 ;--------------------------------------------------------
                                    268 ; Home
                                    269 ;--------------------------------------------------------
                                    270 	.area HOME    (CODE)
                                    271 	.area HOME    (CODE)
                                    272 ;--------------------------------------------------------
                                    273 ; code
                                    274 ;--------------------------------------------------------
                                    275 	.area CSEG    (CODE)
                                    276 ;------------------------------------------------------------
                                    277 ;Allocation info for local variables in function 'get_button_action'
                                    278 ;------------------------------------------------------------
                                    279 ;lastAction                Allocated with name '_get_button_action_lastAction_65536_3'
                                    280 ;pressOK                   Allocated with name '_get_button_action_pressOK_65536_3'
                                    281 ;level                     Allocated to registers r6 r7 
                                    282 ;retVal                    Allocated to registers r5 
                                    283 ;------------------------------------------------------------
                                    284 ;	../UI_Manager/Button_Manager/button.c:13: uint8_t get_button_action(){
                                    285 ;	-----------------------------------------
                                    286 ;	 function get_button_action
                                    287 ;	-----------------------------------------
      00167F                        288 _get_button_action:
                           000007   289 	ar7 = 0x07
                           000006   290 	ar6 = 0x06
                           000005   291 	ar5 = 0x05
                           000004   292 	ar4 = 0x04
                           000003   293 	ar3 = 0x03
                           000002   294 	ar2 = 0x02
                           000001   295 	ar1 = 0x01
                           000000   296 	ar0 = 0x00
                                    297 ;	../UI_Manager/Button_Manager/button.c:16: uint16_t level = get_adc_value(ADC_BUTTON);
      00167F 75 82 01         [24]  298 	mov	dpl,#0x01
      001682 12 04 54         [24]  299 	lcall	_get_adc_value
      001685 AE 82            [24]  300 	mov	r6,dpl
      001687 AF 83            [24]  301 	mov	r7,dph
                                    302 ;	../UI_Manager/Button_Manager/button.c:17: uint8_t retVal = BUTTON_NA;
      001689 7D 00            [12]  303 	mov	r5,#0x00
                                    304 ;	../UI_Manager/Button_Manager/button.c:19: if(level >= BUTTON_NA_LOWER){ 
      00168B C3               [12]  305 	clr	c
      00168C EE               [12]  306 	mov	a,r6
      00168D 94 A2            [12]  307 	subb	a,#0xa2
      00168F EF               [12]  308 	mov	a,r7
      001690 94 03            [12]  309 	subb	a,#0x03
      001692 40 31            [24]  310 	jc	00109$
                                    311 ;	../UI_Manager/Button_Manager/button.c:20: if(pressOK >= PRESS_OK_COUNT && pressOK < PRESS_HOLD_COUNT){
      001694 74 F8            [12]  312 	mov	a,#0x100 - 0x08
      001696 25 19            [12]  313 	add	a,_get_button_action_pressOK_65536_3
      001698 50 25            [24]  314 	jnc	00106$
      00169A 74 17            [12]  315 	mov	a,#0x100 - 0xe9
      00169C 25 19            [12]  316 	add	a,_get_button_action_pressOK_65536_3
      00169E 40 1F            [24]  317 	jc	00106$
                                    318 ;	../UI_Manager/Button_Manager/button.c:21: switch (lastAction)
      0016A0 74 01            [12]  319 	mov	a,#0x01
      0016A2 B5 18 02         [24]  320 	cjne	a,_get_button_action_lastAction_65536_3,00474$
      0016A5 80 16            [24]  321 	sjmp	00103$
      0016A7                        322 00474$:
      0016A7 74 03            [12]  323 	mov	a,#0x03
      0016A9 B5 18 02         [24]  324 	cjne	a,_get_button_action_lastAction_65536_3,00475$
      0016AC 80 07            [24]  325 	sjmp	00101$
      0016AE                        326 00475$:
      0016AE 74 0B            [12]  327 	mov	a,#0x0b
                                    328 ;	../UI_Manager/Button_Manager/button.c:23: case BUTTON_UP:
      0016B0 B5 18 0C         [24]  329 	cjne	a,_get_button_action_lastAction_65536_3,00106$
      0016B3 80 04            [24]  330 	sjmp	00102$
      0016B5                        331 00101$:
                                    332 ;	../UI_Manager/Button_Manager/button.c:24: retVal = BUTTON_UP;
      0016B5 7D 03            [12]  333 	mov	r5,#0x03
                                    334 ;	../UI_Manager/Button_Manager/button.c:25: break;
                                    335 ;	../UI_Manager/Button_Manager/button.c:26: case BUTTON_DOWN:
      0016B7 80 06            [24]  336 	sjmp	00106$
      0016B9                        337 00102$:
                                    338 ;	../UI_Manager/Button_Manager/button.c:27: retVal = BUTTON_DOWN;
      0016B9 7D 0B            [12]  339 	mov	r5,#0x0b
                                    340 ;	../UI_Manager/Button_Manager/button.c:28: break;
                                    341 ;	../UI_Manager/Button_Manager/button.c:29: case BUTTON_TIMER:
      0016BB 80 02            [24]  342 	sjmp	00106$
      0016BD                        343 00103$:
                                    344 ;	../UI_Manager/Button_Manager/button.c:30: retVal = BUTTON_TIMER;
      0016BD 7D 01            [12]  345 	mov	r5,#0x01
                                    346 ;	../UI_Manager/Button_Manager/button.c:32: }
      0016BF                        347 00106$:
                                    348 ;	../UI_Manager/Button_Manager/button.c:34: lastAction = BUTTON_NA;
      0016BF 75 18 00         [24]  349 	mov	_get_button_action_lastAction_65536_3,#0x00
                                    350 ;	../UI_Manager/Button_Manager/button.c:35: pressOK = 0;
      0016C2 75 19 00         [24]  351 	mov	_get_button_action_pressOK_65536_3,#0x00
      0016C5                        352 00109$:
                                    353 ;	../UI_Manager/Button_Manager/button.c:43: if(level <= BUTTON_FUNCTION_UPPER && level > BUTTON_FUNCTION_LOWER){ 
      0016C5 C3               [12]  354 	clr	c
      0016C6 74 7A            [12]  355 	mov	a,#0x7a
      0016C8 9E               [12]  356 	subb	a,r6
      0016C9 74 03            [12]  357 	mov	a,#0x03
      0016CB 9F               [12]  358 	subb	a,r7
      0016CC 40 25            [24]  359 	jc	00118$
      0016CE 74 66            [12]  360 	mov	a,#0x66
      0016D0 9E               [12]  361 	subb	a,r6
      0016D1 74 03            [12]  362 	mov	a,#0x03
      0016D3 9F               [12]  363 	subb	a,r7
      0016D4 50 1D            [24]  364 	jnc	00118$
                                    365 ;	../UI_Manager/Button_Manager/button.c:44: if(lastAction == BUTTON_FUNCTION){ 
      0016D6 74 02            [12]  366 	mov	a,#0x02
      0016D8 B5 18 12         [24]  367 	cjne	a,_get_button_action_lastAction_65536_3,00115$
                                    368 ;	../UI_Manager/Button_Manager/button.c:45: if(pressOK < PRESS_OK_COUNT){
      0016DB 74 F8            [12]  369 	mov	a,#0x100 - 0x08
      0016DD 25 19            [12]  370 	add	a,_get_button_action_pressOK_65536_3
      0016DF 40 0F            [24]  371 	jc	00116$
                                    372 ;	../UI_Manager/Button_Manager/button.c:46: if(++pressOK >= PRESS_OK_COUNT){
      0016E1 05 19            [12]  373 	inc	_get_button_action_pressOK_65536_3
      0016E3 74 F8            [12]  374 	mov	a,#0x100 - 0x08
      0016E5 25 19            [12]  375 	add	a,_get_button_action_pressOK_65536_3
      0016E7 50 07            [24]  376 	jnc	00116$
                                    377 ;	../UI_Manager/Button_Manager/button.c:47: retVal = BUTTON_FUNCTION;
      0016E9 7D 02            [12]  378 	mov	r5,#0x02
      0016EB 80 03            [24]  379 	sjmp	00116$
      0016ED                        380 00115$:
                                    381 ;	../UI_Manager/Button_Manager/button.c:51: pressOK = 0;
      0016ED 75 19 00         [24]  382 	mov	_get_button_action_pressOK_65536_3,#0x00
      0016F0                        383 00116$:
                                    384 ;	../UI_Manager/Button_Manager/button.c:54: lastAction = BUTTON_FUNCTION;
      0016F0 75 18 02         [24]  385 	mov	_get_button_action_lastAction_65536_3,#0x02
      0016F3                        386 00118$:
                                    387 ;	../UI_Manager/Button_Manager/button.c:58: if(level <= BUTTON_UP_UPPER && level > BUTTON_UP_LOWER){ 
      0016F3 C3               [12]  388 	clr	c
      0016F4 74 48            [12]  389 	mov	a,#0x48
      0016F6 9E               [12]  390 	subb	a,r6
      0016F7 74 03            [12]  391 	mov	a,#0x03
      0016F9 9F               [12]  392 	subb	a,r7
      0016FA 40 29            [24]  393 	jc	00129$
      0016FC 74 2F            [12]  394 	mov	a,#0x2f
      0016FE 9E               [12]  395 	subb	a,r6
      0016FF 74 03            [12]  396 	mov	a,#0x03
      001701 9F               [12]  397 	subb	a,r7
      001702 50 21            [24]  398 	jnc	00129$
                                    399 ;	../UI_Manager/Button_Manager/button.c:59: if(lastAction == BUTTON_UP){ 
      001704 74 03            [12]  400 	mov	a,#0x03
      001706 B5 18 16         [24]  401 	cjne	a,_get_button_action_lastAction_65536_3,00126$
                                    402 ;	../UI_Manager/Button_Manager/button.c:60: if(pressOK < PRESS_HOLD_COUNT){
      001709 74 17            [12]  403 	mov	a,#0x100 - 0xe9
      00170B 25 19            [12]  404 	add	a,_get_button_action_pressOK_65536_3
      00170D 40 0C            [24]  405 	jc	00123$
                                    406 ;	../UI_Manager/Button_Manager/button.c:61: if(++pressOK >= PRESS_HOLD_COUNT){
      00170F 05 19            [12]  407 	inc	_get_button_action_pressOK_65536_3
      001711 74 17            [12]  408 	mov	a,#0x100 - 0xe9
      001713 25 19            [12]  409 	add	a,_get_button_action_pressOK_65536_3
      001715 50 0B            [24]  410 	jnc	00127$
                                    411 ;	../UI_Manager/Button_Manager/button.c:62: retVal = BUTTON_UP_HOLD;
      001717 7D 1E            [12]  412 	mov	r5,#0x1e
      001719 80 07            [24]  413 	sjmp	00127$
      00171B                        414 00123$:
                                    415 ;	../UI_Manager/Button_Manager/button.c:65: retVal = BUTTON_UP_BURST;
      00171B 7D 1F            [12]  416 	mov	r5,#0x1f
      00171D 80 03            [24]  417 	sjmp	00127$
      00171F                        418 00126$:
                                    419 ;	../UI_Manager/Button_Manager/button.c:68: pressOK = 0;
      00171F 75 19 00         [24]  420 	mov	_get_button_action_pressOK_65536_3,#0x00
      001722                        421 00127$:
                                    422 ;	../UI_Manager/Button_Manager/button.c:71: lastAction = BUTTON_UP;
      001722 75 18 03         [24]  423 	mov	_get_button_action_lastAction_65536_3,#0x03
      001725                        424 00129$:
                                    425 ;	../UI_Manager/Button_Manager/button.c:75: if(level <= BUTTON_DOWN_UPPER && level > BUTTON_DOWN_LOWER){
      001725 C3               [12]  426 	clr	c
      001726 74 AA            [12]  427 	mov	a,#0xaa
      001728 9E               [12]  428 	subb	a,r6
      001729 E4               [12]  429 	clr	a
      00172A 9F               [12]  430 	subb	a,r7
      00172B 40 28            [24]  431 	jc	00140$
      00172D 74 8C            [12]  432 	mov	a,#0x8c
      00172F 9E               [12]  433 	subb	a,r6
      001730 E4               [12]  434 	clr	a
      001731 9F               [12]  435 	subb	a,r7
      001732 50 21            [24]  436 	jnc	00140$
                                    437 ;	../UI_Manager/Button_Manager/button.c:76: if(lastAction == BUTTON_DOWN){
      001734 74 0B            [12]  438 	mov	a,#0x0b
      001736 B5 18 16         [24]  439 	cjne	a,_get_button_action_lastAction_65536_3,00137$
                                    440 ;	../UI_Manager/Button_Manager/button.c:77: if(pressOK < PRESS_HOLD_COUNT){
      001739 74 17            [12]  441 	mov	a,#0x100 - 0xe9
      00173B 25 19            [12]  442 	add	a,_get_button_action_pressOK_65536_3
      00173D 40 0C            [24]  443 	jc	00134$
                                    444 ;	../UI_Manager/Button_Manager/button.c:78: if(++pressOK >= PRESS_HOLD_COUNT){
      00173F 05 19            [12]  445 	inc	_get_button_action_pressOK_65536_3
      001741 74 17            [12]  446 	mov	a,#0x100 - 0xe9
      001743 25 19            [12]  447 	add	a,_get_button_action_pressOK_65536_3
      001745 50 0B            [24]  448 	jnc	00138$
                                    449 ;	../UI_Manager/Button_Manager/button.c:79: retVal = BUTTON_DOWN_HOLD;
      001747 7D 6E            [12]  450 	mov	r5,#0x6e
      001749 80 07            [24]  451 	sjmp	00138$
      00174B                        452 00134$:
                                    453 ;	../UI_Manager/Button_Manager/button.c:82: retVal = BUTTON_DOWN_BURST;
      00174B 7D 6F            [12]  454 	mov	r5,#0x6f
      00174D 80 03            [24]  455 	sjmp	00138$
      00174F                        456 00137$:
                                    457 ;	../UI_Manager/Button_Manager/button.c:85: pressOK = 0;
      00174F 75 19 00         [24]  458 	mov	_get_button_action_pressOK_65536_3,#0x00
      001752                        459 00138$:
                                    460 ;	../UI_Manager/Button_Manager/button.c:88: lastAction = BUTTON_DOWN;
      001752 75 18 0B         [24]  461 	mov	_get_button_action_lastAction_65536_3,#0x0b
      001755                        462 00140$:
                                    463 ;	../UI_Manager/Button_Manager/button.c:92: if(level <= BUTTON_BURST_UP_UPPER && level > BUTTON_BURST_UP_LOWER){
      001755 C3               [12]  464 	clr	c
      001756 74 76            [12]  465 	mov	a,#0x76
      001758 9E               [12]  466 	subb	a,r6
      001759 74 02            [12]  467 	mov	a,#0x02
      00175B 9F               [12]  468 	subb	a,r7
      00175C 40 25            [24]  469 	jc	00150$
      00175E 74 58            [12]  470 	mov	a,#0x58
      001760 9E               [12]  471 	subb	a,r6
      001761 74 02            [12]  472 	mov	a,#0x02
      001763 9F               [12]  473 	subb	a,r7
      001764 50 1D            [24]  474 	jnc	00150$
                                    475 ;	../UI_Manager/Button_Manager/button.c:93: if(lastAction == BUTTON_BURST_UP){ 
      001766 74 07            [12]  476 	mov	a,#0x07
      001768 B5 18 12         [24]  477 	cjne	a,_get_button_action_lastAction_65536_3,00147$
                                    478 ;	../UI_Manager/Button_Manager/button.c:94: if(pressOK < PRESS_HOLD_COUNT){
      00176B 74 17            [12]  479 	mov	a,#0x100 - 0xe9
      00176D 25 19            [12]  480 	add	a,_get_button_action_pressOK_65536_3
      00176F 40 0F            [24]  481 	jc	00148$
                                    482 ;	../UI_Manager/Button_Manager/button.c:95: if(++pressOK >= PRESS_HOLD_COUNT){
      001771 05 19            [12]  483 	inc	_get_button_action_pressOK_65536_3
      001773 74 17            [12]  484 	mov	a,#0x100 - 0xe9
      001775 25 19            [12]  485 	add	a,_get_button_action_pressOK_65536_3
      001777 50 07            [24]  486 	jnc	00148$
                                    487 ;	../UI_Manager/Button_Manager/button.c:96: retVal = BUTTON_BURST_UP;
      001779 7D 07            [12]  488 	mov	r5,#0x07
      00177B 80 03            [24]  489 	sjmp	00148$
      00177D                        490 00147$:
                                    491 ;	../UI_Manager/Button_Manager/button.c:100: pressOK = 0;
      00177D 75 19 00         [24]  492 	mov	_get_button_action_pressOK_65536_3,#0x00
      001780                        493 00148$:
                                    494 ;	../UI_Manager/Button_Manager/button.c:103: lastAction = BUTTON_BURST_UP;
      001780 75 18 07         [24]  495 	mov	_get_button_action_lastAction_65536_3,#0x07
      001783                        496 00150$:
                                    497 ;	../UI_Manager/Button_Manager/button.c:107: if(level <= BUTTON_TIMER_UPPER && level > BUTTON_TIMER_LOWER){
      001783 C3               [12]  498 	clr	c
      001784 74 98            [12]  499 	mov	a,#0x98
      001786 9E               [12]  500 	subb	a,r6
      001787 74 03            [12]  501 	mov	a,#0x03
      001789 9F               [12]  502 	subb	a,r7
      00178A 40 25            [24]  503 	jc	00160$
      00178C 74 84            [12]  504 	mov	a,#0x84
      00178E 9E               [12]  505 	subb	a,r6
      00178F 74 03            [12]  506 	mov	a,#0x03
      001791 9F               [12]  507 	subb	a,r7
      001792 50 1D            [24]  508 	jnc	00160$
                                    509 ;	../UI_Manager/Button_Manager/button.c:108: if(lastAction == BUTTON_TIMER){ 
      001794 74 01            [12]  510 	mov	a,#0x01
      001796 B5 18 12         [24]  511 	cjne	a,_get_button_action_lastAction_65536_3,00157$
                                    512 ;	../UI_Manager/Button_Manager/button.c:109: if(pressOK < PRESS_HOLD_COUNT){
      001799 74 17            [12]  513 	mov	a,#0x100 - 0xe9
      00179B 25 19            [12]  514 	add	a,_get_button_action_pressOK_65536_3
      00179D 40 0F            [24]  515 	jc	00158$
                                    516 ;	../UI_Manager/Button_Manager/button.c:110: if(++pressOK >= PRESS_HOLD_COUNT){
      00179F 05 19            [12]  517 	inc	_get_button_action_pressOK_65536_3
      0017A1 74 17            [12]  518 	mov	a,#0x100 - 0xe9
      0017A3 25 19            [12]  519 	add	a,_get_button_action_pressOK_65536_3
      0017A5 50 07            [24]  520 	jnc	00158$
                                    521 ;	../UI_Manager/Button_Manager/button.c:111: retVal = BUTTON_TIMER_HOLD;
      0017A7 7D C8            [12]  522 	mov	r5,#0xc8
      0017A9 80 03            [24]  523 	sjmp	00158$
      0017AB                        524 00157$:
                                    525 ;	../UI_Manager/Button_Manager/button.c:115: pressOK = 0;
      0017AB 75 19 00         [24]  526 	mov	_get_button_action_pressOK_65536_3,#0x00
      0017AE                        527 00158$:
                                    528 ;	../UI_Manager/Button_Manager/button.c:118: lastAction = BUTTON_TIMER;
      0017AE 75 18 01         [24]  529 	mov	_get_button_action_lastAction_65536_3,#0x01
      0017B1                        530 00160$:
                                    531 ;	../UI_Manager/Button_Manager/button.c:122: if(level <= BUTTON_MANUAL_UPPER && level > BUTTON_MANUAL_LOWER){
      0017B1 C3               [12]  532 	clr	c
      0017B2 74 12            [12]  533 	mov	a,#0x12
      0017B4 9E               [12]  534 	subb	a,r6
      0017B5 74 02            [12]  535 	mov	a,#0x02
      0017B7 9F               [12]  536 	subb	a,r7
      0017B8 40 25            [24]  537 	jc	00170$
      0017BA 74 FE            [12]  538 	mov	a,#0xfe
      0017BC 9E               [12]  539 	subb	a,r6
      0017BD 74 01            [12]  540 	mov	a,#0x01
      0017BF 9F               [12]  541 	subb	a,r7
      0017C0 50 1D            [24]  542 	jnc	00170$
                                    543 ;	../UI_Manager/Button_Manager/button.c:123: if(lastAction == BUTTON_MANUAL){ 
      0017C2 74 08            [12]  544 	mov	a,#0x08
      0017C4 B5 18 12         [24]  545 	cjne	a,_get_button_action_lastAction_65536_3,00167$
                                    546 ;	../UI_Manager/Button_Manager/button.c:124: if(pressOK < PRESS_OK_COUNT){
      0017C7 74 F8            [12]  547 	mov	a,#0x100 - 0x08
      0017C9 25 19            [12]  548 	add	a,_get_button_action_pressOK_65536_3
      0017CB 40 0F            [24]  549 	jc	00168$
                                    550 ;	../UI_Manager/Button_Manager/button.c:125: if(++pressOK >= PRESS_OK_COUNT){
      0017CD 05 19            [12]  551 	inc	_get_button_action_pressOK_65536_3
      0017CF 74 F8            [12]  552 	mov	a,#0x100 - 0x08
      0017D1 25 19            [12]  553 	add	a,_get_button_action_pressOK_65536_3
      0017D3 50 07            [24]  554 	jnc	00168$
                                    555 ;	../UI_Manager/Button_Manager/button.c:126: retVal = BUTTON_MANUAL;
      0017D5 7D 08            [12]  556 	mov	r5,#0x08
      0017D7 80 03            [24]  557 	sjmp	00168$
      0017D9                        558 00167$:
                                    559 ;	../UI_Manager/Button_Manager/button.c:130: pressOK = 0;
      0017D9 75 19 00         [24]  560 	mov	_get_button_action_pressOK_65536_3,#0x00
      0017DC                        561 00168$:
                                    562 ;	../UI_Manager/Button_Manager/button.c:133: lastAction = BUTTON_MANUAL;
      0017DC 75 18 08         [24]  563 	mov	_get_button_action_lastAction_65536_3,#0x08
      0017DF                        564 00170$:
                                    565 ;	../UI_Manager/Button_Manager/button.c:137: if(level <= BUTTON_BURST_UPPER && level > BUTTON_BURST_LOWER){
      0017DF C3               [12]  566 	clr	c
      0017E0 74 C6            [12]  567 	mov	a,#0xc6
      0017E2 9E               [12]  568 	subb	a,r6
      0017E3 74 02            [12]  569 	mov	a,#0x02
      0017E5 9F               [12]  570 	subb	a,r7
      0017E6 40 29            [24]  571 	jc	00181$
      0017E8 74 A8            [12]  572 	mov	a,#0xa8
      0017EA 9E               [12]  573 	subb	a,r6
      0017EB 74 02            [12]  574 	mov	a,#0x02
      0017ED 9F               [12]  575 	subb	a,r7
      0017EE 50 21            [24]  576 	jnc	00181$
                                    577 ;	../UI_Manager/Button_Manager/button.c:138: if(lastAction == BUTTON_BURST){ 
      0017F0 74 05            [12]  578 	mov	a,#0x05
      0017F2 B5 18 16         [24]  579 	cjne	a,_get_button_action_lastAction_65536_3,00178$
                                    580 ;	../UI_Manager/Button_Manager/button.c:139: if(pressOK < PRESS_OK_COUNT){
      0017F5 74 F8            [12]  581 	mov	a,#0x100 - 0x08
      0017F7 25 19            [12]  582 	add	a,_get_button_action_pressOK_65536_3
      0017F9 40 0C            [24]  583 	jc	00175$
                                    584 ;	../UI_Manager/Button_Manager/button.c:140: if(++pressOK >= PRESS_OK_COUNT){
      0017FB 05 19            [12]  585 	inc	_get_button_action_pressOK_65536_3
      0017FD 74 F8            [12]  586 	mov	a,#0x100 - 0x08
      0017FF 25 19            [12]  587 	add	a,_get_button_action_pressOK_65536_3
      001801 50 0B            [24]  588 	jnc	00179$
                                    589 ;	../UI_Manager/Button_Manager/button.c:141: retVal = BUTTON_BURST;
      001803 7D 05            [12]  590 	mov	r5,#0x05
      001805 80 07            [24]  591 	sjmp	00179$
      001807                        592 00175$:
                                    593 ;	../UI_Manager/Button_Manager/button.c:144: retVal = BUTTON_BURST;
      001807 7D 05            [12]  594 	mov	r5,#0x05
      001809 80 03            [24]  595 	sjmp	00179$
      00180B                        596 00178$:
                                    597 ;	../UI_Manager/Button_Manager/button.c:147: pressOK = 0;
      00180B 75 19 00         [24]  598 	mov	_get_button_action_pressOK_65536_3,#0x00
      00180E                        599 00179$:
                                    600 ;	../UI_Manager/Button_Manager/button.c:150: lastAction = BUTTON_BURST;
      00180E 75 18 05         [24]  601 	mov	_get_button_action_lastAction_65536_3,#0x05
      001811                        602 00181$:
                                    603 ;	../UI_Manager/Button_Manager/button.c:154: if(level <= BUTTON_FUN_MAN_UPPER && level > BUTTON_FUN_MAN_LOWER){
      001811 C3               [12]  604 	clr	c
      001812 74 EA            [12]  605 	mov	a,#0xea
      001814 9E               [12]  606 	subb	a,r6
      001815 74 01            [12]  607 	mov	a,#0x01
      001817 9F               [12]  608 	subb	a,r7
      001818 40 25            [24]  609 	jc	00191$
      00181A 74 CC            [12]  610 	mov	a,#0xcc
      00181C 9E               [12]  611 	subb	a,r6
      00181D 74 01            [12]  612 	mov	a,#0x01
      00181F 9F               [12]  613 	subb	a,r7
      001820 50 1D            [24]  614 	jnc	00191$
                                    615 ;	../UI_Manager/Button_Manager/button.c:155: if(lastAction == BUTTON_FUN_MAN){ 
      001822 74 09            [12]  616 	mov	a,#0x09
      001824 B5 18 12         [24]  617 	cjne	a,_get_button_action_lastAction_65536_3,00188$
                                    618 ;	../UI_Manager/Button_Manager/button.c:156: if(pressOK < PRESS_HOLD_COUNT){
      001827 74 17            [12]  619 	mov	a,#0x100 - 0xe9
      001829 25 19            [12]  620 	add	a,_get_button_action_pressOK_65536_3
      00182B 40 0F            [24]  621 	jc	00189$
                                    622 ;	../UI_Manager/Button_Manager/button.c:157: if(++pressOK >= PRESS_HOLD_COUNT){
      00182D 05 19            [12]  623 	inc	_get_button_action_pressOK_65536_3
      00182F 74 17            [12]  624 	mov	a,#0x100 - 0xe9
      001831 25 19            [12]  625 	add	a,_get_button_action_pressOK_65536_3
      001833 50 07            [24]  626 	jnc	00189$
                                    627 ;	../UI_Manager/Button_Manager/button.c:158: retVal = BUTTON_FUN_MAN;
      001835 7D 09            [12]  628 	mov	r5,#0x09
      001837 80 03            [24]  629 	sjmp	00189$
      001839                        630 00188$:
                                    631 ;	../UI_Manager/Button_Manager/button.c:162: pressOK = 0;
      001839 75 19 00         [24]  632 	mov	_get_button_action_pressOK_65536_3,#0x00
      00183C                        633 00189$:
                                    634 ;	../UI_Manager/Button_Manager/button.c:165: lastAction = BUTTON_FUN_MAN;
      00183C 75 18 09         [24]  635 	mov	_get_button_action_lastAction_65536_3,#0x09
      00183F                        636 00191$:
                                    637 ;	../UI_Manager/Button_Manager/button.c:169: if(level <= BUTTON_MAN_BURST_UPPER && level > BUTTON_MAN_BURST_LOWER){
      00183F C3               [12]  638 	clr	c
      001840 74 B8            [12]  639 	mov	a,#0xb8
      001842 9E               [12]  640 	subb	a,r6
      001843 74 01            [12]  641 	mov	a,#0x01
      001845 9F               [12]  642 	subb	a,r7
      001846 40 29            [24]  643 	jc	00202$
      001848 74 A4            [12]  644 	mov	a,#0xa4
      00184A 9E               [12]  645 	subb	a,r6
      00184B 74 01            [12]  646 	mov	a,#0x01
      00184D 9F               [12]  647 	subb	a,r7
      00184E 50 21            [24]  648 	jnc	00202$
                                    649 ;	../UI_Manager/Button_Manager/button.c:170: if(lastAction == BUTTON_MAN_BURST){ 
      001850 74 0A            [12]  650 	mov	a,#0x0a
      001852 B5 18 16         [24]  651 	cjne	a,_get_button_action_lastAction_65536_3,00199$
                                    652 ;	../UI_Manager/Button_Manager/button.c:171: if(pressOK < PRESS_HOLD_COUNT){
      001855 74 17            [12]  653 	mov	a,#0x100 - 0xe9
      001857 25 19            [12]  654 	add	a,_get_button_action_pressOK_65536_3
      001859 40 0C            [24]  655 	jc	00196$
                                    656 ;	../UI_Manager/Button_Manager/button.c:172: if(++pressOK >= PRESS_HOLD_COUNT){
      00185B 05 19            [12]  657 	inc	_get_button_action_pressOK_65536_3
      00185D 74 17            [12]  658 	mov	a,#0x100 - 0xe9
      00185F 25 19            [12]  659 	add	a,_get_button_action_pressOK_65536_3
      001861 50 0B            [24]  660 	jnc	00200$
                                    661 ;	../UI_Manager/Button_Manager/button.c:173: retVal = BUTTON_MAN_BURST;
      001863 7D 0A            [12]  662 	mov	r5,#0x0a
      001865 80 07            [24]  663 	sjmp	00200$
      001867                        664 00196$:
                                    665 ;	../UI_Manager/Button_Manager/button.c:176: retVal = BUTTON_MAN_BURST;
      001867 7D 0A            [12]  666 	mov	r5,#0x0a
      001869 80 03            [24]  667 	sjmp	00200$
      00186B                        668 00199$:
                                    669 ;	../UI_Manager/Button_Manager/button.c:179: pressOK = 0;
      00186B 75 19 00         [24]  670 	mov	_get_button_action_pressOK_65536_3,#0x00
      00186E                        671 00200$:
                                    672 ;	../UI_Manager/Button_Manager/button.c:182: lastAction = BUTTON_MAN_BURST;
      00186E 75 18 0A         [24]  673 	mov	_get_button_action_lastAction_65536_3,#0x0a
      001871                        674 00202$:
                                    675 ;	../UI_Manager/Button_Manager/button.c:186: if(level <= BUTTON_FUN_TIME_UPPER && level > BUTTON_FUN_TIME_LOWER){
      001871 C3               [12]  676 	clr	c
      001872 74 2A            [12]  677 	mov	a,#0x2a
      001874 9E               [12]  678 	subb	a,r6
      001875 74 03            [12]  679 	mov	a,#0x03
      001877 9F               [12]  680 	subb	a,r7
      001878 40 25            [24]  681 	jc	00212$
      00187A 74 16            [12]  682 	mov	a,#0x16
      00187C 9E               [12]  683 	subb	a,r6
      00187D 74 03            [12]  684 	mov	a,#0x03
      00187F 9F               [12]  685 	subb	a,r7
      001880 50 1D            [24]  686 	jnc	00212$
                                    687 ;	../UI_Manager/Button_Manager/button.c:187: if(lastAction == BUTTON_FUN_TIME){ 
      001882 74 04            [12]  688 	mov	a,#0x04
      001884 B5 18 12         [24]  689 	cjne	a,_get_button_action_lastAction_65536_3,00209$
                                    690 ;	../UI_Manager/Button_Manager/button.c:188: if(pressOK < PRESS_OK_COUNT){
      001887 74 F8            [12]  691 	mov	a,#0x100 - 0x08
      001889 25 19            [12]  692 	add	a,_get_button_action_pressOK_65536_3
      00188B 40 0F            [24]  693 	jc	00210$
                                    694 ;	../UI_Manager/Button_Manager/button.c:189: if(++pressOK >= PRESS_OK_COUNT){
      00188D 05 19            [12]  695 	inc	_get_button_action_pressOK_65536_3
      00188F 74 F8            [12]  696 	mov	a,#0x100 - 0x08
      001891 25 19            [12]  697 	add	a,_get_button_action_pressOK_65536_3
      001893 50 07            [24]  698 	jnc	00210$
                                    699 ;	../UI_Manager/Button_Manager/button.c:190: retVal = BUTTON_FUN_TIME;
      001895 7D 04            [12]  700 	mov	r5,#0x04
      001897 80 03            [24]  701 	sjmp	00210$
      001899                        702 00209$:
                                    703 ;	../UI_Manager/Button_Manager/button.c:194: pressOK = 0;
      001899 75 19 00         [24]  704 	mov	_get_button_action_pressOK_65536_3,#0x00
      00189C                        705 00210$:
                                    706 ;	../UI_Manager/Button_Manager/button.c:197: lastAction = BUTTON_FUN_TIME;
      00189C 75 18 04         [24]  707 	mov	_get_button_action_lastAction_65536_3,#0x04
      00189F                        708 00212$:
                                    709 ;	../UI_Manager/Button_Manager/button.c:201: if(level <= BUTTON_FUN_BURST_UPPER && level > BUTTON_FUN_BURST_LOWER){
      00189F C3               [12]  710 	clr	c
      0018A0 74 8A            [12]  711 	mov	a,#0x8a
      0018A2 9E               [12]  712 	subb	a,r6
      0018A3 74 02            [12]  713 	mov	a,#0x02
      0018A5 9F               [12]  714 	subb	a,r7
      0018A6 40 29            [24]  715 	jc	00223$
      0018A8 74 76            [12]  716 	mov	a,#0x76
      0018AA 9E               [12]  717 	subb	a,r6
      0018AB 74 02            [12]  718 	mov	a,#0x02
      0018AD 9F               [12]  719 	subb	a,r7
      0018AE 50 21            [24]  720 	jnc	00223$
                                    721 ;	../UI_Manager/Button_Manager/button.c:202: if(lastAction == BUTTON_FUN_BURST){ 
      0018B0 74 06            [12]  722 	mov	a,#0x06
      0018B2 B5 18 16         [24]  723 	cjne	a,_get_button_action_lastAction_65536_3,00220$
                                    724 ;	../UI_Manager/Button_Manager/button.c:203: if(pressOK < PRESS_OK_COUNT){
      0018B5 74 F8            [12]  725 	mov	a,#0x100 - 0x08
      0018B7 25 19            [12]  726 	add	a,_get_button_action_pressOK_65536_3
      0018B9 40 0C            [24]  727 	jc	00217$
                                    728 ;	../UI_Manager/Button_Manager/button.c:204: if(++pressOK >= PRESS_OK_COUNT){
      0018BB 05 19            [12]  729 	inc	_get_button_action_pressOK_65536_3
      0018BD 74 F8            [12]  730 	mov	a,#0x100 - 0x08
      0018BF 25 19            [12]  731 	add	a,_get_button_action_pressOK_65536_3
      0018C1 50 0B            [24]  732 	jnc	00221$
                                    733 ;	../UI_Manager/Button_Manager/button.c:205: retVal = BUTTON_FUN_BURST;
      0018C3 7D 06            [12]  734 	mov	r5,#0x06
      0018C5 80 07            [24]  735 	sjmp	00221$
      0018C7                        736 00217$:
                                    737 ;	../UI_Manager/Button_Manager/button.c:208: retVal = BUTTON_FUN_BURST;
      0018C7 7D 06            [12]  738 	mov	r5,#0x06
      0018C9 80 03            [24]  739 	sjmp	00221$
      0018CB                        740 00220$:
                                    741 ;	../UI_Manager/Button_Manager/button.c:211: pressOK = 0;
      0018CB 75 19 00         [24]  742 	mov	_get_button_action_pressOK_65536_3,#0x00
      0018CE                        743 00221$:
                                    744 ;	../UI_Manager/Button_Manager/button.c:214: lastAction = BUTTON_FUN_BURST;
      0018CE 75 18 06         [24]  745 	mov	_get_button_action_lastAction_65536_3,#0x06
      0018D1                        746 00223$:
                                    747 ;	../UI_Manager/Button_Manager/button.c:217: return retVal;
      0018D1 8D 82            [24]  748 	mov	dpl,r5
                                    749 ;	../UI_Manager/Button_Manager/button.c:218: }
      0018D3 22               [24]  750 	ret
                                    751 	.area CSEG    (CODE)
                                    752 	.area CONST   (CODE)
                                    753 	.area XINIT   (CODE)
                                    754 	.area CABS    (ABS,CODE)
