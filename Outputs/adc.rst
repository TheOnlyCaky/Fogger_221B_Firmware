                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CPRL2
                                     12 	.globl _CT2
                                     13 	.globl _TR2
                                     14 	.globl _EXEN2
                                     15 	.globl _TCLK
                                     16 	.globl _RCLK
                                     17 	.globl _REN
                                     18 	.globl _SM2
                                     19 	.globl _SM1
                                     20 	.globl _SM0
                                     21 	.globl _RCK
                                     22 	.globl _SER
                                     23 	.globl _SCK
                                     24 	.globl _RI
                                     25 	.globl _ES
                                     26 	.globl _ET0
                                     27 	.globl _EA
                                     28 	.globl _P3_7
                                     29 	.globl _P3_6
                                     30 	.globl _P3_5
                                     31 	.globl _P3_4
                                     32 	.globl _P3_3
                                     33 	.globl _P3_2
                                     34 	.globl _P3_1
                                     35 	.globl _P3_0
                                     36 	.globl _P2_7
                                     37 	.globl _P2_6
                                     38 	.globl _P2_5
                                     39 	.globl _P2_4
                                     40 	.globl _P2_3
                                     41 	.globl _P2_2
                                     42 	.globl _P2_1
                                     43 	.globl _P2_0
                                     44 	.globl _P1_7
                                     45 	.globl _P1_6
                                     46 	.globl _P1_5
                                     47 	.globl _P1_4
                                     48 	.globl _P1_3
                                     49 	.globl _P1_2
                                     50 	.globl _P1_1
                                     51 	.globl _P1_0
                                     52 	.globl _P0_7
                                     53 	.globl _P0_6
                                     54 	.globl _P0_5
                                     55 	.globl _P0_4
                                     56 	.globl _P0_3
                                     57 	.globl _P0_2
                                     58 	.globl _P0_1
                                     59 	.globl _P0_0
                                     60 	.globl _IAP_ADRH
                                     61 	.globl _IAP_ADRL
                                     62 	.globl _IAPEN
                                     63 	.globl _TH0
                                     64 	.globl _TL0
                                     65 	.globl _CKCON
                                     66 	.globl _TMOD
                                     67 	.globl _TCON
                                     68 	.globl _PWMDATA17L
                                     69 	.globl _PWMDATA17H
                                     70 	.globl _PWMDATA14L
                                     71 	.globl _PWMDATA14H
                                     72 	.globl _PWMDATA11L
                                     73 	.globl _PWMDATA11H
                                     74 	.globl _PWM_EA2
                                     75 	.globl _PWM_EA1
                                     76 	.globl _SBUF
                                     77 	.globl _TL3
                                     78 	.globl _TH3
                                     79 	.globl _T2CON
                                     80 	.globl _RCAP2H
                                     81 	.globl _RCAP2L
                                     82 	.globl _SCON
                                     83 	.globl _P1_OPT
                                     84 	.globl _ADCVAL2
                                     85 	.globl _ADCVAL1
                                     86 	.globl _ADCSEL
                                     87 	.globl _EXIF
                                     88 	.globl _EIE
                                     89 	.globl _IE
                                     90 	.globl _P3
                                     91 	.globl _P2
                                     92 	.globl _P1
                                     93 	.globl _P0
                                     94 	.globl _PCLKSEL
                                     95 	.globl _CHIPCON
                                     96 	.globl _get_adc_value
                                     97 ;--------------------------------------------------------
                                     98 ; special function registers
                                     99 ;--------------------------------------------------------
                                    100 	.area RSEG    (ABS,DATA)
      000000                        101 	.org 0x0000
                           0000BF   102 _CHIPCON	=	0x00bf
                           0000B7   103 _PCLKSEL	=	0x00b7
                           000080   104 _P0	=	0x0080
                           000090   105 _P1	=	0x0090
                           0000A0   106 _P2	=	0x00a0
                           0000B0   107 _P3	=	0x00b0
                           0000A8   108 _IE	=	0x00a8
                           0000E8   109 _EIE	=	0x00e8
                           000091   110 _EXIF	=	0x0091
                           0000DA   111 _ADCSEL	=	0x00da
                           0000DB   112 _ADCVAL1	=	0x00db
                           0000DC   113 _ADCVAL2	=	0x00dc
                           0000D9   114 _P1_OPT	=	0x00d9
                           000098   115 _SCON	=	0x0098
                           0000CA   116 _RCAP2L	=	0x00ca
                           0000CB   117 _RCAP2H	=	0x00cb
                           0000C8   118 _T2CON	=	0x00c8
                           00009B   119 _TH3	=	0x009b
                           00009A   120 _TL3	=	0x009a
                           000099   121 _SBUF	=	0x0099
                           0000D3   122 _PWM_EA1	=	0x00d3
                           0000D4   123 _PWM_EA2	=	0x00d4
                           0000BD   124 _PWMDATA11H	=	0x00bd
                           0000BE   125 _PWMDATA11L	=	0x00be
                           0000B5   126 _PWMDATA14H	=	0x00b5
                           0000B6   127 _PWMDATA14L	=	0x00b6
                           0000AD   128 _PWMDATA17H	=	0x00ad
                           0000AE   129 _PWMDATA17L	=	0x00ae
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008E   132 _CKCON	=	0x008e
                           00008A   133 _TL0	=	0x008a
                           00008C   134 _TH0	=	0x008c
                           0000E4   135 _IAPEN	=	0x00e4
                           0000E5   136 _IAP_ADRL	=	0x00e5
                           0000E6   137 _IAP_ADRH	=	0x00e6
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000090   151 _P1_0	=	0x0090
                           000091   152 _P1_1	=	0x0091
                           000092   153 _P1_2	=	0x0092
                           000093   154 _P1_3	=	0x0093
                           000094   155 _P1_4	=	0x0094
                           000095   156 _P1_5	=	0x0095
                           000096   157 _P1_6	=	0x0096
                           000097   158 _P1_7	=	0x0097
                           0000A0   159 _P2_0	=	0x00a0
                           0000A1   160 _P2_1	=	0x00a1
                           0000A2   161 _P2_2	=	0x00a2
                           0000A3   162 _P2_3	=	0x00a3
                           0000A4   163 _P2_4	=	0x00a4
                           0000A5   164 _P2_5	=	0x00a5
                           0000A6   165 _P2_6	=	0x00a6
                           0000A7   166 _P2_7	=	0x00a7
                           0000B0   167 _P3_0	=	0x00b0
                           0000B1   168 _P3_1	=	0x00b1
                           0000B2   169 _P3_2	=	0x00b2
                           0000B3   170 _P3_3	=	0x00b3
                           0000B4   171 _P3_4	=	0x00b4
                           0000B5   172 _P3_5	=	0x00b5
                           0000B6   173 _P3_6	=	0x00b6
                           0000B7   174 _P3_7	=	0x00b7
                           0000AF   175 _EA	=	0x00af
                           0000A9   176 _ET0	=	0x00a9
                           0000AC   177 _ES	=	0x00ac
                           000098   178 _RI	=	0x0098
                           000093   179 _SCK	=	0x0093
                           000095   180 _SER	=	0x0095
                           000092   181 _RCK	=	0x0092
                           00009F   182 _SM0	=	0x009f
                           00009E   183 _SM1	=	0x009e
                           00009D   184 _SM2	=	0x009d
                           00009C   185 _REN	=	0x009c
                           0000CD   186 _RCLK	=	0x00cd
                           0000CC   187 _TCLK	=	0x00cc
                           0000CB   188 _EXEN2	=	0x00cb
                           0000CA   189 _TR2	=	0x00ca
                           0000C9   190 _CT2	=	0x00c9
                           0000C8   191 _CPRL2	=	0x00c8
                                    192 ;--------------------------------------------------------
                                    193 ; overlayable register banks
                                    194 ;--------------------------------------------------------
                                    195 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        196 	.ds 8
                                    197 ;--------------------------------------------------------
                                    198 ; internal ram data
                                    199 ;--------------------------------------------------------
                                    200 	.area DSEG    (DATA)
                                    201 ;--------------------------------------------------------
                                    202 ; overlayable items in internal ram 
                                    203 ;--------------------------------------------------------
                                    204 ;--------------------------------------------------------
                                    205 ; indirectly addressable internal ram data
                                    206 ;--------------------------------------------------------
                                    207 	.area ISEG    (DATA)
                                    208 ;--------------------------------------------------------
                                    209 ; absolute internal ram data
                                    210 ;--------------------------------------------------------
                                    211 	.area IABS    (ABS,DATA)
                                    212 	.area IABS    (ABS,DATA)
                                    213 ;--------------------------------------------------------
                                    214 ; bit data
                                    215 ;--------------------------------------------------------
                                    216 	.area BSEG    (BIT)
                                    217 ;--------------------------------------------------------
                                    218 ; paged external ram data
                                    219 ;--------------------------------------------------------
                                    220 	.area PSEG    (PAG,XDATA)
                                    221 ;--------------------------------------------------------
                                    222 ; external ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area XSEG    (XDATA)
                                    225 ;--------------------------------------------------------
                                    226 ; absolute external ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area XABS    (ABS,XDATA)
                                    229 ;--------------------------------------------------------
                                    230 ; external initialized ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area XISEG   (XDATA)
                                    233 	.area HOME    (CODE)
                                    234 	.area GSINIT0 (CODE)
                                    235 	.area GSINIT1 (CODE)
                                    236 	.area GSINIT2 (CODE)
                                    237 	.area GSINIT3 (CODE)
                                    238 	.area GSINIT4 (CODE)
                                    239 	.area GSINIT5 (CODE)
                                    240 	.area GSINIT  (CODE)
                                    241 	.area GSFINAL (CODE)
                                    242 	.area CSEG    (CODE)
                                    243 ;--------------------------------------------------------
                                    244 ; global & static initialisations
                                    245 ;--------------------------------------------------------
                                    246 	.area HOME    (CODE)
                                    247 	.area GSINIT  (CODE)
                                    248 	.area GSFINAL (CODE)
                                    249 	.area GSINIT  (CODE)
                                    250 ;--------------------------------------------------------
                                    251 ; Home
                                    252 ;--------------------------------------------------------
                                    253 	.area HOME    (CODE)
                                    254 	.area HOME    (CODE)
                                    255 ;--------------------------------------------------------
                                    256 ; code
                                    257 ;--------------------------------------------------------
                                    258 	.area CSEG    (CODE)
                                    259 ;------------------------------------------------------------
                                    260 ;Allocation info for local variables in function 'get_adc_value'
                                    261 ;------------------------------------------------------------
                                    262 ;index                     Allocated to registers r3 
                                    263 ;level                     Allocated to stack - _bp +1
                                    264 ;temp                      Allocated to registers r5 r4 
                                    265 ;i                         Allocated to registers r2 
                                    266 ;j                         Allocated to registers r7 
                                    267 ;------------------------------------------------------------
                                    268 ;	../ADC_Manager/adc.c:12: uint16_t get_adc_value(uint8_t index){
                                    269 ;	-----------------------------------------
                                    270 ;	 function get_adc_value
                                    271 ;	-----------------------------------------
      000481                        272 _get_adc_value:
                           000007   273 	ar7 = 0x07
                           000006   274 	ar6 = 0x06
                           000005   275 	ar5 = 0x05
                           000004   276 	ar4 = 0x04
                           000003   277 	ar3 = 0x03
                           000002   278 	ar2 = 0x02
                           000001   279 	ar1 = 0x01
                           000000   280 	ar0 = 0x00
      000481 C0 1A            [24]  281 	push	_bp
      000483 E5 81            [12]  282 	mov	a,sp
      000485 F5 1A            [12]  283 	mov	_bp,a
      000487 24 04            [12]  284 	add	a,#0x04
      000489 F5 81            [12]  285 	mov	sp,a
      00048B AB 82            [24]  286 	mov	r3,dpl
                                    287 ;	../ADC_Manager/adc.c:13: uint32_t level = 0;
      00048D A8 1A            [24]  288 	mov	r0,_bp
      00048F 08               [12]  289 	inc	r0
      000490 E4               [12]  290 	clr	a
      000491 F6               [12]  291 	mov	@r0,a
      000492 08               [12]  292 	inc	r0
      000493 F6               [12]  293 	mov	@r0,a
      000494 08               [12]  294 	inc	r0
      000495 F6               [12]  295 	mov	@r0,a
      000496 08               [12]  296 	inc	r0
      000497 F6               [12]  297 	mov	@r0,a
                                    298 ;	../ADC_Manager/adc.c:17: for(i = 0; i < (1 << ADC_AVERAGE_SHIFT); i++){
      000498 7A 00            [12]  299 	mov	r2,#0x00
      00049A                        300 00112$:
                                    301 ;	../ADC_Manager/adc.c:20: if(index){
      00049A EB               [12]  302 	mov	a,r3
      00049B 60 07            [24]  303 	jz	00102$
                                    304 ;	../ADC_Manager/adc.c:21: P1_7 = 1;
                                    305 ;	assignBit
      00049D D2 97            [12]  306 	setb	_P1_7
                                    307 ;	../ADC_Manager/adc.c:22: ADCSEL = bVAL_ENADC | bVAL_SADC3; //select ADC3
      00049F 75 DA 88         [24]  308 	mov	_ADCSEL,#0x88
      0004A2 80 05            [24]  309 	sjmp	00103$
      0004A4                        310 00102$:
                                    311 ;	../ADC_Manager/adc.c:24: P1_4 = 1;
                                    312 ;	assignBit
      0004A4 D2 94            [12]  313 	setb	_P1_4
                                    314 ;	../ADC_Manager/adc.c:25: ADCSEL = bVAL_ENADC | bVAL_SADC0; //select ADC0
      0004A6 75 DA 81         [24]  315 	mov	_ADCSEL,#0x81
      0004A9                        316 00103$:
                                    317 ;	../ADC_Manager/adc.c:28: for(j = 0; j < 8; j++){};
      0004A9 7F 08            [12]  318 	mov	r7,#0x08
      0004AB                        319 00111$:
      0004AB EF               [12]  320 	mov	a,r7
      0004AC 14               [12]  321 	dec	a
      0004AD FF               [12]  322 	mov	r7,a
      0004AE 70 FB            [24]  323 	jnz	00111$
                                    324 ;	../ADC_Manager/adc.c:29: while((ADCSEL & bVAL_Ready) == 0){};
      0004B0                        325 00105$:
      0004B0 E5 DA            [12]  326 	mov	a,_ADCSEL
      0004B2 30 E4 FB         [24]  327 	jnb	acc.4,00105$
                                    328 ;	../ADC_Manager/adc.c:31: temp = (ADCVAL1 << 2);
      0004B5 AE DB            [24]  329 	mov	r6,_ADCVAL1
      0004B7 7F 00            [12]  330 	mov	r7,#0x00
      0004B9 EE               [12]  331 	mov	a,r6
      0004BA 2E               [12]  332 	add	a,r6
      0004BB FE               [12]  333 	mov	r6,a
      0004BC EF               [12]  334 	mov	a,r7
      0004BD 33               [12]  335 	rlc	a
      0004BE FF               [12]  336 	mov	r7,a
      0004BF EE               [12]  337 	mov	a,r6
      0004C0 2E               [12]  338 	add	a,r6
      0004C1 FE               [12]  339 	mov	r6,a
      0004C2 EF               [12]  340 	mov	a,r7
      0004C3 33               [12]  341 	rlc	a
      0004C4 FF               [12]  342 	mov	r7,a
                                    343 ;	../ADC_Manager/adc.c:32: temp = temp | ADCVAL2;	
      0004C5 AD DC            [24]  344 	mov	r5,_ADCVAL2
      0004C7 7C 00            [12]  345 	mov	r4,#0x00
      0004C9 EE               [12]  346 	mov	a,r6
      0004CA 42 05            [12]  347 	orl	ar5,a
      0004CC EF               [12]  348 	mov	a,r7
      0004CD 42 04            [12]  349 	orl	ar4,a
                                    350 ;	../ADC_Manager/adc.c:34: ADCSEL &= ~bVAL_ENADC; //disable adc
      0004CF 53 DA 7F         [24]  351 	anl	_ADCSEL,#0x7f
                                    352 ;	../ADC_Manager/adc.c:36: level += temp;
      0004D2 8D 07            [24]  353 	mov	ar7,r5
      0004D4 7D 00            [12]  354 	mov	r5,#0x00
      0004D6 7E 00            [12]  355 	mov	r6,#0x00
      0004D8 A8 1A            [24]  356 	mov	r0,_bp
      0004DA 08               [12]  357 	inc	r0
      0004DB EF               [12]  358 	mov	a,r7
      0004DC 26               [12]  359 	add	a,@r0
      0004DD F6               [12]  360 	mov	@r0,a
      0004DE EC               [12]  361 	mov	a,r4
      0004DF 08               [12]  362 	inc	r0
      0004E0 36               [12]  363 	addc	a,@r0
      0004E1 F6               [12]  364 	mov	@r0,a
      0004E2 ED               [12]  365 	mov	a,r5
      0004E3 08               [12]  366 	inc	r0
      0004E4 36               [12]  367 	addc	a,@r0
      0004E5 F6               [12]  368 	mov	@r0,a
      0004E6 EE               [12]  369 	mov	a,r6
      0004E7 08               [12]  370 	inc	r0
      0004E8 36               [12]  371 	addc	a,@r0
      0004E9 F6               [12]  372 	mov	@r0,a
                                    373 ;	../ADC_Manager/adc.c:17: for(i = 0; i < (1 << ADC_AVERAGE_SHIFT); i++){
      0004EA 0A               [12]  374 	inc	r2
      0004EB BA 20 00         [24]  375 	cjne	r2,#0x20,00151$
      0004EE                        376 00151$:
      0004EE 40 AA            [24]  377 	jc	00112$
                                    378 ;	../ADC_Manager/adc.c:39: return (uint16_t)(level >> ADC_AVERAGE_SHIFT);
      0004F0 A8 1A            [24]  379 	mov	r0,_bp
      0004F2 08               [12]  380 	inc	r0
      0004F3 86 04            [24]  381 	mov	ar4,@r0
      0004F5 08               [12]  382 	inc	r0
      0004F6 E6               [12]  383 	mov	a,@r0
      0004F7 C4               [12]  384 	swap	a
      0004F8 03               [12]  385 	rr	a
      0004F9 CC               [12]  386 	xch	a,r4
      0004FA C4               [12]  387 	swap	a
      0004FB 03               [12]  388 	rr	a
      0004FC 54 07            [12]  389 	anl	a,#0x07
      0004FE 6C               [12]  390 	xrl	a,r4
      0004FF CC               [12]  391 	xch	a,r4
      000500 54 07            [12]  392 	anl	a,#0x07
      000502 CC               [12]  393 	xch	a,r4
      000503 6C               [12]  394 	xrl	a,r4
      000504 CC               [12]  395 	xch	a,r4
      000505 FD               [12]  396 	mov	r5,a
      000506 08               [12]  397 	inc	r0
      000507 E6               [12]  398 	mov	a,@r0
      000508 C4               [12]  399 	swap	a
      000509 03               [12]  400 	rr	a
      00050A 54 F8            [12]  401 	anl	a,#0xf8
      00050C 4D               [12]  402 	orl	a,r5
      00050D FD               [12]  403 	mov	r5,a
      00050E 86 06            [24]  404 	mov	ar6,@r0
      000510 08               [12]  405 	inc	r0
      000511 E6               [12]  406 	mov	a,@r0
      000512 C4               [12]  407 	swap	a
      000513 03               [12]  408 	rr	a
      000514 CE               [12]  409 	xch	a,r6
      000515 C4               [12]  410 	swap	a
      000516 03               [12]  411 	rr	a
      000517 54 07            [12]  412 	anl	a,#0x07
      000519 6E               [12]  413 	xrl	a,r6
      00051A CE               [12]  414 	xch	a,r6
      00051B 54 07            [12]  415 	anl	a,#0x07
      00051D CE               [12]  416 	xch	a,r6
      00051E 6E               [12]  417 	xrl	a,r6
      00051F CE               [12]  418 	xch	a,r6
      000520 8C 82            [24]  419 	mov	dpl,r4
      000522 8D 83            [24]  420 	mov	dph,r5
                                    421 ;	../ADC_Manager/adc.c:40: }
      000524 85 1A 81         [24]  422 	mov	sp,_bp
      000527 D0 1A            [24]  423 	pop	_bp
      000529 22               [24]  424 	ret
                                    425 	.area CSEG    (CODE)
                                    426 	.area CONST   (CODE)
                                    427 	.area XINIT   (CODE)
                                    428 	.area CABS    (ABS,CODE)
