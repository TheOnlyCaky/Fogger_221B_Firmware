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
      000013                        202 _get_button_action_lastAction_65536_3:
      000013                        203 	.ds 1
      000014                        204 _get_button_action_pressOK_65536_3:
      000014                        205 	.ds 1
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
                                    258 ;level                     Allocated to registers r6 r7 
                                    259 ;retVal                    Allocated to registers r5 
                                    260 ;lastAction                Allocated with name '_get_button_action_lastAction_65536_3'
                                    261 ;pressOK                   Allocated with name '_get_button_action_pressOK_65536_3'
                                    262 ;------------------------------------------------------------
                                    263 ;	../UI_Manager/Button_Manager/button.c:14: static uint8_t lastAction = BUTTON_NA;
      0000C0 75 13 00         [24]  264 	mov	_get_button_action_lastAction_65536_3,#0x00
                                    265 ;	../UI_Manager/Button_Manager/button.c:15: static uint8_t pressOK = 0;
      0000C3 75 14 00         [24]  266 	mov	_get_button_action_pressOK_65536_3,#0x00
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
                                    279 ;level                     Allocated to registers r6 r7 
                                    280 ;retVal                    Allocated to registers r5 
                                    281 ;lastAction                Allocated with name '_get_button_action_lastAction_65536_3'
                                    282 ;pressOK                   Allocated with name '_get_button_action_pressOK_65536_3'
                                    283 ;------------------------------------------------------------
                                    284 ;	../UI_Manager/Button_Manager/button.c:13: uint8_t get_button_action(){
                                    285 ;	-----------------------------------------
                                    286 ;	 function get_button_action
                                    287 ;	-----------------------------------------
      001AD0                        288 _get_button_action:
                           000007   289 	ar7 = 0x07
                           000006   290 	ar6 = 0x06
                           000005   291 	ar5 = 0x05
                           000004   292 	ar4 = 0x04
                           000003   293 	ar3 = 0x03
                           000002   294 	ar2 = 0x02
                           000001   295 	ar1 = 0x01
                           000000   296 	ar0 = 0x00
                                    297 ;	../UI_Manager/Button_Manager/button.c:16: uint16_t level = get_adc_value(ADC_BUTTON);
      001AD0 75 82 01         [24]  298 	mov	dpl,#0x01
      001AD3 12 04 81         [24]  299 	lcall	_get_adc_value
      001AD6 AE 82            [24]  300 	mov	r6,dpl
      001AD8 AF 83            [24]  301 	mov	r7,dph
                                    302 ;	../UI_Manager/Button_Manager/button.c:17: uint8_t retVal = BUTTON_NA;
      001ADA 7D 00            [12]  303 	mov	r5,#0x00
                                    304 ;	../UI_Manager/Button_Manager/button.c:19: if(level >= BUTTON_NA_LOWER){ 
      001ADC C3               [12]  305 	clr	c
      001ADD EE               [12]  306 	mov	a,r6
      001ADE 94 A2            [12]  307 	subb	a,#0xa2
      001AE0 EF               [12]  308 	mov	a,r7
      001AE1 94 03            [12]  309 	subb	a,#0x03
      001AE3 40 31            [24]  310 	jc	00109$
                                    311 ;	../UI_Manager/Button_Manager/button.c:20: if(pressOK >= PRESS_OK_COUNT && pressOK < PRESS_HOLD_COUNT){
      001AE5 74 F8            [12]  312 	mov	a,#0x100 - 0x08
      001AE7 25 14            [12]  313 	add	a,_get_button_action_pressOK_65536_3
      001AE9 50 25            [24]  314 	jnc	00106$
      001AEB 74 17            [12]  315 	mov	a,#0x100 - 0xe9
      001AED 25 14            [12]  316 	add	a,_get_button_action_pressOK_65536_3
      001AEF 40 1F            [24]  317 	jc	00106$
                                    318 ;	../UI_Manager/Button_Manager/button.c:21: switch (lastAction)
      001AF1 74 01            [12]  319 	mov	a,#0x01
      001AF3 B5 13 02         [24]  320 	cjne	a,_get_button_action_lastAction_65536_3,00474$
      001AF6 80 16            [24]  321 	sjmp	00103$
      001AF8                        322 00474$:
      001AF8 74 03            [12]  323 	mov	a,#0x03
      001AFA B5 13 02         [24]  324 	cjne	a,_get_button_action_lastAction_65536_3,00475$
      001AFD 80 07            [24]  325 	sjmp	00101$
      001AFF                        326 00475$:
      001AFF 74 0B            [12]  327 	mov	a,#0x0b
                                    328 ;	../UI_Manager/Button_Manager/button.c:23: case BUTTON_UP:
      001B01 B5 13 0C         [24]  329 	cjne	a,_get_button_action_lastAction_65536_3,00106$
      001B04 80 04            [24]  330 	sjmp	00102$
      001B06                        331 00101$:
                                    332 ;	../UI_Manager/Button_Manager/button.c:24: retVal = BUTTON_UP;
      001B06 7D 03            [12]  333 	mov	r5,#0x03
                                    334 ;	../UI_Manager/Button_Manager/button.c:25: break;
                                    335 ;	../UI_Manager/Button_Manager/button.c:26: case BUTTON_DOWN:
      001B08 80 06            [24]  336 	sjmp	00106$
      001B0A                        337 00102$:
                                    338 ;	../UI_Manager/Button_Manager/button.c:27: retVal = BUTTON_DOWN;
      001B0A 7D 0B            [12]  339 	mov	r5,#0x0b
                                    340 ;	../UI_Manager/Button_Manager/button.c:28: break;
                                    341 ;	../UI_Manager/Button_Manager/button.c:29: case BUTTON_TIMER:
      001B0C 80 02            [24]  342 	sjmp	00106$
      001B0E                        343 00103$:
                                    344 ;	../UI_Manager/Button_Manager/button.c:30: retVal = BUTTON_TIMER;
      001B0E 7D 01            [12]  345 	mov	r5,#0x01
                                    346 ;	../UI_Manager/Button_Manager/button.c:32: }
      001B10                        347 00106$:
                                    348 ;	../UI_Manager/Button_Manager/button.c:34: lastAction = BUTTON_NA;
      001B10 75 13 00         [24]  349 	mov	_get_button_action_lastAction_65536_3,#0x00
                                    350 ;	../UI_Manager/Button_Manager/button.c:35: pressOK = 0;
      001B13 75 14 00         [24]  351 	mov	_get_button_action_pressOK_65536_3,#0x00
      001B16                        352 00109$:
                                    353 ;	../UI_Manager/Button_Manager/button.c:43: if(level <= BUTTON_FUNCTION_UPPER && level > BUTTON_FUNCTION_LOWER){ 
      001B16 C3               [12]  354 	clr	c
      001B17 74 7A            [12]  355 	mov	a,#0x7a
      001B19 9E               [12]  356 	subb	a,r6
      001B1A 74 03            [12]  357 	mov	a,#0x03
      001B1C 9F               [12]  358 	subb	a,r7
      001B1D 40 25            [24]  359 	jc	00118$
      001B1F 74 66            [12]  360 	mov	a,#0x66
      001B21 9E               [12]  361 	subb	a,r6
      001B22 74 03            [12]  362 	mov	a,#0x03
      001B24 9F               [12]  363 	subb	a,r7
      001B25 50 1D            [24]  364 	jnc	00118$
                                    365 ;	../UI_Manager/Button_Manager/button.c:44: if(lastAction == BUTTON_FUNCTION){ 
      001B27 74 02            [12]  366 	mov	a,#0x02
      001B29 B5 13 12         [24]  367 	cjne	a,_get_button_action_lastAction_65536_3,00115$
                                    368 ;	../UI_Manager/Button_Manager/button.c:45: if(pressOK < PRESS_OK_COUNT){
      001B2C 74 F8            [12]  369 	mov	a,#0x100 - 0x08
      001B2E 25 14            [12]  370 	add	a,_get_button_action_pressOK_65536_3
      001B30 40 0F            [24]  371 	jc	00116$
                                    372 ;	../UI_Manager/Button_Manager/button.c:46: if(++pressOK >= PRESS_OK_COUNT){
      001B32 05 14            [12]  373 	inc	_get_button_action_pressOK_65536_3
      001B34 74 F8            [12]  374 	mov	a,#0x100 - 0x08
      001B36 25 14            [12]  375 	add	a,_get_button_action_pressOK_65536_3
      001B38 50 07            [24]  376 	jnc	00116$
                                    377 ;	../UI_Manager/Button_Manager/button.c:47: retVal = BUTTON_FUNCTION;
      001B3A 7D 02            [12]  378 	mov	r5,#0x02
      001B3C 80 03            [24]  379 	sjmp	00116$
      001B3E                        380 00115$:
                                    381 ;	../UI_Manager/Button_Manager/button.c:51: pressOK = 0;
      001B3E 75 14 00         [24]  382 	mov	_get_button_action_pressOK_65536_3,#0x00
      001B41                        383 00116$:
                                    384 ;	../UI_Manager/Button_Manager/button.c:54: lastAction = BUTTON_FUNCTION;
      001B41 75 13 02         [24]  385 	mov	_get_button_action_lastAction_65536_3,#0x02
      001B44                        386 00118$:
                                    387 ;	../UI_Manager/Button_Manager/button.c:58: if(level <= BUTTON_UP_UPPER && level > BUTTON_UP_LOWER){ 
      001B44 C3               [12]  388 	clr	c
      001B45 74 48            [12]  389 	mov	a,#0x48
      001B47 9E               [12]  390 	subb	a,r6
      001B48 74 03            [12]  391 	mov	a,#0x03
      001B4A 9F               [12]  392 	subb	a,r7
      001B4B 40 29            [24]  393 	jc	00129$
      001B4D 74 2F            [12]  394 	mov	a,#0x2f
      001B4F 9E               [12]  395 	subb	a,r6
      001B50 74 03            [12]  396 	mov	a,#0x03
      001B52 9F               [12]  397 	subb	a,r7
      001B53 50 21            [24]  398 	jnc	00129$
                                    399 ;	../UI_Manager/Button_Manager/button.c:59: if(lastAction == BUTTON_UP){ 
      001B55 74 03            [12]  400 	mov	a,#0x03
      001B57 B5 13 16         [24]  401 	cjne	a,_get_button_action_lastAction_65536_3,00126$
                                    402 ;	../UI_Manager/Button_Manager/button.c:60: if(pressOK < PRESS_HOLD_COUNT){
      001B5A 74 17            [12]  403 	mov	a,#0x100 - 0xe9
      001B5C 25 14            [12]  404 	add	a,_get_button_action_pressOK_65536_3
      001B5E 40 0C            [24]  405 	jc	00123$
                                    406 ;	../UI_Manager/Button_Manager/button.c:61: if(++pressOK >= PRESS_HOLD_COUNT){
      001B60 05 14            [12]  407 	inc	_get_button_action_pressOK_65536_3
      001B62 74 17            [12]  408 	mov	a,#0x100 - 0xe9
      001B64 25 14            [12]  409 	add	a,_get_button_action_pressOK_65536_3
      001B66 50 0B            [24]  410 	jnc	00127$
                                    411 ;	../UI_Manager/Button_Manager/button.c:62: retVal = BUTTON_UP_HOLD;
      001B68 7D 1E            [12]  412 	mov	r5,#0x1e
      001B6A 80 07            [24]  413 	sjmp	00127$
      001B6C                        414 00123$:
                                    415 ;	../UI_Manager/Button_Manager/button.c:65: retVal = BUTTON_UP_BURST;
      001B6C 7D 1F            [12]  416 	mov	r5,#0x1f
      001B6E 80 03            [24]  417 	sjmp	00127$
      001B70                        418 00126$:
                                    419 ;	../UI_Manager/Button_Manager/button.c:68: pressOK = 0;
      001B70 75 14 00         [24]  420 	mov	_get_button_action_pressOK_65536_3,#0x00
      001B73                        421 00127$:
                                    422 ;	../UI_Manager/Button_Manager/button.c:71: lastAction = BUTTON_UP;
      001B73 75 13 03         [24]  423 	mov	_get_button_action_lastAction_65536_3,#0x03
      001B76                        424 00129$:
                                    425 ;	../UI_Manager/Button_Manager/button.c:75: if(level <= BUTTON_DOWN_UPPER && level > BUTTON_DOWN_LOWER){
      001B76 C3               [12]  426 	clr	c
      001B77 74 AA            [12]  427 	mov	a,#0xaa
      001B79 9E               [12]  428 	subb	a,r6
      001B7A E4               [12]  429 	clr	a
      001B7B 9F               [12]  430 	subb	a,r7
      001B7C 40 28            [24]  431 	jc	00140$
      001B7E 74 8C            [12]  432 	mov	a,#0x8c
      001B80 9E               [12]  433 	subb	a,r6
      001B81 E4               [12]  434 	clr	a
      001B82 9F               [12]  435 	subb	a,r7
      001B83 50 21            [24]  436 	jnc	00140$
                                    437 ;	../UI_Manager/Button_Manager/button.c:76: if(lastAction == BUTTON_DOWN){
      001B85 74 0B            [12]  438 	mov	a,#0x0b
      001B87 B5 13 16         [24]  439 	cjne	a,_get_button_action_lastAction_65536_3,00137$
                                    440 ;	../UI_Manager/Button_Manager/button.c:77: if(pressOK < PRESS_HOLD_COUNT){
      001B8A 74 17            [12]  441 	mov	a,#0x100 - 0xe9
      001B8C 25 14            [12]  442 	add	a,_get_button_action_pressOK_65536_3
      001B8E 40 0C            [24]  443 	jc	00134$
                                    444 ;	../UI_Manager/Button_Manager/button.c:78: if(++pressOK >= PRESS_HOLD_COUNT){
      001B90 05 14            [12]  445 	inc	_get_button_action_pressOK_65536_3
      001B92 74 17            [12]  446 	mov	a,#0x100 - 0xe9
      001B94 25 14            [12]  447 	add	a,_get_button_action_pressOK_65536_3
      001B96 50 0B            [24]  448 	jnc	00138$
                                    449 ;	../UI_Manager/Button_Manager/button.c:79: retVal = BUTTON_DOWN_HOLD;
      001B98 7D 6E            [12]  450 	mov	r5,#0x6e
      001B9A 80 07            [24]  451 	sjmp	00138$
      001B9C                        452 00134$:
                                    453 ;	../UI_Manager/Button_Manager/button.c:82: retVal = BUTTON_DOWN_BURST;
      001B9C 7D 6F            [12]  454 	mov	r5,#0x6f
      001B9E 80 03            [24]  455 	sjmp	00138$
      001BA0                        456 00137$:
                                    457 ;	../UI_Manager/Button_Manager/button.c:85: pressOK = 0;
      001BA0 75 14 00         [24]  458 	mov	_get_button_action_pressOK_65536_3,#0x00
      001BA3                        459 00138$:
                                    460 ;	../UI_Manager/Button_Manager/button.c:88: lastAction = BUTTON_DOWN;
      001BA3 75 13 0B         [24]  461 	mov	_get_button_action_lastAction_65536_3,#0x0b
      001BA6                        462 00140$:
                                    463 ;	../UI_Manager/Button_Manager/button.c:92: if(level <= BUTTON_BURST_UP_UPPER && level > BUTTON_BURST_UP_LOWER){
      001BA6 C3               [12]  464 	clr	c
      001BA7 74 76            [12]  465 	mov	a,#0x76
      001BA9 9E               [12]  466 	subb	a,r6
      001BAA 74 02            [12]  467 	mov	a,#0x02
      001BAC 9F               [12]  468 	subb	a,r7
      001BAD 40 25            [24]  469 	jc	00150$
      001BAF 74 58            [12]  470 	mov	a,#0x58
      001BB1 9E               [12]  471 	subb	a,r6
      001BB2 74 02            [12]  472 	mov	a,#0x02
      001BB4 9F               [12]  473 	subb	a,r7
      001BB5 50 1D            [24]  474 	jnc	00150$
                                    475 ;	../UI_Manager/Button_Manager/button.c:93: if(lastAction == BUTTON_BURST_UP){ 
      001BB7 74 07            [12]  476 	mov	a,#0x07
      001BB9 B5 13 12         [24]  477 	cjne	a,_get_button_action_lastAction_65536_3,00147$
                                    478 ;	../UI_Manager/Button_Manager/button.c:94: if(pressOK < PRESS_HOLD_COUNT){
      001BBC 74 17            [12]  479 	mov	a,#0x100 - 0xe9
      001BBE 25 14            [12]  480 	add	a,_get_button_action_pressOK_65536_3
      001BC0 40 0F            [24]  481 	jc	00148$
                                    482 ;	../UI_Manager/Button_Manager/button.c:95: if(++pressOK >= PRESS_HOLD_COUNT){
      001BC2 05 14            [12]  483 	inc	_get_button_action_pressOK_65536_3
      001BC4 74 17            [12]  484 	mov	a,#0x100 - 0xe9
      001BC6 25 14            [12]  485 	add	a,_get_button_action_pressOK_65536_3
      001BC8 50 07            [24]  486 	jnc	00148$
                                    487 ;	../UI_Manager/Button_Manager/button.c:96: retVal = BUTTON_BURST_UP;
      001BCA 7D 07            [12]  488 	mov	r5,#0x07
      001BCC 80 03            [24]  489 	sjmp	00148$
      001BCE                        490 00147$:
                                    491 ;	../UI_Manager/Button_Manager/button.c:100: pressOK = 0;
      001BCE 75 14 00         [24]  492 	mov	_get_button_action_pressOK_65536_3,#0x00
      001BD1                        493 00148$:
                                    494 ;	../UI_Manager/Button_Manager/button.c:103: lastAction = BUTTON_BURST_UP;
      001BD1 75 13 07         [24]  495 	mov	_get_button_action_lastAction_65536_3,#0x07
      001BD4                        496 00150$:
                                    497 ;	../UI_Manager/Button_Manager/button.c:107: if(level <= BUTTON_TIMER_UPPER && level > BUTTON_TIMER_LOWER){
      001BD4 C3               [12]  498 	clr	c
      001BD5 74 98            [12]  499 	mov	a,#0x98
      001BD7 9E               [12]  500 	subb	a,r6
      001BD8 74 03            [12]  501 	mov	a,#0x03
      001BDA 9F               [12]  502 	subb	a,r7
      001BDB 40 25            [24]  503 	jc	00160$
      001BDD 74 84            [12]  504 	mov	a,#0x84
      001BDF 9E               [12]  505 	subb	a,r6
      001BE0 74 03            [12]  506 	mov	a,#0x03
      001BE2 9F               [12]  507 	subb	a,r7
      001BE3 50 1D            [24]  508 	jnc	00160$
                                    509 ;	../UI_Manager/Button_Manager/button.c:108: if(lastAction == BUTTON_TIMER){ 
      001BE5 74 01            [12]  510 	mov	a,#0x01
      001BE7 B5 13 12         [24]  511 	cjne	a,_get_button_action_lastAction_65536_3,00157$
                                    512 ;	../UI_Manager/Button_Manager/button.c:109: if(pressOK < PRESS_HOLD_COUNT){
      001BEA 74 17            [12]  513 	mov	a,#0x100 - 0xe9
      001BEC 25 14            [12]  514 	add	a,_get_button_action_pressOK_65536_3
      001BEE 40 0F            [24]  515 	jc	00158$
                                    516 ;	../UI_Manager/Button_Manager/button.c:110: if(++pressOK >= PRESS_HOLD_COUNT){
      001BF0 05 14            [12]  517 	inc	_get_button_action_pressOK_65536_3
      001BF2 74 17            [12]  518 	mov	a,#0x100 - 0xe9
      001BF4 25 14            [12]  519 	add	a,_get_button_action_pressOK_65536_3
      001BF6 50 07            [24]  520 	jnc	00158$
                                    521 ;	../UI_Manager/Button_Manager/button.c:111: retVal = BUTTON_TIMER_HOLD;
      001BF8 7D C8            [12]  522 	mov	r5,#0xc8
      001BFA 80 03            [24]  523 	sjmp	00158$
      001BFC                        524 00157$:
                                    525 ;	../UI_Manager/Button_Manager/button.c:115: pressOK = 0;
      001BFC 75 14 00         [24]  526 	mov	_get_button_action_pressOK_65536_3,#0x00
      001BFF                        527 00158$:
                                    528 ;	../UI_Manager/Button_Manager/button.c:118: lastAction = BUTTON_TIMER;
      001BFF 75 13 01         [24]  529 	mov	_get_button_action_lastAction_65536_3,#0x01
      001C02                        530 00160$:
                                    531 ;	../UI_Manager/Button_Manager/button.c:122: if(level <= BUTTON_MANUAL_UPPER && level > BUTTON_MANUAL_LOWER){
      001C02 C3               [12]  532 	clr	c
      001C03 74 12            [12]  533 	mov	a,#0x12
      001C05 9E               [12]  534 	subb	a,r6
      001C06 74 02            [12]  535 	mov	a,#0x02
      001C08 9F               [12]  536 	subb	a,r7
      001C09 40 25            [24]  537 	jc	00170$
      001C0B 74 FE            [12]  538 	mov	a,#0xfe
      001C0D 9E               [12]  539 	subb	a,r6
      001C0E 74 01            [12]  540 	mov	a,#0x01
      001C10 9F               [12]  541 	subb	a,r7
      001C11 50 1D            [24]  542 	jnc	00170$
                                    543 ;	../UI_Manager/Button_Manager/button.c:123: if(lastAction == BUTTON_MANUAL){ 
      001C13 74 08            [12]  544 	mov	a,#0x08
      001C15 B5 13 12         [24]  545 	cjne	a,_get_button_action_lastAction_65536_3,00167$
                                    546 ;	../UI_Manager/Button_Manager/button.c:124: if(pressOK < PRESS_OK_COUNT){
      001C18 74 F8            [12]  547 	mov	a,#0x100 - 0x08
      001C1A 25 14            [12]  548 	add	a,_get_button_action_pressOK_65536_3
      001C1C 40 0F            [24]  549 	jc	00168$
                                    550 ;	../UI_Manager/Button_Manager/button.c:125: if(++pressOK >= PRESS_OK_COUNT){
      001C1E 05 14            [12]  551 	inc	_get_button_action_pressOK_65536_3
      001C20 74 F8            [12]  552 	mov	a,#0x100 - 0x08
      001C22 25 14            [12]  553 	add	a,_get_button_action_pressOK_65536_3
      001C24 50 07            [24]  554 	jnc	00168$
                                    555 ;	../UI_Manager/Button_Manager/button.c:126: retVal = BUTTON_MANUAL;
      001C26 7D 08            [12]  556 	mov	r5,#0x08
      001C28 80 03            [24]  557 	sjmp	00168$
      001C2A                        558 00167$:
                                    559 ;	../UI_Manager/Button_Manager/button.c:130: pressOK = 0;
      001C2A 75 14 00         [24]  560 	mov	_get_button_action_pressOK_65536_3,#0x00
      001C2D                        561 00168$:
                                    562 ;	../UI_Manager/Button_Manager/button.c:133: lastAction = BUTTON_MANUAL;
      001C2D 75 13 08         [24]  563 	mov	_get_button_action_lastAction_65536_3,#0x08
      001C30                        564 00170$:
                                    565 ;	../UI_Manager/Button_Manager/button.c:137: if(level <= BUTTON_BURST_UPPER && level > BUTTON_BURST_LOWER){
      001C30 C3               [12]  566 	clr	c
      001C31 74 C6            [12]  567 	mov	a,#0xc6
      001C33 9E               [12]  568 	subb	a,r6
      001C34 74 02            [12]  569 	mov	a,#0x02
      001C36 9F               [12]  570 	subb	a,r7
      001C37 40 29            [24]  571 	jc	00181$
      001C39 74 A8            [12]  572 	mov	a,#0xa8
      001C3B 9E               [12]  573 	subb	a,r6
      001C3C 74 02            [12]  574 	mov	a,#0x02
      001C3E 9F               [12]  575 	subb	a,r7
      001C3F 50 21            [24]  576 	jnc	00181$
                                    577 ;	../UI_Manager/Button_Manager/button.c:138: if(lastAction == BUTTON_BURST){ 
      001C41 74 05            [12]  578 	mov	a,#0x05
      001C43 B5 13 16         [24]  579 	cjne	a,_get_button_action_lastAction_65536_3,00178$
                                    580 ;	../UI_Manager/Button_Manager/button.c:139: if(pressOK < PRESS_OK_COUNT){
      001C46 74 F8            [12]  581 	mov	a,#0x100 - 0x08
      001C48 25 14            [12]  582 	add	a,_get_button_action_pressOK_65536_3
      001C4A 40 0C            [24]  583 	jc	00175$
                                    584 ;	../UI_Manager/Button_Manager/button.c:140: if(++pressOK >= PRESS_OK_COUNT){
      001C4C 05 14            [12]  585 	inc	_get_button_action_pressOK_65536_3
      001C4E 74 F8            [12]  586 	mov	a,#0x100 - 0x08
      001C50 25 14            [12]  587 	add	a,_get_button_action_pressOK_65536_3
      001C52 50 0B            [24]  588 	jnc	00179$
                                    589 ;	../UI_Manager/Button_Manager/button.c:141: retVal = BUTTON_BURST;
      001C54 7D 05            [12]  590 	mov	r5,#0x05
      001C56 80 07            [24]  591 	sjmp	00179$
      001C58                        592 00175$:
                                    593 ;	../UI_Manager/Button_Manager/button.c:144: retVal = BUTTON_BURST;
      001C58 7D 05            [12]  594 	mov	r5,#0x05
      001C5A 80 03            [24]  595 	sjmp	00179$
      001C5C                        596 00178$:
                                    597 ;	../UI_Manager/Button_Manager/button.c:147: pressOK = 0;
      001C5C 75 14 00         [24]  598 	mov	_get_button_action_pressOK_65536_3,#0x00
      001C5F                        599 00179$:
                                    600 ;	../UI_Manager/Button_Manager/button.c:150: lastAction = BUTTON_BURST;
      001C5F 75 13 05         [24]  601 	mov	_get_button_action_lastAction_65536_3,#0x05
      001C62                        602 00181$:
                                    603 ;	../UI_Manager/Button_Manager/button.c:154: if(level <= BUTTON_FUN_MAN_UPPER && level > BUTTON_FUN_MAN_LOWER){
      001C62 C3               [12]  604 	clr	c
      001C63 74 EA            [12]  605 	mov	a,#0xea
      001C65 9E               [12]  606 	subb	a,r6
      001C66 74 01            [12]  607 	mov	a,#0x01
      001C68 9F               [12]  608 	subb	a,r7
      001C69 40 25            [24]  609 	jc	00191$
      001C6B 74 CC            [12]  610 	mov	a,#0xcc
      001C6D 9E               [12]  611 	subb	a,r6
      001C6E 74 01            [12]  612 	mov	a,#0x01
      001C70 9F               [12]  613 	subb	a,r7
      001C71 50 1D            [24]  614 	jnc	00191$
                                    615 ;	../UI_Manager/Button_Manager/button.c:155: if(lastAction == BUTTON_FUN_MAN){ 
      001C73 74 09            [12]  616 	mov	a,#0x09
      001C75 B5 13 12         [24]  617 	cjne	a,_get_button_action_lastAction_65536_3,00188$
                                    618 ;	../UI_Manager/Button_Manager/button.c:156: if(pressOK < PRESS_HOLD_COUNT){
      001C78 74 17            [12]  619 	mov	a,#0x100 - 0xe9
      001C7A 25 14            [12]  620 	add	a,_get_button_action_pressOK_65536_3
      001C7C 40 0F            [24]  621 	jc	00189$
                                    622 ;	../UI_Manager/Button_Manager/button.c:157: if(++pressOK >= PRESS_HOLD_COUNT){
      001C7E 05 14            [12]  623 	inc	_get_button_action_pressOK_65536_3
      001C80 74 17            [12]  624 	mov	a,#0x100 - 0xe9
      001C82 25 14            [12]  625 	add	a,_get_button_action_pressOK_65536_3
      001C84 50 07            [24]  626 	jnc	00189$
                                    627 ;	../UI_Manager/Button_Manager/button.c:158: retVal = BUTTON_FUN_MAN;
      001C86 7D 09            [12]  628 	mov	r5,#0x09
      001C88 80 03            [24]  629 	sjmp	00189$
      001C8A                        630 00188$:
                                    631 ;	../UI_Manager/Button_Manager/button.c:162: pressOK = 0;
      001C8A 75 14 00         [24]  632 	mov	_get_button_action_pressOK_65536_3,#0x00
      001C8D                        633 00189$:
                                    634 ;	../UI_Manager/Button_Manager/button.c:165: lastAction = BUTTON_FUN_MAN;
      001C8D 75 13 09         [24]  635 	mov	_get_button_action_lastAction_65536_3,#0x09
      001C90                        636 00191$:
                                    637 ;	../UI_Manager/Button_Manager/button.c:169: if(level <= BUTTON_MAN_BURST_UPPER && level > BUTTON_MAN_BURST_LOWER){
      001C90 C3               [12]  638 	clr	c
      001C91 74 B8            [12]  639 	mov	a,#0xb8
      001C93 9E               [12]  640 	subb	a,r6
      001C94 74 01            [12]  641 	mov	a,#0x01
      001C96 9F               [12]  642 	subb	a,r7
      001C97 40 29            [24]  643 	jc	00202$
      001C99 74 A4            [12]  644 	mov	a,#0xa4
      001C9B 9E               [12]  645 	subb	a,r6
      001C9C 74 01            [12]  646 	mov	a,#0x01
      001C9E 9F               [12]  647 	subb	a,r7
      001C9F 50 21            [24]  648 	jnc	00202$
                                    649 ;	../UI_Manager/Button_Manager/button.c:170: if(lastAction == BUTTON_MAN_BURST){ 
      001CA1 74 0A            [12]  650 	mov	a,#0x0a
      001CA3 B5 13 16         [24]  651 	cjne	a,_get_button_action_lastAction_65536_3,00199$
                                    652 ;	../UI_Manager/Button_Manager/button.c:171: if(pressOK < PRESS_HOLD_COUNT){
      001CA6 74 17            [12]  653 	mov	a,#0x100 - 0xe9
      001CA8 25 14            [12]  654 	add	a,_get_button_action_pressOK_65536_3
      001CAA 40 0C            [24]  655 	jc	00196$
                                    656 ;	../UI_Manager/Button_Manager/button.c:172: if(++pressOK >= PRESS_HOLD_COUNT){
      001CAC 05 14            [12]  657 	inc	_get_button_action_pressOK_65536_3
      001CAE 74 17            [12]  658 	mov	a,#0x100 - 0xe9
      001CB0 25 14            [12]  659 	add	a,_get_button_action_pressOK_65536_3
      001CB2 50 0B            [24]  660 	jnc	00200$
                                    661 ;	../UI_Manager/Button_Manager/button.c:173: retVal = BUTTON_MAN_BURST;
      001CB4 7D 0A            [12]  662 	mov	r5,#0x0a
      001CB6 80 07            [24]  663 	sjmp	00200$
      001CB8                        664 00196$:
                                    665 ;	../UI_Manager/Button_Manager/button.c:176: retVal = BUTTON_MAN_BURST;
      001CB8 7D 0A            [12]  666 	mov	r5,#0x0a
      001CBA 80 03            [24]  667 	sjmp	00200$
      001CBC                        668 00199$:
                                    669 ;	../UI_Manager/Button_Manager/button.c:179: pressOK = 0;
      001CBC 75 14 00         [24]  670 	mov	_get_button_action_pressOK_65536_3,#0x00
      001CBF                        671 00200$:
                                    672 ;	../UI_Manager/Button_Manager/button.c:182: lastAction = BUTTON_MAN_BURST;
      001CBF 75 13 0A         [24]  673 	mov	_get_button_action_lastAction_65536_3,#0x0a
      001CC2                        674 00202$:
                                    675 ;	../UI_Manager/Button_Manager/button.c:186: if(level <= BUTTON_FUN_TIME_UPPER && level > BUTTON_FUN_TIME_LOWER){
      001CC2 C3               [12]  676 	clr	c
      001CC3 74 2A            [12]  677 	mov	a,#0x2a
      001CC5 9E               [12]  678 	subb	a,r6
      001CC6 74 03            [12]  679 	mov	a,#0x03
      001CC8 9F               [12]  680 	subb	a,r7
      001CC9 40 25            [24]  681 	jc	00212$
      001CCB 74 16            [12]  682 	mov	a,#0x16
      001CCD 9E               [12]  683 	subb	a,r6
      001CCE 74 03            [12]  684 	mov	a,#0x03
      001CD0 9F               [12]  685 	subb	a,r7
      001CD1 50 1D            [24]  686 	jnc	00212$
                                    687 ;	../UI_Manager/Button_Manager/button.c:187: if(lastAction == BUTTON_FUN_TIME){ 
      001CD3 74 04            [12]  688 	mov	a,#0x04
      001CD5 B5 13 12         [24]  689 	cjne	a,_get_button_action_lastAction_65536_3,00209$
                                    690 ;	../UI_Manager/Button_Manager/button.c:188: if(pressOK < PRESS_OK_COUNT){
      001CD8 74 F8            [12]  691 	mov	a,#0x100 - 0x08
      001CDA 25 14            [12]  692 	add	a,_get_button_action_pressOK_65536_3
      001CDC 40 0F            [24]  693 	jc	00210$
                                    694 ;	../UI_Manager/Button_Manager/button.c:189: if(++pressOK >= PRESS_OK_COUNT){
      001CDE 05 14            [12]  695 	inc	_get_button_action_pressOK_65536_3
      001CE0 74 F8            [12]  696 	mov	a,#0x100 - 0x08
      001CE2 25 14            [12]  697 	add	a,_get_button_action_pressOK_65536_3
      001CE4 50 07            [24]  698 	jnc	00210$
                                    699 ;	../UI_Manager/Button_Manager/button.c:190: retVal = BUTTON_FUN_TIME;
      001CE6 7D 04            [12]  700 	mov	r5,#0x04
      001CE8 80 03            [24]  701 	sjmp	00210$
      001CEA                        702 00209$:
                                    703 ;	../UI_Manager/Button_Manager/button.c:194: pressOK = 0;
      001CEA 75 14 00         [24]  704 	mov	_get_button_action_pressOK_65536_3,#0x00
      001CED                        705 00210$:
                                    706 ;	../UI_Manager/Button_Manager/button.c:197: lastAction = BUTTON_FUN_TIME;
      001CED 75 13 04         [24]  707 	mov	_get_button_action_lastAction_65536_3,#0x04
      001CF0                        708 00212$:
                                    709 ;	../UI_Manager/Button_Manager/button.c:201: if(level <= BUTTON_FUN_BURST_UPPER && level > BUTTON_FUN_BURST_LOWER){
      001CF0 C3               [12]  710 	clr	c
      001CF1 74 8A            [12]  711 	mov	a,#0x8a
      001CF3 9E               [12]  712 	subb	a,r6
      001CF4 74 02            [12]  713 	mov	a,#0x02
      001CF6 9F               [12]  714 	subb	a,r7
      001CF7 40 29            [24]  715 	jc	00223$
      001CF9 74 76            [12]  716 	mov	a,#0x76
      001CFB 9E               [12]  717 	subb	a,r6
      001CFC 74 02            [12]  718 	mov	a,#0x02
      001CFE 9F               [12]  719 	subb	a,r7
      001CFF 50 21            [24]  720 	jnc	00223$
                                    721 ;	../UI_Manager/Button_Manager/button.c:202: if(lastAction == BUTTON_FUN_BURST){ 
      001D01 74 06            [12]  722 	mov	a,#0x06
      001D03 B5 13 16         [24]  723 	cjne	a,_get_button_action_lastAction_65536_3,00220$
                                    724 ;	../UI_Manager/Button_Manager/button.c:203: if(pressOK < PRESS_HOLD_COUNT){
      001D06 74 17            [12]  725 	mov	a,#0x100 - 0xe9
      001D08 25 14            [12]  726 	add	a,_get_button_action_pressOK_65536_3
      001D0A 40 0C            [24]  727 	jc	00217$
                                    728 ;	../UI_Manager/Button_Manager/button.c:204: if(++pressOK >= PRESS_HOLD_COUNT){
      001D0C 05 14            [12]  729 	inc	_get_button_action_pressOK_65536_3
      001D0E 74 17            [12]  730 	mov	a,#0x100 - 0xe9
      001D10 25 14            [12]  731 	add	a,_get_button_action_pressOK_65536_3
      001D12 50 0B            [24]  732 	jnc	00221$
                                    733 ;	../UI_Manager/Button_Manager/button.c:205: retVal = BUTTON_FUN_BURST;
      001D14 7D 06            [12]  734 	mov	r5,#0x06
      001D16 80 07            [24]  735 	sjmp	00221$
      001D18                        736 00217$:
                                    737 ;	../UI_Manager/Button_Manager/button.c:208: retVal = BUTTON_FUN_BURST;
      001D18 7D 06            [12]  738 	mov	r5,#0x06
      001D1A 80 03            [24]  739 	sjmp	00221$
      001D1C                        740 00220$:
                                    741 ;	../UI_Manager/Button_Manager/button.c:211: pressOK = 0;
      001D1C 75 14 00         [24]  742 	mov	_get_button_action_pressOK_65536_3,#0x00
      001D1F                        743 00221$:
                                    744 ;	../UI_Manager/Button_Manager/button.c:214: lastAction = BUTTON_FUN_BURST;
      001D1F 75 13 06         [24]  745 	mov	_get_button_action_lastAction_65536_3,#0x06
      001D22                        746 00223$:
                                    747 ;	../UI_Manager/Button_Manager/button.c:217: return retVal;
      001D22 8D 82            [24]  748 	mov	dpl,r5
                                    749 ;	../UI_Manager/Button_Manager/button.c:218: }
      001D24 22               [24]  750 	ret
                                    751 	.area CSEG    (CODE)
                                    752 	.area CONST   (CODE)
                                    753 	.area XINIT   (CODE)
                                    754 	.area CABS    (ABS,CODE)
