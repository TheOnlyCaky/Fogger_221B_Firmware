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
      001622                        288 _get_button_action:
                           000007   289 	ar7 = 0x07
                           000006   290 	ar6 = 0x06
                           000005   291 	ar5 = 0x05
                           000004   292 	ar4 = 0x04
                           000003   293 	ar3 = 0x03
                           000002   294 	ar2 = 0x02
                           000001   295 	ar1 = 0x01
                           000000   296 	ar0 = 0x00
                                    297 ;	../UI_Manager/Button_Manager/button.c:16: uint16_t level = get_adc_value(ADC_BUTTON);
      001622 75 82 01         [24]  298 	mov	dpl,#0x01
      001625 12 04 54         [24]  299 	lcall	_get_adc_value
      001628 AE 82            [24]  300 	mov	r6,dpl
      00162A AF 83            [24]  301 	mov	r7,dph
                                    302 ;	../UI_Manager/Button_Manager/button.c:17: uint8_t retVal = BUTTON_NA;
      00162C 7D 00            [12]  303 	mov	r5,#0x00
                                    304 ;	../UI_Manager/Button_Manager/button.c:19: if(level >= BUTTON_NA_LOWER){ 
      00162E C3               [12]  305 	clr	c
      00162F EE               [12]  306 	mov	a,r6
      001630 94 A2            [12]  307 	subb	a,#0xa2
      001632 EF               [12]  308 	mov	a,r7
      001633 94 03            [12]  309 	subb	a,#0x03
      001635 40 26            [24]  310 	jc	00108$
                                    311 ;	../UI_Manager/Button_Manager/button.c:20: if(pressOK >= PRESS_OK_COUNT && pressOK < PRESS_HOLD_COUNT){
      001637 74 FD            [12]  312 	mov	a,#0x100 - 0x03
      001639 25 19            [12]  313 	add	a,_get_button_action_pressOK_65536_3
      00163B 50 1A            [24]  314 	jnc	00105$
      00163D 74 DE            [12]  315 	mov	a,#0x100 - 0x22
      00163F 25 19            [12]  316 	add	a,_get_button_action_pressOK_65536_3
      001641 40 14            [24]  317 	jc	00105$
                                    318 ;	../UI_Manager/Button_Manager/button.c:21: switch (lastAction)
      001643 74 03            [12]  319 	mov	a,#0x03
      001645 B5 18 02         [24]  320 	cjne	a,_get_button_action_lastAction_65536_3,00468$
      001648 80 07            [24]  321 	sjmp	00101$
      00164A                        322 00468$:
      00164A 74 0A            [12]  323 	mov	a,#0x0a
                                    324 ;	../UI_Manager/Button_Manager/button.c:23: case BUTTON_UP:
      00164C B5 18 08         [24]  325 	cjne	a,_get_button_action_lastAction_65536_3,00105$
      00164F 80 04            [24]  326 	sjmp	00102$
      001651                        327 00101$:
                                    328 ;	../UI_Manager/Button_Manager/button.c:24: retVal = BUTTON_UP;
      001651 7D 03            [12]  329 	mov	r5,#0x03
                                    330 ;	../UI_Manager/Button_Manager/button.c:25: break;
                                    331 ;	../UI_Manager/Button_Manager/button.c:26: case BUTTON_DOWN:
      001653 80 02            [24]  332 	sjmp	00105$
      001655                        333 00102$:
                                    334 ;	../UI_Manager/Button_Manager/button.c:27: retVal = BUTTON_DOWN;
      001655 7D 0A            [12]  335 	mov	r5,#0x0a
                                    336 ;	../UI_Manager/Button_Manager/button.c:29: }
      001657                        337 00105$:
                                    338 ;	../UI_Manager/Button_Manager/button.c:31: lastAction = BUTTON_NA;
      001657 75 18 00         [24]  339 	mov	_get_button_action_lastAction_65536_3,#0x00
                                    340 ;	../UI_Manager/Button_Manager/button.c:32: pressOK = 0;
      00165A 75 19 00         [24]  341 	mov	_get_button_action_pressOK_65536_3,#0x00
      00165D                        342 00108$:
                                    343 ;	../UI_Manager/Button_Manager/button.c:40: if(level <= BUTTON_FUNCTION_UPPER && level > BUTTON_FUNCTION_LOWER){ 
      00165D C3               [12]  344 	clr	c
      00165E 74 7A            [12]  345 	mov	a,#0x7a
      001660 9E               [12]  346 	subb	a,r6
      001661 74 03            [12]  347 	mov	a,#0x03
      001663 9F               [12]  348 	subb	a,r7
      001664 40 25            [24]  349 	jc	00117$
      001666 74 66            [12]  350 	mov	a,#0x66
      001668 9E               [12]  351 	subb	a,r6
      001669 74 03            [12]  352 	mov	a,#0x03
      00166B 9F               [12]  353 	subb	a,r7
      00166C 50 1D            [24]  354 	jnc	00117$
                                    355 ;	../UI_Manager/Button_Manager/button.c:41: if(lastAction == BUTTON_FUNCTION){ 
      00166E 74 02            [12]  356 	mov	a,#0x02
      001670 B5 18 12         [24]  357 	cjne	a,_get_button_action_lastAction_65536_3,00114$
                                    358 ;	../UI_Manager/Button_Manager/button.c:42: if(pressOK < PRESS_OK_COUNT){
      001673 74 FD            [12]  359 	mov	a,#0x100 - 0x03
      001675 25 19            [12]  360 	add	a,_get_button_action_pressOK_65536_3
      001677 40 0F            [24]  361 	jc	00115$
                                    362 ;	../UI_Manager/Button_Manager/button.c:43: if(++pressOK >= PRESS_OK_COUNT){
      001679 05 19            [12]  363 	inc	_get_button_action_pressOK_65536_3
      00167B 74 FD            [12]  364 	mov	a,#0x100 - 0x03
      00167D 25 19            [12]  365 	add	a,_get_button_action_pressOK_65536_3
      00167F 50 07            [24]  366 	jnc	00115$
                                    367 ;	../UI_Manager/Button_Manager/button.c:44: retVal = BUTTON_FUNCTION;
      001681 7D 02            [12]  368 	mov	r5,#0x02
      001683 80 03            [24]  369 	sjmp	00115$
      001685                        370 00114$:
                                    371 ;	../UI_Manager/Button_Manager/button.c:48: pressOK = 0;
      001685 75 19 00         [24]  372 	mov	_get_button_action_pressOK_65536_3,#0x00
      001688                        373 00115$:
                                    374 ;	../UI_Manager/Button_Manager/button.c:51: lastAction = BUTTON_FUNCTION;
      001688 75 18 02         [24]  375 	mov	_get_button_action_lastAction_65536_3,#0x02
      00168B                        376 00117$:
                                    377 ;	../UI_Manager/Button_Manager/button.c:55: if(level <= BUTTON_UP_UPPER && level > BUTTON_UP_LOWER){ 
      00168B C3               [12]  378 	clr	c
      00168C 74 48            [12]  379 	mov	a,#0x48
      00168E 9E               [12]  380 	subb	a,r6
      00168F 74 03            [12]  381 	mov	a,#0x03
      001691 9F               [12]  382 	subb	a,r7
      001692 40 29            [24]  383 	jc	00128$
      001694 74 2F            [12]  384 	mov	a,#0x2f
      001696 9E               [12]  385 	subb	a,r6
      001697 74 03            [12]  386 	mov	a,#0x03
      001699 9F               [12]  387 	subb	a,r7
      00169A 50 21            [24]  388 	jnc	00128$
                                    389 ;	../UI_Manager/Button_Manager/button.c:56: if(lastAction == BUTTON_UP){ 
      00169C 74 03            [12]  390 	mov	a,#0x03
      00169E B5 18 16         [24]  391 	cjne	a,_get_button_action_lastAction_65536_3,00125$
                                    392 ;	../UI_Manager/Button_Manager/button.c:57: if(pressOK < PRESS_HOLD_COUNT){
      0016A1 74 DE            [12]  393 	mov	a,#0x100 - 0x22
      0016A3 25 19            [12]  394 	add	a,_get_button_action_pressOK_65536_3
      0016A5 40 0C            [24]  395 	jc	00122$
                                    396 ;	../UI_Manager/Button_Manager/button.c:58: if(++pressOK >= PRESS_HOLD_COUNT){
      0016A7 05 19            [12]  397 	inc	_get_button_action_pressOK_65536_3
      0016A9 74 DE            [12]  398 	mov	a,#0x100 - 0x22
      0016AB 25 19            [12]  399 	add	a,_get_button_action_pressOK_65536_3
      0016AD 50 0B            [24]  400 	jnc	00126$
                                    401 ;	../UI_Manager/Button_Manager/button.c:59: retVal = BUTTON_UP_HOLD;
      0016AF 7D 1E            [12]  402 	mov	r5,#0x1e
      0016B1 80 07            [24]  403 	sjmp	00126$
      0016B3                        404 00122$:
                                    405 ;	../UI_Manager/Button_Manager/button.c:62: retVal = BUTTON_UP_BURST;
      0016B3 7D 1F            [12]  406 	mov	r5,#0x1f
      0016B5 80 03            [24]  407 	sjmp	00126$
      0016B7                        408 00125$:
                                    409 ;	../UI_Manager/Button_Manager/button.c:65: pressOK = 0;
      0016B7 75 19 00         [24]  410 	mov	_get_button_action_pressOK_65536_3,#0x00
      0016BA                        411 00126$:
                                    412 ;	../UI_Manager/Button_Manager/button.c:68: lastAction = BUTTON_UP;
      0016BA 75 18 03         [24]  413 	mov	_get_button_action_lastAction_65536_3,#0x03
      0016BD                        414 00128$:
                                    415 ;	../UI_Manager/Button_Manager/button.c:72: if(level <= BUTTON_DOWN_UPPER && level > BUTTON_DOWN_LOWER){
      0016BD C3               [12]  416 	clr	c
      0016BE 74 AA            [12]  417 	mov	a,#0xaa
      0016C0 9E               [12]  418 	subb	a,r6
      0016C1 E4               [12]  419 	clr	a
      0016C2 9F               [12]  420 	subb	a,r7
      0016C3 40 28            [24]  421 	jc	00139$
      0016C5 74 8C            [12]  422 	mov	a,#0x8c
      0016C7 9E               [12]  423 	subb	a,r6
      0016C8 E4               [12]  424 	clr	a
      0016C9 9F               [12]  425 	subb	a,r7
      0016CA 50 21            [24]  426 	jnc	00139$
                                    427 ;	../UI_Manager/Button_Manager/button.c:73: if(lastAction == BUTTON_DOWN){
      0016CC 74 0A            [12]  428 	mov	a,#0x0a
      0016CE B5 18 16         [24]  429 	cjne	a,_get_button_action_lastAction_65536_3,00136$
                                    430 ;	../UI_Manager/Button_Manager/button.c:74: if(pressOK < PRESS_HOLD_COUNT){
      0016D1 74 DE            [12]  431 	mov	a,#0x100 - 0x22
      0016D3 25 19            [12]  432 	add	a,_get_button_action_pressOK_65536_3
      0016D5 40 0C            [24]  433 	jc	00133$
                                    434 ;	../UI_Manager/Button_Manager/button.c:75: if(++pressOK >= PRESS_HOLD_COUNT){
      0016D7 05 19            [12]  435 	inc	_get_button_action_pressOK_65536_3
      0016D9 74 DE            [12]  436 	mov	a,#0x100 - 0x22
      0016DB 25 19            [12]  437 	add	a,_get_button_action_pressOK_65536_3
      0016DD 50 0B            [24]  438 	jnc	00137$
                                    439 ;	../UI_Manager/Button_Manager/button.c:76: retVal = BUTTON_DOWN_HOLD;
      0016DF 7D 64            [12]  440 	mov	r5,#0x64
      0016E1 80 07            [24]  441 	sjmp	00137$
      0016E3                        442 00133$:
                                    443 ;	../UI_Manager/Button_Manager/button.c:79: retVal = BUTTON_DOWN_BURST;
      0016E3 7D 65            [12]  444 	mov	r5,#0x65
      0016E5 80 03            [24]  445 	sjmp	00137$
      0016E7                        446 00136$:
                                    447 ;	../UI_Manager/Button_Manager/button.c:82: pressOK = 0;
      0016E7 75 19 00         [24]  448 	mov	_get_button_action_pressOK_65536_3,#0x00
      0016EA                        449 00137$:
                                    450 ;	../UI_Manager/Button_Manager/button.c:85: lastAction = BUTTON_DOWN;
      0016EA 75 18 0A         [24]  451 	mov	_get_button_action_lastAction_65536_3,#0x0a
      0016ED                        452 00139$:
                                    453 ;	../UI_Manager/Button_Manager/button.c:89: if(level <= BUTTON_FUN_UP_UPPER && level > BUTTON_FUN_UP_LOWER){
      0016ED C3               [12]  454 	clr	c
      0016EE 74 01            [12]  455 	mov	a,#0x01
      0016F0 9E               [12]  456 	subb	a,r6
      0016F1 E4               [12]  457 	clr	a
      0016F2 9F               [12]  458 	subb	a,r7
      0016F3 40 21            [24]  459 	jc	00149$
      0016F5 EE               [12]  460 	mov	a,r6
      0016F6 4F               [12]  461 	orl	a,r7
      0016F7 60 1D            [24]  462 	jz	00149$
                                    463 ;	../UI_Manager/Button_Manager/button.c:90: if(lastAction == BUTTON_FUN_UP){ 
      0016F9 74 0C            [12]  464 	mov	a,#0x0c
      0016FB B5 18 12         [24]  465 	cjne	a,_get_button_action_lastAction_65536_3,00146$
                                    466 ;	../UI_Manager/Button_Manager/button.c:91: if(pressOK < PRESS_OK_COUNT){
      0016FE 74 FD            [12]  467 	mov	a,#0x100 - 0x03
      001700 25 19            [12]  468 	add	a,_get_button_action_pressOK_65536_3
      001702 40 0F            [24]  469 	jc	00147$
                                    470 ;	../UI_Manager/Button_Manager/button.c:92: if(++pressOK >= PRESS_OK_COUNT){
      001704 05 19            [12]  471 	inc	_get_button_action_pressOK_65536_3
      001706 74 FD            [12]  472 	mov	a,#0x100 - 0x03
      001708 25 19            [12]  473 	add	a,_get_button_action_pressOK_65536_3
      00170A 50 07            [24]  474 	jnc	00147$
                                    475 ;	../UI_Manager/Button_Manager/button.c:93: retVal = BUTTON_FUN_UP;
      00170C 7D 0C            [12]  476 	mov	r5,#0x0c
      00170E 80 03            [24]  477 	sjmp	00147$
      001710                        478 00146$:
                                    479 ;	../UI_Manager/Button_Manager/button.c:97: pressOK = 0;
      001710 75 19 00         [24]  480 	mov	_get_button_action_pressOK_65536_3,#0x00
      001713                        481 00147$:
                                    482 ;	../UI_Manager/Button_Manager/button.c:100: lastAction = BUTTON_FUN_UP;
      001713 75 18 0C         [24]  483 	mov	_get_button_action_lastAction_65536_3,#0x0c
      001716                        484 00149$:
                                    485 ;	../UI_Manager/Button_Manager/button.c:104: if(level <= BUTTON_TIMER_UPPER && level > BUTTON_TIMER_LOWER){
      001716 C3               [12]  486 	clr	c
      001717 74 98            [12]  487 	mov	a,#0x98
      001719 9E               [12]  488 	subb	a,r6
      00171A 74 03            [12]  489 	mov	a,#0x03
      00171C 9F               [12]  490 	subb	a,r7
      00171D 40 25            [24]  491 	jc	00159$
      00171F 74 84            [12]  492 	mov	a,#0x84
      001721 9E               [12]  493 	subb	a,r6
      001722 74 03            [12]  494 	mov	a,#0x03
      001724 9F               [12]  495 	subb	a,r7
      001725 50 1D            [24]  496 	jnc	00159$
                                    497 ;	../UI_Manager/Button_Manager/button.c:105: if(lastAction == BUTTON_TIMER){ 
      001727 74 01            [12]  498 	mov	a,#0x01
      001729 B5 18 12         [24]  499 	cjne	a,_get_button_action_lastAction_65536_3,00156$
                                    500 ;	../UI_Manager/Button_Manager/button.c:106: if(pressOK < PRESS_OK_COUNT){
      00172C 74 FD            [12]  501 	mov	a,#0x100 - 0x03
      00172E 25 19            [12]  502 	add	a,_get_button_action_pressOK_65536_3
      001730 40 0F            [24]  503 	jc	00157$
                                    504 ;	../UI_Manager/Button_Manager/button.c:107: if(++pressOK >= PRESS_OK_COUNT){
      001732 05 19            [12]  505 	inc	_get_button_action_pressOK_65536_3
      001734 74 FD            [12]  506 	mov	a,#0x100 - 0x03
      001736 25 19            [12]  507 	add	a,_get_button_action_pressOK_65536_3
      001738 50 07            [24]  508 	jnc	00157$
                                    509 ;	../UI_Manager/Button_Manager/button.c:108: retVal = BUTTON_TIMER;
      00173A 7D 01            [12]  510 	mov	r5,#0x01
      00173C 80 03            [24]  511 	sjmp	00157$
      00173E                        512 00156$:
                                    513 ;	../UI_Manager/Button_Manager/button.c:112: pressOK = 0;
      00173E 75 19 00         [24]  514 	mov	_get_button_action_pressOK_65536_3,#0x00
      001741                        515 00157$:
                                    516 ;	../UI_Manager/Button_Manager/button.c:115: lastAction = BUTTON_TIMER;
      001741 75 18 01         [24]  517 	mov	_get_button_action_lastAction_65536_3,#0x01
      001744                        518 00159$:
                                    519 ;	../UI_Manager/Button_Manager/button.c:119: if(level <= BUTTON_MANUAL_UPPER && level > BUTTON_MANUAL_LOWER){
      001744 C3               [12]  520 	clr	c
      001745 74 12            [12]  521 	mov	a,#0x12
      001747 9E               [12]  522 	subb	a,r6
      001748 74 02            [12]  523 	mov	a,#0x02
      00174A 9F               [12]  524 	subb	a,r7
      00174B 40 25            [24]  525 	jc	00169$
      00174D 74 FE            [12]  526 	mov	a,#0xfe
      00174F 9E               [12]  527 	subb	a,r6
      001750 74 01            [12]  528 	mov	a,#0x01
      001752 9F               [12]  529 	subb	a,r7
      001753 50 1D            [24]  530 	jnc	00169$
                                    531 ;	../UI_Manager/Button_Manager/button.c:120: if(lastAction == BUTTON_MANUAL){ 
      001755 74 07            [12]  532 	mov	a,#0x07
      001757 B5 18 12         [24]  533 	cjne	a,_get_button_action_lastAction_65536_3,00166$
                                    534 ;	../UI_Manager/Button_Manager/button.c:121: if(pressOK < PRESS_OK_COUNT){
      00175A 74 FD            [12]  535 	mov	a,#0x100 - 0x03
      00175C 25 19            [12]  536 	add	a,_get_button_action_pressOK_65536_3
      00175E 40 0F            [24]  537 	jc	00167$
                                    538 ;	../UI_Manager/Button_Manager/button.c:122: if(++pressOK >= PRESS_OK_COUNT){
      001760 05 19            [12]  539 	inc	_get_button_action_pressOK_65536_3
      001762 74 FD            [12]  540 	mov	a,#0x100 - 0x03
      001764 25 19            [12]  541 	add	a,_get_button_action_pressOK_65536_3
      001766 50 07            [24]  542 	jnc	00167$
                                    543 ;	../UI_Manager/Button_Manager/button.c:123: retVal = BUTTON_MANUAL;
      001768 7D 07            [12]  544 	mov	r5,#0x07
      00176A 80 03            [24]  545 	sjmp	00167$
      00176C                        546 00166$:
                                    547 ;	../UI_Manager/Button_Manager/button.c:127: pressOK = 0;
      00176C 75 19 00         [24]  548 	mov	_get_button_action_pressOK_65536_3,#0x00
      00176F                        549 00167$:
                                    550 ;	../UI_Manager/Button_Manager/button.c:130: lastAction = BUTTON_MANUAL;
      00176F 75 18 07         [24]  551 	mov	_get_button_action_lastAction_65536_3,#0x07
      001772                        552 00169$:
                                    553 ;	../UI_Manager/Button_Manager/button.c:134: if(level <= BUTTON_BURST_UPPER && level > BUTTON_BURST_LOWER){
      001772 C3               [12]  554 	clr	c
      001773 74 C6            [12]  555 	mov	a,#0xc6
      001775 9E               [12]  556 	subb	a,r6
      001776 74 02            [12]  557 	mov	a,#0x02
      001778 9F               [12]  558 	subb	a,r7
      001779 40 29            [24]  559 	jc	00180$
      00177B 74 A8            [12]  560 	mov	a,#0xa8
      00177D 9E               [12]  561 	subb	a,r6
      00177E 74 02            [12]  562 	mov	a,#0x02
      001780 9F               [12]  563 	subb	a,r7
      001781 50 21            [24]  564 	jnc	00180$
                                    565 ;	../UI_Manager/Button_Manager/button.c:135: if(lastAction == BUTTON_BURST){ 
      001783 74 05            [12]  566 	mov	a,#0x05
      001785 B5 18 16         [24]  567 	cjne	a,_get_button_action_lastAction_65536_3,00177$
                                    568 ;	../UI_Manager/Button_Manager/button.c:136: if(pressOK < PRESS_OK_COUNT){
      001788 74 FD            [12]  569 	mov	a,#0x100 - 0x03
      00178A 25 19            [12]  570 	add	a,_get_button_action_pressOK_65536_3
      00178C 40 0C            [24]  571 	jc	00174$
                                    572 ;	../UI_Manager/Button_Manager/button.c:137: if(++pressOK >= PRESS_OK_COUNT){
      00178E 05 19            [12]  573 	inc	_get_button_action_pressOK_65536_3
      001790 74 FD            [12]  574 	mov	a,#0x100 - 0x03
      001792 25 19            [12]  575 	add	a,_get_button_action_pressOK_65536_3
      001794 50 0B            [24]  576 	jnc	00178$
                                    577 ;	../UI_Manager/Button_Manager/button.c:138: retVal = BUTTON_BURST;
      001796 7D 05            [12]  578 	mov	r5,#0x05
      001798 80 07            [24]  579 	sjmp	00178$
      00179A                        580 00174$:
                                    581 ;	../UI_Manager/Button_Manager/button.c:141: retVal = BUTTON_BURST;
      00179A 7D 05            [12]  582 	mov	r5,#0x05
      00179C 80 03            [24]  583 	sjmp	00178$
      00179E                        584 00177$:
                                    585 ;	../UI_Manager/Button_Manager/button.c:144: pressOK = 0;
      00179E 75 19 00         [24]  586 	mov	_get_button_action_pressOK_65536_3,#0x00
      0017A1                        587 00178$:
                                    588 ;	../UI_Manager/Button_Manager/button.c:147: lastAction = BUTTON_BURST;
      0017A1 75 18 05         [24]  589 	mov	_get_button_action_lastAction_65536_3,#0x05
      0017A4                        590 00180$:
                                    591 ;	../UI_Manager/Button_Manager/button.c:151: if(level <= BUTTON_FUN_MAN_UPPER && level > BUTTON_FUN_MAN_LOWER){
      0017A4 C3               [12]  592 	clr	c
      0017A5 74 EA            [12]  593 	mov	a,#0xea
      0017A7 9E               [12]  594 	subb	a,r6
      0017A8 74 01            [12]  595 	mov	a,#0x01
      0017AA 9F               [12]  596 	subb	a,r7
      0017AB 40 25            [24]  597 	jc	00190$
      0017AD 74 CC            [12]  598 	mov	a,#0xcc
      0017AF 9E               [12]  599 	subb	a,r6
      0017B0 74 01            [12]  600 	mov	a,#0x01
      0017B2 9F               [12]  601 	subb	a,r7
      0017B3 50 1D            [24]  602 	jnc	00190$
                                    603 ;	../UI_Manager/Button_Manager/button.c:152: if(lastAction == BUTTON_FUN_MAN){ 
      0017B5 74 08            [12]  604 	mov	a,#0x08
      0017B7 B5 18 12         [24]  605 	cjne	a,_get_button_action_lastAction_65536_3,00187$
                                    606 ;	../UI_Manager/Button_Manager/button.c:153: if(pressOK < PRESS_OK_COUNT){
      0017BA 74 FD            [12]  607 	mov	a,#0x100 - 0x03
      0017BC 25 19            [12]  608 	add	a,_get_button_action_pressOK_65536_3
      0017BE 40 0F            [24]  609 	jc	00188$
                                    610 ;	../UI_Manager/Button_Manager/button.c:154: if(++pressOK >= PRESS_OK_COUNT){
      0017C0 05 19            [12]  611 	inc	_get_button_action_pressOK_65536_3
      0017C2 74 FD            [12]  612 	mov	a,#0x100 - 0x03
      0017C4 25 19            [12]  613 	add	a,_get_button_action_pressOK_65536_3
      0017C6 50 07            [24]  614 	jnc	00188$
                                    615 ;	../UI_Manager/Button_Manager/button.c:155: retVal = BUTTON_FUN_MAN;
      0017C8 7D 08            [12]  616 	mov	r5,#0x08
      0017CA 80 03            [24]  617 	sjmp	00188$
      0017CC                        618 00187$:
                                    619 ;	../UI_Manager/Button_Manager/button.c:159: pressOK = 0;
      0017CC 75 19 00         [24]  620 	mov	_get_button_action_pressOK_65536_3,#0x00
      0017CF                        621 00188$:
                                    622 ;	../UI_Manager/Button_Manager/button.c:162: lastAction = BUTTON_FUN_MAN;
      0017CF 75 18 08         [24]  623 	mov	_get_button_action_lastAction_65536_3,#0x08
      0017D2                        624 00190$:
                                    625 ;	../UI_Manager/Button_Manager/button.c:166: if(level <= BUTTON_MAN_BURST_UPPER && level > BUTTON_MAN_BURST_LOWER){
      0017D2 C3               [12]  626 	clr	c
      0017D3 74 B8            [12]  627 	mov	a,#0xb8
      0017D5 9E               [12]  628 	subb	a,r6
      0017D6 74 01            [12]  629 	mov	a,#0x01
      0017D8 9F               [12]  630 	subb	a,r7
      0017D9 40 25            [24]  631 	jc	00200$
      0017DB 74 A4            [12]  632 	mov	a,#0xa4
      0017DD 9E               [12]  633 	subb	a,r6
      0017DE 74 01            [12]  634 	mov	a,#0x01
      0017E0 9F               [12]  635 	subb	a,r7
      0017E1 50 1D            [24]  636 	jnc	00200$
                                    637 ;	../UI_Manager/Button_Manager/button.c:167: if(lastAction == BUTTON_MAN_BURST){ 
      0017E3 74 09            [12]  638 	mov	a,#0x09
      0017E5 B5 18 12         [24]  639 	cjne	a,_get_button_action_lastAction_65536_3,00197$
                                    640 ;	../UI_Manager/Button_Manager/button.c:168: if(pressOK < PRESS_HOLD_COUNT){
      0017E8 74 DE            [12]  641 	mov	a,#0x100 - 0x22
      0017EA 25 19            [12]  642 	add	a,_get_button_action_pressOK_65536_3
      0017EC 40 0F            [24]  643 	jc	00198$
                                    644 ;	../UI_Manager/Button_Manager/button.c:169: if(++pressOK >= PRESS_HOLD_COUNT + (34 * 5)){
      0017EE 05 19            [12]  645 	inc	_get_button_action_pressOK_65536_3
      0017F0 74 34            [12]  646 	mov	a,#0x100 - 0xcc
      0017F2 25 19            [12]  647 	add	a,_get_button_action_pressOK_65536_3
      0017F4 50 07            [24]  648 	jnc	00198$
                                    649 ;	../UI_Manager/Button_Manager/button.c:170: retVal = BUTTON_MAN_BURST;
      0017F6 7D 09            [12]  650 	mov	r5,#0x09
      0017F8 80 03            [24]  651 	sjmp	00198$
      0017FA                        652 00197$:
                                    653 ;	../UI_Manager/Button_Manager/button.c:174: pressOK = 0;
      0017FA 75 19 00         [24]  654 	mov	_get_button_action_pressOK_65536_3,#0x00
      0017FD                        655 00198$:
                                    656 ;	../UI_Manager/Button_Manager/button.c:177: lastAction = BUTTON_MAN_BURST;
      0017FD 75 18 09         [24]  657 	mov	_get_button_action_lastAction_65536_3,#0x09
      001800                        658 00200$:
                                    659 ;	../UI_Manager/Button_Manager/button.c:181: if(level <= BUTTON_FUN_TIME_UPPER && level > BUTTON_FUN_TIME_LOWER){
      001800 C3               [12]  660 	clr	c
      001801 74 2A            [12]  661 	mov	a,#0x2a
      001803 9E               [12]  662 	subb	a,r6
      001804 74 03            [12]  663 	mov	a,#0x03
      001806 9F               [12]  664 	subb	a,r7
      001807 40 25            [24]  665 	jc	00210$
      001809 74 16            [12]  666 	mov	a,#0x16
      00180B 9E               [12]  667 	subb	a,r6
      00180C 74 03            [12]  668 	mov	a,#0x03
      00180E 9F               [12]  669 	subb	a,r7
      00180F 50 1D            [24]  670 	jnc	00210$
                                    671 ;	../UI_Manager/Button_Manager/button.c:182: if(lastAction == BUTTON_FUN_TIME){ 
      001811 74 04            [12]  672 	mov	a,#0x04
      001813 B5 18 12         [24]  673 	cjne	a,_get_button_action_lastAction_65536_3,00207$
                                    674 ;	../UI_Manager/Button_Manager/button.c:183: if(pressOK < PRESS_OK_COUNT){
      001816 74 FD            [12]  675 	mov	a,#0x100 - 0x03
      001818 25 19            [12]  676 	add	a,_get_button_action_pressOK_65536_3
      00181A 40 0F            [24]  677 	jc	00208$
                                    678 ;	../UI_Manager/Button_Manager/button.c:184: if(++pressOK >= PRESS_OK_COUNT){
      00181C 05 19            [12]  679 	inc	_get_button_action_pressOK_65536_3
      00181E 74 FD            [12]  680 	mov	a,#0x100 - 0x03
      001820 25 19            [12]  681 	add	a,_get_button_action_pressOK_65536_3
      001822 50 07            [24]  682 	jnc	00208$
                                    683 ;	../UI_Manager/Button_Manager/button.c:185: retVal = BUTTON_FUN_TIME;
      001824 7D 04            [12]  684 	mov	r5,#0x04
      001826 80 03            [24]  685 	sjmp	00208$
      001828                        686 00207$:
                                    687 ;	../UI_Manager/Button_Manager/button.c:189: pressOK = 0;
      001828 75 19 00         [24]  688 	mov	_get_button_action_pressOK_65536_3,#0x00
      00182B                        689 00208$:
                                    690 ;	../UI_Manager/Button_Manager/button.c:192: lastAction = BUTTON_FUN_TIME;
      00182B 75 18 04         [24]  691 	mov	_get_button_action_lastAction_65536_3,#0x04
      00182E                        692 00210$:
                                    693 ;	../UI_Manager/Button_Manager/button.c:196: if(level <= BUTTON_FUN_BURST_UPPER && level > BUTTON_FUN_BURST_LOWER){
      00182E C3               [12]  694 	clr	c
      00182F 74 8A            [12]  695 	mov	a,#0x8a
      001831 9E               [12]  696 	subb	a,r6
      001832 74 02            [12]  697 	mov	a,#0x02
      001834 9F               [12]  698 	subb	a,r7
      001835 40 29            [24]  699 	jc	00221$
      001837 74 76            [12]  700 	mov	a,#0x76
      001839 9E               [12]  701 	subb	a,r6
      00183A 74 02            [12]  702 	mov	a,#0x02
      00183C 9F               [12]  703 	subb	a,r7
      00183D 50 21            [24]  704 	jnc	00221$
                                    705 ;	../UI_Manager/Button_Manager/button.c:197: if(lastAction == BUTTON_FUN_BURST){ 
      00183F 74 0B            [12]  706 	mov	a,#0x0b
      001841 B5 18 16         [24]  707 	cjne	a,_get_button_action_lastAction_65536_3,00218$
                                    708 ;	../UI_Manager/Button_Manager/button.c:198: if(pressOK < PRESS_OK_COUNT){
      001844 74 FD            [12]  709 	mov	a,#0x100 - 0x03
      001846 25 19            [12]  710 	add	a,_get_button_action_pressOK_65536_3
      001848 40 0C            [24]  711 	jc	00215$
                                    712 ;	../UI_Manager/Button_Manager/button.c:199: if(++pressOK >= PRESS_OK_COUNT){
      00184A 05 19            [12]  713 	inc	_get_button_action_pressOK_65536_3
      00184C 74 FD            [12]  714 	mov	a,#0x100 - 0x03
      00184E 25 19            [12]  715 	add	a,_get_button_action_pressOK_65536_3
      001850 50 0B            [24]  716 	jnc	00219$
                                    717 ;	../UI_Manager/Button_Manager/button.c:200: retVal = BUTTON_FUN_BURST;
      001852 7D 0B            [12]  718 	mov	r5,#0x0b
      001854 80 07            [24]  719 	sjmp	00219$
      001856                        720 00215$:
                                    721 ;	../UI_Manager/Button_Manager/button.c:203: retVal = BUTTON_FUN_BURST;
      001856 7D 0B            [12]  722 	mov	r5,#0x0b
      001858 80 03            [24]  723 	sjmp	00219$
      00185A                        724 00218$:
                                    725 ;	../UI_Manager/Button_Manager/button.c:206: pressOK = 0;
      00185A 75 19 00         [24]  726 	mov	_get_button_action_pressOK_65536_3,#0x00
      00185D                        727 00219$:
                                    728 ;	../UI_Manager/Button_Manager/button.c:209: lastAction = BUTTON_FUN_BURST;
      00185D 75 18 0B         [24]  729 	mov	_get_button_action_lastAction_65536_3,#0x0b
      001860                        730 00221$:
                                    731 ;	../UI_Manager/Button_Manager/button.c:212: return retVal;
      001860 8D 82            [24]  732 	mov	dpl,r5
                                    733 ;	../UI_Manager/Button_Manager/button.c:213: }
      001862 22               [24]  734 	ret
                                    735 	.area CSEG    (CODE)
                                    736 	.area CONST   (CODE)
                                    737 	.area XINIT   (CODE)
                                    738 	.area CABS    (ABS,CODE)
