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
                                     96 	.globl _write_char_PARM_3
                                     97 	.globl _write_char_PARM_2
                                     98 	.globl _write_number_PARM_4
                                     99 	.globl _write_number_PARM_3
                                    100 	.globl _write_number_PARM_2
                                    101 	.globl _write_string_PARM_5
                                    102 	.globl _write_string_PARM_4
                                    103 	.globl _write_string_PARM_3
                                    104 	.globl _write_string_PARM_2
                                    105 	.globl _write_string
                                    106 	.globl _write_number
                                    107 	.globl _write_char
                                    108 	.globl _exe_command
                                    109 	.globl _charToCode
                                    110 	.globl _writeShiftReg
                                    111 	.globl _flipByte
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           0000BF   117 _CHIPCON	=	0x00bf
                           0000B7   118 _PCLKSEL	=	0x00b7
                           000080   119 _P0	=	0x0080
                           000090   120 _P1	=	0x0090
                           0000A0   121 _P2	=	0x00a0
                           0000B0   122 _P3	=	0x00b0
                           0000A8   123 _IE	=	0x00a8
                           0000E8   124 _EIE	=	0x00e8
                           000091   125 _EXIF	=	0x0091
                           0000DA   126 _ADCSEL	=	0x00da
                           0000DB   127 _ADCVAL1	=	0x00db
                           0000DC   128 _ADCVAL2	=	0x00dc
                           0000D9   129 _P1_OPT	=	0x00d9
                           000098   130 _SCON	=	0x0098
                           0000CA   131 _RCAP2L	=	0x00ca
                           0000CB   132 _RCAP2H	=	0x00cb
                           0000C8   133 _T2CON	=	0x00c8
                           00009B   134 _TH3	=	0x009b
                           00009A   135 _TL3	=	0x009a
                           000099   136 _SBUF	=	0x0099
                           0000D3   137 _PWM_EA1	=	0x00d3
                           0000D4   138 _PWM_EA2	=	0x00d4
                           0000BD   139 _PWMDATA11H	=	0x00bd
                           0000BE   140 _PWMDATA11L	=	0x00be
                           0000B5   141 _PWMDATA14H	=	0x00b5
                           0000B6   142 _PWMDATA14L	=	0x00b6
                           0000AD   143 _PWMDATA17H	=	0x00ad
                           0000AE   144 _PWMDATA17L	=	0x00ae
                           000088   145 _TCON	=	0x0088
                           000089   146 _TMOD	=	0x0089
                           00008E   147 _CKCON	=	0x008e
                           00008A   148 _TL0	=	0x008a
                           00008C   149 _TH0	=	0x008c
                           0000E4   150 _IAPEN	=	0x00e4
                           0000E5   151 _IAP_ADRL	=	0x00e5
                           0000E6   152 _IAP_ADRH	=	0x00e6
                                    153 ;--------------------------------------------------------
                                    154 ; special function bits
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0_0	=	0x0080
                           000081   159 _P0_1	=	0x0081
                           000082   160 _P0_2	=	0x0082
                           000083   161 _P0_3	=	0x0083
                           000084   162 _P0_4	=	0x0084
                           000085   163 _P0_5	=	0x0085
                           000086   164 _P0_6	=	0x0086
                           000087   165 _P0_7	=	0x0087
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000B0   182 _P3_0	=	0x00b0
                           0000B1   183 _P3_1	=	0x00b1
                           0000B2   184 _P3_2	=	0x00b2
                           0000B3   185 _P3_3	=	0x00b3
                           0000B4   186 _P3_4	=	0x00b4
                           0000B5   187 _P3_5	=	0x00b5
                           0000B6   188 _P3_6	=	0x00b6
                           0000B7   189 _P3_7	=	0x00b7
                           0000AF   190 _EA	=	0x00af
                           0000A9   191 _ET0	=	0x00a9
                           0000AC   192 _ES	=	0x00ac
                           000098   193 _RI	=	0x0098
                           000093   194 _SCK	=	0x0093
                           000095   195 _SER	=	0x0095
                           000092   196 _RCK	=	0x0092
                           00009F   197 _SM0	=	0x009f
                           00009E   198 _SM1	=	0x009e
                           00009D   199 _SM2	=	0x009d
                           00009C   200 _REN	=	0x009c
                           0000CD   201 _RCLK	=	0x00cd
                           0000CC   202 _TCLK	=	0x00cc
                           0000CB   203 _EXEN2	=	0x00cb
                           0000CA   204 _TR2	=	0x00ca
                           0000C9   205 _CT2	=	0x00c9
                           0000C8   206 _CPRL2	=	0x00c8
                                    207 ;--------------------------------------------------------
                                    208 ; overlayable register banks
                                    209 ;--------------------------------------------------------
                                    210 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        211 	.ds 8
                                    212 ;--------------------------------------------------------
                                    213 ; internal ram data
                                    214 ;--------------------------------------------------------
                                    215 	.area DSEG    (DATA)
      000021                        216 _write_string_PARM_2:
      000021                        217 	.ds 1
      000022                        218 _write_string_PARM_3:
      000022                        219 	.ds 1
      000023                        220 _write_string_PARM_4:
      000023                        221 	.ds 1
      000024                        222 _write_string_PARM_5:
      000024                        223 	.ds 1
      000025                        224 _write_number_PARM_2:
      000025                        225 	.ds 1
      000026                        226 _write_number_PARM_3:
      000026                        227 	.ds 1
      000027                        228 _write_number_PARM_4:
      000027                        229 	.ds 1
      000028                        230 _write_number_chars_65536_18:
      000028                        231 	.ds 3
      00002B                        232 _write_char_PARM_2:
      00002B                        233 	.ds 1
      00002C                        234 _write_char_PARM_3:
      00002C                        235 	.ds 1
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 	.area	OSEG    (OVR,DATA)
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 	.area	OSEG    (OVR,DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; external initialized ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; Home
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area HOME    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; code
                                    295 ;--------------------------------------------------------
                                    296 	.area CSEG    (CODE)
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'write_string'
                                    299 ;------------------------------------------------------------
                                    300 ;length                    Allocated with name '_write_string_PARM_2'
                                    301 ;index                     Allocated with name '_write_string_PARM_3'
                                    302 ;line                      Allocated with name '_write_string_PARM_4'
                                    303 ;selected                  Allocated with name '_write_string_PARM_5'
                                    304 ;string                    Allocated to registers r5 r6 r7 
                                    305 ;i                         Allocated to registers r3 
                                    306 ;done                      Allocated to registers r4 
                                    307 ;------------------------------------------------------------
                                    308 ;	../UI_Manager/Display_Manager/display.c:16: void write_string(char* string, uint8_t length, uint8_t index, uint8_t line, uint8_t selected){
                                    309 ;	-----------------------------------------
                                    310 ;	 function write_string
                                    311 ;	-----------------------------------------
      0018D4                        312 _write_string:
                           000007   313 	ar7 = 0x07
                           000006   314 	ar6 = 0x06
                           000005   315 	ar5 = 0x05
                           000004   316 	ar4 = 0x04
                           000003   317 	ar3 = 0x03
                           000002   318 	ar2 = 0x02
                           000001   319 	ar1 = 0x01
                           000000   320 	ar0 = 0x00
      0018D4 AD 82            [24]  321 	mov	r5,dpl
      0018D6 AE 83            [24]  322 	mov	r6,dph
      0018D8 AF F0            [24]  323 	mov	r7,b
                                    324 ;	../UI_Manager/Display_Manager/display.c:17: uint8_t i, done = 0;
      0018DA 7C 00            [12]  325 	mov	r4,#0x00
                                    326 ;	../UI_Manager/Display_Manager/display.c:20: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      0018DC E5 23            [12]  327 	mov	a,_write_string_PARM_4
      0018DE 60 08            [24]  328 	jz	00115$
      0018E0 AB 22            [24]  329 	mov	r3,_write_string_PARM_3
      0018E2 74 40            [12]  330 	mov	a,#0x40
      0018E4 2B               [12]  331 	add	a,r3
      0018E5 FB               [12]  332 	mov	r3,a
      0018E6 80 02            [24]  333 	sjmp	00116$
      0018E8                        334 00115$:
      0018E8 AB 22            [24]  335 	mov	r3,_write_string_PARM_3
      0018EA                        336 00116$:
      0018EA 8B 82            [24]  337 	mov	dpl,r3
      0018EC C0 07            [24]  338 	push	ar7
      0018EE C0 06            [24]  339 	push	ar6
      0018F0 C0 05            [24]  340 	push	ar5
      0018F2 C0 04            [24]  341 	push	ar4
      0018F4 12 1D 76         [24]  342 	lcall	_flipByte
      0018F7 AA 82            [24]  343 	mov	r2,dpl
      0018F9 7B 00            [12]  344 	mov	r3,#0x00
      0018FB 8B 82            [24]  345 	mov	dpl,r3
      0018FD 74 01            [12]  346 	mov	a,#0x01
      0018FF 4A               [12]  347 	orl	a,r2
      001900 F5 83            [12]  348 	mov	dph,a
      001902 12 1B 27         [24]  349 	lcall	_exe_command
      001905 D0 04            [24]  350 	pop	ar4
      001907 D0 05            [24]  351 	pop	ar5
      001909 D0 06            [24]  352 	pop	ar6
      00190B D0 07            [24]  353 	pop	ar7
                                    354 ;	../UI_Manager/Display_Manager/display.c:22: length++; //null terminated
      00190D 05 21            [12]  355 	inc	_write_string_PARM_2
                                    356 ;	../UI_Manager/Display_Manager/display.c:24: if(selected){
      00190F E5 24            [12]  357 	mov	a,_write_string_PARM_5
      001911 60 16            [24]  358 	jz	00122$
                                    359 ;	../UI_Manager/Display_Manager/display.c:25: exe_command(WRITE_CURSOR);
      001913 90 00 80         [24]  360 	mov	dptr,#0x0080
      001916 C0 07            [24]  361 	push	ar7
      001918 C0 06            [24]  362 	push	ar6
      00191A C0 05            [24]  363 	push	ar5
      00191C C0 04            [24]  364 	push	ar4
      00191E 12 1B 27         [24]  365 	lcall	_exe_command
      001921 D0 04            [24]  366 	pop	ar4
      001923 D0 05            [24]  367 	pop	ar5
      001925 D0 06            [24]  368 	pop	ar6
      001927 D0 07            [24]  369 	pop	ar7
                                    370 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001929                        371 00122$:
      001929 7B 00            [12]  372 	mov	r3,#0x00
      00192B                        373 00111$:
      00192B C3               [12]  374 	clr	c
      00192C EB               [12]  375 	mov	a,r3
      00192D 95 21            [12]  376 	subb	a,_write_string_PARM_2
      00192F 40 01            [24]  377 	jc	00144$
      001931 22               [24]  378 	ret
      001932                        379 00144$:
                                    380 ;	../UI_Manager/Display_Manager/display.c:29: if(!done){
      001932 EC               [12]  381 	mov	a,r4
      001933 70 45            [24]  382 	jnz	00107$
                                    383 ;	../UI_Manager/Display_Manager/display.c:30: if(string[i]){
      001935 EB               [12]  384 	mov	a,r3
      001936 2D               [12]  385 	add	a,r5
      001937 F8               [12]  386 	mov	r0,a
      001938 E4               [12]  387 	clr	a
      001939 3E               [12]  388 	addc	a,r6
      00193A F9               [12]  389 	mov	r1,a
      00193B 8F 02            [24]  390 	mov	ar2,r7
      00193D 88 82            [24]  391 	mov	dpl,r0
      00193F 89 83            [24]  392 	mov	dph,r1
      001941 8A F0            [24]  393 	mov	b,r2
      001943 12 2F 46         [24]  394 	lcall	__gptrget
      001946 FA               [12]  395 	mov	r2,a
      001947 60 2D            [24]  396 	jz	00104$
                                    397 ;	../UI_Manager/Display_Manager/display.c:31: exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
      001949 8A 82            [24]  398 	mov	dpl,r2
      00194B C0 07            [24]  399 	push	ar7
      00194D C0 06            [24]  400 	push	ar6
      00194F C0 05            [24]  401 	push	ar5
      001951 C0 04            [24]  402 	push	ar4
      001953 C0 03            [24]  403 	push	ar3
      001955 12 1B 6D         [24]  404 	lcall	_charToCode
      001958 AA 82            [24]  405 	mov	r2,dpl
      00195A 8A 01            [24]  406 	mov	ar1,r2
      00195C 89 02            [24]  407 	mov	ar2,r1
      00195E 79 00            [12]  408 	mov	r1,#0x00
      001960 74 80            [12]  409 	mov	a,#0x80
      001962 49               [12]  410 	orl	a,r1
      001963 F5 82            [12]  411 	mov	dpl,a
      001965 8A 83            [24]  412 	mov	dph,r2
      001967 12 1B 27         [24]  413 	lcall	_exe_command
      00196A D0 03            [24]  414 	pop	ar3
      00196C D0 04            [24]  415 	pop	ar4
      00196E D0 05            [24]  416 	pop	ar5
      001970 D0 06            [24]  417 	pop	ar6
      001972 D0 07            [24]  418 	pop	ar7
      001974 80 1E            [24]  419 	sjmp	00112$
      001976                        420 00104$:
                                    421 ;	../UI_Manager/Display_Manager/display.c:33: done = 1;
      001976 7C 01            [12]  422 	mov	r4,#0x01
      001978 80 1A            [24]  423 	sjmp	00112$
      00197A                        424 00107$:
                                    425 ;	../UI_Manager/Display_Manager/display.c:36: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      00197A 90 04 80         [24]  426 	mov	dptr,#0x0480
      00197D C0 07            [24]  427 	push	ar7
      00197F C0 06            [24]  428 	push	ar6
      001981 C0 05            [24]  429 	push	ar5
      001983 C0 04            [24]  430 	push	ar4
      001985 C0 03            [24]  431 	push	ar3
      001987 12 1B 27         [24]  432 	lcall	_exe_command
      00198A D0 03            [24]  433 	pop	ar3
      00198C D0 04            [24]  434 	pop	ar4
      00198E D0 05            [24]  435 	pop	ar5
      001990 D0 06            [24]  436 	pop	ar6
      001992 D0 07            [24]  437 	pop	ar7
      001994                        438 00112$:
                                    439 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001994 0B               [12]  440 	inc	r3
                                    441 ;	../UI_Manager/Display_Manager/display.c:39: }
      001995 02 19 2B         [24]  442 	ljmp	00111$
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'write_number'
                                    445 ;------------------------------------------------------------
                                    446 ;index                     Allocated with name '_write_number_PARM_2'
                                    447 ;line                      Allocated with name '_write_number_PARM_3'
                                    448 ;selected                  Allocated with name '_write_number_PARM_4'
                                    449 ;number                    Allocated to registers r6 r7 
                                    450 ;higherNumberPresent       Allocated to registers r5 
                                    451 ;value                     Allocated to registers r3 r4 
                                    452 ;chars                     Allocated with name '_write_number_chars_65536_18'
                                    453 ;------------------------------------------------------------
                                    454 ;	../UI_Manager/Display_Manager/display.c:41: void write_number(uint16_t number, uint8_t index, uint8_t line, uint8_t selected){
                                    455 ;	-----------------------------------------
                                    456 ;	 function write_number
                                    457 ;	-----------------------------------------
      001998                        458 _write_number:
      001998 AE 82            [24]  459 	mov	r6,dpl
      00199A AF 83            [24]  460 	mov	r7,dph
                                    461 ;	../UI_Manager/Display_Manager/display.c:42: uint8_t higherNumberPresent = 0;
      00199C 7D 00            [12]  462 	mov	r5,#0x00
                                    463 ;	../UI_Manager/Display_Manager/display.c:44: uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};
      00199E 75 28 04         [24]  464 	mov	_write_number_chars_65536_18,#0x04
      0019A1 75 29 04         [24]  465 	mov	(_write_number_chars_65536_18 + 0x0001),#0x04
      0019A4 75 2A 0C         [24]  466 	mov	(_write_number_chars_65536_18 + 0x0002),#0x0c
                                    467 ;	../UI_Manager/Display_Manager/display.c:46: if(number >= 1000) {number = 999;}
      0019A7 C3               [12]  468 	clr	c
      0019A8 EE               [12]  469 	mov	a,r6
      0019A9 94 E8            [12]  470 	subb	a,#0xe8
      0019AB EF               [12]  471 	mov	a,r7
      0019AC 94 03            [12]  472 	subb	a,#0x03
      0019AE 40 04            [24]  473 	jc	00102$
      0019B0 7E E7            [12]  474 	mov	r6,#0xe7
      0019B2 7F 03            [12]  475 	mov	r7,#0x03
      0019B4                        476 00102$:
                                    477 ;	../UI_Manager/Display_Manager/display.c:48: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      0019B4 E5 26            [12]  478 	mov	a,_write_number_PARM_3
      0019B6 60 08            [24]  479 	jz	00113$
      0019B8 AC 25            [24]  480 	mov	r4,_write_number_PARM_2
      0019BA 74 40            [12]  481 	mov	a,#0x40
      0019BC 2C               [12]  482 	add	a,r4
      0019BD FC               [12]  483 	mov	r4,a
      0019BE 80 02            [24]  484 	sjmp	00114$
      0019C0                        485 00113$:
      0019C0 AC 25            [24]  486 	mov	r4,_write_number_PARM_2
      0019C2                        487 00114$:
      0019C2 8C 82            [24]  488 	mov	dpl,r4
      0019C4 C0 07            [24]  489 	push	ar7
      0019C6 C0 06            [24]  490 	push	ar6
      0019C8 C0 05            [24]  491 	push	ar5
      0019CA 12 1D 76         [24]  492 	lcall	_flipByte
      0019CD AB 82            [24]  493 	mov	r3,dpl
      0019CF 7C 00            [12]  494 	mov	r4,#0x00
      0019D1 8C 82            [24]  495 	mov	dpl,r4
      0019D3 74 01            [12]  496 	mov	a,#0x01
      0019D5 4B               [12]  497 	orl	a,r3
      0019D6 F5 83            [12]  498 	mov	dph,a
      0019D8 12 1B 27         [24]  499 	lcall	_exe_command
      0019DB D0 05            [24]  500 	pop	ar5
      0019DD D0 06            [24]  501 	pop	ar6
      0019DF D0 07            [24]  502 	pop	ar7
                                    503 ;	../UI_Manager/Display_Manager/display.c:51: if(selected){
      0019E1 E5 27            [12]  504 	mov	a,_write_number_PARM_4
      0019E3 60 14            [24]  505 	jz	00104$
                                    506 ;	../UI_Manager/Display_Manager/display.c:52: exe_command(WRITE_CURSOR);
      0019E5 90 00 80         [24]  507 	mov	dptr,#0x0080
      0019E8 C0 07            [24]  508 	push	ar7
      0019EA C0 06            [24]  509 	push	ar6
      0019EC C0 05            [24]  510 	push	ar5
      0019EE 12 1B 27         [24]  511 	lcall	_exe_command
      0019F1 D0 05            [24]  512 	pop	ar5
      0019F3 D0 06            [24]  513 	pop	ar6
      0019F5 D0 07            [24]  514 	pop	ar7
      0019F7 80 12            [24]  515 	sjmp	00105$
      0019F9                        516 00104$:
                                    517 ;	../UI_Manager/Display_Manager/display.c:54: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      0019F9 90 04 80         [24]  518 	mov	dptr,#0x0480
      0019FC C0 07            [24]  519 	push	ar7
      0019FE C0 06            [24]  520 	push	ar6
      001A00 C0 05            [24]  521 	push	ar5
      001A02 12 1B 27         [24]  522 	lcall	_exe_command
      001A05 D0 05            [24]  523 	pop	ar5
      001A07 D0 06            [24]  524 	pop	ar6
      001A09 D0 07            [24]  525 	pop	ar7
      001A0B                        526 00105$:
                                    527 ;	../UI_Manager/Display_Manager/display.c:58: value = number/100;
      001A0B 75 74 64         [24]  528 	mov	__divuint_PARM_2,#0x64
      001A0E 75 75 00         [24]  529 	mov	(__divuint_PARM_2 + 1),#0x00
      001A11 8E 82            [24]  530 	mov	dpl,r6
      001A13 8F 83            [24]  531 	mov	dph,r7
      001A15 C0 07            [24]  532 	push	ar7
      001A17 C0 06            [24]  533 	push	ar6
      001A19 C0 05            [24]  534 	push	ar5
      001A1B 12 2E 30         [24]  535 	lcall	__divuint
      001A1E AB 82            [24]  536 	mov	r3,dpl
      001A20 AC 83            [24]  537 	mov	r4,dph
      001A22 D0 05            [24]  538 	pop	ar5
      001A24 D0 06            [24]  539 	pop	ar6
      001A26 D0 07            [24]  540 	pop	ar7
                                    541 ;	../UI_Manager/Display_Manager/display.c:59: if(value){
      001A28 EB               [12]  542 	mov	a,r3
      001A29 4C               [12]  543 	orl	a,r4
      001A2A 60 39            [24]  544 	jz	00107$
                                    545 ;	../UI_Manager/Display_Manager/display.c:60: chars[0] = charToCode(value + 0x30);
      001A2C 8B 02            [24]  546 	mov	ar2,r3
      001A2E 74 30            [12]  547 	mov	a,#0x30
      001A30 2A               [12]  548 	add	a,r2
      001A31 F5 82            [12]  549 	mov	dpl,a
      001A33 C0 07            [24]  550 	push	ar7
      001A35 C0 06            [24]  551 	push	ar6
      001A37 C0 04            [24]  552 	push	ar4
      001A39 C0 03            [24]  553 	push	ar3
      001A3B 12 1B 6D         [24]  554 	lcall	_charToCode
      001A3E E5 82            [12]  555 	mov	a,dpl
      001A40 D0 03            [24]  556 	pop	ar3
      001A42 D0 04            [24]  557 	pop	ar4
      001A44 F5 28            [12]  558 	mov	_write_number_chars_65536_18,a
                                    559 ;	../UI_Manager/Display_Manager/display.c:61: higherNumberPresent = 1;
      001A46 7D 01            [12]  560 	mov	r5,#0x01
                                    561 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      001A48 8B 74            [24]  562 	mov	__mulint_PARM_2,r3
      001A4A 8C 75            [24]  563 	mov	(__mulint_PARM_2 + 1),r4
      001A4C 90 00 64         [24]  564 	mov	dptr,#0x0064
      001A4F C0 05            [24]  565 	push	ar5
      001A51 12 2E DC         [24]  566 	lcall	__mulint
      001A54 AB 82            [24]  567 	mov	r3,dpl
      001A56 AC 83            [24]  568 	mov	r4,dph
      001A58 D0 05            [24]  569 	pop	ar5
      001A5A D0 06            [24]  570 	pop	ar6
      001A5C D0 07            [24]  571 	pop	ar7
      001A5E EE               [12]  572 	mov	a,r6
      001A5F C3               [12]  573 	clr	c
      001A60 9B               [12]  574 	subb	a,r3
      001A61 FE               [12]  575 	mov	r6,a
      001A62 EF               [12]  576 	mov	a,r7
      001A63 9C               [12]  577 	subb	a,r4
      001A64 FF               [12]  578 	mov	r7,a
      001A65                        579 00107$:
                                    580 ;	../UI_Manager/Display_Manager/display.c:65: value = number/10;
      001A65 75 74 0A         [24]  581 	mov	__divuint_PARM_2,#0x0a
      001A68 75 75 00         [24]  582 	mov	(__divuint_PARM_2 + 1),#0x00
      001A6B 8E 82            [24]  583 	mov	dpl,r6
      001A6D 8F 83            [24]  584 	mov	dph,r7
      001A6F C0 07            [24]  585 	push	ar7
      001A71 C0 06            [24]  586 	push	ar6
      001A73 C0 05            [24]  587 	push	ar5
      001A75 12 2E 30         [24]  588 	lcall	__divuint
      001A78 AB 82            [24]  589 	mov	r3,dpl
      001A7A AC 83            [24]  590 	mov	r4,dph
      001A7C D0 05            [24]  591 	pop	ar5
      001A7E D0 06            [24]  592 	pop	ar6
      001A80 D0 07            [24]  593 	pop	ar7
                                    594 ;	../UI_Manager/Display_Manager/display.c:66: if(higherNumberPresent || value){
      001A82 ED               [12]  595 	mov	a,r5
      001A83 70 04            [24]  596 	jnz	00108$
      001A85 EB               [12]  597 	mov	a,r3
      001A86 4C               [12]  598 	orl	a,r4
      001A87 60 33            [24]  599 	jz	00109$
      001A89                        600 00108$:
                                    601 ;	../UI_Manager/Display_Manager/display.c:67: chars[1] = charToCode(value + 0x30);
      001A89 8B 05            [24]  602 	mov	ar5,r3
      001A8B 74 30            [12]  603 	mov	a,#0x30
      001A8D 2D               [12]  604 	add	a,r5
      001A8E F5 82            [12]  605 	mov	dpl,a
      001A90 C0 07            [24]  606 	push	ar7
      001A92 C0 06            [24]  607 	push	ar6
      001A94 C0 04            [24]  608 	push	ar4
      001A96 C0 03            [24]  609 	push	ar3
      001A98 12 1B 6D         [24]  610 	lcall	_charToCode
      001A9B E5 82            [12]  611 	mov	a,dpl
      001A9D D0 03            [24]  612 	pop	ar3
      001A9F D0 04            [24]  613 	pop	ar4
      001AA1 F5 29            [12]  614 	mov	(_write_number_chars_65536_18 + 0x0001),a
                                    615 ;	../UI_Manager/Display_Manager/display.c:68: number -= value*10;
      001AA3 8B 74            [24]  616 	mov	__mulint_PARM_2,r3
      001AA5 8C 75            [24]  617 	mov	(__mulint_PARM_2 + 1),r4
      001AA7 90 00 0A         [24]  618 	mov	dptr,#0x000a
      001AAA 12 2E DC         [24]  619 	lcall	__mulint
      001AAD AC 82            [24]  620 	mov	r4,dpl
      001AAF AD 83            [24]  621 	mov	r5,dph
      001AB1 D0 06            [24]  622 	pop	ar6
      001AB3 D0 07            [24]  623 	pop	ar7
      001AB5 EE               [12]  624 	mov	a,r6
      001AB6 C3               [12]  625 	clr	c
      001AB7 9C               [12]  626 	subb	a,r4
      001AB8 FE               [12]  627 	mov	r6,a
      001AB9 EF               [12]  628 	mov	a,r7
      001ABA 9D               [12]  629 	subb	a,r5
      001ABB FF               [12]  630 	mov	r7,a
      001ABC                        631 00109$:
                                    632 ;	../UI_Manager/Display_Manager/display.c:71: chars[2] = charToCode(number + 0x30);
      001ABC 74 30            [12]  633 	mov	a,#0x30
      001ABE 2E               [12]  634 	add	a,r6
      001ABF F5 82            [12]  635 	mov	dpl,a
      001AC1 12 1B 6D         [24]  636 	lcall	_charToCode
      001AC4 E5 82            [12]  637 	mov	a,dpl
      001AC6 F5 2A            [12]  638 	mov	(_write_number_chars_65536_18 + 0x0002),a
                                    639 ;	../UI_Manager/Display_Manager/display.c:73: exe_command(RAM_WRITE | (chars[0] << 8));
      001AC8 AF 28            [24]  640 	mov	r7,_write_number_chars_65536_18
      001ACA 7E 00            [12]  641 	mov	r6,#0x00
      001ACC 74 80            [12]  642 	mov	a,#0x80
      001ACE 4E               [12]  643 	orl	a,r6
      001ACF F5 82            [12]  644 	mov	dpl,a
      001AD1 8F 83            [24]  645 	mov	dph,r7
      001AD3 12 1B 27         [24]  646 	lcall	_exe_command
                                    647 ;	../UI_Manager/Display_Manager/display.c:74: exe_command(RAM_WRITE | (chars[1] << 8));
      001AD6 AF 29            [24]  648 	mov	r7,(_write_number_chars_65536_18 + 0x0001)
      001AD8 7E 00            [12]  649 	mov	r6,#0x00
      001ADA 74 80            [12]  650 	mov	a,#0x80
      001ADC 4E               [12]  651 	orl	a,r6
      001ADD F5 82            [12]  652 	mov	dpl,a
      001ADF 8F 83            [24]  653 	mov	dph,r7
      001AE1 12 1B 27         [24]  654 	lcall	_exe_command
                                    655 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001AE4 AF 2A            [24]  656 	mov	r7,(_write_number_chars_65536_18 + 0x0002)
      001AE6 7E 00            [12]  657 	mov	r6,#0x00
      001AE8 74 80            [12]  658 	mov	a,#0x80
      001AEA 4E               [12]  659 	orl	a,r6
      001AEB F5 82            [12]  660 	mov	dpl,a
      001AED 8F 83            [24]  661 	mov	dph,r7
                                    662 ;	../UI_Manager/Display_Manager/display.c:77: }
      001AEF 02 1B 27         [24]  663 	ljmp	_exe_command
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'write_char'
                                    666 ;------------------------------------------------------------
                                    667 ;index                     Allocated with name '_write_char_PARM_2'
                                    668 ;line                      Allocated with name '_write_char_PARM_3'
                                    669 ;command                   Allocated to registers r7 
                                    670 ;------------------------------------------------------------
                                    671 ;	../UI_Manager/Display_Manager/display.c:79: void write_char(uint8_t command, uint8_t index, uint8_t line){
                                    672 ;	-----------------------------------------
                                    673 ;	 function write_char
                                    674 ;	-----------------------------------------
      001AF2                        675 _write_char:
      001AF2 AF 82            [24]  676 	mov	r7,dpl
                                    677 ;	../UI_Manager/Display_Manager/display.c:80: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001AF4 E5 2C            [12]  678 	mov	a,_write_char_PARM_3
      001AF6 60 08            [24]  679 	jz	00103$
      001AF8 AE 2B            [24]  680 	mov	r6,_write_char_PARM_2
      001AFA 74 40            [12]  681 	mov	a,#0x40
      001AFC 2E               [12]  682 	add	a,r6
      001AFD FE               [12]  683 	mov	r6,a
      001AFE 80 02            [24]  684 	sjmp	00104$
      001B00                        685 00103$:
      001B00 AE 2B            [24]  686 	mov	r6,_write_char_PARM_2
      001B02                        687 00104$:
      001B02 8E 82            [24]  688 	mov	dpl,r6
      001B04 C0 07            [24]  689 	push	ar7
      001B06 12 1D 76         [24]  690 	lcall	_flipByte
      001B09 AD 82            [24]  691 	mov	r5,dpl
      001B0B 7E 00            [12]  692 	mov	r6,#0x00
      001B0D 8E 82            [24]  693 	mov	dpl,r6
      001B0F 74 01            [12]  694 	mov	a,#0x01
      001B11 4D               [12]  695 	orl	a,r5
      001B12 F5 83            [12]  696 	mov	dph,a
      001B14 12 1B 27         [24]  697 	lcall	_exe_command
      001B17 D0 07            [24]  698 	pop	ar7
                                    699 ;	../UI_Manager/Display_Manager/display.c:81: exe_command(RAM_WRITE | (command << 8));
      001B19 8F 06            [24]  700 	mov	ar6,r7
      001B1B 7F 00            [12]  701 	mov	r7,#0x00
      001B1D 74 80            [12]  702 	mov	a,#0x80
      001B1F 4F               [12]  703 	orl	a,r7
      001B20 F5 82            [12]  704 	mov	dpl,a
      001B22 8E 83            [24]  705 	mov	dph,r6
                                    706 ;	../UI_Manager/Display_Manager/display.c:82: }
      001B24 02 1B 27         [24]  707 	ljmp	_exe_command
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'exe_command'
                                    710 ;------------------------------------------------------------
                                    711 ;command                   Allocated to registers r6 r7 
                                    712 ;delay                     Allocated to registers r5 r6 
                                    713 ;------------------------------------------------------------
                                    714 ;	../UI_Manager/Display_Manager/display.c:86: void exe_command(uint16_t command){
                                    715 ;	-----------------------------------------
                                    716 ;	 function exe_command
                                    717 ;	-----------------------------------------
      001B27                        718 _exe_command:
      001B27 AE 82            [24]  719 	mov	r6,dpl
      001B29 AF 83            [24]  720 	mov	r7,dph
                                    721 ;	../UI_Manager/Display_Manager/display.c:89: command |= (1 << EXE_BIT);
      001B2B 43 06 20         [24]  722 	orl	ar6,#0x20
                                    723 ;	../UI_Manager/Display_Manager/display.c:90: writeShiftReg(command); //execute
      001B2E 8E 82            [24]  724 	mov	dpl,r6
      001B30 8F 83            [24]  725 	mov	dph,r7
      001B32 C0 07            [24]  726 	push	ar7
      001B34 C0 06            [24]  727 	push	ar6
      001B36 12 1D 42         [24]  728 	lcall	_writeShiftReg
      001B39 D0 06            [24]  729 	pop	ar6
      001B3B D0 07            [24]  730 	pop	ar7
                                    731 ;	../UI_Manager/Display_Manager/display.c:91: command &= ~(1 << EXE_BIT);
      001B3D 53 06 DF         [24]  732 	anl	ar6,#0xdf
                                    733 ;	../UI_Manager/Display_Manager/display.c:92: writeShiftReg(command); //end execution
      001B40 8E 82            [24]  734 	mov	dpl,r6
      001B42 8F 83            [24]  735 	mov	dph,r7
      001B44 C0 07            [24]  736 	push	ar7
      001B46 C0 06            [24]  737 	push	ar6
      001B48 12 1D 42         [24]  738 	lcall	_writeShiftReg
      001B4B D0 06            [24]  739 	pop	ar6
      001B4D D0 07            [24]  740 	pop	ar7
                                    741 ;	../UI_Manager/Display_Manager/display.c:95: while(delay-- && command == CLEAR_DISPLAY){;;}
      001B4F E4               [12]  742 	clr	a
      001B50 BE 00 04         [24]  743 	cjne	r6,#0x00,00118$
      001B53 BF 80 01         [24]  744 	cjne	r7,#0x80,00118$
      001B56 04               [12]  745 	inc	a
      001B57                        746 00118$:
      001B57 FF               [12]  747 	mov	r7,a
      001B58 7D 00            [12]  748 	mov	r5,#0x00
      001B5A 7E 03            [12]  749 	mov	r6,#0x03
      001B5C                        750 00102$:
      001B5C 8D 03            [24]  751 	mov	ar3,r5
      001B5E 8E 04            [24]  752 	mov	ar4,r6
      001B60 1D               [12]  753 	dec	r5
      001B61 BD FF 01         [24]  754 	cjne	r5,#0xff,00120$
      001B64 1E               [12]  755 	dec	r6
      001B65                        756 00120$:
      001B65 EB               [12]  757 	mov	a,r3
      001B66 4C               [12]  758 	orl	a,r4
      001B67 60 03            [24]  759 	jz	00105$
      001B69 EF               [12]  760 	mov	a,r7
      001B6A 70 F0            [24]  761 	jnz	00102$
      001B6C                        762 00105$:
                                    763 ;	../UI_Manager/Display_Manager/display.c:96: }
      001B6C 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'charToCode'
                                    767 ;------------------------------------------------------------
                                    768 ;c                         Allocated to registers r7 
                                    769 ;------------------------------------------------------------
                                    770 ;	../UI_Manager/Display_Manager/display.c:100: uint8_t charToCode(char c){
                                    771 ;	-----------------------------------------
                                    772 ;	 function charToCode
                                    773 ;	-----------------------------------------
      001B6D                        774 _charToCode:
      001B6D AF 82            [24]  775 	mov	r7,dpl
                                    776 ;	../UI_Manager/Display_Manager/display.c:101: switch(c){
      001B6F BF 26 00         [24]  777 	cjne	r7,#0x26,00177$
      001B72                        778 00177$:
      001B72 50 03            [24]  779 	jnc	00178$
      001B74 02 1D 3E         [24]  780 	ljmp	00166$
      001B77                        781 00178$:
      001B77 EF               [12]  782 	mov	a,r7
      001B78 24 85            [12]  783 	add	a,#0xff - 0x7a
      001B7A 50 03            [24]  784 	jnc	00179$
      001B7C 02 1D 3E         [24]  785 	ljmp	00166$
      001B7F                        786 00179$:
      001B7F EF               [12]  787 	mov	a,r7
      001B80 24 DA            [12]  788 	add	a,#0xda
      001B82 FF               [12]  789 	mov	r7,a
      001B83 24 0A            [12]  790 	add	a,#(00180$-3-.)
      001B85 83               [24]  791 	movc	a,@a+pc
      001B86 F5 82            [12]  792 	mov	dpl,a
      001B88 EF               [12]  793 	mov	a,r7
      001B89 24 59            [12]  794 	add	a,#(00181$-3-.)
      001B8B 83               [24]  795 	movc	a,@a+pc
      001B8C F5 83            [12]  796 	mov	dph,a
      001B8E E4               [12]  797 	clr	a
      001B8F 73               [24]  798 	jmp	@a+dptr
      001B90                        799 00180$:
      001B90 36                     800 	.db	00164$
      001B91 3E                     801 	.db	00166$
      001B92 3E                     802 	.db	00166$
      001B93 3E                     803 	.db	00166$
      001B94 3E                     804 	.db	00166$
      001B95 32                     805 	.db	00163$
      001B96 3E                     806 	.db	00166$
      001B97 3E                     807 	.db	00166$
      001B98 3E                     808 	.db	00166$
      001B99 3E                     809 	.db	00166$
      001B9A 0A                     810 	.db	00153$
      001B9B 0E                     811 	.db	00154$
      001B9C 12                     812 	.db	00155$
      001B9D 16                     813 	.db	00156$
      001B9E 1A                     814 	.db	00157$
      001B9F 1E                     815 	.db	00158$
      001BA0 22                     816 	.db	00159$
      001BA1 26                     817 	.db	00160$
      001BA2 2A                     818 	.db	00161$
      001BA3 2E                     819 	.db	00162$
      001BA4 3E                     820 	.db	00166$
      001BA5 3A                     821 	.db	00165$
      001BA6 3E                     822 	.db	00166$
      001BA7 3E                     823 	.db	00166$
      001BA8 3E                     824 	.db	00166$
      001BA9 3E                     825 	.db	00166$
      001BAA 3E                     826 	.db	00166$
      001BAB 3A                     827 	.db	00101$
      001BAC 42                     828 	.db	00103$
      001BAD 4A                     829 	.db	00105$
      001BAE 52                     830 	.db	00107$
      001BAF 5A                     831 	.db	00109$
      001BB0 62                     832 	.db	00111$
      001BB1 6A                     833 	.db	00113$
      001BB2 72                     834 	.db	00115$
      001BB3 7A                     835 	.db	00117$
      001BB4 82                     836 	.db	00119$
      001BB5 8A                     837 	.db	00121$
      001BB6 92                     838 	.db	00123$
      001BB7 9A                     839 	.db	00125$
      001BB8 A2                     840 	.db	00127$
      001BB9 AA                     841 	.db	00129$
      001BBA B2                     842 	.db	00131$
      001BBB BA                     843 	.db	00133$
      001BBC C2                     844 	.db	00135$
      001BBD CA                     845 	.db	00137$
      001BBE D2                     846 	.db	00139$
      001BBF DA                     847 	.db	00141$
      001BC0 E2                     848 	.db	00143$
      001BC1 EA                     849 	.db	00145$
      001BC2 F2                     850 	.db	00147$
      001BC3 FA                     851 	.db	00149$
      001BC4 02                     852 	.db	00151$
      001BC5 3E                     853 	.db	00166$
      001BC6 3E                     854 	.db	00166$
      001BC7 3E                     855 	.db	00166$
      001BC8 3E                     856 	.db	00166$
      001BC9 3E                     857 	.db	00166$
      001BCA 3E                     858 	.db	00166$
      001BCB 3E                     859 	.db	00102$
      001BCC 46                     860 	.db	00104$
      001BCD 4E                     861 	.db	00106$
      001BCE 56                     862 	.db	00108$
      001BCF 5E                     863 	.db	00110$
      001BD0 66                     864 	.db	00112$
      001BD1 6E                     865 	.db	00114$
      001BD2 76                     866 	.db	00116$
      001BD3 7E                     867 	.db	00118$
      001BD4 86                     868 	.db	00120$
      001BD5 8E                     869 	.db	00122$
      001BD6 96                     870 	.db	00124$
      001BD7 9E                     871 	.db	00126$
      001BD8 A6                     872 	.db	00128$
      001BD9 AE                     873 	.db	00130$
      001BDA B6                     874 	.db	00132$
      001BDB BE                     875 	.db	00134$
      001BDC C6                     876 	.db	00136$
      001BDD CE                     877 	.db	00138$
      001BDE D6                     878 	.db	00140$
      001BDF DE                     879 	.db	00142$
      001BE0 E6                     880 	.db	00144$
      001BE1 EE                     881 	.db	00146$
      001BE2 F6                     882 	.db	00148$
      001BE3 FE                     883 	.db	00150$
      001BE4 06                     884 	.db	00152$
      001BE5                        885 00181$:
      001BE5 1D                     886 	.db	00164$>>8
      001BE6 1D                     887 	.db	00166$>>8
      001BE7 1D                     888 	.db	00166$>>8
      001BE8 1D                     889 	.db	00166$>>8
      001BE9 1D                     890 	.db	00166$>>8
      001BEA 1D                     891 	.db	00163$>>8
      001BEB 1D                     892 	.db	00166$>>8
      001BEC 1D                     893 	.db	00166$>>8
      001BED 1D                     894 	.db	00166$>>8
      001BEE 1D                     895 	.db	00166$>>8
      001BEF 1D                     896 	.db	00153$>>8
      001BF0 1D                     897 	.db	00154$>>8
      001BF1 1D                     898 	.db	00155$>>8
      001BF2 1D                     899 	.db	00156$>>8
      001BF3 1D                     900 	.db	00157$>>8
      001BF4 1D                     901 	.db	00158$>>8
      001BF5 1D                     902 	.db	00159$>>8
      001BF6 1D                     903 	.db	00160$>>8
      001BF7 1D                     904 	.db	00161$>>8
      001BF8 1D                     905 	.db	00162$>>8
      001BF9 1D                     906 	.db	00166$>>8
      001BFA 1D                     907 	.db	00165$>>8
      001BFB 1D                     908 	.db	00166$>>8
      001BFC 1D                     909 	.db	00166$>>8
      001BFD 1D                     910 	.db	00166$>>8
      001BFE 1D                     911 	.db	00166$>>8
      001BFF 1D                     912 	.db	00166$>>8
      001C00 1C                     913 	.db	00101$>>8
      001C01 1C                     914 	.db	00103$>>8
      001C02 1C                     915 	.db	00105$>>8
      001C03 1C                     916 	.db	00107$>>8
      001C04 1C                     917 	.db	00109$>>8
      001C05 1C                     918 	.db	00111$>>8
      001C06 1C                     919 	.db	00113$>>8
      001C07 1C                     920 	.db	00115$>>8
      001C08 1C                     921 	.db	00117$>>8
      001C09 1C                     922 	.db	00119$>>8
      001C0A 1C                     923 	.db	00121$>>8
      001C0B 1C                     924 	.db	00123$>>8
      001C0C 1C                     925 	.db	00125$>>8
      001C0D 1C                     926 	.db	00127$>>8
      001C0E 1C                     927 	.db	00129$>>8
      001C0F 1C                     928 	.db	00131$>>8
      001C10 1C                     929 	.db	00133$>>8
      001C11 1C                     930 	.db	00135$>>8
      001C12 1C                     931 	.db	00137$>>8
      001C13 1C                     932 	.db	00139$>>8
      001C14 1C                     933 	.db	00141$>>8
      001C15 1C                     934 	.db	00143$>>8
      001C16 1C                     935 	.db	00145$>>8
      001C17 1C                     936 	.db	00147$>>8
      001C18 1C                     937 	.db	00149$>>8
      001C19 1D                     938 	.db	00151$>>8
      001C1A 1D                     939 	.db	00166$>>8
      001C1B 1D                     940 	.db	00166$>>8
      001C1C 1D                     941 	.db	00166$>>8
      001C1D 1D                     942 	.db	00166$>>8
      001C1E 1D                     943 	.db	00166$>>8
      001C1F 1D                     944 	.db	00166$>>8
      001C20 1C                     945 	.db	00102$>>8
      001C21 1C                     946 	.db	00104$>>8
      001C22 1C                     947 	.db	00106$>>8
      001C23 1C                     948 	.db	00108$>>8
      001C24 1C                     949 	.db	00110$>>8
      001C25 1C                     950 	.db	00112$>>8
      001C26 1C                     951 	.db	00114$>>8
      001C27 1C                     952 	.db	00116$>>8
      001C28 1C                     953 	.db	00118$>>8
      001C29 1C                     954 	.db	00120$>>8
      001C2A 1C                     955 	.db	00122$>>8
      001C2B 1C                     956 	.db	00124$>>8
      001C2C 1C                     957 	.db	00126$>>8
      001C2D 1C                     958 	.db	00128$>>8
      001C2E 1C                     959 	.db	00130$>>8
      001C2F 1C                     960 	.db	00132$>>8
      001C30 1C                     961 	.db	00134$>>8
      001C31 1C                     962 	.db	00136$>>8
      001C32 1C                     963 	.db	00138$>>8
      001C33 1C                     964 	.db	00140$>>8
      001C34 1C                     965 	.db	00142$>>8
      001C35 1C                     966 	.db	00144$>>8
      001C36 1C                     967 	.db	00146$>>8
      001C37 1C                     968 	.db	00148$>>8
      001C38 1C                     969 	.db	00150$>>8
      001C39 1D                     970 	.db	00152$>>8
                                    971 ;	../UI_Manager/Display_Manager/display.c:102: case 'A':
      001C3A                        972 00101$:
                                    973 ;	../UI_Manager/Display_Manager/display.c:103: return CHAR_A;
      001C3A 75 82 82         [24]  974 	mov	dpl,#0x82
      001C3D 22               [24]  975 	ret
                                    976 ;	../UI_Manager/Display_Manager/display.c:104: case 'a':
      001C3E                        977 00102$:
                                    978 ;	../UI_Manager/Display_Manager/display.c:105: return CHAR_a;
      001C3E 75 82 86         [24]  979 	mov	dpl,#0x86
      001C41 22               [24]  980 	ret
                                    981 ;	../UI_Manager/Display_Manager/display.c:106: case 'B':
      001C42                        982 00103$:
                                    983 ;	../UI_Manager/Display_Manager/display.c:107: return CHAR_B;
      001C42 75 82 42         [24]  984 	mov	dpl,#0x42
      001C45 22               [24]  985 	ret
                                    986 ;	../UI_Manager/Display_Manager/display.c:108: case 'b':
      001C46                        987 00104$:
                                    988 ;	../UI_Manager/Display_Manager/display.c:109: return CHAR_b;
      001C46 75 82 46         [24]  989 	mov	dpl,#0x46
      001C49 22               [24]  990 	ret
                                    991 ;	../UI_Manager/Display_Manager/display.c:110: case 'C':
      001C4A                        992 00105$:
                                    993 ;	../UI_Manager/Display_Manager/display.c:111: return CHAR_C;
      001C4A 75 82 C2         [24]  994 	mov	dpl,#0xc2
      001C4D 22               [24]  995 	ret
                                    996 ;	../UI_Manager/Display_Manager/display.c:112: case 'c':
      001C4E                        997 00106$:
                                    998 ;	../UI_Manager/Display_Manager/display.c:113: return CHAR_c;
      001C4E 75 82 C6         [24]  999 	mov	dpl,#0xc6
      001C51 22               [24] 1000 	ret
                                   1001 ;	../UI_Manager/Display_Manager/display.c:114: case 'D':
      001C52                       1002 00107$:
                                   1003 ;	../UI_Manager/Display_Manager/display.c:115: return CHAR_D;
      001C52 75 82 22         [24] 1004 	mov	dpl,#0x22
      001C55 22               [24] 1005 	ret
                                   1006 ;	../UI_Manager/Display_Manager/display.c:116: case 'd':
      001C56                       1007 00108$:
                                   1008 ;	../UI_Manager/Display_Manager/display.c:117: return CHAR_d;
      001C56 75 82 26         [24] 1009 	mov	dpl,#0x26
      001C59 22               [24] 1010 	ret
                                   1011 ;	../UI_Manager/Display_Manager/display.c:118: case 'E':
      001C5A                       1012 00109$:
                                   1013 ;	../UI_Manager/Display_Manager/display.c:119: return CHAR_E;
      001C5A 75 82 A2         [24] 1014 	mov	dpl,#0xa2
      001C5D 22               [24] 1015 	ret
                                   1016 ;	../UI_Manager/Display_Manager/display.c:120: case 'e':
      001C5E                       1017 00110$:
                                   1018 ;	../UI_Manager/Display_Manager/display.c:121: return CHAR_e;
      001C5E 75 82 A6         [24] 1019 	mov	dpl,#0xa6
      001C61 22               [24] 1020 	ret
                                   1021 ;	../UI_Manager/Display_Manager/display.c:122: case 'F':
      001C62                       1022 00111$:
                                   1023 ;	../UI_Manager/Display_Manager/display.c:123: return CHAR_F;
      001C62 75 82 62         [24] 1024 	mov	dpl,#0x62
      001C65 22               [24] 1025 	ret
                                   1026 ;	../UI_Manager/Display_Manager/display.c:124: case 'f':
      001C66                       1027 00112$:
                                   1028 ;	../UI_Manager/Display_Manager/display.c:125: return CHAR_f;
      001C66 75 82 66         [24] 1029 	mov	dpl,#0x66
      001C69 22               [24] 1030 	ret
                                   1031 ;	../UI_Manager/Display_Manager/display.c:126: case 'G':
      001C6A                       1032 00113$:
                                   1033 ;	../UI_Manager/Display_Manager/display.c:127: return CHAR_G;
      001C6A 75 82 E2         [24] 1034 	mov	dpl,#0xe2
      001C6D 22               [24] 1035 	ret
                                   1036 ;	../UI_Manager/Display_Manager/display.c:128: case 'g':
      001C6E                       1037 00114$:
                                   1038 ;	../UI_Manager/Display_Manager/display.c:129: return CHAR_g;
      001C6E 75 82 E6         [24] 1039 	mov	dpl,#0xe6
      001C71 22               [24] 1040 	ret
                                   1041 ;	../UI_Manager/Display_Manager/display.c:130: case 'H':
      001C72                       1042 00115$:
                                   1043 ;	../UI_Manager/Display_Manager/display.c:131: return CHAR_H;
      001C72 75 82 12         [24] 1044 	mov	dpl,#0x12
      001C75 22               [24] 1045 	ret
                                   1046 ;	../UI_Manager/Display_Manager/display.c:132: case 'h':
      001C76                       1047 00116$:
                                   1048 ;	../UI_Manager/Display_Manager/display.c:133: return CHAR_h;
      001C76 75 82 16         [24] 1049 	mov	dpl,#0x16
      001C79 22               [24] 1050 	ret
                                   1051 ;	../UI_Manager/Display_Manager/display.c:134: case 'I':
      001C7A                       1052 00117$:
                                   1053 ;	../UI_Manager/Display_Manager/display.c:135: return CHAR_I;
      001C7A 75 82 92         [24] 1054 	mov	dpl,#0x92
      001C7D 22               [24] 1055 	ret
                                   1056 ;	../UI_Manager/Display_Manager/display.c:136: case 'i':
      001C7E                       1057 00118$:
                                   1058 ;	../UI_Manager/Display_Manager/display.c:137: return CHAR_i;
      001C7E 75 82 96         [24] 1059 	mov	dpl,#0x96
      001C81 22               [24] 1060 	ret
                                   1061 ;	../UI_Manager/Display_Manager/display.c:138: case 'J':
      001C82                       1062 00119$:
                                   1063 ;	../UI_Manager/Display_Manager/display.c:139: return CHAR_J;
      001C82 75 82 52         [24] 1064 	mov	dpl,#0x52
      001C85 22               [24] 1065 	ret
                                   1066 ;	../UI_Manager/Display_Manager/display.c:140: case 'j':
      001C86                       1067 00120$:
                                   1068 ;	../UI_Manager/Display_Manager/display.c:141: return CHAR_j;
      001C86 75 82 56         [24] 1069 	mov	dpl,#0x56
      001C89 22               [24] 1070 	ret
                                   1071 ;	../UI_Manager/Display_Manager/display.c:142: case 'K':
      001C8A                       1072 00121$:
                                   1073 ;	../UI_Manager/Display_Manager/display.c:143: return CHAR_K;
      001C8A 75 82 D2         [24] 1074 	mov	dpl,#0xd2
      001C8D 22               [24] 1075 	ret
                                   1076 ;	../UI_Manager/Display_Manager/display.c:144: case 'k':
      001C8E                       1077 00122$:
                                   1078 ;	../UI_Manager/Display_Manager/display.c:145: return CHAR_k;
      001C8E 75 82 D6         [24] 1079 	mov	dpl,#0xd6
      001C91 22               [24] 1080 	ret
                                   1081 ;	../UI_Manager/Display_Manager/display.c:146: case 'L':
      001C92                       1082 00123$:
                                   1083 ;	../UI_Manager/Display_Manager/display.c:147: return CHAR_L;
      001C92 75 82 32         [24] 1084 	mov	dpl,#0x32
      001C95 22               [24] 1085 	ret
                                   1086 ;	../UI_Manager/Display_Manager/display.c:148: case 'l':
      001C96                       1087 00124$:
                                   1088 ;	../UI_Manager/Display_Manager/display.c:149: return CHAR_l;
      001C96 75 82 36         [24] 1089 	mov	dpl,#0x36
      001C99 22               [24] 1090 	ret
                                   1091 ;	../UI_Manager/Display_Manager/display.c:150: case 'M':
      001C9A                       1092 00125$:
                                   1093 ;	../UI_Manager/Display_Manager/display.c:151: return CHAR_M;
      001C9A 75 82 B2         [24] 1094 	mov	dpl,#0xb2
      001C9D 22               [24] 1095 	ret
                                   1096 ;	../UI_Manager/Display_Manager/display.c:152: case 'm':
      001C9E                       1097 00126$:
                                   1098 ;	../UI_Manager/Display_Manager/display.c:153: return CHAR_m;
      001C9E 75 82 B6         [24] 1099 	mov	dpl,#0xb6
      001CA1 22               [24] 1100 	ret
                                   1101 ;	../UI_Manager/Display_Manager/display.c:154: case 'N':
      001CA2                       1102 00127$:
                                   1103 ;	../UI_Manager/Display_Manager/display.c:155: return CHAR_N;
      001CA2 75 82 72         [24] 1104 	mov	dpl,#0x72
      001CA5 22               [24] 1105 	ret
                                   1106 ;	../UI_Manager/Display_Manager/display.c:156: case 'n':
      001CA6                       1107 00128$:
                                   1108 ;	../UI_Manager/Display_Manager/display.c:157: return CHAR_n;
      001CA6 75 82 76         [24] 1109 	mov	dpl,#0x76
      001CA9 22               [24] 1110 	ret
                                   1111 ;	../UI_Manager/Display_Manager/display.c:158: case 'O':
      001CAA                       1112 00129$:
                                   1113 ;	../UI_Manager/Display_Manager/display.c:159: return CHAR_O;
      001CAA 75 82 F2         [24] 1114 	mov	dpl,#0xf2
      001CAD 22               [24] 1115 	ret
                                   1116 ;	../UI_Manager/Display_Manager/display.c:160: case 'o':
      001CAE                       1117 00130$:
                                   1118 ;	../UI_Manager/Display_Manager/display.c:161: return CHAR_o;
      001CAE 75 82 F6         [24] 1119 	mov	dpl,#0xf6
      001CB1 22               [24] 1120 	ret
                                   1121 ;	../UI_Manager/Display_Manager/display.c:162: case 'P':
      001CB2                       1122 00131$:
                                   1123 ;	../UI_Manager/Display_Manager/display.c:163: return CHAR_P;
      001CB2 75 82 0A         [24] 1124 	mov	dpl,#0x0a
      001CB5 22               [24] 1125 	ret
                                   1126 ;	../UI_Manager/Display_Manager/display.c:164: case 'p':
      001CB6                       1127 00132$:
                                   1128 ;	../UI_Manager/Display_Manager/display.c:165: return CHAR_p;
      001CB6 75 82 0E         [24] 1129 	mov	dpl,#0x0e
      001CB9 22               [24] 1130 	ret
                                   1131 ;	../UI_Manager/Display_Manager/display.c:166: case 'Q':
      001CBA                       1132 00133$:
                                   1133 ;	../UI_Manager/Display_Manager/display.c:167: return CHAR_Q;
      001CBA 75 82 8A         [24] 1134 	mov	dpl,#0x8a
      001CBD 22               [24] 1135 	ret
                                   1136 ;	../UI_Manager/Display_Manager/display.c:168: case 'q':
      001CBE                       1137 00134$:
                                   1138 ;	../UI_Manager/Display_Manager/display.c:169: return CHAR_q;
      001CBE 75 82 8E         [24] 1139 	mov	dpl,#0x8e
      001CC1 22               [24] 1140 	ret
                                   1141 ;	../UI_Manager/Display_Manager/display.c:170: case 'R':
      001CC2                       1142 00135$:
                                   1143 ;	../UI_Manager/Display_Manager/display.c:171: return CHAR_R;
      001CC2 75 82 4A         [24] 1144 	mov	dpl,#0x4a
      001CC5 22               [24] 1145 	ret
                                   1146 ;	../UI_Manager/Display_Manager/display.c:172: case 'r':
      001CC6                       1147 00136$:
                                   1148 ;	../UI_Manager/Display_Manager/display.c:173: return CHAR_r;
      001CC6 75 82 4E         [24] 1149 	mov	dpl,#0x4e
      001CC9 22               [24] 1150 	ret
                                   1151 ;	../UI_Manager/Display_Manager/display.c:174: case 'S':
      001CCA                       1152 00137$:
                                   1153 ;	../UI_Manager/Display_Manager/display.c:175: return CHAR_S;
      001CCA 75 82 CA         [24] 1154 	mov	dpl,#0xca
      001CCD 22               [24] 1155 	ret
                                   1156 ;	../UI_Manager/Display_Manager/display.c:176: case 's':
      001CCE                       1157 00138$:
                                   1158 ;	../UI_Manager/Display_Manager/display.c:177: return CHAR_s;
      001CCE 75 82 CE         [24] 1159 	mov	dpl,#0xce
      001CD1 22               [24] 1160 	ret
                                   1161 ;	../UI_Manager/Display_Manager/display.c:178: case 'T':
      001CD2                       1162 00139$:
                                   1163 ;	../UI_Manager/Display_Manager/display.c:179: return CHAR_T;
      001CD2 75 82 2A         [24] 1164 	mov	dpl,#0x2a
      001CD5 22               [24] 1165 	ret
                                   1166 ;	../UI_Manager/Display_Manager/display.c:180: case 't':
      001CD6                       1167 00140$:
                                   1168 ;	../UI_Manager/Display_Manager/display.c:181: return CHAR_t;
      001CD6 75 82 2E         [24] 1169 	mov	dpl,#0x2e
      001CD9 22               [24] 1170 	ret
                                   1171 ;	../UI_Manager/Display_Manager/display.c:182: case 'U':
      001CDA                       1172 00141$:
                                   1173 ;	../UI_Manager/Display_Manager/display.c:183: return CHAR_U;
      001CDA 75 82 AA         [24] 1174 	mov	dpl,#0xaa
      001CDD 22               [24] 1175 	ret
                                   1176 ;	../UI_Manager/Display_Manager/display.c:184: case 'u':
      001CDE                       1177 00142$:
                                   1178 ;	../UI_Manager/Display_Manager/display.c:185: return CHAR_u;
      001CDE 75 82 AE         [24] 1179 	mov	dpl,#0xae
      001CE1 22               [24] 1180 	ret
                                   1181 ;	../UI_Manager/Display_Manager/display.c:186: case 'V':
      001CE2                       1182 00143$:
                                   1183 ;	../UI_Manager/Display_Manager/display.c:187: return CHAR_V;
      001CE2 75 82 6A         [24] 1184 	mov	dpl,#0x6a
      001CE5 22               [24] 1185 	ret
                                   1186 ;	../UI_Manager/Display_Manager/display.c:188: case 'v':
      001CE6                       1187 00144$:
                                   1188 ;	../UI_Manager/Display_Manager/display.c:189: return CHAR_v;
      001CE6 75 82 6E         [24] 1189 	mov	dpl,#0x6e
      001CE9 22               [24] 1190 	ret
                                   1191 ;	../UI_Manager/Display_Manager/display.c:190: case 'W':
      001CEA                       1192 00145$:
                                   1193 ;	../UI_Manager/Display_Manager/display.c:191: return CHAR_W;
      001CEA 75 82 EA         [24] 1194 	mov	dpl,#0xea
                                   1195 ;	../UI_Manager/Display_Manager/display.c:192: case 'w':
      001CED 22               [24] 1196 	ret
      001CEE                       1197 00146$:
                                   1198 ;	../UI_Manager/Display_Manager/display.c:193: return CHAR_w;
      001CEE 75 82 EE         [24] 1199 	mov	dpl,#0xee
                                   1200 ;	../UI_Manager/Display_Manager/display.c:194: case 'X':
      001CF1 22               [24] 1201 	ret
      001CF2                       1202 00147$:
                                   1203 ;	../UI_Manager/Display_Manager/display.c:195: return CHAR_X;
      001CF2 75 82 1A         [24] 1204 	mov	dpl,#0x1a
                                   1205 ;	../UI_Manager/Display_Manager/display.c:196: case 'x':
      001CF5 22               [24] 1206 	ret
      001CF6                       1207 00148$:
                                   1208 ;	../UI_Manager/Display_Manager/display.c:197: return CHAR_x;
      001CF6 75 82 1E         [24] 1209 	mov	dpl,#0x1e
                                   1210 ;	../UI_Manager/Display_Manager/display.c:198: case 'Y':
      001CF9 22               [24] 1211 	ret
      001CFA                       1212 00149$:
                                   1213 ;	../UI_Manager/Display_Manager/display.c:199: return CHAR_Y;
      001CFA 75 82 9A         [24] 1214 	mov	dpl,#0x9a
                                   1215 ;	../UI_Manager/Display_Manager/display.c:200: case 'y':
      001CFD 22               [24] 1216 	ret
      001CFE                       1217 00150$:
                                   1218 ;	../UI_Manager/Display_Manager/display.c:201: return CHAR_y;
      001CFE 75 82 9E         [24] 1219 	mov	dpl,#0x9e
                                   1220 ;	../UI_Manager/Display_Manager/display.c:202: case 'Z':
      001D01 22               [24] 1221 	ret
      001D02                       1222 00151$:
                                   1223 ;	../UI_Manager/Display_Manager/display.c:203: return CHAR_Z;
      001D02 75 82 5A         [24] 1224 	mov	dpl,#0x5a
                                   1225 ;	../UI_Manager/Display_Manager/display.c:204: case 'z':
      001D05 22               [24] 1226 	ret
      001D06                       1227 00152$:
                                   1228 ;	../UI_Manager/Display_Manager/display.c:205: return CHAR_z;
      001D06 75 82 5E         [24] 1229 	mov	dpl,#0x5e
                                   1230 ;	../UI_Manager/Display_Manager/display.c:206: case '0':
      001D09 22               [24] 1231 	ret
      001D0A                       1232 00153$:
                                   1233 ;	../UI_Manager/Display_Manager/display.c:207: return CHAR_0;
      001D0A 75 82 0C         [24] 1234 	mov	dpl,#0x0c
                                   1235 ;	../UI_Manager/Display_Manager/display.c:208: case '1':
      001D0D 22               [24] 1236 	ret
      001D0E                       1237 00154$:
                                   1238 ;	../UI_Manager/Display_Manager/display.c:209: return CHAR_1;
      001D0E 75 82 8C         [24] 1239 	mov	dpl,#0x8c
                                   1240 ;	../UI_Manager/Display_Manager/display.c:210: case '2':
      001D11 22               [24] 1241 	ret
      001D12                       1242 00155$:
                                   1243 ;	../UI_Manager/Display_Manager/display.c:211: return CHAR_2;
      001D12 75 82 4C         [24] 1244 	mov	dpl,#0x4c
                                   1245 ;	../UI_Manager/Display_Manager/display.c:212: case '3':
      001D15 22               [24] 1246 	ret
      001D16                       1247 00156$:
                                   1248 ;	../UI_Manager/Display_Manager/display.c:213: return CHAR_3;
      001D16 75 82 CC         [24] 1249 	mov	dpl,#0xcc
                                   1250 ;	../UI_Manager/Display_Manager/display.c:214: case '4':
      001D19 22               [24] 1251 	ret
      001D1A                       1252 00157$:
                                   1253 ;	../UI_Manager/Display_Manager/display.c:215: return CHAR_4;
      001D1A 75 82 2C         [24] 1254 	mov	dpl,#0x2c
                                   1255 ;	../UI_Manager/Display_Manager/display.c:216: case '5':
      001D1D 22               [24] 1256 	ret
      001D1E                       1257 00158$:
                                   1258 ;	../UI_Manager/Display_Manager/display.c:217: return CHAR_5;
      001D1E 75 82 AC         [24] 1259 	mov	dpl,#0xac
                                   1260 ;	../UI_Manager/Display_Manager/display.c:218: case '6':
      001D21 22               [24] 1261 	ret
      001D22                       1262 00159$:
                                   1263 ;	../UI_Manager/Display_Manager/display.c:219: return CHAR_6;
      001D22 75 82 6C         [24] 1264 	mov	dpl,#0x6c
                                   1265 ;	../UI_Manager/Display_Manager/display.c:220: case '7':
      001D25 22               [24] 1266 	ret
      001D26                       1267 00160$:
                                   1268 ;	../UI_Manager/Display_Manager/display.c:221: return CHAR_7;
      001D26 75 82 EC         [24] 1269 	mov	dpl,#0xec
                                   1270 ;	../UI_Manager/Display_Manager/display.c:222: case '8':
      001D29 22               [24] 1271 	ret
      001D2A                       1272 00161$:
                                   1273 ;	../UI_Manager/Display_Manager/display.c:223: return CHAR_8;
      001D2A 75 82 1C         [24] 1274 	mov	dpl,#0x1c
                                   1275 ;	../UI_Manager/Display_Manager/display.c:224: case '9':
      001D2D 22               [24] 1276 	ret
      001D2E                       1277 00162$:
                                   1278 ;	../UI_Manager/Display_Manager/display.c:225: return CHAR_9;
      001D2E 75 82 9C         [24] 1279 	mov	dpl,#0x9c
                                   1280 ;	../UI_Manager/Display_Manager/display.c:226: case '+':
      001D31 22               [24] 1281 	ret
      001D32                       1282 00163$:
                                   1283 ;	../UI_Manager/Display_Manager/display.c:227: return CHAR_PLUS;
      001D32 75 82 D4         [24] 1284 	mov	dpl,#0xd4
                                   1285 ;	../UI_Manager/Display_Manager/display.c:228: case '&':
      001D35 22               [24] 1286 	ret
      001D36                       1287 00164$:
                                   1288 ;	../UI_Manager/Display_Manager/display.c:229: return CHAR_AND;
      001D36 75 82 64         [24] 1289 	mov	dpl,#0x64
                                   1290 ;	../UI_Manager/Display_Manager/display.c:230: case ';':
      001D39 22               [24] 1291 	ret
      001D3A                       1292 00165$:
                                   1293 ;	../UI_Manager/Display_Manager/display.c:231: return CHAR_STAR_7;
      001D3A 75 82 60         [24] 1294 	mov	dpl,#0x60
                                   1295 ;	../UI_Manager/Display_Manager/display.c:232: }
      001D3D 22               [24] 1296 	ret
      001D3E                       1297 00166$:
                                   1298 ;	../UI_Manager/Display_Manager/display.c:234: return CHAR_NULL;
      001D3E 75 82 04         [24] 1299 	mov	dpl,#0x04
                                   1300 ;	../UI_Manager/Display_Manager/display.c:235: }
      001D41 22               [24] 1301 	ret
                                   1302 ;------------------------------------------------------------
                                   1303 ;Allocation info for local variables in function 'writeShiftReg'
                                   1304 ;------------------------------------------------------------
                                   1305 ;value                     Allocated to registers r6 r7 
                                   1306 ;i                         Allocated to registers r5 
                                   1307 ;------------------------------------------------------------
                                   1308 ;	../UI_Manager/Display_Manager/display.c:240: void writeShiftReg(uint16_t value){
                                   1309 ;	-----------------------------------------
                                   1310 ;	 function writeShiftReg
                                   1311 ;	-----------------------------------------
      001D42                       1312 _writeShiftReg:
      001D42 AE 82            [24] 1313 	mov	r6,dpl
      001D44 AF 83            [24] 1314 	mov	r7,dph
                                   1315 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      001D46 7D 04            [12] 1316 	mov	r5,#0x04
      001D48                       1317 00102$:
                                   1318 ;	../UI_Manager/Display_Manager/display.c:244: SER = value & (1 << i);
      001D48 8D F0            [24] 1319 	mov	b,r5
      001D4A 05 F0            [12] 1320 	inc	b
      001D4C 7B 01            [12] 1321 	mov	r3,#0x01
      001D4E 7C 00            [12] 1322 	mov	r4,#0x00
      001D50 80 06            [24] 1323 	sjmp	00116$
      001D52                       1324 00115$:
      001D52 EB               [12] 1325 	mov	a,r3
      001D53 2B               [12] 1326 	add	a,r3
      001D54 FB               [12] 1327 	mov	r3,a
      001D55 EC               [12] 1328 	mov	a,r4
      001D56 33               [12] 1329 	rlc	a
      001D57 FC               [12] 1330 	mov	r4,a
      001D58                       1331 00116$:
      001D58 D5 F0 F7         [24] 1332 	djnz	b,00115$
      001D5B EE               [12] 1333 	mov	a,r6
      001D5C 52 03            [12] 1334 	anl	ar3,a
      001D5E EF               [12] 1335 	mov	a,r7
      001D5F 52 04            [12] 1336 	anl	ar4,a
                                   1337 ;	assignBit
      001D61 EB               [12] 1338 	mov	a,r3
      001D62 4C               [12] 1339 	orl	a,r4
      001D63 24 FF            [12] 1340 	add	a,#0xff
      001D65 92 95            [24] 1341 	mov	_SER,c
                                   1342 ;	../UI_Manager/Display_Manager/display.c:247: SCK = 1;
                                   1343 ;	assignBit
      001D67 D2 93            [12] 1344 	setb	_SCK
                                   1345 ;	../UI_Manager/Display_Manager/display.c:248: SCK = 0;
                                   1346 ;	assignBit
      001D69 C2 93            [12] 1347 	clr	_SCK
                                   1348 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      001D6B 0D               [12] 1349 	inc	r5
      001D6C BD 10 00         [24] 1350 	cjne	r5,#0x10,00117$
      001D6F                       1351 00117$:
      001D6F 40 D7            [24] 1352 	jc	00102$
                                   1353 ;	../UI_Manager/Display_Manager/display.c:250: RCK = 1;
                                   1354 ;	assignBit
      001D71 D2 92            [12] 1355 	setb	_RCK
                                   1356 ;	../UI_Manager/Display_Manager/display.c:251: RCK = 0;
                                   1357 ;	assignBit
      001D73 C2 92            [12] 1358 	clr	_RCK
                                   1359 ;	../UI_Manager/Display_Manager/display.c:252: }
      001D75 22               [24] 1360 	ret
                                   1361 ;------------------------------------------------------------
                                   1362 ;Allocation info for local variables in function 'flipByte'
                                   1363 ;------------------------------------------------------------
                                   1364 ;line                      Allocated to registers r7 
                                   1365 ;i                         Allocated to registers r5 
                                   1366 ;temp                      Allocated to registers r6 
                                   1367 ;------------------------------------------------------------
                                   1368 ;	../UI_Manager/Display_Manager/display.c:255: uint8_t flipByte(uint8_t line){
                                   1369 ;	-----------------------------------------
                                   1370 ;	 function flipByte
                                   1371 ;	-----------------------------------------
      001D76                       1372 _flipByte:
      001D76 AF 82            [24] 1373 	mov	r7,dpl
                                   1374 ;	../UI_Manager/Display_Manager/display.c:256: uint8_t i, temp = 0;
      001D78 7E 00            [12] 1375 	mov	r6,#0x00
                                   1376 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      001D7A 7D 00            [12] 1377 	mov	r5,#0x00
      001D7C                       1378 00102$:
                                   1379 ;	../UI_Manager/Display_Manager/display.c:259: temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
      001D7C 8D F0            [24] 1380 	mov	b,r5
      001D7E 05 F0            [12] 1381 	inc	b
      001D80 7B 80            [12] 1382 	mov	r3,#0x80
      001D82 E4               [12] 1383 	clr	a
      001D83 FC               [12] 1384 	mov	r4,a
      001D84 33               [12] 1385 	rlc	a
      001D85 92 D2            [24] 1386 	mov	ov,c
      001D87 80 08            [24] 1387 	sjmp	00122$
      001D89                       1388 00121$:
      001D89 A2 D2            [12] 1389 	mov	c,ov
      001D8B EC               [12] 1390 	mov	a,r4
      001D8C 13               [12] 1391 	rrc	a
      001D8D FC               [12] 1392 	mov	r4,a
      001D8E EB               [12] 1393 	mov	a,r3
      001D8F 13               [12] 1394 	rrc	a
      001D90 FB               [12] 1395 	mov	r3,a
      001D91                       1396 00122$:
      001D91 D5 F0 F5         [24] 1397 	djnz	b,00121$
      001D94 8F 01            [24] 1398 	mov	ar1,r7
      001D96 7A 00            [12] 1399 	mov	r2,#0x00
      001D98 E9               [12] 1400 	mov	a,r1
      001D99 52 03            [12] 1401 	anl	ar3,a
      001D9B EA               [12] 1402 	mov	a,r2
      001D9C 52 04            [12] 1403 	anl	ar4,a
      001D9E EB               [12] 1404 	mov	a,r3
      001D9F 4C               [12] 1405 	orl	a,r4
      001DA0 60 06            [24] 1406 	jz	00106$
      001DA2 7B 01            [12] 1407 	mov	r3,#0x01
      001DA4 7C 00            [12] 1408 	mov	r4,#0x00
      001DA6 80 04            [24] 1409 	sjmp	00107$
      001DA8                       1410 00106$:
      001DA8 7B 00            [12] 1411 	mov	r3,#0x00
      001DAA 7C 00            [12] 1412 	mov	r4,#0x00
      001DAC                       1413 00107$:
      001DAC 8D 04            [24] 1414 	mov	ar4,r5
      001DAE 8C F0            [24] 1415 	mov	b,r4
      001DB0 05 F0            [12] 1416 	inc	b
      001DB2 EB               [12] 1417 	mov	a,r3
      001DB3 80 02            [24] 1418 	sjmp	00126$
      001DB5                       1419 00124$:
      001DB5 25 E0            [12] 1420 	add	a,acc
      001DB7                       1421 00126$:
      001DB7 D5 F0 FB         [24] 1422 	djnz	b,00124$
      001DBA 8E 04            [24] 1423 	mov	ar4,r6
      001DBC 4C               [12] 1424 	orl	a,r4
      001DBD FE               [12] 1425 	mov	r6,a
                                   1426 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      001DBE 0D               [12] 1427 	inc	r5
      001DBF BD 08 00         [24] 1428 	cjne	r5,#0x08,00127$
      001DC2                       1429 00127$:
      001DC2 40 B8            [24] 1430 	jc	00102$
                                   1431 ;	../UI_Manager/Display_Manager/display.c:262: return temp;
      001DC4 8E 82            [24] 1432 	mov	dpl,r6
                                   1433 ;	../UI_Manager/Display_Manager/display.c:263: }
      001DC6 22               [24] 1434 	ret
                                   1435 	.area CSEG    (CODE)
                                   1436 	.area CONST   (CODE)
                                   1437 	.area XINIT   (CODE)
                                   1438 	.area CABS    (ABS,CODE)
