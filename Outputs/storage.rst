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
      002E9C                        278 _save_load_settings:
                           000007   279 	ar7 = 0x07
                           000006   280 	ar6 = 0x06
                           000005   281 	ar5 = 0x05
                           000004   282 	ar4 = 0x04
                           000003   283 	ar3 = 0x03
                           000002   284 	ar2 = 0x02
                           000001   285 	ar1 = 0x01
                           000000   286 	ar0 = 0x00
      002E9C C0 1A            [24]  287 	push	_bp
      002E9E 85 81 1A         [24]  288 	mov	_bp,sp
                                    289 ;	../Storage_Manager/storage.c:33: slot = slot * CONFIG_COUNT;
      002EA1 E5 82            [12]  290 	mov	a,dpl
      002EA3 C4               [12]  291 	swap	a
      002EA4 54 F0            [12]  292 	anl	a,#0xf0
      002EA6 FF               [12]  293 	mov	r7,a
                                    294 ;	../Storage_Manager/storage.c:35: if(save == LOAD){
      002EA7 E5 1A            [12]  295 	mov	a,_bp
      002EA9 24 FD            [12]  296 	add	a,#0xfd
      002EAB F8               [12]  297 	mov	r0,a
      002EAC E6               [12]  298 	mov	a,@r0
      002EAD 70 03            [24]  299 	jnz	00115$
                                    300 ;	../Storage_Manager/storage.c:36: IAPEN = IAP_Read; //read
      002EAF 75 E4 A0         [24]  301 	mov	_IAPEN,#0xa0
                                    302 ;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
      002EB2                        303 00115$:
      002EB2 E5 1A            [12]  304 	mov	a,_bp
      002EB4 24 FD            [12]  305 	add	a,#0xfd
      002EB6 F8               [12]  306 	mov	r0,a
      002EB7 E4               [12]  307 	clr	a
      002EB8 B6 01 01         [24]  308 	cjne	@r0,#0x01,00140$
      002EBB 04               [12]  309 	inc	a
      002EBC                        310 00140$:
      002EBC FE               [12]  311 	mov	r6,a
      002EBD 7D 00            [12]  312 	mov	r5,#0x00
      002EBF                        313 00109$:
                                    314 ;	../Storage_Manager/storage.c:40: if(save == SAVE){
      002EBF EE               [12]  315 	mov	a,r6
      002EC0 60 17            [24]  316 	jz	00104$
                                    317 ;	../Storage_Manager/storage.c:41: IAP_AUX[i + slot] = Runtime_Data[i];
      002EC2 EF               [12]  318 	mov	a,r7
      002EC3 2D               [12]  319 	add	a,r5
      002EC4 24 00            [12]  320 	add	a,#_IAP_AUX
      002EC6 FB               [12]  321 	mov	r3,a
      002EC7 E4               [12]  322 	clr	a
      002EC8 34 01            [12]  323 	addc	a,#(_IAP_AUX >> 8)
      002ECA FC               [12]  324 	mov	r4,a
      002ECB ED               [12]  325 	mov	a,r5
      002ECC 24 3C            [12]  326 	add	a,#_Runtime_Data
      002ECE F9               [12]  327 	mov	r1,a
      002ECF 87 02            [24]  328 	mov	ar2,@r1
      002ED1 8B 82            [24]  329 	mov	dpl,r3
      002ED3 8C 83            [24]  330 	mov	dph,r4
      002ED5 EA               [12]  331 	mov	a,r2
      002ED6 F0               [24]  332 	movx	@dptr,a
      002ED7 80 12            [24]  333 	sjmp	00110$
      002ED9                        334 00104$:
                                    335 ;	../Storage_Manager/storage.c:43: Runtime_Data[i] = IAP_AUX[i + slot];
      002ED9 ED               [12]  336 	mov	a,r5
      002EDA 24 3C            [12]  337 	add	a,#_Runtime_Data
      002EDC F9               [12]  338 	mov	r1,a
      002EDD EF               [12]  339 	mov	a,r7
      002EDE 2D               [12]  340 	add	a,r5
      002EDF 24 00            [12]  341 	add	a,#_IAP_AUX
      002EE1 F5 82            [12]  342 	mov	dpl,a
      002EE3 E4               [12]  343 	clr	a
      002EE4 34 01            [12]  344 	addc	a,#(_IAP_AUX >> 8)
      002EE6 F5 83            [12]  345 	mov	dph,a
      002EE8 E0               [24]  346 	movx	a,@dptr
      002EE9 FC               [12]  347 	mov	r4,a
      002EEA F7               [12]  348 	mov	@r1,a
      002EEB                        349 00110$:
                                    350 ;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
      002EEB 0D               [12]  351 	inc	r5
      002EEC BD 10 00         [24]  352 	cjne	r5,#0x10,00143$
      002EEF                        353 00143$:
      002EEF 40 CE            [24]  354 	jc	00109$
                                    355 ;	../Storage_Manager/storage.c:47: if(save == SAVE){
      002EF1 EE               [12]  356 	mov	a,r6
      002EF2 60 09            [24]  357 	jz	00111$
                                    358 ;	../Storage_Manager/storage.c:48: IAPEN = IAP_Erase; //have to erase before write...
      002EF4 75 E4 90         [24]  359 	mov	_IAPEN,#0x90
                                    360 ;	../Storage_Manager/storage.c:49: IAPEN = IAP_Write;  
      002EF7 75 E4 C0         [24]  361 	mov	_IAPEN,#0xc0
                                    362 ;	../Storage_Manager/storage.c:50: Nop(); //datasheet recommend no operation following write
      002EFA 00               [12]  363 	nop 
      002EFB 00               [12]  364 	nop 
      002EFC 00               [12]  365 	nop 
      002EFD                        366 00111$:
                                    367 ;	../Storage_Manager/storage.c:52: }
      002EFD D0 1A            [24]  368 	pop	_bp
      002EFF 22               [24]  369 	ret
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
      002F00                        380 _get_runtime_data:
      002F00 AF 82            [24]  381 	mov	r7,dpl
                                    382 ;	../Storage_Manager/storage.c:57: if(index == OP_MODE_INDEX){
      002F02 BF 10 07         [24]  383 	cjne	r7,#0x10,00102$
                                    384 ;	../Storage_Manager/storage.c:58: return Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
      002F05 74 80            [12]  385 	mov	a,#0x80
      002F07 55 3C            [12]  386 	anl	a,_Runtime_Data
      002F09 F5 82            [12]  387 	mov	dpl,a
      002F0B 22               [24]  388 	ret
      002F0C                        389 00102$:
                                    390 ;	../Storage_Manager/storage.c:61: value = Runtime_Data[index];
      002F0C EF               [12]  391 	mov	a,r7
      002F0D 24 3C            [12]  392 	add	a,#_Runtime_Data
      002F0F F9               [12]  393 	mov	r1,a
      002F10 87 06            [24]  394 	mov	ar6,@r1
                                    395 ;	../Storage_Manager/storage.c:63: switch (index)
      002F12 EF               [12]  396 	mov	a,r7
      002F13 24 F1            [12]  397 	add	a,#0xff - 0x0e
      002F15 50 03            [24]  398 	jnc	00130$
      002F17 02 2F BD         [24]  399 	ljmp	00113$
      002F1A                        400 00130$:
      002F1A EF               [12]  401 	mov	a,r7
      002F1B 24 0A            [12]  402 	add	a,#(00131$-3-.)
      002F1D 83               [24]  403 	movc	a,@a+pc
      002F1E F5 82            [12]  404 	mov	dpl,a
      002F20 EF               [12]  405 	mov	a,r7
      002F21 24 13            [12]  406 	add	a,#(00132$-3-.)
      002F23 83               [24]  407 	movc	a,@a+pc
      002F24 F5 83            [12]  408 	mov	dph,a
      002F26 E4               [12]  409 	clr	a
      002F27 73               [24]  410 	jmp	@a+dptr
      002F28                        411 00131$:
      002F28 46                     412 	.db	00103$
      002F29 64                     413 	.db	00105$
      002F2A 64                     414 	.db	00105$
      002F2B 6C                     415 	.db	00108$
      002F2C BD                     416 	.db	00113$
      002F2D BD                     417 	.db	00113$
      002F2E BD                     418 	.db	00113$
      002F2F BD                     419 	.db	00113$
      002F30 BD                     420 	.db	00113$
      002F31 87                     421 	.db	00111$
      002F32 87                     422 	.db	00111$
      002F33 87                     423 	.db	00111$
      002F34 BD                     424 	.db	00113$
      002F35 BD                     425 	.db	00113$
      002F36 A2                     426 	.db	00112$
      002F37                        427 00132$:
      002F37 2F                     428 	.db	00103$>>8
      002F38 2F                     429 	.db	00105$>>8
      002F39 2F                     430 	.db	00105$>>8
      002F3A 2F                     431 	.db	00108$>>8
      002F3B 2F                     432 	.db	00113$>>8
      002F3C 2F                     433 	.db	00113$>>8
      002F3D 2F                     434 	.db	00113$>>8
      002F3E 2F                     435 	.db	00113$>>8
      002F3F 2F                     436 	.db	00113$>>8
      002F40 2F                     437 	.db	00111$>>8
      002F41 2F                     438 	.db	00111$>>8
      002F42 2F                     439 	.db	00111$>>8
      002F43 2F                     440 	.db	00113$>>8
      002F44 2F                     441 	.db	00113$>>8
      002F45 2F                     442 	.db	00112$>>8
                                    443 ;	../Storage_Manager/storage.c:65: case FOG_POWER_INDEX:
      002F46                        444 00103$:
                                    445 ;	../Storage_Manager/storage.c:66: return (value & ~OP_MODE_BIT) % FOG_OPTIONS;
      002F46 8E 05            [24]  446 	mov	ar5,r6
      002F48 7F 00            [12]  447 	mov	r7,#0x00
      002F4A 74 7F            [12]  448 	mov	a,#0x7f
      002F4C 5D               [12]  449 	anl	a,r5
      002F4D F5 82            [12]  450 	mov	dpl,a
      002F4F 8F 83            [24]  451 	mov	dph,r7
      002F51 74 03            [12]  452 	mov	a,#0x03
      002F53 C0 E0            [24]  453 	push	acc
      002F55 E4               [12]  454 	clr	a
      002F56 C0 E0            [24]  455 	push	acc
      002F58 12 36 64         [24]  456 	lcall	__modsint
      002F5B AD 82            [24]  457 	mov	r5,dpl
      002F5D 15 81            [12]  458 	dec	sp
      002F5F 15 81            [12]  459 	dec	sp
      002F61 8D 82            [24]  460 	mov	dpl,r5
                                    461 ;	../Storage_Manager/storage.c:68: case FOG_INTERVAL_INDEX:
      002F63 22               [24]  462 	ret
      002F64                        463 00105$:
                                    464 ;	../Storage_Manager/storage.c:69: if(value == 0){ value = 1; } //we dont want a 0 duration or interval
      002F64 EE               [12]  465 	mov	a,r6
      002F65 70 02            [24]  466 	jnz	00107$
      002F67 7E 01            [12]  467 	mov	r6,#0x01
      002F69                        468 00107$:
                                    469 ;	../Storage_Manager/storage.c:70: return value;
      002F69 8E 82            [24]  470 	mov	dpl,r6
                                    471 ;	../Storage_Manager/storage.c:71: case MACRO_INDEX:
      002F6B 22               [24]  472 	ret
      002F6C                        473 00108$:
                                    474 ;	../Storage_Manager/storage.c:72: return value % MACRO_OPTIONS;
      002F6C 8E 05            [24]  475 	mov	ar5,r6
      002F6E 7F 00            [12]  476 	mov	r7,#0x00
      002F70 74 07            [12]  477 	mov	a,#0x07
      002F72 C0 E0            [24]  478 	push	acc
      002F74 E4               [12]  479 	clr	a
      002F75 C0 E0            [24]  480 	push	acc
      002F77 8D 82            [24]  481 	mov	dpl,r5
      002F79 8F 83            [24]  482 	mov	dph,r7
      002F7B 12 36 64         [24]  483 	lcall	__modsint
      002F7E AD 82            [24]  484 	mov	r5,dpl
      002F80 15 81            [12]  485 	dec	sp
      002F82 15 81            [12]  486 	dec	sp
      002F84 8D 82            [24]  487 	mov	dpl,r5
                                    488 ;	../Storage_Manager/storage.c:75: case R6_INDEX:
      002F86 22               [24]  489 	ret
      002F87                        490 00111$:
                                    491 ;	../Storage_Manager/storage.c:76: return value % WIRELESS_ACTION_OPTIONS;
      002F87 8E 05            [24]  492 	mov	ar5,r6
      002F89 7F 00            [12]  493 	mov	r7,#0x00
      002F8B 74 0D            [12]  494 	mov	a,#0x0d
      002F8D C0 E0            [24]  495 	push	acc
      002F8F E4               [12]  496 	clr	a
      002F90 C0 E0            [24]  497 	push	acc
      002F92 8D 82            [24]  498 	mov	dpl,r5
      002F94 8F 83            [24]  499 	mov	dph,r7
      002F96 12 36 64         [24]  500 	lcall	__modsint
      002F99 AD 82            [24]  501 	mov	r5,dpl
      002F9B 15 81            [12]  502 	dec	sp
      002F9D 15 81            [12]  503 	dec	sp
      002F9F 8D 82            [24]  504 	mov	dpl,r5
                                    505 ;	../Storage_Manager/storage.c:77: case MODE_INDEX:
      002FA1 22               [24]  506 	ret
      002FA2                        507 00112$:
                                    508 ;	../Storage_Manager/storage.c:78: return value % DMX_OPTIONS;
      002FA2 8E 05            [24]  509 	mov	ar5,r6
      002FA4 7F 00            [12]  510 	mov	r7,#0x00
      002FA6 74 03            [12]  511 	mov	a,#0x03
      002FA8 C0 E0            [24]  512 	push	acc
      002FAA E4               [12]  513 	clr	a
      002FAB C0 E0            [24]  514 	push	acc
      002FAD 8D 82            [24]  515 	mov	dpl,r5
      002FAF 8F 83            [24]  516 	mov	dph,r7
      002FB1 12 36 64         [24]  517 	lcall	__modsint
      002FB4 AD 82            [24]  518 	mov	r5,dpl
      002FB6 15 81            [12]  519 	dec	sp
      002FB8 15 81            [12]  520 	dec	sp
      002FBA 8D 82            [24]  521 	mov	dpl,r5
                                    522 ;	../Storage_Manager/storage.c:80: }
      002FBC 22               [24]  523 	ret
      002FBD                        524 00113$:
                                    525 ;	../Storage_Manager/storage.c:82: return value;
      002FBD 8E 82            [24]  526 	mov	dpl,r6
                                    527 ;	../Storage_Manager/storage.c:83: }
      002FBF 22               [24]  528 	ret
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
      002FC0                        541 _set_runtime_data:
      002FC0 C0 1A            [24]  542 	push	_bp
      002FC2 85 81 1A         [24]  543 	mov	_bp,sp
      002FC5 AF 82            [24]  544 	mov	r7,dpl
                                    545 ;	../Storage_Manager/storage.c:86: uint8_t opMode = Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
      002FC7 74 80            [12]  546 	mov	a,#0x80
      002FC9 55 3C            [12]  547 	anl	a,_Runtime_Data
      002FCB FE               [12]  548 	mov	r6,a
                                    549 ;	../Storage_Manager/storage.c:93: switch(inc){
      002FCC E5 1A            [12]  550 	mov	a,_bp
      002FCE 24 FD            [12]  551 	add	a,#0xfd
      002FD0 F8               [12]  552 	mov	r0,a
      002FD1 B6 01 02         [24]  553 	cjne	@r0,#0x01,00142$
      002FD4 80 0A            [24]  554 	sjmp	00101$
      002FD6                        555 00142$:
      002FD6 E5 1A            [12]  556 	mov	a,_bp
      002FD8 24 FD            [12]  557 	add	a,#0xfd
      002FDA F8               [12]  558 	mov	r0,a
                                    559 ;	../Storage_Manager/storage.c:94: case INC:
      002FDB B6 02 16         [24]  560 	cjne	@r0,#0x02,00103$
      002FDE 80 0A            [24]  561 	sjmp	00102$
      002FE0                        562 00101$:
                                    563 ;	../Storage_Manager/storage.c:95: Runtime_Data[index]++;
      002FE0 EF               [12]  564 	mov	a,r7
      002FE1 24 3C            [12]  565 	add	a,#_Runtime_Data
      002FE3 F9               [12]  566 	mov	r1,a
      002FE4 E7               [12]  567 	mov	a,@r1
      002FE5 FD               [12]  568 	mov	r5,a
      002FE6 04               [12]  569 	inc	a
      002FE7 F7               [12]  570 	mov	@r1,a
                                    571 ;	../Storage_Manager/storage.c:96: break;
                                    572 ;	../Storage_Manager/storage.c:97: case DEC:
      002FE8 80 33            [24]  573 	sjmp	00110$
      002FEA                        574 00102$:
                                    575 ;	../Storage_Manager/storage.c:98: Runtime_Data[index]--;
      002FEA EF               [12]  576 	mov	a,r7
      002FEB 24 3C            [12]  577 	add	a,#_Runtime_Data
      002FED F9               [12]  578 	mov	r1,a
      002FEE E7               [12]  579 	mov	a,@r1
      002FEF FD               [12]  580 	mov	r5,a
      002FF0 14               [12]  581 	dec	a
      002FF1 F7               [12]  582 	mov	@r1,a
                                    583 ;	../Storage_Manager/storage.c:99: break;
                                    584 ;	../Storage_Manager/storage.c:100: default:
      002FF2 80 29            [24]  585 	sjmp	00110$
      002FF4                        586 00103$:
                                    587 ;	../Storage_Manager/storage.c:101: if(index == OP_MODE_INDEX){
      002FF4 BF 10 1B         [24]  588 	cjne	r7,#0x10,00108$
                                    589 ;	../Storage_Manager/storage.c:102: if(value) { 
      002FF7 E5 1A            [12]  590 	mov	a,_bp
      002FF9 24 FC            [12]  591 	add	a,#0xfc
      002FFB F8               [12]  592 	mov	r0,a
      002FFC E6               [12]  593 	mov	a,@r0
      002FFD 60 0B            [24]  594 	jz	00105$
                                    595 ;	../Storage_Manager/storage.c:103: Runtime_Data[FOG_POWER_INDEX] |= OP_MODE_BIT;
      002FFF AC 3C            [24]  596 	mov	r4,_Runtime_Data
      003001 7D 00            [12]  597 	mov	r5,#0x00
      003003 43 04 80         [24]  598 	orl	ar4,#0x80
      003006 8C 3C            [24]  599 	mov	_Runtime_Data,r4
      003008 80 13            [24]  600 	sjmp	00110$
      00300A                        601 00105$:
                                    602 ;	../Storage_Manager/storage.c:105: Runtime_Data[FOG_POWER_INDEX] &= ~OP_MODE_BIT;
      00300A 74 7F            [12]  603 	mov	a,#0x7f
      00300C 55 3C            [12]  604 	anl	a,_Runtime_Data
      00300E F5 3C            [12]  605 	mov	_Runtime_Data,a
      003010 80 0B            [24]  606 	sjmp	00110$
      003012                        607 00108$:
                                    608 ;	../Storage_Manager/storage.c:108: Runtime_Data[index] = value;
      003012 EF               [12]  609 	mov	a,r7
      003013 24 3C            [12]  610 	add	a,#_Runtime_Data
      003015 F8               [12]  611 	mov	r0,a
      003016 E5 1A            [12]  612 	mov	a,_bp
      003018 24 FC            [12]  613 	add	a,#0xfc
      00301A F9               [12]  614 	mov	r1,a
      00301B E7               [12]  615 	mov	a,@r1
      00301C F6               [12]  616 	mov	@r0,a
                                    617 ;	../Storage_Manager/storage.c:111: }
      00301D                        618 00110$:
                                    619 ;	../Storage_Manager/storage.c:113: if(index == FOG_POWER_INDEX){
      00301D EF               [12]  620 	mov	a,r7
      00301E 70 24            [24]  621 	jnz	00115$
                                    622 ;	../Storage_Manager/storage.c:114: if(opMode){
      003020 EE               [12]  623 	mov	a,r6
      003021 60 13            [24]  624 	jz	00112$
                                    625 ;	../Storage_Manager/storage.c:115: Runtime_Data[index] |= OP_MODE_BIT;
      003023 EF               [12]  626 	mov	a,r7
      003024 24 3C            [12]  627 	add	a,#_Runtime_Data
      003026 F9               [12]  628 	mov	r1,a
      003027 EF               [12]  629 	mov	a,r7
      003028 24 3C            [12]  630 	add	a,#_Runtime_Data
      00302A F8               [12]  631 	mov	r0,a
      00302B 86 06            [24]  632 	mov	ar6,@r0
      00302D 7D 00            [12]  633 	mov	r5,#0x00
      00302F 43 06 80         [24]  634 	orl	ar6,#0x80
      003032 A7 06            [24]  635 	mov	@r1,ar6
      003034 80 0E            [24]  636 	sjmp	00115$
      003036                        637 00112$:
                                    638 ;	../Storage_Manager/storage.c:117: Runtime_Data[index] &= ~OP_MODE_BIT;
      003036 EF               [12]  639 	mov	a,r7
      003037 24 3C            [12]  640 	add	a,#_Runtime_Data
      003039 F9               [12]  641 	mov	r1,a
      00303A EF               [12]  642 	mov	a,r7
      00303B 24 3C            [12]  643 	add	a,#_Runtime_Data
      00303D F8               [12]  644 	mov	r0,a
      00303E 86 07            [24]  645 	mov	ar7,@r0
      003040 74 7F            [12]  646 	mov	a,#0x7f
      003042 5F               [12]  647 	anl	a,r7
      003043 F7               [12]  648 	mov	@r1,a
      003044                        649 00115$:
                                    650 ;	../Storage_Manager/storage.c:121: save_load_settings(SLOT_0, SAVE);
      003044 74 01            [12]  651 	mov	a,#0x01
      003046 C0 E0            [24]  652 	push	acc
      003048 75 82 00         [24]  653 	mov	dpl,#0x00
      00304B 12 2E 9C         [24]  654 	lcall	_save_load_settings
      00304E 15 81            [12]  655 	dec	sp
                                    656 ;	../Storage_Manager/storage.c:122: }
      003050 D0 1A            [24]  657 	pop	_bp
      003052 22               [24]  658 	ret
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
      003053                        669 _set_dmx_address:
      003053 AF 82            [24]  670 	mov	r7,dpl
                                    671 ;	../Storage_Manager/storage.c:125: uint16_t addr = get_dmx_address();
      003055 C0 07            [24]  672 	push	ar7
      003057 12 30 B3         [24]  673 	lcall	_get_dmx_address
      00305A AD 82            [24]  674 	mov	r5,dpl
      00305C AE 83            [24]  675 	mov	r6,dph
      00305E D0 07            [24]  676 	pop	ar7
                                    677 ;	../Storage_Manager/storage.c:127: if(inc == INC){
      003060 BF 01 12         [24]  678 	cjne	r7,#0x01,00108$
                                    679 ;	../Storage_Manager/storage.c:128: if(addr >= DMX_MAX_ADDRESS){
      003063 74 FE            [12]  680 	mov	a,#0x100 - 0x02
      003065 2E               [12]  681 	add	a,r6
      003066 50 06            [24]  682 	jnc	00102$
                                    683 ;	../Storage_Manager/storage.c:129: addr = 1;
      003068 7D 01            [12]  684 	mov	r5,#0x01
      00306A 7E 00            [12]  685 	mov	r6,#0x00
      00306C 80 1A            [24]  686 	sjmp	00109$
      00306E                        687 00102$:
                                    688 ;	../Storage_Manager/storage.c:131: addr++;
      00306E 0D               [12]  689 	inc	r5
      00306F BD 00 16         [24]  690 	cjne	r5,#0x00,00109$
      003072 0E               [12]  691 	inc	r6
      003073 80 13            [24]  692 	sjmp	00109$
      003075                        693 00108$:
                                    694 ;	../Storage_Manager/storage.c:134: if(addr <= 1){
      003075 C3               [12]  695 	clr	c
      003076 74 01            [12]  696 	mov	a,#0x01
      003078 9D               [12]  697 	subb	a,r5
      003079 E4               [12]  698 	clr	a
      00307A 9E               [12]  699 	subb	a,r6
      00307B 40 06            [24]  700 	jc	00105$
                                    701 ;	../Storage_Manager/storage.c:135: addr = DMX_MAX_ADDRESS;
      00307D 7D 00            [12]  702 	mov	r5,#0x00
      00307F 7E 02            [12]  703 	mov	r6,#0x02
      003081 80 05            [24]  704 	sjmp	00109$
      003083                        705 00105$:
                                    706 ;	../Storage_Manager/storage.c:137: addr--;
      003083 1D               [12]  707 	dec	r5
      003084 BD FF 01         [24]  708 	cjne	r5,#0xff,00129$
      003087 1E               [12]  709 	dec	r6
      003088                        710 00129$:
      003088                        711 00109$:
                                    712 ;	../Storage_Manager/storage.c:141: set_runtime_data(ADDR_L_INDEX, VALUE, (uint8_t) addr);
      003088 8D 07            [24]  713 	mov	ar7,r5
      00308A C0 06            [24]  714 	push	ar6
      00308C C0 05            [24]  715 	push	ar5
      00308E C0 07            [24]  716 	push	ar7
      003090 E4               [12]  717 	clr	a
      003091 C0 E0            [24]  718 	push	acc
      003093 75 82 0D         [24]  719 	mov	dpl,#0x0d
      003096 12 2F C0         [24]  720 	lcall	_set_runtime_data
      003099 15 81            [12]  721 	dec	sp
      00309B 15 81            [12]  722 	dec	sp
      00309D D0 05            [24]  723 	pop	ar5
      00309F D0 06            [24]  724 	pop	ar6
                                    725 ;	../Storage_Manager/storage.c:142: set_runtime_data(ADDR_H_INDEX, VALUE, (uint8_t) (addr >> 8));
      0030A1 8E 05            [24]  726 	mov	ar5,r6
      0030A3 C0 05            [24]  727 	push	ar5
      0030A5 E4               [12]  728 	clr	a
      0030A6 C0 E0            [24]  729 	push	acc
      0030A8 75 82 0C         [24]  730 	mov	dpl,#0x0c
      0030AB 12 2F C0         [24]  731 	lcall	_set_runtime_data
      0030AE 15 81            [12]  732 	dec	sp
      0030B0 15 81            [12]  733 	dec	sp
                                    734 ;	../Storage_Manager/storage.c:144: }
      0030B2 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'get_dmx_address'
                                    738 ;------------------------------------------------------------
                                    739 ;address                   Allocated to registers 
                                    740 ;------------------------------------------------------------
                                    741 ;	../Storage_Manager/storage.c:146: uint16_t get_dmx_address(){
                                    742 ;	-----------------------------------------
                                    743 ;	 function get_dmx_address
                                    744 ;	-----------------------------------------
      0030B3                        745 _get_dmx_address:
                                    746 ;	../Storage_Manager/storage.c:149: address |= (Runtime_Data[ADDR_H_INDEX] << 8);
      0030B3 AF 48            [24]  747 	mov	r7,(_Runtime_Data + 0x000c)
      0030B5 7E 00            [12]  748 	mov	r6,#0x00
                                    749 ;	../Storage_Manager/storage.c:150: address |= Runtime_Data[ADDR_L_INDEX];
      0030B7 AC 49            [24]  750 	mov	r4,(_Runtime_Data + 0x000d)
      0030B9 7D 00            [12]  751 	mov	r5,#0x00
      0030BB EE               [12]  752 	mov	a,r6
      0030BC 42 04            [12]  753 	orl	ar4,a
      0030BE EF               [12]  754 	mov	a,r7
      0030BF 42 05            [12]  755 	orl	ar5,a
      0030C1 8C 82            [24]  756 	mov	dpl,r4
      0030C3 8D 83            [24]  757 	mov	dph,r5
                                    758 ;	../Storage_Manager/storage.c:152: return address;
                                    759 ;	../Storage_Manager/storage.c:153: }
      0030C5 22               [24]  760 	ret
                                    761 	.area CSEG    (CODE)
                                    762 	.area CONST   (CODE)
                                    763 	.area CABS    (ABS,CODE)
      003FC0                        764 	.org 0x3FC0
      003FC0                        765 _Init_Data:
      003FC0 82                     766 	.db #0x82	; 130
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
      003FD0 82                     782 	.db #0x82	; 130
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
      003FE0 82                     798 	.db #0x82	; 130
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
      003FF0 82                     814 	.db #0x82	; 130
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
