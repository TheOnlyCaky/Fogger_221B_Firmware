                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dmx
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_dmx_address
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
                                     97 	.globl _Has_DMX
                                     98 	.globl _DMX
                                     99 	.globl _dmxReceiveByteISR
                                    100 	.globl _dmxBreakDetectedISR
                                    101 ;--------------------------------------------------------
                                    102 ; special function registers
                                    103 ;--------------------------------------------------------
                                    104 	.area RSEG    (ABS,DATA)
      000000                        105 	.org 0x0000
                           0000BF   106 _CHIPCON	=	0x00bf
                           0000B7   107 _PCLKSEL	=	0x00b7
                           000080   108 _P0	=	0x0080
                           000090   109 _P1	=	0x0090
                           0000A0   110 _P2	=	0x00a0
                           0000B0   111 _P3	=	0x00b0
                           0000A8   112 _IE	=	0x00a8
                           0000E8   113 _EIE	=	0x00e8
                           000091   114 _EXIF	=	0x0091
                           0000DA   115 _ADCSEL	=	0x00da
                           0000DB   116 _ADCVAL1	=	0x00db
                           0000DC   117 _ADCVAL2	=	0x00dc
                           0000D9   118 _P1_OPT	=	0x00d9
                           000098   119 _SCON	=	0x0098
                           0000CA   120 _RCAP2L	=	0x00ca
                           0000CB   121 _RCAP2H	=	0x00cb
                           0000C8   122 _T2CON	=	0x00c8
                           00009B   123 _TH3	=	0x009b
                           00009A   124 _TL3	=	0x009a
                           000099   125 _SBUF	=	0x0099
                           0000D3   126 _PWM_EA1	=	0x00d3
                           0000D4   127 _PWM_EA2	=	0x00d4
                           0000BD   128 _PWMDATA11H	=	0x00bd
                           0000BE   129 _PWMDATA11L	=	0x00be
                           0000B5   130 _PWMDATA14H	=	0x00b5
                           0000B6   131 _PWMDATA14L	=	0x00b6
                           0000AD   132 _PWMDATA17H	=	0x00ad
                           0000AE   133 _PWMDATA17L	=	0x00ae
                           000088   134 _TCON	=	0x0088
                           000089   135 _TMOD	=	0x0089
                           00008E   136 _CKCON	=	0x008e
                           00008A   137 _TL0	=	0x008a
                           00008C   138 _TH0	=	0x008c
                           0000E4   139 _IAPEN	=	0x00e4
                           0000E5   140 _IAP_ADRL	=	0x00e5
                           0000E6   141 _IAP_ADRH	=	0x00e6
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000090   155 _P1_0	=	0x0090
                           000091   156 _P1_1	=	0x0091
                           000092   157 _P1_2	=	0x0092
                           000093   158 _P1_3	=	0x0093
                           000094   159 _P1_4	=	0x0094
                           000095   160 _P1_5	=	0x0095
                           000096   161 _P1_6	=	0x0096
                           000097   162 _P1_7	=	0x0097
                           0000A0   163 _P2_0	=	0x00a0
                           0000A1   164 _P2_1	=	0x00a1
                           0000A2   165 _P2_2	=	0x00a2
                           0000A3   166 _P2_3	=	0x00a3
                           0000A4   167 _P2_4	=	0x00a4
                           0000A5   168 _P2_5	=	0x00a5
                           0000A6   169 _P2_6	=	0x00a6
                           0000A7   170 _P2_7	=	0x00a7
                           0000B0   171 _P3_0	=	0x00b0
                           0000B1   172 _P3_1	=	0x00b1
                           0000B2   173 _P3_2	=	0x00b2
                           0000B3   174 _P3_3	=	0x00b3
                           0000B4   175 _P3_4	=	0x00b4
                           0000B5   176 _P3_5	=	0x00b5
                           0000B6   177 _P3_6	=	0x00b6
                           0000B7   178 _P3_7	=	0x00b7
                           0000AF   179 _EA	=	0x00af
                           0000A9   180 _ET0	=	0x00a9
                           0000AC   181 _ES	=	0x00ac
                           000098   182 _RI	=	0x0098
                           000093   183 _SCK	=	0x0093
                           000095   184 _SER	=	0x0095
                           000092   185 _RCK	=	0x0092
                           00009F   186 _SM0	=	0x009f
                           00009E   187 _SM1	=	0x009e
                           00009D   188 _SM2	=	0x009d
                           00009C   189 _REN	=	0x009c
                           0000CD   190 _RCLK	=	0x00cd
                           0000CC   191 _TCLK	=	0x00cc
                           0000CB   192 _EXEN2	=	0x00cb
                           0000CA   193 _TR2	=	0x00ca
                           0000C9   194 _CT2	=	0x00c9
                           0000C8   195 _CPRL2	=	0x00c8
                                    196 ;--------------------------------------------------------
                                    197 ; overlayable register banks
                                    198 ;--------------------------------------------------------
                                    199 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        200 	.ds 8
                                    201 ;--------------------------------------------------------
                                    202 ; overlayable bit register bank
                                    203 ;--------------------------------------------------------
                                    204 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        205 bits:
      000020                        206 	.ds 1
                           008000   207 	b0 = bits[0]
                           008100   208 	b1 = bits[1]
                           008200   209 	b2 = bits[2]
                           008300   210 	b3 = bits[3]
                           008400   211 	b4 = bits[4]
                           008500   212 	b5 = bits[5]
                           008600   213 	b6 = bits[6]
                           008700   214 	b7 = bits[7]
                                    215 ;--------------------------------------------------------
                                    216 ; internal ram data
                                    217 ;--------------------------------------------------------
                                    218 	.area DSEG    (DATA)
      00002D                        219 _DMX::
      00002D                        220 	.ds 9
      000036                        221 _Has_DMX::
      000036                        222 	.ds 1
      000037                        223 _Index:
      000037                        224 	.ds 2
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram 
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; indirectly addressable internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area ISEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; absolute internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area IABS    (ABS,DATA)
                                    236 	.area IABS    (ABS,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; bit data
                                    239 ;--------------------------------------------------------
                                    240 	.area BSEG    (BIT)
                                    241 ;--------------------------------------------------------
                                    242 ; paged external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area PSEG    (PAG,XDATA)
                                    245 ;--------------------------------------------------------
                                    246 ; external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XSEG    (XDATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area XABS    (ABS,XDATA)
                                    253 ;--------------------------------------------------------
                                    254 ; external initialized ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area XISEG   (XDATA)
                                    257 	.area HOME    (CODE)
                                    258 	.area GSINIT0 (CODE)
                                    259 	.area GSINIT1 (CODE)
                                    260 	.area GSINIT2 (CODE)
                                    261 	.area GSINIT3 (CODE)
                                    262 	.area GSINIT4 (CODE)
                                    263 	.area GSINIT5 (CODE)
                                    264 	.area GSINIT  (CODE)
                                    265 	.area GSFINAL (CODE)
                                    266 	.area CSEG    (CODE)
                                    267 ;--------------------------------------------------------
                                    268 ; global & static initialisations
                                    269 ;--------------------------------------------------------
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 ;	../DMX_Manager/dmx.c:13: volatile uint8_t Has_DMX = 0;
      0000C6 75 36 00         [24]  275 	mov	_Has_DMX,#0x00
                                    276 ;	../DMX_Manager/dmx.c:14: static volatile uint16_t Index = 0;
      0000C9 E4               [12]  277 	clr	a
      0000CA F5 37            [12]  278 	mov	_Index,a
      0000CC F5 38            [12]  279 	mov	(_Index + 1),a
                                    280 ;--------------------------------------------------------
                                    281 ; Home
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
                                    284 	.area HOME    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; code
                                    287 ;--------------------------------------------------------
                                    288 	.area CSEG    (CODE)
                                    289 ;------------------------------------------------------------
                                    290 ;Allocation info for local variables in function 'dmxReceiveByteISR'
                                    291 ;------------------------------------------------------------
                                    292 ;address                   Allocated to registers r6 r7 
                                    293 ;------------------------------------------------------------
                                    294 ;	../DMX_Manager/dmx.c:21: void dmxReceiveByteISR(void) __interrupt (4){
                                    295 ;	-----------------------------------------
                                    296 ;	 function dmxReceiveByteISR
                                    297 ;	-----------------------------------------
      001DC7                        298 _dmxReceiveByteISR:
                           000007   299 	ar7 = 0x07
                           000006   300 	ar6 = 0x06
                           000005   301 	ar5 = 0x05
                           000004   302 	ar4 = 0x04
                           000003   303 	ar3 = 0x03
                           000002   304 	ar2 = 0x02
                           000001   305 	ar1 = 0x01
                           000000   306 	ar0 = 0x00
      001DC7 C0 20            [24]  307 	push	bits
      001DC9 C0 E0            [24]  308 	push	acc
      001DCB C0 F0            [24]  309 	push	b
      001DCD C0 82            [24]  310 	push	dpl
      001DCF C0 83            [24]  311 	push	dph
      001DD1 C0 07            [24]  312 	push	(0+7)
      001DD3 C0 06            [24]  313 	push	(0+6)
      001DD5 C0 05            [24]  314 	push	(0+5)
      001DD7 C0 04            [24]  315 	push	(0+4)
      001DD9 C0 03            [24]  316 	push	(0+3)
      001DDB C0 02            [24]  317 	push	(0+2)
      001DDD C0 01            [24]  318 	push	(0+1)
      001DDF C0 00            [24]  319 	push	(0+0)
      001DE1 C0 D0            [24]  320 	push	psw
      001DE3 75 D0 00         [24]  321 	mov	psw,#0x00
                                    322 ;	../DMX_Manager/dmx.c:22: uint16_t address = get_dmx_address();
      001DE6 12 2A 1F         [24]  323 	lcall	_get_dmx_address
      001DE9 AE 82            [24]  324 	mov	r6,dpl
      001DEB AF 83            [24]  325 	mov	r7,dph
                                    326 ;	../DMX_Manager/dmx.c:25: TH3 = BREAK_TIMER_RELOAD_HIGH;
      001DED 75 9B FC         [24]  327 	mov	_TH3,#0xfc
                                    328 ;	../DMX_Manager/dmx.c:26: TL3 = BREAK_TIMER_RELOAD_LOW;
      001DF0 75 9A D0         [24]  329 	mov	_TL3,#0xd0
                                    330 ;	../DMX_Manager/dmx.c:27: Has_DMX = 0xFF;
      001DF3 75 36 FF         [24]  331 	mov	_Has_DMX,#0xff
                                    332 ;	../DMX_Manager/dmx.c:29: Index++;
      001DF6 74 01            [12]  333 	mov	a,#0x01
      001DF8 25 37            [12]  334 	add	a,_Index
      001DFA F5 37            [12]  335 	mov	_Index,a
      001DFC E4               [12]  336 	clr	a
      001DFD 35 38            [12]  337 	addc	a,(_Index + 1)
      001DFF F5 38            [12]  338 	mov	(_Index + 1),a
                                    339 ;	../DMX_Manager/dmx.c:31: if(Index >= address && Index < address + MAX_CHANNEL_MODE){
      001E01 C3               [12]  340 	clr	c
      001E02 E5 37            [12]  341 	mov	a,_Index
      001E04 9E               [12]  342 	subb	a,r6
      001E05 E5 38            [12]  343 	mov	a,(_Index + 1)
      001E07 9F               [12]  344 	subb	a,r7
      001E08 40 1A            [24]  345 	jc	00102$
      001E0A 74 09            [12]  346 	mov	a,#0x09
      001E0C 2E               [12]  347 	add	a,r6
      001E0D FC               [12]  348 	mov	r4,a
      001E0E E4               [12]  349 	clr	a
      001E0F 3F               [12]  350 	addc	a,r7
      001E10 FD               [12]  351 	mov	r5,a
      001E11 C3               [12]  352 	clr	c
      001E12 E5 37            [12]  353 	mov	a,_Index
      001E14 9C               [12]  354 	subb	a,r4
      001E15 E5 38            [12]  355 	mov	a,(_Index + 1)
      001E17 9D               [12]  356 	subb	a,r5
      001E18 50 0A            [24]  357 	jnc	00102$
                                    358 ;	../DMX_Manager/dmx.c:32: DMX[Index - address] = SBUF; //sbuf is the UART0 buffer reg
      001E1A E5 37            [12]  359 	mov	a,_Index
      001E1C FD               [12]  360 	mov	r5,a
      001E1D C3               [12]  361 	clr	c
      001E1E 9E               [12]  362 	subb	a,r6
      001E1F 24 2D            [12]  363 	add	a,#_DMX
      001E21 F8               [12]  364 	mov	r0,a
      001E22 A6 99            [24]  365 	mov	@r0,_SBUF
      001E24                        366 00102$:
                                    367 ;	../DMX_Manager/dmx.c:36: RI = 0;
                                    368 ;	assignBit
      001E24 C2 98            [12]  369 	clr	_RI
                                    370 ;	../DMX_Manager/dmx.c:37: }
      001E26 D0 D0            [24]  371 	pop	psw
      001E28 D0 00            [24]  372 	pop	(0+0)
      001E2A D0 01            [24]  373 	pop	(0+1)
      001E2C D0 02            [24]  374 	pop	(0+2)
      001E2E D0 03            [24]  375 	pop	(0+3)
      001E30 D0 04            [24]  376 	pop	(0+4)
      001E32 D0 05            [24]  377 	pop	(0+5)
      001E34 D0 06            [24]  378 	pop	(0+6)
      001E36 D0 07            [24]  379 	pop	(0+7)
      001E38 D0 83            [24]  380 	pop	dph
      001E3A D0 82            [24]  381 	pop	dpl
      001E3C D0 F0            [24]  382 	pop	b
      001E3E D0 E0            [24]  383 	pop	acc
      001E40 D0 20            [24]  384 	pop	bits
      001E42 32               [24]  385 	reti
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'dmxBreakDetectedISR'
                                    388 ;------------------------------------------------------------
                                    389 ;	../DMX_Manager/dmx.c:40: void dmxBreakDetectedISR(void) __interrupt (8){
                                    390 ;	-----------------------------------------
                                    391 ;	 function dmxBreakDetectedISR
                                    392 ;	-----------------------------------------
      001E43                        393 _dmxBreakDetectedISR:
      001E43 C0 E0            [24]  394 	push	acc
                                    395 ;	../DMX_Manager/dmx.c:44: if(!Index){
      001E45 E5 37            [12]  396 	mov	a,_Index
      001E47 45 38            [12]  397 	orl	a,(_Index + 1)
                                    398 ;	../DMX_Manager/dmx.c:45: Has_DMX = 0x00;
                                    399 ;	../DMX_Manager/dmx.c:46: DMX[0] = 0x00;
                                    400 ;	../DMX_Manager/dmx.c:47: DMX[1] = 0x00;
                                    401 ;	../DMX_Manager/dmx.c:48: DMX[2] = 0x00;
      001E49 70 1A            [24]  402 	jnz	00102$
      001E4B F5 36            [12]  403 	mov	_Has_DMX,a
      001E4D F5 2D            [12]  404 	mov	_DMX,a
      001E4F F5 2E            [12]  405 	mov	(_DMX + 0x0001),a
      001E51 F5 2F            [12]  406 	mov	(_DMX + 0x0002),a
                                    407 ;	../DMX_Manager/dmx.c:49: DMX[3] = 0x00;
      001E53 75 30 00         [24]  408 	mov	(_DMX + 0x0003),#0x00
                                    409 ;	../DMX_Manager/dmx.c:50: DMX[4] = 0x00;
      001E56 75 31 00         [24]  410 	mov	(_DMX + 0x0004),#0x00
                                    411 ;	../DMX_Manager/dmx.c:51: DMX[5] = 0x00;
      001E59 75 32 00         [24]  412 	mov	(_DMX + 0x0005),#0x00
                                    413 ;	../DMX_Manager/dmx.c:52: DMX[6] = 0x00;
      001E5C 75 33 00         [24]  414 	mov	(_DMX + 0x0006),#0x00
                                    415 ;	../DMX_Manager/dmx.c:53: DMX[7] = 0x00;
      001E5F 75 34 00         [24]  416 	mov	(_DMX + 0x0007),#0x00
                                    417 ;	../DMX_Manager/dmx.c:54: DMX[8] = 0x00;
      001E62 75 35 00         [24]  418 	mov	(_DMX + 0x0008),#0x00
      001E65                        419 00102$:
                                    420 ;	../DMX_Manager/dmx.c:57: Index = 0;
      001E65 E4               [12]  421 	clr	a
      001E66 F5 37            [12]  422 	mov	_Index,a
      001E68 F5 38            [12]  423 	mov	(_Index + 1),a
                                    424 ;	../DMX_Manager/dmx.c:60: EXIF &= ~EIE_Timer3_Flag;
      001E6A 53 91 EF         [24]  425 	anl	_EXIF,#0xef
                                    426 ;	../DMX_Manager/dmx.c:61: }
      001E6D D0 E0            [24]  427 	pop	acc
      001E6F 32               [24]  428 	reti
                                    429 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    430 ;	eliminated unneeded push/pop ar1
                                    431 ;	eliminated unneeded push/pop ar0
                                    432 ;	eliminated unneeded push/pop psw
                                    433 ;	eliminated unneeded push/pop dpl
                                    434 ;	eliminated unneeded push/pop dph
                                    435 ;	eliminated unneeded push/pop b
                                    436 	.area CSEG    (CODE)
                                    437 	.area CONST   (CODE)
                                    438 	.area XINIT   (CODE)
                                    439 	.area CABS    (ABS,CODE)
