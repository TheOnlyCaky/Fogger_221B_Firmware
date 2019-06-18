                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _tick_wireless
                                     13 	.globl _blackout
                                     14 	.globl _tick_led
                                     15 	.globl _power_heater
                                     16 	.globl _tick_fogger
                                     17 	.globl _tick_ui
                                     18 	.globl _exe_command
                                     19 	.globl _save_load_settings
                                     20 	.globl _CPRL2
                                     21 	.globl _CT2
                                     22 	.globl _TR2
                                     23 	.globl _EXEN2
                                     24 	.globl _TCLK
                                     25 	.globl _RCLK
                                     26 	.globl _REN
                                     27 	.globl _SM2
                                     28 	.globl _SM1
                                     29 	.globl _SM0
                                     30 	.globl _RCK
                                     31 	.globl _SER
                                     32 	.globl _SCK
                                     33 	.globl _RI
                                     34 	.globl _ES
                                     35 	.globl _ET0
                                     36 	.globl _EA
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _P2_7
                                     46 	.globl _P2_6
                                     47 	.globl _P2_5
                                     48 	.globl _P2_4
                                     49 	.globl _P2_3
                                     50 	.globl _P2_2
                                     51 	.globl _P2_1
                                     52 	.globl _P2_0
                                     53 	.globl _P1_7
                                     54 	.globl _P1_6
                                     55 	.globl _P1_5
                                     56 	.globl _P1_4
                                     57 	.globl _P1_3
                                     58 	.globl _P1_2
                                     59 	.globl _P1_1
                                     60 	.globl _P1_0
                                     61 	.globl _P0_7
                                     62 	.globl _P0_6
                                     63 	.globl _P0_5
                                     64 	.globl _P0_4
                                     65 	.globl _P0_3
                                     66 	.globl _P0_2
                                     67 	.globl _P0_1
                                     68 	.globl _P0_0
                                     69 	.globl _IAP_ADRH
                                     70 	.globl _IAP_ADRL
                                     71 	.globl _IAPEN
                                     72 	.globl _TH0
                                     73 	.globl _TL0
                                     74 	.globl _CKCON
                                     75 	.globl _TMOD
                                     76 	.globl _TCON
                                     77 	.globl _PWMDATA17L
                                     78 	.globl _PWMDATA17H
                                     79 	.globl _PWMDATA14L
                                     80 	.globl _PWMDATA14H
                                     81 	.globl _PWMDATA11L
                                     82 	.globl _PWMDATA11H
                                     83 	.globl _PWM_EA2
                                     84 	.globl _PWM_EA1
                                     85 	.globl _SBUF
                                     86 	.globl _TL3
                                     87 	.globl _TH3
                                     88 	.globl _T2CON
                                     89 	.globl _RCAP2H
                                     90 	.globl _RCAP2L
                                     91 	.globl _SCON
                                     92 	.globl _P1_OPT
                                     93 	.globl _ADCVAL2
                                     94 	.globl _ADCVAL1
                                     95 	.globl _ADCSEL
                                     96 	.globl _EXIF
                                     97 	.globl _EIE
                                     98 	.globl _IE
                                     99 	.globl _P3
                                    100 	.globl _P2
                                    101 	.globl _P1
                                    102 	.globl _P0
                                    103 	.globl _PCLKSEL
                                    104 	.globl _CHIPCON
                                    105 ;--------------------------------------------------------
                                    106 ; special function registers
                                    107 ;--------------------------------------------------------
                                    108 	.area RSEG    (ABS,DATA)
      000000                        109 	.org 0x0000
                           0000BF   110 _CHIPCON	=	0x00bf
                           0000B7   111 _PCLKSEL	=	0x00b7
                           000080   112 _P0	=	0x0080
                           000090   113 _P1	=	0x0090
                           0000A0   114 _P2	=	0x00a0
                           0000B0   115 _P3	=	0x00b0
                           0000A8   116 _IE	=	0x00a8
                           0000E8   117 _EIE	=	0x00e8
                           000091   118 _EXIF	=	0x0091
                           0000DA   119 _ADCSEL	=	0x00da
                           0000DB   120 _ADCVAL1	=	0x00db
                           0000DC   121 _ADCVAL2	=	0x00dc
                           0000D9   122 _P1_OPT	=	0x00d9
                           000098   123 _SCON	=	0x0098
                           0000CA   124 _RCAP2L	=	0x00ca
                           0000CB   125 _RCAP2H	=	0x00cb
                           0000C8   126 _T2CON	=	0x00c8
                           00009B   127 _TH3	=	0x009b
                           00009A   128 _TL3	=	0x009a
                           000099   129 _SBUF	=	0x0099
                           0000D3   130 _PWM_EA1	=	0x00d3
                           0000D4   131 _PWM_EA2	=	0x00d4
                           0000BD   132 _PWMDATA11H	=	0x00bd
                           0000BE   133 _PWMDATA11L	=	0x00be
                           0000B5   134 _PWMDATA14H	=	0x00b5
                           0000B6   135 _PWMDATA14L	=	0x00b6
                           0000AD   136 _PWMDATA17H	=	0x00ad
                           0000AE   137 _PWMDATA17L	=	0x00ae
                           000088   138 _TCON	=	0x0088
                           000089   139 _TMOD	=	0x0089
                           00008E   140 _CKCON	=	0x008e
                           00008A   141 _TL0	=	0x008a
                           00008C   142 _TH0	=	0x008c
                           0000E4   143 _IAPEN	=	0x00e4
                           0000E5   144 _IAP_ADRL	=	0x00e5
                           0000E6   145 _IAP_ADRH	=	0x00e6
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           0000A0   167 _P2_0	=	0x00a0
                           0000A1   168 _P2_1	=	0x00a1
                           0000A2   169 _P2_2	=	0x00a2
                           0000A3   170 _P2_3	=	0x00a3
                           0000A4   171 _P2_4	=	0x00a4
                           0000A5   172 _P2_5	=	0x00a5
                           0000A6   173 _P2_6	=	0x00a6
                           0000A7   174 _P2_7	=	0x00a7
                           0000B0   175 _P3_0	=	0x00b0
                           0000B1   176 _P3_1	=	0x00b1
                           0000B2   177 _P3_2	=	0x00b2
                           0000B3   178 _P3_3	=	0x00b3
                           0000B4   179 _P3_4	=	0x00b4
                           0000B5   180 _P3_5	=	0x00b5
                           0000B6   181 _P3_6	=	0x00b6
                           0000B7   182 _P3_7	=	0x00b7
                           0000AF   183 _EA	=	0x00af
                           0000A9   184 _ET0	=	0x00a9
                           0000AC   185 _ES	=	0x00ac
                           000098   186 _RI	=	0x0098
                           000093   187 _SCK	=	0x0093
                           000095   188 _SER	=	0x0095
                           000092   189 _RCK	=	0x0092
                           00009F   190 _SM0	=	0x009f
                           00009E   191 _SM1	=	0x009e
                           00009D   192 _SM2	=	0x009d
                           00009C   193 _REN	=	0x009c
                           0000CD   194 _RCLK	=	0x00cd
                           0000CC   195 _TCLK	=	0x00cc
                           0000CB   196 _EXEN2	=	0x00cb
                           0000CA   197 _TR2	=	0x00ca
                           0000C9   198 _CT2	=	0x00c9
                           0000C8   199 _CPRL2	=	0x00c8
                                    200 ;--------------------------------------------------------
                                    201 ; overlayable register banks
                                    202 ;--------------------------------------------------------
                                    203 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        204 	.ds 8
                                    205 ;--------------------------------------------------------
                                    206 ; internal ram data
                                    207 ;--------------------------------------------------------
                                    208 	.area DSEG    (DATA)
                                    209 ;--------------------------------------------------------
                                    210 ; overlayable items in internal ram 
                                    211 ;--------------------------------------------------------
                                    212 ;--------------------------------------------------------
                                    213 ; Stack segment in internal ram 
                                    214 ;--------------------------------------------------------
                                    215 	.area	SSEG
      000060                        216 __start__stack:
      000060                        217 	.ds	1
                                    218 
                                    219 ;--------------------------------------------------------
                                    220 ; indirectly addressable internal ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area ISEG    (DATA)
                                    223 ;--------------------------------------------------------
                                    224 ; absolute internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area IABS    (ABS,DATA)
                                    227 	.area IABS    (ABS,DATA)
                                    228 ;--------------------------------------------------------
                                    229 ; bit data
                                    230 ;--------------------------------------------------------
                                    231 	.area BSEG    (BIT)
                                    232 ;--------------------------------------------------------
                                    233 ; paged external ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area PSEG    (PAG,XDATA)
                                    236 ;--------------------------------------------------------
                                    237 ; external ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area XSEG    (XDATA)
                                    240 ;--------------------------------------------------------
                                    241 ; absolute external ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area XABS    (ABS,XDATA)
                                    244 ;--------------------------------------------------------
                                    245 ; external initialized ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area XISEG   (XDATA)
                                    248 	.area HOME    (CODE)
                                    249 	.area GSINIT0 (CODE)
                                    250 	.area GSINIT1 (CODE)
                                    251 	.area GSINIT2 (CODE)
                                    252 	.area GSINIT3 (CODE)
                                    253 	.area GSINIT4 (CODE)
                                    254 	.area GSINIT5 (CODE)
                                    255 	.area GSINIT  (CODE)
                                    256 	.area GSFINAL (CODE)
                                    257 	.area CSEG    (CODE)
                                    258 ;--------------------------------------------------------
                                    259 ; interrupt vector 
                                    260 ;--------------------------------------------------------
                                    261 	.area HOME    (CODE)
      000000                        262 __interrupt_vect:
      000000 02 00 49         [24]  263 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  264 	reti
      000004                        265 	.ds	7
      00000B 02 2B 1B         [24]  266 	ljmp	_wirelessBreakDetectISR
      00000E                        267 	.ds	5
      000013 32               [24]  268 	reti
      000014                        269 	.ds	7
      00001B 32               [24]  270 	reti
      00001C                        271 	.ds	7
      000023 02 22 8E         [24]  272 	ljmp	_dmxReceiveByteISR
      000026                        273 	.ds	5
      00002B 32               [24]  274 	reti
      00002C                        275 	.ds	7
      000033 32               [24]  276 	reti
      000034                        277 	.ds	7
      00003B 32               [24]  278 	reti
      00003C                        279 	.ds	7
      000043 02 23 1B         [24]  280 	ljmp	_dmxBreakDetectedISR
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.globl __sdcc_gsinit_startup
                                    289 	.globl __sdcc_program_startup
                                    290 	.globl __start__stack
                                    291 	.globl __mcs51_genXINIT
                                    292 	.globl __mcs51_genXRAMCLEAR
                                    293 	.globl __mcs51_genRAMCLEAR
                                    294 	.area GSFINAL (CODE)
      000120 02 00 46         [24]  295 	ljmp	__sdcc_program_startup
                                    296 ;--------------------------------------------------------
                                    297 ; Home
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area HOME    (CODE)
      000046                        301 __sdcc_program_startup:
      000046 02 01 23         [24]  302 	ljmp	_main
                                    303 ;	return from main will return to caller
                                    304 ;--------------------------------------------------------
                                    305 ; code
                                    306 ;--------------------------------------------------------
                                    307 	.area CSEG    (CODE)
                                    308 ;------------------------------------------------------------
                                    309 ;Allocation info for local variables in function 'main'
                                    310 ;------------------------------------------------------------
                                    311 ;tick                      Allocated to registers 
                                    312 ;------------------------------------------------------------
                                    313 ;	../main.c:26: void main(void)
                                    314 ;	-----------------------------------------
                                    315 ;	 function main
                                    316 ;	-----------------------------------------
      000123                        317 _main:
                           000007   318 	ar7 = 0x07
                           000006   319 	ar6 = 0x06
                           000005   320 	ar5 = 0x05
                           000004   321 	ar4 = 0x04
                           000003   322 	ar3 = 0x03
                           000002   323 	ar2 = 0x02
                           000001   324 	ar1 = 0x01
                           000000   325 	ar0 = 0x00
                                    326 ;	../main.c:32: CHIPCON = 0x50;
      000123 75 BF 50         [24]  327 	mov	_CHIPCON,#0x50
                                    328 ;	../main.c:33: PCLKSEL = 0x21;
      000126 75 B7 21         [24]  329 	mov	_PCLKSEL,#0x21
                                    330 ;	../main.c:34: EA = 1; //global interrupts enabled
                                    331 ;	assignBit
      000129 D2 AF            [12]  332 	setb	_EA
                                    333 ;	../main.c:35: P2_3 = 1; //enable programming
                                    334 ;	assignBit
      00012B D2 A3            [12]  335 	setb	_P2_3
                                    336 ;	../main.c:38: IAP_ADRH = (uint8_t) (RUNTIME_DATA_FLASH_SAVE_PAGE >> 8);
      00012D 75 E6 3F         [24]  337 	mov	_IAP_ADRH,#0x3f
                                    338 ;	../main.c:39: IAP_ADRL = (uint8_t) RUNTIME_DATA_FLASH_SAVE_PAGE;
      000130 75 E5 C0         [24]  339 	mov	_IAP_ADRL,#0xc0
                                    340 ;	../main.c:40: save_load_settings(SLOT_0, LOAD);
      000133 E4               [12]  341 	clr	a
      000134 C0 E0            [24]  342 	push	acc
      000136 75 82 00         [24]  343 	mov	dpl,#0x00
      000139 12 2E 9C         [24]  344 	lcall	_save_load_settings
      00013C 15 81            [12]  345 	dec	sp
                                    346 ;	../main.c:43: P1_OPT = ADC0E | ADC3E; //enable adc input
      00013E 75 D9 09         [24]  347 	mov	_P1_OPT,#0x09
                                    348 ;	../main.c:46: P3_4 = 1; //turn fogger off
                                    349 ;	assignBit
      000141 D2 B4            [12]  350 	setb	_P3_4
                                    351 ;	../main.c:47: P3_3 = 1;
                                    352 ;	assignBit
      000143 D2 B3            [12]  353 	setb	_P3_3
                                    354 ;	../main.c:48: power_heater(HEATER_DISABLE);
      000145 75 82 01         [24]  355 	mov	dpl,#0x01
      000148 12 35 72         [24]  356 	lcall	_power_heater
                                    357 ;	../main.c:51: tick_fogger();
      00014B 12 30 C6         [24]  358 	lcall	_tick_fogger
                                    359 ;	../main.c:55: SCK = 0;
                                    360 ;	assignBit
      00014E C2 93            [12]  361 	clr	_SCK
                                    362 ;	../main.c:56: SER = 0;
                                    363 ;	assignBit
      000150 C2 95            [12]  364 	clr	_SER
                                    365 ;	../main.c:57: RCK = 0;
                                    366 ;	assignBit
      000152 C2 92            [12]  367 	clr	_RCK
                                    368 ;	../main.c:59: exe_command(FUNCTION_SET);
      000154 90 3C 00         [24]  369 	mov	dptr,#0x3c00
      000157 12 1F E6         [24]  370 	lcall	_exe_command
                                    371 ;	../main.c:60: exe_command(ENTRY_MODE_SET);
      00015A 90 1E 00         [24]  372 	mov	dptr,#0x1e00
      00015D 12 1F E6         [24]  373 	lcall	_exe_command
                                    374 ;	../main.c:61: exe_command(CLEAR_DISPLAY);
      000160 90 80 00         [24]  375 	mov	dptr,#0x8000
      000163 12 1F E6         [24]  376 	lcall	_exe_command
                                    377 ;	../main.c:62: exe_command(DISPLAY_ON);
      000166 90 30 00         [24]  378 	mov	dptr,#0x3000
      000169 12 1F E6         [24]  379 	lcall	_exe_command
                                    380 ;	../main.c:65: exe_command(CGRAM_ADDRESS_SET); //selector
      00016C 90 02 00         [24]  381 	mov	dptr,#0x0200
      00016F 12 1F E6         [24]  382 	lcall	_exe_command
                                    383 ;	../main.c:68: exe_command(0x8880);
      000172 90 88 80         [24]  384 	mov	dptr,#0x8880
      000175 12 1F E6         [24]  385 	lcall	_exe_command
                                    386 ;	../main.c:69: exe_command(0xF880);
      000178 90 F8 80         [24]  387 	mov	dptr,#0xf880
      00017B 12 1F E6         [24]  388 	lcall	_exe_command
                                    389 ;	../main.c:70: exe_command(0x0080);
      00017E 90 00 80         [24]  390 	mov	dptr,#0x0080
      000181 12 1F E6         [24]  391 	lcall	_exe_command
                                    392 ;	../main.c:71: exe_command(0xF880);
      000184 90 F8 80         [24]  393 	mov	dptr,#0xf880
      000187 12 1F E6         [24]  394 	lcall	_exe_command
                                    395 ;	../main.c:72: exe_command(0xA080);
      00018A 90 A0 80         [24]  396 	mov	dptr,#0xa080
      00018D 12 1F E6         [24]  397 	lcall	_exe_command
                                    398 ;	../main.c:73: exe_command(0x0080);
      000190 90 00 80         [24]  399 	mov	dptr,#0x0080
      000193 12 1F E6         [24]  400 	lcall	_exe_command
                                    401 ;	../main.c:74: exe_command(0xF880);
      000196 90 F8 80         [24]  402 	mov	dptr,#0xf880
      000199 12 1F E6         [24]  403 	lcall	_exe_command
                                    404 ;	../main.c:75: exe_command(0xA080);
      00019C 90 A0 80         [24]  405 	mov	dptr,#0xa080
      00019F 12 1F E6         [24]  406 	lcall	_exe_command
                                    407 ;	../main.c:78: exe_command(0x0080);
      0001A2 90 00 80         [24]  408 	mov	dptr,#0x0080
      0001A5 12 1F E6         [24]  409 	lcall	_exe_command
                                    410 ;	../main.c:79: exe_command(0x1080);
      0001A8 90 10 80         [24]  411 	mov	dptr,#0x1080
      0001AB 12 1F E6         [24]  412 	lcall	_exe_command
                                    413 ;	../main.c:80: exe_command(0x3080);
      0001AE 90 30 80         [24]  414 	mov	dptr,#0x3080
      0001B1 12 1F E6         [24]  415 	lcall	_exe_command
                                    416 ;	../main.c:81: exe_command(0x7080);
      0001B4 90 70 80         [24]  417 	mov	dptr,#0x7080
      0001B7 12 1F E6         [24]  418 	lcall	_exe_command
                                    419 ;	../main.c:82: exe_command(0x3080);
      0001BA 90 30 80         [24]  420 	mov	dptr,#0x3080
      0001BD 12 1F E6         [24]  421 	lcall	_exe_command
                                    422 ;	../main.c:83: exe_command(0x1080);
      0001C0 90 10 80         [24]  423 	mov	dptr,#0x1080
      0001C3 12 1F E6         [24]  424 	lcall	_exe_command
                                    425 ;	../main.c:84: exe_command(0x0080);
      0001C6 90 00 80         [24]  426 	mov	dptr,#0x0080
      0001C9 12 1F E6         [24]  427 	lcall	_exe_command
                                    428 ;	../main.c:85: exe_command(0xF880);
      0001CC 90 F8 80         [24]  429 	mov	dptr,#0xf880
      0001CF 12 1F E6         [24]  430 	lcall	_exe_command
                                    431 ;	../main.c:88: exe_command(0x0080);
      0001D2 90 00 80         [24]  432 	mov	dptr,#0x0080
      0001D5 12 1F E6         [24]  433 	lcall	_exe_command
                                    434 ;	../main.c:89: exe_command(0x0080);
      0001D8 90 00 80         [24]  435 	mov	dptr,#0x0080
      0001DB 12 1F E6         [24]  436 	lcall	_exe_command
                                    437 ;	../main.c:90: exe_command(0x0080);
      0001DE 90 00 80         [24]  438 	mov	dptr,#0x0080
      0001E1 12 1F E6         [24]  439 	lcall	_exe_command
                                    440 ;	../main.c:91: exe_command(0x0080);
      0001E4 90 00 80         [24]  441 	mov	dptr,#0x0080
      0001E7 12 1F E6         [24]  442 	lcall	_exe_command
                                    443 ;	../main.c:92: exe_command(0x0080);
      0001EA 90 00 80         [24]  444 	mov	dptr,#0x0080
      0001ED 12 1F E6         [24]  445 	lcall	_exe_command
                                    446 ;	../main.c:93: exe_command(0x0080);
      0001F0 90 00 80         [24]  447 	mov	dptr,#0x0080
      0001F3 12 1F E6         [24]  448 	lcall	_exe_command
                                    449 ;	../main.c:94: exe_command(0xF880);
      0001F6 90 F8 80         [24]  450 	mov	dptr,#0xf880
      0001F9 12 1F E6         [24]  451 	lcall	_exe_command
                                    452 ;	../main.c:95: exe_command(0xF880);
      0001FC 90 F8 80         [24]  453 	mov	dptr,#0xf880
      0001FF 12 1F E6         [24]  454 	lcall	_exe_command
                                    455 ;	../main.c:98: exe_command(0x0080);
      000202 90 00 80         [24]  456 	mov	dptr,#0x0080
      000205 12 1F E6         [24]  457 	lcall	_exe_command
                                    458 ;	../main.c:99: exe_command(0x0080);
      000208 90 00 80         [24]  459 	mov	dptr,#0x0080
      00020B 12 1F E6         [24]  460 	lcall	_exe_command
                                    461 ;	../main.c:100: exe_command(0x0080);
      00020E 90 00 80         [24]  462 	mov	dptr,#0x0080
      000211 12 1F E6         [24]  463 	lcall	_exe_command
                                    464 ;	../main.c:101: exe_command(0x0080);
      000214 90 00 80         [24]  465 	mov	dptr,#0x0080
      000217 12 1F E6         [24]  466 	lcall	_exe_command
                                    467 ;	../main.c:102: exe_command(0xF880);
      00021A 90 F8 80         [24]  468 	mov	dptr,#0xf880
      00021D 12 1F E6         [24]  469 	lcall	_exe_command
                                    470 ;	../main.c:103: exe_command(0xF880);
      000220 90 F8 80         [24]  471 	mov	dptr,#0xf880
      000223 12 1F E6         [24]  472 	lcall	_exe_command
                                    473 ;	../main.c:104: exe_command(0xF880);
      000226 90 F8 80         [24]  474 	mov	dptr,#0xf880
      000229 12 1F E6         [24]  475 	lcall	_exe_command
                                    476 ;	../main.c:105: exe_command(0xF880);
      00022C 90 F8 80         [24]  477 	mov	dptr,#0xf880
      00022F 12 1F E6         [24]  478 	lcall	_exe_command
                                    479 ;	../main.c:108: exe_command(0x0080);
      000232 90 00 80         [24]  480 	mov	dptr,#0x0080
      000235 12 1F E6         [24]  481 	lcall	_exe_command
                                    482 ;	../main.c:109: exe_command(0xF880);
      000238 90 F8 80         [24]  483 	mov	dptr,#0xf880
      00023B 12 1F E6         [24]  484 	lcall	_exe_command
                                    485 ;	../main.c:110: exe_command(0xF880);
      00023E 90 F8 80         [24]  486 	mov	dptr,#0xf880
      000241 12 1F E6         [24]  487 	lcall	_exe_command
                                    488 ;	../main.c:111: exe_command(0xF880);
      000244 90 F8 80         [24]  489 	mov	dptr,#0xf880
      000247 12 1F E6         [24]  490 	lcall	_exe_command
                                    491 ;	../main.c:112: exe_command(0xF880);
      00024A 90 F8 80         [24]  492 	mov	dptr,#0xf880
      00024D 12 1F E6         [24]  493 	lcall	_exe_command
                                    494 ;	../main.c:113: exe_command(0xF880);
      000250 90 F8 80         [24]  495 	mov	dptr,#0xf880
      000253 12 1F E6         [24]  496 	lcall	_exe_command
                                    497 ;	../main.c:114: exe_command(0xF880);
      000256 90 F8 80         [24]  498 	mov	dptr,#0xf880
      000259 12 1F E6         [24]  499 	lcall	_exe_command
                                    500 ;	../main.c:115: exe_command(0xF880);
      00025C 90 F8 80         [24]  501 	mov	dptr,#0xf880
      00025F 12 1F E6         [24]  502 	lcall	_exe_command
                                    503 ;	../main.c:118: exe_command(0x2080);
      000262 90 20 80         [24]  504 	mov	dptr,#0x2080
      000265 12 1F E6         [24]  505 	lcall	_exe_command
                                    506 ;	../main.c:119: exe_command(0x7080);
      000268 90 70 80         [24]  507 	mov	dptr,#0x7080
      00026B 12 1F E6         [24]  508 	lcall	_exe_command
                                    509 ;	../main.c:120: exe_command(0x0080);
      00026E 90 00 80         [24]  510 	mov	dptr,#0x0080
      000271 12 1F E6         [24]  511 	lcall	_exe_command
                                    512 ;	../main.c:121: exe_command(0x5080);
      000274 90 50 80         [24]  513 	mov	dptr,#0x5080
      000277 12 1F E6         [24]  514 	lcall	_exe_command
                                    515 ;	../main.c:122: exe_command(0x7080);
      00027A 90 70 80         [24]  516 	mov	dptr,#0x7080
      00027D 12 1F E6         [24]  517 	lcall	_exe_command
                                    518 ;	../main.c:123: exe_command(0x5080);
      000280 90 50 80         [24]  519 	mov	dptr,#0x5080
      000283 12 1F E6         [24]  520 	lcall	_exe_command
                                    521 ;	../main.c:124: exe_command(0x0080);
      000286 90 00 80         [24]  522 	mov	dptr,#0x0080
      000289 12 1F E6         [24]  523 	lcall	_exe_command
                                    524 ;	../main.c:125: exe_command(0xF880);
      00028C 90 F8 80         [24]  525 	mov	dptr,#0xf880
      00028F 12 1F E6         [24]  526 	lcall	_exe_command
                                    527 ;	../main.c:128: exe_command(0xF880);
      000292 90 F8 80         [24]  528 	mov	dptr,#0xf880
      000295 12 1F E6         [24]  529 	lcall	_exe_command
                                    530 ;	../main.c:129: exe_command(0x0080);
      000298 90 00 80         [24]  531 	mov	dptr,#0x0080
      00029B 12 1F E6         [24]  532 	lcall	_exe_command
                                    533 ;	../main.c:130: exe_command(0x0080);
      00029E 90 00 80         [24]  534 	mov	dptr,#0x0080
      0002A1 12 1F E6         [24]  535 	lcall	_exe_command
                                    536 ;	../main.c:131: exe_command(0x5080);
      0002A4 90 50 80         [24]  537 	mov	dptr,#0x5080
      0002A7 12 1F E6         [24]  538 	lcall	_exe_command
                                    539 ;	../main.c:132: exe_command(0x7080);
      0002AA 90 70 80         [24]  540 	mov	dptr,#0x7080
      0002AD 12 1F E6         [24]  541 	lcall	_exe_command
                                    542 ;	../main.c:133: exe_command(0x5080);
      0002B0 90 50 80         [24]  543 	mov	dptr,#0x5080
      0002B3 12 1F E6         [24]  544 	lcall	_exe_command
                                    545 ;	../main.c:134: exe_command(0x0080);
      0002B6 90 00 80         [24]  546 	mov	dptr,#0x0080
      0002B9 12 1F E6         [24]  547 	lcall	_exe_command
                                    548 ;	../main.c:135: exe_command(0x0080);
      0002BC 90 00 80         [24]  549 	mov	dptr,#0x0080
      0002BF 12 1F E6         [24]  550 	lcall	_exe_command
                                    551 ;	../main.c:138: exe_command(0x0080);
      0002C2 90 00 80         [24]  552 	mov	dptr,#0x0080
      0002C5 12 1F E6         [24]  553 	lcall	_exe_command
                                    554 ;	../main.c:139: exe_command(0xC080);
      0002C8 90 C0 80         [24]  555 	mov	dptr,#0xc080
      0002CB 12 1F E6         [24]  556 	lcall	_exe_command
                                    557 ;	../main.c:140: exe_command(0xD880);
      0002CE 90 D8 80         [24]  558 	mov	dptr,#0xd880
      0002D1 12 1F E6         [24]  559 	lcall	_exe_command
                                    560 ;	../main.c:141: exe_command(0x0080);
      0002D4 90 00 80         [24]  561 	mov	dptr,#0x0080
      0002D7 12 1F E6         [24]  562 	lcall	_exe_command
                                    563 ;	../main.c:142: exe_command(0x0080);
      0002DA 90 00 80         [24]  564 	mov	dptr,#0x0080
      0002DD 12 1F E6         [24]  565 	lcall	_exe_command
                                    566 ;	../main.c:143: exe_command(0x8880); 
      0002E0 90 88 80         [24]  567 	mov	dptr,#0x8880
      0002E3 12 1F E6         [24]  568 	lcall	_exe_command
                                    569 ;	../main.c:144: exe_command(0x7080);
      0002E6 90 70 80         [24]  570 	mov	dptr,#0x7080
      0002E9 12 1F E6         [24]  571 	lcall	_exe_command
                                    572 ;	../main.c:145: exe_command(0x0080);
      0002EC 90 00 80         [24]  573 	mov	dptr,#0x0080
      0002EF 12 1F E6         [24]  574 	lcall	_exe_command
                                    575 ;	../main.c:151: tick_ui();
      0002F2 12 05 2A         [24]  576 	lcall	_tick_ui
                                    577 ;	../main.c:154: CKCON |= 0x08; //timer0
      0002F5 AE 8E            [24]  578 	mov	r6,_CKCON
      0002F7 43 06 08         [24]  579 	orl	ar6,#0x08
      0002FA 8E 8E            [24]  580 	mov	_CKCON,r6
                                    581 ;	../main.c:155: TMOD = 0x00; //timer0 
      0002FC 75 89 00         [24]  582 	mov	_TMOD,#0x00
                                    583 ;	../main.c:156: ET0 = 1; //timer0
                                    584 ;	assignBit
      0002FF D2 A9            [12]  585 	setb	_ET0
                                    586 ;	../main.c:159: blackout();
      000301 12 2A 2E         [24]  587 	lcall	_blackout
                                    588 ;	../main.c:160: PWM_EA1 = 0x48;
      000304 75 D3 48         [24]  589 	mov	_PWM_EA1,#0x48
                                    590 ;	../main.c:161: PWM_EA2 = 0x02;
      000307 75 D4 02         [24]  591 	mov	_PWM_EA2,#0x02
                                    592 ;	../main.c:164: while(tick--){}
      00030A 7C DD            [12]  593 	mov	r4,#0xdd
      00030C 7D 8A            [12]  594 	mov	r5,#0x8a
      00030E 7E 14            [12]  595 	mov	r6,#0x14
      000310 7F 00            [12]  596 	mov	r7,#0x00
      000312                        597 00101$:
      000312 8C 00            [24]  598 	mov	ar0,r4
      000314 8D 01            [24]  599 	mov	ar1,r5
      000316 8E 02            [24]  600 	mov	ar2,r6
      000318 8F 03            [24]  601 	mov	ar3,r7
      00031A 1C               [12]  602 	dec	r4
      00031B BC FF 09         [24]  603 	cjne	r4,#0xff,00140$
      00031E 1D               [12]  604 	dec	r5
      00031F BD FF 05         [24]  605 	cjne	r5,#0xff,00140$
      000322 1E               [12]  606 	dec	r6
      000323 BE FF 01         [24]  607 	cjne	r6,#0xff,00140$
      000326 1F               [12]  608 	dec	r7
      000327                        609 00140$:
      000327 E8               [12]  610 	mov	a,r0
      000328 49               [12]  611 	orl	a,r1
      000329 4A               [12]  612 	orl	a,r2
      00032A 4B               [12]  613 	orl	a,r3
      00032B 70 E5            [24]  614 	jnz	00101$
                                    615 ;	../main.c:168: SM0 = 1;
                                    616 ;	assignBit
      00032D D2 9F            [12]  617 	setb	_SM0
                                    618 ;	../main.c:169: SM1 = 1;
                                    619 ;	assignBit
      00032F D2 9E            [12]  620 	setb	_SM1
                                    621 ;	../main.c:170: SM2 = 1;
                                    622 ;	assignBit
      000331 D2 9D            [12]  623 	setb	_SM2
                                    624 ;	../main.c:171: REN = 1;
                                    625 ;	assignBit
      000333 D2 9C            [12]  626 	setb	_REN
                                    627 ;	../main.c:174: RCAP2L = BAUD_TIMER_LOW;
      000335 75 CA FD         [24]  628 	mov	_RCAP2L,#0xfd
                                    629 ;	../main.c:175: RCAP2H = BAUD_TIMER_HIGH;
      000338 75 CB FF         [24]  630 	mov	_RCAP2H,#0xff
                                    631 ;	../main.c:176: RCLK = 1;
                                    632 ;	assignBit
      00033B D2 CD            [12]  633 	setb	_RCLK
                                    634 ;	../main.c:177: TCLK = 1;
                                    635 ;	assignBit
      00033D D2 CC            [12]  636 	setb	_TCLK
                                    637 ;	../main.c:178: EXEN2 = 0; 
                                    638 ;	assignBit
      00033F C2 CB            [12]  639 	clr	_EXEN2
                                    640 ;	../main.c:179: TR2 = 1;
                                    641 ;	assignBit
      000341 D2 CA            [12]  642 	setb	_TR2
                                    643 ;	../main.c:180: CT2 = 0; 
                                    644 ;	assignBit
      000343 C2 C9            [12]  645 	clr	_CT2
                                    646 ;	../main.c:181: CPRL2 = 0;
                                    647 ;	assignBit
      000345 C2 C8            [12]  648 	clr	_CPRL2
                                    649 ;	../main.c:184: TH3 = BREAK_TIMER_RELOAD_HIGH;
      000347 75 9B FC         [24]  650 	mov	_TH3,#0xfc
                                    651 ;	../main.c:185: TL3 = BREAK_TIMER_RELOAD_LOW;
      00034A 75 9A EE         [24]  652 	mov	_TL3,#0xee
                                    653 ;	../main.c:188: EIE |= EIE_Timer3;
      00034D AA E8            [24]  654 	mov	r2,_EIE
      00034F 43 02 01         [24]  655 	orl	ar2,#0x01
      000352 8A E8            [24]  656 	mov	_EIE,r2
                                    657 ;	../main.c:189: ES = 1;
                                    658 ;	assignBit
      000354 D2 AC            [12]  659 	setb	_ES
                                    660 ;	../main.c:194: P2_3 = 0;
                                    661 ;	assignBit
      000356 C2 A3            [12]  662 	clr	_P2_3
                                    663 ;	../main.c:197: power_heater(HEATER_ENABLE);
      000358 75 82 00         [24]  664 	mov	dpl,#0x00
      00035B C0 07            [24]  665 	push	ar7
      00035D C0 06            [24]  666 	push	ar6
      00035F C0 05            [24]  667 	push	ar5
      000361 C0 04            [24]  668 	push	ar4
      000363 12 35 72         [24]  669 	lcall	_power_heater
      000366 D0 04            [24]  670 	pop	ar4
      000368 D0 05            [24]  671 	pop	ar5
      00036A D0 06            [24]  672 	pop	ar6
      00036C D0 07            [24]  673 	pop	ar7
                                    674 ;	../main.c:200: while(1){
      00036E                        675 00111$:
                                    676 ;	../main.c:202: if(!(tick % FOGGER_FREQ)) { tick_fogger(); }
      00036E C0 07            [24]  677 	push	ar7
      000370 C0 06            [24]  678 	push	ar6
      000372 C0 05            [24]  679 	push	ar5
      000374 C0 04            [24]  680 	push	ar4
      000376 74 90            [12]  681 	mov	a,#0x90
      000378 C0 E0            [24]  682 	push	acc
      00037A E4               [12]  683 	clr	a
      00037B C0 E0            [24]  684 	push	acc
      00037D C0 E0            [24]  685 	push	acc
      00037F C0 E0            [24]  686 	push	acc
      000381 8C 82            [24]  687 	mov	dpl,r4
      000383 8D 83            [24]  688 	mov	dph,r5
      000385 8E F0            [24]  689 	mov	b,r6
      000387 EF               [12]  690 	mov	a,r7
      000388 12 35 D6         [24]  691 	lcall	__modulong
      00038B A8 82            [24]  692 	mov	r0,dpl
      00038D A9 83            [24]  693 	mov	r1,dph
      00038F AA F0            [24]  694 	mov	r2,b
      000391 FB               [12]  695 	mov	r3,a
      000392 E5 81            [12]  696 	mov	a,sp
      000394 24 FC            [12]  697 	add	a,#0xfc
      000396 F5 81            [12]  698 	mov	sp,a
      000398 D0 04            [24]  699 	pop	ar4
      00039A D0 05            [24]  700 	pop	ar5
      00039C D0 06            [24]  701 	pop	ar6
      00039E D0 07            [24]  702 	pop	ar7
      0003A0 E8               [12]  703 	mov	a,r0
      0003A1 49               [12]  704 	orl	a,r1
      0003A2 4A               [12]  705 	orl	a,r2
      0003A3 4B               [12]  706 	orl	a,r3
      0003A4 70 13            [24]  707 	jnz	00105$
      0003A6 C0 07            [24]  708 	push	ar7
      0003A8 C0 06            [24]  709 	push	ar6
      0003AA C0 05            [24]  710 	push	ar5
      0003AC C0 04            [24]  711 	push	ar4
      0003AE 12 30 C6         [24]  712 	lcall	_tick_fogger
      0003B1 D0 04            [24]  713 	pop	ar4
      0003B3 D0 05            [24]  714 	pop	ar5
      0003B5 D0 06            [24]  715 	pop	ar6
      0003B7 D0 07            [24]  716 	pop	ar7
      0003B9                        717 00105$:
                                    718 ;	../main.c:204: if(!(tick % WIRELESS_FREQ)) { tick_wireless(); }
      0003B9 C0 07            [24]  719 	push	ar7
      0003BB C0 06            [24]  720 	push	ar6
      0003BD C0 05            [24]  721 	push	ar5
      0003BF C0 04            [24]  722 	push	ar4
      0003C1 74 59            [12]  723 	mov	a,#0x59
      0003C3 C0 E0            [24]  724 	push	acc
      0003C5 E4               [12]  725 	clr	a
      0003C6 C0 E0            [24]  726 	push	acc
      0003C8 C0 E0            [24]  727 	push	acc
      0003CA C0 E0            [24]  728 	push	acc
      0003CC 8C 82            [24]  729 	mov	dpl,r4
      0003CE 8D 83            [24]  730 	mov	dph,r5
      0003D0 8E F0            [24]  731 	mov	b,r6
      0003D2 EF               [12]  732 	mov	a,r7
      0003D3 12 35 D6         [24]  733 	lcall	__modulong
      0003D6 A8 82            [24]  734 	mov	r0,dpl
      0003D8 A9 83            [24]  735 	mov	r1,dph
      0003DA AA F0            [24]  736 	mov	r2,b
      0003DC FB               [12]  737 	mov	r3,a
      0003DD E5 81            [12]  738 	mov	a,sp
      0003DF 24 FC            [12]  739 	add	a,#0xfc
      0003E1 F5 81            [12]  740 	mov	sp,a
      0003E3 D0 04            [24]  741 	pop	ar4
      0003E5 D0 05            [24]  742 	pop	ar5
      0003E7 D0 06            [24]  743 	pop	ar6
      0003E9 D0 07            [24]  744 	pop	ar7
      0003EB E8               [12]  745 	mov	a,r0
      0003EC 49               [12]  746 	orl	a,r1
      0003ED 4A               [12]  747 	orl	a,r2
      0003EE 4B               [12]  748 	orl	a,r3
      0003EF 70 13            [24]  749 	jnz	00107$
      0003F1 C0 07            [24]  750 	push	ar7
      0003F3 C0 06            [24]  751 	push	ar6
      0003F5 C0 05            [24]  752 	push	ar5
      0003F7 C0 04            [24]  753 	push	ar4
      0003F9 12 2B 77         [24]  754 	lcall	_tick_wireless
      0003FC D0 04            [24]  755 	pop	ar4
      0003FE D0 05            [24]  756 	pop	ar5
      000400 D0 06            [24]  757 	pop	ar6
      000402 D0 07            [24]  758 	pop	ar7
      000404                        759 00107$:
                                    760 ;	../main.c:206: if(!(tick % UI_FREQ)) { tick_ui(); }
      000404 C0 07            [24]  761 	push	ar7
      000406 C0 06            [24]  762 	push	ar6
      000408 C0 05            [24]  763 	push	ar5
      00040A C0 04            [24]  764 	push	ar4
      00040C 74 03            [12]  765 	mov	a,#0x03
      00040E C0 E0            [24]  766 	push	acc
      000410 E4               [12]  767 	clr	a
      000411 C0 E0            [24]  768 	push	acc
      000413 C0 E0            [24]  769 	push	acc
      000415 C0 E0            [24]  770 	push	acc
      000417 8C 82            [24]  771 	mov	dpl,r4
      000419 8D 83            [24]  772 	mov	dph,r5
      00041B 8E F0            [24]  773 	mov	b,r6
      00041D EF               [12]  774 	mov	a,r7
      00041E 12 35 D6         [24]  775 	lcall	__modulong
      000421 A8 82            [24]  776 	mov	r0,dpl
      000423 A9 83            [24]  777 	mov	r1,dph
      000425 AA F0            [24]  778 	mov	r2,b
      000427 FB               [12]  779 	mov	r3,a
      000428 E5 81            [12]  780 	mov	a,sp
      00042A 24 FC            [12]  781 	add	a,#0xfc
      00042C F5 81            [12]  782 	mov	sp,a
      00042E D0 04            [24]  783 	pop	ar4
      000430 D0 05            [24]  784 	pop	ar5
      000432 D0 06            [24]  785 	pop	ar6
      000434 D0 07            [24]  786 	pop	ar7
      000436 E8               [12]  787 	mov	a,r0
      000437 49               [12]  788 	orl	a,r1
      000438 4A               [12]  789 	orl	a,r2
      000439 4B               [12]  790 	orl	a,r3
      00043A 70 13            [24]  791 	jnz	00109$
      00043C C0 07            [24]  792 	push	ar7
      00043E C0 06            [24]  793 	push	ar6
      000440 C0 05            [24]  794 	push	ar5
      000442 C0 04            [24]  795 	push	ar4
      000444 12 05 2A         [24]  796 	lcall	_tick_ui
      000447 D0 04            [24]  797 	pop	ar4
      000449 D0 05            [24]  798 	pop	ar5
      00044B D0 06            [24]  799 	pop	ar6
      00044D D0 07            [24]  800 	pop	ar7
      00044F                        801 00109$:
                                    802 ;	../main.c:208: tick_led(tick++);      
      00044F 8C 00            [24]  803 	mov	ar0,r4
      000451 8D 01            [24]  804 	mov	ar1,r5
      000453 8E 02            [24]  805 	mov	ar2,r6
      000455 8F 03            [24]  806 	mov	ar3,r7
      000457 0C               [12]  807 	inc	r4
      000458 BC 00 09         [24]  808 	cjne	r4,#0x00,00145$
      00045B 0D               [12]  809 	inc	r5
      00045C BD 00 05         [24]  810 	cjne	r5,#0x00,00145$
      00045F 0E               [12]  811 	inc	r6
      000460 BE 00 01         [24]  812 	cjne	r6,#0x00,00145$
      000463 0F               [12]  813 	inc	r7
      000464                        814 00145$:
      000464 88 82            [24]  815 	mov	dpl,r0
      000466 89 83            [24]  816 	mov	dph,r1
      000468 8A F0            [24]  817 	mov	b,r2
      00046A EB               [12]  818 	mov	a,r3
      00046B C0 07            [24]  819 	push	ar7
      00046D C0 06            [24]  820 	push	ar6
      00046F C0 05            [24]  821 	push	ar5
      000471 C0 04            [24]  822 	push	ar4
      000473 12 23 48         [24]  823 	lcall	_tick_led
      000476 D0 04            [24]  824 	pop	ar4
      000478 D0 05            [24]  825 	pop	ar5
      00047A D0 06            [24]  826 	pop	ar6
      00047C D0 07            [24]  827 	pop	ar7
                                    828 ;	../main.c:210: }
      00047E 02 03 6E         [24]  829 	ljmp	00111$
                                    830 	.area CSEG    (CODE)
                                    831 	.area CONST   (CODE)
                                    832 	.area XINIT   (CODE)
                                    833 	.area CABS    (ABS,CODE)
