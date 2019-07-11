                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module display
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
                                     96 	.globl _write_string
                                     97 	.globl _write_number
                                     98 	.globl _write_char
                                     99 	.globl _exe_command
                                    100 	.globl _charToCode
                                    101 	.globl _writeShiftReg
                                    102 	.globl _flipByte
                                    103 ;--------------------------------------------------------
                                    104 ; special function registers
                                    105 ;--------------------------------------------------------
                                    106 	.area RSEG    (ABS,DATA)
      000000                        107 	.org 0x0000
                           0000BF   108 _CHIPCON	=	0x00bf
                           0000B7   109 _PCLKSEL	=	0x00b7
                           000080   110 _P0	=	0x0080
                           000090   111 _P1	=	0x0090
                           0000A0   112 _P2	=	0x00a0
                           0000B0   113 _P3	=	0x00b0
                           0000A8   114 _IE	=	0x00a8
                           0000E8   115 _EIE	=	0x00e8
                           000091   116 _EXIF	=	0x0091
                           0000DA   117 _ADCSEL	=	0x00da
                           0000DB   118 _ADCVAL1	=	0x00db
                           0000DC   119 _ADCVAL2	=	0x00dc
                           0000D9   120 _P1_OPT	=	0x00d9
                           000098   121 _SCON	=	0x0098
                           0000CA   122 _RCAP2L	=	0x00ca
                           0000CB   123 _RCAP2H	=	0x00cb
                           0000C8   124 _T2CON	=	0x00c8
                           00009B   125 _TH3	=	0x009b
                           00009A   126 _TL3	=	0x009a
                           000099   127 _SBUF	=	0x0099
                           0000D3   128 _PWM_EA1	=	0x00d3
                           0000D4   129 _PWM_EA2	=	0x00d4
                           0000BD   130 _PWMDATA11H	=	0x00bd
                           0000BE   131 _PWMDATA11L	=	0x00be
                           0000B5   132 _PWMDATA14H	=	0x00b5
                           0000B6   133 _PWMDATA14L	=	0x00b6
                           0000AD   134 _PWMDATA17H	=	0x00ad
                           0000AE   135 _PWMDATA17L	=	0x00ae
                           000088   136 _TCON	=	0x0088
                           000089   137 _TMOD	=	0x0089
                           00008E   138 _CKCON	=	0x008e
                           00008A   139 _TL0	=	0x008a
                           00008C   140 _TH0	=	0x008c
                           0000E4   141 _IAPEN	=	0x00e4
                           0000E5   142 _IAP_ADRL	=	0x00e5
                           0000E6   143 _IAP_ADRH	=	0x00e6
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           0000A0   165 _P2_0	=	0x00a0
                           0000A1   166 _P2_1	=	0x00a1
                           0000A2   167 _P2_2	=	0x00a2
                           0000A3   168 _P2_3	=	0x00a3
                           0000A4   169 _P2_4	=	0x00a4
                           0000A5   170 _P2_5	=	0x00a5
                           0000A6   171 _P2_6	=	0x00a6
                           0000A7   172 _P2_7	=	0x00a7
                           0000B0   173 _P3_0	=	0x00b0
                           0000B1   174 _P3_1	=	0x00b1
                           0000B2   175 _P3_2	=	0x00b2
                           0000B3   176 _P3_3	=	0x00b3
                           0000B4   177 _P3_4	=	0x00b4
                           0000B5   178 _P3_5	=	0x00b5
                           0000B6   179 _P3_6	=	0x00b6
                           0000B7   180 _P3_7	=	0x00b7
                           0000AF   181 _EA	=	0x00af
                           0000A9   182 _ET0	=	0x00a9
                           0000AC   183 _ES	=	0x00ac
                           000098   184 _RI	=	0x0098
                           000093   185 _SCK	=	0x0093
                           000095   186 _SER	=	0x0095
                           000092   187 _RCK	=	0x0092
                           00009F   188 _SM0	=	0x009f
                           00009E   189 _SM1	=	0x009e
                           00009D   190 _SM2	=	0x009d
                           00009C   191 _REN	=	0x009c
                           0000CD   192 _RCLK	=	0x00cd
                           0000CC   193 _TCLK	=	0x00cc
                           0000CB   194 _EXEN2	=	0x00cb
                           0000CA   195 _TR2	=	0x00ca
                           0000C9   196 _CT2	=	0x00c9
                           0000C8   197 _CPRL2	=	0x00c8
                                    198 ;--------------------------------------------------------
                                    199 ; overlayable register banks
                                    200 ;--------------------------------------------------------
                                    201 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        202 	.ds 8
                                    203 ;--------------------------------------------------------
                                    204 ; internal ram data
                                    205 ;--------------------------------------------------------
                                    206 	.area DSEG    (DATA)
                                    207 ;--------------------------------------------------------
                                    208 ; overlayable items in internal ram 
                                    209 ;--------------------------------------------------------
                                    210 ;--------------------------------------------------------
                                    211 ; indirectly addressable internal ram data
                                    212 ;--------------------------------------------------------
                                    213 	.area ISEG    (DATA)
                                    214 ;--------------------------------------------------------
                                    215 ; absolute internal ram data
                                    216 ;--------------------------------------------------------
                                    217 	.area IABS    (ABS,DATA)
                                    218 	.area IABS    (ABS,DATA)
                                    219 ;--------------------------------------------------------
                                    220 ; bit data
                                    221 ;--------------------------------------------------------
                                    222 	.area BSEG    (BIT)
                                    223 ;--------------------------------------------------------
                                    224 ; paged external ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area PSEG    (PAG,XDATA)
                                    227 ;--------------------------------------------------------
                                    228 ; external ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area XSEG    (XDATA)
                                    231 ;--------------------------------------------------------
                                    232 ; absolute external ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area XABS    (ABS,XDATA)
                                    235 ;--------------------------------------------------------
                                    236 ; external initialized ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area XISEG   (XDATA)
                                    239 	.area HOME    (CODE)
                                    240 	.area GSINIT0 (CODE)
                                    241 	.area GSINIT1 (CODE)
                                    242 	.area GSINIT2 (CODE)
                                    243 	.area GSINIT3 (CODE)
                                    244 	.area GSINIT4 (CODE)
                                    245 	.area GSINIT5 (CODE)
                                    246 	.area GSINIT  (CODE)
                                    247 	.area GSFINAL (CODE)
                                    248 	.area CSEG    (CODE)
                                    249 ;--------------------------------------------------------
                                    250 ; global & static initialisations
                                    251 ;--------------------------------------------------------
                                    252 	.area HOME    (CODE)
                                    253 	.area GSINIT  (CODE)
                                    254 	.area GSFINAL (CODE)
                                    255 	.area GSINIT  (CODE)
                                    256 ;--------------------------------------------------------
                                    257 ; Home
                                    258 ;--------------------------------------------------------
                                    259 	.area HOME    (CODE)
                                    260 	.area HOME    (CODE)
                                    261 ;--------------------------------------------------------
                                    262 ; code
                                    263 ;--------------------------------------------------------
                                    264 	.area CSEG    (CODE)
                                    265 ;------------------------------------------------------------
                                    266 ;Allocation info for local variables in function 'write_string'
                                    267 ;------------------------------------------------------------
                                    268 ;length                    Allocated to stack - _bp -3
                                    269 ;index                     Allocated to stack - _bp -4
                                    270 ;line                      Allocated to stack - _bp -5
                                    271 ;selected                  Allocated to stack - _bp -6
                                    272 ;string                    Allocated to stack - _bp +1
                                    273 ;i                         Allocated to registers r3 
                                    274 ;done                      Allocated to registers r4 
                                    275 ;sloc0                     Allocated to stack - _bp +6
                                    276 ;------------------------------------------------------------
                                    277 ;	../UI_Manager/Display_Manager/display.c:16: void write_string(char* string, uint8_t length, uint8_t index, uint8_t line, uint8_t selected){
                                    278 ;	-----------------------------------------
                                    279 ;	 function write_string
                                    280 ;	-----------------------------------------
      001D25                        281 _write_string:
                           000007   282 	ar7 = 0x07
                           000006   283 	ar6 = 0x06
                           000005   284 	ar5 = 0x05
                           000004   285 	ar4 = 0x04
                           000003   286 	ar3 = 0x03
                           000002   287 	ar2 = 0x02
                           000001   288 	ar1 = 0x01
                           000000   289 	ar0 = 0x00
      001D25 C0 1A            [24]  290 	push	_bp
      001D27 85 81 1A         [24]  291 	mov	_bp,sp
      001D2A C0 82            [24]  292 	push	dpl
      001D2C C0 83            [24]  293 	push	dph
      001D2E C0 F0            [24]  294 	push	b
                                    295 ;	../UI_Manager/Display_Manager/display.c:17: uint8_t i, done = 0;
      001D30 7C 00            [12]  296 	mov	r4,#0x00
                                    297 ;	../UI_Manager/Display_Manager/display.c:20: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001D32 E5 1A            [12]  298 	mov	a,_bp
      001D34 24 FB            [12]  299 	add	a,#0xfb
      001D36 F8               [12]  300 	mov	r0,a
      001D37 E6               [12]  301 	mov	a,@r0
      001D38 60 0D            [24]  302 	jz	00115$
      001D3A E5 1A            [12]  303 	mov	a,_bp
      001D3C 24 FC            [12]  304 	add	a,#0xfc
      001D3E F8               [12]  305 	mov	r0,a
      001D3F 86 03            [24]  306 	mov	ar3,@r0
      001D41 74 40            [12]  307 	mov	a,#0x40
      001D43 2B               [12]  308 	add	a,r3
      001D44 FB               [12]  309 	mov	r3,a
      001D45 80 07            [24]  310 	sjmp	00116$
      001D47                        311 00115$:
      001D47 E5 1A            [12]  312 	mov	a,_bp
      001D49 24 FC            [12]  313 	add	a,#0xfc
      001D4B F8               [12]  314 	mov	r0,a
      001D4C 86 03            [24]  315 	mov	ar3,@r0
      001D4E                        316 00116$:
      001D4E 8B 82            [24]  317 	mov	dpl,r3
      001D50 C0 04            [24]  318 	push	ar4
      001D52 12 22 AF         [24]  319 	lcall	_flipByte
      001D55 AA 82            [24]  320 	mov	r2,dpl
      001D57 7B 00            [12]  321 	mov	r3,#0x00
      001D59 8B 82            [24]  322 	mov	dpl,r3
      001D5B 74 01            [12]  323 	mov	a,#0x01
      001D5D 4A               [12]  324 	orl	a,r2
      001D5E F5 83            [12]  325 	mov	dph,a
      001D60 12 20 60         [24]  326 	lcall	_exe_command
      001D63 D0 04            [24]  327 	pop	ar4
                                    328 ;	../UI_Manager/Display_Manager/display.c:22: length++; //null terminated
      001D65 E5 1A            [12]  329 	mov	a,_bp
      001D67 24 FD            [12]  330 	add	a,#0xfd
      001D69 F8               [12]  331 	mov	r0,a
      001D6A 06               [12]  332 	inc	@r0
                                    333 ;	../UI_Manager/Display_Manager/display.c:24: if(selected){
      001D6B E5 1A            [12]  334 	mov	a,_bp
      001D6D 24 FA            [12]  335 	add	a,#0xfa
      001D6F F8               [12]  336 	mov	r0,a
      001D70 E6               [12]  337 	mov	a,@r0
      001D71 60 0A            [24]  338 	jz	00122$
                                    339 ;	../UI_Manager/Display_Manager/display.c:25: exe_command(WRITE_CURSOR);
      001D73 90 00 80         [24]  340 	mov	dptr,#0x0080
      001D76 C0 04            [24]  341 	push	ar4
      001D78 12 20 60         [24]  342 	lcall	_exe_command
      001D7B D0 04            [24]  343 	pop	ar4
                                    344 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001D7D                        345 00122$:
      001D7D 7B 00            [12]  346 	mov	r3,#0x00
      001D7F                        347 00111$:
      001D7F E5 1A            [12]  348 	mov	a,_bp
      001D81 24 FD            [12]  349 	add	a,#0xfd
      001D83 F8               [12]  350 	mov	r0,a
      001D84 C3               [12]  351 	clr	c
      001D85 EB               [12]  352 	mov	a,r3
      001D86 96               [12]  353 	subb	a,@r0
      001D87 50 53            [24]  354 	jnc	00113$
                                    355 ;	../UI_Manager/Display_Manager/display.c:29: if(!done){
      001D89 EC               [12]  356 	mov	a,r4
      001D8A 70 3F            [24]  357 	jnz	00107$
                                    358 ;	../UI_Manager/Display_Manager/display.c:30: if(string[i]){
      001D8C C0 04            [24]  359 	push	ar4
      001D8E A8 1A            [24]  360 	mov	r0,_bp
      001D90 08               [12]  361 	inc	r0
      001D91 EB               [12]  362 	mov	a,r3
      001D92 26               [12]  363 	add	a,@r0
      001D93 FA               [12]  364 	mov	r2,a
      001D94 E4               [12]  365 	clr	a
      001D95 08               [12]  366 	inc	r0
      001D96 36               [12]  367 	addc	a,@r0
      001D97 FC               [12]  368 	mov	r4,a
      001D98 08               [12]  369 	inc	r0
      001D99 86 07            [24]  370 	mov	ar7,@r0
      001D9B 8A 82            [24]  371 	mov	dpl,r2
      001D9D 8C 83            [24]  372 	mov	dph,r4
      001D9F 8F F0            [24]  373 	mov	b,r7
      001DA1 12 36 DA         [24]  374 	lcall	__gptrget
      001DA4 FF               [12]  375 	mov	r7,a
      001DA5 D0 04            [24]  376 	pop	ar4
      001DA7 EF               [12]  377 	mov	a,r7
      001DA8 60 1D            [24]  378 	jz	00104$
                                    379 ;	../UI_Manager/Display_Manager/display.c:31: exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
      001DAA 8F 82            [24]  380 	mov	dpl,r7
      001DAC C0 04            [24]  381 	push	ar4
      001DAE C0 03            [24]  382 	push	ar3
      001DB0 12 20 A6         [24]  383 	lcall	_charToCode
      001DB3 AE 82            [24]  384 	mov	r6,dpl
      001DB5 7F 00            [12]  385 	mov	r7,#0x00
      001DB7 74 80            [12]  386 	mov	a,#0x80
      001DB9 4F               [12]  387 	orl	a,r7
      001DBA F5 82            [12]  388 	mov	dpl,a
      001DBC 8E 83            [24]  389 	mov	dph,r6
      001DBE 12 20 60         [24]  390 	lcall	_exe_command
      001DC1 D0 03            [24]  391 	pop	ar3
      001DC3 D0 04            [24]  392 	pop	ar4
      001DC5 80 12            [24]  393 	sjmp	00112$
      001DC7                        394 00104$:
                                    395 ;	../UI_Manager/Display_Manager/display.c:33: done = 1;
      001DC7 7C 01            [12]  396 	mov	r4,#0x01
      001DC9 80 0E            [24]  397 	sjmp	00112$
      001DCB                        398 00107$:
                                    399 ;	../UI_Manager/Display_Manager/display.c:36: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001DCB 90 04 80         [24]  400 	mov	dptr,#0x0480
      001DCE C0 04            [24]  401 	push	ar4
      001DD0 C0 03            [24]  402 	push	ar3
      001DD2 12 20 60         [24]  403 	lcall	_exe_command
      001DD5 D0 03            [24]  404 	pop	ar3
      001DD7 D0 04            [24]  405 	pop	ar4
      001DD9                        406 00112$:
                                    407 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001DD9 0B               [12]  408 	inc	r3
      001DDA 80 A3            [24]  409 	sjmp	00111$
      001DDC                        410 00113$:
                                    411 ;	../UI_Manager/Display_Manager/display.c:39: }
      001DDC 85 1A 81         [24]  412 	mov	sp,_bp
      001DDF D0 1A            [24]  413 	pop	_bp
      001DE1 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'write_number'
                                    417 ;------------------------------------------------------------
                                    418 ;index                     Allocated to stack - _bp -3
                                    419 ;line                      Allocated to stack - _bp -4
                                    420 ;selected                  Allocated to stack - _bp -5
                                    421 ;number                    Allocated to registers r6 r7 
                                    422 ;higherNumberPresent       Allocated to registers r5 
                                    423 ;value                     Allocated to registers r2 r3 
                                    424 ;chars                     Allocated to stack - _bp +1
                                    425 ;------------------------------------------------------------
                                    426 ;	../UI_Manager/Display_Manager/display.c:41: void write_number(uint16_t number, uint8_t index, uint8_t line, uint8_t selected){
                                    427 ;	-----------------------------------------
                                    428 ;	 function write_number
                                    429 ;	-----------------------------------------
      001DE2                        430 _write_number:
      001DE2 C0 1A            [24]  431 	push	_bp
      001DE4 85 81 1A         [24]  432 	mov	_bp,sp
      001DE7 05 81            [12]  433 	inc	sp
      001DE9 05 81            [12]  434 	inc	sp
      001DEB 05 81            [12]  435 	inc	sp
      001DED AE 82            [24]  436 	mov	r6,dpl
      001DEF AF 83            [24]  437 	mov	r7,dph
                                    438 ;	../UI_Manager/Display_Manager/display.c:42: uint8_t higherNumberPresent = 0;
      001DF1 7D 00            [12]  439 	mov	r5,#0x00
                                    440 ;	../UI_Manager/Display_Manager/display.c:44: uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};
      001DF3 A9 1A            [24]  441 	mov	r1,_bp
      001DF5 09               [12]  442 	inc	r1
      001DF6 77 04            [12]  443 	mov	@r1,#0x04
      001DF8 E9               [12]  444 	mov	a,r1
      001DF9 04               [12]  445 	inc	a
      001DFA F8               [12]  446 	mov	r0,a
      001DFB 76 04            [12]  447 	mov	@r0,#0x04
      001DFD 74 02            [12]  448 	mov	a,#0x02
      001DFF 29               [12]  449 	add	a,r1
      001E00 FC               [12]  450 	mov	r4,a
      001E01 C0 00            [24]  451 	push	ar0
      001E03 A8 04            [24]  452 	mov	r0,ar4
      001E05 76 0C            [12]  453 	mov	@r0,#0x0c
      001E07 D0 00            [24]  454 	pop	ar0
                                    455 ;	../UI_Manager/Display_Manager/display.c:46: if(number >= 1000) {number = 999;}
      001E09 C3               [12]  456 	clr	c
      001E0A EE               [12]  457 	mov	a,r6
      001E0B 94 E8            [12]  458 	subb	a,#0xe8
      001E0D EF               [12]  459 	mov	a,r7
      001E0E 94 03            [12]  460 	subb	a,#0x03
      001E10 40 04            [24]  461 	jc	00102$
      001E12 7E E7            [12]  462 	mov	r6,#0xe7
      001E14 7F 03            [12]  463 	mov	r7,#0x03
      001E16                        464 00102$:
                                    465 ;	../UI_Manager/Display_Manager/display.c:48: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001E16 C0 00            [24]  466 	push	ar0
      001E18 E5 1A            [12]  467 	mov	a,_bp
      001E1A 24 FC            [12]  468 	add	a,#0xfc
      001E1C F8               [12]  469 	mov	r0,a
      001E1D E6               [12]  470 	mov	a,@r0
      001E1E D0 00            [24]  471 	pop	ar0
      001E20 60 11            [24]  472 	jz	00113$
      001E22 C0 00            [24]  473 	push	ar0
      001E24 E5 1A            [12]  474 	mov	a,_bp
      001E26 24 FD            [12]  475 	add	a,#0xfd
      001E28 F8               [12]  476 	mov	r0,a
      001E29 86 03            [24]  477 	mov	ar3,@r0
      001E2B D0 00            [24]  478 	pop	ar0
      001E2D 74 40            [12]  479 	mov	a,#0x40
      001E2F 2B               [12]  480 	add	a,r3
      001E30 FB               [12]  481 	mov	r3,a
      001E31 80 0B            [24]  482 	sjmp	00114$
      001E33                        483 00113$:
      001E33 C0 00            [24]  484 	push	ar0
      001E35 E5 1A            [12]  485 	mov	a,_bp
      001E37 24 FD            [12]  486 	add	a,#0xfd
      001E39 F8               [12]  487 	mov	r0,a
      001E3A 86 03            [24]  488 	mov	ar3,@r0
      001E3C D0 00            [24]  489 	pop	ar0
      001E3E                        490 00114$:
      001E3E 8B 82            [24]  491 	mov	dpl,r3
      001E40 C0 07            [24]  492 	push	ar7
      001E42 C0 06            [24]  493 	push	ar6
      001E44 C0 05            [24]  494 	push	ar5
      001E46 C0 04            [24]  495 	push	ar4
      001E48 C0 01            [24]  496 	push	ar1
      001E4A C0 00            [24]  497 	push	ar0
      001E4C 12 22 AF         [24]  498 	lcall	_flipByte
      001E4F AA 82            [24]  499 	mov	r2,dpl
      001E51 7B 00            [12]  500 	mov	r3,#0x00
      001E53 8B 82            [24]  501 	mov	dpl,r3
      001E55 74 01            [12]  502 	mov	a,#0x01
      001E57 4A               [12]  503 	orl	a,r2
      001E58 F5 83            [12]  504 	mov	dph,a
      001E5A 12 20 60         [24]  505 	lcall	_exe_command
      001E5D D0 00            [24]  506 	pop	ar0
      001E5F D0 01            [24]  507 	pop	ar1
      001E61 D0 04            [24]  508 	pop	ar4
      001E63 D0 05            [24]  509 	pop	ar5
      001E65 D0 06            [24]  510 	pop	ar6
      001E67 D0 07            [24]  511 	pop	ar7
                                    512 ;	../UI_Manager/Display_Manager/display.c:51: if(selected){
      001E69 C0 00            [24]  513 	push	ar0
      001E6B E5 1A            [12]  514 	mov	a,_bp
      001E6D 24 FB            [12]  515 	add	a,#0xfb
      001E6F F8               [12]  516 	mov	r0,a
      001E70 E6               [12]  517 	mov	a,@r0
      001E71 D0 00            [24]  518 	pop	ar0
      001E73 60 20            [24]  519 	jz	00104$
                                    520 ;	../UI_Manager/Display_Manager/display.c:52: exe_command(WRITE_CURSOR);
      001E75 90 00 80         [24]  521 	mov	dptr,#0x0080
      001E78 C0 07            [24]  522 	push	ar7
      001E7A C0 06            [24]  523 	push	ar6
      001E7C C0 05            [24]  524 	push	ar5
      001E7E C0 04            [24]  525 	push	ar4
      001E80 C0 01            [24]  526 	push	ar1
      001E82 C0 00            [24]  527 	push	ar0
      001E84 12 20 60         [24]  528 	lcall	_exe_command
      001E87 D0 00            [24]  529 	pop	ar0
      001E89 D0 01            [24]  530 	pop	ar1
      001E8B D0 04            [24]  531 	pop	ar4
      001E8D D0 05            [24]  532 	pop	ar5
      001E8F D0 06            [24]  533 	pop	ar6
      001E91 D0 07            [24]  534 	pop	ar7
      001E93 80 1E            [24]  535 	sjmp	00105$
      001E95                        536 00104$:
                                    537 ;	../UI_Manager/Display_Manager/display.c:54: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001E95 90 04 80         [24]  538 	mov	dptr,#0x0480
      001E98 C0 07            [24]  539 	push	ar7
      001E9A C0 06            [24]  540 	push	ar6
      001E9C C0 05            [24]  541 	push	ar5
      001E9E C0 04            [24]  542 	push	ar4
      001EA0 C0 01            [24]  543 	push	ar1
      001EA2 C0 00            [24]  544 	push	ar0
      001EA4 12 20 60         [24]  545 	lcall	_exe_command
      001EA7 D0 00            [24]  546 	pop	ar0
      001EA9 D0 01            [24]  547 	pop	ar1
      001EAB D0 04            [24]  548 	pop	ar4
      001EAD D0 05            [24]  549 	pop	ar5
      001EAF D0 06            [24]  550 	pop	ar6
      001EB1 D0 07            [24]  551 	pop	ar7
      001EB3                        552 00105$:
                                    553 ;	../UI_Manager/Display_Manager/display.c:58: value = number/100;
      001EB3 C0 07            [24]  554 	push	ar7
      001EB5 C0 06            [24]  555 	push	ar6
      001EB7 C0 05            [24]  556 	push	ar5
      001EB9 C0 04            [24]  557 	push	ar4
      001EBB C0 01            [24]  558 	push	ar1
      001EBD C0 00            [24]  559 	push	ar0
      001EBF 74 64            [12]  560 	mov	a,#0x64
      001EC1 C0 E0            [24]  561 	push	acc
      001EC3 E4               [12]  562 	clr	a
      001EC4 C0 E0            [24]  563 	push	acc
      001EC6 8E 82            [24]  564 	mov	dpl,r6
      001EC8 8F 83            [24]  565 	mov	dph,r7
      001ECA 12 36 15         [24]  566 	lcall	__divuint
      001ECD AA 82            [24]  567 	mov	r2,dpl
      001ECF AB 83            [24]  568 	mov	r3,dph
      001ED1 15 81            [12]  569 	dec	sp
      001ED3 15 81            [12]  570 	dec	sp
      001ED5 D0 00            [24]  571 	pop	ar0
      001ED7 D0 01            [24]  572 	pop	ar1
      001ED9 D0 04            [24]  573 	pop	ar4
      001EDB D0 05            [24]  574 	pop	ar5
      001EDD D0 06            [24]  575 	pop	ar6
      001EDF D0 07            [24]  576 	pop	ar7
                                    577 ;	../UI_Manager/Display_Manager/display.c:59: if(value){
      001EE1 EA               [12]  578 	mov	a,r2
      001EE2 4B               [12]  579 	orl	a,r3
      001EE3 60 54            [24]  580 	jz	00107$
                                    581 ;	../UI_Manager/Display_Manager/display.c:60: chars[0] = charToCode(value + 0x30);
      001EE5 C0 04            [24]  582 	push	ar4
      001EE7 8A 04            [24]  583 	mov	ar4,r2
      001EE9 74 30            [12]  584 	mov	a,#0x30
      001EEB 2C               [12]  585 	add	a,r4
      001EEC F5 82            [12]  586 	mov	dpl,a
      001EEE C0 07            [24]  587 	push	ar7
      001EF0 C0 06            [24]  588 	push	ar6
      001EF2 C0 04            [24]  589 	push	ar4
      001EF4 C0 03            [24]  590 	push	ar3
      001EF6 C0 02            [24]  591 	push	ar2
      001EF8 C0 01            [24]  592 	push	ar1
      001EFA C0 00            [24]  593 	push	ar0
      001EFC 12 20 A6         [24]  594 	lcall	_charToCode
      001EFF E5 82            [12]  595 	mov	a,dpl
      001F01 D0 00            [24]  596 	pop	ar0
      001F03 D0 01            [24]  597 	pop	ar1
      001F05 D0 02            [24]  598 	pop	ar2
      001F07 D0 03            [24]  599 	pop	ar3
      001F09 D0 04            [24]  600 	pop	ar4
      001F0B F7               [12]  601 	mov	@r1,a
                                    602 ;	../UI_Manager/Display_Manager/display.c:61: higherNumberPresent = 1;
      001F0C 7D 01            [12]  603 	mov	r5,#0x01
                                    604 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      001F0E C0 05            [24]  605 	push	ar5
      001F10 C0 01            [24]  606 	push	ar1
      001F12 C0 00            [24]  607 	push	ar0
      001F14 C0 02            [24]  608 	push	ar2
      001F16 C0 03            [24]  609 	push	ar3
      001F18 90 00 64         [24]  610 	mov	dptr,#0x0064
      001F1B 12 36 46         [24]  611 	lcall	__mulint
      001F1E AB 82            [24]  612 	mov	r3,dpl
      001F20 AC 83            [24]  613 	mov	r4,dph
      001F22 15 81            [12]  614 	dec	sp
      001F24 15 81            [12]  615 	dec	sp
      001F26 D0 00            [24]  616 	pop	ar0
      001F28 D0 01            [24]  617 	pop	ar1
      001F2A D0 05            [24]  618 	pop	ar5
      001F2C D0 06            [24]  619 	pop	ar6
      001F2E D0 07            [24]  620 	pop	ar7
      001F30 EE               [12]  621 	mov	a,r6
      001F31 C3               [12]  622 	clr	c
      001F32 9B               [12]  623 	subb	a,r3
      001F33 FE               [12]  624 	mov	r6,a
      001F34 EF               [12]  625 	mov	a,r7
      001F35 9C               [12]  626 	subb	a,r4
      001F36 FF               [12]  627 	mov	r7,a
                                    628 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001F37 D0 04            [24]  629 	pop	ar4
                                    630 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      001F39                        631 00107$:
                                    632 ;	../UI_Manager/Display_Manager/display.c:65: value = number/10;
      001F39 C0 07            [24]  633 	push	ar7
      001F3B C0 06            [24]  634 	push	ar6
      001F3D C0 05            [24]  635 	push	ar5
      001F3F C0 04            [24]  636 	push	ar4
      001F41 C0 01            [24]  637 	push	ar1
      001F43 C0 00            [24]  638 	push	ar0
      001F45 74 0A            [12]  639 	mov	a,#0x0a
      001F47 C0 E0            [24]  640 	push	acc
      001F49 E4               [12]  641 	clr	a
      001F4A C0 E0            [24]  642 	push	acc
      001F4C 8E 82            [24]  643 	mov	dpl,r6
      001F4E 8F 83            [24]  644 	mov	dph,r7
      001F50 12 36 15         [24]  645 	lcall	__divuint
      001F53 AA 82            [24]  646 	mov	r2,dpl
      001F55 AB 83            [24]  647 	mov	r3,dph
      001F57 15 81            [12]  648 	dec	sp
      001F59 15 81            [12]  649 	dec	sp
      001F5B D0 00            [24]  650 	pop	ar0
      001F5D D0 01            [24]  651 	pop	ar1
      001F5F D0 04            [24]  652 	pop	ar4
      001F61 D0 05            [24]  653 	pop	ar5
      001F63 D0 06            [24]  654 	pop	ar6
      001F65 D0 07            [24]  655 	pop	ar7
                                    656 ;	../UI_Manager/Display_Manager/display.c:66: if(higherNumberPresent || value){
      001F67 ED               [12]  657 	mov	a,r5
      001F68 70 04            [24]  658 	jnz	00108$
      001F6A EA               [12]  659 	mov	a,r2
      001F6B 4B               [12]  660 	orl	a,r3
      001F6C 60 4A            [24]  661 	jz	00109$
      001F6E                        662 00108$:
                                    663 ;	../UI_Manager/Display_Manager/display.c:67: chars[1] = charToCode(value + 0x30);
      001F6E 8A 05            [24]  664 	mov	ar5,r2
      001F70 74 30            [12]  665 	mov	a,#0x30
      001F72 2D               [12]  666 	add	a,r5
      001F73 F5 82            [12]  667 	mov	dpl,a
      001F75 C0 07            [24]  668 	push	ar7
      001F77 C0 06            [24]  669 	push	ar6
      001F79 C0 04            [24]  670 	push	ar4
      001F7B C0 03            [24]  671 	push	ar3
      001F7D C0 02            [24]  672 	push	ar2
      001F7F C0 01            [24]  673 	push	ar1
      001F81 C0 00            [24]  674 	push	ar0
      001F83 12 20 A6         [24]  675 	lcall	_charToCode
      001F86 E5 82            [12]  676 	mov	a,dpl
      001F88 D0 00            [24]  677 	pop	ar0
      001F8A D0 01            [24]  678 	pop	ar1
      001F8C D0 02            [24]  679 	pop	ar2
      001F8E D0 03            [24]  680 	pop	ar3
      001F90 F6               [12]  681 	mov	@r0,a
                                    682 ;	../UI_Manager/Display_Manager/display.c:68: number -= value*10;
      001F91 C0 01            [24]  683 	push	ar1
      001F93 C0 00            [24]  684 	push	ar0
      001F95 C0 02            [24]  685 	push	ar2
      001F97 C0 03            [24]  686 	push	ar3
      001F99 90 00 0A         [24]  687 	mov	dptr,#0x000a
      001F9C 12 36 46         [24]  688 	lcall	__mulint
      001F9F AB 82            [24]  689 	mov	r3,dpl
      001FA1 AD 83            [24]  690 	mov	r5,dph
      001FA3 15 81            [12]  691 	dec	sp
      001FA5 15 81            [12]  692 	dec	sp
      001FA7 D0 00            [24]  693 	pop	ar0
      001FA9 D0 01            [24]  694 	pop	ar1
      001FAB D0 04            [24]  695 	pop	ar4
      001FAD D0 06            [24]  696 	pop	ar6
      001FAF D0 07            [24]  697 	pop	ar7
      001FB1 EE               [12]  698 	mov	a,r6
      001FB2 C3               [12]  699 	clr	c
      001FB3 9B               [12]  700 	subb	a,r3
      001FB4 FE               [12]  701 	mov	r6,a
      001FB5 EF               [12]  702 	mov	a,r7
      001FB6 9D               [12]  703 	subb	a,r5
      001FB7 FF               [12]  704 	mov	r7,a
      001FB8                        705 00109$:
                                    706 ;	../UI_Manager/Display_Manager/display.c:71: chars[2] = charToCode(number + 0x30);
      001FB8 74 30            [12]  707 	mov	a,#0x30
      001FBA 2E               [12]  708 	add	a,r6
      001FBB F5 82            [12]  709 	mov	dpl,a
      001FBD C0 04            [24]  710 	push	ar4
      001FBF C0 01            [24]  711 	push	ar1
      001FC1 C0 00            [24]  712 	push	ar0
      001FC3 12 20 A6         [24]  713 	lcall	_charToCode
      001FC6 E5 82            [12]  714 	mov	a,dpl
      001FC8 D0 00            [24]  715 	pop	ar0
      001FCA D0 01            [24]  716 	pop	ar1
      001FCC D0 04            [24]  717 	pop	ar4
      001FCE C0 00            [24]  718 	push	ar0
      001FD0 A8 04            [24]  719 	mov	r0,ar4
      001FD2 F6               [12]  720 	mov	@r0,a
      001FD3 D0 00            [24]  721 	pop	ar0
                                    722 ;	../UI_Manager/Display_Manager/display.c:73: exe_command(RAM_WRITE | (chars[0] << 8));
      001FD5 87 07            [24]  723 	mov	ar7,@r1
      001FD7 8F 06            [24]  724 	mov	ar6,r7
      001FD9 7F 00            [12]  725 	mov	r7,#0x00
      001FDB 74 80            [12]  726 	mov	a,#0x80
      001FDD 4F               [12]  727 	orl	a,r7
      001FDE F5 82            [12]  728 	mov	dpl,a
      001FE0 8E 83            [24]  729 	mov	dph,r6
      001FE2 C0 04            [24]  730 	push	ar4
      001FE4 C0 00            [24]  731 	push	ar0
      001FE6 12 20 60         [24]  732 	lcall	_exe_command
      001FE9 D0 00            [24]  733 	pop	ar0
                                    734 ;	../UI_Manager/Display_Manager/display.c:74: exe_command(RAM_WRITE | (chars[1] << 8));
      001FEB 86 07            [24]  735 	mov	ar7,@r0
      001FED 8F 06            [24]  736 	mov	ar6,r7
      001FEF 7F 00            [12]  737 	mov	r7,#0x00
      001FF1 74 80            [12]  738 	mov	a,#0x80
      001FF3 4F               [12]  739 	orl	a,r7
      001FF4 F5 82            [12]  740 	mov	dpl,a
      001FF6 8E 83            [24]  741 	mov	dph,r6
      001FF8 12 20 60         [24]  742 	lcall	_exe_command
      001FFB D0 04            [24]  743 	pop	ar4
                                    744 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001FFD A8 04            [24]  745 	mov	r0,ar4
      001FFF 86 07            [24]  746 	mov	ar7,@r0
      002001 8F 06            [24]  747 	mov	ar6,r7
      002003 7F 00            [12]  748 	mov	r7,#0x00
      002005 74 80            [12]  749 	mov	a,#0x80
      002007 4F               [12]  750 	orl	a,r7
      002008 F5 82            [12]  751 	mov	dpl,a
      00200A 8E 83            [24]  752 	mov	dph,r6
      00200C 12 20 60         [24]  753 	lcall	_exe_command
                                    754 ;	../UI_Manager/Display_Manager/display.c:77: }
      00200F 85 1A 81         [24]  755 	mov	sp,_bp
      002012 D0 1A            [24]  756 	pop	_bp
      002014 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'write_char'
                                    760 ;------------------------------------------------------------
                                    761 ;index                     Allocated to stack - _bp -3
                                    762 ;line                      Allocated to stack - _bp -4
                                    763 ;command                   Allocated to registers r7 
                                    764 ;------------------------------------------------------------
                                    765 ;	../UI_Manager/Display_Manager/display.c:79: void write_char(uint8_t command, uint8_t index, uint8_t line){
                                    766 ;	-----------------------------------------
                                    767 ;	 function write_char
                                    768 ;	-----------------------------------------
      002015                        769 _write_char:
      002015 C0 1A            [24]  770 	push	_bp
      002017 85 81 1A         [24]  771 	mov	_bp,sp
      00201A AF 82            [24]  772 	mov	r7,dpl
                                    773 ;	../UI_Manager/Display_Manager/display.c:80: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      00201C E5 1A            [12]  774 	mov	a,_bp
      00201E 24 FC            [12]  775 	add	a,#0xfc
      002020 F8               [12]  776 	mov	r0,a
      002021 E6               [12]  777 	mov	a,@r0
      002022 60 0D            [24]  778 	jz	00103$
      002024 E5 1A            [12]  779 	mov	a,_bp
      002026 24 FD            [12]  780 	add	a,#0xfd
      002028 F8               [12]  781 	mov	r0,a
      002029 86 06            [24]  782 	mov	ar6,@r0
      00202B 74 40            [12]  783 	mov	a,#0x40
      00202D 2E               [12]  784 	add	a,r6
      00202E FE               [12]  785 	mov	r6,a
      00202F 80 07            [24]  786 	sjmp	00104$
      002031                        787 00103$:
      002031 E5 1A            [12]  788 	mov	a,_bp
      002033 24 FD            [12]  789 	add	a,#0xfd
      002035 F8               [12]  790 	mov	r0,a
      002036 86 06            [24]  791 	mov	ar6,@r0
      002038                        792 00104$:
      002038 8E 82            [24]  793 	mov	dpl,r6
      00203A C0 07            [24]  794 	push	ar7
      00203C 12 22 AF         [24]  795 	lcall	_flipByte
      00203F AD 82            [24]  796 	mov	r5,dpl
      002041 7E 00            [12]  797 	mov	r6,#0x00
      002043 8E 82            [24]  798 	mov	dpl,r6
      002045 74 01            [12]  799 	mov	a,#0x01
      002047 4D               [12]  800 	orl	a,r5
      002048 F5 83            [12]  801 	mov	dph,a
      00204A 12 20 60         [24]  802 	lcall	_exe_command
      00204D D0 07            [24]  803 	pop	ar7
                                    804 ;	../UI_Manager/Display_Manager/display.c:81: exe_command(RAM_WRITE | (command << 8));
      00204F 8F 06            [24]  805 	mov	ar6,r7
      002051 7F 00            [12]  806 	mov	r7,#0x00
      002053 74 80            [12]  807 	mov	a,#0x80
      002055 4F               [12]  808 	orl	a,r7
      002056 F5 82            [12]  809 	mov	dpl,a
      002058 8E 83            [24]  810 	mov	dph,r6
      00205A 12 20 60         [24]  811 	lcall	_exe_command
                                    812 ;	../UI_Manager/Display_Manager/display.c:82: }
      00205D D0 1A            [24]  813 	pop	_bp
      00205F 22               [24]  814 	ret
                                    815 ;------------------------------------------------------------
                                    816 ;Allocation info for local variables in function 'exe_command'
                                    817 ;------------------------------------------------------------
                                    818 ;command                   Allocated to registers r6 r7 
                                    819 ;delay                     Allocated to registers r5 r6 
                                    820 ;------------------------------------------------------------
                                    821 ;	../UI_Manager/Display_Manager/display.c:86: void exe_command(uint16_t command){
                                    822 ;	-----------------------------------------
                                    823 ;	 function exe_command
                                    824 ;	-----------------------------------------
      002060                        825 _exe_command:
      002060 AE 82            [24]  826 	mov	r6,dpl
      002062 AF 83            [24]  827 	mov	r7,dph
                                    828 ;	../UI_Manager/Display_Manager/display.c:89: command |= (1 << EXE_BIT);
      002064 43 06 20         [24]  829 	orl	ar6,#0x20
                                    830 ;	../UI_Manager/Display_Manager/display.c:90: writeShiftReg(command); //execute
      002067 8E 82            [24]  831 	mov	dpl,r6
      002069 8F 83            [24]  832 	mov	dph,r7
      00206B C0 07            [24]  833 	push	ar7
      00206D C0 06            [24]  834 	push	ar6
      00206F 12 22 7B         [24]  835 	lcall	_writeShiftReg
      002072 D0 06            [24]  836 	pop	ar6
      002074 D0 07            [24]  837 	pop	ar7
                                    838 ;	../UI_Manager/Display_Manager/display.c:91: command &= ~(1 << EXE_BIT);
      002076 53 06 DF         [24]  839 	anl	ar6,#0xdf
                                    840 ;	../UI_Manager/Display_Manager/display.c:92: writeShiftReg(command); //end execution
      002079 8E 82            [24]  841 	mov	dpl,r6
      00207B 8F 83            [24]  842 	mov	dph,r7
      00207D C0 07            [24]  843 	push	ar7
      00207F C0 06            [24]  844 	push	ar6
      002081 12 22 7B         [24]  845 	lcall	_writeShiftReg
      002084 D0 06            [24]  846 	pop	ar6
      002086 D0 07            [24]  847 	pop	ar7
                                    848 ;	../UI_Manager/Display_Manager/display.c:95: while(delay-- && command == CLEAR_DISPLAY){;;}
      002088 E4               [12]  849 	clr	a
      002089 BE 00 04         [24]  850 	cjne	r6,#0x00,00118$
      00208C BF 80 01         [24]  851 	cjne	r7,#0x80,00118$
      00208F 04               [12]  852 	inc	a
      002090                        853 00118$:
      002090 FF               [12]  854 	mov	r7,a
      002091 7D 00            [12]  855 	mov	r5,#0x00
      002093 7E 03            [12]  856 	mov	r6,#0x03
      002095                        857 00102$:
      002095 8D 03            [24]  858 	mov	ar3,r5
      002097 8E 04            [24]  859 	mov	ar4,r6
      002099 1D               [12]  860 	dec	r5
      00209A BD FF 01         [24]  861 	cjne	r5,#0xff,00120$
      00209D 1E               [12]  862 	dec	r6
      00209E                        863 00120$:
      00209E EB               [12]  864 	mov	a,r3
      00209F 4C               [12]  865 	orl	a,r4
      0020A0 60 03            [24]  866 	jz	00105$
      0020A2 EF               [12]  867 	mov	a,r7
      0020A3 70 F0            [24]  868 	jnz	00102$
      0020A5                        869 00105$:
                                    870 ;	../UI_Manager/Display_Manager/display.c:96: }
      0020A5 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'charToCode'
                                    874 ;------------------------------------------------------------
                                    875 ;c                         Allocated to registers r7 
                                    876 ;------------------------------------------------------------
                                    877 ;	../UI_Manager/Display_Manager/display.c:100: uint8_t charToCode(char c){
                                    878 ;	-----------------------------------------
                                    879 ;	 function charToCode
                                    880 ;	-----------------------------------------
      0020A6                        881 _charToCode:
      0020A6 AF 82            [24]  882 	mov	r7,dpl
                                    883 ;	../UI_Manager/Display_Manager/display.c:101: switch(c){
      0020A8 BF 26 00         [24]  884 	cjne	r7,#0x26,00177$
      0020AB                        885 00177$:
      0020AB 50 03            [24]  886 	jnc	00178$
      0020AD 02 22 77         [24]  887 	ljmp	00166$
      0020B0                        888 00178$:
      0020B0 EF               [12]  889 	mov	a,r7
      0020B1 24 85            [12]  890 	add	a,#0xff - 0x7a
      0020B3 50 03            [24]  891 	jnc	00179$
      0020B5 02 22 77         [24]  892 	ljmp	00166$
      0020B8                        893 00179$:
      0020B8 EF               [12]  894 	mov	a,r7
      0020B9 24 DA            [12]  895 	add	a,#0xda
      0020BB FF               [12]  896 	mov	r7,a
      0020BC 24 0A            [12]  897 	add	a,#(00180$-3-.)
      0020BE 83               [24]  898 	movc	a,@a+pc
      0020BF F5 82            [12]  899 	mov	dpl,a
      0020C1 EF               [12]  900 	mov	a,r7
      0020C2 24 59            [12]  901 	add	a,#(00181$-3-.)
      0020C4 83               [24]  902 	movc	a,@a+pc
      0020C5 F5 83            [12]  903 	mov	dph,a
      0020C7 E4               [12]  904 	clr	a
      0020C8 73               [24]  905 	jmp	@a+dptr
      0020C9                        906 00180$:
      0020C9 6F                     907 	.db	00164$
      0020CA 77                     908 	.db	00166$
      0020CB 77                     909 	.db	00166$
      0020CC 77                     910 	.db	00166$
      0020CD 77                     911 	.db	00166$
      0020CE 6B                     912 	.db	00163$
      0020CF 77                     913 	.db	00166$
      0020D0 77                     914 	.db	00166$
      0020D1 77                     915 	.db	00166$
      0020D2 77                     916 	.db	00166$
      0020D3 43                     917 	.db	00153$
      0020D4 47                     918 	.db	00154$
      0020D5 4B                     919 	.db	00155$
      0020D6 4F                     920 	.db	00156$
      0020D7 53                     921 	.db	00157$
      0020D8 57                     922 	.db	00158$
      0020D9 5B                     923 	.db	00159$
      0020DA 5F                     924 	.db	00160$
      0020DB 63                     925 	.db	00161$
      0020DC 67                     926 	.db	00162$
      0020DD 77                     927 	.db	00166$
      0020DE 73                     928 	.db	00165$
      0020DF 77                     929 	.db	00166$
      0020E0 77                     930 	.db	00166$
      0020E1 77                     931 	.db	00166$
      0020E2 77                     932 	.db	00166$
      0020E3 77                     933 	.db	00166$
      0020E4 73                     934 	.db	00101$
      0020E5 7B                     935 	.db	00103$
      0020E6 83                     936 	.db	00105$
      0020E7 8B                     937 	.db	00107$
      0020E8 93                     938 	.db	00109$
      0020E9 9B                     939 	.db	00111$
      0020EA A3                     940 	.db	00113$
      0020EB AB                     941 	.db	00115$
      0020EC B3                     942 	.db	00117$
      0020ED BB                     943 	.db	00119$
      0020EE C3                     944 	.db	00121$
      0020EF CB                     945 	.db	00123$
      0020F0 D3                     946 	.db	00125$
      0020F1 DB                     947 	.db	00127$
      0020F2 E3                     948 	.db	00129$
      0020F3 EB                     949 	.db	00131$
      0020F4 F3                     950 	.db	00133$
      0020F5 FB                     951 	.db	00135$
      0020F6 03                     952 	.db	00137$
      0020F7 0B                     953 	.db	00139$
      0020F8 13                     954 	.db	00141$
      0020F9 1B                     955 	.db	00143$
      0020FA 23                     956 	.db	00145$
      0020FB 2B                     957 	.db	00147$
      0020FC 33                     958 	.db	00149$
      0020FD 3B                     959 	.db	00151$
      0020FE 77                     960 	.db	00166$
      0020FF 77                     961 	.db	00166$
      002100 77                     962 	.db	00166$
      002101 77                     963 	.db	00166$
      002102 77                     964 	.db	00166$
      002103 77                     965 	.db	00166$
      002104 77                     966 	.db	00102$
      002105 7F                     967 	.db	00104$
      002106 87                     968 	.db	00106$
      002107 8F                     969 	.db	00108$
      002108 97                     970 	.db	00110$
      002109 9F                     971 	.db	00112$
      00210A A7                     972 	.db	00114$
      00210B AF                     973 	.db	00116$
      00210C B7                     974 	.db	00118$
      00210D BF                     975 	.db	00120$
      00210E C7                     976 	.db	00122$
      00210F CF                     977 	.db	00124$
      002110 D7                     978 	.db	00126$
      002111 DF                     979 	.db	00128$
      002112 E7                     980 	.db	00130$
      002113 EF                     981 	.db	00132$
      002114 F7                     982 	.db	00134$
      002115 FF                     983 	.db	00136$
      002116 07                     984 	.db	00138$
      002117 0F                     985 	.db	00140$
      002118 17                     986 	.db	00142$
      002119 1F                     987 	.db	00144$
      00211A 27                     988 	.db	00146$
      00211B 2F                     989 	.db	00148$
      00211C 37                     990 	.db	00150$
      00211D 3F                     991 	.db	00152$
      00211E                        992 00181$:
      00211E 22                     993 	.db	00164$>>8
      00211F 22                     994 	.db	00166$>>8
      002120 22                     995 	.db	00166$>>8
      002121 22                     996 	.db	00166$>>8
      002122 22                     997 	.db	00166$>>8
      002123 22                     998 	.db	00163$>>8
      002124 22                     999 	.db	00166$>>8
      002125 22                    1000 	.db	00166$>>8
      002126 22                    1001 	.db	00166$>>8
      002127 22                    1002 	.db	00166$>>8
      002128 22                    1003 	.db	00153$>>8
      002129 22                    1004 	.db	00154$>>8
      00212A 22                    1005 	.db	00155$>>8
      00212B 22                    1006 	.db	00156$>>8
      00212C 22                    1007 	.db	00157$>>8
      00212D 22                    1008 	.db	00158$>>8
      00212E 22                    1009 	.db	00159$>>8
      00212F 22                    1010 	.db	00160$>>8
      002130 22                    1011 	.db	00161$>>8
      002131 22                    1012 	.db	00162$>>8
      002132 22                    1013 	.db	00166$>>8
      002133 22                    1014 	.db	00165$>>8
      002134 22                    1015 	.db	00166$>>8
      002135 22                    1016 	.db	00166$>>8
      002136 22                    1017 	.db	00166$>>8
      002137 22                    1018 	.db	00166$>>8
      002138 22                    1019 	.db	00166$>>8
      002139 21                    1020 	.db	00101$>>8
      00213A 21                    1021 	.db	00103$>>8
      00213B 21                    1022 	.db	00105$>>8
      00213C 21                    1023 	.db	00107$>>8
      00213D 21                    1024 	.db	00109$>>8
      00213E 21                    1025 	.db	00111$>>8
      00213F 21                    1026 	.db	00113$>>8
      002140 21                    1027 	.db	00115$>>8
      002141 21                    1028 	.db	00117$>>8
      002142 21                    1029 	.db	00119$>>8
      002143 21                    1030 	.db	00121$>>8
      002144 21                    1031 	.db	00123$>>8
      002145 21                    1032 	.db	00125$>>8
      002146 21                    1033 	.db	00127$>>8
      002147 21                    1034 	.db	00129$>>8
      002148 21                    1035 	.db	00131$>>8
      002149 21                    1036 	.db	00133$>>8
      00214A 21                    1037 	.db	00135$>>8
      00214B 22                    1038 	.db	00137$>>8
      00214C 22                    1039 	.db	00139$>>8
      00214D 22                    1040 	.db	00141$>>8
      00214E 22                    1041 	.db	00143$>>8
      00214F 22                    1042 	.db	00145$>>8
      002150 22                    1043 	.db	00147$>>8
      002151 22                    1044 	.db	00149$>>8
      002152 22                    1045 	.db	00151$>>8
      002153 22                    1046 	.db	00166$>>8
      002154 22                    1047 	.db	00166$>>8
      002155 22                    1048 	.db	00166$>>8
      002156 22                    1049 	.db	00166$>>8
      002157 22                    1050 	.db	00166$>>8
      002158 22                    1051 	.db	00166$>>8
      002159 21                    1052 	.db	00102$>>8
      00215A 21                    1053 	.db	00104$>>8
      00215B 21                    1054 	.db	00106$>>8
      00215C 21                    1055 	.db	00108$>>8
      00215D 21                    1056 	.db	00110$>>8
      00215E 21                    1057 	.db	00112$>>8
      00215F 21                    1058 	.db	00114$>>8
      002160 21                    1059 	.db	00116$>>8
      002161 21                    1060 	.db	00118$>>8
      002162 21                    1061 	.db	00120$>>8
      002163 21                    1062 	.db	00122$>>8
      002164 21                    1063 	.db	00124$>>8
      002165 21                    1064 	.db	00126$>>8
      002166 21                    1065 	.db	00128$>>8
      002167 21                    1066 	.db	00130$>>8
      002168 21                    1067 	.db	00132$>>8
      002169 21                    1068 	.db	00134$>>8
      00216A 21                    1069 	.db	00136$>>8
      00216B 22                    1070 	.db	00138$>>8
      00216C 22                    1071 	.db	00140$>>8
      00216D 22                    1072 	.db	00142$>>8
      00216E 22                    1073 	.db	00144$>>8
      00216F 22                    1074 	.db	00146$>>8
      002170 22                    1075 	.db	00148$>>8
      002171 22                    1076 	.db	00150$>>8
      002172 22                    1077 	.db	00152$>>8
                                   1078 ;	../UI_Manager/Display_Manager/display.c:102: case 'A':
      002173                       1079 00101$:
                                   1080 ;	../UI_Manager/Display_Manager/display.c:103: return CHAR_A;
      002173 75 82 82         [24] 1081 	mov	dpl,#0x82
      002176 22               [24] 1082 	ret
                                   1083 ;	../UI_Manager/Display_Manager/display.c:104: case 'a':
      002177                       1084 00102$:
                                   1085 ;	../UI_Manager/Display_Manager/display.c:105: return CHAR_a;
      002177 75 82 86         [24] 1086 	mov	dpl,#0x86
      00217A 22               [24] 1087 	ret
                                   1088 ;	../UI_Manager/Display_Manager/display.c:106: case 'B':
      00217B                       1089 00103$:
                                   1090 ;	../UI_Manager/Display_Manager/display.c:107: return CHAR_B;
      00217B 75 82 42         [24] 1091 	mov	dpl,#0x42
      00217E 22               [24] 1092 	ret
                                   1093 ;	../UI_Manager/Display_Manager/display.c:108: case 'b':
      00217F                       1094 00104$:
                                   1095 ;	../UI_Manager/Display_Manager/display.c:109: return CHAR_b;
      00217F 75 82 46         [24] 1096 	mov	dpl,#0x46
      002182 22               [24] 1097 	ret
                                   1098 ;	../UI_Manager/Display_Manager/display.c:110: case 'C':
      002183                       1099 00105$:
                                   1100 ;	../UI_Manager/Display_Manager/display.c:111: return CHAR_C;
      002183 75 82 C2         [24] 1101 	mov	dpl,#0xc2
      002186 22               [24] 1102 	ret
                                   1103 ;	../UI_Manager/Display_Manager/display.c:112: case 'c':
      002187                       1104 00106$:
                                   1105 ;	../UI_Manager/Display_Manager/display.c:113: return CHAR_c;
      002187 75 82 C6         [24] 1106 	mov	dpl,#0xc6
      00218A 22               [24] 1107 	ret
                                   1108 ;	../UI_Manager/Display_Manager/display.c:114: case 'D':
      00218B                       1109 00107$:
                                   1110 ;	../UI_Manager/Display_Manager/display.c:115: return CHAR_D;
      00218B 75 82 22         [24] 1111 	mov	dpl,#0x22
      00218E 22               [24] 1112 	ret
                                   1113 ;	../UI_Manager/Display_Manager/display.c:116: case 'd':
      00218F                       1114 00108$:
                                   1115 ;	../UI_Manager/Display_Manager/display.c:117: return CHAR_d;
      00218F 75 82 26         [24] 1116 	mov	dpl,#0x26
      002192 22               [24] 1117 	ret
                                   1118 ;	../UI_Manager/Display_Manager/display.c:118: case 'E':
      002193                       1119 00109$:
                                   1120 ;	../UI_Manager/Display_Manager/display.c:119: return CHAR_E;
      002193 75 82 A2         [24] 1121 	mov	dpl,#0xa2
      002196 22               [24] 1122 	ret
                                   1123 ;	../UI_Manager/Display_Manager/display.c:120: case 'e':
      002197                       1124 00110$:
                                   1125 ;	../UI_Manager/Display_Manager/display.c:121: return CHAR_e;
      002197 75 82 A6         [24] 1126 	mov	dpl,#0xa6
      00219A 22               [24] 1127 	ret
                                   1128 ;	../UI_Manager/Display_Manager/display.c:122: case 'F':
      00219B                       1129 00111$:
                                   1130 ;	../UI_Manager/Display_Manager/display.c:123: return CHAR_F;
      00219B 75 82 62         [24] 1131 	mov	dpl,#0x62
      00219E 22               [24] 1132 	ret
                                   1133 ;	../UI_Manager/Display_Manager/display.c:124: case 'f':
      00219F                       1134 00112$:
                                   1135 ;	../UI_Manager/Display_Manager/display.c:125: return CHAR_f;
      00219F 75 82 66         [24] 1136 	mov	dpl,#0x66
      0021A2 22               [24] 1137 	ret
                                   1138 ;	../UI_Manager/Display_Manager/display.c:126: case 'G':
      0021A3                       1139 00113$:
                                   1140 ;	../UI_Manager/Display_Manager/display.c:127: return CHAR_G;
      0021A3 75 82 E2         [24] 1141 	mov	dpl,#0xe2
      0021A6 22               [24] 1142 	ret
                                   1143 ;	../UI_Manager/Display_Manager/display.c:128: case 'g':
      0021A7                       1144 00114$:
                                   1145 ;	../UI_Manager/Display_Manager/display.c:129: return CHAR_g;
      0021A7 75 82 E6         [24] 1146 	mov	dpl,#0xe6
      0021AA 22               [24] 1147 	ret
                                   1148 ;	../UI_Manager/Display_Manager/display.c:130: case 'H':
      0021AB                       1149 00115$:
                                   1150 ;	../UI_Manager/Display_Manager/display.c:131: return CHAR_H;
      0021AB 75 82 12         [24] 1151 	mov	dpl,#0x12
      0021AE 22               [24] 1152 	ret
                                   1153 ;	../UI_Manager/Display_Manager/display.c:132: case 'h':
      0021AF                       1154 00116$:
                                   1155 ;	../UI_Manager/Display_Manager/display.c:133: return CHAR_h;
      0021AF 75 82 16         [24] 1156 	mov	dpl,#0x16
      0021B2 22               [24] 1157 	ret
                                   1158 ;	../UI_Manager/Display_Manager/display.c:134: case 'I':
      0021B3                       1159 00117$:
                                   1160 ;	../UI_Manager/Display_Manager/display.c:135: return CHAR_I;
      0021B3 75 82 92         [24] 1161 	mov	dpl,#0x92
      0021B6 22               [24] 1162 	ret
                                   1163 ;	../UI_Manager/Display_Manager/display.c:136: case 'i':
      0021B7                       1164 00118$:
                                   1165 ;	../UI_Manager/Display_Manager/display.c:137: return CHAR_i;
      0021B7 75 82 96         [24] 1166 	mov	dpl,#0x96
      0021BA 22               [24] 1167 	ret
                                   1168 ;	../UI_Manager/Display_Manager/display.c:138: case 'J':
      0021BB                       1169 00119$:
                                   1170 ;	../UI_Manager/Display_Manager/display.c:139: return CHAR_J;
      0021BB 75 82 52         [24] 1171 	mov	dpl,#0x52
      0021BE 22               [24] 1172 	ret
                                   1173 ;	../UI_Manager/Display_Manager/display.c:140: case 'j':
      0021BF                       1174 00120$:
                                   1175 ;	../UI_Manager/Display_Manager/display.c:141: return CHAR_j;
      0021BF 75 82 56         [24] 1176 	mov	dpl,#0x56
      0021C2 22               [24] 1177 	ret
                                   1178 ;	../UI_Manager/Display_Manager/display.c:142: case 'K':
      0021C3                       1179 00121$:
                                   1180 ;	../UI_Manager/Display_Manager/display.c:143: return CHAR_K;
      0021C3 75 82 D2         [24] 1181 	mov	dpl,#0xd2
      0021C6 22               [24] 1182 	ret
                                   1183 ;	../UI_Manager/Display_Manager/display.c:144: case 'k':
      0021C7                       1184 00122$:
                                   1185 ;	../UI_Manager/Display_Manager/display.c:145: return CHAR_k;
      0021C7 75 82 D6         [24] 1186 	mov	dpl,#0xd6
      0021CA 22               [24] 1187 	ret
                                   1188 ;	../UI_Manager/Display_Manager/display.c:146: case 'L':
      0021CB                       1189 00123$:
                                   1190 ;	../UI_Manager/Display_Manager/display.c:147: return CHAR_L;
      0021CB 75 82 32         [24] 1191 	mov	dpl,#0x32
      0021CE 22               [24] 1192 	ret
                                   1193 ;	../UI_Manager/Display_Manager/display.c:148: case 'l':
      0021CF                       1194 00124$:
                                   1195 ;	../UI_Manager/Display_Manager/display.c:149: return CHAR_l;
      0021CF 75 82 36         [24] 1196 	mov	dpl,#0x36
      0021D2 22               [24] 1197 	ret
                                   1198 ;	../UI_Manager/Display_Manager/display.c:150: case 'M':
      0021D3                       1199 00125$:
                                   1200 ;	../UI_Manager/Display_Manager/display.c:151: return CHAR_M;
      0021D3 75 82 B2         [24] 1201 	mov	dpl,#0xb2
      0021D6 22               [24] 1202 	ret
                                   1203 ;	../UI_Manager/Display_Manager/display.c:152: case 'm':
      0021D7                       1204 00126$:
                                   1205 ;	../UI_Manager/Display_Manager/display.c:153: return CHAR_m;
      0021D7 75 82 B6         [24] 1206 	mov	dpl,#0xb6
      0021DA 22               [24] 1207 	ret
                                   1208 ;	../UI_Manager/Display_Manager/display.c:154: case 'N':
      0021DB                       1209 00127$:
                                   1210 ;	../UI_Manager/Display_Manager/display.c:155: return CHAR_N;
      0021DB 75 82 72         [24] 1211 	mov	dpl,#0x72
      0021DE 22               [24] 1212 	ret
                                   1213 ;	../UI_Manager/Display_Manager/display.c:156: case 'n':
      0021DF                       1214 00128$:
                                   1215 ;	../UI_Manager/Display_Manager/display.c:157: return CHAR_n;
      0021DF 75 82 76         [24] 1216 	mov	dpl,#0x76
      0021E2 22               [24] 1217 	ret
                                   1218 ;	../UI_Manager/Display_Manager/display.c:158: case 'O':
      0021E3                       1219 00129$:
                                   1220 ;	../UI_Manager/Display_Manager/display.c:159: return CHAR_O;
      0021E3 75 82 F2         [24] 1221 	mov	dpl,#0xf2
      0021E6 22               [24] 1222 	ret
                                   1223 ;	../UI_Manager/Display_Manager/display.c:160: case 'o':
      0021E7                       1224 00130$:
                                   1225 ;	../UI_Manager/Display_Manager/display.c:161: return CHAR_o;
      0021E7 75 82 F6         [24] 1226 	mov	dpl,#0xf6
      0021EA 22               [24] 1227 	ret
                                   1228 ;	../UI_Manager/Display_Manager/display.c:162: case 'P':
      0021EB                       1229 00131$:
                                   1230 ;	../UI_Manager/Display_Manager/display.c:163: return CHAR_P;
      0021EB 75 82 0A         [24] 1231 	mov	dpl,#0x0a
      0021EE 22               [24] 1232 	ret
                                   1233 ;	../UI_Manager/Display_Manager/display.c:164: case 'p':
      0021EF                       1234 00132$:
                                   1235 ;	../UI_Manager/Display_Manager/display.c:165: return CHAR_p;
      0021EF 75 82 0E         [24] 1236 	mov	dpl,#0x0e
      0021F2 22               [24] 1237 	ret
                                   1238 ;	../UI_Manager/Display_Manager/display.c:166: case 'Q':
      0021F3                       1239 00133$:
                                   1240 ;	../UI_Manager/Display_Manager/display.c:167: return CHAR_Q;
      0021F3 75 82 8A         [24] 1241 	mov	dpl,#0x8a
      0021F6 22               [24] 1242 	ret
                                   1243 ;	../UI_Manager/Display_Manager/display.c:168: case 'q':
      0021F7                       1244 00134$:
                                   1245 ;	../UI_Manager/Display_Manager/display.c:169: return CHAR_q;
      0021F7 75 82 8E         [24] 1246 	mov	dpl,#0x8e
      0021FA 22               [24] 1247 	ret
                                   1248 ;	../UI_Manager/Display_Manager/display.c:170: case 'R':
      0021FB                       1249 00135$:
                                   1250 ;	../UI_Manager/Display_Manager/display.c:171: return CHAR_R;
      0021FB 75 82 4A         [24] 1251 	mov	dpl,#0x4a
      0021FE 22               [24] 1252 	ret
                                   1253 ;	../UI_Manager/Display_Manager/display.c:172: case 'r':
      0021FF                       1254 00136$:
                                   1255 ;	../UI_Manager/Display_Manager/display.c:173: return CHAR_r;
      0021FF 75 82 4E         [24] 1256 	mov	dpl,#0x4e
      002202 22               [24] 1257 	ret
                                   1258 ;	../UI_Manager/Display_Manager/display.c:174: case 'S':
      002203                       1259 00137$:
                                   1260 ;	../UI_Manager/Display_Manager/display.c:175: return CHAR_S;
      002203 75 82 CA         [24] 1261 	mov	dpl,#0xca
      002206 22               [24] 1262 	ret
                                   1263 ;	../UI_Manager/Display_Manager/display.c:176: case 's':
      002207                       1264 00138$:
                                   1265 ;	../UI_Manager/Display_Manager/display.c:177: return CHAR_s;
      002207 75 82 CE         [24] 1266 	mov	dpl,#0xce
      00220A 22               [24] 1267 	ret
                                   1268 ;	../UI_Manager/Display_Manager/display.c:178: case 'T':
      00220B                       1269 00139$:
                                   1270 ;	../UI_Manager/Display_Manager/display.c:179: return CHAR_T;
      00220B 75 82 2A         [24] 1271 	mov	dpl,#0x2a
      00220E 22               [24] 1272 	ret
                                   1273 ;	../UI_Manager/Display_Manager/display.c:180: case 't':
      00220F                       1274 00140$:
                                   1275 ;	../UI_Manager/Display_Manager/display.c:181: return CHAR_t;
      00220F 75 82 2E         [24] 1276 	mov	dpl,#0x2e
      002212 22               [24] 1277 	ret
                                   1278 ;	../UI_Manager/Display_Manager/display.c:182: case 'U':
      002213                       1279 00141$:
                                   1280 ;	../UI_Manager/Display_Manager/display.c:183: return CHAR_U;
      002213 75 82 AA         [24] 1281 	mov	dpl,#0xaa
      002216 22               [24] 1282 	ret
                                   1283 ;	../UI_Manager/Display_Manager/display.c:184: case 'u':
      002217                       1284 00142$:
                                   1285 ;	../UI_Manager/Display_Manager/display.c:185: return CHAR_u;
      002217 75 82 AE         [24] 1286 	mov	dpl,#0xae
      00221A 22               [24] 1287 	ret
                                   1288 ;	../UI_Manager/Display_Manager/display.c:186: case 'V':
      00221B                       1289 00143$:
                                   1290 ;	../UI_Manager/Display_Manager/display.c:187: return CHAR_V;
      00221B 75 82 6A         [24] 1291 	mov	dpl,#0x6a
      00221E 22               [24] 1292 	ret
                                   1293 ;	../UI_Manager/Display_Manager/display.c:188: case 'v':
      00221F                       1294 00144$:
                                   1295 ;	../UI_Manager/Display_Manager/display.c:189: return CHAR_v;
      00221F 75 82 6E         [24] 1296 	mov	dpl,#0x6e
      002222 22               [24] 1297 	ret
                                   1298 ;	../UI_Manager/Display_Manager/display.c:190: case 'W':
      002223                       1299 00145$:
                                   1300 ;	../UI_Manager/Display_Manager/display.c:191: return CHAR_W;
      002223 75 82 EA         [24] 1301 	mov	dpl,#0xea
                                   1302 ;	../UI_Manager/Display_Manager/display.c:192: case 'w':
      002226 22               [24] 1303 	ret
      002227                       1304 00146$:
                                   1305 ;	../UI_Manager/Display_Manager/display.c:193: return CHAR_w;
      002227 75 82 EE         [24] 1306 	mov	dpl,#0xee
                                   1307 ;	../UI_Manager/Display_Manager/display.c:194: case 'X':
      00222A 22               [24] 1308 	ret
      00222B                       1309 00147$:
                                   1310 ;	../UI_Manager/Display_Manager/display.c:195: return CHAR_X;
      00222B 75 82 1A         [24] 1311 	mov	dpl,#0x1a
                                   1312 ;	../UI_Manager/Display_Manager/display.c:196: case 'x':
      00222E 22               [24] 1313 	ret
      00222F                       1314 00148$:
                                   1315 ;	../UI_Manager/Display_Manager/display.c:197: return CHAR_x;
      00222F 75 82 1E         [24] 1316 	mov	dpl,#0x1e
                                   1317 ;	../UI_Manager/Display_Manager/display.c:198: case 'Y':
      002232 22               [24] 1318 	ret
      002233                       1319 00149$:
                                   1320 ;	../UI_Manager/Display_Manager/display.c:199: return CHAR_Y;
      002233 75 82 9A         [24] 1321 	mov	dpl,#0x9a
                                   1322 ;	../UI_Manager/Display_Manager/display.c:200: case 'y':
      002236 22               [24] 1323 	ret
      002237                       1324 00150$:
                                   1325 ;	../UI_Manager/Display_Manager/display.c:201: return CHAR_y;
      002237 75 82 9E         [24] 1326 	mov	dpl,#0x9e
                                   1327 ;	../UI_Manager/Display_Manager/display.c:202: case 'Z':
      00223A 22               [24] 1328 	ret
      00223B                       1329 00151$:
                                   1330 ;	../UI_Manager/Display_Manager/display.c:203: return CHAR_Z;
      00223B 75 82 5A         [24] 1331 	mov	dpl,#0x5a
                                   1332 ;	../UI_Manager/Display_Manager/display.c:204: case 'z':
      00223E 22               [24] 1333 	ret
      00223F                       1334 00152$:
                                   1335 ;	../UI_Manager/Display_Manager/display.c:205: return CHAR_z;
      00223F 75 82 5E         [24] 1336 	mov	dpl,#0x5e
                                   1337 ;	../UI_Manager/Display_Manager/display.c:206: case '0':
      002242 22               [24] 1338 	ret
      002243                       1339 00153$:
                                   1340 ;	../UI_Manager/Display_Manager/display.c:207: return CHAR_0;
      002243 75 82 0C         [24] 1341 	mov	dpl,#0x0c
                                   1342 ;	../UI_Manager/Display_Manager/display.c:208: case '1':
      002246 22               [24] 1343 	ret
      002247                       1344 00154$:
                                   1345 ;	../UI_Manager/Display_Manager/display.c:209: return CHAR_1;
      002247 75 82 8C         [24] 1346 	mov	dpl,#0x8c
                                   1347 ;	../UI_Manager/Display_Manager/display.c:210: case '2':
      00224A 22               [24] 1348 	ret
      00224B                       1349 00155$:
                                   1350 ;	../UI_Manager/Display_Manager/display.c:211: return CHAR_2;
      00224B 75 82 4C         [24] 1351 	mov	dpl,#0x4c
                                   1352 ;	../UI_Manager/Display_Manager/display.c:212: case '3':
      00224E 22               [24] 1353 	ret
      00224F                       1354 00156$:
                                   1355 ;	../UI_Manager/Display_Manager/display.c:213: return CHAR_3;
      00224F 75 82 CC         [24] 1356 	mov	dpl,#0xcc
                                   1357 ;	../UI_Manager/Display_Manager/display.c:214: case '4':
      002252 22               [24] 1358 	ret
      002253                       1359 00157$:
                                   1360 ;	../UI_Manager/Display_Manager/display.c:215: return CHAR_4;
      002253 75 82 2C         [24] 1361 	mov	dpl,#0x2c
                                   1362 ;	../UI_Manager/Display_Manager/display.c:216: case '5':
      002256 22               [24] 1363 	ret
      002257                       1364 00158$:
                                   1365 ;	../UI_Manager/Display_Manager/display.c:217: return CHAR_5;
      002257 75 82 AC         [24] 1366 	mov	dpl,#0xac
                                   1367 ;	../UI_Manager/Display_Manager/display.c:218: case '6':
      00225A 22               [24] 1368 	ret
      00225B                       1369 00159$:
                                   1370 ;	../UI_Manager/Display_Manager/display.c:219: return CHAR_6;
      00225B 75 82 6C         [24] 1371 	mov	dpl,#0x6c
                                   1372 ;	../UI_Manager/Display_Manager/display.c:220: case '7':
      00225E 22               [24] 1373 	ret
      00225F                       1374 00160$:
                                   1375 ;	../UI_Manager/Display_Manager/display.c:221: return CHAR_7;
      00225F 75 82 EC         [24] 1376 	mov	dpl,#0xec
                                   1377 ;	../UI_Manager/Display_Manager/display.c:222: case '8':
      002262 22               [24] 1378 	ret
      002263                       1379 00161$:
                                   1380 ;	../UI_Manager/Display_Manager/display.c:223: return CHAR_8;
      002263 75 82 1C         [24] 1381 	mov	dpl,#0x1c
                                   1382 ;	../UI_Manager/Display_Manager/display.c:224: case '9':
      002266 22               [24] 1383 	ret
      002267                       1384 00162$:
                                   1385 ;	../UI_Manager/Display_Manager/display.c:225: return CHAR_9;
      002267 75 82 9C         [24] 1386 	mov	dpl,#0x9c
                                   1387 ;	../UI_Manager/Display_Manager/display.c:226: case '+':
      00226A 22               [24] 1388 	ret
      00226B                       1389 00163$:
                                   1390 ;	../UI_Manager/Display_Manager/display.c:227: return CHAR_PLUS;
      00226B 75 82 D4         [24] 1391 	mov	dpl,#0xd4
                                   1392 ;	../UI_Manager/Display_Manager/display.c:228: case '&':
      00226E 22               [24] 1393 	ret
      00226F                       1394 00164$:
                                   1395 ;	../UI_Manager/Display_Manager/display.c:229: return CHAR_AND;
      00226F 75 82 64         [24] 1396 	mov	dpl,#0x64
                                   1397 ;	../UI_Manager/Display_Manager/display.c:230: case ';':
      002272 22               [24] 1398 	ret
      002273                       1399 00165$:
                                   1400 ;	../UI_Manager/Display_Manager/display.c:231: return CHAR_STAR_8;
      002273 75 82 E0         [24] 1401 	mov	dpl,#0xe0
                                   1402 ;	../UI_Manager/Display_Manager/display.c:232: }
      002276 22               [24] 1403 	ret
      002277                       1404 00166$:
                                   1405 ;	../UI_Manager/Display_Manager/display.c:234: return CHAR_NULL;
      002277 75 82 04         [24] 1406 	mov	dpl,#0x04
                                   1407 ;	../UI_Manager/Display_Manager/display.c:235: }
      00227A 22               [24] 1408 	ret
                                   1409 ;------------------------------------------------------------
                                   1410 ;Allocation info for local variables in function 'writeShiftReg'
                                   1411 ;------------------------------------------------------------
                                   1412 ;value                     Allocated to registers r6 r7 
                                   1413 ;i                         Allocated to registers r5 
                                   1414 ;------------------------------------------------------------
                                   1415 ;	../UI_Manager/Display_Manager/display.c:240: void writeShiftReg(uint16_t value){
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function writeShiftReg
                                   1418 ;	-----------------------------------------
      00227B                       1419 _writeShiftReg:
      00227B AE 82            [24] 1420 	mov	r6,dpl
      00227D AF 83            [24] 1421 	mov	r7,dph
                                   1422 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      00227F 7D 04            [12] 1423 	mov	r5,#0x04
      002281                       1424 00102$:
                                   1425 ;	../UI_Manager/Display_Manager/display.c:244: SER = value & (1 << i);
      002281 8D F0            [24] 1426 	mov	b,r5
      002283 05 F0            [12] 1427 	inc	b
      002285 7B 01            [12] 1428 	mov	r3,#0x01
      002287 7C 00            [12] 1429 	mov	r4,#0x00
      002289 80 06            [24] 1430 	sjmp	00116$
      00228B                       1431 00115$:
      00228B EB               [12] 1432 	mov	a,r3
      00228C 2B               [12] 1433 	add	a,r3
      00228D FB               [12] 1434 	mov	r3,a
      00228E EC               [12] 1435 	mov	a,r4
      00228F 33               [12] 1436 	rlc	a
      002290 FC               [12] 1437 	mov	r4,a
      002291                       1438 00116$:
      002291 D5 F0 F7         [24] 1439 	djnz	b,00115$
      002294 EE               [12] 1440 	mov	a,r6
      002295 52 03            [12] 1441 	anl	ar3,a
      002297 EF               [12] 1442 	mov	a,r7
      002298 52 04            [12] 1443 	anl	ar4,a
                                   1444 ;	assignBit
      00229A EB               [12] 1445 	mov	a,r3
      00229B 4C               [12] 1446 	orl	a,r4
      00229C 24 FF            [12] 1447 	add	a,#0xff
      00229E 92 95            [24] 1448 	mov	_SER,c
                                   1449 ;	../UI_Manager/Display_Manager/display.c:247: SCK = 1;
                                   1450 ;	assignBit
      0022A0 D2 93            [12] 1451 	setb	_SCK
                                   1452 ;	../UI_Manager/Display_Manager/display.c:248: SCK = 0;
                                   1453 ;	assignBit
      0022A2 C2 93            [12] 1454 	clr	_SCK
                                   1455 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      0022A4 0D               [12] 1456 	inc	r5
      0022A5 BD 10 00         [24] 1457 	cjne	r5,#0x10,00117$
      0022A8                       1458 00117$:
      0022A8 40 D7            [24] 1459 	jc	00102$
                                   1460 ;	../UI_Manager/Display_Manager/display.c:250: RCK = 1;
                                   1461 ;	assignBit
      0022AA D2 92            [12] 1462 	setb	_RCK
                                   1463 ;	../UI_Manager/Display_Manager/display.c:251: RCK = 0;
                                   1464 ;	assignBit
      0022AC C2 92            [12] 1465 	clr	_RCK
                                   1466 ;	../UI_Manager/Display_Manager/display.c:252: }
      0022AE 22               [24] 1467 	ret
                                   1468 ;------------------------------------------------------------
                                   1469 ;Allocation info for local variables in function 'flipByte'
                                   1470 ;------------------------------------------------------------
                                   1471 ;line                      Allocated to registers r7 
                                   1472 ;i                         Allocated to registers r5 
                                   1473 ;temp                      Allocated to registers r6 
                                   1474 ;------------------------------------------------------------
                                   1475 ;	../UI_Manager/Display_Manager/display.c:255: uint8_t flipByte(uint8_t line){
                                   1476 ;	-----------------------------------------
                                   1477 ;	 function flipByte
                                   1478 ;	-----------------------------------------
      0022AF                       1479 _flipByte:
      0022AF AF 82            [24] 1480 	mov	r7,dpl
                                   1481 ;	../UI_Manager/Display_Manager/display.c:256: uint8_t i, temp = 0;
      0022B1 7E 00            [12] 1482 	mov	r6,#0x00
                                   1483 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      0022B3 7D 00            [12] 1484 	mov	r5,#0x00
      0022B5                       1485 00102$:
                                   1486 ;	../UI_Manager/Display_Manager/display.c:259: temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
      0022B5 C0 06            [24] 1487 	push	ar6
      0022B7 8D F0            [24] 1488 	mov	b,r5
      0022B9 05 F0            [12] 1489 	inc	b
      0022BB 7B 80            [12] 1490 	mov	r3,#0x80
      0022BD E4               [12] 1491 	clr	a
      0022BE FC               [12] 1492 	mov	r4,a
      0022BF 33               [12] 1493 	rlc	a
      0022C0 92 D2            [24] 1494 	mov	ov,c
      0022C2 80 08            [24] 1495 	sjmp	00122$
      0022C4                       1496 00121$:
      0022C4 A2 D2            [12] 1497 	mov	c,ov
      0022C6 EC               [12] 1498 	mov	a,r4
      0022C7 13               [12] 1499 	rrc	a
      0022C8 FC               [12] 1500 	mov	r4,a
      0022C9 EB               [12] 1501 	mov	a,r3
      0022CA 13               [12] 1502 	rrc	a
      0022CB FB               [12] 1503 	mov	r3,a
      0022CC                       1504 00122$:
      0022CC D5 F0 F5         [24] 1505 	djnz	b,00121$
      0022CF 8F 02            [24] 1506 	mov	ar2,r7
      0022D1 7E 00            [12] 1507 	mov	r6,#0x00
      0022D3 EA               [12] 1508 	mov	a,r2
      0022D4 52 03            [12] 1509 	anl	ar3,a
      0022D6 EE               [12] 1510 	mov	a,r6
      0022D7 52 04            [12] 1511 	anl	ar4,a
      0022D9 D0 06            [24] 1512 	pop	ar6
      0022DB EB               [12] 1513 	mov	a,r3
      0022DC 4C               [12] 1514 	orl	a,r4
      0022DD 60 06            [24] 1515 	jz	00106$
      0022DF 7B 01            [12] 1516 	mov	r3,#0x01
      0022E1 7C 00            [12] 1517 	mov	r4,#0x00
      0022E3 80 04            [24] 1518 	sjmp	00107$
      0022E5                       1519 00106$:
      0022E5 7B 00            [12] 1520 	mov	r3,#0x00
      0022E7 7C 00            [12] 1521 	mov	r4,#0x00
      0022E9                       1522 00107$:
      0022E9 8D 04            [24] 1523 	mov	ar4,r5
      0022EB 8C F0            [24] 1524 	mov	b,r4
      0022ED 05 F0            [12] 1525 	inc	b
      0022EF EB               [12] 1526 	mov	a,r3
      0022F0 80 02            [24] 1527 	sjmp	00126$
      0022F2                       1528 00124$:
      0022F2 25 E0            [12] 1529 	add	a,acc
      0022F4                       1530 00126$:
      0022F4 D5 F0 FB         [24] 1531 	djnz	b,00124$
      0022F7 FB               [12] 1532 	mov	r3,a
      0022F8 8E 04            [24] 1533 	mov	ar4,r6
      0022FA EC               [12] 1534 	mov	a,r4
      0022FB 42 03            [12] 1535 	orl	ar3,a
      0022FD 8B 06            [24] 1536 	mov	ar6,r3
                                   1537 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      0022FF 0D               [12] 1538 	inc	r5
      002300 BD 08 00         [24] 1539 	cjne	r5,#0x08,00127$
      002303                       1540 00127$:
      002303 40 B0            [24] 1541 	jc	00102$
                                   1542 ;	../UI_Manager/Display_Manager/display.c:262: return temp;
      002305 8E 82            [24] 1543 	mov	dpl,r6
                                   1544 ;	../UI_Manager/Display_Manager/display.c:263: }
      002307 22               [24] 1545 	ret
                                   1546 	.area CSEG    (CODE)
                                   1547 	.area CONST   (CODE)
                                   1548 	.area XINIT   (CODE)
                                   1549 	.area CABS    (ABS,CODE)
