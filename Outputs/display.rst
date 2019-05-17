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
      00180C                        312 _write_string:
                           000007   313 	ar7 = 0x07
                           000006   314 	ar6 = 0x06
                           000005   315 	ar5 = 0x05
                           000004   316 	ar4 = 0x04
                           000003   317 	ar3 = 0x03
                           000002   318 	ar2 = 0x02
                           000001   319 	ar1 = 0x01
                           000000   320 	ar0 = 0x00
      00180C AD 82            [24]  321 	mov	r5,dpl
      00180E AE 83            [24]  322 	mov	r6,dph
      001810 AF F0            [24]  323 	mov	r7,b
                                    324 ;	../UI_Manager/Display_Manager/display.c:17: uint8_t i, done = 0;
      001812 7C 00            [12]  325 	mov	r4,#0x00
                                    326 ;	../UI_Manager/Display_Manager/display.c:20: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001814 E5 23            [12]  327 	mov	a,_write_string_PARM_4
      001816 60 08            [24]  328 	jz	00115$
      001818 AB 22            [24]  329 	mov	r3,_write_string_PARM_3
      00181A 74 40            [12]  330 	mov	a,#0x40
      00181C 2B               [12]  331 	add	a,r3
      00181D FB               [12]  332 	mov	r3,a
      00181E 80 02            [24]  333 	sjmp	00116$
      001820                        334 00115$:
      001820 AB 22            [24]  335 	mov	r3,_write_string_PARM_3
      001822                        336 00116$:
      001822 8B 82            [24]  337 	mov	dpl,r3
      001824 C0 07            [24]  338 	push	ar7
      001826 C0 06            [24]  339 	push	ar6
      001828 C0 05            [24]  340 	push	ar5
      00182A C0 04            [24]  341 	push	ar4
      00182C 12 1C AE         [24]  342 	lcall	_flipByte
      00182F AA 82            [24]  343 	mov	r2,dpl
      001831 7B 00            [12]  344 	mov	r3,#0x00
      001833 8B 82            [24]  345 	mov	dpl,r3
      001835 74 01            [12]  346 	mov	a,#0x01
      001837 4A               [12]  347 	orl	a,r2
      001838 F5 83            [12]  348 	mov	dph,a
      00183A 12 1A 5F         [24]  349 	lcall	_exe_command
      00183D D0 04            [24]  350 	pop	ar4
      00183F D0 05            [24]  351 	pop	ar5
      001841 D0 06            [24]  352 	pop	ar6
      001843 D0 07            [24]  353 	pop	ar7
                                    354 ;	../UI_Manager/Display_Manager/display.c:22: length++; //null terminated
      001845 05 21            [12]  355 	inc	_write_string_PARM_2
                                    356 ;	../UI_Manager/Display_Manager/display.c:24: if(selected){
      001847 E5 24            [12]  357 	mov	a,_write_string_PARM_5
      001849 60 16            [24]  358 	jz	00122$
                                    359 ;	../UI_Manager/Display_Manager/display.c:25: exe_command(WRITE_CURSOR);
      00184B 90 00 80         [24]  360 	mov	dptr,#0x0080
      00184E C0 07            [24]  361 	push	ar7
      001850 C0 06            [24]  362 	push	ar6
      001852 C0 05            [24]  363 	push	ar5
      001854 C0 04            [24]  364 	push	ar4
      001856 12 1A 5F         [24]  365 	lcall	_exe_command
      001859 D0 04            [24]  366 	pop	ar4
      00185B D0 05            [24]  367 	pop	ar5
      00185D D0 06            [24]  368 	pop	ar6
      00185F D0 07            [24]  369 	pop	ar7
                                    370 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      001861                        371 00122$:
      001861 7B 00            [12]  372 	mov	r3,#0x00
      001863                        373 00111$:
      001863 C3               [12]  374 	clr	c
      001864 EB               [12]  375 	mov	a,r3
      001865 95 21            [12]  376 	subb	a,_write_string_PARM_2
      001867 40 01            [24]  377 	jc	00144$
      001869 22               [24]  378 	ret
      00186A                        379 00144$:
                                    380 ;	../UI_Manager/Display_Manager/display.c:29: if(!done){
      00186A EC               [12]  381 	mov	a,r4
      00186B 70 45            [24]  382 	jnz	00107$
                                    383 ;	../UI_Manager/Display_Manager/display.c:30: if(string[i]){
      00186D EB               [12]  384 	mov	a,r3
      00186E 2D               [12]  385 	add	a,r5
      00186F F8               [12]  386 	mov	r0,a
      001870 E4               [12]  387 	clr	a
      001871 3E               [12]  388 	addc	a,r6
      001872 F9               [12]  389 	mov	r1,a
      001873 8F 02            [24]  390 	mov	ar2,r7
      001875 88 82            [24]  391 	mov	dpl,r0
      001877 89 83            [24]  392 	mov	dph,r1
      001879 8A F0            [24]  393 	mov	b,r2
      00187B 12 2D 9A         [24]  394 	lcall	__gptrget
      00187E FA               [12]  395 	mov	r2,a
      00187F 60 2D            [24]  396 	jz	00104$
                                    397 ;	../UI_Manager/Display_Manager/display.c:31: exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
      001881 8A 82            [24]  398 	mov	dpl,r2
      001883 C0 07            [24]  399 	push	ar7
      001885 C0 06            [24]  400 	push	ar6
      001887 C0 05            [24]  401 	push	ar5
      001889 C0 04            [24]  402 	push	ar4
      00188B C0 03            [24]  403 	push	ar3
      00188D 12 1A A5         [24]  404 	lcall	_charToCode
      001890 AA 82            [24]  405 	mov	r2,dpl
      001892 8A 01            [24]  406 	mov	ar1,r2
      001894 89 02            [24]  407 	mov	ar2,r1
      001896 79 00            [12]  408 	mov	r1,#0x00
      001898 74 80            [12]  409 	mov	a,#0x80
      00189A 49               [12]  410 	orl	a,r1
      00189B F5 82            [12]  411 	mov	dpl,a
      00189D 8A 83            [24]  412 	mov	dph,r2
      00189F 12 1A 5F         [24]  413 	lcall	_exe_command
      0018A2 D0 03            [24]  414 	pop	ar3
      0018A4 D0 04            [24]  415 	pop	ar4
      0018A6 D0 05            [24]  416 	pop	ar5
      0018A8 D0 06            [24]  417 	pop	ar6
      0018AA D0 07            [24]  418 	pop	ar7
      0018AC 80 1E            [24]  419 	sjmp	00112$
      0018AE                        420 00104$:
                                    421 ;	../UI_Manager/Display_Manager/display.c:33: done = 1;
      0018AE 7C 01            [12]  422 	mov	r4,#0x01
      0018B0 80 1A            [24]  423 	sjmp	00112$
      0018B2                        424 00107$:
                                    425 ;	../UI_Manager/Display_Manager/display.c:36: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      0018B2 90 04 80         [24]  426 	mov	dptr,#0x0480
      0018B5 C0 07            [24]  427 	push	ar7
      0018B7 C0 06            [24]  428 	push	ar6
      0018B9 C0 05            [24]  429 	push	ar5
      0018BB C0 04            [24]  430 	push	ar4
      0018BD C0 03            [24]  431 	push	ar3
      0018BF 12 1A 5F         [24]  432 	lcall	_exe_command
      0018C2 D0 03            [24]  433 	pop	ar3
      0018C4 D0 04            [24]  434 	pop	ar4
      0018C6 D0 05            [24]  435 	pop	ar5
      0018C8 D0 06            [24]  436 	pop	ar6
      0018CA D0 07            [24]  437 	pop	ar7
      0018CC                        438 00112$:
                                    439 ;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
      0018CC 0B               [12]  440 	inc	r3
                                    441 ;	../UI_Manager/Display_Manager/display.c:39: }
      0018CD 02 18 63         [24]  442 	ljmp	00111$
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
      0018D0                        458 _write_number:
      0018D0 AE 82            [24]  459 	mov	r6,dpl
      0018D2 AF 83            [24]  460 	mov	r7,dph
                                    461 ;	../UI_Manager/Display_Manager/display.c:42: uint8_t higherNumberPresent = 0;
      0018D4 7D 00            [12]  462 	mov	r5,#0x00
                                    463 ;	../UI_Manager/Display_Manager/display.c:44: uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};
      0018D6 75 28 04         [24]  464 	mov	_write_number_chars_65536_18,#0x04
      0018D9 75 29 04         [24]  465 	mov	(_write_number_chars_65536_18 + 0x0001),#0x04
      0018DC 75 2A 0C         [24]  466 	mov	(_write_number_chars_65536_18 + 0x0002),#0x0c
                                    467 ;	../UI_Manager/Display_Manager/display.c:46: if(number >= 1000) {number = 999;}
      0018DF C3               [12]  468 	clr	c
      0018E0 EE               [12]  469 	mov	a,r6
      0018E1 94 E8            [12]  470 	subb	a,#0xe8
      0018E3 EF               [12]  471 	mov	a,r7
      0018E4 94 03            [12]  472 	subb	a,#0x03
      0018E6 40 04            [24]  473 	jc	00102$
      0018E8 7E E7            [12]  474 	mov	r6,#0xe7
      0018EA 7F 03            [12]  475 	mov	r7,#0x03
      0018EC                        476 00102$:
                                    477 ;	../UI_Manager/Display_Manager/display.c:48: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      0018EC E5 26            [12]  478 	mov	a,_write_number_PARM_3
      0018EE 60 08            [24]  479 	jz	00113$
      0018F0 AC 25            [24]  480 	mov	r4,_write_number_PARM_2
      0018F2 74 40            [12]  481 	mov	a,#0x40
      0018F4 2C               [12]  482 	add	a,r4
      0018F5 FC               [12]  483 	mov	r4,a
      0018F6 80 02            [24]  484 	sjmp	00114$
      0018F8                        485 00113$:
      0018F8 AC 25            [24]  486 	mov	r4,_write_number_PARM_2
      0018FA                        487 00114$:
      0018FA 8C 82            [24]  488 	mov	dpl,r4
      0018FC C0 07            [24]  489 	push	ar7
      0018FE C0 06            [24]  490 	push	ar6
      001900 C0 05            [24]  491 	push	ar5
      001902 12 1C AE         [24]  492 	lcall	_flipByte
      001905 AB 82            [24]  493 	mov	r3,dpl
      001907 7C 00            [12]  494 	mov	r4,#0x00
      001909 8C 82            [24]  495 	mov	dpl,r4
      00190B 74 01            [12]  496 	mov	a,#0x01
      00190D 4B               [12]  497 	orl	a,r3
      00190E F5 83            [12]  498 	mov	dph,a
      001910 12 1A 5F         [24]  499 	lcall	_exe_command
      001913 D0 05            [24]  500 	pop	ar5
      001915 D0 06            [24]  501 	pop	ar6
      001917 D0 07            [24]  502 	pop	ar7
                                    503 ;	../UI_Manager/Display_Manager/display.c:51: if(selected){
      001919 E5 27            [12]  504 	mov	a,_write_number_PARM_4
      00191B 60 14            [24]  505 	jz	00104$
                                    506 ;	../UI_Manager/Display_Manager/display.c:52: exe_command(WRITE_CURSOR);
      00191D 90 00 80         [24]  507 	mov	dptr,#0x0080
      001920 C0 07            [24]  508 	push	ar7
      001922 C0 06            [24]  509 	push	ar6
      001924 C0 05            [24]  510 	push	ar5
      001926 12 1A 5F         [24]  511 	lcall	_exe_command
      001929 D0 05            [24]  512 	pop	ar5
      00192B D0 06            [24]  513 	pop	ar6
      00192D D0 07            [24]  514 	pop	ar7
      00192F 80 12            [24]  515 	sjmp	00105$
      001931                        516 00104$:
                                    517 ;	../UI_Manager/Display_Manager/display.c:54: exe_command(RAM_WRITE | (CHAR_NULL << 8));
      001931 90 04 80         [24]  518 	mov	dptr,#0x0480
      001934 C0 07            [24]  519 	push	ar7
      001936 C0 06            [24]  520 	push	ar6
      001938 C0 05            [24]  521 	push	ar5
      00193A 12 1A 5F         [24]  522 	lcall	_exe_command
      00193D D0 05            [24]  523 	pop	ar5
      00193F D0 06            [24]  524 	pop	ar6
      001941 D0 07            [24]  525 	pop	ar7
      001943                        526 00105$:
                                    527 ;	../UI_Manager/Display_Manager/display.c:58: value = number/100;
      001943 75 72 64         [24]  528 	mov	__divuint_PARM_2,#0x64
      001946 75 73 00         [24]  529 	mov	(__divuint_PARM_2 + 1),#0x00
      001949 8E 82            [24]  530 	mov	dpl,r6
      00194B 8F 83            [24]  531 	mov	dph,r7
      00194D C0 07            [24]  532 	push	ar7
      00194F C0 06            [24]  533 	push	ar6
      001951 C0 05            [24]  534 	push	ar5
      001953 12 2C 84         [24]  535 	lcall	__divuint
      001956 AB 82            [24]  536 	mov	r3,dpl
      001958 AC 83            [24]  537 	mov	r4,dph
      00195A D0 05            [24]  538 	pop	ar5
      00195C D0 06            [24]  539 	pop	ar6
      00195E D0 07            [24]  540 	pop	ar7
                                    541 ;	../UI_Manager/Display_Manager/display.c:59: if(value){
      001960 EB               [12]  542 	mov	a,r3
      001961 4C               [12]  543 	orl	a,r4
      001962 60 39            [24]  544 	jz	00107$
                                    545 ;	../UI_Manager/Display_Manager/display.c:60: chars[0] = charToCode(value + 0x30);
      001964 8B 02            [24]  546 	mov	ar2,r3
      001966 74 30            [12]  547 	mov	a,#0x30
      001968 2A               [12]  548 	add	a,r2
      001969 F5 82            [12]  549 	mov	dpl,a
      00196B C0 07            [24]  550 	push	ar7
      00196D C0 06            [24]  551 	push	ar6
      00196F C0 04            [24]  552 	push	ar4
      001971 C0 03            [24]  553 	push	ar3
      001973 12 1A A5         [24]  554 	lcall	_charToCode
      001976 E5 82            [12]  555 	mov	a,dpl
      001978 D0 03            [24]  556 	pop	ar3
      00197A D0 04            [24]  557 	pop	ar4
      00197C F5 28            [12]  558 	mov	_write_number_chars_65536_18,a
                                    559 ;	../UI_Manager/Display_Manager/display.c:61: higherNumberPresent = 1;
      00197E 7D 01            [12]  560 	mov	r5,#0x01
                                    561 ;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
      001980 8B 72            [24]  562 	mov	__mulint_PARM_2,r3
      001982 8C 73            [24]  563 	mov	(__mulint_PARM_2 + 1),r4
      001984 90 00 64         [24]  564 	mov	dptr,#0x0064
      001987 C0 05            [24]  565 	push	ar5
      001989 12 2D 30         [24]  566 	lcall	__mulint
      00198C AB 82            [24]  567 	mov	r3,dpl
      00198E AC 83            [24]  568 	mov	r4,dph
      001990 D0 05            [24]  569 	pop	ar5
      001992 D0 06            [24]  570 	pop	ar6
      001994 D0 07            [24]  571 	pop	ar7
      001996 EE               [12]  572 	mov	a,r6
      001997 C3               [12]  573 	clr	c
      001998 9B               [12]  574 	subb	a,r3
      001999 FE               [12]  575 	mov	r6,a
      00199A EF               [12]  576 	mov	a,r7
      00199B 9C               [12]  577 	subb	a,r4
      00199C FF               [12]  578 	mov	r7,a
      00199D                        579 00107$:
                                    580 ;	../UI_Manager/Display_Manager/display.c:65: value = number/10;
      00199D 75 72 0A         [24]  581 	mov	__divuint_PARM_2,#0x0a
      0019A0 75 73 00         [24]  582 	mov	(__divuint_PARM_2 + 1),#0x00
      0019A3 8E 82            [24]  583 	mov	dpl,r6
      0019A5 8F 83            [24]  584 	mov	dph,r7
      0019A7 C0 07            [24]  585 	push	ar7
      0019A9 C0 06            [24]  586 	push	ar6
      0019AB C0 05            [24]  587 	push	ar5
      0019AD 12 2C 84         [24]  588 	lcall	__divuint
      0019B0 AB 82            [24]  589 	mov	r3,dpl
      0019B2 AC 83            [24]  590 	mov	r4,dph
      0019B4 D0 05            [24]  591 	pop	ar5
      0019B6 D0 06            [24]  592 	pop	ar6
      0019B8 D0 07            [24]  593 	pop	ar7
                                    594 ;	../UI_Manager/Display_Manager/display.c:66: if(higherNumberPresent || value){
      0019BA ED               [12]  595 	mov	a,r5
      0019BB 70 04            [24]  596 	jnz	00108$
      0019BD EB               [12]  597 	mov	a,r3
      0019BE 4C               [12]  598 	orl	a,r4
      0019BF 60 33            [24]  599 	jz	00109$
      0019C1                        600 00108$:
                                    601 ;	../UI_Manager/Display_Manager/display.c:67: chars[1] = charToCode(value + 0x30);
      0019C1 8B 05            [24]  602 	mov	ar5,r3
      0019C3 74 30            [12]  603 	mov	a,#0x30
      0019C5 2D               [12]  604 	add	a,r5
      0019C6 F5 82            [12]  605 	mov	dpl,a
      0019C8 C0 07            [24]  606 	push	ar7
      0019CA C0 06            [24]  607 	push	ar6
      0019CC C0 04            [24]  608 	push	ar4
      0019CE C0 03            [24]  609 	push	ar3
      0019D0 12 1A A5         [24]  610 	lcall	_charToCode
      0019D3 E5 82            [12]  611 	mov	a,dpl
      0019D5 D0 03            [24]  612 	pop	ar3
      0019D7 D0 04            [24]  613 	pop	ar4
      0019D9 F5 29            [12]  614 	mov	(_write_number_chars_65536_18 + 0x0001),a
                                    615 ;	../UI_Manager/Display_Manager/display.c:68: number -= value*10;
      0019DB 8B 72            [24]  616 	mov	__mulint_PARM_2,r3
      0019DD 8C 73            [24]  617 	mov	(__mulint_PARM_2 + 1),r4
      0019DF 90 00 0A         [24]  618 	mov	dptr,#0x000a
      0019E2 12 2D 30         [24]  619 	lcall	__mulint
      0019E5 AC 82            [24]  620 	mov	r4,dpl
      0019E7 AD 83            [24]  621 	mov	r5,dph
      0019E9 D0 06            [24]  622 	pop	ar6
      0019EB D0 07            [24]  623 	pop	ar7
      0019ED EE               [12]  624 	mov	a,r6
      0019EE C3               [12]  625 	clr	c
      0019EF 9C               [12]  626 	subb	a,r4
      0019F0 FE               [12]  627 	mov	r6,a
      0019F1 EF               [12]  628 	mov	a,r7
      0019F2 9D               [12]  629 	subb	a,r5
      0019F3 FF               [12]  630 	mov	r7,a
      0019F4                        631 00109$:
                                    632 ;	../UI_Manager/Display_Manager/display.c:71: chars[2] = charToCode(number + 0x30);
      0019F4 74 30            [12]  633 	mov	a,#0x30
      0019F6 2E               [12]  634 	add	a,r6
      0019F7 F5 82            [12]  635 	mov	dpl,a
      0019F9 12 1A A5         [24]  636 	lcall	_charToCode
      0019FC E5 82            [12]  637 	mov	a,dpl
      0019FE F5 2A            [12]  638 	mov	(_write_number_chars_65536_18 + 0x0002),a
                                    639 ;	../UI_Manager/Display_Manager/display.c:73: exe_command(RAM_WRITE | (chars[0] << 8));
      001A00 AF 28            [24]  640 	mov	r7,_write_number_chars_65536_18
      001A02 7E 00            [12]  641 	mov	r6,#0x00
      001A04 74 80            [12]  642 	mov	a,#0x80
      001A06 4E               [12]  643 	orl	a,r6
      001A07 F5 82            [12]  644 	mov	dpl,a
      001A09 8F 83            [24]  645 	mov	dph,r7
      001A0B 12 1A 5F         [24]  646 	lcall	_exe_command
                                    647 ;	../UI_Manager/Display_Manager/display.c:74: exe_command(RAM_WRITE | (chars[1] << 8));
      001A0E AF 29            [24]  648 	mov	r7,(_write_number_chars_65536_18 + 0x0001)
      001A10 7E 00            [12]  649 	mov	r6,#0x00
      001A12 74 80            [12]  650 	mov	a,#0x80
      001A14 4E               [12]  651 	orl	a,r6
      001A15 F5 82            [12]  652 	mov	dpl,a
      001A17 8F 83            [24]  653 	mov	dph,r7
      001A19 12 1A 5F         [24]  654 	lcall	_exe_command
                                    655 ;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
      001A1C AF 2A            [24]  656 	mov	r7,(_write_number_chars_65536_18 + 0x0002)
      001A1E 7E 00            [12]  657 	mov	r6,#0x00
      001A20 74 80            [12]  658 	mov	a,#0x80
      001A22 4E               [12]  659 	orl	a,r6
      001A23 F5 82            [12]  660 	mov	dpl,a
      001A25 8F 83            [24]  661 	mov	dph,r7
                                    662 ;	../UI_Manager/Display_Manager/display.c:77: }
      001A27 02 1A 5F         [24]  663 	ljmp	_exe_command
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
      001A2A                        675 _write_char:
      001A2A AF 82            [24]  676 	mov	r7,dpl
                                    677 ;	../UI_Manager/Display_Manager/display.c:80: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
      001A2C E5 2C            [12]  678 	mov	a,_write_char_PARM_3
      001A2E 60 08            [24]  679 	jz	00103$
      001A30 AE 2B            [24]  680 	mov	r6,_write_char_PARM_2
      001A32 74 40            [12]  681 	mov	a,#0x40
      001A34 2E               [12]  682 	add	a,r6
      001A35 FE               [12]  683 	mov	r6,a
      001A36 80 02            [24]  684 	sjmp	00104$
      001A38                        685 00103$:
      001A38 AE 2B            [24]  686 	mov	r6,_write_char_PARM_2
      001A3A                        687 00104$:
      001A3A 8E 82            [24]  688 	mov	dpl,r6
      001A3C C0 07            [24]  689 	push	ar7
      001A3E 12 1C AE         [24]  690 	lcall	_flipByte
      001A41 AD 82            [24]  691 	mov	r5,dpl
      001A43 7E 00            [12]  692 	mov	r6,#0x00
      001A45 8E 82            [24]  693 	mov	dpl,r6
      001A47 74 01            [12]  694 	mov	a,#0x01
      001A49 4D               [12]  695 	orl	a,r5
      001A4A F5 83            [12]  696 	mov	dph,a
      001A4C 12 1A 5F         [24]  697 	lcall	_exe_command
      001A4F D0 07            [24]  698 	pop	ar7
                                    699 ;	../UI_Manager/Display_Manager/display.c:81: exe_command(RAM_WRITE | (command << 8));
      001A51 8F 06            [24]  700 	mov	ar6,r7
      001A53 7F 00            [12]  701 	mov	r7,#0x00
      001A55 74 80            [12]  702 	mov	a,#0x80
      001A57 4F               [12]  703 	orl	a,r7
      001A58 F5 82            [12]  704 	mov	dpl,a
      001A5A 8E 83            [24]  705 	mov	dph,r6
                                    706 ;	../UI_Manager/Display_Manager/display.c:82: }
      001A5C 02 1A 5F         [24]  707 	ljmp	_exe_command
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
      001A5F                        718 _exe_command:
      001A5F AE 82            [24]  719 	mov	r6,dpl
      001A61 AF 83            [24]  720 	mov	r7,dph
                                    721 ;	../UI_Manager/Display_Manager/display.c:89: command |= (1 << EXE_BIT);
      001A63 43 06 20         [24]  722 	orl	ar6,#0x20
                                    723 ;	../UI_Manager/Display_Manager/display.c:90: writeShiftReg(command); //execute
      001A66 8E 82            [24]  724 	mov	dpl,r6
      001A68 8F 83            [24]  725 	mov	dph,r7
      001A6A C0 07            [24]  726 	push	ar7
      001A6C C0 06            [24]  727 	push	ar6
      001A6E 12 1C 7A         [24]  728 	lcall	_writeShiftReg
      001A71 D0 06            [24]  729 	pop	ar6
      001A73 D0 07            [24]  730 	pop	ar7
                                    731 ;	../UI_Manager/Display_Manager/display.c:91: command &= ~(1 << EXE_BIT);
      001A75 53 06 DF         [24]  732 	anl	ar6,#0xdf
                                    733 ;	../UI_Manager/Display_Manager/display.c:92: writeShiftReg(command); //end execution
      001A78 8E 82            [24]  734 	mov	dpl,r6
      001A7A 8F 83            [24]  735 	mov	dph,r7
      001A7C C0 07            [24]  736 	push	ar7
      001A7E C0 06            [24]  737 	push	ar6
      001A80 12 1C 7A         [24]  738 	lcall	_writeShiftReg
      001A83 D0 06            [24]  739 	pop	ar6
      001A85 D0 07            [24]  740 	pop	ar7
                                    741 ;	../UI_Manager/Display_Manager/display.c:95: while(delay-- && command == CLEAR_DISPLAY){;;}
      001A87 E4               [12]  742 	clr	a
      001A88 BE 00 04         [24]  743 	cjne	r6,#0x00,00118$
      001A8B BF 80 01         [24]  744 	cjne	r7,#0x80,00118$
      001A8E 04               [12]  745 	inc	a
      001A8F                        746 00118$:
      001A8F FF               [12]  747 	mov	r7,a
      001A90 7D 00            [12]  748 	mov	r5,#0x00
      001A92 7E 03            [12]  749 	mov	r6,#0x03
      001A94                        750 00102$:
      001A94 8D 03            [24]  751 	mov	ar3,r5
      001A96 8E 04            [24]  752 	mov	ar4,r6
      001A98 1D               [12]  753 	dec	r5
      001A99 BD FF 01         [24]  754 	cjne	r5,#0xff,00120$
      001A9C 1E               [12]  755 	dec	r6
      001A9D                        756 00120$:
      001A9D EB               [12]  757 	mov	a,r3
      001A9E 4C               [12]  758 	orl	a,r4
      001A9F 60 03            [24]  759 	jz	00105$
      001AA1 EF               [12]  760 	mov	a,r7
      001AA2 70 F0            [24]  761 	jnz	00102$
      001AA4                        762 00105$:
                                    763 ;	../UI_Manager/Display_Manager/display.c:96: }
      001AA4 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'charToCode'
                                    767 ;------------------------------------------------------------
                                    768 ;c                         Allocated to registers r7 
                                    769 ;------------------------------------------------------------
                                    770 ;	../UI_Manager/Display_Manager/display.c:100: uint8_t charToCode(char c){
                                    771 ;	-----------------------------------------
                                    772 ;	 function charToCode
                                    773 ;	-----------------------------------------
      001AA5                        774 _charToCode:
      001AA5 AF 82            [24]  775 	mov	r7,dpl
                                    776 ;	../UI_Manager/Display_Manager/display.c:101: switch(c){
      001AA7 BF 26 00         [24]  777 	cjne	r7,#0x26,00177$
      001AAA                        778 00177$:
      001AAA 50 03            [24]  779 	jnc	00178$
      001AAC 02 1C 76         [24]  780 	ljmp	00166$
      001AAF                        781 00178$:
      001AAF EF               [12]  782 	mov	a,r7
      001AB0 24 85            [12]  783 	add	a,#0xff - 0x7a
      001AB2 50 03            [24]  784 	jnc	00179$
      001AB4 02 1C 76         [24]  785 	ljmp	00166$
      001AB7                        786 00179$:
      001AB7 EF               [12]  787 	mov	a,r7
      001AB8 24 DA            [12]  788 	add	a,#0xda
      001ABA FF               [12]  789 	mov	r7,a
      001ABB 24 0A            [12]  790 	add	a,#(00180$-3-.)
      001ABD 83               [24]  791 	movc	a,@a+pc
      001ABE F5 82            [12]  792 	mov	dpl,a
      001AC0 EF               [12]  793 	mov	a,r7
      001AC1 24 59            [12]  794 	add	a,#(00181$-3-.)
      001AC3 83               [24]  795 	movc	a,@a+pc
      001AC4 F5 83            [12]  796 	mov	dph,a
      001AC6 E4               [12]  797 	clr	a
      001AC7 73               [24]  798 	jmp	@a+dptr
      001AC8                        799 00180$:
      001AC8 6E                     800 	.db	00164$
      001AC9 76                     801 	.db	00166$
      001ACA 76                     802 	.db	00166$
      001ACB 76                     803 	.db	00166$
      001ACC 76                     804 	.db	00166$
      001ACD 6A                     805 	.db	00163$
      001ACE 76                     806 	.db	00166$
      001ACF 76                     807 	.db	00166$
      001AD0 76                     808 	.db	00166$
      001AD1 76                     809 	.db	00166$
      001AD2 42                     810 	.db	00153$
      001AD3 46                     811 	.db	00154$
      001AD4 4A                     812 	.db	00155$
      001AD5 4E                     813 	.db	00156$
      001AD6 52                     814 	.db	00157$
      001AD7 56                     815 	.db	00158$
      001AD8 5A                     816 	.db	00159$
      001AD9 5E                     817 	.db	00160$
      001ADA 62                     818 	.db	00161$
      001ADB 66                     819 	.db	00162$
      001ADC 76                     820 	.db	00166$
      001ADD 72                     821 	.db	00165$
      001ADE 76                     822 	.db	00166$
      001ADF 76                     823 	.db	00166$
      001AE0 76                     824 	.db	00166$
      001AE1 76                     825 	.db	00166$
      001AE2 76                     826 	.db	00166$
      001AE3 72                     827 	.db	00101$
      001AE4 7A                     828 	.db	00103$
      001AE5 82                     829 	.db	00105$
      001AE6 8A                     830 	.db	00107$
      001AE7 92                     831 	.db	00109$
      001AE8 9A                     832 	.db	00111$
      001AE9 A2                     833 	.db	00113$
      001AEA AA                     834 	.db	00115$
      001AEB B2                     835 	.db	00117$
      001AEC BA                     836 	.db	00119$
      001AED C2                     837 	.db	00121$
      001AEE CA                     838 	.db	00123$
      001AEF D2                     839 	.db	00125$
      001AF0 DA                     840 	.db	00127$
      001AF1 E2                     841 	.db	00129$
      001AF2 EA                     842 	.db	00131$
      001AF3 F2                     843 	.db	00133$
      001AF4 FA                     844 	.db	00135$
      001AF5 02                     845 	.db	00137$
      001AF6 0A                     846 	.db	00139$
      001AF7 12                     847 	.db	00141$
      001AF8 1A                     848 	.db	00143$
      001AF9 22                     849 	.db	00145$
      001AFA 2A                     850 	.db	00147$
      001AFB 32                     851 	.db	00149$
      001AFC 3A                     852 	.db	00151$
      001AFD 76                     853 	.db	00166$
      001AFE 76                     854 	.db	00166$
      001AFF 76                     855 	.db	00166$
      001B00 76                     856 	.db	00166$
      001B01 76                     857 	.db	00166$
      001B02 76                     858 	.db	00166$
      001B03 76                     859 	.db	00102$
      001B04 7E                     860 	.db	00104$
      001B05 86                     861 	.db	00106$
      001B06 8E                     862 	.db	00108$
      001B07 96                     863 	.db	00110$
      001B08 9E                     864 	.db	00112$
      001B09 A6                     865 	.db	00114$
      001B0A AE                     866 	.db	00116$
      001B0B B6                     867 	.db	00118$
      001B0C BE                     868 	.db	00120$
      001B0D C6                     869 	.db	00122$
      001B0E CE                     870 	.db	00124$
      001B0F D6                     871 	.db	00126$
      001B10 DE                     872 	.db	00128$
      001B11 E6                     873 	.db	00130$
      001B12 EE                     874 	.db	00132$
      001B13 F6                     875 	.db	00134$
      001B14 FE                     876 	.db	00136$
      001B15 06                     877 	.db	00138$
      001B16 0E                     878 	.db	00140$
      001B17 16                     879 	.db	00142$
      001B18 1E                     880 	.db	00144$
      001B19 26                     881 	.db	00146$
      001B1A 2E                     882 	.db	00148$
      001B1B 36                     883 	.db	00150$
      001B1C 3E                     884 	.db	00152$
      001B1D                        885 00181$:
      001B1D 1C                     886 	.db	00164$>>8
      001B1E 1C                     887 	.db	00166$>>8
      001B1F 1C                     888 	.db	00166$>>8
      001B20 1C                     889 	.db	00166$>>8
      001B21 1C                     890 	.db	00166$>>8
      001B22 1C                     891 	.db	00163$>>8
      001B23 1C                     892 	.db	00166$>>8
      001B24 1C                     893 	.db	00166$>>8
      001B25 1C                     894 	.db	00166$>>8
      001B26 1C                     895 	.db	00166$>>8
      001B27 1C                     896 	.db	00153$>>8
      001B28 1C                     897 	.db	00154$>>8
      001B29 1C                     898 	.db	00155$>>8
      001B2A 1C                     899 	.db	00156$>>8
      001B2B 1C                     900 	.db	00157$>>8
      001B2C 1C                     901 	.db	00158$>>8
      001B2D 1C                     902 	.db	00159$>>8
      001B2E 1C                     903 	.db	00160$>>8
      001B2F 1C                     904 	.db	00161$>>8
      001B30 1C                     905 	.db	00162$>>8
      001B31 1C                     906 	.db	00166$>>8
      001B32 1C                     907 	.db	00165$>>8
      001B33 1C                     908 	.db	00166$>>8
      001B34 1C                     909 	.db	00166$>>8
      001B35 1C                     910 	.db	00166$>>8
      001B36 1C                     911 	.db	00166$>>8
      001B37 1C                     912 	.db	00166$>>8
      001B38 1B                     913 	.db	00101$>>8
      001B39 1B                     914 	.db	00103$>>8
      001B3A 1B                     915 	.db	00105$>>8
      001B3B 1B                     916 	.db	00107$>>8
      001B3C 1B                     917 	.db	00109$>>8
      001B3D 1B                     918 	.db	00111$>>8
      001B3E 1B                     919 	.db	00113$>>8
      001B3F 1B                     920 	.db	00115$>>8
      001B40 1B                     921 	.db	00117$>>8
      001B41 1B                     922 	.db	00119$>>8
      001B42 1B                     923 	.db	00121$>>8
      001B43 1B                     924 	.db	00123$>>8
      001B44 1B                     925 	.db	00125$>>8
      001B45 1B                     926 	.db	00127$>>8
      001B46 1B                     927 	.db	00129$>>8
      001B47 1B                     928 	.db	00131$>>8
      001B48 1B                     929 	.db	00133$>>8
      001B49 1B                     930 	.db	00135$>>8
      001B4A 1C                     931 	.db	00137$>>8
      001B4B 1C                     932 	.db	00139$>>8
      001B4C 1C                     933 	.db	00141$>>8
      001B4D 1C                     934 	.db	00143$>>8
      001B4E 1C                     935 	.db	00145$>>8
      001B4F 1C                     936 	.db	00147$>>8
      001B50 1C                     937 	.db	00149$>>8
      001B51 1C                     938 	.db	00151$>>8
      001B52 1C                     939 	.db	00166$>>8
      001B53 1C                     940 	.db	00166$>>8
      001B54 1C                     941 	.db	00166$>>8
      001B55 1C                     942 	.db	00166$>>8
      001B56 1C                     943 	.db	00166$>>8
      001B57 1C                     944 	.db	00166$>>8
      001B58 1B                     945 	.db	00102$>>8
      001B59 1B                     946 	.db	00104$>>8
      001B5A 1B                     947 	.db	00106$>>8
      001B5B 1B                     948 	.db	00108$>>8
      001B5C 1B                     949 	.db	00110$>>8
      001B5D 1B                     950 	.db	00112$>>8
      001B5E 1B                     951 	.db	00114$>>8
      001B5F 1B                     952 	.db	00116$>>8
      001B60 1B                     953 	.db	00118$>>8
      001B61 1B                     954 	.db	00120$>>8
      001B62 1B                     955 	.db	00122$>>8
      001B63 1B                     956 	.db	00124$>>8
      001B64 1B                     957 	.db	00126$>>8
      001B65 1B                     958 	.db	00128$>>8
      001B66 1B                     959 	.db	00130$>>8
      001B67 1B                     960 	.db	00132$>>8
      001B68 1B                     961 	.db	00134$>>8
      001B69 1B                     962 	.db	00136$>>8
      001B6A 1C                     963 	.db	00138$>>8
      001B6B 1C                     964 	.db	00140$>>8
      001B6C 1C                     965 	.db	00142$>>8
      001B6D 1C                     966 	.db	00144$>>8
      001B6E 1C                     967 	.db	00146$>>8
      001B6F 1C                     968 	.db	00148$>>8
      001B70 1C                     969 	.db	00150$>>8
      001B71 1C                     970 	.db	00152$>>8
                                    971 ;	../UI_Manager/Display_Manager/display.c:102: case 'A':
      001B72                        972 00101$:
                                    973 ;	../UI_Manager/Display_Manager/display.c:103: return CHAR_A;
      001B72 75 82 82         [24]  974 	mov	dpl,#0x82
      001B75 22               [24]  975 	ret
                                    976 ;	../UI_Manager/Display_Manager/display.c:104: case 'a':
      001B76                        977 00102$:
                                    978 ;	../UI_Manager/Display_Manager/display.c:105: return CHAR_a;
      001B76 75 82 86         [24]  979 	mov	dpl,#0x86
      001B79 22               [24]  980 	ret
                                    981 ;	../UI_Manager/Display_Manager/display.c:106: case 'B':
      001B7A                        982 00103$:
                                    983 ;	../UI_Manager/Display_Manager/display.c:107: return CHAR_B;
      001B7A 75 82 42         [24]  984 	mov	dpl,#0x42
      001B7D 22               [24]  985 	ret
                                    986 ;	../UI_Manager/Display_Manager/display.c:108: case 'b':
      001B7E                        987 00104$:
                                    988 ;	../UI_Manager/Display_Manager/display.c:109: return CHAR_b;
      001B7E 75 82 46         [24]  989 	mov	dpl,#0x46
      001B81 22               [24]  990 	ret
                                    991 ;	../UI_Manager/Display_Manager/display.c:110: case 'C':
      001B82                        992 00105$:
                                    993 ;	../UI_Manager/Display_Manager/display.c:111: return CHAR_C;
      001B82 75 82 C2         [24]  994 	mov	dpl,#0xc2
      001B85 22               [24]  995 	ret
                                    996 ;	../UI_Manager/Display_Manager/display.c:112: case 'c':
      001B86                        997 00106$:
                                    998 ;	../UI_Manager/Display_Manager/display.c:113: return CHAR_c;
      001B86 75 82 C6         [24]  999 	mov	dpl,#0xc6
      001B89 22               [24] 1000 	ret
                                   1001 ;	../UI_Manager/Display_Manager/display.c:114: case 'D':
      001B8A                       1002 00107$:
                                   1003 ;	../UI_Manager/Display_Manager/display.c:115: return CHAR_D;
      001B8A 75 82 22         [24] 1004 	mov	dpl,#0x22
      001B8D 22               [24] 1005 	ret
                                   1006 ;	../UI_Manager/Display_Manager/display.c:116: case 'd':
      001B8E                       1007 00108$:
                                   1008 ;	../UI_Manager/Display_Manager/display.c:117: return CHAR_d;
      001B8E 75 82 26         [24] 1009 	mov	dpl,#0x26
      001B91 22               [24] 1010 	ret
                                   1011 ;	../UI_Manager/Display_Manager/display.c:118: case 'E':
      001B92                       1012 00109$:
                                   1013 ;	../UI_Manager/Display_Manager/display.c:119: return CHAR_E;
      001B92 75 82 A2         [24] 1014 	mov	dpl,#0xa2
      001B95 22               [24] 1015 	ret
                                   1016 ;	../UI_Manager/Display_Manager/display.c:120: case 'e':
      001B96                       1017 00110$:
                                   1018 ;	../UI_Manager/Display_Manager/display.c:121: return CHAR_e;
      001B96 75 82 A6         [24] 1019 	mov	dpl,#0xa6
      001B99 22               [24] 1020 	ret
                                   1021 ;	../UI_Manager/Display_Manager/display.c:122: case 'F':
      001B9A                       1022 00111$:
                                   1023 ;	../UI_Manager/Display_Manager/display.c:123: return CHAR_F;
      001B9A 75 82 62         [24] 1024 	mov	dpl,#0x62
      001B9D 22               [24] 1025 	ret
                                   1026 ;	../UI_Manager/Display_Manager/display.c:124: case 'f':
      001B9E                       1027 00112$:
                                   1028 ;	../UI_Manager/Display_Manager/display.c:125: return CHAR_f;
      001B9E 75 82 66         [24] 1029 	mov	dpl,#0x66
      001BA1 22               [24] 1030 	ret
                                   1031 ;	../UI_Manager/Display_Manager/display.c:126: case 'G':
      001BA2                       1032 00113$:
                                   1033 ;	../UI_Manager/Display_Manager/display.c:127: return CHAR_G;
      001BA2 75 82 E2         [24] 1034 	mov	dpl,#0xe2
      001BA5 22               [24] 1035 	ret
                                   1036 ;	../UI_Manager/Display_Manager/display.c:128: case 'g':
      001BA6                       1037 00114$:
                                   1038 ;	../UI_Manager/Display_Manager/display.c:129: return CHAR_g;
      001BA6 75 82 E6         [24] 1039 	mov	dpl,#0xe6
      001BA9 22               [24] 1040 	ret
                                   1041 ;	../UI_Manager/Display_Manager/display.c:130: case 'H':
      001BAA                       1042 00115$:
                                   1043 ;	../UI_Manager/Display_Manager/display.c:131: return CHAR_H;
      001BAA 75 82 12         [24] 1044 	mov	dpl,#0x12
      001BAD 22               [24] 1045 	ret
                                   1046 ;	../UI_Manager/Display_Manager/display.c:132: case 'h':
      001BAE                       1047 00116$:
                                   1048 ;	../UI_Manager/Display_Manager/display.c:133: return CHAR_h;
      001BAE 75 82 16         [24] 1049 	mov	dpl,#0x16
      001BB1 22               [24] 1050 	ret
                                   1051 ;	../UI_Manager/Display_Manager/display.c:134: case 'I':
      001BB2                       1052 00117$:
                                   1053 ;	../UI_Manager/Display_Manager/display.c:135: return CHAR_I;
      001BB2 75 82 92         [24] 1054 	mov	dpl,#0x92
      001BB5 22               [24] 1055 	ret
                                   1056 ;	../UI_Manager/Display_Manager/display.c:136: case 'i':
      001BB6                       1057 00118$:
                                   1058 ;	../UI_Manager/Display_Manager/display.c:137: return CHAR_i;
      001BB6 75 82 96         [24] 1059 	mov	dpl,#0x96
      001BB9 22               [24] 1060 	ret
                                   1061 ;	../UI_Manager/Display_Manager/display.c:138: case 'J':
      001BBA                       1062 00119$:
                                   1063 ;	../UI_Manager/Display_Manager/display.c:139: return CHAR_J;
      001BBA 75 82 52         [24] 1064 	mov	dpl,#0x52
      001BBD 22               [24] 1065 	ret
                                   1066 ;	../UI_Manager/Display_Manager/display.c:140: case 'j':
      001BBE                       1067 00120$:
                                   1068 ;	../UI_Manager/Display_Manager/display.c:141: return CHAR_j;
      001BBE 75 82 56         [24] 1069 	mov	dpl,#0x56
      001BC1 22               [24] 1070 	ret
                                   1071 ;	../UI_Manager/Display_Manager/display.c:142: case 'K':
      001BC2                       1072 00121$:
                                   1073 ;	../UI_Manager/Display_Manager/display.c:143: return CHAR_K;
      001BC2 75 82 D2         [24] 1074 	mov	dpl,#0xd2
      001BC5 22               [24] 1075 	ret
                                   1076 ;	../UI_Manager/Display_Manager/display.c:144: case 'k':
      001BC6                       1077 00122$:
                                   1078 ;	../UI_Manager/Display_Manager/display.c:145: return CHAR_k;
      001BC6 75 82 D6         [24] 1079 	mov	dpl,#0xd6
      001BC9 22               [24] 1080 	ret
                                   1081 ;	../UI_Manager/Display_Manager/display.c:146: case 'L':
      001BCA                       1082 00123$:
                                   1083 ;	../UI_Manager/Display_Manager/display.c:147: return CHAR_L;
      001BCA 75 82 32         [24] 1084 	mov	dpl,#0x32
      001BCD 22               [24] 1085 	ret
                                   1086 ;	../UI_Manager/Display_Manager/display.c:148: case 'l':
      001BCE                       1087 00124$:
                                   1088 ;	../UI_Manager/Display_Manager/display.c:149: return CHAR_l;
      001BCE 75 82 36         [24] 1089 	mov	dpl,#0x36
      001BD1 22               [24] 1090 	ret
                                   1091 ;	../UI_Manager/Display_Manager/display.c:150: case 'M':
      001BD2                       1092 00125$:
                                   1093 ;	../UI_Manager/Display_Manager/display.c:151: return CHAR_M;
      001BD2 75 82 B2         [24] 1094 	mov	dpl,#0xb2
      001BD5 22               [24] 1095 	ret
                                   1096 ;	../UI_Manager/Display_Manager/display.c:152: case 'm':
      001BD6                       1097 00126$:
                                   1098 ;	../UI_Manager/Display_Manager/display.c:153: return CHAR_m;
      001BD6 75 82 B6         [24] 1099 	mov	dpl,#0xb6
      001BD9 22               [24] 1100 	ret
                                   1101 ;	../UI_Manager/Display_Manager/display.c:154: case 'N':
      001BDA                       1102 00127$:
                                   1103 ;	../UI_Manager/Display_Manager/display.c:155: return CHAR_N;
      001BDA 75 82 72         [24] 1104 	mov	dpl,#0x72
      001BDD 22               [24] 1105 	ret
                                   1106 ;	../UI_Manager/Display_Manager/display.c:156: case 'n':
      001BDE                       1107 00128$:
                                   1108 ;	../UI_Manager/Display_Manager/display.c:157: return CHAR_n;
      001BDE 75 82 76         [24] 1109 	mov	dpl,#0x76
      001BE1 22               [24] 1110 	ret
                                   1111 ;	../UI_Manager/Display_Manager/display.c:158: case 'O':
      001BE2                       1112 00129$:
                                   1113 ;	../UI_Manager/Display_Manager/display.c:159: return CHAR_O;
      001BE2 75 82 F2         [24] 1114 	mov	dpl,#0xf2
      001BE5 22               [24] 1115 	ret
                                   1116 ;	../UI_Manager/Display_Manager/display.c:160: case 'o':
      001BE6                       1117 00130$:
                                   1118 ;	../UI_Manager/Display_Manager/display.c:161: return CHAR_o;
      001BE6 75 82 F6         [24] 1119 	mov	dpl,#0xf6
      001BE9 22               [24] 1120 	ret
                                   1121 ;	../UI_Manager/Display_Manager/display.c:162: case 'P':
      001BEA                       1122 00131$:
                                   1123 ;	../UI_Manager/Display_Manager/display.c:163: return CHAR_P;
      001BEA 75 82 0A         [24] 1124 	mov	dpl,#0x0a
      001BED 22               [24] 1125 	ret
                                   1126 ;	../UI_Manager/Display_Manager/display.c:164: case 'p':
      001BEE                       1127 00132$:
                                   1128 ;	../UI_Manager/Display_Manager/display.c:165: return CHAR_p;
      001BEE 75 82 0E         [24] 1129 	mov	dpl,#0x0e
      001BF1 22               [24] 1130 	ret
                                   1131 ;	../UI_Manager/Display_Manager/display.c:166: case 'Q':
      001BF2                       1132 00133$:
                                   1133 ;	../UI_Manager/Display_Manager/display.c:167: return CHAR_Q;
      001BF2 75 82 8A         [24] 1134 	mov	dpl,#0x8a
      001BF5 22               [24] 1135 	ret
                                   1136 ;	../UI_Manager/Display_Manager/display.c:168: case 'q':
      001BF6                       1137 00134$:
                                   1138 ;	../UI_Manager/Display_Manager/display.c:169: return CHAR_q;
      001BF6 75 82 8E         [24] 1139 	mov	dpl,#0x8e
      001BF9 22               [24] 1140 	ret
                                   1141 ;	../UI_Manager/Display_Manager/display.c:170: case 'R':
      001BFA                       1142 00135$:
                                   1143 ;	../UI_Manager/Display_Manager/display.c:171: return CHAR_R;
      001BFA 75 82 4A         [24] 1144 	mov	dpl,#0x4a
      001BFD 22               [24] 1145 	ret
                                   1146 ;	../UI_Manager/Display_Manager/display.c:172: case 'r':
      001BFE                       1147 00136$:
                                   1148 ;	../UI_Manager/Display_Manager/display.c:173: return CHAR_r;
      001BFE 75 82 4E         [24] 1149 	mov	dpl,#0x4e
      001C01 22               [24] 1150 	ret
                                   1151 ;	../UI_Manager/Display_Manager/display.c:174: case 'S':
      001C02                       1152 00137$:
                                   1153 ;	../UI_Manager/Display_Manager/display.c:175: return CHAR_S;
      001C02 75 82 CA         [24] 1154 	mov	dpl,#0xca
      001C05 22               [24] 1155 	ret
                                   1156 ;	../UI_Manager/Display_Manager/display.c:176: case 's':
      001C06                       1157 00138$:
                                   1158 ;	../UI_Manager/Display_Manager/display.c:177: return CHAR_s;
      001C06 75 82 CE         [24] 1159 	mov	dpl,#0xce
      001C09 22               [24] 1160 	ret
                                   1161 ;	../UI_Manager/Display_Manager/display.c:178: case 'T':
      001C0A                       1162 00139$:
                                   1163 ;	../UI_Manager/Display_Manager/display.c:179: return CHAR_T;
      001C0A 75 82 2A         [24] 1164 	mov	dpl,#0x2a
      001C0D 22               [24] 1165 	ret
                                   1166 ;	../UI_Manager/Display_Manager/display.c:180: case 't':
      001C0E                       1167 00140$:
                                   1168 ;	../UI_Manager/Display_Manager/display.c:181: return CHAR_t;
      001C0E 75 82 2E         [24] 1169 	mov	dpl,#0x2e
      001C11 22               [24] 1170 	ret
                                   1171 ;	../UI_Manager/Display_Manager/display.c:182: case 'U':
      001C12                       1172 00141$:
                                   1173 ;	../UI_Manager/Display_Manager/display.c:183: return CHAR_U;
      001C12 75 82 AA         [24] 1174 	mov	dpl,#0xaa
      001C15 22               [24] 1175 	ret
                                   1176 ;	../UI_Manager/Display_Manager/display.c:184: case 'u':
      001C16                       1177 00142$:
                                   1178 ;	../UI_Manager/Display_Manager/display.c:185: return CHAR_u;
      001C16 75 82 AE         [24] 1179 	mov	dpl,#0xae
      001C19 22               [24] 1180 	ret
                                   1181 ;	../UI_Manager/Display_Manager/display.c:186: case 'V':
      001C1A                       1182 00143$:
                                   1183 ;	../UI_Manager/Display_Manager/display.c:187: return CHAR_V;
      001C1A 75 82 6A         [24] 1184 	mov	dpl,#0x6a
      001C1D 22               [24] 1185 	ret
                                   1186 ;	../UI_Manager/Display_Manager/display.c:188: case 'v':
      001C1E                       1187 00144$:
                                   1188 ;	../UI_Manager/Display_Manager/display.c:189: return CHAR_v;
      001C1E 75 82 6E         [24] 1189 	mov	dpl,#0x6e
      001C21 22               [24] 1190 	ret
                                   1191 ;	../UI_Manager/Display_Manager/display.c:190: case 'W':
      001C22                       1192 00145$:
                                   1193 ;	../UI_Manager/Display_Manager/display.c:191: return CHAR_W;
      001C22 75 82 EA         [24] 1194 	mov	dpl,#0xea
                                   1195 ;	../UI_Manager/Display_Manager/display.c:192: case 'w':
      001C25 22               [24] 1196 	ret
      001C26                       1197 00146$:
                                   1198 ;	../UI_Manager/Display_Manager/display.c:193: return CHAR_w;
      001C26 75 82 EE         [24] 1199 	mov	dpl,#0xee
                                   1200 ;	../UI_Manager/Display_Manager/display.c:194: case 'X':
      001C29 22               [24] 1201 	ret
      001C2A                       1202 00147$:
                                   1203 ;	../UI_Manager/Display_Manager/display.c:195: return CHAR_X;
      001C2A 75 82 1A         [24] 1204 	mov	dpl,#0x1a
                                   1205 ;	../UI_Manager/Display_Manager/display.c:196: case 'x':
      001C2D 22               [24] 1206 	ret
      001C2E                       1207 00148$:
                                   1208 ;	../UI_Manager/Display_Manager/display.c:197: return CHAR_x;
      001C2E 75 82 1E         [24] 1209 	mov	dpl,#0x1e
                                   1210 ;	../UI_Manager/Display_Manager/display.c:198: case 'Y':
      001C31 22               [24] 1211 	ret
      001C32                       1212 00149$:
                                   1213 ;	../UI_Manager/Display_Manager/display.c:199: return CHAR_Y;
      001C32 75 82 9A         [24] 1214 	mov	dpl,#0x9a
                                   1215 ;	../UI_Manager/Display_Manager/display.c:200: case 'y':
      001C35 22               [24] 1216 	ret
      001C36                       1217 00150$:
                                   1218 ;	../UI_Manager/Display_Manager/display.c:201: return CHAR_y;
      001C36 75 82 9E         [24] 1219 	mov	dpl,#0x9e
                                   1220 ;	../UI_Manager/Display_Manager/display.c:202: case 'Z':
      001C39 22               [24] 1221 	ret
      001C3A                       1222 00151$:
                                   1223 ;	../UI_Manager/Display_Manager/display.c:203: return CHAR_Z;
      001C3A 75 82 5A         [24] 1224 	mov	dpl,#0x5a
                                   1225 ;	../UI_Manager/Display_Manager/display.c:204: case 'z':
      001C3D 22               [24] 1226 	ret
      001C3E                       1227 00152$:
                                   1228 ;	../UI_Manager/Display_Manager/display.c:205: return CHAR_z;
      001C3E 75 82 5E         [24] 1229 	mov	dpl,#0x5e
                                   1230 ;	../UI_Manager/Display_Manager/display.c:206: case '0':
      001C41 22               [24] 1231 	ret
      001C42                       1232 00153$:
                                   1233 ;	../UI_Manager/Display_Manager/display.c:207: return CHAR_0;
      001C42 75 82 0C         [24] 1234 	mov	dpl,#0x0c
                                   1235 ;	../UI_Manager/Display_Manager/display.c:208: case '1':
      001C45 22               [24] 1236 	ret
      001C46                       1237 00154$:
                                   1238 ;	../UI_Manager/Display_Manager/display.c:209: return CHAR_1;
      001C46 75 82 8C         [24] 1239 	mov	dpl,#0x8c
                                   1240 ;	../UI_Manager/Display_Manager/display.c:210: case '2':
      001C49 22               [24] 1241 	ret
      001C4A                       1242 00155$:
                                   1243 ;	../UI_Manager/Display_Manager/display.c:211: return CHAR_2;
      001C4A 75 82 4C         [24] 1244 	mov	dpl,#0x4c
                                   1245 ;	../UI_Manager/Display_Manager/display.c:212: case '3':
      001C4D 22               [24] 1246 	ret
      001C4E                       1247 00156$:
                                   1248 ;	../UI_Manager/Display_Manager/display.c:213: return CHAR_3;
      001C4E 75 82 CC         [24] 1249 	mov	dpl,#0xcc
                                   1250 ;	../UI_Manager/Display_Manager/display.c:214: case '4':
      001C51 22               [24] 1251 	ret
      001C52                       1252 00157$:
                                   1253 ;	../UI_Manager/Display_Manager/display.c:215: return CHAR_4;
      001C52 75 82 2C         [24] 1254 	mov	dpl,#0x2c
                                   1255 ;	../UI_Manager/Display_Manager/display.c:216: case '5':
      001C55 22               [24] 1256 	ret
      001C56                       1257 00158$:
                                   1258 ;	../UI_Manager/Display_Manager/display.c:217: return CHAR_5;
      001C56 75 82 AC         [24] 1259 	mov	dpl,#0xac
                                   1260 ;	../UI_Manager/Display_Manager/display.c:218: case '6':
      001C59 22               [24] 1261 	ret
      001C5A                       1262 00159$:
                                   1263 ;	../UI_Manager/Display_Manager/display.c:219: return CHAR_6;
      001C5A 75 82 6C         [24] 1264 	mov	dpl,#0x6c
                                   1265 ;	../UI_Manager/Display_Manager/display.c:220: case '7':
      001C5D 22               [24] 1266 	ret
      001C5E                       1267 00160$:
                                   1268 ;	../UI_Manager/Display_Manager/display.c:221: return CHAR_7;
      001C5E 75 82 EC         [24] 1269 	mov	dpl,#0xec
                                   1270 ;	../UI_Manager/Display_Manager/display.c:222: case '8':
      001C61 22               [24] 1271 	ret
      001C62                       1272 00161$:
                                   1273 ;	../UI_Manager/Display_Manager/display.c:223: return CHAR_8;
      001C62 75 82 1C         [24] 1274 	mov	dpl,#0x1c
                                   1275 ;	../UI_Manager/Display_Manager/display.c:224: case '9':
      001C65 22               [24] 1276 	ret
      001C66                       1277 00162$:
                                   1278 ;	../UI_Manager/Display_Manager/display.c:225: return CHAR_9;
      001C66 75 82 9C         [24] 1279 	mov	dpl,#0x9c
                                   1280 ;	../UI_Manager/Display_Manager/display.c:226: case '+':
      001C69 22               [24] 1281 	ret
      001C6A                       1282 00163$:
                                   1283 ;	../UI_Manager/Display_Manager/display.c:227: return CHAR_PLUS;
      001C6A 75 82 D4         [24] 1284 	mov	dpl,#0xd4
                                   1285 ;	../UI_Manager/Display_Manager/display.c:228: case '&':
      001C6D 22               [24] 1286 	ret
      001C6E                       1287 00164$:
                                   1288 ;	../UI_Manager/Display_Manager/display.c:229: return CHAR_AND;
      001C6E 75 82 64         [24] 1289 	mov	dpl,#0x64
                                   1290 ;	../UI_Manager/Display_Manager/display.c:230: case ';':
      001C71 22               [24] 1291 	ret
      001C72                       1292 00165$:
                                   1293 ;	../UI_Manager/Display_Manager/display.c:231: return CHAR_STAR_7;
      001C72 75 82 60         [24] 1294 	mov	dpl,#0x60
                                   1295 ;	../UI_Manager/Display_Manager/display.c:232: }
      001C75 22               [24] 1296 	ret
      001C76                       1297 00166$:
                                   1298 ;	../UI_Manager/Display_Manager/display.c:234: return CHAR_NULL;
      001C76 75 82 04         [24] 1299 	mov	dpl,#0x04
                                   1300 ;	../UI_Manager/Display_Manager/display.c:235: }
      001C79 22               [24] 1301 	ret
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
      001C7A                       1312 _writeShiftReg:
      001C7A AE 82            [24] 1313 	mov	r6,dpl
      001C7C AF 83            [24] 1314 	mov	r7,dph
                                   1315 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      001C7E 7D 04            [12] 1316 	mov	r5,#0x04
      001C80                       1317 00102$:
                                   1318 ;	../UI_Manager/Display_Manager/display.c:244: SER = value & (1 << i);
      001C80 8D F0            [24] 1319 	mov	b,r5
      001C82 05 F0            [12] 1320 	inc	b
      001C84 7B 01            [12] 1321 	mov	r3,#0x01
      001C86 7C 00            [12] 1322 	mov	r4,#0x00
      001C88 80 06            [24] 1323 	sjmp	00116$
      001C8A                       1324 00115$:
      001C8A EB               [12] 1325 	mov	a,r3
      001C8B 2B               [12] 1326 	add	a,r3
      001C8C FB               [12] 1327 	mov	r3,a
      001C8D EC               [12] 1328 	mov	a,r4
      001C8E 33               [12] 1329 	rlc	a
      001C8F FC               [12] 1330 	mov	r4,a
      001C90                       1331 00116$:
      001C90 D5 F0 F7         [24] 1332 	djnz	b,00115$
      001C93 EE               [12] 1333 	mov	a,r6
      001C94 52 03            [12] 1334 	anl	ar3,a
      001C96 EF               [12] 1335 	mov	a,r7
      001C97 52 04            [12] 1336 	anl	ar4,a
                                   1337 ;	assignBit
      001C99 EB               [12] 1338 	mov	a,r3
      001C9A 4C               [12] 1339 	orl	a,r4
      001C9B 24 FF            [12] 1340 	add	a,#0xff
      001C9D 92 95            [24] 1341 	mov	_SER,c
                                   1342 ;	../UI_Manager/Display_Manager/display.c:247: SCK = 1;
                                   1343 ;	assignBit
      001C9F D2 93            [12] 1344 	setb	_SCK
                                   1345 ;	../UI_Manager/Display_Manager/display.c:248: SCK = 0;
                                   1346 ;	assignBit
      001CA1 C2 93            [12] 1347 	clr	_SCK
                                   1348 ;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
      001CA3 0D               [12] 1349 	inc	r5
      001CA4 BD 10 00         [24] 1350 	cjne	r5,#0x10,00117$
      001CA7                       1351 00117$:
      001CA7 40 D7            [24] 1352 	jc	00102$
                                   1353 ;	../UI_Manager/Display_Manager/display.c:250: RCK = 1;
                                   1354 ;	assignBit
      001CA9 D2 92            [12] 1355 	setb	_RCK
                                   1356 ;	../UI_Manager/Display_Manager/display.c:251: RCK = 0;
                                   1357 ;	assignBit
      001CAB C2 92            [12] 1358 	clr	_RCK
                                   1359 ;	../UI_Manager/Display_Manager/display.c:252: }
      001CAD 22               [24] 1360 	ret
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
      001CAE                       1372 _flipByte:
      001CAE AF 82            [24] 1373 	mov	r7,dpl
                                   1374 ;	../UI_Manager/Display_Manager/display.c:256: uint8_t i, temp = 0;
      001CB0 7E 00            [12] 1375 	mov	r6,#0x00
                                   1376 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      001CB2 7D 00            [12] 1377 	mov	r5,#0x00
      001CB4                       1378 00102$:
                                   1379 ;	../UI_Manager/Display_Manager/display.c:259: temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
      001CB4 8D F0            [24] 1380 	mov	b,r5
      001CB6 05 F0            [12] 1381 	inc	b
      001CB8 7B 80            [12] 1382 	mov	r3,#0x80
      001CBA E4               [12] 1383 	clr	a
      001CBB FC               [12] 1384 	mov	r4,a
      001CBC 33               [12] 1385 	rlc	a
      001CBD 92 D2            [24] 1386 	mov	ov,c
      001CBF 80 08            [24] 1387 	sjmp	00122$
      001CC1                       1388 00121$:
      001CC1 A2 D2            [12] 1389 	mov	c,ov
      001CC3 EC               [12] 1390 	mov	a,r4
      001CC4 13               [12] 1391 	rrc	a
      001CC5 FC               [12] 1392 	mov	r4,a
      001CC6 EB               [12] 1393 	mov	a,r3
      001CC7 13               [12] 1394 	rrc	a
      001CC8 FB               [12] 1395 	mov	r3,a
      001CC9                       1396 00122$:
      001CC9 D5 F0 F5         [24] 1397 	djnz	b,00121$
      001CCC 8F 01            [24] 1398 	mov	ar1,r7
      001CCE 7A 00            [12] 1399 	mov	r2,#0x00
      001CD0 E9               [12] 1400 	mov	a,r1
      001CD1 52 03            [12] 1401 	anl	ar3,a
      001CD3 EA               [12] 1402 	mov	a,r2
      001CD4 52 04            [12] 1403 	anl	ar4,a
      001CD6 EB               [12] 1404 	mov	a,r3
      001CD7 4C               [12] 1405 	orl	a,r4
      001CD8 60 06            [24] 1406 	jz	00106$
      001CDA 7B 01            [12] 1407 	mov	r3,#0x01
      001CDC 7C 00            [12] 1408 	mov	r4,#0x00
      001CDE 80 04            [24] 1409 	sjmp	00107$
      001CE0                       1410 00106$:
      001CE0 7B 00            [12] 1411 	mov	r3,#0x00
      001CE2 7C 00            [12] 1412 	mov	r4,#0x00
      001CE4                       1413 00107$:
      001CE4 8D 04            [24] 1414 	mov	ar4,r5
      001CE6 8C F0            [24] 1415 	mov	b,r4
      001CE8 05 F0            [12] 1416 	inc	b
      001CEA EB               [12] 1417 	mov	a,r3
      001CEB 80 02            [24] 1418 	sjmp	00126$
      001CED                       1419 00124$:
      001CED 25 E0            [12] 1420 	add	a,acc
      001CEF                       1421 00126$:
      001CEF D5 F0 FB         [24] 1422 	djnz	b,00124$
      001CF2 8E 04            [24] 1423 	mov	ar4,r6
      001CF4 4C               [12] 1424 	orl	a,r4
      001CF5 FE               [12] 1425 	mov	r6,a
                                   1426 ;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
      001CF6 0D               [12] 1427 	inc	r5
      001CF7 BD 08 00         [24] 1428 	cjne	r5,#0x08,00127$
      001CFA                       1429 00127$:
      001CFA 40 B8            [24] 1430 	jc	00102$
                                   1431 ;	../UI_Manager/Display_Manager/display.c:262: return temp;
      001CFC 8E 82            [24] 1432 	mov	dpl,r6
                                   1433 ;	../UI_Manager/Display_Manager/display.c:263: }
      001CFE 22               [24] 1434 	ret
                                   1435 	.area CSEG    (CODE)
                                   1436 	.area CONST   (CODE)
                                   1437 	.area XINIT   (CODE)
                                   1438 	.area CABS    (ABS,CODE)
