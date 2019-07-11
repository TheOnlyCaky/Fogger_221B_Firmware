                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module storage
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Init_Data
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
                                     97 	.globl _IAP_AUX
                                     98 	.globl _save_load_settings
                                     99 	.globl _get_runtime_data
                                    100 	.globl _set_runtime_data
                                    101 	.globl _set_dmx_address
                                    102 	.globl _get_dmx_address
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
      00003C                        207 _Runtime_Data:
      00003C                        208 	.ds 16
                                    209 ;--------------------------------------------------------
                                    210 ; overlayable items in internal ram 
                                    211 ;--------------------------------------------------------
                                    212 ;--------------------------------------------------------
                                    213 ; indirectly addressable internal ram data
                                    214 ;--------------------------------------------------------
                                    215 	.area ISEG    (DATA)
                                    216 ;--------------------------------------------------------
                                    217 ; absolute internal ram data
                                    218 ;--------------------------------------------------------
                                    219 	.area IABS    (ABS,DATA)
                                    220 	.area IABS    (ABS,DATA)
                                    221 ;--------------------------------------------------------
                                    222 ; bit data
                                    223 ;--------------------------------------------------------
                                    224 	.area BSEG    (BIT)
                                    225 ;--------------------------------------------------------
                                    226 ; paged external ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area PSEG    (PAG,XDATA)
                                    229 ;--------------------------------------------------------
                                    230 ; external ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area XSEG    (XDATA)
                           000100   233 _IAP_AUX	=	0x0100
                                    234 ;--------------------------------------------------------
                                    235 ; absolute external ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area XABS    (ABS,XDATA)
                                    238 ;--------------------------------------------------------
                                    239 ; external initialized ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area HOME    (CODE)
                                    242 	.area GSINIT0 (CODE)
                                    243 	.area GSINIT1 (CODE)
                                    244 	.area GSINIT2 (CODE)
                                    245 	.area GSINIT3 (CODE)
                                    246 	.area GSINIT4 (CODE)
                                    247 	.area GSINIT5 (CODE)
                                    248 	.area GSINIT  (CODE)
                                    249 	.area GSFINAL (CODE)
                                    250 	.area CSEG    (CODE)
                                    251 ;--------------------------------------------------------
                                    252 ; global & static initialisations
                                    253 ;--------------------------------------------------------
                                    254 	.area HOME    (CODE)
                                    255 	.area GSINIT  (CODE)
                                    256 	.area GSFINAL (CODE)
                                    257 	.area GSINIT  (CODE)
                                    258 ;--------------------------------------------------------
                                    259 ; Home
                                    260 ;--------------------------------------------------------
                                    261 	.area HOME    (CODE)
                                    262 	.area HOME    (CODE)
                                    263 ;--------------------------------------------------------
                                    264 ; code
                                    265 ;--------------------------------------------------------
                                    266 	.area CSEG    (CODE)
                                    267 ;------------------------------------------------------------
                                    268 ;Allocation info for local variables in function 'save_load_settings'
                                    269 ;------------------------------------------------------------
                                    270 ;save                      Allocated to stack - _bp -3
                                    271 ;slot                      Allocated to registers r7 
                                    272 ;i                         Allocated to registers r5 
                                    273 ;------------------------------------------------------------
                                    274 ;	../Storage_Manager/storage.c:30: void save_load_settings(uint8_t slot, uint8_t save){
                                    275 ;	-----------------------------------------
                                    276 ;	 function save_load_settings
                                    277 ;	-----------------------------------------
      002F2D                        278 _save_load_settings:
                           000007   279 	ar7 = 0x07
                           000006   280 	ar6 = 0x06
                           000005   281 	ar5 = 0x05
                           000004   282 	ar4 = 0x04
                           000003   283 	ar3 = 0x03
                           000002   284 	ar2 = 0x02
                           000001   285 	ar1 = 0x01
                           000000   286 	ar0 = 0x00
      002F2D C0 1A            [24]  287 	push	_bp
      002F2F 85 81 1A         [24]  288 	mov	_bp,sp
                                    289 ;	../Storage_Manager/storage.c:33: slot = slot * CONFIG_COUNT;
      002F32 E5 82            [12]  290 	mov	a,dpl
      002F34 C4               [12]  291 	swap	a
      002F35 54 F0            [12]  292 	anl	a,#0xf0
      002F37 FF               [12]  293 	mov	r7,a
                                    294 ;	../Storage_Manager/storage.c:35: if(save == LOAD){
      002F38 E5 1A            [12]  295 	mov	a,_bp
      002F3A 24 FD            [12]  296 	add	a,#0xfd
      002F3C F8               [12]  297 	mov	r0,a
      002F3D E6               [12]  298 	mov	a,@r0
      002F3E 70 03            [24]  299 	jnz	00115$
                                    300 ;	../Storage_Manager/storage.c:36: IAPEN = IAP_Read; //read
      002F40 75 E4 A0         [24]  301 	mov	_IAPEN,#0xa0
                                    302 ;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
      002F43                        303 00115$:
      002F43 E5 1A            [12]  304 	mov	a,_bp
      002F45 24 FD            [12]  305 	add	a,#0xfd
      002F47 F8               [12]  306 	mov	r0,a
      002F48 E4               [12]  307 	clr	a
      002F49 B6 01 01         [24]  308 	cjne	@r0,#0x01,00140$
      002F4C 04               [12]  309 	inc	a
      002F4D                        310 00140$:
      002F4D FE               [12]  311 	mov	r6,a
      002F4E 7D 00            [12]  312 	mov	r5,#0x00
      002F50                        313 00109$:
                                    314 ;	../Storage_Manager/storage.c:40: if(save == SAVE){
      002F50 EE               [12]  315 	mov	a,r6
      002F51 60 17            [24]  316 	jz	00104$
                                    317 ;	../Storage_Manager/storage.c:41: IAP_AUX[i + slot] = Runtime_Data[i];
      002F53 EF               [12]  318 	mov	a,r7
      002F54 2D               [12]  319 	add	a,r5
      002F55 24 00            [12]  320 	add	a,#_IAP_AUX
      002F57 FB               [12]  321 	mov	r3,a
      002F58 E4               [12]  322 	clr	a
      002F59 34 01            [12]  323 	addc	a,#(_IAP_AUX >> 8)
      002F5B FC               [12]  324 	mov	r4,a
      002F5C ED               [12]  325 	mov	a,r5
      002F5D 24 3C            [12]  326 	add	a,#_Runtime_Data
      002F5F F9               [12]  327 	mov	r1,a
      002F60 87 02            [24]  328 	mov	ar2,@r1
      002F62 8B 82            [24]  329 	mov	dpl,r3
      002F64 8C 83            [24]  330 	mov	dph,r4
      002F66 EA               [12]  331 	mov	a,r2
      002F67 F0               [24]  332 	movx	@dptr,a
      002F68 80 12            [24]  333 	sjmp	00110$
      002F6A                        334 00104$:
                                    335 ;	../Storage_Manager/storage.c:43: Runtime_Data[i] = IAP_AUX[i + slot];
      002F6A ED               [12]  336 	mov	a,r5
      002F6B 24 3C            [12]  337 	add	a,#_Runtime_Data
      002F6D F9               [12]  338 	mov	r1,a
      002F6E EF               [12]  339 	mov	a,r7
      002F6F 2D               [12]  340 	add	a,r5
      002F70 24 00            [12]  341 	add	a,#_IAP_AUX
      002F72 F5 82            [12]  342 	mov	dpl,a
      002F74 E4               [12]  343 	clr	a
      002F75 34 01            [12]  344 	addc	a,#(_IAP_AUX >> 8)
      002F77 F5 83            [12]  345 	mov	dph,a
      002F79 E0               [24]  346 	movx	a,@dptr
      002F7A FC               [12]  347 	mov	r4,a
      002F7B F7               [12]  348 	mov	@r1,a
      002F7C                        349 00110$:
                                    350 ;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
      002F7C 0D               [12]  351 	inc	r5
      002F7D BD 10 00         [24]  352 	cjne	r5,#0x10,00143$
      002F80                        353 00143$:
      002F80 40 CE            [24]  354 	jc	00109$
                                    355 ;	../Storage_Manager/storage.c:47: if(save == SAVE){
      002F82 EE               [12]  356 	mov	a,r6
      002F83 60 09            [24]  357 	jz	00111$
                                    358 ;	../Storage_Manager/storage.c:48: IAPEN = IAP_Erase; //have to erase before write...
      002F85 75 E4 90         [24]  359 	mov	_IAPEN,#0x90
                                    360 ;	../Storage_Manager/storage.c:49: IAPEN = IAP_Write;  
      002F88 75 E4 C0         [24]  361 	mov	_IAPEN,#0xc0
                                    362 ;	../Storage_Manager/storage.c:50: Nop(); //datasheet recommend no operation following write
      002F8B 00               [12]  363 	nop 
      002F8C 00               [12]  364 	nop 
      002F8D 00               [12]  365 	nop 
      002F8E                        366 00111$:
                                    367 ;	../Storage_Manager/storage.c:52: }
      002F8E D0 1A            [24]  368 	pop	_bp
      002F90 22               [24]  369 	ret
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'get_runtime_data'
                                    372 ;------------------------------------------------------------
                                    373 ;index                     Allocated to registers r7 
                                    374 ;value                     Allocated to registers r6 
                                    375 ;------------------------------------------------------------
                                    376 ;	../Storage_Manager/storage.c:54: uint8_t get_runtime_data(uint8_t index){
                                    377 ;	-----------------------------------------
                                    378 ;	 function get_runtime_data
                                    379 ;	-----------------------------------------
      002F91                        380 _get_runtime_data:
      002F91 AF 82            [24]  381 	mov	r7,dpl
                                    382 ;	../Storage_Manager/storage.c:57: if(index == OP_MODE_INDEX){
      002F93 BF 10 07         [24]  383 	cjne	r7,#0x10,00102$
                                    384 ;	../Storage_Manager/storage.c:58: return Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
      002F96 74 80            [12]  385 	mov	a,#0x80
      002F98 55 3C            [12]  386 	anl	a,_Runtime_Data
      002F9A F5 82            [12]  387 	mov	dpl,a
      002F9C 22               [24]  388 	ret
      002F9D                        389 00102$:
                                    390 ;	../Storage_Manager/storage.c:61: value = Runtime_Data[index];
      002F9D EF               [12]  391 	mov	a,r7
      002F9E 24 3C            [12]  392 	add	a,#_Runtime_Data
      002FA0 F9               [12]  393 	mov	r1,a
      002FA1 87 06            [24]  394 	mov	ar6,@r1
                                    395 ;	../Storage_Manager/storage.c:63: switch (index)
      002FA3 EF               [12]  396 	mov	a,r7
      002FA4 24 F1            [12]  397 	add	a,#0xff - 0x0e
      002FA6 50 03            [24]  398 	jnc	00130$
      002FA8 02 30 4E         [24]  399 	ljmp	00113$
      002FAB                        400 00130$:
      002FAB EF               [12]  401 	mov	a,r7
      002FAC 24 0A            [12]  402 	add	a,#(00131$-3-.)
      002FAE 83               [24]  403 	movc	a,@a+pc
      002FAF F5 82            [12]  404 	mov	dpl,a
      002FB1 EF               [12]  405 	mov	a,r7
      002FB2 24 13            [12]  406 	add	a,#(00132$-3-.)
      002FB4 83               [24]  407 	movc	a,@a+pc
      002FB5 F5 83            [12]  408 	mov	dph,a
      002FB7 E4               [12]  409 	clr	a
      002FB8 73               [24]  410 	jmp	@a+dptr
      002FB9                        411 00131$:
      002FB9 D7                     412 	.db	00103$
      002FBA F5                     413 	.db	00105$
      002FBB F5                     414 	.db	00105$
      002FBC FD                     415 	.db	00108$
      002FBD 4E                     416 	.db	00113$
      002FBE 4E                     417 	.db	00113$
      002FBF 4E                     418 	.db	00113$
      002FC0 4E                     419 	.db	00113$
      002FC1 4E                     420 	.db	00113$
      002FC2 18                     421 	.db	00111$
      002FC3 18                     422 	.db	00111$
      002FC4 18                     423 	.db	00111$
      002FC5 4E                     424 	.db	00113$
      002FC6 4E                     425 	.db	00113$
      002FC7 33                     426 	.db	00112$
      002FC8                        427 00132$:
      002FC8 2F                     428 	.db	00103$>>8
      002FC9 2F                     429 	.db	00105$>>8
      002FCA 2F                     430 	.db	00105$>>8
      002FCB 2F                     431 	.db	00108$>>8
      002FCC 30                     432 	.db	00113$>>8
      002FCD 30                     433 	.db	00113$>>8
      002FCE 30                     434 	.db	00113$>>8
      002FCF 30                     435 	.db	00113$>>8
      002FD0 30                     436 	.db	00113$>>8
      002FD1 30                     437 	.db	00111$>>8
      002FD2 30                     438 	.db	00111$>>8
      002FD3 30                     439 	.db	00111$>>8
      002FD4 30                     440 	.db	00113$>>8
      002FD5 30                     441 	.db	00113$>>8
      002FD6 30                     442 	.db	00112$>>8
                                    443 ;	../Storage_Manager/storage.c:65: case FOG_POWER_INDEX:
      002FD7                        444 00103$:
                                    445 ;	../Storage_Manager/storage.c:66: return (value & ~OP_MODE_BIT) % FOG_OPTIONS;
      002FD7 8E 05            [24]  446 	mov	ar5,r6
      002FD9 7F 00            [12]  447 	mov	r7,#0x00
      002FDB 74 7F            [12]  448 	mov	a,#0x7f
      002FDD 5D               [12]  449 	anl	a,r5
      002FDE F5 82            [12]  450 	mov	dpl,a
      002FE0 8F 83            [24]  451 	mov	dph,r7
      002FE2 74 03            [12]  452 	mov	a,#0x03
      002FE4 C0 E0            [24]  453 	push	acc
      002FE6 E4               [12]  454 	clr	a
      002FE7 C0 E0            [24]  455 	push	acc
      002FE9 12 36 F6         [24]  456 	lcall	__modsint
      002FEC AD 82            [24]  457 	mov	r5,dpl
      002FEE 15 81            [12]  458 	dec	sp
      002FF0 15 81            [12]  459 	dec	sp
      002FF2 8D 82            [24]  460 	mov	dpl,r5
                                    461 ;	../Storage_Manager/storage.c:68: case FOG_INTERVAL_INDEX:
      002FF4 22               [24]  462 	ret
      002FF5                        463 00105$:
                                    464 ;	../Storage_Manager/storage.c:69: if(value == 0){ value = 1; } //we dont want a 0 duration or interval
      002FF5 EE               [12]  465 	mov	a,r6
      002FF6 70 02            [24]  466 	jnz	00107$
      002FF8 7E 01            [12]  467 	mov	r6,#0x01
      002FFA                        468 00107$:
                                    469 ;	../Storage_Manager/storage.c:70: return value;
      002FFA 8E 82            [24]  470 	mov	dpl,r6
                                    471 ;	../Storage_Manager/storage.c:71: case MACRO_INDEX:
      002FFC 22               [24]  472 	ret
      002FFD                        473 00108$:
                                    474 ;	../Storage_Manager/storage.c:72: return value % MACRO_OPTIONS;
      002FFD 8E 05            [24]  475 	mov	ar5,r6
      002FFF 7F 00            [12]  476 	mov	r7,#0x00
      003001 74 07            [12]  477 	mov	a,#0x07
      003003 C0 E0            [24]  478 	push	acc
      003005 E4               [12]  479 	clr	a
      003006 C0 E0            [24]  480 	push	acc
      003008 8D 82            [24]  481 	mov	dpl,r5
      00300A 8F 83            [24]  482 	mov	dph,r7
      00300C 12 36 F6         [24]  483 	lcall	__modsint
      00300F AD 82            [24]  484 	mov	r5,dpl
      003011 15 81            [12]  485 	dec	sp
      003013 15 81            [12]  486 	dec	sp
      003015 8D 82            [24]  487 	mov	dpl,r5
                                    488 ;	../Storage_Manager/storage.c:75: case R6_INDEX:
      003017 22               [24]  489 	ret
      003018                        490 00111$:
                                    491 ;	../Storage_Manager/storage.c:76: return value % WIRELESS_ACTION_OPTIONS;
      003018 8E 05            [24]  492 	mov	ar5,r6
      00301A 7F 00            [12]  493 	mov	r7,#0x00
      00301C 74 0D            [12]  494 	mov	a,#0x0d
      00301E C0 E0            [24]  495 	push	acc
      003020 E4               [12]  496 	clr	a
      003021 C0 E0            [24]  497 	push	acc
      003023 8D 82            [24]  498 	mov	dpl,r5
      003025 8F 83            [24]  499 	mov	dph,r7
      003027 12 36 F6         [24]  500 	lcall	__modsint
      00302A AD 82            [24]  501 	mov	r5,dpl
      00302C 15 81            [12]  502 	dec	sp
      00302E 15 81            [12]  503 	dec	sp
      003030 8D 82            [24]  504 	mov	dpl,r5
                                    505 ;	../Storage_Manager/storage.c:77: case MODE_INDEX:
      003032 22               [24]  506 	ret
      003033                        507 00112$:
                                    508 ;	../Storage_Manager/storage.c:78: return value % DMX_OPTIONS;
      003033 8E 05            [24]  509 	mov	ar5,r6
      003035 7F 00            [12]  510 	mov	r7,#0x00
      003037 74 03            [12]  511 	mov	a,#0x03
      003039 C0 E0            [24]  512 	push	acc
      00303B E4               [12]  513 	clr	a
      00303C C0 E0            [24]  514 	push	acc
      00303E 8D 82            [24]  515 	mov	dpl,r5
      003040 8F 83            [24]  516 	mov	dph,r7
      003042 12 36 F6         [24]  517 	lcall	__modsint
      003045 AD 82            [24]  518 	mov	r5,dpl
      003047 15 81            [12]  519 	dec	sp
      003049 15 81            [12]  520 	dec	sp
      00304B 8D 82            [24]  521 	mov	dpl,r5
                                    522 ;	../Storage_Manager/storage.c:80: }
      00304D 22               [24]  523 	ret
      00304E                        524 00113$:
                                    525 ;	../Storage_Manager/storage.c:82: return value;
      00304E 8E 82            [24]  526 	mov	dpl,r6
                                    527 ;	../Storage_Manager/storage.c:83: }
      003050 22               [24]  528 	ret
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'set_runtime_data'
                                    531 ;------------------------------------------------------------
                                    532 ;inc                       Allocated to stack - _bp -3
                                    533 ;value                     Allocated to stack - _bp -4
                                    534 ;index                     Allocated to registers r7 
                                    535 ;opMode                    Allocated to registers r6 
                                    536 ;------------------------------------------------------------
                                    537 ;	../Storage_Manager/storage.c:85: void set_runtime_data(uint8_t index, uint8_t inc, uint8_t value){
                                    538 ;	-----------------------------------------
                                    539 ;	 function set_runtime_data
                                    540 ;	-----------------------------------------
      003051                        541 _set_runtime_data:
      003051 C0 1A            [24]  542 	push	_bp
      003053 85 81 1A         [24]  543 	mov	_bp,sp
      003056 AF 82            [24]  544 	mov	r7,dpl
                                    545 ;	../Storage_Manager/storage.c:86: uint8_t opMode = Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
      003058 74 80            [12]  546 	mov	a,#0x80
      00305A 55 3C            [12]  547 	anl	a,_Runtime_Data
      00305C FE               [12]  548 	mov	r6,a
                                    549 ;	../Storage_Manager/storage.c:93: switch(inc){
      00305D E5 1A            [12]  550 	mov	a,_bp
      00305F 24 FD            [12]  551 	add	a,#0xfd
      003061 F8               [12]  552 	mov	r0,a
      003062 B6 01 02         [24]  553 	cjne	@r0,#0x01,00142$
      003065 80 0A            [24]  554 	sjmp	00101$
      003067                        555 00142$:
      003067 E5 1A            [12]  556 	mov	a,_bp
      003069 24 FD            [12]  557 	add	a,#0xfd
      00306B F8               [12]  558 	mov	r0,a
                                    559 ;	../Storage_Manager/storage.c:94: case INC:
      00306C B6 02 16         [24]  560 	cjne	@r0,#0x02,00103$
      00306F 80 0A            [24]  561 	sjmp	00102$
      003071                        562 00101$:
                                    563 ;	../Storage_Manager/storage.c:95: Runtime_Data[index]++;
      003071 EF               [12]  564 	mov	a,r7
      003072 24 3C            [12]  565 	add	a,#_Runtime_Data
      003074 F9               [12]  566 	mov	r1,a
      003075 E7               [12]  567 	mov	a,@r1
      003076 FD               [12]  568 	mov	r5,a
      003077 04               [12]  569 	inc	a
      003078 F7               [12]  570 	mov	@r1,a
                                    571 ;	../Storage_Manager/storage.c:96: break;
                                    572 ;	../Storage_Manager/storage.c:97: case DEC:
      003079 80 33            [24]  573 	sjmp	00110$
      00307B                        574 00102$:
                                    575 ;	../Storage_Manager/storage.c:98: Runtime_Data[index]--;
      00307B EF               [12]  576 	mov	a,r7
      00307C 24 3C            [12]  577 	add	a,#_Runtime_Data
      00307E F9               [12]  578 	mov	r1,a
      00307F E7               [12]  579 	mov	a,@r1
      003080 FD               [12]  580 	mov	r5,a
      003081 14               [12]  581 	dec	a
      003082 F7               [12]  582 	mov	@r1,a
                                    583 ;	../Storage_Manager/storage.c:99: break;
                                    584 ;	../Storage_Manager/storage.c:100: default:
      003083 80 29            [24]  585 	sjmp	00110$
      003085                        586 00103$:
                                    587 ;	../Storage_Manager/storage.c:101: if(index == OP_MODE_INDEX){
      003085 BF 10 1B         [24]  588 	cjne	r7,#0x10,00108$
                                    589 ;	../Storage_Manager/storage.c:102: if(value) { 
      003088 E5 1A            [12]  590 	mov	a,_bp
      00308A 24 FC            [12]  591 	add	a,#0xfc
      00308C F8               [12]  592 	mov	r0,a
      00308D E6               [12]  593 	mov	a,@r0
      00308E 60 0B            [24]  594 	jz	00105$
                                    595 ;	../Storage_Manager/storage.c:103: Runtime_Data[FOG_POWER_INDEX] |= OP_MODE_BIT;
      003090 AC 3C            [24]  596 	mov	r4,_Runtime_Data
      003092 7D 00            [12]  597 	mov	r5,#0x00
      003094 43 04 80         [24]  598 	orl	ar4,#0x80
      003097 8C 3C            [24]  599 	mov	_Runtime_Data,r4
      003099 80 13            [24]  600 	sjmp	00110$
      00309B                        601 00105$:
                                    602 ;	../Storage_Manager/storage.c:105: Runtime_Data[FOG_POWER_INDEX] &= ~OP_MODE_BIT;
      00309B 74 7F            [12]  603 	mov	a,#0x7f
      00309D 55 3C            [12]  604 	anl	a,_Runtime_Data
      00309F F5 3C            [12]  605 	mov	_Runtime_Data,a
      0030A1 80 0B            [24]  606 	sjmp	00110$
      0030A3                        607 00108$:
                                    608 ;	../Storage_Manager/storage.c:108: Runtime_Data[index] = value;
      0030A3 EF               [12]  609 	mov	a,r7
      0030A4 24 3C            [12]  610 	add	a,#_Runtime_Data
      0030A6 F8               [12]  611 	mov	r0,a
      0030A7 E5 1A            [12]  612 	mov	a,_bp
      0030A9 24 FC            [12]  613 	add	a,#0xfc
      0030AB F9               [12]  614 	mov	r1,a
      0030AC E7               [12]  615 	mov	a,@r1
      0030AD F6               [12]  616 	mov	@r0,a
                                    617 ;	../Storage_Manager/storage.c:111: }
      0030AE                        618 00110$:
                                    619 ;	../Storage_Manager/storage.c:113: if(index == FOG_POWER_INDEX){
      0030AE EF               [12]  620 	mov	a,r7
      0030AF 70 24            [24]  621 	jnz	00115$
                                    622 ;	../Storage_Manager/storage.c:114: if(opMode){
      0030B1 EE               [12]  623 	mov	a,r6
      0030B2 60 13            [24]  624 	jz	00112$
                                    625 ;	../Storage_Manager/storage.c:115: Runtime_Data[index] |= OP_MODE_BIT;
      0030B4 EF               [12]  626 	mov	a,r7
      0030B5 24 3C            [12]  627 	add	a,#_Runtime_Data
      0030B7 F9               [12]  628 	mov	r1,a
      0030B8 EF               [12]  629 	mov	a,r7
      0030B9 24 3C            [12]  630 	add	a,#_Runtime_Data
      0030BB F8               [12]  631 	mov	r0,a
      0030BC 86 06            [24]  632 	mov	ar6,@r0
      0030BE 7D 00            [12]  633 	mov	r5,#0x00
      0030C0 43 06 80         [24]  634 	orl	ar6,#0x80
      0030C3 A7 06            [24]  635 	mov	@r1,ar6
      0030C5 80 0E            [24]  636 	sjmp	00115$
      0030C7                        637 00112$:
                                    638 ;	../Storage_Manager/storage.c:117: Runtime_Data[index] &= ~OP_MODE_BIT;
      0030C7 EF               [12]  639 	mov	a,r7
      0030C8 24 3C            [12]  640 	add	a,#_Runtime_Data
      0030CA F9               [12]  641 	mov	r1,a
      0030CB EF               [12]  642 	mov	a,r7
      0030CC 24 3C            [12]  643 	add	a,#_Runtime_Data
      0030CE F8               [12]  644 	mov	r0,a
      0030CF 86 07            [24]  645 	mov	ar7,@r0
      0030D1 74 7F            [12]  646 	mov	a,#0x7f
      0030D3 5F               [12]  647 	anl	a,r7
      0030D4 F7               [12]  648 	mov	@r1,a
      0030D5                        649 00115$:
                                    650 ;	../Storage_Manager/storage.c:121: save_load_settings(SLOT_0, SAVE);
      0030D5 74 01            [12]  651 	mov	a,#0x01
      0030D7 C0 E0            [24]  652 	push	acc
      0030D9 75 82 00         [24]  653 	mov	dpl,#0x00
      0030DC 12 2F 2D         [24]  654 	lcall	_save_load_settings
      0030DF 15 81            [12]  655 	dec	sp
                                    656 ;	../Storage_Manager/storage.c:122: }
      0030E1 D0 1A            [24]  657 	pop	_bp
      0030E3 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'set_dmx_address'
                                    661 ;------------------------------------------------------------
                                    662 ;inc                       Allocated to registers r7 
                                    663 ;addr                      Allocated to registers r5 r6 
                                    664 ;------------------------------------------------------------
                                    665 ;	../Storage_Manager/storage.c:124: void set_dmx_address(uint8_t inc){
                                    666 ;	-----------------------------------------
                                    667 ;	 function set_dmx_address
                                    668 ;	-----------------------------------------
      0030E4                        669 _set_dmx_address:
      0030E4 AF 82            [24]  670 	mov	r7,dpl
                                    671 ;	../Storage_Manager/storage.c:125: uint16_t addr = get_dmx_address();
      0030E6 C0 07            [24]  672 	push	ar7
      0030E8 12 31 44         [24]  673 	lcall	_get_dmx_address
      0030EB AD 82            [24]  674 	mov	r5,dpl
      0030ED AE 83            [24]  675 	mov	r6,dph
      0030EF D0 07            [24]  676 	pop	ar7
                                    677 ;	../Storage_Manager/storage.c:127: if(inc == INC){
      0030F1 BF 01 12         [24]  678 	cjne	r7,#0x01,00108$
                                    679 ;	../Storage_Manager/storage.c:128: if(addr >= DMX_MAX_ADDRESS){
      0030F4 74 FE            [12]  680 	mov	a,#0x100 - 0x02
      0030F6 2E               [12]  681 	add	a,r6
      0030F7 50 06            [24]  682 	jnc	00102$
                                    683 ;	../Storage_Manager/storage.c:129: addr = 1;
      0030F9 7D 01            [12]  684 	mov	r5,#0x01
      0030FB 7E 00            [12]  685 	mov	r6,#0x00
      0030FD 80 1A            [24]  686 	sjmp	00109$
      0030FF                        687 00102$:
                                    688 ;	../Storage_Manager/storage.c:131: addr++;
      0030FF 0D               [12]  689 	inc	r5
      003100 BD 00 16         [24]  690 	cjne	r5,#0x00,00109$
      003103 0E               [12]  691 	inc	r6
      003104 80 13            [24]  692 	sjmp	00109$
      003106                        693 00108$:
                                    694 ;	../Storage_Manager/storage.c:134: if(addr <= 1){
      003106 C3               [12]  695 	clr	c
      003107 74 01            [12]  696 	mov	a,#0x01
      003109 9D               [12]  697 	subb	a,r5
      00310A E4               [12]  698 	clr	a
      00310B 9E               [12]  699 	subb	a,r6
      00310C 40 06            [24]  700 	jc	00105$
                                    701 ;	../Storage_Manager/storage.c:135: addr = DMX_MAX_ADDRESS;
      00310E 7D 00            [12]  702 	mov	r5,#0x00
      003110 7E 02            [12]  703 	mov	r6,#0x02
      003112 80 05            [24]  704 	sjmp	00109$
      003114                        705 00105$:
                                    706 ;	../Storage_Manager/storage.c:137: addr--;
      003114 1D               [12]  707 	dec	r5
      003115 BD FF 01         [24]  708 	cjne	r5,#0xff,00129$
      003118 1E               [12]  709 	dec	r6
      003119                        710 00129$:
      003119                        711 00109$:
                                    712 ;	../Storage_Manager/storage.c:141: set_runtime_data(ADDR_L_INDEX, VALUE, (uint8_t) addr);
      003119 8D 07            [24]  713 	mov	ar7,r5
      00311B C0 06            [24]  714 	push	ar6
      00311D C0 05            [24]  715 	push	ar5
      00311F C0 07            [24]  716 	push	ar7
      003121 E4               [12]  717 	clr	a
      003122 C0 E0            [24]  718 	push	acc
      003124 75 82 0D         [24]  719 	mov	dpl,#0x0d
      003127 12 30 51         [24]  720 	lcall	_set_runtime_data
      00312A 15 81            [12]  721 	dec	sp
      00312C 15 81            [12]  722 	dec	sp
      00312E D0 05            [24]  723 	pop	ar5
      003130 D0 06            [24]  724 	pop	ar6
                                    725 ;	../Storage_Manager/storage.c:142: set_runtime_data(ADDR_H_INDEX, VALUE, (uint8_t) (addr >> 8));
      003132 8E 05            [24]  726 	mov	ar5,r6
      003134 C0 05            [24]  727 	push	ar5
      003136 E4               [12]  728 	clr	a
      003137 C0 E0            [24]  729 	push	acc
      003139 75 82 0C         [24]  730 	mov	dpl,#0x0c
      00313C 12 30 51         [24]  731 	lcall	_set_runtime_data
      00313F 15 81            [12]  732 	dec	sp
      003141 15 81            [12]  733 	dec	sp
                                    734 ;	../Storage_Manager/storage.c:144: }
      003143 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'get_dmx_address'
                                    738 ;------------------------------------------------------------
                                    739 ;address                   Allocated to registers 
                                    740 ;------------------------------------------------------------
                                    741 ;	../Storage_Manager/storage.c:146: uint16_t get_dmx_address(){
                                    742 ;	-----------------------------------------
                                    743 ;	 function get_dmx_address
                                    744 ;	-----------------------------------------
      003144                        745 _get_dmx_address:
                                    746 ;	../Storage_Manager/storage.c:149: address |= (Runtime_Data[ADDR_H_INDEX] << 8);
      003144 AF 48            [24]  747 	mov	r7,(_Runtime_Data + 0x000c)
      003146 7E 00            [12]  748 	mov	r6,#0x00
                                    749 ;	../Storage_Manager/storage.c:150: address |= Runtime_Data[ADDR_L_INDEX];
      003148 AC 49            [24]  750 	mov	r4,(_Runtime_Data + 0x000d)
      00314A 7D 00            [12]  751 	mov	r5,#0x00
      00314C EE               [12]  752 	mov	a,r6
      00314D 42 04            [12]  753 	orl	ar4,a
      00314F EF               [12]  754 	mov	a,r7
      003150 42 05            [12]  755 	orl	ar5,a
      003152 8C 82            [24]  756 	mov	dpl,r4
      003154 8D 83            [24]  757 	mov	dph,r5
                                    758 ;	../Storage_Manager/storage.c:152: return address;
                                    759 ;	../Storage_Manager/storage.c:153: }
      003156 22               [24]  760 	ret
                                    761 	.area CSEG    (CODE)
                                    762 	.area CONST   (CODE)
                                    763 	.area CABS    (ABS,CODE)
      003FC0                        764 	.org 0x3FC0
      003FC0                        765 _Init_Data:
      003FC0 88                     766 	.db #0x88	; 136
      003FC1 06                     767 	.db #0x06	; 6
      003FC2 09                     768 	.db #0x09	; 9
      003FC3 00                     769 	.db #0x00	; 0
      003FC4 00                     770 	.db #0x00	; 0
      003FC5 00                     771 	.db #0x00	; 0
      003FC6 00                     772 	.db #0x00	; 0
      003FC7 00                     773 	.db #0x00	; 0
      003FC8 00                     774 	.db #0x00	; 0
      003FC9 0B                     775 	.db #0x0b	; 11
      003FCA 0C                     776 	.db #0x0c	; 12
      003FCB 0A                     777 	.db #0x0a	; 10
      003FCC 00                     778 	.db #0x00	; 0
      003FCD 01                     779 	.db #0x01	; 1
      003FCE 00                     780 	.db #0x00	; 0
      003FCF 00                     781 	.db #0x00	; 0
      003FD0 88                     782 	.db #0x88	; 136
      003FD1 06                     783 	.db #0x06	; 6
      003FD2 09                     784 	.db #0x09	; 9
      003FD3 00                     785 	.db #0x00	; 0
      003FD4 00                     786 	.db #0x00	; 0
      003FD5 00                     787 	.db #0x00	; 0
      003FD6 00                     788 	.db #0x00	; 0
      003FD7 00                     789 	.db #0x00	; 0
      003FD8 00                     790 	.db #0x00	; 0
      003FD9 0B                     791 	.db #0x0b	; 11
      003FDA 0C                     792 	.db #0x0c	; 12
      003FDB 0A                     793 	.db #0x0a	; 10
      003FDC 00                     794 	.db #0x00	; 0
      003FDD 01                     795 	.db #0x01	; 1
      003FDE 00                     796 	.db #0x00	; 0
      003FDF 00                     797 	.db #0x00	; 0
      003FE0 88                     798 	.db #0x88	; 136
      003FE1 06                     799 	.db #0x06	; 6
      003FE2 09                     800 	.db #0x09	; 9
      003FE3 00                     801 	.db #0x00	; 0
      003FE4 00                     802 	.db #0x00	; 0
      003FE5 00                     803 	.db #0x00	; 0
      003FE6 00                     804 	.db #0x00	; 0
      003FE7 00                     805 	.db #0x00	; 0
      003FE8 00                     806 	.db #0x00	; 0
      003FE9 0B                     807 	.db #0x0b	; 11
      003FEA 0C                     808 	.db #0x0c	; 12
      003FEB 0A                     809 	.db #0x0a	; 10
      003FEC 00                     810 	.db #0x00	; 0
      003FED 01                     811 	.db #0x01	; 1
      003FEE 00                     812 	.db #0x00	; 0
      003FEF 00                     813 	.db #0x00	; 0
      003FF0 88                     814 	.db #0x88	; 136
      003FF1 06                     815 	.db #0x06	; 6
      003FF2 09                     816 	.db #0x09	; 9
      003FF3 00                     817 	.db #0x00	; 0
      003FF4 00                     818 	.db #0x00	; 0
      003FF5 00                     819 	.db #0x00	; 0
      003FF6 00                     820 	.db #0x00	; 0
      003FF7 00                     821 	.db #0x00	; 0
      003FF8 00                     822 	.db #0x00	; 0
      003FF9 0B                     823 	.db #0x0b	; 11
      003FFA 0C                     824 	.db #0x0c	; 12
      003FFB 0A                     825 	.db #0x0a	; 10
      003FFC 00                     826 	.db #0x00	; 0
      003FFD 01                     827 	.db #0x01	; 1
      003FFE 00                     828 	.db #0x00	; 0
      003FFF 00                     829 	.db #0x00	; 0
