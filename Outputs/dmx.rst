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
      000021                        219 _DMX::
      000021                        220 	.ds 11
      00002C                        221 _Has_DMX::
      00002C                        222 	.ds 1
      00002D                        223 _Index:
      00002D                        224 	.ds 2
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
      0000C6 75 2C 00         [24]  275 	mov	_Has_DMX,#0x00
                                    276 ;	../DMX_Manager/dmx.c:14: static volatile uint16_t Index = 0;
      0000C9 E4               [12]  277 	clr	a
      0000CA F5 2D            [12]  278 	mov	_Index,a
      0000CC F5 2E            [12]  279 	mov	(_Index + 1),a
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
                                    293 ;value                     Allocated to registers r5 
                                    294 ;------------------------------------------------------------
                                    295 ;	../DMX_Manager/dmx.c:21: void dmxReceiveByteISR(void) __interrupt (4){
                                    296 ;	-----------------------------------------
                                    297 ;	 function dmxReceiveByteISR
                                    298 ;	-----------------------------------------
      002308                        299 _dmxReceiveByteISR:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
      002308 C0 20            [24]  308 	push	bits
      00230A C0 E0            [24]  309 	push	acc
      00230C C0 F0            [24]  310 	push	b
      00230E C0 82            [24]  311 	push	dpl
      002310 C0 83            [24]  312 	push	dph
      002312 C0 07            [24]  313 	push	(0+7)
      002314 C0 06            [24]  314 	push	(0+6)
      002316 C0 05            [24]  315 	push	(0+5)
      002318 C0 04            [24]  316 	push	(0+4)
      00231A C0 03            [24]  317 	push	(0+3)
      00231C C0 02            [24]  318 	push	(0+2)
      00231E C0 01            [24]  319 	push	(0+1)
      002320 C0 00            [24]  320 	push	(0+0)
      002322 C0 D0            [24]  321 	push	psw
      002324 75 D0 00         [24]  322 	mov	psw,#0x00
                                    323 ;	../DMX_Manager/dmx.c:22: uint16_t address = get_dmx_address();
      002327 12 31 44         [24]  324 	lcall	_get_dmx_address
      00232A AE 82            [24]  325 	mov	r6,dpl
      00232C AF 83            [24]  326 	mov	r7,dph
                                    327 ;	../DMX_Manager/dmx.c:23: uint8_t value = SBUF;
      00232E AD 99            [24]  328 	mov	r5,_SBUF
                                    329 ;	../DMX_Manager/dmx.c:26: TH3 = BREAK_TIMER_RELOAD_HIGH;
      002330 75 9B FC         [24]  330 	mov	_TH3,#0xfc
                                    331 ;	../DMX_Manager/dmx.c:27: TL3 = BREAK_TIMER_RELOAD_LOW;
      002333 75 9A EE         [24]  332 	mov	_TL3,#0xee
                                    333 ;	../DMX_Manager/dmx.c:28: Has_DMX = 0xFF;
      002336 75 2C FF         [24]  334 	mov	_Has_DMX,#0xff
                                    335 ;	../DMX_Manager/dmx.c:31: if(!Index && value){
      002339 E5 2D            [12]  336 	mov	a,_Index
      00233B 45 2E            [12]  337 	orl	a,(_Index + 1)
      00233D 70 09            [24]  338 	jnz	00102$
      00233F ED               [12]  339 	mov	a,r5
      002340 60 06            [24]  340 	jz	00102$
                                    341 ;	../DMX_Manager/dmx.c:32: Index = DMX_MAX_ADDRESS + 1; 
      002342 75 2D 01         [24]  342 	mov	_Index,#0x01
      002345 75 2E 02         [24]  343 	mov	(_Index + 1),#0x02
      002348                        344 00102$:
                                    345 ;	../DMX_Manager/dmx.c:35: if(Index >= address && Index < address + MAX_CHANNEL_MODE){
      002348 C3               [12]  346 	clr	c
      002349 E5 2D            [12]  347 	mov	a,_Index
      00234B 9E               [12]  348 	subb	a,r6
      00234C E5 2E            [12]  349 	mov	a,(_Index + 1)
      00234E 9F               [12]  350 	subb	a,r7
      00234F 40 1A            [24]  351 	jc	00105$
      002351 74 0B            [12]  352 	mov	a,#0x0b
      002353 2E               [12]  353 	add	a,r6
      002354 FB               [12]  354 	mov	r3,a
      002355 E4               [12]  355 	clr	a
      002356 3F               [12]  356 	addc	a,r7
      002357 FC               [12]  357 	mov	r4,a
      002358 C3               [12]  358 	clr	c
      002359 E5 2D            [12]  359 	mov	a,_Index
      00235B 9B               [12]  360 	subb	a,r3
      00235C E5 2E            [12]  361 	mov	a,(_Index + 1)
      00235E 9C               [12]  362 	subb	a,r4
      00235F 50 0A            [24]  363 	jnc	00105$
                                    364 ;	../DMX_Manager/dmx.c:36: DMX[Index - address] = value; //sbuf is the UART0 buffer reg
      002361 E5 2D            [12]  365 	mov	a,_Index
      002363 FC               [12]  366 	mov	r4,a
      002364 C3               [12]  367 	clr	c
      002365 9E               [12]  368 	subb	a,r6
      002366 24 21            [12]  369 	add	a,#_DMX
      002368 F8               [12]  370 	mov	r0,a
      002369 A6 05            [24]  371 	mov	@r0,ar5
      00236B                        372 00105$:
                                    373 ;	../DMX_Manager/dmx.c:39: Index++;
      00236B 74 01            [12]  374 	mov	a,#0x01
      00236D 25 2D            [12]  375 	add	a,_Index
      00236F F5 2D            [12]  376 	mov	_Index,a
      002371 E4               [12]  377 	clr	a
      002372 35 2E            [12]  378 	addc	a,(_Index + 1)
      002374 F5 2E            [12]  379 	mov	(_Index + 1),a
                                    380 ;	../DMX_Manager/dmx.c:42: RI = 0;
                                    381 ;	assignBit
      002376 C2 98            [12]  382 	clr	_RI
                                    383 ;	../DMX_Manager/dmx.c:43: }
      002378 D0 D0            [24]  384 	pop	psw
      00237A D0 00            [24]  385 	pop	(0+0)
      00237C D0 01            [24]  386 	pop	(0+1)
      00237E D0 02            [24]  387 	pop	(0+2)
      002380 D0 03            [24]  388 	pop	(0+3)
      002382 D0 04            [24]  389 	pop	(0+4)
      002384 D0 05            [24]  390 	pop	(0+5)
      002386 D0 06            [24]  391 	pop	(0+6)
      002388 D0 07            [24]  392 	pop	(0+7)
      00238A D0 83            [24]  393 	pop	dph
      00238C D0 82            [24]  394 	pop	dpl
      00238E D0 F0            [24]  395 	pop	b
      002390 D0 E0            [24]  396 	pop	acc
      002392 D0 20            [24]  397 	pop	bits
      002394 32               [24]  398 	reti
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'dmxBreakDetectedISR'
                                    401 ;------------------------------------------------------------
                                    402 ;	../DMX_Manager/dmx.c:46: void dmxBreakDetectedISR(void) __interrupt (8){
                                    403 ;	-----------------------------------------
                                    404 ;	 function dmxBreakDetectedISR
                                    405 ;	-----------------------------------------
      002395                        406 _dmxBreakDetectedISR:
      002395 C0 E0            [24]  407 	push	acc
                                    408 ;	../DMX_Manager/dmx.c:50: if(!Index){
      002397 E5 2D            [12]  409 	mov	a,_Index
      002399 45 2E            [12]  410 	orl	a,(_Index + 1)
                                    411 ;	../DMX_Manager/dmx.c:51: Has_DMX = 0x00;
                                    412 ;	../DMX_Manager/dmx.c:52: DMX[0] = 0x00;
                                    413 ;	../DMX_Manager/dmx.c:53: DMX[1] = 0x00;
                                    414 ;	../DMX_Manager/dmx.c:54: DMX[2] = 0x00;
      00239B 70 1A            [24]  415 	jnz	00102$
      00239D F5 2C            [12]  416 	mov	_Has_DMX,a
      00239F F5 21            [12]  417 	mov	_DMX,a
      0023A1 F5 22            [12]  418 	mov	(_DMX + 0x0001),a
      0023A3 F5 23            [12]  419 	mov	(_DMX + 0x0002),a
                                    420 ;	../DMX_Manager/dmx.c:55: DMX[3] = 0x00;
      0023A5 75 24 00         [24]  421 	mov	(_DMX + 0x0003),#0x00
                                    422 ;	../DMX_Manager/dmx.c:56: DMX[4] = 0x00;
      0023A8 75 25 00         [24]  423 	mov	(_DMX + 0x0004),#0x00
                                    424 ;	../DMX_Manager/dmx.c:57: DMX[5] = 0x00;
      0023AB 75 26 00         [24]  425 	mov	(_DMX + 0x0005),#0x00
                                    426 ;	../DMX_Manager/dmx.c:58: DMX[6] = 0x00;
      0023AE 75 27 00         [24]  427 	mov	(_DMX + 0x0006),#0x00
                                    428 ;	../DMX_Manager/dmx.c:59: DMX[7] = 0x00;
      0023B1 75 28 00         [24]  429 	mov	(_DMX + 0x0007),#0x00
                                    430 ;	../DMX_Manager/dmx.c:60: DMX[8] = 0x00;
      0023B4 75 29 00         [24]  431 	mov	(_DMX + 0x0008),#0x00
      0023B7                        432 00102$:
                                    433 ;	../DMX_Manager/dmx.c:63: Index = 0;
      0023B7 E4               [12]  434 	clr	a
      0023B8 F5 2D            [12]  435 	mov	_Index,a
      0023BA F5 2E            [12]  436 	mov	(_Index + 1),a
                                    437 ;	../DMX_Manager/dmx.c:66: EXIF &= ~EIE_Timer3_Flag;
      0023BC 53 91 EF         [24]  438 	anl	_EXIF,#0xef
                                    439 ;	../DMX_Manager/dmx.c:67: }
      0023BF D0 E0            [24]  440 	pop	acc
      0023C1 32               [24]  441 	reti
                                    442 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    443 ;	eliminated unneeded push/pop ar1
                                    444 ;	eliminated unneeded push/pop ar0
                                    445 ;	eliminated unneeded push/pop psw
                                    446 ;	eliminated unneeded push/pop dpl
                                    447 ;	eliminated unneeded push/pop dph
                                    448 ;	eliminated unneeded push/pop b
                                    449 	.area CSEG    (CODE)
                                    450 	.area CONST   (CODE)
                                    451 	.area XINIT   (CODE)
                                    452 	.area CABS    (ABS,CODE)
