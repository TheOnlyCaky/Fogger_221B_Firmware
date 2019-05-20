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
      000079                        216 __start__stack:
      000079                        217 	.ds	1
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
      00000B 02 25 64         [24]  266 	ljmp	_wirelessBreakDetectISR
      00000E                        267 	.ds	5
      000013 32               [24]  268 	reti
      000014                        269 	.ds	7
      00001B 32               [24]  270 	reti
      00001C                        271 	.ds	7
      000023 02 1D C7         [24]  272 	ljmp	_dmxReceiveByteISR
      000026                        273 	.ds	5
      00002B 32               [24]  274 	reti
      00002C                        275 	.ds	7
      000033 32               [24]  276 	reti
      000034                        277 	.ds	7
      00003B 32               [24]  278 	reti
      00003C                        279 	.ds	7
      000043 02 1E 43         [24]  280 	ljmp	_dmxBreakDetectedISR
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
      000110 02 00 46         [24]  295 	ljmp	__sdcc_program_startup
                                    296 ;--------------------------------------------------------
                                    297 ; Home
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area HOME    (CODE)
      000046                        301 __sdcc_program_startup:
      000046 02 01 13         [24]  302 	ljmp	_main
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
      000113                        317 _main:
                           000007   318 	ar7 = 0x07
                           000006   319 	ar6 = 0x06
                           000005   320 	ar5 = 0x05
                           000004   321 	ar4 = 0x04
                           000003   322 	ar3 = 0x03
                           000002   323 	ar2 = 0x02
                           000001   324 	ar1 = 0x01
                           000000   325 	ar0 = 0x00
                                    326 ;	../main.c:32: CHIPCON = 0x50;
      000113 75 BF 50         [24]  327 	mov	_CHIPCON,#0x50
                                    328 ;	../main.c:33: PCLKSEL = 0x21;
      000116 75 B7 21         [24]  329 	mov	_PCLKSEL,#0x21
                                    330 ;	../main.c:34: EA = 1; //global interrupts enabled
                                    331 ;	assignBit
      000119 D2 AF            [12]  332 	setb	_EA
                                    333 ;	../main.c:35: P2_3 = 1; //enable programming
                                    334 ;	assignBit
      00011B D2 A3            [12]  335 	setb	_P2_3
                                    336 ;	../main.c:38: IAP_ADRH = (uint8_t) (RUNTIME_DATA_FLASH_SAVE_PAGE >> 8);
      00011D 75 E6 3F         [24]  337 	mov	_IAP_ADRH,#0x3f
                                    338 ;	../main.c:39: IAP_ADRL = (uint8_t) RUNTIME_DATA_FLASH_SAVE_PAGE;
      000120 75 E5 C0         [24]  339 	mov	_IAP_ADRL,#0xc0
                                    340 ;	../main.c:40: save_load_settings(SLOT_0, LOAD);
      000123 75 74 00         [24]  341 	mov	_save_load_settings_PARM_2,#0x00
      000126 75 82 00         [24]  342 	mov	dpl,#0x00
      000129 12 28 69         [24]  343 	lcall	_save_load_settings
                                    344 ;	../main.c:43: P1_OPT = ADC0E | ADC3E; //enable adc input
      00012C 75 D9 09         [24]  345 	mov	_P1_OPT,#0x09
                                    346 ;	../main.c:46: P3_4 = 1; //turn fogger off
                                    347 ;	assignBit
      00012F D2 B4            [12]  348 	setb	_P3_4
                                    349 ;	../main.c:47: P3_3 = 1;
                                    350 ;	assignBit
      000131 D2 B3            [12]  351 	setb	_P3_3
                                    352 ;	../main.c:50: tick_fogger();
      000133 12 2A 30         [24]  353 	lcall	_tick_fogger
                                    354 ;	../main.c:54: SCK = 0;
                                    355 ;	assignBit
      000136 C2 93            [12]  356 	clr	_SCK
                                    357 ;	../main.c:55: SER = 0;
                                    358 ;	assignBit
      000138 C2 95            [12]  359 	clr	_SER
                                    360 ;	../main.c:56: RCK = 0;
                                    361 ;	assignBit
      00013A C2 92            [12]  362 	clr	_RCK
                                    363 ;	../main.c:58: exe_command(FUNCTION_SET);
      00013C 90 3C 00         [24]  364 	mov	dptr,#0x3c00
      00013F 12 1B 27         [24]  365 	lcall	_exe_command
                                    366 ;	../main.c:59: exe_command(ENTRY_MODE_SET);
      000142 90 1E 00         [24]  367 	mov	dptr,#0x1e00
      000145 12 1B 27         [24]  368 	lcall	_exe_command
                                    369 ;	../main.c:60: exe_command(CLEAR_DISPLAY);
      000148 90 80 00         [24]  370 	mov	dptr,#0x8000
      00014B 12 1B 27         [24]  371 	lcall	_exe_command
                                    372 ;	../main.c:61: exe_command(DISPLAY_ON);
      00014E 90 30 00         [24]  373 	mov	dptr,#0x3000
      000151 12 1B 27         [24]  374 	lcall	_exe_command
                                    375 ;	../main.c:64: exe_command(CGRAM_ADDRESS_SET); //selector
      000154 90 02 00         [24]  376 	mov	dptr,#0x0200
      000157 12 1B 27         [24]  377 	lcall	_exe_command
                                    378 ;	../main.c:67: exe_command(0x8880);
      00015A 90 88 80         [24]  379 	mov	dptr,#0x8880
      00015D 12 1B 27         [24]  380 	lcall	_exe_command
                                    381 ;	../main.c:68: exe_command(0xF880);
      000160 90 F8 80         [24]  382 	mov	dptr,#0xf880
      000163 12 1B 27         [24]  383 	lcall	_exe_command
                                    384 ;	../main.c:69: exe_command(0x0080);
      000166 90 00 80         [24]  385 	mov	dptr,#0x0080
      000169 12 1B 27         [24]  386 	lcall	_exe_command
                                    387 ;	../main.c:70: exe_command(0xF880);
      00016C 90 F8 80         [24]  388 	mov	dptr,#0xf880
      00016F 12 1B 27         [24]  389 	lcall	_exe_command
                                    390 ;	../main.c:71: exe_command(0xA080);
      000172 90 A0 80         [24]  391 	mov	dptr,#0xa080
      000175 12 1B 27         [24]  392 	lcall	_exe_command
                                    393 ;	../main.c:72: exe_command(0x0080);
      000178 90 00 80         [24]  394 	mov	dptr,#0x0080
      00017B 12 1B 27         [24]  395 	lcall	_exe_command
                                    396 ;	../main.c:73: exe_command(0xF880);
      00017E 90 F8 80         [24]  397 	mov	dptr,#0xf880
      000181 12 1B 27         [24]  398 	lcall	_exe_command
                                    399 ;	../main.c:74: exe_command(0xA080);
      000184 90 A0 80         [24]  400 	mov	dptr,#0xa080
      000187 12 1B 27         [24]  401 	lcall	_exe_command
                                    402 ;	../main.c:77: exe_command(0x0080);
      00018A 90 00 80         [24]  403 	mov	dptr,#0x0080
      00018D 12 1B 27         [24]  404 	lcall	_exe_command
                                    405 ;	../main.c:78: exe_command(0x1080);
      000190 90 10 80         [24]  406 	mov	dptr,#0x1080
      000193 12 1B 27         [24]  407 	lcall	_exe_command
                                    408 ;	../main.c:79: exe_command(0x3080);
      000196 90 30 80         [24]  409 	mov	dptr,#0x3080
      000199 12 1B 27         [24]  410 	lcall	_exe_command
                                    411 ;	../main.c:80: exe_command(0x7080);
      00019C 90 70 80         [24]  412 	mov	dptr,#0x7080
      00019F 12 1B 27         [24]  413 	lcall	_exe_command
                                    414 ;	../main.c:81: exe_command(0x3080);
      0001A2 90 30 80         [24]  415 	mov	dptr,#0x3080
      0001A5 12 1B 27         [24]  416 	lcall	_exe_command
                                    417 ;	../main.c:82: exe_command(0x1080);
      0001A8 90 10 80         [24]  418 	mov	dptr,#0x1080
      0001AB 12 1B 27         [24]  419 	lcall	_exe_command
                                    420 ;	../main.c:83: exe_command(0x0080);
      0001AE 90 00 80         [24]  421 	mov	dptr,#0x0080
      0001B1 12 1B 27         [24]  422 	lcall	_exe_command
                                    423 ;	../main.c:84: exe_command(0xF880);
      0001B4 90 F8 80         [24]  424 	mov	dptr,#0xf880
      0001B7 12 1B 27         [24]  425 	lcall	_exe_command
                                    426 ;	../main.c:87: exe_command(0x0080);
      0001BA 90 00 80         [24]  427 	mov	dptr,#0x0080
      0001BD 12 1B 27         [24]  428 	lcall	_exe_command
                                    429 ;	../main.c:88: exe_command(0x0080);
      0001C0 90 00 80         [24]  430 	mov	dptr,#0x0080
      0001C3 12 1B 27         [24]  431 	lcall	_exe_command
                                    432 ;	../main.c:89: exe_command(0x0080);
      0001C6 90 00 80         [24]  433 	mov	dptr,#0x0080
      0001C9 12 1B 27         [24]  434 	lcall	_exe_command
                                    435 ;	../main.c:90: exe_command(0x0080);
      0001CC 90 00 80         [24]  436 	mov	dptr,#0x0080
      0001CF 12 1B 27         [24]  437 	lcall	_exe_command
                                    438 ;	../main.c:91: exe_command(0x0080);
      0001D2 90 00 80         [24]  439 	mov	dptr,#0x0080
      0001D5 12 1B 27         [24]  440 	lcall	_exe_command
                                    441 ;	../main.c:92: exe_command(0x0080);
      0001D8 90 00 80         [24]  442 	mov	dptr,#0x0080
      0001DB 12 1B 27         [24]  443 	lcall	_exe_command
                                    444 ;	../main.c:93: exe_command(0xF880);
      0001DE 90 F8 80         [24]  445 	mov	dptr,#0xf880
      0001E1 12 1B 27         [24]  446 	lcall	_exe_command
                                    447 ;	../main.c:94: exe_command(0xF880);
      0001E4 90 F8 80         [24]  448 	mov	dptr,#0xf880
      0001E7 12 1B 27         [24]  449 	lcall	_exe_command
                                    450 ;	../main.c:97: exe_command(0x0080);
      0001EA 90 00 80         [24]  451 	mov	dptr,#0x0080
      0001ED 12 1B 27         [24]  452 	lcall	_exe_command
                                    453 ;	../main.c:98: exe_command(0x0080);
      0001F0 90 00 80         [24]  454 	mov	dptr,#0x0080
      0001F3 12 1B 27         [24]  455 	lcall	_exe_command
                                    456 ;	../main.c:99: exe_command(0x0080);
      0001F6 90 00 80         [24]  457 	mov	dptr,#0x0080
      0001F9 12 1B 27         [24]  458 	lcall	_exe_command
                                    459 ;	../main.c:100: exe_command(0x0080);
      0001FC 90 00 80         [24]  460 	mov	dptr,#0x0080
      0001FF 12 1B 27         [24]  461 	lcall	_exe_command
                                    462 ;	../main.c:101: exe_command(0xF880);
      000202 90 F8 80         [24]  463 	mov	dptr,#0xf880
      000205 12 1B 27         [24]  464 	lcall	_exe_command
                                    465 ;	../main.c:102: exe_command(0xF880);
      000208 90 F8 80         [24]  466 	mov	dptr,#0xf880
      00020B 12 1B 27         [24]  467 	lcall	_exe_command
                                    468 ;	../main.c:103: exe_command(0xF880);
      00020E 90 F8 80         [24]  469 	mov	dptr,#0xf880
      000211 12 1B 27         [24]  470 	lcall	_exe_command
                                    471 ;	../main.c:104: exe_command(0xF880);
      000214 90 F8 80         [24]  472 	mov	dptr,#0xf880
      000217 12 1B 27         [24]  473 	lcall	_exe_command
                                    474 ;	../main.c:107: exe_command(0x0080);
      00021A 90 00 80         [24]  475 	mov	dptr,#0x0080
      00021D 12 1B 27         [24]  476 	lcall	_exe_command
                                    477 ;	../main.c:108: exe_command(0xF880);
      000220 90 F8 80         [24]  478 	mov	dptr,#0xf880
      000223 12 1B 27         [24]  479 	lcall	_exe_command
                                    480 ;	../main.c:109: exe_command(0xF880);
      000226 90 F8 80         [24]  481 	mov	dptr,#0xf880
      000229 12 1B 27         [24]  482 	lcall	_exe_command
                                    483 ;	../main.c:110: exe_command(0xF880);
      00022C 90 F8 80         [24]  484 	mov	dptr,#0xf880
      00022F 12 1B 27         [24]  485 	lcall	_exe_command
                                    486 ;	../main.c:111: exe_command(0xF880);
      000232 90 F8 80         [24]  487 	mov	dptr,#0xf880
      000235 12 1B 27         [24]  488 	lcall	_exe_command
                                    489 ;	../main.c:112: exe_command(0xF880);
      000238 90 F8 80         [24]  490 	mov	dptr,#0xf880
      00023B 12 1B 27         [24]  491 	lcall	_exe_command
                                    492 ;	../main.c:113: exe_command(0xF880);
      00023E 90 F8 80         [24]  493 	mov	dptr,#0xf880
      000241 12 1B 27         [24]  494 	lcall	_exe_command
                                    495 ;	../main.c:114: exe_command(0xF880);
      000244 90 F8 80         [24]  496 	mov	dptr,#0xf880
      000247 12 1B 27         [24]  497 	lcall	_exe_command
                                    498 ;	../main.c:117: exe_command(0x2080);
      00024A 90 20 80         [24]  499 	mov	dptr,#0x2080
      00024D 12 1B 27         [24]  500 	lcall	_exe_command
                                    501 ;	../main.c:118: exe_command(0x7080);
      000250 90 70 80         [24]  502 	mov	dptr,#0x7080
      000253 12 1B 27         [24]  503 	lcall	_exe_command
                                    504 ;	../main.c:119: exe_command(0x0080);
      000256 90 00 80         [24]  505 	mov	dptr,#0x0080
      000259 12 1B 27         [24]  506 	lcall	_exe_command
                                    507 ;	../main.c:120: exe_command(0x5080);
      00025C 90 50 80         [24]  508 	mov	dptr,#0x5080
      00025F 12 1B 27         [24]  509 	lcall	_exe_command
                                    510 ;	../main.c:121: exe_command(0x7080);
      000262 90 70 80         [24]  511 	mov	dptr,#0x7080
      000265 12 1B 27         [24]  512 	lcall	_exe_command
                                    513 ;	../main.c:122: exe_command(0x5080);
      000268 90 50 80         [24]  514 	mov	dptr,#0x5080
      00026B 12 1B 27         [24]  515 	lcall	_exe_command
                                    516 ;	../main.c:123: exe_command(0x0080);
      00026E 90 00 80         [24]  517 	mov	dptr,#0x0080
      000271 12 1B 27         [24]  518 	lcall	_exe_command
                                    519 ;	../main.c:124: exe_command(0xF880);
      000274 90 F8 80         [24]  520 	mov	dptr,#0xf880
      000277 12 1B 27         [24]  521 	lcall	_exe_command
                                    522 ;	../main.c:127: exe_command(0xF880);
      00027A 90 F8 80         [24]  523 	mov	dptr,#0xf880
      00027D 12 1B 27         [24]  524 	lcall	_exe_command
                                    525 ;	../main.c:128: exe_command(0x0080);
      000280 90 00 80         [24]  526 	mov	dptr,#0x0080
      000283 12 1B 27         [24]  527 	lcall	_exe_command
                                    528 ;	../main.c:129: exe_command(0x0080);
      000286 90 00 80         [24]  529 	mov	dptr,#0x0080
      000289 12 1B 27         [24]  530 	lcall	_exe_command
                                    531 ;	../main.c:130: exe_command(0x5080);
      00028C 90 50 80         [24]  532 	mov	dptr,#0x5080
      00028F 12 1B 27         [24]  533 	lcall	_exe_command
                                    534 ;	../main.c:131: exe_command(0x7080);
      000292 90 70 80         [24]  535 	mov	dptr,#0x7080
      000295 12 1B 27         [24]  536 	lcall	_exe_command
                                    537 ;	../main.c:132: exe_command(0x5080);
      000298 90 50 80         [24]  538 	mov	dptr,#0x5080
      00029B 12 1B 27         [24]  539 	lcall	_exe_command
                                    540 ;	../main.c:133: exe_command(0x0080);
      00029E 90 00 80         [24]  541 	mov	dptr,#0x0080
      0002A1 12 1B 27         [24]  542 	lcall	_exe_command
                                    543 ;	../main.c:134: exe_command(0x0080);
      0002A4 90 00 80         [24]  544 	mov	dptr,#0x0080
      0002A7 12 1B 27         [24]  545 	lcall	_exe_command
                                    546 ;	../main.c:137: exe_command(0x0080);
      0002AA 90 00 80         [24]  547 	mov	dptr,#0x0080
      0002AD 12 1B 27         [24]  548 	lcall	_exe_command
                                    549 ;	../main.c:138: exe_command(0xC080);
      0002B0 90 C0 80         [24]  550 	mov	dptr,#0xc080
      0002B3 12 1B 27         [24]  551 	lcall	_exe_command
                                    552 ;	../main.c:139: exe_command(0xD880);
      0002B6 90 D8 80         [24]  553 	mov	dptr,#0xd880
      0002B9 12 1B 27         [24]  554 	lcall	_exe_command
                                    555 ;	../main.c:140: exe_command(0x0080);
      0002BC 90 00 80         [24]  556 	mov	dptr,#0x0080
      0002BF 12 1B 27         [24]  557 	lcall	_exe_command
                                    558 ;	../main.c:141: exe_command(0x0080);
      0002C2 90 00 80         [24]  559 	mov	dptr,#0x0080
      0002C5 12 1B 27         [24]  560 	lcall	_exe_command
                                    561 ;	../main.c:142: exe_command(0x8880); 
      0002C8 90 88 80         [24]  562 	mov	dptr,#0x8880
      0002CB 12 1B 27         [24]  563 	lcall	_exe_command
                                    564 ;	../main.c:143: exe_command(0x7080);
      0002CE 90 70 80         [24]  565 	mov	dptr,#0x7080
      0002D1 12 1B 27         [24]  566 	lcall	_exe_command
                                    567 ;	../main.c:144: exe_command(0x0080);
      0002D4 90 00 80         [24]  568 	mov	dptr,#0x0080
      0002D7 12 1B 27         [24]  569 	lcall	_exe_command
                                    570 ;	../main.c:150: tick_ui();
      0002DA 12 04 EB         [24]  571 	lcall	_tick_ui
                                    572 ;	../main.c:153: CKCON |= 0x08; //timer0
      0002DD AE 8E            [24]  573 	mov	r6,_CKCON
      0002DF 43 06 08         [24]  574 	orl	ar6,#0x08
      0002E2 8E 8E            [24]  575 	mov	_CKCON,r6
                                    576 ;	../main.c:154: TMOD = 0x00; //timer0 
      0002E4 75 89 00         [24]  577 	mov	_TMOD,#0x00
                                    578 ;	../main.c:155: ET0 = 1; //timer0
                                    579 ;	assignBit
      0002E7 D2 A9            [12]  580 	setb	_ET0
                                    581 ;	../main.c:158: blackout();
      0002E9 12 24 9B         [24]  582 	lcall	_blackout
                                    583 ;	../main.c:159: PWM_EA1 = 0x48;
      0002EC 75 D3 48         [24]  584 	mov	_PWM_EA1,#0x48
                                    585 ;	../main.c:160: PWM_EA2 = 0x02;
      0002EF 75 D4 02         [24]  586 	mov	_PWM_EA2,#0x02
                                    587 ;	../main.c:163: while(tick--){}
      0002F2 7C DD            [12]  588 	mov	r4,#0xdd
      0002F4 7D 8A            [12]  589 	mov	r5,#0x8a
      0002F6 7E 14            [12]  590 	mov	r6,#0x14
      0002F8 7F 00            [12]  591 	mov	r7,#0x00
      0002FA                        592 00101$:
      0002FA 8C 00            [24]  593 	mov	ar0,r4
      0002FC 8D 01            [24]  594 	mov	ar1,r5
      0002FE 8E 02            [24]  595 	mov	ar2,r6
      000300 8F 03            [24]  596 	mov	ar3,r7
      000302 1C               [12]  597 	dec	r4
      000303 BC FF 09         [24]  598 	cjne	r4,#0xff,00140$
      000306 1D               [12]  599 	dec	r5
      000307 BD FF 05         [24]  600 	cjne	r5,#0xff,00140$
      00030A 1E               [12]  601 	dec	r6
      00030B BE FF 01         [24]  602 	cjne	r6,#0xff,00140$
      00030E 1F               [12]  603 	dec	r7
      00030F                        604 00140$:
      00030F E8               [12]  605 	mov	a,r0
      000310 49               [12]  606 	orl	a,r1
      000311 4A               [12]  607 	orl	a,r2
      000312 4B               [12]  608 	orl	a,r3
      000313 70 E5            [24]  609 	jnz	00101$
                                    610 ;	../main.c:167: SM0 = 1;
                                    611 ;	assignBit
      000315 D2 9F            [12]  612 	setb	_SM0
                                    613 ;	../main.c:168: SM1 = 1;
                                    614 ;	assignBit
      000317 D2 9E            [12]  615 	setb	_SM1
                                    616 ;	../main.c:169: SM2 = 1;
                                    617 ;	assignBit
      000319 D2 9D            [12]  618 	setb	_SM2
                                    619 ;	../main.c:170: REN = 1;
                                    620 ;	assignBit
      00031B D2 9C            [12]  621 	setb	_REN
                                    622 ;	../main.c:173: RCAP2L = BAUD_TIMER_LOW;
      00031D 75 CA FD         [24]  623 	mov	_RCAP2L,#0xfd
                                    624 ;	../main.c:174: RCAP2H = BAUD_TIMER_HIGH;
      000320 75 CB FF         [24]  625 	mov	_RCAP2H,#0xff
                                    626 ;	../main.c:175: RCLK = 1;
                                    627 ;	assignBit
      000323 D2 CD            [12]  628 	setb	_RCLK
                                    629 ;	../main.c:176: TCLK = 1;
                                    630 ;	assignBit
      000325 D2 CC            [12]  631 	setb	_TCLK
                                    632 ;	../main.c:177: EXEN2 = 0; 
                                    633 ;	assignBit
      000327 C2 CB            [12]  634 	clr	_EXEN2
                                    635 ;	../main.c:178: TR2 = 1;
                                    636 ;	assignBit
      000329 D2 CA            [12]  637 	setb	_TR2
                                    638 ;	../main.c:179: CT2 = 0; 
                                    639 ;	assignBit
      00032B C2 C9            [12]  640 	clr	_CT2
                                    641 ;	../main.c:180: CPRL2 = 0;
                                    642 ;	assignBit
      00032D C2 C8            [12]  643 	clr	_CPRL2
                                    644 ;	../main.c:183: TH3 = BREAK_TIMER_RELOAD_HIGH;
      00032F 75 9B FC         [24]  645 	mov	_TH3,#0xfc
                                    646 ;	../main.c:184: TL3 = BREAK_TIMER_RELOAD_LOW;
      000332 75 9A D0         [24]  647 	mov	_TL3,#0xd0
                                    648 ;	../main.c:187: EIE |= EIE_Timer3;
      000335 AA E8            [24]  649 	mov	r2,_EIE
      000337 43 02 01         [24]  650 	orl	ar2,#0x01
      00033A 8A E8            [24]  651 	mov	_EIE,r2
                                    652 ;	../main.c:188: ES = 1;
                                    653 ;	assignBit
      00033C D2 AC            [12]  654 	setb	_ES
                                    655 ;	../main.c:193: P2_3 = 0;
                                    656 ;	assignBit
      00033E C2 A3            [12]  657 	clr	_P2_3
                                    658 ;	../main.c:195: power_heater(HEATER_DISABLE);
      000340 75 82 01         [24]  659 	mov	dpl,#0x01
      000343 C0 07            [24]  660 	push	ar7
      000345 C0 06            [24]  661 	push	ar6
      000347 C0 05            [24]  662 	push	ar5
      000349 C0 04            [24]  663 	push	ar4
      00034B 12 2E 1F         [24]  664 	lcall	_power_heater
      00034E D0 04            [24]  665 	pop	ar4
      000350 D0 05            [24]  666 	pop	ar5
      000352 D0 06            [24]  667 	pop	ar6
      000354 D0 07            [24]  668 	pop	ar7
                                    669 ;	../main.c:198: while(1){
      000356                        670 00111$:
                                    671 ;	../main.c:200: if(!(tick % FOGGER_FREQ)) { tick_fogger(); }
      000356 75 74 90         [24]  672 	mov	__modulong_PARM_2,#0x90
      000359 E4               [12]  673 	clr	a
      00035A F5 75            [12]  674 	mov	(__modulong_PARM_2 + 1),a
      00035C F5 76            [12]  675 	mov	(__modulong_PARM_2 + 2),a
      00035E F5 77            [12]  676 	mov	(__modulong_PARM_2 + 3),a
      000360 8C 82            [24]  677 	mov	dpl,r4
      000362 8D 83            [24]  678 	mov	dph,r5
      000364 8E F0            [24]  679 	mov	b,r6
      000366 EF               [12]  680 	mov	a,r7
      000367 C0 07            [24]  681 	push	ar7
      000369 C0 06            [24]  682 	push	ar6
      00036B C0 05            [24]  683 	push	ar5
      00036D C0 04            [24]  684 	push	ar4
      00036F 12 2E 59         [24]  685 	lcall	__modulong
      000372 A8 82            [24]  686 	mov	r0,dpl
      000374 A9 83            [24]  687 	mov	r1,dph
      000376 AA F0            [24]  688 	mov	r2,b
      000378 FB               [12]  689 	mov	r3,a
      000379 D0 04            [24]  690 	pop	ar4
      00037B D0 05            [24]  691 	pop	ar5
      00037D D0 06            [24]  692 	pop	ar6
      00037F D0 07            [24]  693 	pop	ar7
      000381 E8               [12]  694 	mov	a,r0
      000382 49               [12]  695 	orl	a,r1
      000383 4A               [12]  696 	orl	a,r2
      000384 4B               [12]  697 	orl	a,r3
      000385 70 13            [24]  698 	jnz	00105$
      000387 C0 07            [24]  699 	push	ar7
      000389 C0 06            [24]  700 	push	ar6
      00038B C0 05            [24]  701 	push	ar5
      00038D C0 04            [24]  702 	push	ar4
      00038F 12 2A 30         [24]  703 	lcall	_tick_fogger
      000392 D0 04            [24]  704 	pop	ar4
      000394 D0 05            [24]  705 	pop	ar5
      000396 D0 06            [24]  706 	pop	ar6
      000398 D0 07            [24]  707 	pop	ar7
      00039A                        708 00105$:
                                    709 ;	../main.c:202: if(!(tick % WIRELESS_FREQ)) { tick_wireless(); }
      00039A 75 74 59         [24]  710 	mov	__modulong_PARM_2,#0x59
      00039D E4               [12]  711 	clr	a
      00039E F5 75            [12]  712 	mov	(__modulong_PARM_2 + 1),a
      0003A0 F5 76            [12]  713 	mov	(__modulong_PARM_2 + 2),a
      0003A2 F5 77            [12]  714 	mov	(__modulong_PARM_2 + 3),a
      0003A4 8C 82            [24]  715 	mov	dpl,r4
      0003A6 8D 83            [24]  716 	mov	dph,r5
      0003A8 8E F0            [24]  717 	mov	b,r6
      0003AA EF               [12]  718 	mov	a,r7
      0003AB C0 07            [24]  719 	push	ar7
      0003AD C0 06            [24]  720 	push	ar6
      0003AF C0 05            [24]  721 	push	ar5
      0003B1 C0 04            [24]  722 	push	ar4
      0003B3 12 2E 59         [24]  723 	lcall	__modulong
      0003B6 A8 82            [24]  724 	mov	r0,dpl
      0003B8 A9 83            [24]  725 	mov	r1,dph
      0003BA AA F0            [24]  726 	mov	r2,b
      0003BC FB               [12]  727 	mov	r3,a
      0003BD D0 04            [24]  728 	pop	ar4
      0003BF D0 05            [24]  729 	pop	ar5
      0003C1 D0 06            [24]  730 	pop	ar6
      0003C3 D0 07            [24]  731 	pop	ar7
      0003C5 E8               [12]  732 	mov	a,r0
      0003C6 49               [12]  733 	orl	a,r1
      0003C7 4A               [12]  734 	orl	a,r2
      0003C8 4B               [12]  735 	orl	a,r3
      0003C9 70 13            [24]  736 	jnz	00107$
      0003CB C0 07            [24]  737 	push	ar7
      0003CD C0 06            [24]  738 	push	ar6
      0003CF C0 05            [24]  739 	push	ar5
      0003D1 C0 04            [24]  740 	push	ar4
      0003D3 12 25 C0         [24]  741 	lcall	_tick_wireless
      0003D6 D0 04            [24]  742 	pop	ar4
      0003D8 D0 05            [24]  743 	pop	ar5
      0003DA D0 06            [24]  744 	pop	ar6
      0003DC D0 07            [24]  745 	pop	ar7
      0003DE                        746 00107$:
                                    747 ;	../main.c:204: if(!(tick % UI_FREQ)) { tick_ui(); }
      0003DE 75 74 03         [24]  748 	mov	__modulong_PARM_2,#0x03
      0003E1 E4               [12]  749 	clr	a
      0003E2 F5 75            [12]  750 	mov	(__modulong_PARM_2 + 1),a
      0003E4 F5 76            [12]  751 	mov	(__modulong_PARM_2 + 2),a
      0003E6 F5 77            [12]  752 	mov	(__modulong_PARM_2 + 3),a
      0003E8 8C 82            [24]  753 	mov	dpl,r4
      0003EA 8D 83            [24]  754 	mov	dph,r5
      0003EC 8E F0            [24]  755 	mov	b,r6
      0003EE EF               [12]  756 	mov	a,r7
      0003EF C0 07            [24]  757 	push	ar7
      0003F1 C0 06            [24]  758 	push	ar6
      0003F3 C0 05            [24]  759 	push	ar5
      0003F5 C0 04            [24]  760 	push	ar4
      0003F7 12 2E 59         [24]  761 	lcall	__modulong
      0003FA A8 82            [24]  762 	mov	r0,dpl
      0003FC A9 83            [24]  763 	mov	r1,dph
      0003FE AA F0            [24]  764 	mov	r2,b
      000400 FB               [12]  765 	mov	r3,a
      000401 D0 04            [24]  766 	pop	ar4
      000403 D0 05            [24]  767 	pop	ar5
      000405 D0 06            [24]  768 	pop	ar6
      000407 D0 07            [24]  769 	pop	ar7
      000409 E8               [12]  770 	mov	a,r0
      00040A 49               [12]  771 	orl	a,r1
      00040B 4A               [12]  772 	orl	a,r2
      00040C 4B               [12]  773 	orl	a,r3
      00040D 70 13            [24]  774 	jnz	00109$
      00040F C0 07            [24]  775 	push	ar7
      000411 C0 06            [24]  776 	push	ar6
      000413 C0 05            [24]  777 	push	ar5
      000415 C0 04            [24]  778 	push	ar4
      000417 12 04 EB         [24]  779 	lcall	_tick_ui
      00041A D0 04            [24]  780 	pop	ar4
      00041C D0 05            [24]  781 	pop	ar5
      00041E D0 06            [24]  782 	pop	ar6
      000420 D0 07            [24]  783 	pop	ar7
      000422                        784 00109$:
                                    785 ;	../main.c:206: tick_led(tick++);      
      000422 8C 00            [24]  786 	mov	ar0,r4
      000424 8D 01            [24]  787 	mov	ar1,r5
      000426 8E 02            [24]  788 	mov	ar2,r6
      000428 8F 03            [24]  789 	mov	ar3,r7
      00042A 0C               [12]  790 	inc	r4
      00042B BC 00 09         [24]  791 	cjne	r4,#0x00,00145$
      00042E 0D               [12]  792 	inc	r5
      00042F BD 00 05         [24]  793 	cjne	r5,#0x00,00145$
      000432 0E               [12]  794 	inc	r6
      000433 BE 00 01         [24]  795 	cjne	r6,#0x00,00145$
      000436 0F               [12]  796 	inc	r7
      000437                        797 00145$:
      000437 88 82            [24]  798 	mov	dpl,r0
      000439 89 83            [24]  799 	mov	dph,r1
      00043B 8A F0            [24]  800 	mov	b,r2
      00043D EB               [12]  801 	mov	a,r3
      00043E C0 07            [24]  802 	push	ar7
      000440 C0 06            [24]  803 	push	ar6
      000442 C0 05            [24]  804 	push	ar5
      000444 C0 04            [24]  805 	push	ar4
      000446 12 1E 70         [24]  806 	lcall	_tick_led
      000449 D0 04            [24]  807 	pop	ar4
      00044B D0 05            [24]  808 	pop	ar5
      00044D D0 06            [24]  809 	pop	ar6
      00044F D0 07            [24]  810 	pop	ar7
                                    811 ;	../main.c:208: }
      000451 02 03 56         [24]  812 	ljmp	00111$
                                    813 	.area CSEG    (CODE)
                                    814 	.area CONST   (CODE)
                                    815 	.area XINIT   (CODE)
                                    816 	.area CABS    (ABS,CODE)
