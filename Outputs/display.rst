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
      001863                        312 _write_string:
                           000007   313 	ar7 = 0x07
                           000006   314 	ar6 = 0x06
                           000005   315 	ar5 = 0x05
                           000004   316 	ar4 = 0x04
                           000003   317 	ar3 = 0x03
                           000002   318 	ar2 = 0x02
                           000001   319 	ar1 = 0x01
                           000000   320 	ar0 = 0x00
      001863 AD 82            [24]  321 	mov	r5,dpl
      001865 AE 83            [24]  322 	mov	r6,dph
      001867 AF F0            [24]  323 	mov	r7,b
                                    324 ;	../UI_Manager/Display_Manager/display.c:17: uint8_t i, done = 0;
      001869 7C 00            [12]  325 	mov	r4,#0x00
                                    326 ;	../UI_Manager/Display_Manager/display.c:20: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      00186B E5 23            [12]  327 	mov	a,_write_string_PARM_4
      00186D 60 08            [24]  328 	jz	00115$
      00186F AB 22            [24]  329 	mov	r3,_write_string_PARM_3
      001871 74 40            [12]  330 	mov	a,#0x40
      001873 2B               [12]  331 	add	a,r3
      001874 FB               [12]  332 	mov	r3,a
      001875 80 02            [24]  333 	sjmp	00116$
      001877                        334 00115$:
      001877 AB 22            [24]  335 	mov	r3,_write_string_PARM_3
      001879                        336 00116$:
      001879 8B 82            [24]  337 	mov	dpl,r3
      00187B C0 07            [24]  338 	push	ar7
      00187D C0 06            [24]  339 	push	ar6
      00187F C0 05            [24]  340 	push	ar5
      001881 C0 04            [24]  341 	push	ar4
      001883 12 1D 05         [24]  342 	lcall	_flipByte
      001886 AA 82            [24]  343 	mov	r2,dpl
      001888 7B 00            [12]  344 	mov	r3,#0x00
      00188A 8B 82            [24]  345 	mov	dpl,r3
      00188C 74 01            [12]  346 	mov	a,#0x01
      00188E 4A               [12]  347 	orl	a,r2
      00188F F5 83            [12]  348 	mov	dph,a
      001891 12 1A B6         [24]  349 	lcall	_exe_command
      001894 D0 04            [24]  350 	pop	ar4
      001896 D0 05            [24]  351 	pop	ar5
      001898 D0 06            [24]  352 	pop	ar6
      00189A D0 07            [24]  353 	pop	ar7
                                    354 ;	../UI_Manager/Display_Manager/display.c:22: length++; //null terminated
      00189C 05 21            [12]  355 	inc	_write_string_PARM_2
                                    356 ;	../UI_Manager/Display_Manager/display.c:24: if(selected){
      00189E E5 24            [12]  357 	mov	a,_write_string_PARM_5
      0018A0 60 16            [24]  358 	jz	00122$
                                    359 ;	../UI_Manager/Display_Manager/display.c:25: exe_command(WRITE_CURSOR);
      0018A2 90 00 80         [24]  360 	mov	dptr,#0x0080
      0018A5 C0 07            [24]  361 	push	ar7
      0018A7 C0 06            [24]  362 	push	ar6
      0018A9 C0 05            [24]  363 	push	ar5
      0018AB C0 04            [24]  364 	push	ar4
      0018AD 12 1A B6         [24]  365 	lcall	_exe_command
      0018B0 D0 04            [24]  366 	pop	ar4
      0018B2 D0 05            [24]  367 	pop	ar5
      0018B4 D0 06            [24]  368 	pop	ar6
      0018B6 D0 07            [24]  369 	pop	ar7
                                    370 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      0018B8                        371 00122$:
      0018B8 7B 00            [12]  372 	mov	r3,#0x00
      0018BA                        373 00111$:
      0018BA C3               [12]  374 	clr	c
      0018BB EB               [12]  375 	mov	a,r3
      0018BC 95 21            [12]  376 	subb	a,_write_string_PARM_2
      0018BE 40 01            [24]  377 	jc	00144$
      0018C0 22               [24]  378 	ret
      0018C1                        379 00144$:
                                    380 ;	../UI_Manager/Display_Manager/display.c:29: if(!done){
      0018C1 EC               [12]  381 	mov	a,r4
      0018C2 70 45            [24]  382 	jnz	00107$
                                    383 ;	../UI_Manager/Display_Manager/display.c:30: if(string[i]){
      0018C4 EB               [12]  384 	mov	a,r3
      0018C5 2D               [12]  385 	add	a,r5
      0018C6 F8               [12]  386 	mov	r0,a
      0018C7 E4               [12]  387 	clr	a
      0018C8 3E               [12]  388 	addc	a,r6
      0018C9 F9               [12]  389 	mov	r1,a
      0018CA 8F 02            [24]  390 	mov	ar2,r7
      0018CC 88 82            [24]  391 	mov	dpl,r0
      0018CE 89 83            [24]  392 	mov	dph,r1
      0018D0 8A F0            [24]  393 	mov	b,r2
      0018D2 12 2D F1         [24]  394 	lcall	__gptrget
      0018D5 FA               [12]  395 	mov	r2,a
      0018D6 60 2D            [24]  396 	jz	00104$
                                    397 ;	../UI_Manager/Display_Manager/display.c:31: exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
      0018D8 8A 82            [24]  398 	mov	dpl,r2
      0018DA C0 07            [24]  399 	push	ar7
      0018DC C0 06            [24]  400 	push	ar6
      0018DE C0 05            [24]  401 	push	ar5
      0018E0 C0 04            [24]  402 	push	ar4
      0018E2 C0 03            [24]  403 	push	ar3
      0018E4 12 1A FC         [24]  404 	lcall	_charToCode
      0018E7 AA 82            [24]  405 	mov	r2,dpl
      0018E9 8A 01            [24]  406 	mov	ar1,r2
      0018EB 89 02            [24]  407 	mov	ar2,r1
      0018ED 79 00            [12]  408 	mov	r1,#0x00
      0018EF 74 80            [12]  409 	mov	a,#0x80
      0018F1 49               [12]  410 	orl	a,r1
      0018F2 F5 82            [12]  411 	mov	dpl,a
      0018F4 8A 83            [24]  412 	mov	dph,r2
      0018F6 12 1A B6         [24]  413 	lcall	_exe_command
      0018F9 D0 03            [24]  414 	pop	ar3
      0018FB D0 04            [24]  415 	pop	ar4
      0018FD D0 05            [24]  416 	pop	ar5
      0018FF D0 06            [24]  417 	pop	ar6
      001901 D0 07            [24]  418 	pop	ar7
      001903 80 1E            [24]  419 	sjmp	00112$
      001905                        420 00104$:
                                    421 ;	../UI_Manager/Display_Manager/display.c:33: done = 1;
      001905 7C 01            [12]  422 	mov	r4,#0x01
      001907 80 1A            [24]  423 	sjmp	00112$
      001909                        424 00107$:
                                    425 ;	../UI_Manager/Display_Manager/display.c:36: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001909 90 04 80         [24]  426 	mov	dptr,#0x0480
      00190C C0 07            [24]  427 	push	ar7
      00190E C0 06            [24]  428 	push	ar6
      001910 C0 05            [24]  429 	push	ar5
      001912 C0 04            [24]  430 	push	ar4
      001914 C0 03            [24]  431 	push	ar3
      001916 12 1A B6         [24]  432 	lcall	_exe_command
      001919 D0 03            [24]  433 	pop	ar3
      00191B D0 04            [24]  434 	pop	ar4
      00191D D0 05            [24]  435 	pop	ar5
      00191F D0 06            [24]  436 	pop	ar6
      001921 D0 07            [24]  437 	pop	ar7
      001923                        438 00112$:
                                    439 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001923 0B               [12]  440 	inc	r3
                                    441 ;	../UI_Manager/Display_Manager/display.c:39: }
      001924 02 18 BA         [24]  442 	ljmp	00111$
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
      001927                        458 _write_number:
      001927 AE 82            [24]  459 	mov	r6,dpl
      001929 AF 83            [24]  460 	mov	r7,dph
                                    461 ;	../UI_Manager/Display_Manager/display.c:42: uint8_t higherNumberPresent = 0;
      00192B 7D 00            [12]  462 	mov	r5,#0x00
                                    463 ;	../UI_Manager/Display_Manager/display.c:44: uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};
      00192D 75 28 04         [24]  464 	mov	_write_number_chars_65536_18,#0x04
      001930 75 29 04         [24]  465 	mov	(_write_number_chars_65536_18 + 0x0001),#0x04
      001933 75 2A 0C         [24]  466 	mov	(_write_number_chars_65536_18 + 0x0002),#0x0c
                                    467 ;	../UI_Manager/Display_Manager/display.c:46: if(number >= 1000) {number = 999;}
      001936 C3               [12]  468 	clr	c
      001937 EE               [12]  469 	mov	a,r6
      001938 94 E8            [12]  470 	subb	a,#0xe8
      00193A EF               [12]  471 	mov	a,r7
      00193B 94 03            [12]  472 	subb	a,#0x03
      00193D 40 04            [24]  473 	jc	00102$
      00193F 7E E7            [12]  474 	mov	r6,#0xe7
      001941 7F 03            [12]  475 	mov	r7,#0x03
      001943                        476 00102$:
                                    477 ;	../UI_Manager/Display_Manager/display.c:48: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001943 E5 26            [12]  478 	mov	a,_write_number_PARM_3
      001945 60 08            [24]  479 	jz	00113$
      001947 AC 25            [24]  480 	mov	r4,_write_number_PARM_2
      001949 74 40            [12]  481 	mov	a,#0x40
      00194B 2C               [12]  482 	add	a,r4
      00194C FC               [12]  483 	mov	r4,a
      00194D 80 02            [24]  484 	sjmp	00114$
      00194F                        485 00113$:
      00194F AC 25            [24]  486 	mov	r4,_write_number_PARM_2
      001951                        487 00114$:
      001951 8C 82            [24]  488 	mov	dpl,r4
      001953 C0 07            [24]  489 	push	ar7
      001955 C0 06            [24]  490 	push	ar6
      001957 C0 05            [24]  491 	push	ar5
      001959 12 1D 05         [24]  492 	lcall	_flipByte
      00195C AB 82            [24]  493 	mov	r3,dpl
      00195E 7C 00            [12]  494 	mov	r4,#0x00
      001960 8C 82            [24]  495 	mov	dpl,r4
      001962 74 01            [12]  496 	mov	a,#0x01
      001964 4B               [12]  497 	orl	a,r3
      001965 F5 83            [12]  498 	mov	dph,a
      001967 12 1A B6         [24]  499 	lcall	_exe_command
      00196A D0 05            [24]  500 	pop	ar5
      00196C D0 06            [24]  501 	pop	ar6
      00196E D0 07            [24]  502 	pop	ar7
                                    503 ;	../UI_Manager/Display_Manager/display.c:51: if(selected){
      001970 E5 27            [12]  504 	mov	a,_write_number_PARM_4
      001972 60 14            [24]  505 	jz	00104$
                                    506 ;	../UI_Manager/Display_Manager/display.c:52: exe_command(WRITE_CURSOR);
      001974 90 00 80         [24]  507 	mov	dptr,#0x0080
      001977 C0 07            [24]  508 	push	ar7
      001979 C0 06            [24]  509 	push	ar6
      00197B C0 05            [24]  510 	push	ar5
      00197D 12 1A B6         [24]  511 	lcall	_exe_command
      001980 D0 05            [24]  512 	pop	ar5
      001982 D0 06            [24]  513 	pop	ar6
      001984 D0 07            [24]  514 	pop	ar7
      001986 80 12            [24]  515 	sjmp	00105$
      001988                        516 00104$:
                                    517 ;	../UI_Manager/Display_Manager/display.c:54: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001988 90 04 80         [24]  518 	mov	dptr,#0x0480
      00198B C0 07            [24]  519 	push	ar7
      00198D C0 06            [24]  520 	push	ar6
      00198F C0 05            [24]  521 	push	ar5
      001991 12 1A B6         [24]  522 	lcall	_exe_command
      001994 D0 05            [24]  523 	pop	ar5
      001996 D0 06            [24]  524 	pop	ar6
      001998 D0 07            [24]  525 	pop	ar7
      00199A                        526 00105$:
                                    527 ;	../UI_Manager/Display_Manager/display.c:58: value = number/100;
      00199A 75 72 64         [24]  528 	mov	__divuint_PARM_2,#0x64
      00199D 75 73 00         [24]  529 	mov	(__divuint_PARM_2 + 1),#0x00
      0019A0 8E 82            [24]  530 	mov	dpl,r6
      0019A2 8F 83            [24]  531 	mov	dph,r7
      0019A4 C0 07            [24]  532 	push	ar7
      0019A6 C0 06            [24]  533 	push	ar6
      0019A8 C0 05            [24]  534 	push	ar5
      0019AA 12 2C DB         [24]  535 	lcall	__divuint
      0019AD AB 82            [24]  536 	mov	r3,dpl
      0019AF AC 83            [24]  537 	mov	r4,dph
      0019B1 D0 05            [24]  538 	pop	ar5
      0019B3 D0 06            [24]  539 	pop	ar6
      0019B5 D0 07            [24]  540 	pop	ar7
                                    541 ;	../UI_Manager/Display_Manager/display.c:59: if(value){
      0019B7 EB               [12]  542 	mov	a,r3
      0019B8 4C               [12]  543 	orl	a,r4
      0019B9 60 39            [24]  544 	jz	00107$
                                    545 ;	../UI_Manager/Display_Manager/display.c:60: chars[0] = charToCode(value + 0x30);
      0019BB 8B 02            [24]  546 	mov	ar2,r3
      0019BD 74 30            [12]  547 	mov	a,#0x30
      0019BF 2A               [12]  548 	add	a,r2
      0019C0 F5 82            [12]  549 	mov	dpl,a
      0019C2 C0 07            [24]  550 	push	ar7
      0019C4 C0 06            [24]  551 	push	ar6
      0019C6 C0 04            [24]  552 	push	ar4
      0019C8 C0 03            [24]  553 	push	ar3
      0019CA 12 1A FC         [24]  554 	lcall	_charToCode
      0019CD E5 82            [12]  555 	mov	a,dpl
      0019CF D0 03            [24]  556 	pop	ar3
      0019D1 D0 04            [24]  557 	pop	ar4
      0019D3 F5 28            [12]  558 	mov	_write_number_chars_65536_18,a
                                    559 ;	../UI_Manager/Display_Manager/display.c:61: higherNumberPresent = 1;
      0019D5 7D 01            [12]  560 	mov	r5,#0x01
                                    561 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      0019D7 8B 72            [24]  562 	mov	__mulint_PARM_2,r3
      0019D9 8C 73            [24]  563 	mov	(__mulint_PARM_2 + 1),r4
      0019DB 90 00 64         [24]  564 	mov	dptr,#0x0064
      0019DE C0 05            [24]  565 	push	ar5
      0019E0 12 2D 87         [24]  566 	lcall	__mulint
      0019E3 AB 82            [24]  567 	mov	r3,dpl
      0019E5 AC 83            [24]  568 	mov	r4,dph
      0019E7 D0 05            [24]  569 	pop	ar5
      0019E9 D0 06            [24]  570 	pop	ar6
      0019EB D0 07            [24]  571 	pop	ar7
      0019ED EE               [12]  572 	mov	a,r6
      0019EE C3               [12]  573 	clr	c
      0019EF 9B               [12]  574 	subb	a,r3
      0019F0 FE               [12]  575 	mov	r6,a
      0019F1 EF               [12]  576 	mov	a,r7
      0019F2 9C               [12]  577 	subb	a,r4
      0019F3 FF               [12]  578 	mov	r7,a
      0019F4                        579 00107$:
                                    580 ;	../UI_Manager/Display_Manager/display.c:65: value = number/10;
      0019F4 75 72 0A         [24]  581 	mov	__divuint_PARM_2,#0x0a
      0019F7 75 73 00         [24]  582 	mov	(__divuint_PARM_2 + 1),#0x00
      0019FA 8E 82            [24]  583 	mov	dpl,r6
      0019FC 8F 83            [24]  584 	mov	dph,r7
      0019FE C0 07            [24]  585 	push	ar7
      001A00 C0 06            [24]  586 	push	ar6
      001A02 C0 05            [24]  587 	push	ar5
      001A04 12 2C DB         [24]  588 	lcall	__divuint
      001A07 AB 82            [24]  589 	mov	r3,dpl
      001A09 AC 83            [24]  590 	mov	r4,dph
      001A0B D0 05            [24]  591 	pop	ar5
      001A0D D0 06            [24]  592 	pop	ar6
      001A0F D0 07            [24]  593 	pop	ar7
                                    594 ;	../UI_Manager/Display_Manager/display.c:66: if(higherNumberPresent || value){
      001A11 ED               [12]  595 	mov	a,r5
      001A12 70 04            [24]  596 	jnz	00108$
      001A14 EB               [12]  597 	mov	a,r3
      001A15 4C               [12]  598 	orl	a,r4
      001A16 60 33            [24]  599 	jz	00109$
      001A18                        600 00108$:
                                    601 ;	../UI_Manager/Display_Manager/display.c:67: chars[1] = charToCode(value + 0x30);
      001A18 8B 05            [24]  602 	mov	ar5,r3
      001A1A 74 30            [12]  603 	mov	a,#0x30
      001A1C 2D               [12]  604 	add	a,r5
      001A1D F5 82            [12]  605 	mov	dpl,a
      001A1F C0 07            [24]  606 	push	ar7
      001A21 C0 06            [24]  607 	push	ar6
      001A23 C0 04            [24]  608 	push	ar4
      001A25 C0 03            [24]  609 	push	ar3
      001A27 12 1A FC         [24]  610 	lcall	_charToCode
      001A2A E5 82            [12]  611 	mov	a,dpl
      001A2C D0 03            [24]  612 	pop	ar3
      001A2E D0 04            [24]  613 	pop	ar4
      001A30 F5 29            [12]  614 	mov	(_write_number_chars_65536_18 + 0x0001),a
                                    615 ;	../UI_Manager/Display_Manager/display.c:68: number -= value*10;
      001A32 8B 72            [24]  616 	mov	__mulint_PARM_2,r3
      001A34 8C 73            [24]  617 	mov	(__mulint_PARM_2 + 1),r4
      001A36 90 00 0A         [24]  618 	mov	dptr,#0x000a
      001A39 12 2D 87         [24]  619 	lcall	__mulint
      001A3C AC 82            [24]  620 	mov	r4,dpl
      001A3E AD 83            [24]  621 	mov	r5,dph
      001A40 D0 06            [24]  622 	pop	ar6
      001A42 D0 07            [24]  623 	pop	ar7
      001A44 EE               [12]  624 	mov	a,r6
      001A45 C3               [12]  625 	clr	c
      001A46 9C               [12]  626 	subb	a,r4
      001A47 FE               [12]  627 	mov	r6,a
      001A48 EF               [12]  628 	mov	a,r7
      001A49 9D               [12]  629 	subb	a,r5
      001A4A FF               [12]  630 	mov	r7,a
      001A4B                        631 00109$:
                                    632 ;	../UI_Manager/Display_Manager/display.c:71: chars[2] = charToCode(number + 0x30);
      001A4B 74 30            [12]  633 	mov	a,#0x30
      001A4D 2E               [12]  634 	add	a,r6
      001A4E F5 82            [12]  635 	mov	dpl,a
      001A50 12 1A FC         [24]  636 	lcall	_charToCode
      001A53 E5 82            [12]  637 	mov	a,dpl
      001A55 F5 2A            [12]  638 	mov	(_write_number_chars_65536_18 + 0x0002),a
                                    639 ;	../UI_Manager/Display_Manager/display.c:73: exe_command(RAM_WRITE | (chars[0] << 8));
      001A57 AF 28            [24]  640 	mov	r7,_write_number_chars_65536_18
      001A59 7E 00            [12]  641 	mov	r6,#0x00
      001A5B 74 80            [12]  642 	mov	a,#0x80
      001A5D 4E               [12]  643 	orl	a,r6
      001A5E F5 82            [12]  644 	mov	dpl,a
      001A60 8F 83            [24]  645 	mov	dph,r7
      001A62 12 1A B6         [24]  646 	lcall	_exe_command
                                    647 ;	../UI_Manager/Display_Manager/display.c:74: exe_command(RAM_WRITE | (chars[1] << 8));
      001A65 AF 29            [24]  648 	mov	r7,(_write_number_chars_65536_18 + 0x0001)
      001A67 7E 00            [12]  649 	mov	r6,#0x00
      001A69 74 80            [12]  650 	mov	a,#0x80
      001A6B 4E               [12]  651 	orl	a,r6
      001A6C F5 82            [12]  652 	mov	dpl,a
      001A6E 8F 83            [24]  653 	mov	dph,r7
      001A70 12 1A B6         [24]  654 	lcall	_exe_command
                                    655 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001A73 AF 2A            [24]  656 	mov	r7,(_write_number_chars_65536_18 + 0x0002)
      001A75 7E 00            [12]  657 	mov	r6,#0x00
      001A77 74 80            [12]  658 	mov	a,#0x80
      001A79 4E               [12]  659 	orl	a,r6
      001A7A F5 82            [12]  660 	mov	dpl,a
      001A7C 8F 83            [24]  661 	mov	dph,r7
                                    662 ;	../UI_Manager/Display_Manager/display.c:77: }
      001A7E 02 1A B6         [24]  663 	ljmp	_exe_command
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
      001A81                        675 _write_char:
      001A81 AF 82            [24]  676 	mov	r7,dpl
                                    677 ;	../UI_Manager/Display_Manager/display.c:80: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001A83 E5 2C            [12]  678 	mov	a,_write_char_PARM_3
      001A85 60 08            [24]  679 	jz	00103$
      001A87 AE 2B            [24]  680 	mov	r6,_write_char_PARM_2
      001A89 74 40            [12]  681 	mov	a,#0x40
      001A8B 2E               [12]  682 	add	a,r6
      001A8C FE               [12]  683 	mov	r6,a
      001A8D 80 02            [24]  684 	sjmp	00104$
      001A8F                        685 00103$:
      001A8F AE 2B            [24]  686 	mov	r6,_write_char_PARM_2
      001A91                        687 00104$:
      001A91 8E 82            [24]  688 	mov	dpl,r6
      001A93 C0 07            [24]  689 	push	ar7
      001A95 12 1D 05         [24]  690 	lcall	_flipByte
      001A98 AD 82            [24]  691 	mov	r5,dpl
      001A9A 7E 00            [12]  692 	mov	r6,#0x00
      001A9C 8E 82            [24]  693 	mov	dpl,r6
      001A9E 74 01            [12]  694 	mov	a,#0x01
      001AA0 4D               [12]  695 	orl	a,r5
      001AA1 F5 83            [12]  696 	mov	dph,a
      001AA3 12 1A B6         [24]  697 	lcall	_exe_command
      001AA6 D0 07            [24]  698 	pop	ar7
                                    699 ;	../UI_Manager/Display_Manager/display.c:81: exe_command(RAM_WRITE | (command << 8));
      001AA8 8F 06            [24]  700 	mov	ar6,r7
      001AAA 7F 00            [12]  701 	mov	r7,#0x00
      001AAC 74 80            [12]  702 	mov	a,#0x80
      001AAE 4F               [12]  703 	orl	a,r7
      001AAF F5 82            [12]  704 	mov	dpl,a
      001AB1 8E 83            [24]  705 	mov	dph,r6
                                    706 ;	../UI_Manager/Display_Manager/display.c:82: }
      001AB3 02 1A B6         [24]  707 	ljmp	_exe_command
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
      001AB6                        718 _exe_command:
      001AB6 AE 82            [24]  719 	mov	r6,dpl
      001AB8 AF 83            [24]  720 	mov	r7,dph
                                    721 ;	../UI_Manager/Display_Manager/display.c:89: command |= (1 << EXE_BIT);
      001ABA 43 06 20         [24]  722 	orl	ar6,#0x20
                                    723 ;	../UI_Manager/Display_Manager/display.c:90: writeShiftReg(command); //execute
      001ABD 8E 82            [24]  724 	mov	dpl,r6
      001ABF 8F 83            [24]  725 	mov	dph,r7
      001AC1 C0 07            [24]  726 	push	ar7
      001AC3 C0 06            [24]  727 	push	ar6
      001AC5 12 1C D1         [24]  728 	lcall	_writeShiftReg
      001AC8 D0 06            [24]  729 	pop	ar6
      001ACA D0 07            [24]  730 	pop	ar7
                                    731 ;	../UI_Manager/Display_Manager/display.c:91: command &= ~(1 << EXE_BIT);
      001ACC 53 06 DF         [24]  732 	anl	ar6,#0xdf
                                    733 ;	../UI_Manager/Display_Manager/display.c:92: writeShiftReg(command); //end execution
      001ACF 8E 82            [24]  734 	mov	dpl,r6
      001AD1 8F 83            [24]  735 	mov	dph,r7
      001AD3 C0 07            [24]  736 	push	ar7
      001AD5 C0 06            [24]  737 	push	ar6
      001AD7 12 1C D1         [24]  738 	lcall	_writeShiftReg
      001ADA D0 06            [24]  739 	pop	ar6
      001ADC D0 07            [24]  740 	pop	ar7
                                    741 ;	../UI_Manager/Display_Manager/display.c:95: while(delay-- && command == CLEAR_DISPLAY){;;}
      001ADE E4               [12]  742 	clr	a
      001ADF BE 00 04         [24]  743 	cjne	r6,#0x00,00118$
      001AE2 BF 80 01         [24]  744 	cjne	r7,#0x80,00118$
      001AE5 04               [12]  745 	inc	a
      001AE6                        746 00118$:
      001AE6 FF               [12]  747 	mov	r7,a
      001AE7 7D 00            [12]  748 	mov	r5,#0x00
      001AE9 7E 03            [12]  749 	mov	r6,#0x03
      001AEB                        750 00102$:
      001AEB 8D 03            [24]  751 	mov	ar3,r5
      001AED 8E 04            [24]  752 	mov	ar4,r6
      001AEF 1D               [12]  753 	dec	r5
      001AF0 BD FF 01         [24]  754 	cjne	r5,#0xff,00120$
      001AF3 1E               [12]  755 	dec	r6
      001AF4                        756 00120$:
      001AF4 EB               [12]  757 	mov	a,r3
      001AF5 4C               [12]  758 	orl	a,r4
      001AF6 60 03            [24]  759 	jz	00105$
      001AF8 EF               [12]  760 	mov	a,r7
      001AF9 70 F0            [24]  761 	jnz	00102$
      001AFB                        762 00105$:
                                    763 ;	../UI_Manager/Display_Manager/display.c:96: }
      001AFB 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'charToCode'
                                    767 ;------------------------------------------------------------
                                    768 ;c                         Allocated to registers r7 
                                    769 ;------------------------------------------------------------
                                    770 ;	../UI_Manager/Display_Manager/display.c:100: uint8_t charToCode(char c){
                                    771 ;	-----------------------------------------
                                    772 ;	 function charToCode
                                    773 ;	-----------------------------------------
      001AFC                        774 _charToCode:
      001AFC AF 82            [24]  775 	mov	r7,dpl
                                    776 ;	../UI_Manager/Display_Manager/display.c:101: switch(c){
      001AFE BF 26 00         [24]  777 	cjne	r7,#0x26,00177$
      001B01                        778 00177$:
      001B01 50 03            [24]  779 	jnc	00178$
      001B03 02 1C CD         [24]  780 	ljmp	00166$
      001B06                        781 00178$:
      001B06 EF               [12]  782 	mov	a,r7
      001B07 24 85            [12]  783 	add	a,#0xff - 0x7a
      001B09 50 03            [24]  784 	jnc	00179$
      001B0B 02 1C CD         [24]  785 	ljmp	00166$
      001B0E                        786 00179$:
      001B0E EF               [12]  787 	mov	a,r7
      001B0F 24 DA            [12]  788 	add	a,#0xda
      001B11 FF               [12]  789 	mov	r7,a
      001B12 24 0A            [12]  790 	add	a,#(00180$-3-.)
      001B14 83               [24]  791 	movc	a,@a+pc
      001B15 F5 82            [12]  792 	mov	dpl,a
      001B17 EF               [12]  793 	mov	a,r7
      001B18 24 59            [12]  794 	add	a,#(00181$-3-.)
      001B1A 83               [24]  795 	movc	a,@a+pc
      001B1B F5 83            [12]  796 	mov	dph,a
      001B1D E4               [12]  797 	clr	a
      001B1E 73               [24]  798 	jmp	@a+dptr
      001B1F                        799 00180$:
      001B1F C5                     800 	.db	00164$
      001B20 CD                     801 	.db	00166$
      001B21 CD                     802 	.db	00166$
      001B22 CD                     803 	.db	00166$
      001B23 CD                     804 	.db	00166$
      001B24 C1                     805 	.db	00163$
      001B25 CD                     806 	.db	00166$
      001B26 CD                     807 	.db	00166$
      001B27 CD                     808 	.db	00166$
      001B28 CD                     809 	.db	00166$
      001B29 99                     810 	.db	00153$
      001B2A 9D                     811 	.db	00154$
      001B2B A1                     812 	.db	00155$
      001B2C A5                     813 	.db	00156$
      001B2D A9                     814 	.db	00157$
      001B2E AD                     815 	.db	00158$
      001B2F B1                     816 	.db	00159$
      001B30 B5                     817 	.db	00160$
      001B31 B9                     818 	.db	00161$
      001B32 BD                     819 	.db	00162$
      001B33 CD                     820 	.db	00166$
      001B34 C9                     821 	.db	00165$
      001B35 CD                     822 	.db	00166$
      001B36 CD                     823 	.db	00166$
      001B37 CD                     824 	.db	00166$
      001B38 CD                     825 	.db	00166$
      001B39 CD                     826 	.db	00166$
      001B3A C9                     827 	.db	00101$
      001B3B D1                     828 	.db	00103$
      001B3C D9                     829 	.db	00105$
      001B3D E1                     830 	.db	00107$
      001B3E E9                     831 	.db	00109$
      001B3F F1                     832 	.db	00111$
      001B40 F9                     833 	.db	00113$
      001B41 01                     834 	.db	00115$
      001B42 09                     835 	.db	00117$
      001B43 11                     836 	.db	00119$
      001B44 19                     837 	.db	00121$
      001B45 21                     838 	.db	00123$
      001B46 29                     839 	.db	00125$
      001B47 31                     840 	.db	00127$
      001B48 39                     841 	.db	00129$
      001B49 41                     842 	.db	00131$
      001B4A 49                     843 	.db	00133$
      001B4B 51                     844 	.db	00135$
      001B4C 59                     845 	.db	00137$
      001B4D 61                     846 	.db	00139$
      001B4E 69                     847 	.db	00141$
      001B4F 71                     848 	.db	00143$
      001B50 79                     849 	.db	00145$
      001B51 81                     850 	.db	00147$
      001B52 89                     851 	.db	00149$
      001B53 91                     852 	.db	00151$
      001B54 CD                     853 	.db	00166$
      001B55 CD                     854 	.db	00166$
      001B56 CD                     855 	.db	00166$
      001B57 CD                     856 	.db	00166$
      001B58 CD                     857 	.db	00166$
      001B59 CD                     858 	.db	00166$
      001B5A CD                     859 	.db	00102$
      001B5B D5                     860 	.db	00104$
      001B5C DD                     861 	.db	00106$
      001B5D E5                     862 	.db	00108$
      001B5E ED                     863 	.db	00110$
      001B5F F5                     864 	.db	00112$
      001B60 FD                     865 	.db	00114$
      001B61 05                     866 	.db	00116$
      001B62 0D                     867 	.db	00118$
      001B63 15                     868 	.db	00120$
      001B64 1D                     869 	.db	00122$
      001B65 25                     870 	.db	00124$
      001B66 2D                     871 	.db	00126$
      001B67 35                     872 	.db	00128$
      001B68 3D                     873 	.db	00130$
      001B69 45                     874 	.db	00132$
      001B6A 4D                     875 	.db	00134$
      001B6B 55                     876 	.db	00136$
      001B6C 5D                     877 	.db	00138$
      001B6D 65                     878 	.db	00140$
      001B6E 6D                     879 	.db	00142$
      001B6F 75                     880 	.db	00144$
      001B70 7D                     881 	.db	00146$
      001B71 85                     882 	.db	00148$
      001B72 8D                     883 	.db	00150$
      001B73 95                     884 	.db	00152$
      001B74                        885 00181$:
      001B74 1C                     886 	.db	00164$>>8
      001B75 1C                     887 	.db	00166$>>8
      001B76 1C                     888 	.db	00166$>>8
      001B77 1C                     889 	.db	00166$>>8
      001B78 1C                     890 	.db	00166$>>8
      001B79 1C                     891 	.db	00163$>>8
      001B7A 1C                     892 	.db	00166$>>8
      001B7B 1C                     893 	.db	00166$>>8
      001B7C 1C                     894 	.db	00166$>>8
      001B7D 1C                     895 	.db	00166$>>8
      001B7E 1C                     896 	.db	00153$>>8
      001B7F 1C                     897 	.db	00154$>>8
      001B80 1C                     898 	.db	00155$>>8
      001B81 1C                     899 	.db	00156$>>8
      001B82 1C                     900 	.db	00157$>>8
      001B83 1C                     901 	.db	00158$>>8
      001B84 1C                     902 	.db	00159$>>8
      001B85 1C                     903 	.db	00160$>>8
      001B86 1C                     904 	.db	00161$>>8
      001B87 1C                     905 	.db	00162$>>8
      001B88 1C                     906 	.db	00166$>>8
      001B89 1C                     907 	.db	00165$>>8
      001B8A 1C                     908 	.db	00166$>>8
      001B8B 1C                     909 	.db	00166$>>8
      001B8C 1C                     910 	.db	00166$>>8
      001B8D 1C                     911 	.db	00166$>>8
      001B8E 1C                     912 	.db	00166$>>8
      001B8F 1B                     913 	.db	00101$>>8
      001B90 1B                     914 	.db	00103$>>8
      001B91 1B                     915 	.db	00105$>>8
      001B92 1B                     916 	.db	00107$>>8
      001B93 1B                     917 	.db	00109$>>8
      001B94 1B                     918 	.db	00111$>>8
      001B95 1B                     919 	.db	00113$>>8
      001B96 1C                     920 	.db	00115$>>8
      001B97 1C                     921 	.db	00117$>>8
      001B98 1C                     922 	.db	00119$>>8
      001B99 1C                     923 	.db	00121$>>8
      001B9A 1C                     924 	.db	00123$>>8
      001B9B 1C                     925 	.db	00125$>>8
      001B9C 1C                     926 	.db	00127$>>8
      001B9D 1C                     927 	.db	00129$>>8
      001B9E 1C                     928 	.db	00131$>>8
      001B9F 1C                     929 	.db	00133$>>8
      001BA0 1C                     930 	.db	00135$>>8
      001BA1 1C                     931 	.db	00137$>>8
      001BA2 1C                     932 	.db	00139$>>8
      001BA3 1C                     933 	.db	00141$>>8
      001BA4 1C                     934 	.db	00143$>>8
      001BA5 1C                     935 	.db	00145$>>8
      001BA6 1C                     936 	.db	00147$>>8
      001BA7 1C                     937 	.db	00149$>>8
      001BA8 1C                     938 	.db	00151$>>8
      001BA9 1C                     939 	.db	00166$>>8
      001BAA 1C                     940 	.db	00166$>>8
      001BAB 1C                     941 	.db	00166$>>8
      001BAC 1C                     942 	.db	00166$>>8
      001BAD 1C                     943 	.db	00166$>>8
      001BAE 1C                     944 	.db	00166$>>8
      001BAF 1B                     945 	.db	00102$>>8
      001BB0 1B                     946 	.db	00104$>>8
      001BB1 1B                     947 	.db	00106$>>8
      001BB2 1B                     948 	.db	00108$>>8
      001BB3 1B                     949 	.db	00110$>>8
      001BB4 1B                     950 	.db	00112$>>8
      001BB5 1B                     951 	.db	00114$>>8
      001BB6 1C                     952 	.db	00116$>>8
      001BB7 1C                     953 	.db	00118$>>8
      001BB8 1C                     954 	.db	00120$>>8
      001BB9 1C                     955 	.db	00122$>>8
      001BBA 1C                     956 	.db	00124$>>8
      001BBB 1C                     957 	.db	00126$>>8
      001BBC 1C                     958 	.db	00128$>>8
      001BBD 1C                     959 	.db	00130$>>8
      001BBE 1C                     960 	.db	00132$>>8
      001BBF 1C                     961 	.db	00134$>>8
      001BC0 1C                     962 	.db	00136$>>8
      001BC1 1C                     963 	.db	00138$>>8
      001BC2 1C                     964 	.db	00140$>>8
      001BC3 1C                     965 	.db	00142$>>8
      001BC4 1C                     966 	.db	00144$>>8
      001BC5 1C                     967 	.db	00146$>>8
      001BC6 1C                     968 	.db	00148$>>8
      001BC7 1C                     969 	.db	00150$>>8
      001BC8 1C                     970 	.db	00152$>>8
                                    971 ;	../UI_Manager/Display_Manager/display.c:102: case 'A':
      001BC9                        972 00101$:
                                    973 ;	../UI_Manager/Display_Manager/display.c:103: return CHAR_A;
      001BC9 75 82 82         [24]  974 	mov	dpl,#0x82
      001BCC 22               [24]  975 	ret
                                    976 ;	../UI_Manager/Display_Manager/display.c:104: case 'a':
      001BCD                        977 00102$:
                                    978 ;	../UI_Manager/Display_Manager/display.c:105: return CHAR_a;
      001BCD 75 82 86         [24]  979 	mov	dpl,#0x86
      001BD0 22               [24]  980 	ret
                                    981 ;	../UI_Manager/Display_Manager/display.c:106: case 'B':
      001BD1                        982 00103$:
                                    983 ;	../UI_Manager/Display_Manager/display.c:107: return CHAR_B;
      001BD1 75 82 42         [24]  984 	mov	dpl,#0x42
      001BD4 22               [24]  985 	ret
                                    986 ;	../UI_Manager/Display_Manager/display.c:108: case 'b':
      001BD5                        987 00104$:
                                    988 ;	../UI_Manager/Display_Manager/display.c:109: return CHAR_b;
      001BD5 75 82 46         [24]  989 	mov	dpl,#0x46
      001BD8 22               [24]  990 	ret
                                    991 ;	../UI_Manager/Display_Manager/display.c:110: case 'C':
      001BD9                        992 00105$:
                                    993 ;	../UI_Manager/Display_Manager/display.c:111: return CHAR_C;
      001BD9 75 82 C2         [24]  994 	mov	dpl,#0xc2
      001BDC 22               [24]  995 	ret
                                    996 ;	../UI_Manager/Display_Manager/display.c:112: case 'c':
      001BDD                        997 00106$:
                                    998 ;	../UI_Manager/Display_Manager/display.c:113: return CHAR_c;
      001BDD 75 82 C6         [24]  999 	mov	dpl,#0xc6
      001BE0 22               [24] 1000 	ret
                                   1001 ;	../UI_Manager/Display_Manager/display.c:114: case 'D':
      001BE1                       1002 00107$:
                                   1003 ;	../UI_Manager/Display_Manager/display.c:115: return CHAR_D;
      001BE1 75 82 22         [24] 1004 	mov	dpl,#0x22
      001BE4 22               [24] 1005 	ret
                                   1006 ;	../UI_Manager/Display_Manager/display.c:116: case 'd':
      001BE5                       1007 00108$:
                                   1008 ;	../UI_Manager/Display_Manager/display.c:117: return CHAR_d;
      001BE5 75 82 26         [24] 1009 	mov	dpl,#0x26
      001BE8 22               [24] 1010 	ret
                                   1011 ;	../UI_Manager/Display_Manager/display.c:118: case 'E':
      001BE9                       1012 00109$:
                                   1013 ;	../UI_Manager/Display_Manager/display.c:119: return CHAR_E;
      001BE9 75 82 A2         [24] 1014 	mov	dpl,#0xa2
      001BEC 22               [24] 1015 	ret
                                   1016 ;	../UI_Manager/Display_Manager/display.c:120: case 'e':
      001BED                       1017 00110$:
                                   1018 ;	../UI_Manager/Display_Manager/display.c:121: return CHAR_e;
      001BED 75 82 A6         [24] 1019 	mov	dpl,#0xa6
      001BF0 22               [24] 1020 	ret
                                   1021 ;	../UI_Manager/Display_Manager/display.c:122: case 'F':
      001BF1                       1022 00111$:
                                   1023 ;	../UI_Manager/Display_Manager/display.c:123: return CHAR_F;
      001BF1 75 82 62         [24] 1024 	mov	dpl,#0x62
      001BF4 22               [24] 1025 	ret
                                   1026 ;	../UI_Manager/Display_Manager/display.c:124: case 'f':
      001BF5                       1027 00112$:
                                   1028 ;	../UI_Manager/Display_Manager/display.c:125: return CHAR_f;
      001BF5 75 82 66         [24] 1029 	mov	dpl,#0x66
      001BF8 22               [24] 1030 	ret
                                   1031 ;	../UI_Manager/Display_Manager/display.c:126: case 'G':
      001BF9                       1032 00113$:
                                   1033 ;	../UI_Manager/Display_Manager/display.c:127: return CHAR_G;
      001BF9 75 82 E2         [24] 1034 	mov	dpl,#0xe2
      001BFC 22               [24] 1035 	ret
                                   1036 ;	../UI_Manager/Display_Manager/display.c:128: case 'g':
      001BFD                       1037 00114$:
                                   1038 ;	../UI_Manager/Display_Manager/display.c:129: return CHAR_g;
      001BFD 75 82 E6         [24] 1039 	mov	dpl,#0xe6
      001C00 22               [24] 1040 	ret
                                   1041 ;	../UI_Manager/Display_Manager/display.c:130: case 'H':
      001C01                       1042 00115$:
                                   1043 ;	../UI_Manager/Display_Manager/display.c:131: return CHAR_H;
      001C01 75 82 12         [24] 1044 	mov	dpl,#0x12
      001C04 22               [24] 1045 	ret
                                   1046 ;	../UI_Manager/Display_Manager/display.c:132: case 'h':
      001C05                       1047 00116$:
                                   1048 ;	../UI_Manager/Display_Manager/display.c:133: return CHAR_h;
      001C05 75 82 16         [24] 1049 	mov	dpl,#0x16
      001C08 22               [24] 1050 	ret
                                   1051 ;	../UI_Manager/Display_Manager/display.c:134: case 'I':
      001C09                       1052 00117$:
                                   1053 ;	../UI_Manager/Display_Manager/display.c:135: return CHAR_I;
      001C09 75 82 92         [24] 1054 	mov	dpl,#0x92
      001C0C 22               [24] 1055 	ret
                                   1056 ;	../UI_Manager/Display_Manager/display.c:136: case 'i':
      001C0D                       1057 00118$:
                                   1058 ;	../UI_Manager/Display_Manager/display.c:137: return CHAR_i;
      001C0D 75 82 96         [24] 1059 	mov	dpl,#0x96
      001C10 22               [24] 1060 	ret
                                   1061 ;	../UI_Manager/Display_Manager/display.c:138: case 'J':
      001C11                       1062 00119$:
                                   1063 ;	../UI_Manager/Display_Manager/display.c:139: return CHAR_J;
      001C11 75 82 52         [24] 1064 	mov	dpl,#0x52
      001C14 22               [24] 1065 	ret
                                   1066 ;	../UI_Manager/Display_Manager/display.c:140: case 'j':
      001C15                       1067 00120$:
                                   1068 ;	../UI_Manager/Display_Manager/display.c:141: return CHAR_j;
      001C15 75 82 56         [24] 1069 	mov	dpl,#0x56
      001C18 22               [24] 1070 	ret
                                   1071 ;	../UI_Manager/Display_Manager/display.c:142: case 'K':
      001C19                       1072 00121$:
                                   1073 ;	../UI_Manager/Display_Manager/display.c:143: return CHAR_K;
      001C19 75 82 D2         [24] 1074 	mov	dpl,#0xd2
      001C1C 22               [24] 1075 	ret
                                   1076 ;	../UI_Manager/Display_Manager/display.c:144: case 'k':
      001C1D                       1077 00122$:
                                   1078 ;	../UI_Manager/Display_Manager/display.c:145: return CHAR_k;
      001C1D 75 82 D6         [24] 1079 	mov	dpl,#0xd6
      001C20 22               [24] 1080 	ret
                                   1081 ;	../UI_Manager/Display_Manager/display.c:146: case 'L':
      001C21                       1082 00123$:
                                   1083 ;	../UI_Manager/Display_Manager/display.c:147: return CHAR_L;
      001C21 75 82 32         [24] 1084 	mov	dpl,#0x32
      001C24 22               [24] 1085 	ret
                                   1086 ;	../UI_Manager/Display_Manager/display.c:148: case 'l':
      001C25                       1087 00124$:
                                   1088 ;	../UI_Manager/Display_Manager/display.c:149: return CHAR_l;
      001C25 75 82 36         [24] 1089 	mov	dpl,#0x36
      001C28 22               [24] 1090 	ret
                                   1091 ;	../UI_Manager/Display_Manager/display.c:150: case 'M':
      001C29                       1092 00125$:
                                   1093 ;	../UI_Manager/Display_Manager/display.c:151: return CHAR_M;
      001C29 75 82 B2         [24] 1094 	mov	dpl,#0xb2
      001C2C 22               [24] 1095 	ret
                                   1096 ;	../UI_Manager/Display_Manager/display.c:152: case 'm':
      001C2D                       1097 00126$:
                                   1098 ;	../UI_Manager/Display_Manager/display.c:153: return CHAR_m;
      001C2D 75 82 B6         [24] 1099 	mov	dpl,#0xb6
      001C30 22               [24] 1100 	ret
                                   1101 ;	../UI_Manager/Display_Manager/display.c:154: case 'N':
      001C31                       1102 00127$:
                                   1103 ;	../UI_Manager/Display_Manager/display.c:155: return CHAR_N;
      001C31 75 82 72         [24] 1104 	mov	dpl,#0x72
      001C34 22               [24] 1105 	ret
                                   1106 ;	../UI_Manager/Display_Manager/display.c:156: case 'n':
      001C35                       1107 00128$:
                                   1108 ;	../UI_Manager/Display_Manager/display.c:157: return CHAR_n;
      001C35 75 82 76         [24] 1109 	mov	dpl,#0x76
      001C38 22               [24] 1110 	ret
                                   1111 ;	../UI_Manager/Display_Manager/display.c:158: case 'O':
      001C39                       1112 00129$:
                                   1113 ;	../UI_Manager/Display_Manager/display.c:159: return CHAR_O;
      001C39 75 82 F2         [24] 1114 	mov	dpl,#0xf2
      001C3C 22               [24] 1115 	ret
                                   1116 ;	../UI_Manager/Display_Manager/display.c:160: case 'o':
      001C3D                       1117 00130$:
                                   1118 ;	../UI_Manager/Display_Manager/display.c:161: return CHAR_o;
      001C3D 75 82 F6         [24] 1119 	mov	dpl,#0xf6
      001C40 22               [24] 1120 	ret
                                   1121 ;	../UI_Manager/Display_Manager/display.c:162: case 'P':
      001C41                       1122 00131$:
                                   1123 ;	../UI_Manager/Display_Manager/display.c:163: return CHAR_P;
      001C41 75 82 0A         [24] 1124 	mov	dpl,#0x0a
      001C44 22               [24] 1125 	ret
                                   1126 ;	../UI_Manager/Display_Manager/display.c:164: case 'p':
      001C45                       1127 00132$:
                                   1128 ;	../UI_Manager/Display_Manager/display.c:165: return CHAR_p;
      001C45 75 82 0E         [24] 1129 	mov	dpl,#0x0e
      001C48 22               [24] 1130 	ret
                                   1131 ;	../UI_Manager/Display_Manager/display.c:166: case 'Q':
      001C49                       1132 00133$:
                                   1133 ;	../UI_Manager/Display_Manager/display.c:167: return CHAR_Q;
      001C49 75 82 8A         [24] 1134 	mov	dpl,#0x8a
      001C4C 22               [24] 1135 	ret
                                   1136 ;	../UI_Manager/Display_Manager/display.c:168: case 'q':
      001C4D                       1137 00134$:
                                   1138 ;	../UI_Manager/Display_Manager/display.c:169: return CHAR_q;
      001C4D 75 82 8E         [24] 1139 	mov	dpl,#0x8e
      001C50 22               [24] 1140 	ret
                                   1141 ;	../UI_Manager/Display_Manager/display.c:170: case 'R':
      001C51                       1142 00135$:
                                   1143 ;	../UI_Manager/Display_Manager/display.c:171: return CHAR_R;
      001C51 75 82 4A         [24] 1144 	mov	dpl,#0x4a
      001C54 22               [24] 1145 	ret
                                   1146 ;	../UI_Manager/Display_Manager/display.c:172: case 'r':
      001C55                       1147 00136$:
                                   1148 ;	../UI_Manager/Display_Manager/display.c:173: return CHAR_r;
      001C55 75 82 4E         [24] 1149 	mov	dpl,#0x4e
      001C58 22               [24] 1150 	ret
                                   1151 ;	../UI_Manager/Display_Manager/display.c:174: case 'S':
      001C59                       1152 00137$:
                                   1153 ;	../UI_Manager/Display_Manager/display.c:175: return CHAR_S;
      001C59 75 82 CA         [24] 1154 	mov	dpl,#0xca
      001C5C 22               [24] 1155 	ret
                                   1156 ;	../UI_Manager/Display_Manager/display.c:176: case 's':
      001C5D                       1157 00138$:
                                   1158 ;	../UI_Manager/Display_Manager/display.c:177: return CHAR_s;
      001C5D 75 82 CE         [24] 1159 	mov	dpl,#0xce
      001C60 22               [24] 1160 	ret
                                   1161 ;	../UI_Manager/Display_Manager/display.c:178: case 'T':
      001C61                       1162 00139$:
                                   1163 ;	../UI_Manager/Display_Manager/display.c:179: return CHAR_T;
      001C61 75 82 2A         [24] 1164 	mov	dpl,#0x2a
      001C64 22               [24] 1165 	ret
                                   1166 ;	../UI_Manager/Display_Manager/display.c:180: case 't':
      001C65                       1167 00140$:
                                   1168 ;	../UI_Manager/Display_Manager/display.c:181: return CHAR_t;
      001C65 75 82 2E         [24] 1169 	mov	dpl,#0x2e
      001C68 22               [24] 1170 	ret
                                   1171 ;	../UI_Manager/Display_Manager/display.c:182: case 'U':
      001C69                       1172 00141$:
                                   1173 ;	../UI_Manager/Display_Manager/display.c:183: return CHAR_U;
      001C69 75 82 AA         [24] 1174 	mov	dpl,#0xaa
      001C6C 22               [24] 1175 	ret
                                   1176 ;	../UI_Manager/Display_Manager/display.c:184: case 'u':
      001C6D                       1177 00142$:
                                   1178 ;	../UI_Manager/Display_Manager/display.c:185: return CHAR_u;
      001C6D 75 82 AE         [24] 1179 	mov	dpl,#0xae
      001C70 22               [24] 1180 	ret
                                   1181 ;	../UI_Manager/Display_Manager/display.c:186: case 'V':
      001C71                       1182 00143$:
                                   1183 ;	../UI_Manager/Display_Manager/display.c:187: return CHAR_V;
      001C71 75 82 6A         [24] 1184 	mov	dpl,#0x6a
      001C74 22               [24] 1185 	ret
                                   1186 ;	../UI_Manager/Display_Manager/display.c:188: case 'v':
      001C75                       1187 00144$:
                                   1188 ;	../UI_Manager/Display_Manager/display.c:189: return CHAR_v;
      001C75 75 82 6E         [24] 1189 	mov	dpl,#0x6e
      001C78 22               [24] 1190 	ret
                                   1191 ;	../UI_Manager/Display_Manager/display.c:190: case 'W':
      001C79                       1192 00145$:
                                   1193 ;	../UI_Manager/Display_Manager/display.c:191: return CHAR_W;
      001C79 75 82 EA         [24] 1194 	mov	dpl,#0xea
                                   1195 ;	../UI_Manager/Display_Manager/display.c:192: case 'w':
      001C7C 22               [24] 1196 	ret
      001C7D                       1197 00146$:
                                   1198 ;	../UI_Manager/Display_Manager/display.c:193: return CHAR_w;
      001C7D 75 82 EE         [24] 1199 	mov	dpl,#0xee
                                   1200 ;	../UI_Manager/Display_Manager/display.c:194: case 'X':
      001C80 22               [24] 1201 	ret
      001C81                       1202 00147$:
                                   1203 ;	../UI_Manager/Display_Manager/display.c:195: return CHAR_X;
      001C81 75 82 1A         [24] 1204 	mov	dpl,#0x1a
                                   1205 ;	../UI_Manager/Display_Manager/display.c:196: case 'x':
      001C84 22               [24] 1206 	ret
      001C85                       1207 00148$:
                                   1208 ;	../UI_Manager/Display_Manager/display.c:197: return CHAR_x;
      001C85 75 82 1E         [24] 1209 	mov	dpl,#0x1e
                                   1210 ;	../UI_Manager/Display_Manager/display.c:198: case 'Y':
      001C88 22               [24] 1211 	ret
      001C89                       1212 00149$:
                                   1213 ;	../UI_Manager/Display_Manager/display.c:199: return CHAR_Y;
      001C89 75 82 9A         [24] 1214 	mov	dpl,#0x9a
                                   1215 ;	../UI_Manager/Display_Manager/display.c:200: case 'y':
      001C8C 22               [24] 1216 	ret
      001C8D                       1217 00150$:
                                   1218 ;	../UI_Manager/Display_Manager/display.c:201: return CHAR_y;
      001C8D 75 82 9E         [24] 1219 	mov	dpl,#0x9e
                                   1220 ;	../UI_Manager/Display_Manager/display.c:202: case 'Z':
      001C90 22               [24] 1221 	ret
      001C91                       1222 00151$:
                                   1223 ;	../UI_Manager/Display_Manager/display.c:203: return CHAR_Z;
      001C91 75 82 5A         [24] 1224 	mov	dpl,#0x5a
                                   1225 ;	../UI_Manager/Display_Manager/display.c:204: case 'z':
      001C94 22               [24] 1226 	ret
      001C95                       1227 00152$:
                                   1228 ;	../UI_Manager/Display_Manager/display.c:205: return CHAR_z;
      001C95 75 82 5E         [24] 1229 	mov	dpl,#0x5e
                                   1230 ;	../UI_Manager/Display_Manager/display.c:206: case '0':
      001C98 22               [24] 1231 	ret
      001C99                       1232 00153$:
                                   1233 ;	../UI_Manager/Display_Manager/display.c:207: return CHAR_0;
      001C99 75 82 0C         [24] 1234 	mov	dpl,#0x0c
                                   1235 ;	../UI_Manager/Display_Manager/display.c:208: case '1':
      001C9C 22               [24] 1236 	ret
      001C9D                       1237 00154$:
                                   1238 ;	../UI_Manager/Display_Manager/display.c:209: return CHAR_1;
      001C9D 75 82 8C         [24] 1239 	mov	dpl,#0x8c
                                   1240 ;	../UI_Manager/Display_Manager/display.c:210: case '2':
      001CA0 22               [24] 1241 	ret
      001CA1                       1242 00155$:
                                   1243 ;	../UI_Manager/Display_Manager/display.c:211: return CHAR_2;
      001CA1 75 82 4C         [24] 1244 	mov	dpl,#0x4c
                                   1245 ;	../UI_Manager/Display_Manager/display.c:212: case '3':
      001CA4 22               [24] 1246 	ret
      001CA5                       1247 00156$:
                                   1248 ;	../UI_Manager/Display_Manager/display.c:213: return CHAR_3;
      001CA5 75 82 CC         [24] 1249 	mov	dpl,#0xcc
                                   1250 ;	../UI_Manager/Display_Manager/display.c:214: case '4':
      001CA8 22               [24] 1251 	ret
      001CA9                       1252 00157$:
                                   1253 ;	../UI_Manager/Display_Manager/display.c:215: return CHAR_4;
      001CA9 75 82 2C         [24] 1254 	mov	dpl,#0x2c
                                   1255 ;	../UI_Manager/Display_Manager/display.c:216: case '5':
      001CAC 22               [24] 1256 	ret
      001CAD                       1257 00158$:
                                   1258 ;	../UI_Manager/Display_Manager/display.c:217: return CHAR_5;
      001CAD 75 82 AC         [24] 1259 	mov	dpl,#0xac
                                   1260 ;	../UI_Manager/Display_Manager/display.c:218: case '6':
      001CB0 22               [24] 1261 	ret
      001CB1                       1262 00159$:
                                   1263 ;	../UI_Manager/Display_Manager/display.c:219: return CHAR_6;
      001CB1 75 82 6C         [24] 1264 	mov	dpl,#0x6c
                                   1265 ;	../UI_Manager/Display_Manager/display.c:220: case '7':
      001CB4 22               [24] 1266 	ret
      001CB5                       1267 00160$:
                                   1268 ;	../UI_Manager/Display_Manager/display.c:221: return CHAR_7;
      001CB5 75 82 EC         [24] 1269 	mov	dpl,#0xec
                                   1270 ;	../UI_Manager/Display_Manager/display.c:222: case '8':
      001CB8 22               [24] 1271 	ret
      001CB9                       1272 00161$:
                                   1273 ;	../UI_Manager/Display_Manager/display.c:223: return CHAR_8;
      001CB9 75 82 1C         [24] 1274 	mov	dpl,#0x1c
                                   1275 ;	../UI_Manager/Display_Manager/display.c:224: case '9':
      001CBC 22               [24] 1276 	ret
      001CBD                       1277 00162$:
                                   1278 ;	../UI_Manager/Display_Manager/display.c:225: return CHAR_9;
      001CBD 75 82 9C         [24] 1279 	mov	dpl,#0x9c
                                   1280 ;	../UI_Manager/Display_Manager/display.c:226: case '+':
      001CC0 22               [24] 1281 	ret
      001CC1                       1282 00163$:
                                   1283 ;	../UI_Manager/Display_Manager/display.c:227: return CHAR_PLUS;
      001CC1 75 82 D4         [24] 1284 	mov	dpl,#0xd4
                                   1285 ;	../UI_Manager/Display_Manager/display.c:228: case '&':
      001CC4 22               [24] 1286 	ret
      001CC5                       1287 00164$:
                                   1288 ;	../UI_Manager/Display_Manager/display.c:229: return CHAR_AND;
      001CC5 75 82 64         [24] 1289 	mov	dpl,#0x64
                                   1290 ;	../UI_Manager/Display_Manager/display.c:230: case ';':
      001CC8 22               [24] 1291 	ret
      001CC9                       1292 00165$:
                                   1293 ;	../UI_Manager/Display_Manager/display.c:231: return CHAR_STAR_7;
      001CC9 75 82 60         [24] 1294 	mov	dpl,#0x60
                                   1295 ;	../UI_Manager/Display_Manager/display.c:232: }
      001CCC 22               [24] 1296 	ret
      001CCD                       1297 00166$:
                                   1298 ;	../UI_Manager/Display_Manager/display.c:234: return CHAR_NULL;
      001CCD 75 82 04         [24] 1299 	mov	dpl,#0x04
                                   1300 ;	../UI_Manager/Display_Manager/display.c:235: }
      001CD0 22               [24] 1301 	ret
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
      001CD1                       1312 _writeShiftReg:
      001CD1 AE 82            [24] 1313 	mov	r6,dpl
      001CD3 AF 83            [24] 1314 	mov	r7,dph
                                   1315 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      001CD5 7D 04            [12] 1316 	mov	r5,#0x04
      001CD7                       1317 00102$:
                                   1318 ;	../UI_Manager/Display_Manager/display.c:244: SER = value & (1 << i);
      001CD7 8D F0            [24] 1319 	mov	b,r5
      001CD9 05 F0            [12] 1320 	inc	b
      001CDB 7B 01            [12] 1321 	mov	r3,#0x01
      001CDD 7C 00            [12] 1322 	mov	r4,#0x00
      001CDF 80 06            [24] 1323 	sjmp	00116$
      001CE1                       1324 00115$:
      001CE1 EB               [12] 1325 	mov	a,r3
      001CE2 2B               [12] 1326 	add	a,r3
      001CE3 FB               [12] 1327 	mov	r3,a
      001CE4 EC               [12] 1328 	mov	a,r4
      001CE5 33               [12] 1329 	rlc	a
      001CE6 FC               [12] 1330 	mov	r4,a
      001CE7                       1331 00116$:
      001CE7 D5 F0 F7         [24] 1332 	djnz	b,00115$
      001CEA EE               [12] 1333 	mov	a,r6
      001CEB 52 03            [12] 1334 	anl	ar3,a
      001CED EF               [12] 1335 	mov	a,r7
      001CEE 52 04            [12] 1336 	anl	ar4,a
                                   1337 ;	assignBit
      001CF0 EB               [12] 1338 	mov	a,r3
      001CF1 4C               [12] 1339 	orl	a,r4
      001CF2 24 FF            [12] 1340 	add	a,#0xff
      001CF4 92 95            [24] 1341 	mov	_SER,c
                                   1342 ;	../UI_Manager/Display_Manager/display.c:247: SCK = 1;
                                   1343 ;	assignBit
      001CF6 D2 93            [12] 1344 	setb	_SCK
                                   1345 ;	../UI_Manager/Display_Manager/display.c:248: SCK = 0;
                                   1346 ;	assignBit
      001CF8 C2 93            [12] 1347 	clr	_SCK
                                   1348 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      001CFA 0D               [12] 1349 	inc	r5
      001CFB BD 10 00         [24] 1350 	cjne	r5,#0x10,00117$
      001CFE                       1351 00117$:
      001CFE 40 D7            [24] 1352 	jc	00102$
                                   1353 ;	../UI_Manager/Display_Manager/display.c:250: RCK = 1;
                                   1354 ;	assignBit
      001D00 D2 92            [12] 1355 	setb	_RCK
                                   1356 ;	../UI_Manager/Display_Manager/display.c:251: RCK = 0;
                                   1357 ;	assignBit
      001D02 C2 92            [12] 1358 	clr	_RCK
                                   1359 ;	../UI_Manager/Display_Manager/display.c:252: }
      001D04 22               [24] 1360 	ret
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
      001D05                       1372 _flipByte:
      001D05 AF 82            [24] 1373 	mov	r7,dpl
                                   1374 ;	../UI_Manager/Display_Manager/display.c:256: uint8_t i, temp = 0;
      001D07 7E 00            [12] 1375 	mov	r6,#0x00
                                   1376 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      001D09 7D 00            [12] 1377 	mov	r5,#0x00
      001D0B                       1378 00102$:
                                   1379 ;	../UI_Manager/Display_Manager/display.c:259: temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
      001D0B 8D F0            [24] 1380 	mov	b,r5
      001D0D 05 F0            [12] 1381 	inc	b
      001D0F 7B 80            [12] 1382 	mov	r3,#0x80
      001D11 E4               [12] 1383 	clr	a
      001D12 FC               [12] 1384 	mov	r4,a
      001D13 33               [12] 1385 	rlc	a
      001D14 92 D2            [24] 1386 	mov	ov,c
      001D16 80 08            [24] 1387 	sjmp	00122$
      001D18                       1388 00121$:
      001D18 A2 D2            [12] 1389 	mov	c,ov
      001D1A EC               [12] 1390 	mov	a,r4
      001D1B 13               [12] 1391 	rrc	a
      001D1C FC               [12] 1392 	mov	r4,a
      001D1D EB               [12] 1393 	mov	a,r3
      001D1E 13               [12] 1394 	rrc	a
      001D1F FB               [12] 1395 	mov	r3,a
      001D20                       1396 00122$:
      001D20 D5 F0 F5         [24] 1397 	djnz	b,00121$
      001D23 8F 01            [24] 1398 	mov	ar1,r7
      001D25 7A 00            [12] 1399 	mov	r2,#0x00
      001D27 E9               [12] 1400 	mov	a,r1
      001D28 52 03            [12] 1401 	anl	ar3,a
      001D2A EA               [12] 1402 	mov	a,r2
      001D2B 52 04            [12] 1403 	anl	ar4,a
      001D2D EB               [12] 1404 	mov	a,r3
      001D2E 4C               [12] 1405 	orl	a,r4
      001D2F 60 06            [24] 1406 	jz	00106$
      001D31 7B 01            [12] 1407 	mov	r3,#0x01
      001D33 7C 00            [12] 1408 	mov	r4,#0x00
      001D35 80 04            [24] 1409 	sjmp	00107$
      001D37                       1410 00106$:
      001D37 7B 00            [12] 1411 	mov	r3,#0x00
      001D39 7C 00            [12] 1412 	mov	r4,#0x00
      001D3B                       1413 00107$:
      001D3B 8D 04            [24] 1414 	mov	ar4,r5
      001D3D 8C F0            [24] 1415 	mov	b,r4
      001D3F 05 F0            [12] 1416 	inc	b
      001D41 EB               [12] 1417 	mov	a,r3
      001D42 80 02            [24] 1418 	sjmp	00126$
      001D44                       1419 00124$:
      001D44 25 E0            [12] 1420 	add	a,acc
      001D46                       1421 00126$:
      001D46 D5 F0 FB         [24] 1422 	djnz	b,00124$
      001D49 8E 04            [24] 1423 	mov	ar4,r6
      001D4B 4C               [12] 1424 	orl	a,r4
      001D4C FE               [12] 1425 	mov	r6,a
                                   1426 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      001D4D 0D               [12] 1427 	inc	r5
      001D4E BD 08 00         [24] 1428 	cjne	r5,#0x08,00127$
      001D51                       1429 00127$:
      001D51 40 B8            [24] 1430 	jc	00102$
                                   1431 ;	../UI_Manager/Display_Manager/display.c:262: return temp;
      001D53 8E 82            [24] 1432 	mov	dpl,r6
                                   1433 ;	../UI_Manager/Display_Manager/display.c:263: }
      001D55 22               [24] 1434 	ret
                                   1435 	.area CSEG    (CODE)
                                   1436 	.area CONST   (CODE)
                                   1437 	.area XINIT   (CODE)
                                   1438 	.area CABS    (ABS,CODE)
