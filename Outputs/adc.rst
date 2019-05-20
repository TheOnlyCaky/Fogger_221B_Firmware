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
                                    204 	.area	OSEG    (OVR,DATA)
      000074                        205 _get_adc_value_index_65536_2:
      000074                        206 	.ds 1
      000075                        207 _get_adc_value_level_65536_3:
      000075                        208 	.ds 4
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
                                    255 ;--------------------------------------------------------
                                    256 ; Home
                                    257 ;--------------------------------------------------------
                                    258 	.area HOME    (CODE)
                                    259 	.area HOME    (CODE)
                                    260 ;--------------------------------------------------------
                                    261 ; code
                                    262 ;--------------------------------------------------------
                                    263 	.area CSEG    (CODE)
                                    264 ;------------------------------------------------------------
                                    265 ;Allocation info for local variables in function 'get_adc_value'
                                    266 ;------------------------------------------------------------
                                    267 ;index                     Allocated with name '_get_adc_value_index_65536_2'
                                    268 ;level                     Allocated with name '_get_adc_value_level_65536_3'
                                    269 ;temp                      Allocated to registers r7 r6 
                                    270 ;i                         Allocated to registers r2 
                                    271 ;j                         Allocated to registers r1 
                                    272 ;------------------------------------------------------------
                                    273 ;	../ADC_Manager/adc.c:12: uint16_t get_adc_value(uint8_t index){
                                    274 ;	-----------------------------------------
                                    275 ;	 function get_adc_value
                                    276 ;	-----------------------------------------
      000454                        277 _get_adc_value:
                           000007   278 	ar7 = 0x07
                           000006   279 	ar6 = 0x06
                           000005   280 	ar5 = 0x05
                           000004   281 	ar4 = 0x04
                           000003   282 	ar3 = 0x03
                           000002   283 	ar2 = 0x02
                           000001   284 	ar1 = 0x01
                           000000   285 	ar0 = 0x00
      000454 85 82 74         [24]  286 	mov	_get_adc_value_index_65536_2,dpl
                                    287 ;	../ADC_Manager/adc.c:13: uint32_t level = 0;
                                    288 ;	../ADC_Manager/adc.c:17: for(i = 0; i < (1 << ADC_AVERAGE_SHIFT); i++){
      000457 E4               [12]  289 	clr	a
      000458 F5 75            [12]  290 	mov	_get_adc_value_level_65536_3,a
      00045A F5 76            [12]  291 	mov	(_get_adc_value_level_65536_3 + 1),a
      00045C F5 77            [12]  292 	mov	(_get_adc_value_level_65536_3 + 2),a
      00045E F5 78            [12]  293 	mov	(_get_adc_value_level_65536_3 + 3),a
      000460 FA               [12]  294 	mov	r2,a
      000461                        295 00112$:
                                    296 ;	../ADC_Manager/adc.c:20: if(index){
      000461 E5 74            [12]  297 	mov	a,_get_adc_value_index_65536_2
      000463 60 07            [24]  298 	jz	00102$
                                    299 ;	../ADC_Manager/adc.c:21: P1_7 = 1;
                                    300 ;	assignBit
      000465 D2 97            [12]  301 	setb	_P1_7
                                    302 ;	../ADC_Manager/adc.c:22: ADCSEL = bVAL_ENADC | bVAL_SADC3; //select ADC3
      000467 75 DA 88         [24]  303 	mov	_ADCSEL,#0x88
      00046A 80 05            [24]  304 	sjmp	00103$
      00046C                        305 00102$:
                                    306 ;	../ADC_Manager/adc.c:24: P1_4 = 1;
                                    307 ;	assignBit
      00046C D2 94            [12]  308 	setb	_P1_4
                                    309 ;	../ADC_Manager/adc.c:25: ADCSEL = bVAL_ENADC | bVAL_SADC0; //select ADC0
      00046E 75 DA 81         [24]  310 	mov	_ADCSEL,#0x81
      000471                        311 00103$:
                                    312 ;	../ADC_Manager/adc.c:28: for(j = 0; j < 8; j++){};
      000471 79 08            [12]  313 	mov	r1,#0x08
      000473                        314 00111$:
      000473 E9               [12]  315 	mov	a,r1
      000474 14               [12]  316 	dec	a
      000475 F9               [12]  317 	mov	r1,a
      000476 70 FB            [24]  318 	jnz	00111$
                                    319 ;	../ADC_Manager/adc.c:29: while((ADCSEL & bVAL_Ready) == 0){};
      000478                        320 00105$:
      000478 E5 DA            [12]  321 	mov	a,_ADCSEL
      00047A 30 E4 FB         [24]  322 	jnb	acc.4,00105$
                                    323 ;	../ADC_Manager/adc.c:31: temp = (ADCVAL1 << 2);
      00047D A8 DB            [24]  324 	mov	r0,_ADCVAL1
      00047F 79 00            [12]  325 	mov	r1,#0x00
      000481 E8               [12]  326 	mov	a,r0
      000482 28               [12]  327 	add	a,r0
      000483 F8               [12]  328 	mov	r0,a
      000484 E9               [12]  329 	mov	a,r1
      000485 33               [12]  330 	rlc	a
      000486 F9               [12]  331 	mov	r1,a
      000487 E8               [12]  332 	mov	a,r0
      000488 28               [12]  333 	add	a,r0
      000489 F8               [12]  334 	mov	r0,a
      00048A E9               [12]  335 	mov	a,r1
      00048B 33               [12]  336 	rlc	a
      00048C F9               [12]  337 	mov	r1,a
                                    338 ;	../ADC_Manager/adc.c:32: temp = temp | ADCVAL2;	
      00048D AF DC            [24]  339 	mov	r7,_ADCVAL2
      00048F 7E 00            [12]  340 	mov	r6,#0x00
      000491 E8               [12]  341 	mov	a,r0
      000492 42 07            [12]  342 	orl	ar7,a
      000494 E9               [12]  343 	mov	a,r1
      000495 42 06            [12]  344 	orl	ar6,a
                                    345 ;	../ADC_Manager/adc.c:34: ADCSEL &= ~bVAL_ENADC; //disable adc
      000497 53 DA 7F         [24]  346 	anl	_ADCSEL,#0x7f
                                    347 ;	../ADC_Manager/adc.c:36: level += temp;
      00049A 8E 04            [24]  348 	mov	ar4,r6
      00049C E4               [12]  349 	clr	a
      00049D FD               [12]  350 	mov	r5,a
      00049E FE               [12]  351 	mov	r6,a
      00049F EF               [12]  352 	mov	a,r7
      0004A0 25 75            [12]  353 	add	a,_get_adc_value_level_65536_3
      0004A2 F5 75            [12]  354 	mov	_get_adc_value_level_65536_3,a
      0004A4 EC               [12]  355 	mov	a,r4
      0004A5 35 76            [12]  356 	addc	a,(_get_adc_value_level_65536_3 + 1)
      0004A7 F5 76            [12]  357 	mov	(_get_adc_value_level_65536_3 + 1),a
      0004A9 ED               [12]  358 	mov	a,r5
      0004AA 35 77            [12]  359 	addc	a,(_get_adc_value_level_65536_3 + 2)
      0004AC F5 77            [12]  360 	mov	(_get_adc_value_level_65536_3 + 2),a
      0004AE EE               [12]  361 	mov	a,r6
      0004AF 35 78            [12]  362 	addc	a,(_get_adc_value_level_65536_3 + 3)
      0004B1 F5 78            [12]  363 	mov	(_get_adc_value_level_65536_3 + 3),a
                                    364 ;	../ADC_Manager/adc.c:17: for(i = 0; i < (1 << ADC_AVERAGE_SHIFT); i++){
      0004B3 0A               [12]  365 	inc	r2
      0004B4 BA 20 00         [24]  366 	cjne	r2,#0x20,00151$
      0004B7                        367 00151$:
      0004B7 40 A8            [24]  368 	jc	00112$
                                    369 ;	../ADC_Manager/adc.c:39: return (uint16_t)(level >> ADC_AVERAGE_SHIFT);
      0004B9 AC 75            [24]  370 	mov	r4,_get_adc_value_level_65536_3
      0004BB E5 76            [12]  371 	mov	a,(_get_adc_value_level_65536_3 + 1)
      0004BD C4               [12]  372 	swap	a
      0004BE 03               [12]  373 	rr	a
      0004BF CC               [12]  374 	xch	a,r4
      0004C0 C4               [12]  375 	swap	a
      0004C1 03               [12]  376 	rr	a
      0004C2 54 07            [12]  377 	anl	a,#0x07
      0004C4 6C               [12]  378 	xrl	a,r4
      0004C5 CC               [12]  379 	xch	a,r4
      0004C6 54 07            [12]  380 	anl	a,#0x07
      0004C8 CC               [12]  381 	xch	a,r4
      0004C9 6C               [12]  382 	xrl	a,r4
      0004CA CC               [12]  383 	xch	a,r4
      0004CB FD               [12]  384 	mov	r5,a
      0004CC E5 77            [12]  385 	mov	a,(_get_adc_value_level_65536_3 + 2)
      0004CE C4               [12]  386 	swap	a
      0004CF 03               [12]  387 	rr	a
      0004D0 54 F8            [12]  388 	anl	a,#0xf8
      0004D2 4D               [12]  389 	orl	a,r5
      0004D3 FD               [12]  390 	mov	r5,a
      0004D4 AE 77            [24]  391 	mov	r6,(_get_adc_value_level_65536_3 + 2)
      0004D6 E5 78            [12]  392 	mov	a,(_get_adc_value_level_65536_3 + 3)
      0004D8 C4               [12]  393 	swap	a
      0004D9 03               [12]  394 	rr	a
      0004DA CE               [12]  395 	xch	a,r6
      0004DB C4               [12]  396 	swap	a
      0004DC 03               [12]  397 	rr	a
      0004DD 54 07            [12]  398 	anl	a,#0x07
      0004DF 6E               [12]  399 	xrl	a,r6
      0004E0 CE               [12]  400 	xch	a,r6
      0004E1 54 07            [12]  401 	anl	a,#0x07
      0004E3 CE               [12]  402 	xch	a,r6
      0004E4 6E               [12]  403 	xrl	a,r6
      0004E5 CE               [12]  404 	xch	a,r6
      0004E6 8C 82            [24]  405 	mov	dpl,r4
      0004E8 8D 83            [24]  406 	mov	dph,r5
                                    407 ;	../ADC_Manager/adc.c:40: }
      0004EA 22               [24]  408 	ret
                                    409 	.area CSEG    (CODE)
                                    410 	.area CONST   (CODE)
                                    411 	.area XINIT   (CODE)
                                    412 	.area CABS    (ABS,CODE)
