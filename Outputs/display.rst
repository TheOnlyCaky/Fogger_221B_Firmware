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
      001CAB                        281 _write_string:
                           000007   282 	ar7 = 0x07
                           000006   283 	ar6 = 0x06
                           000005   284 	ar5 = 0x05
                           000004   285 	ar4 = 0x04
                           000003   286 	ar3 = 0x03
                           000002   287 	ar2 = 0x02
                           000001   288 	ar1 = 0x01
                           000000   289 	ar0 = 0x00
      001CAB C0 1A            [24]  290 	push	_bp
      001CAD 85 81 1A         [24]  291 	mov	_bp,sp
      001CB0 C0 82            [24]  292 	push	dpl
      001CB2 C0 83            [24]  293 	push	dph
      001CB4 C0 F0            [24]  294 	push	b
                                    295 ;	../UI_Manager/Display_Manager/display.c:17: uint8_t i, done = 0;
      001CB6 7C 00            [12]  296 	mov	r4,#0x00
                                    297 ;	../UI_Manager/Display_Manager/display.c:20: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001CB8 E5 1A            [12]  298 	mov	a,_bp
      001CBA 24 FB            [12]  299 	add	a,#0xfb
      001CBC F8               [12]  300 	mov	r0,a
      001CBD E6               [12]  301 	mov	a,@r0
      001CBE 60 0D            [24]  302 	jz	00115$
      001CC0 E5 1A            [12]  303 	mov	a,_bp
      001CC2 24 FC            [12]  304 	add	a,#0xfc
      001CC4 F8               [12]  305 	mov	r0,a
      001CC5 86 03            [24]  306 	mov	ar3,@r0
      001CC7 74 40            [12]  307 	mov	a,#0x40
      001CC9 2B               [12]  308 	add	a,r3
      001CCA FB               [12]  309 	mov	r3,a
      001CCB 80 07            [24]  310 	sjmp	00116$
      001CCD                        311 00115$:
      001CCD E5 1A            [12]  312 	mov	a,_bp
      001CCF 24 FC            [12]  313 	add	a,#0xfc
      001CD1 F8               [12]  314 	mov	r0,a
      001CD2 86 03            [24]  315 	mov	ar3,@r0
      001CD4                        316 00116$:
      001CD4 8B 82            [24]  317 	mov	dpl,r3
      001CD6 C0 04            [24]  318 	push	ar4
      001CD8 12 22 35         [24]  319 	lcall	_flipByte
      001CDB AA 82            [24]  320 	mov	r2,dpl
      001CDD 7B 00            [12]  321 	mov	r3,#0x00
      001CDF 8B 82            [24]  322 	mov	dpl,r3
      001CE1 74 01            [12]  323 	mov	a,#0x01
      001CE3 4A               [12]  324 	orl	a,r2
      001CE4 F5 83            [12]  325 	mov	dph,a
      001CE6 12 1F E6         [24]  326 	lcall	_exe_command
      001CE9 D0 04            [24]  327 	pop	ar4
                                    328 ;	../UI_Manager/Display_Manager/display.c:22: length++; //null terminated
      001CEB E5 1A            [12]  329 	mov	a,_bp
      001CED 24 FD            [12]  330 	add	a,#0xfd
      001CEF F8               [12]  331 	mov	r0,a
      001CF0 06               [12]  332 	inc	@r0
                                    333 ;	../UI_Manager/Display_Manager/display.c:24: if(selected){
      001CF1 E5 1A            [12]  334 	mov	a,_bp
      001CF3 24 FA            [12]  335 	add	a,#0xfa
      001CF5 F8               [12]  336 	mov	r0,a
      001CF6 E6               [12]  337 	mov	a,@r0
      001CF7 60 0A            [24]  338 	jz	00122$
                                    339 ;	../UI_Manager/Display_Manager/display.c:25: exe_command(WRITE_CURSOR);
      001CF9 90 00 80         [24]  340 	mov	dptr,#0x0080
      001CFC C0 04            [24]  341 	push	ar4
      001CFE 12 1F E6         [24]  342 	lcall	_exe_command
      001D01 D0 04            [24]  343 	pop	ar4
                                    344 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001D03                        345 00122$:
      001D03 7B 00            [12]  346 	mov	r3,#0x00
      001D05                        347 00111$:
      001D05 E5 1A            [12]  348 	mov	a,_bp
      001D07 24 FD            [12]  349 	add	a,#0xfd
      001D09 F8               [12]  350 	mov	r0,a
      001D0A C3               [12]  351 	clr	c
      001D0B EB               [12]  352 	mov	a,r3
      001D0C 96               [12]  353 	subb	a,@r0
      001D0D 50 53            [24]  354 	jnc	00113$
                                    355 ;	../UI_Manager/Display_Manager/display.c:29: if(!done){
      001D0F EC               [12]  356 	mov	a,r4
      001D10 70 3F            [24]  357 	jnz	00107$
                                    358 ;	../UI_Manager/Display_Manager/display.c:30: if(string[i]){
      001D12 C0 04            [24]  359 	push	ar4
      001D14 A8 1A            [24]  360 	mov	r0,_bp
      001D16 08               [12]  361 	inc	r0
      001D17 EB               [12]  362 	mov	a,r3
      001D18 26               [12]  363 	add	a,@r0
      001D19 FA               [12]  364 	mov	r2,a
      001D1A E4               [12]  365 	clr	a
      001D1B 08               [12]  366 	inc	r0
      001D1C 36               [12]  367 	addc	a,@r0
      001D1D FC               [12]  368 	mov	r4,a
      001D1E 08               [12]  369 	inc	r0
      001D1F 86 07            [24]  370 	mov	ar7,@r0
      001D21 8A 82            [24]  371 	mov	dpl,r2
      001D23 8C 83            [24]  372 	mov	dph,r4
      001D25 8F F0            [24]  373 	mov	b,r7
      001D27 12 36 2C         [24]  374 	lcall	__gptrget
      001D2A FF               [12]  375 	mov	r7,a
      001D2B D0 04            [24]  376 	pop	ar4
      001D2D EF               [12]  377 	mov	a,r7
      001D2E 60 1D            [24]  378 	jz	00104$
                                    379 ;	../UI_Manager/Display_Manager/display.c:31: exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
      001D30 8F 82            [24]  380 	mov	dpl,r7
      001D32 C0 04            [24]  381 	push	ar4
      001D34 C0 03            [24]  382 	push	ar3
      001D36 12 20 2C         [24]  383 	lcall	_charToCode
      001D39 AE 82            [24]  384 	mov	r6,dpl
      001D3B 7F 00            [12]  385 	mov	r7,#0x00
      001D3D 74 80            [12]  386 	mov	a,#0x80
      001D3F 4F               [12]  387 	orl	a,r7
      001D40 F5 82            [12]  388 	mov	dpl,a
      001D42 8E 83            [24]  389 	mov	dph,r6
      001D44 12 1F E6         [24]  390 	lcall	_exe_command
      001D47 D0 03            [24]  391 	pop	ar3
      001D49 D0 04            [24]  392 	pop	ar4
      001D4B 80 12            [24]  393 	sjmp	00112$
      001D4D                        394 00104$:
                                    395 ;	../UI_Manager/Display_Manager/display.c:33: done = 1;
      001D4D 7C 01            [12]  396 	mov	r4,#0x01
      001D4F 80 0E            [24]  397 	sjmp	00112$
      001D51                        398 00107$:
                                    399 ;	../UI_Manager/Display_Manager/display.c:36: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001D51 90 04 80         [24]  400 	mov	dptr,#0x0480
      001D54 C0 04            [24]  401 	push	ar4
      001D56 C0 03            [24]  402 	push	ar3
      001D58 12 1F E6         [24]  403 	lcall	_exe_command
      001D5B D0 03            [24]  404 	pop	ar3
      001D5D D0 04            [24]  405 	pop	ar4
      001D5F                        406 00112$:
                                    407 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001D5F 0B               [12]  408 	inc	r3
      001D60 80 A3            [24]  409 	sjmp	00111$
      001D62                        410 00113$:
                                    411 ;	../UI_Manager/Display_Manager/display.c:39: }
      001D62 85 1A 81         [24]  412 	mov	sp,_bp
      001D65 D0 1A            [24]  413 	pop	_bp
      001D67 22               [24]  414 	ret
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
      001D68                        430 _write_number:
      001D68 C0 1A            [24]  431 	push	_bp
      001D6A 85 81 1A         [24]  432 	mov	_bp,sp
      001D6D 05 81            [12]  433 	inc	sp
      001D6F 05 81            [12]  434 	inc	sp
      001D71 05 81            [12]  435 	inc	sp
      001D73 AE 82            [24]  436 	mov	r6,dpl
      001D75 AF 83            [24]  437 	mov	r7,dph
                                    438 ;	../UI_Manager/Display_Manager/display.c:42: uint8_t higherNumberPresent = 0;
      001D77 7D 00            [12]  439 	mov	r5,#0x00
                                    440 ;	../UI_Manager/Display_Manager/display.c:44: uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};
      001D79 A9 1A            [24]  441 	mov	r1,_bp
      001D7B 09               [12]  442 	inc	r1
      001D7C 77 04            [12]  443 	mov	@r1,#0x04
      001D7E E9               [12]  444 	mov	a,r1
      001D7F 04               [12]  445 	inc	a
      001D80 F8               [12]  446 	mov	r0,a
      001D81 76 04            [12]  447 	mov	@r0,#0x04
      001D83 74 02            [12]  448 	mov	a,#0x02
      001D85 29               [12]  449 	add	a,r1
      001D86 FC               [12]  450 	mov	r4,a
      001D87 C0 00            [24]  451 	push	ar0
      001D89 A8 04            [24]  452 	mov	r0,ar4
      001D8B 76 0C            [12]  453 	mov	@r0,#0x0c
      001D8D D0 00            [24]  454 	pop	ar0
                                    455 ;	../UI_Manager/Display_Manager/display.c:46: if(number >= 1000) {number = 999;}
      001D8F C3               [12]  456 	clr	c
      001D90 EE               [12]  457 	mov	a,r6
      001D91 94 E8            [12]  458 	subb	a,#0xe8
      001D93 EF               [12]  459 	mov	a,r7
      001D94 94 03            [12]  460 	subb	a,#0x03
      001D96 40 04            [24]  461 	jc	00102$
      001D98 7E E7            [12]  462 	mov	r6,#0xe7
      001D9A 7F 03            [12]  463 	mov	r7,#0x03
      001D9C                        464 00102$:
                                    465 ;	../UI_Manager/Display_Manager/display.c:48: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001D9C C0 00            [24]  466 	push	ar0
      001D9E E5 1A            [12]  467 	mov	a,_bp
      001DA0 24 FC            [12]  468 	add	a,#0xfc
      001DA2 F8               [12]  469 	mov	r0,a
      001DA3 E6               [12]  470 	mov	a,@r0
      001DA4 D0 00            [24]  471 	pop	ar0
      001DA6 60 11            [24]  472 	jz	00113$
      001DA8 C0 00            [24]  473 	push	ar0
      001DAA E5 1A            [12]  474 	mov	a,_bp
      001DAC 24 FD            [12]  475 	add	a,#0xfd
      001DAE F8               [12]  476 	mov	r0,a
      001DAF 86 03            [24]  477 	mov	ar3,@r0
      001DB1 D0 00            [24]  478 	pop	ar0
      001DB3 74 40            [12]  479 	mov	a,#0x40
      001DB5 2B               [12]  480 	add	a,r3
      001DB6 FB               [12]  481 	mov	r3,a
      001DB7 80 0B            [24]  482 	sjmp	00114$
      001DB9                        483 00113$:
      001DB9 C0 00            [24]  484 	push	ar0
      001DBB E5 1A            [12]  485 	mov	a,_bp
      001DBD 24 FD            [12]  486 	add	a,#0xfd
      001DBF F8               [12]  487 	mov	r0,a
      001DC0 86 03            [24]  488 	mov	ar3,@r0
      001DC2 D0 00            [24]  489 	pop	ar0
      001DC4                        490 00114$:
      001DC4 8B 82            [24]  491 	mov	dpl,r3
      001DC6 C0 07            [24]  492 	push	ar7
      001DC8 C0 06            [24]  493 	push	ar6
      001DCA C0 05            [24]  494 	push	ar5
      001DCC C0 04            [24]  495 	push	ar4
      001DCE C0 01            [24]  496 	push	ar1
      001DD0 C0 00            [24]  497 	push	ar0
      001DD2 12 22 35         [24]  498 	lcall	_flipByte
      001DD5 AA 82            [24]  499 	mov	r2,dpl
      001DD7 7B 00            [12]  500 	mov	r3,#0x00
      001DD9 8B 82            [24]  501 	mov	dpl,r3
      001DDB 74 01            [12]  502 	mov	a,#0x01
      001DDD 4A               [12]  503 	orl	a,r2
      001DDE F5 83            [12]  504 	mov	dph,a
      001DE0 12 1F E6         [24]  505 	lcall	_exe_command
      001DE3 D0 00            [24]  506 	pop	ar0
      001DE5 D0 01            [24]  507 	pop	ar1
      001DE7 D0 04            [24]  508 	pop	ar4
      001DE9 D0 05            [24]  509 	pop	ar5
      001DEB D0 06            [24]  510 	pop	ar6
      001DED D0 07            [24]  511 	pop	ar7
                                    512 ;	../UI_Manager/Display_Manager/display.c:51: if(selected){
      001DEF C0 00            [24]  513 	push	ar0
      001DF1 E5 1A            [12]  514 	mov	a,_bp
      001DF3 24 FB            [12]  515 	add	a,#0xfb
      001DF5 F8               [12]  516 	mov	r0,a
      001DF6 E6               [12]  517 	mov	a,@r0
      001DF7 D0 00            [24]  518 	pop	ar0
      001DF9 60 20            [24]  519 	jz	00104$
                                    520 ;	../UI_Manager/Display_Manager/display.c:52: exe_command(WRITE_CURSOR);
      001DFB 90 00 80         [24]  521 	mov	dptr,#0x0080
      001DFE C0 07            [24]  522 	push	ar7
      001E00 C0 06            [24]  523 	push	ar6
      001E02 C0 05            [24]  524 	push	ar5
      001E04 C0 04            [24]  525 	push	ar4
      001E06 C0 01            [24]  526 	push	ar1
      001E08 C0 00            [24]  527 	push	ar0
      001E0A 12 1F E6         [24]  528 	lcall	_exe_command
      001E0D D0 00            [24]  529 	pop	ar0
      001E0F D0 01            [24]  530 	pop	ar1
      001E11 D0 04            [24]  531 	pop	ar4
      001E13 D0 05            [24]  532 	pop	ar5
      001E15 D0 06            [24]  533 	pop	ar6
      001E17 D0 07            [24]  534 	pop	ar7
      001E19 80 1E            [24]  535 	sjmp	00105$
      001E1B                        536 00104$:
                                    537 ;	../UI_Manager/Display_Manager/display.c:54: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001E1B 90 04 80         [24]  538 	mov	dptr,#0x0480
      001E1E C0 07            [24]  539 	push	ar7
      001E20 C0 06            [24]  540 	push	ar6
      001E22 C0 05            [24]  541 	push	ar5
      001E24 C0 04            [24]  542 	push	ar4
      001E26 C0 01            [24]  543 	push	ar1
      001E28 C0 00            [24]  544 	push	ar0
      001E2A 12 1F E6         [24]  545 	lcall	_exe_command
      001E2D D0 00            [24]  546 	pop	ar0
      001E2F D0 01            [24]  547 	pop	ar1
      001E31 D0 04            [24]  548 	pop	ar4
      001E33 D0 05            [24]  549 	pop	ar5
      001E35 D0 06            [24]  550 	pop	ar6
      001E37 D0 07            [24]  551 	pop	ar7
      001E39                        552 00105$:
                                    553 ;	../UI_Manager/Display_Manager/display.c:58: value = number/100;
      001E39 C0 07            [24]  554 	push	ar7
      001E3B C0 06            [24]  555 	push	ar6
      001E3D C0 05            [24]  556 	push	ar5
      001E3F C0 04            [24]  557 	push	ar4
      001E41 C0 01            [24]  558 	push	ar1
      001E43 C0 00            [24]  559 	push	ar0
      001E45 74 64            [12]  560 	mov	a,#0x64
      001E47 C0 E0            [24]  561 	push	acc
      001E49 E4               [12]  562 	clr	a
      001E4A C0 E0            [24]  563 	push	acc
      001E4C 8E 82            [24]  564 	mov	dpl,r6
      001E4E 8F 83            [24]  565 	mov	dph,r7
      001E50 12 35 67         [24]  566 	lcall	__divuint
      001E53 AA 82            [24]  567 	mov	r2,dpl
      001E55 AB 83            [24]  568 	mov	r3,dph
      001E57 15 81            [12]  569 	dec	sp
      001E59 15 81            [12]  570 	dec	sp
      001E5B D0 00            [24]  571 	pop	ar0
      001E5D D0 01            [24]  572 	pop	ar1
      001E5F D0 04            [24]  573 	pop	ar4
      001E61 D0 05            [24]  574 	pop	ar5
      001E63 D0 06            [24]  575 	pop	ar6
      001E65 D0 07            [24]  576 	pop	ar7
                                    577 ;	../UI_Manager/Display_Manager/display.c:59: if(value){
      001E67 EA               [12]  578 	mov	a,r2
      001E68 4B               [12]  579 	orl	a,r3
      001E69 60 54            [24]  580 	jz	00107$
                                    581 ;	../UI_Manager/Display_Manager/display.c:60: chars[0] = charToCode(value + 0x30);
      001E6B C0 04            [24]  582 	push	ar4
      001E6D 8A 04            [24]  583 	mov	ar4,r2
      001E6F 74 30            [12]  584 	mov	a,#0x30
      001E71 2C               [12]  585 	add	a,r4
      001E72 F5 82            [12]  586 	mov	dpl,a
      001E74 C0 07            [24]  587 	push	ar7
      001E76 C0 06            [24]  588 	push	ar6
      001E78 C0 04            [24]  589 	push	ar4
      001E7A C0 03            [24]  590 	push	ar3
      001E7C C0 02            [24]  591 	push	ar2
      001E7E C0 01            [24]  592 	push	ar1
      001E80 C0 00            [24]  593 	push	ar0
      001E82 12 20 2C         [24]  594 	lcall	_charToCode
      001E85 E5 82            [12]  595 	mov	a,dpl
      001E87 D0 00            [24]  596 	pop	ar0
      001E89 D0 01            [24]  597 	pop	ar1
      001E8B D0 02            [24]  598 	pop	ar2
      001E8D D0 03            [24]  599 	pop	ar3
      001E8F D0 04            [24]  600 	pop	ar4
      001E91 F7               [12]  601 	mov	@r1,a
                                    602 ;	../UI_Manager/Display_Manager/display.c:61: higherNumberPresent = 1;
      001E92 7D 01            [12]  603 	mov	r5,#0x01
                                    604 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      001E94 C0 05            [24]  605 	push	ar5
      001E96 C0 01            [24]  606 	push	ar1
      001E98 C0 00            [24]  607 	push	ar0
      001E9A C0 02            [24]  608 	push	ar2
      001E9C C0 03            [24]  609 	push	ar3
      001E9E 90 00 64         [24]  610 	mov	dptr,#0x0064
      001EA1 12 35 98         [24]  611 	lcall	__mulint
      001EA4 AB 82            [24]  612 	mov	r3,dpl
      001EA6 AC 83            [24]  613 	mov	r4,dph
      001EA8 15 81            [12]  614 	dec	sp
      001EAA 15 81            [12]  615 	dec	sp
      001EAC D0 00            [24]  616 	pop	ar0
      001EAE D0 01            [24]  617 	pop	ar1
      001EB0 D0 05            [24]  618 	pop	ar5
      001EB2 D0 06            [24]  619 	pop	ar6
      001EB4 D0 07            [24]  620 	pop	ar7
      001EB6 EE               [12]  621 	mov	a,r6
      001EB7 C3               [12]  622 	clr	c
      001EB8 9B               [12]  623 	subb	a,r3
      001EB9 FE               [12]  624 	mov	r6,a
      001EBA EF               [12]  625 	mov	a,r7
      001EBB 9C               [12]  626 	subb	a,r4
      001EBC FF               [12]  627 	mov	r7,a
                                    628 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001EBD D0 04            [24]  629 	pop	ar4
                                    630 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      001EBF                        631 00107$:
                                    632 ;	../UI_Manager/Display_Manager/display.c:65: value = number/10;
      001EBF C0 07            [24]  633 	push	ar7
      001EC1 C0 06            [24]  634 	push	ar6
      001EC3 C0 05            [24]  635 	push	ar5
      001EC5 C0 04            [24]  636 	push	ar4
      001EC7 C0 01            [24]  637 	push	ar1
      001EC9 C0 00            [24]  638 	push	ar0
      001ECB 74 0A            [12]  639 	mov	a,#0x0a
      001ECD C0 E0            [24]  640 	push	acc
      001ECF E4               [12]  641 	clr	a
      001ED0 C0 E0            [24]  642 	push	acc
      001ED2 8E 82            [24]  643 	mov	dpl,r6
      001ED4 8F 83            [24]  644 	mov	dph,r7
      001ED6 12 35 67         [24]  645 	lcall	__divuint
      001ED9 AA 82            [24]  646 	mov	r2,dpl
      001EDB AB 83            [24]  647 	mov	r3,dph
      001EDD 15 81            [12]  648 	dec	sp
      001EDF 15 81            [12]  649 	dec	sp
      001EE1 D0 00            [24]  650 	pop	ar0
      001EE3 D0 01            [24]  651 	pop	ar1
      001EE5 D0 04            [24]  652 	pop	ar4
      001EE7 D0 05            [24]  653 	pop	ar5
      001EE9 D0 06            [24]  654 	pop	ar6
      001EEB D0 07            [24]  655 	pop	ar7
                                    656 ;	../UI_Manager/Display_Manager/display.c:66: if(higherNumberPresent || value){
      001EED ED               [12]  657 	mov	a,r5
      001EEE 70 04            [24]  658 	jnz	00108$
      001EF0 EA               [12]  659 	mov	a,r2
      001EF1 4B               [12]  660 	orl	a,r3
      001EF2 60 4A            [24]  661 	jz	00109$
      001EF4                        662 00108$:
                                    663 ;	../UI_Manager/Display_Manager/display.c:67: chars[1] = charToCode(value + 0x30);
      001EF4 8A 05            [24]  664 	mov	ar5,r2
      001EF6 74 30            [12]  665 	mov	a,#0x30
      001EF8 2D               [12]  666 	add	a,r5
      001EF9 F5 82            [12]  667 	mov	dpl,a
      001EFB C0 07            [24]  668 	push	ar7
      001EFD C0 06            [24]  669 	push	ar6
      001EFF C0 04            [24]  670 	push	ar4
      001F01 C0 03            [24]  671 	push	ar3
      001F03 C0 02            [24]  672 	push	ar2
      001F05 C0 01            [24]  673 	push	ar1
      001F07 C0 00            [24]  674 	push	ar0
      001F09 12 20 2C         [24]  675 	lcall	_charToCode
      001F0C E5 82            [12]  676 	mov	a,dpl
      001F0E D0 00            [24]  677 	pop	ar0
      001F10 D0 01            [24]  678 	pop	ar1
      001F12 D0 02            [24]  679 	pop	ar2
      001F14 D0 03            [24]  680 	pop	ar3
      001F16 F6               [12]  681 	mov	@r0,a
                                    682 ;	../UI_Manager/Display_Manager/display.c:68: number -= value*10;
      001F17 C0 01            [24]  683 	push	ar1
      001F19 C0 00            [24]  684 	push	ar0
      001F1B C0 02            [24]  685 	push	ar2
      001F1D C0 03            [24]  686 	push	ar3
      001F1F 90 00 0A         [24]  687 	mov	dptr,#0x000a
      001F22 12 35 98         [24]  688 	lcall	__mulint
      001F25 AB 82            [24]  689 	mov	r3,dpl
      001F27 AD 83            [24]  690 	mov	r5,dph
      001F29 15 81            [12]  691 	dec	sp
      001F2B 15 81            [12]  692 	dec	sp
      001F2D D0 00            [24]  693 	pop	ar0
      001F2F D0 01            [24]  694 	pop	ar1
      001F31 D0 04            [24]  695 	pop	ar4
      001F33 D0 06            [24]  696 	pop	ar6
      001F35 D0 07            [24]  697 	pop	ar7
      001F37 EE               [12]  698 	mov	a,r6
      001F38 C3               [12]  699 	clr	c
      001F39 9B               [12]  700 	subb	a,r3
      001F3A FE               [12]  701 	mov	r6,a
      001F3B EF               [12]  702 	mov	a,r7
      001F3C 9D               [12]  703 	subb	a,r5
      001F3D FF               [12]  704 	mov	r7,a
      001F3E                        705 00109$:
                                    706 ;	../UI_Manager/Display_Manager/display.c:71: chars[2] = charToCode(number + 0x30);
      001F3E 74 30            [12]  707 	mov	a,#0x30
      001F40 2E               [12]  708 	add	a,r6
      001F41 F5 82            [12]  709 	mov	dpl,a
      001F43 C0 04            [24]  710 	push	ar4
      001F45 C0 01            [24]  711 	push	ar1
      001F47 C0 00            [24]  712 	push	ar0
      001F49 12 20 2C         [24]  713 	lcall	_charToCode
      001F4C E5 82            [12]  714 	mov	a,dpl
      001F4E D0 00            [24]  715 	pop	ar0
      001F50 D0 01            [24]  716 	pop	ar1
      001F52 D0 04            [24]  717 	pop	ar4
      001F54 C0 00            [24]  718 	push	ar0
      001F56 A8 04            [24]  719 	mov	r0,ar4
      001F58 F6               [12]  720 	mov	@r0,a
      001F59 D0 00            [24]  721 	pop	ar0
                                    722 ;	../UI_Manager/Display_Manager/display.c:73: exe_command(RAM_WRITE | (chars[0] << 8));
      001F5B 87 07            [24]  723 	mov	ar7,@r1
      001F5D 8F 06            [24]  724 	mov	ar6,r7
      001F5F 7F 00            [12]  725 	mov	r7,#0x00
      001F61 74 80            [12]  726 	mov	a,#0x80
      001F63 4F               [12]  727 	orl	a,r7
      001F64 F5 82            [12]  728 	mov	dpl,a
      001F66 8E 83            [24]  729 	mov	dph,r6
      001F68 C0 04            [24]  730 	push	ar4
      001F6A C0 00            [24]  731 	push	ar0
      001F6C 12 1F E6         [24]  732 	lcall	_exe_command
      001F6F D0 00            [24]  733 	pop	ar0
                                    734 ;	../UI_Manager/Display_Manager/display.c:74: exe_command(RAM_WRITE | (chars[1] << 8));
      001F71 86 07            [24]  735 	mov	ar7,@r0
      001F73 8F 06            [24]  736 	mov	ar6,r7
      001F75 7F 00            [12]  737 	mov	r7,#0x00
      001F77 74 80            [12]  738 	mov	a,#0x80
      001F79 4F               [12]  739 	orl	a,r7
      001F7A F5 82            [12]  740 	mov	dpl,a
      001F7C 8E 83            [24]  741 	mov	dph,r6
      001F7E 12 1F E6         [24]  742 	lcall	_exe_command
      001F81 D0 04            [24]  743 	pop	ar4
                                    744 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001F83 A8 04            [24]  745 	mov	r0,ar4
      001F85 86 07            [24]  746 	mov	ar7,@r0
      001F87 8F 06            [24]  747 	mov	ar6,r7
      001F89 7F 00            [12]  748 	mov	r7,#0x00
      001F8B 74 80            [12]  749 	mov	a,#0x80
      001F8D 4F               [12]  750 	orl	a,r7
      001F8E F5 82            [12]  751 	mov	dpl,a
      001F90 8E 83            [24]  752 	mov	dph,r6
      001F92 12 1F E6         [24]  753 	lcall	_exe_command
                                    754 ;	../UI_Manager/Display_Manager/display.c:77: }
      001F95 85 1A 81         [24]  755 	mov	sp,_bp
      001F98 D0 1A            [24]  756 	pop	_bp
      001F9A 22               [24]  757 	ret
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
      001F9B                        769 _write_char:
      001F9B C0 1A            [24]  770 	push	_bp
      001F9D 85 81 1A         [24]  771 	mov	_bp,sp
      001FA0 AF 82            [24]  772 	mov	r7,dpl
                                    773 ;	../UI_Manager/Display_Manager/display.c:80: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001FA2 E5 1A            [12]  774 	mov	a,_bp
      001FA4 24 FC            [12]  775 	add	a,#0xfc
      001FA6 F8               [12]  776 	mov	r0,a
      001FA7 E6               [12]  777 	mov	a,@r0
      001FA8 60 0D            [24]  778 	jz	00103$
      001FAA E5 1A            [12]  779 	mov	a,_bp
      001FAC 24 FD            [12]  780 	add	a,#0xfd
      001FAE F8               [12]  781 	mov	r0,a
      001FAF 86 06            [24]  782 	mov	ar6,@r0
      001FB1 74 40            [12]  783 	mov	a,#0x40
      001FB3 2E               [12]  784 	add	a,r6
      001FB4 FE               [12]  785 	mov	r6,a
      001FB5 80 07            [24]  786 	sjmp	00104$
      001FB7                        787 00103$:
      001FB7 E5 1A            [12]  788 	mov	a,_bp
      001FB9 24 FD            [12]  789 	add	a,#0xfd
      001FBB F8               [12]  790 	mov	r0,a
      001FBC 86 06            [24]  791 	mov	ar6,@r0
      001FBE                        792 00104$:
      001FBE 8E 82            [24]  793 	mov	dpl,r6
      001FC0 C0 07            [24]  794 	push	ar7
      001FC2 12 22 35         [24]  795 	lcall	_flipByte
      001FC5 AD 82            [24]  796 	mov	r5,dpl
      001FC7 7E 00            [12]  797 	mov	r6,#0x00
      001FC9 8E 82            [24]  798 	mov	dpl,r6
      001FCB 74 01            [12]  799 	mov	a,#0x01
      001FCD 4D               [12]  800 	orl	a,r5
      001FCE F5 83            [12]  801 	mov	dph,a
      001FD0 12 1F E6         [24]  802 	lcall	_exe_command
      001FD3 D0 07            [24]  803 	pop	ar7
                                    804 ;	../UI_Manager/Display_Manager/display.c:81: exe_command(RAM_WRITE | (command << 8));
      001FD5 8F 06            [24]  805 	mov	ar6,r7
      001FD7 7F 00            [12]  806 	mov	r7,#0x00
      001FD9 74 80            [12]  807 	mov	a,#0x80
      001FDB 4F               [12]  808 	orl	a,r7
      001FDC F5 82            [12]  809 	mov	dpl,a
      001FDE 8E 83            [24]  810 	mov	dph,r6
      001FE0 12 1F E6         [24]  811 	lcall	_exe_command
                                    812 ;	../UI_Manager/Display_Manager/display.c:82: }
      001FE3 D0 1A            [24]  813 	pop	_bp
      001FE5 22               [24]  814 	ret
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
      001FE6                        825 _exe_command:
      001FE6 AE 82            [24]  826 	mov	r6,dpl
      001FE8 AF 83            [24]  827 	mov	r7,dph
                                    828 ;	../UI_Manager/Display_Manager/display.c:89: command |= (1 << EXE_BIT);
      001FEA 43 06 20         [24]  829 	orl	ar6,#0x20
                                    830 ;	../UI_Manager/Display_Manager/display.c:90: writeShiftReg(command); //execute
      001FED 8E 82            [24]  831 	mov	dpl,r6
      001FEF 8F 83            [24]  832 	mov	dph,r7
      001FF1 C0 07            [24]  833 	push	ar7
      001FF3 C0 06            [24]  834 	push	ar6
      001FF5 12 22 01         [24]  835 	lcall	_writeShiftReg
      001FF8 D0 06            [24]  836 	pop	ar6
      001FFA D0 07            [24]  837 	pop	ar7
                                    838 ;	../UI_Manager/Display_Manager/display.c:91: command &= ~(1 << EXE_BIT);
      001FFC 53 06 DF         [24]  839 	anl	ar6,#0xdf
                                    840 ;	../UI_Manager/Display_Manager/display.c:92: writeShiftReg(command); //end execution
      001FFF 8E 82            [24]  841 	mov	dpl,r6
      002001 8F 83            [24]  842 	mov	dph,r7
      002003 C0 07            [24]  843 	push	ar7
      002005 C0 06            [24]  844 	push	ar6
      002007 12 22 01         [24]  845 	lcall	_writeShiftReg
      00200A D0 06            [24]  846 	pop	ar6
      00200C D0 07            [24]  847 	pop	ar7
                                    848 ;	../UI_Manager/Display_Manager/display.c:95: while(delay-- && command == CLEAR_DISPLAY){;;}
      00200E E4               [12]  849 	clr	a
      00200F BE 00 04         [24]  850 	cjne	r6,#0x00,00118$
      002012 BF 80 01         [24]  851 	cjne	r7,#0x80,00118$
      002015 04               [12]  852 	inc	a
      002016                        853 00118$:
      002016 FF               [12]  854 	mov	r7,a
      002017 7D 00            [12]  855 	mov	r5,#0x00
      002019 7E 03            [12]  856 	mov	r6,#0x03
      00201B                        857 00102$:
      00201B 8D 03            [24]  858 	mov	ar3,r5
      00201D 8E 04            [24]  859 	mov	ar4,r6
      00201F 1D               [12]  860 	dec	r5
      002020 BD FF 01         [24]  861 	cjne	r5,#0xff,00120$
      002023 1E               [12]  862 	dec	r6
      002024                        863 00120$:
      002024 EB               [12]  864 	mov	a,r3
      002025 4C               [12]  865 	orl	a,r4
      002026 60 03            [24]  866 	jz	00105$
      002028 EF               [12]  867 	mov	a,r7
      002029 70 F0            [24]  868 	jnz	00102$
      00202B                        869 00105$:
                                    870 ;	../UI_Manager/Display_Manager/display.c:96: }
      00202B 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'charToCode'
                                    874 ;------------------------------------------------------------
                                    875 ;c                         Allocated to registers r7 
                                    876 ;------------------------------------------------------------
                                    877 ;	../UI_Manager/Display_Manager/display.c:100: uint8_t charToCode(char c){
                                    878 ;	-----------------------------------------
                                    879 ;	 function charToCode
                                    880 ;	-----------------------------------------
      00202C                        881 _charToCode:
      00202C AF 82            [24]  882 	mov	r7,dpl
                                    883 ;	../UI_Manager/Display_Manager/display.c:101: switch(c){
      00202E BF 26 00         [24]  884 	cjne	r7,#0x26,00177$
      002031                        885 00177$:
      002031 50 03            [24]  886 	jnc	00178$
      002033 02 21 FD         [24]  887 	ljmp	00166$
      002036                        888 00178$:
      002036 EF               [12]  889 	mov	a,r7
      002037 24 85            [12]  890 	add	a,#0xff - 0x7a
      002039 50 03            [24]  891 	jnc	00179$
      00203B 02 21 FD         [24]  892 	ljmp	00166$
      00203E                        893 00179$:
      00203E EF               [12]  894 	mov	a,r7
      00203F 24 DA            [12]  895 	add	a,#0xda
      002041 FF               [12]  896 	mov	r7,a
      002042 24 0A            [12]  897 	add	a,#(00180$-3-.)
      002044 83               [24]  898 	movc	a,@a+pc
      002045 F5 82            [12]  899 	mov	dpl,a
      002047 EF               [12]  900 	mov	a,r7
      002048 24 59            [12]  901 	add	a,#(00181$-3-.)
      00204A 83               [24]  902 	movc	a,@a+pc
      00204B F5 83            [12]  903 	mov	dph,a
      00204D E4               [12]  904 	clr	a
      00204E 73               [24]  905 	jmp	@a+dptr
      00204F                        906 00180$:
      00204F F5                     907 	.db	00164$
      002050 FD                     908 	.db	00166$
      002051 FD                     909 	.db	00166$
      002052 FD                     910 	.db	00166$
      002053 FD                     911 	.db	00166$
      002054 F1                     912 	.db	00163$
      002055 FD                     913 	.db	00166$
      002056 FD                     914 	.db	00166$
      002057 FD                     915 	.db	00166$
      002058 FD                     916 	.db	00166$
      002059 C9                     917 	.db	00153$
      00205A CD                     918 	.db	00154$
      00205B D1                     919 	.db	00155$
      00205C D5                     920 	.db	00156$
      00205D D9                     921 	.db	00157$
      00205E DD                     922 	.db	00158$
      00205F E1                     923 	.db	00159$
      002060 E5                     924 	.db	00160$
      002061 E9                     925 	.db	00161$
      002062 ED                     926 	.db	00162$
      002063 FD                     927 	.db	00166$
      002064 F9                     928 	.db	00165$
      002065 FD                     929 	.db	00166$
      002066 FD                     930 	.db	00166$
      002067 FD                     931 	.db	00166$
      002068 FD                     932 	.db	00166$
      002069 FD                     933 	.db	00166$
      00206A F9                     934 	.db	00101$
      00206B 01                     935 	.db	00103$
      00206C 09                     936 	.db	00105$
      00206D 11                     937 	.db	00107$
      00206E 19                     938 	.db	00109$
      00206F 21                     939 	.db	00111$
      002070 29                     940 	.db	00113$
      002071 31                     941 	.db	00115$
      002072 39                     942 	.db	00117$
      002073 41                     943 	.db	00119$
      002074 49                     944 	.db	00121$
      002075 51                     945 	.db	00123$
      002076 59                     946 	.db	00125$
      002077 61                     947 	.db	00127$
      002078 69                     948 	.db	00129$
      002079 71                     949 	.db	00131$
      00207A 79                     950 	.db	00133$
      00207B 81                     951 	.db	00135$
      00207C 89                     952 	.db	00137$
      00207D 91                     953 	.db	00139$
      00207E 99                     954 	.db	00141$
      00207F A1                     955 	.db	00143$
      002080 A9                     956 	.db	00145$
      002081 B1                     957 	.db	00147$
      002082 B9                     958 	.db	00149$
      002083 C1                     959 	.db	00151$
      002084 FD                     960 	.db	00166$
      002085 FD                     961 	.db	00166$
      002086 FD                     962 	.db	00166$
      002087 FD                     963 	.db	00166$
      002088 FD                     964 	.db	00166$
      002089 FD                     965 	.db	00166$
      00208A FD                     966 	.db	00102$
      00208B 05                     967 	.db	00104$
      00208C 0D                     968 	.db	00106$
      00208D 15                     969 	.db	00108$
      00208E 1D                     970 	.db	00110$
      00208F 25                     971 	.db	00112$
      002090 2D                     972 	.db	00114$
      002091 35                     973 	.db	00116$
      002092 3D                     974 	.db	00118$
      002093 45                     975 	.db	00120$
      002094 4D                     976 	.db	00122$
      002095 55                     977 	.db	00124$
      002096 5D                     978 	.db	00126$
      002097 65                     979 	.db	00128$
      002098 6D                     980 	.db	00130$
      002099 75                     981 	.db	00132$
      00209A 7D                     982 	.db	00134$
      00209B 85                     983 	.db	00136$
      00209C 8D                     984 	.db	00138$
      00209D 95                     985 	.db	00140$
      00209E 9D                     986 	.db	00142$
      00209F A5                     987 	.db	00144$
      0020A0 AD                     988 	.db	00146$
      0020A1 B5                     989 	.db	00148$
      0020A2 BD                     990 	.db	00150$
      0020A3 C5                     991 	.db	00152$
      0020A4                        992 00181$:
      0020A4 21                     993 	.db	00164$>>8
      0020A5 21                     994 	.db	00166$>>8
      0020A6 21                     995 	.db	00166$>>8
      0020A7 21                     996 	.db	00166$>>8
      0020A8 21                     997 	.db	00166$>>8
      0020A9 21                     998 	.db	00163$>>8
      0020AA 21                     999 	.db	00166$>>8
      0020AB 21                    1000 	.db	00166$>>8
      0020AC 21                    1001 	.db	00166$>>8
      0020AD 21                    1002 	.db	00166$>>8
      0020AE 21                    1003 	.db	00153$>>8
      0020AF 21                    1004 	.db	00154$>>8
      0020B0 21                    1005 	.db	00155$>>8
      0020B1 21                    1006 	.db	00156$>>8
      0020B2 21                    1007 	.db	00157$>>8
      0020B3 21                    1008 	.db	00158$>>8
      0020B4 21                    1009 	.db	00159$>>8
      0020B5 21                    1010 	.db	00160$>>8
      0020B6 21                    1011 	.db	00161$>>8
      0020B7 21                    1012 	.db	00162$>>8
      0020B8 21                    1013 	.db	00166$>>8
      0020B9 21                    1014 	.db	00165$>>8
      0020BA 21                    1015 	.db	00166$>>8
      0020BB 21                    1016 	.db	00166$>>8
      0020BC 21                    1017 	.db	00166$>>8
      0020BD 21                    1018 	.db	00166$>>8
      0020BE 21                    1019 	.db	00166$>>8
      0020BF 20                    1020 	.db	00101$>>8
      0020C0 21                    1021 	.db	00103$>>8
      0020C1 21                    1022 	.db	00105$>>8
      0020C2 21                    1023 	.db	00107$>>8
      0020C3 21                    1024 	.db	00109$>>8
      0020C4 21                    1025 	.db	00111$>>8
      0020C5 21                    1026 	.db	00113$>>8
      0020C6 21                    1027 	.db	00115$>>8
      0020C7 21                    1028 	.db	00117$>>8
      0020C8 21                    1029 	.db	00119$>>8
      0020C9 21                    1030 	.db	00121$>>8
      0020CA 21                    1031 	.db	00123$>>8
      0020CB 21                    1032 	.db	00125$>>8
      0020CC 21                    1033 	.db	00127$>>8
      0020CD 21                    1034 	.db	00129$>>8
      0020CE 21                    1035 	.db	00131$>>8
      0020CF 21                    1036 	.db	00133$>>8
      0020D0 21                    1037 	.db	00135$>>8
      0020D1 21                    1038 	.db	00137$>>8
      0020D2 21                    1039 	.db	00139$>>8
      0020D3 21                    1040 	.db	00141$>>8
      0020D4 21                    1041 	.db	00143$>>8
      0020D5 21                    1042 	.db	00145$>>8
      0020D6 21                    1043 	.db	00147$>>8
      0020D7 21                    1044 	.db	00149$>>8
      0020D8 21                    1045 	.db	00151$>>8
      0020D9 21                    1046 	.db	00166$>>8
      0020DA 21                    1047 	.db	00166$>>8
      0020DB 21                    1048 	.db	00166$>>8
      0020DC 21                    1049 	.db	00166$>>8
      0020DD 21                    1050 	.db	00166$>>8
      0020DE 21                    1051 	.db	00166$>>8
      0020DF 20                    1052 	.db	00102$>>8
      0020E0 21                    1053 	.db	00104$>>8
      0020E1 21                    1054 	.db	00106$>>8
      0020E2 21                    1055 	.db	00108$>>8
      0020E3 21                    1056 	.db	00110$>>8
      0020E4 21                    1057 	.db	00112$>>8
      0020E5 21                    1058 	.db	00114$>>8
      0020E6 21                    1059 	.db	00116$>>8
      0020E7 21                    1060 	.db	00118$>>8
      0020E8 21                    1061 	.db	00120$>>8
      0020E9 21                    1062 	.db	00122$>>8
      0020EA 21                    1063 	.db	00124$>>8
      0020EB 21                    1064 	.db	00126$>>8
      0020EC 21                    1065 	.db	00128$>>8
      0020ED 21                    1066 	.db	00130$>>8
      0020EE 21                    1067 	.db	00132$>>8
      0020EF 21                    1068 	.db	00134$>>8
      0020F0 21                    1069 	.db	00136$>>8
      0020F1 21                    1070 	.db	00138$>>8
      0020F2 21                    1071 	.db	00140$>>8
      0020F3 21                    1072 	.db	00142$>>8
      0020F4 21                    1073 	.db	00144$>>8
      0020F5 21                    1074 	.db	00146$>>8
      0020F6 21                    1075 	.db	00148$>>8
      0020F7 21                    1076 	.db	00150$>>8
      0020F8 21                    1077 	.db	00152$>>8
                                   1078 ;	../UI_Manager/Display_Manager/display.c:102: case 'A':
      0020F9                       1079 00101$:
                                   1080 ;	../UI_Manager/Display_Manager/display.c:103: return CHAR_A;
      0020F9 75 82 82         [24] 1081 	mov	dpl,#0x82
      0020FC 22               [24] 1082 	ret
                                   1083 ;	../UI_Manager/Display_Manager/display.c:104: case 'a':
      0020FD                       1084 00102$:
                                   1085 ;	../UI_Manager/Display_Manager/display.c:105: return CHAR_a;
      0020FD 75 82 86         [24] 1086 	mov	dpl,#0x86
      002100 22               [24] 1087 	ret
                                   1088 ;	../UI_Manager/Display_Manager/display.c:106: case 'B':
      002101                       1089 00103$:
                                   1090 ;	../UI_Manager/Display_Manager/display.c:107: return CHAR_B;
      002101 75 82 42         [24] 1091 	mov	dpl,#0x42
      002104 22               [24] 1092 	ret
                                   1093 ;	../UI_Manager/Display_Manager/display.c:108: case 'b':
      002105                       1094 00104$:
                                   1095 ;	../UI_Manager/Display_Manager/display.c:109: return CHAR_b;
      002105 75 82 46         [24] 1096 	mov	dpl,#0x46
      002108 22               [24] 1097 	ret
                                   1098 ;	../UI_Manager/Display_Manager/display.c:110: case 'C':
      002109                       1099 00105$:
                                   1100 ;	../UI_Manager/Display_Manager/display.c:111: return CHAR_C;
      002109 75 82 C2         [24] 1101 	mov	dpl,#0xc2
      00210C 22               [24] 1102 	ret
                                   1103 ;	../UI_Manager/Display_Manager/display.c:112: case 'c':
      00210D                       1104 00106$:
                                   1105 ;	../UI_Manager/Display_Manager/display.c:113: return CHAR_c;
      00210D 75 82 C6         [24] 1106 	mov	dpl,#0xc6
      002110 22               [24] 1107 	ret
                                   1108 ;	../UI_Manager/Display_Manager/display.c:114: case 'D':
      002111                       1109 00107$:
                                   1110 ;	../UI_Manager/Display_Manager/display.c:115: return CHAR_D;
      002111 75 82 22         [24] 1111 	mov	dpl,#0x22
      002114 22               [24] 1112 	ret
                                   1113 ;	../UI_Manager/Display_Manager/display.c:116: case 'd':
      002115                       1114 00108$:
                                   1115 ;	../UI_Manager/Display_Manager/display.c:117: return CHAR_d;
      002115 75 82 26         [24] 1116 	mov	dpl,#0x26
      002118 22               [24] 1117 	ret
                                   1118 ;	../UI_Manager/Display_Manager/display.c:118: case 'E':
      002119                       1119 00109$:
                                   1120 ;	../UI_Manager/Display_Manager/display.c:119: return CHAR_E;
      002119 75 82 A2         [24] 1121 	mov	dpl,#0xa2
      00211C 22               [24] 1122 	ret
                                   1123 ;	../UI_Manager/Display_Manager/display.c:120: case 'e':
      00211D                       1124 00110$:
                                   1125 ;	../UI_Manager/Display_Manager/display.c:121: return CHAR_e;
      00211D 75 82 A6         [24] 1126 	mov	dpl,#0xa6
      002120 22               [24] 1127 	ret
                                   1128 ;	../UI_Manager/Display_Manager/display.c:122: case 'F':
      002121                       1129 00111$:
                                   1130 ;	../UI_Manager/Display_Manager/display.c:123: return CHAR_F;
      002121 75 82 62         [24] 1131 	mov	dpl,#0x62
      002124 22               [24] 1132 	ret
                                   1133 ;	../UI_Manager/Display_Manager/display.c:124: case 'f':
      002125                       1134 00112$:
                                   1135 ;	../UI_Manager/Display_Manager/display.c:125: return CHAR_f;
      002125 75 82 66         [24] 1136 	mov	dpl,#0x66
      002128 22               [24] 1137 	ret
                                   1138 ;	../UI_Manager/Display_Manager/display.c:126: case 'G':
      002129                       1139 00113$:
                                   1140 ;	../UI_Manager/Display_Manager/display.c:127: return CHAR_G;
      002129 75 82 E2         [24] 1141 	mov	dpl,#0xe2
      00212C 22               [24] 1142 	ret
                                   1143 ;	../UI_Manager/Display_Manager/display.c:128: case 'g':
      00212D                       1144 00114$:
                                   1145 ;	../UI_Manager/Display_Manager/display.c:129: return CHAR_g;
      00212D 75 82 E6         [24] 1146 	mov	dpl,#0xe6
      002130 22               [24] 1147 	ret
                                   1148 ;	../UI_Manager/Display_Manager/display.c:130: case 'H':
      002131                       1149 00115$:
                                   1150 ;	../UI_Manager/Display_Manager/display.c:131: return CHAR_H;
      002131 75 82 12         [24] 1151 	mov	dpl,#0x12
      002134 22               [24] 1152 	ret
                                   1153 ;	../UI_Manager/Display_Manager/display.c:132: case 'h':
      002135                       1154 00116$:
                                   1155 ;	../UI_Manager/Display_Manager/display.c:133: return CHAR_h;
      002135 75 82 16         [24] 1156 	mov	dpl,#0x16
      002138 22               [24] 1157 	ret
                                   1158 ;	../UI_Manager/Display_Manager/display.c:134: case 'I':
      002139                       1159 00117$:
                                   1160 ;	../UI_Manager/Display_Manager/display.c:135: return CHAR_I;
      002139 75 82 92         [24] 1161 	mov	dpl,#0x92
      00213C 22               [24] 1162 	ret
                                   1163 ;	../UI_Manager/Display_Manager/display.c:136: case 'i':
      00213D                       1164 00118$:
                                   1165 ;	../UI_Manager/Display_Manager/display.c:137: return CHAR_i;
      00213D 75 82 96         [24] 1166 	mov	dpl,#0x96
      002140 22               [24] 1167 	ret
                                   1168 ;	../UI_Manager/Display_Manager/display.c:138: case 'J':
      002141                       1169 00119$:
                                   1170 ;	../UI_Manager/Display_Manager/display.c:139: return CHAR_J;
      002141 75 82 52         [24] 1171 	mov	dpl,#0x52
      002144 22               [24] 1172 	ret
                                   1173 ;	../UI_Manager/Display_Manager/display.c:140: case 'j':
      002145                       1174 00120$:
                                   1175 ;	../UI_Manager/Display_Manager/display.c:141: return CHAR_j;
      002145 75 82 56         [24] 1176 	mov	dpl,#0x56
      002148 22               [24] 1177 	ret
                                   1178 ;	../UI_Manager/Display_Manager/display.c:142: case 'K':
      002149                       1179 00121$:
                                   1180 ;	../UI_Manager/Display_Manager/display.c:143: return CHAR_K;
      002149 75 82 D2         [24] 1181 	mov	dpl,#0xd2
      00214C 22               [24] 1182 	ret
                                   1183 ;	../UI_Manager/Display_Manager/display.c:144: case 'k':
      00214D                       1184 00122$:
                                   1185 ;	../UI_Manager/Display_Manager/display.c:145: return CHAR_k;
      00214D 75 82 D6         [24] 1186 	mov	dpl,#0xd6
      002150 22               [24] 1187 	ret
                                   1188 ;	../UI_Manager/Display_Manager/display.c:146: case 'L':
      002151                       1189 00123$:
                                   1190 ;	../UI_Manager/Display_Manager/display.c:147: return CHAR_L;
      002151 75 82 32         [24] 1191 	mov	dpl,#0x32
      002154 22               [24] 1192 	ret
                                   1193 ;	../UI_Manager/Display_Manager/display.c:148: case 'l':
      002155                       1194 00124$:
                                   1195 ;	../UI_Manager/Display_Manager/display.c:149: return CHAR_l;
      002155 75 82 36         [24] 1196 	mov	dpl,#0x36
      002158 22               [24] 1197 	ret
                                   1198 ;	../UI_Manager/Display_Manager/display.c:150: case 'M':
      002159                       1199 00125$:
                                   1200 ;	../UI_Manager/Display_Manager/display.c:151: return CHAR_M;
      002159 75 82 B2         [24] 1201 	mov	dpl,#0xb2
      00215C 22               [24] 1202 	ret
                                   1203 ;	../UI_Manager/Display_Manager/display.c:152: case 'm':
      00215D                       1204 00126$:
                                   1205 ;	../UI_Manager/Display_Manager/display.c:153: return CHAR_m;
      00215D 75 82 B6         [24] 1206 	mov	dpl,#0xb6
      002160 22               [24] 1207 	ret
                                   1208 ;	../UI_Manager/Display_Manager/display.c:154: case 'N':
      002161                       1209 00127$:
                                   1210 ;	../UI_Manager/Display_Manager/display.c:155: return CHAR_N;
      002161 75 82 72         [24] 1211 	mov	dpl,#0x72
      002164 22               [24] 1212 	ret
                                   1213 ;	../UI_Manager/Display_Manager/display.c:156: case 'n':
      002165                       1214 00128$:
                                   1215 ;	../UI_Manager/Display_Manager/display.c:157: return CHAR_n;
      002165 75 82 76         [24] 1216 	mov	dpl,#0x76
      002168 22               [24] 1217 	ret
                                   1218 ;	../UI_Manager/Display_Manager/display.c:158: case 'O':
      002169                       1219 00129$:
                                   1220 ;	../UI_Manager/Display_Manager/display.c:159: return CHAR_O;
      002169 75 82 F2         [24] 1221 	mov	dpl,#0xf2
      00216C 22               [24] 1222 	ret
                                   1223 ;	../UI_Manager/Display_Manager/display.c:160: case 'o':
      00216D                       1224 00130$:
                                   1225 ;	../UI_Manager/Display_Manager/display.c:161: return CHAR_o;
      00216D 75 82 F6         [24] 1226 	mov	dpl,#0xf6
      002170 22               [24] 1227 	ret
                                   1228 ;	../UI_Manager/Display_Manager/display.c:162: case 'P':
      002171                       1229 00131$:
                                   1230 ;	../UI_Manager/Display_Manager/display.c:163: return CHAR_P;
      002171 75 82 0A         [24] 1231 	mov	dpl,#0x0a
      002174 22               [24] 1232 	ret
                                   1233 ;	../UI_Manager/Display_Manager/display.c:164: case 'p':
      002175                       1234 00132$:
                                   1235 ;	../UI_Manager/Display_Manager/display.c:165: return CHAR_p;
      002175 75 82 0E         [24] 1236 	mov	dpl,#0x0e
      002178 22               [24] 1237 	ret
                                   1238 ;	../UI_Manager/Display_Manager/display.c:166: case 'Q':
      002179                       1239 00133$:
                                   1240 ;	../UI_Manager/Display_Manager/display.c:167: return CHAR_Q;
      002179 75 82 8A         [24] 1241 	mov	dpl,#0x8a
      00217C 22               [24] 1242 	ret
                                   1243 ;	../UI_Manager/Display_Manager/display.c:168: case 'q':
      00217D                       1244 00134$:
                                   1245 ;	../UI_Manager/Display_Manager/display.c:169: return CHAR_q;
      00217D 75 82 8E         [24] 1246 	mov	dpl,#0x8e
      002180 22               [24] 1247 	ret
                                   1248 ;	../UI_Manager/Display_Manager/display.c:170: case 'R':
      002181                       1249 00135$:
                                   1250 ;	../UI_Manager/Display_Manager/display.c:171: return CHAR_R;
      002181 75 82 4A         [24] 1251 	mov	dpl,#0x4a
      002184 22               [24] 1252 	ret
                                   1253 ;	../UI_Manager/Display_Manager/display.c:172: case 'r':
      002185                       1254 00136$:
                                   1255 ;	../UI_Manager/Display_Manager/display.c:173: return CHAR_r;
      002185 75 82 4E         [24] 1256 	mov	dpl,#0x4e
      002188 22               [24] 1257 	ret
                                   1258 ;	../UI_Manager/Display_Manager/display.c:174: case 'S':
      002189                       1259 00137$:
                                   1260 ;	../UI_Manager/Display_Manager/display.c:175: return CHAR_S;
      002189 75 82 CA         [24] 1261 	mov	dpl,#0xca
      00218C 22               [24] 1262 	ret
                                   1263 ;	../UI_Manager/Display_Manager/display.c:176: case 's':
      00218D                       1264 00138$:
                                   1265 ;	../UI_Manager/Display_Manager/display.c:177: return CHAR_s;
      00218D 75 82 CE         [24] 1266 	mov	dpl,#0xce
      002190 22               [24] 1267 	ret
                                   1268 ;	../UI_Manager/Display_Manager/display.c:178: case 'T':
      002191                       1269 00139$:
                                   1270 ;	../UI_Manager/Display_Manager/display.c:179: return CHAR_T;
      002191 75 82 2A         [24] 1271 	mov	dpl,#0x2a
      002194 22               [24] 1272 	ret
                                   1273 ;	../UI_Manager/Display_Manager/display.c:180: case 't':
      002195                       1274 00140$:
                                   1275 ;	../UI_Manager/Display_Manager/display.c:181: return CHAR_t;
      002195 75 82 2E         [24] 1276 	mov	dpl,#0x2e
      002198 22               [24] 1277 	ret
                                   1278 ;	../UI_Manager/Display_Manager/display.c:182: case 'U':
      002199                       1279 00141$:
                                   1280 ;	../UI_Manager/Display_Manager/display.c:183: return CHAR_U;
      002199 75 82 AA         [24] 1281 	mov	dpl,#0xaa
      00219C 22               [24] 1282 	ret
                                   1283 ;	../UI_Manager/Display_Manager/display.c:184: case 'u':
      00219D                       1284 00142$:
                                   1285 ;	../UI_Manager/Display_Manager/display.c:185: return CHAR_u;
      00219D 75 82 AE         [24] 1286 	mov	dpl,#0xae
      0021A0 22               [24] 1287 	ret
                                   1288 ;	../UI_Manager/Display_Manager/display.c:186: case 'V':
      0021A1                       1289 00143$:
                                   1290 ;	../UI_Manager/Display_Manager/display.c:187: return CHAR_V;
      0021A1 75 82 6A         [24] 1291 	mov	dpl,#0x6a
      0021A4 22               [24] 1292 	ret
                                   1293 ;	../UI_Manager/Display_Manager/display.c:188: case 'v':
      0021A5                       1294 00144$:
                                   1295 ;	../UI_Manager/Display_Manager/display.c:189: return CHAR_v;
      0021A5 75 82 6E         [24] 1296 	mov	dpl,#0x6e
      0021A8 22               [24] 1297 	ret
                                   1298 ;	../UI_Manager/Display_Manager/display.c:190: case 'W':
      0021A9                       1299 00145$:
                                   1300 ;	../UI_Manager/Display_Manager/display.c:191: return CHAR_W;
      0021A9 75 82 EA         [24] 1301 	mov	dpl,#0xea
                                   1302 ;	../UI_Manager/Display_Manager/display.c:192: case 'w':
      0021AC 22               [24] 1303 	ret
      0021AD                       1304 00146$:
                                   1305 ;	../UI_Manager/Display_Manager/display.c:193: return CHAR_w;
      0021AD 75 82 EE         [24] 1306 	mov	dpl,#0xee
                                   1307 ;	../UI_Manager/Display_Manager/display.c:194: case 'X':
      0021B0 22               [24] 1308 	ret
      0021B1                       1309 00147$:
                                   1310 ;	../UI_Manager/Display_Manager/display.c:195: return CHAR_X;
      0021B1 75 82 1A         [24] 1311 	mov	dpl,#0x1a
                                   1312 ;	../UI_Manager/Display_Manager/display.c:196: case 'x':
      0021B4 22               [24] 1313 	ret
      0021B5                       1314 00148$:
                                   1315 ;	../UI_Manager/Display_Manager/display.c:197: return CHAR_x;
      0021B5 75 82 1E         [24] 1316 	mov	dpl,#0x1e
                                   1317 ;	../UI_Manager/Display_Manager/display.c:198: case 'Y':
      0021B8 22               [24] 1318 	ret
      0021B9                       1319 00149$:
                                   1320 ;	../UI_Manager/Display_Manager/display.c:199: return CHAR_Y;
      0021B9 75 82 9A         [24] 1321 	mov	dpl,#0x9a
                                   1322 ;	../UI_Manager/Display_Manager/display.c:200: case 'y':
      0021BC 22               [24] 1323 	ret
      0021BD                       1324 00150$:
                                   1325 ;	../UI_Manager/Display_Manager/display.c:201: return CHAR_y;
      0021BD 75 82 9E         [24] 1326 	mov	dpl,#0x9e
                                   1327 ;	../UI_Manager/Display_Manager/display.c:202: case 'Z':
      0021C0 22               [24] 1328 	ret
      0021C1                       1329 00151$:
                                   1330 ;	../UI_Manager/Display_Manager/display.c:203: return CHAR_Z;
      0021C1 75 82 5A         [24] 1331 	mov	dpl,#0x5a
                                   1332 ;	../UI_Manager/Display_Manager/display.c:204: case 'z':
      0021C4 22               [24] 1333 	ret
      0021C5                       1334 00152$:
                                   1335 ;	../UI_Manager/Display_Manager/display.c:205: return CHAR_z;
      0021C5 75 82 5E         [24] 1336 	mov	dpl,#0x5e
                                   1337 ;	../UI_Manager/Display_Manager/display.c:206: case '0':
      0021C8 22               [24] 1338 	ret
      0021C9                       1339 00153$:
                                   1340 ;	../UI_Manager/Display_Manager/display.c:207: return CHAR_0;
      0021C9 75 82 0C         [24] 1341 	mov	dpl,#0x0c
                                   1342 ;	../UI_Manager/Display_Manager/display.c:208: case '1':
      0021CC 22               [24] 1343 	ret
      0021CD                       1344 00154$:
                                   1345 ;	../UI_Manager/Display_Manager/display.c:209: return CHAR_1;
      0021CD 75 82 8C         [24] 1346 	mov	dpl,#0x8c
                                   1347 ;	../UI_Manager/Display_Manager/display.c:210: case '2':
      0021D0 22               [24] 1348 	ret
      0021D1                       1349 00155$:
                                   1350 ;	../UI_Manager/Display_Manager/display.c:211: return CHAR_2;
      0021D1 75 82 4C         [24] 1351 	mov	dpl,#0x4c
                                   1352 ;	../UI_Manager/Display_Manager/display.c:212: case '3':
      0021D4 22               [24] 1353 	ret
      0021D5                       1354 00156$:
                                   1355 ;	../UI_Manager/Display_Manager/display.c:213: return CHAR_3;
      0021D5 75 82 CC         [24] 1356 	mov	dpl,#0xcc
                                   1357 ;	../UI_Manager/Display_Manager/display.c:214: case '4':
      0021D8 22               [24] 1358 	ret
      0021D9                       1359 00157$:
                                   1360 ;	../UI_Manager/Display_Manager/display.c:215: return CHAR_4;
      0021D9 75 82 2C         [24] 1361 	mov	dpl,#0x2c
                                   1362 ;	../UI_Manager/Display_Manager/display.c:216: case '5':
      0021DC 22               [24] 1363 	ret
      0021DD                       1364 00158$:
                                   1365 ;	../UI_Manager/Display_Manager/display.c:217: return CHAR_5;
      0021DD 75 82 AC         [24] 1366 	mov	dpl,#0xac
                                   1367 ;	../UI_Manager/Display_Manager/display.c:218: case '6':
      0021E0 22               [24] 1368 	ret
      0021E1                       1369 00159$:
                                   1370 ;	../UI_Manager/Display_Manager/display.c:219: return CHAR_6;
      0021E1 75 82 6C         [24] 1371 	mov	dpl,#0x6c
                                   1372 ;	../UI_Manager/Display_Manager/display.c:220: case '7':
      0021E4 22               [24] 1373 	ret
      0021E5                       1374 00160$:
                                   1375 ;	../UI_Manager/Display_Manager/display.c:221: return CHAR_7;
      0021E5 75 82 EC         [24] 1376 	mov	dpl,#0xec
                                   1377 ;	../UI_Manager/Display_Manager/display.c:222: case '8':
      0021E8 22               [24] 1378 	ret
      0021E9                       1379 00161$:
                                   1380 ;	../UI_Manager/Display_Manager/display.c:223: return CHAR_8;
      0021E9 75 82 1C         [24] 1381 	mov	dpl,#0x1c
                                   1382 ;	../UI_Manager/Display_Manager/display.c:224: case '9':
      0021EC 22               [24] 1383 	ret
      0021ED                       1384 00162$:
                                   1385 ;	../UI_Manager/Display_Manager/display.c:225: return CHAR_9;
      0021ED 75 82 9C         [24] 1386 	mov	dpl,#0x9c
                                   1387 ;	../UI_Manager/Display_Manager/display.c:226: case '+':
      0021F0 22               [24] 1388 	ret
      0021F1                       1389 00163$:
                                   1390 ;	../UI_Manager/Display_Manager/display.c:227: return CHAR_PLUS;
      0021F1 75 82 D4         [24] 1391 	mov	dpl,#0xd4
                                   1392 ;	../UI_Manager/Display_Manager/display.c:228: case '&':
      0021F4 22               [24] 1393 	ret
      0021F5                       1394 00164$:
                                   1395 ;	../UI_Manager/Display_Manager/display.c:229: return CHAR_AND;
      0021F5 75 82 64         [24] 1396 	mov	dpl,#0x64
                                   1397 ;	../UI_Manager/Display_Manager/display.c:230: case ';':
      0021F8 22               [24] 1398 	ret
      0021F9                       1399 00165$:
                                   1400 ;	../UI_Manager/Display_Manager/display.c:231: return CHAR_STAR_8;
      0021F9 75 82 E0         [24] 1401 	mov	dpl,#0xe0
                                   1402 ;	../UI_Manager/Display_Manager/display.c:232: }
      0021FC 22               [24] 1403 	ret
      0021FD                       1404 00166$:
                                   1405 ;	../UI_Manager/Display_Manager/display.c:234: return CHAR_NULL;
      0021FD 75 82 04         [24] 1406 	mov	dpl,#0x04
                                   1407 ;	../UI_Manager/Display_Manager/display.c:235: }
      002200 22               [24] 1408 	ret
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
      002201                       1419 _writeShiftReg:
      002201 AE 82            [24] 1420 	mov	r6,dpl
      002203 AF 83            [24] 1421 	mov	r7,dph
                                   1422 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      002205 7D 04            [12] 1423 	mov	r5,#0x04
      002207                       1424 00102$:
                                   1425 ;	../UI_Manager/Display_Manager/display.c:244: SER = value & (1 << i);
      002207 8D F0            [24] 1426 	mov	b,r5
      002209 05 F0            [12] 1427 	inc	b
      00220B 7B 01            [12] 1428 	mov	r3,#0x01
      00220D 7C 00            [12] 1429 	mov	r4,#0x00
      00220F 80 06            [24] 1430 	sjmp	00116$
      002211                       1431 00115$:
      002211 EB               [12] 1432 	mov	a,r3
      002212 2B               [12] 1433 	add	a,r3
      002213 FB               [12] 1434 	mov	r3,a
      002214 EC               [12] 1435 	mov	a,r4
      002215 33               [12] 1436 	rlc	a
      002216 FC               [12] 1437 	mov	r4,a
      002217                       1438 00116$:
      002217 D5 F0 F7         [24] 1439 	djnz	b,00115$
      00221A EE               [12] 1440 	mov	a,r6
      00221B 52 03            [12] 1441 	anl	ar3,a
      00221D EF               [12] 1442 	mov	a,r7
      00221E 52 04            [12] 1443 	anl	ar4,a
                                   1444 ;	assignBit
      002220 EB               [12] 1445 	mov	a,r3
      002221 4C               [12] 1446 	orl	a,r4
      002222 24 FF            [12] 1447 	add	a,#0xff
      002224 92 95            [24] 1448 	mov	_SER,c
                                   1449 ;	../UI_Manager/Display_Manager/display.c:247: SCK = 1;
                                   1450 ;	assignBit
      002226 D2 93            [12] 1451 	setb	_SCK
                                   1452 ;	../UI_Manager/Display_Manager/display.c:248: SCK = 0;
                                   1453 ;	assignBit
      002228 C2 93            [12] 1454 	clr	_SCK
                                   1455 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      00222A 0D               [12] 1456 	inc	r5
      00222B BD 10 00         [24] 1457 	cjne	r5,#0x10,00117$
      00222E                       1458 00117$:
      00222E 40 D7            [24] 1459 	jc	00102$
                                   1460 ;	../UI_Manager/Display_Manager/display.c:250: RCK = 1;
                                   1461 ;	assignBit
      002230 D2 92            [12] 1462 	setb	_RCK
                                   1463 ;	../UI_Manager/Display_Manager/display.c:251: RCK = 0;
                                   1464 ;	assignBit
      002232 C2 92            [12] 1465 	clr	_RCK
                                   1466 ;	../UI_Manager/Display_Manager/display.c:252: }
      002234 22               [24] 1467 	ret
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
      002235                       1479 _flipByte:
      002235 AF 82            [24] 1480 	mov	r7,dpl
                                   1481 ;	../UI_Manager/Display_Manager/display.c:256: uint8_t i, temp = 0;
      002237 7E 00            [12] 1482 	mov	r6,#0x00
                                   1483 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      002239 7D 00            [12] 1484 	mov	r5,#0x00
      00223B                       1485 00102$:
                                   1486 ;	../UI_Manager/Display_Manager/display.c:259: temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
      00223B C0 06            [24] 1487 	push	ar6
      00223D 8D F0            [24] 1488 	mov	b,r5
      00223F 05 F0            [12] 1489 	inc	b
      002241 7B 80            [12] 1490 	mov	r3,#0x80
      002243 E4               [12] 1491 	clr	a
      002244 FC               [12] 1492 	mov	r4,a
      002245 33               [12] 1493 	rlc	a
      002246 92 D2            [24] 1494 	mov	ov,c
      002248 80 08            [24] 1495 	sjmp	00122$
      00224A                       1496 00121$:
      00224A A2 D2            [12] 1497 	mov	c,ov
      00224C EC               [12] 1498 	mov	a,r4
      00224D 13               [12] 1499 	rrc	a
      00224E FC               [12] 1500 	mov	r4,a
      00224F EB               [12] 1501 	mov	a,r3
      002250 13               [12] 1502 	rrc	a
      002251 FB               [12] 1503 	mov	r3,a
      002252                       1504 00122$:
      002252 D5 F0 F5         [24] 1505 	djnz	b,00121$
      002255 8F 02            [24] 1506 	mov	ar2,r7
      002257 7E 00            [12] 1507 	mov	r6,#0x00
      002259 EA               [12] 1508 	mov	a,r2
      00225A 52 03            [12] 1509 	anl	ar3,a
      00225C EE               [12] 1510 	mov	a,r6
      00225D 52 04            [12] 1511 	anl	ar4,a
      00225F D0 06            [24] 1512 	pop	ar6
      002261 EB               [12] 1513 	mov	a,r3
      002262 4C               [12] 1514 	orl	a,r4
      002263 60 06            [24] 1515 	jz	00106$
      002265 7B 01            [12] 1516 	mov	r3,#0x01
      002267 7C 00            [12] 1517 	mov	r4,#0x00
      002269 80 04            [24] 1518 	sjmp	00107$
      00226B                       1519 00106$:
      00226B 7B 00            [12] 1520 	mov	r3,#0x00
      00226D 7C 00            [12] 1521 	mov	r4,#0x00
      00226F                       1522 00107$:
      00226F 8D 04            [24] 1523 	mov	ar4,r5
      002271 8C F0            [24] 1524 	mov	b,r4
      002273 05 F0            [12] 1525 	inc	b
      002275 EB               [12] 1526 	mov	a,r3
      002276 80 02            [24] 1527 	sjmp	00126$
      002278                       1528 00124$:
      002278 25 E0            [12] 1529 	add	a,acc
      00227A                       1530 00126$:
      00227A D5 F0 FB         [24] 1531 	djnz	b,00124$
      00227D FB               [12] 1532 	mov	r3,a
      00227E 8E 04            [24] 1533 	mov	ar4,r6
      002280 EC               [12] 1534 	mov	a,r4
      002281 42 03            [12] 1535 	orl	ar3,a
      002283 8B 06            [24] 1536 	mov	ar6,r3
                                   1537 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      002285 0D               [12] 1538 	inc	r5
      002286 BD 08 00         [24] 1539 	cjne	r5,#0x08,00127$
      002289                       1540 00127$:
      002289 40 B0            [24] 1541 	jc	00102$
                                   1542 ;	../UI_Manager/Display_Manager/display.c:262: return temp;
      00228B 8E 82            [24] 1543 	mov	dpl,r6
                                   1544 ;	../UI_Manager/Display_Manager/display.c:263: }
      00228D 22               [24] 1545 	ret
                                   1546 	.area CSEG    (CODE)
                                   1547 	.area CONST   (CODE)
                                   1548 	.area XINIT   (CODE)
                                   1549 	.area CABS    (ABS,CODE)
