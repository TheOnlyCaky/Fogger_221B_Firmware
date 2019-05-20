                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module wireless
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _power_pump
                                     12 	.globl _set_runtime_data
                                     13 	.globl _get_runtime_data
                                     14 	.globl _CPRL2
                                     15 	.globl _CT2
                                     16 	.globl _TR2
                                     17 	.globl _EXEN2
                                     18 	.globl _TCLK
                                     19 	.globl _RCLK
                                     20 	.globl _REN
                                     21 	.globl _SM2
                                     22 	.globl _SM1
                                     23 	.globl _SM0
                                     24 	.globl _RCK
                                     25 	.globl _SER
                                     26 	.globl _SCK
                                     27 	.globl _RI
                                     28 	.globl _ES
                                     29 	.globl _ET0
                                     30 	.globl _EA
                                     31 	.globl _P3_7
                                     32 	.globl _P3_6
                                     33 	.globl _P3_5
                                     34 	.globl _P3_4
                                     35 	.globl _P3_3
                                     36 	.globl _P3_2
                                     37 	.globl _P3_1
                                     38 	.globl _P3_0
                                     39 	.globl _P2_7
                                     40 	.globl _P2_6
                                     41 	.globl _P2_5
                                     42 	.globl _P2_4
                                     43 	.globl _P2_3
                                     44 	.globl _P2_2
                                     45 	.globl _P2_1
                                     46 	.globl _P2_0
                                     47 	.globl _P1_7
                                     48 	.globl _P1_6
                                     49 	.globl _P1_5
                                     50 	.globl _P1_4
                                     51 	.globl _P1_3
                                     52 	.globl _P1_2
                                     53 	.globl _P1_1
                                     54 	.globl _P1_0
                                     55 	.globl _P0_7
                                     56 	.globl _P0_6
                                     57 	.globl _P0_5
                                     58 	.globl _P0_4
                                     59 	.globl _P0_3
                                     60 	.globl _P0_2
                                     61 	.globl _P0_1
                                     62 	.globl _P0_0
                                     63 	.globl _IAP_ADRH
                                     64 	.globl _IAP_ADRL
                                     65 	.globl _IAPEN
                                     66 	.globl _TH0
                                     67 	.globl _TL0
                                     68 	.globl _CKCON
                                     69 	.globl _TMOD
                                     70 	.globl _TCON
                                     71 	.globl _PWMDATA17L
                                     72 	.globl _PWMDATA17H
                                     73 	.globl _PWMDATA14L
                                     74 	.globl _PWMDATA14H
                                     75 	.globl _PWMDATA11L
                                     76 	.globl _PWMDATA11H
                                     77 	.globl _PWM_EA2
                                     78 	.globl _PWM_EA1
                                     79 	.globl _SBUF
                                     80 	.globl _TL3
                                     81 	.globl _TH3
                                     82 	.globl _T2CON
                                     83 	.globl _RCAP2H
                                     84 	.globl _RCAP2L
                                     85 	.globl _SCON
                                     86 	.globl _P1_OPT
                                     87 	.globl _ADCVAL2
                                     88 	.globl _ADCVAL1
                                     89 	.globl _ADCSEL
                                     90 	.globl _EXIF
                                     91 	.globl _EIE
                                     92 	.globl _IE
                                     93 	.globl _P3
                                     94 	.globl _P2
                                     95 	.globl _P1
                                     96 	.globl _P0
                                     97 	.globl _PCLKSEL
                                     98 	.globl _CHIPCON
                                     99 	.globl _wirelessBreakDetectISR
                                    100 	.globl _tick_wireless
                                    101 	.globl _handleUserConfigAction
                                    102 	.globl _getWirelessAction
                                    103 	.globl _detectDitDah
                                    104 ;--------------------------------------------------------
                                    105 ; special function registers
                                    106 ;--------------------------------------------------------
                                    107 	.area RSEG    (ABS,DATA)
      000000                        108 	.org 0x0000
                           0000BF   109 _CHIPCON	=	0x00bf
                           0000B7   110 _PCLKSEL	=	0x00b7
                           000080   111 _P0	=	0x0080
                           000090   112 _P1	=	0x0090
                           0000A0   113 _P2	=	0x00a0
                           0000B0   114 _P3	=	0x00b0
                           0000A8   115 _IE	=	0x00a8
                           0000E8   116 _EIE	=	0x00e8
                           000091   117 _EXIF	=	0x0091
                           0000DA   118 _ADCSEL	=	0x00da
                           0000DB   119 _ADCVAL1	=	0x00db
                           0000DC   120 _ADCVAL2	=	0x00dc
                           0000D9   121 _P1_OPT	=	0x00d9
                           000098   122 _SCON	=	0x0098
                           0000CA   123 _RCAP2L	=	0x00ca
                           0000CB   124 _RCAP2H	=	0x00cb
                           0000C8   125 _T2CON	=	0x00c8
                           00009B   126 _TH3	=	0x009b
                           00009A   127 _TL3	=	0x009a
                           000099   128 _SBUF	=	0x0099
                           0000D3   129 _PWM_EA1	=	0x00d3
                           0000D4   130 _PWM_EA2	=	0x00d4
                           0000BD   131 _PWMDATA11H	=	0x00bd
                           0000BE   132 _PWMDATA11L	=	0x00be
                           0000B5   133 _PWMDATA14H	=	0x00b5
                           0000B6   134 _PWMDATA14L	=	0x00b6
                           0000AD   135 _PWMDATA17H	=	0x00ad
                           0000AE   136 _PWMDATA17L	=	0x00ae
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008E   139 _CKCON	=	0x008e
                           00008A   140 _TL0	=	0x008a
                           00008C   141 _TH0	=	0x008c
                           0000E4   142 _IAPEN	=	0x00e4
                           0000E5   143 _IAP_ADRL	=	0x00e5
                           0000E6   144 _IAP_ADRH	=	0x00e6
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           0000A0   166 _P2_0	=	0x00a0
                           0000A1   167 _P2_1	=	0x00a1
                           0000A2   168 _P2_2	=	0x00a2
                           0000A3   169 _P2_3	=	0x00a3
                           0000A4   170 _P2_4	=	0x00a4
                           0000A5   171 _P2_5	=	0x00a5
                           0000A6   172 _P2_6	=	0x00a6
                           0000A7   173 _P2_7	=	0x00a7
                           0000B0   174 _P3_0	=	0x00b0
                           0000B1   175 _P3_1	=	0x00b1
                           0000B2   176 _P3_2	=	0x00b2
                           0000B3   177 _P3_3	=	0x00b3
                           0000B4   178 _P3_4	=	0x00b4
                           0000B5   179 _P3_5	=	0x00b5
                           0000B6   180 _P3_6	=	0x00b6
                           0000B7   181 _P3_7	=	0x00b7
                           0000AF   182 _EA	=	0x00af
                           0000A9   183 _ET0	=	0x00a9
                           0000AC   184 _ES	=	0x00ac
                           000098   185 _RI	=	0x0098
                           000093   186 _SCK	=	0x0093
                           000095   187 _SER	=	0x0095
                           000092   188 _RCK	=	0x0092
                           00009F   189 _SM0	=	0x009f
                           00009E   190 _SM1	=	0x009e
                           00009D   191 _SM2	=	0x009d
                           00009C   192 _REN	=	0x009c
                           0000CD   193 _RCLK	=	0x00cd
                           0000CC   194 _TCLK	=	0x00cc
                           0000CB   195 _EXEN2	=	0x00cb
                           0000CA   196 _TR2	=	0x00ca
                           0000C9   197 _CT2	=	0x00c9
                           0000C8   198 _CPRL2	=	0x00c8
                                    199 ;--------------------------------------------------------
                                    200 ; overlayable register banks
                                    201 ;--------------------------------------------------------
                                    202 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        203 	.ds 8
                                    204 ;--------------------------------------------------------
                                    205 ; overlayable bit register bank
                                    206 ;--------------------------------------------------------
                                    207 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        208 bits:
      000020                        209 	.ds 1
                           008000   210 	b0 = bits[0]
                           008100   211 	b1 = bits[1]
                           008200   212 	b2 = bits[2]
                           008300   213 	b3 = bits[3]
                           008400   214 	b4 = bits[4]
                           008500   215 	b5 = bits[5]
                           008600   216 	b6 = bits[6]
                           008700   217 	b7 = bits[7]
                                    218 ;--------------------------------------------------------
                                    219 ; internal ram data
                                    220 ;--------------------------------------------------------
                                    221 	.area DSEG    (DATA)
      00001A                        222 _Break_Count:
      00001A                        223 	.ds 1
      00001B                        224 _Current_Action:
      00001B                        225 	.ds 1
      00001C                        226 _tick_wireless_lastAction_65536_45:
      00001C                        227 	.ds 1
      00001D                        228 _handleUserConfigAction_changed_65536_53:
      00001D                        229 	.ds 2
      00001F                        230 _handleUserConfigAction_blue_65536_53:
      00001F                        231 	.ds 1
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram 
                                    234 ;--------------------------------------------------------
                                    235 	.area	OSEG    (OVR,DATA)
                                    236 ;--------------------------------------------------------
                                    237 ; indirectly addressable internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area ISEG    (DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; absolute internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area IABS    (ABS,DATA)
                                    244 	.area IABS    (ABS,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; bit data
                                    247 ;--------------------------------------------------------
                                    248 	.area BSEG    (BIT)
                                    249 ;--------------------------------------------------------
                                    250 ; paged external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area PSEG    (PAG,XDATA)
                                    253 ;--------------------------------------------------------
                                    254 ; external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area XSEG    (XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XABS    (ABS,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external initialized ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XISEG   (XDATA)
                                    265 	.area HOME    (CODE)
                                    266 	.area GSINIT0 (CODE)
                                    267 	.area GSINIT1 (CODE)
                                    268 	.area GSINIT2 (CODE)
                                    269 	.area GSINIT3 (CODE)
                                    270 	.area GSINIT4 (CODE)
                                    271 	.area GSINIT5 (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 	.area GSFINAL (CODE)
                                    274 	.area CSEG    (CODE)
                                    275 ;--------------------------------------------------------
                                    276 ; global & static initialisations
                                    277 ;--------------------------------------------------------
                                    278 	.area HOME    (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 ;------------------------------------------------------------
                                    283 ;Allocation info for local variables in function 'tick_wireless'
                                    284 ;------------------------------------------------------------
                                    285 ;lastAction                Allocated with name '_tick_wireless_lastAction_65536_45'
                                    286 ;------------------------------------------------------------
                                    287 ;	../Wireless_Manager/wireless.c:58: static uint8_t lastAction = WIRELESS_ACTION_NA;
      0000F0 75 1C 00         [24]  288 	mov	_tick_wireless_lastAction_65536_45,#0x00
                                    289 ;------------------------------------------------------------
                                    290 ;Allocation info for local variables in function 'handleUserConfigAction'
                                    291 ;------------------------------------------------------------
                                    292 ;changed                   Allocated with name '_handleUserConfigAction_changed_65536_53'
                                    293 ;action                    Allocated to registers r7 
                                    294 ;changedBit                Allocated to registers r1 r2 
                                    295 ;off                       Allocated to registers r6 
                                    296 ;red                       Allocated to registers r5 
                                    297 ;green                     Allocated to registers r4 
                                    298 ;blue                      Allocated with name '_handleUserConfigAction_blue_65536_53'
                                    299 ;------------------------------------------------------------
                                    300 ;	../Wireless_Manager/wireless.c:106: static uint16_t changed = 0;    
      0000F3 E4               [12]  301 	clr	a
      0000F4 F5 1D            [12]  302 	mov	_handleUserConfigAction_changed_65536_53,a
      0000F6 F5 1E            [12]  303 	mov	(_handleUserConfigAction_changed_65536_53 + 1),a
                                    304 ;	../Wireless_Manager/wireless.c:29: static volatile uint8_t Break_Count = 0;
      0000F8 75 1A 00         [24]  305 	mov	_Break_Count,#0x00
                                    306 ;	../Wireless_Manager/wireless.c:30: static volatile uint8_t Current_Action = WIRELESS_ACTION_NA;
      0000FB 75 1B 00         [24]  307 	mov	_Current_Action,#0x00
                                    308 ;--------------------------------------------------------
                                    309 ; Home
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area HOME    (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; code
                                    315 ;--------------------------------------------------------
                                    316 	.area CSEG    (CODE)
                                    317 ;------------------------------------------------------------
                                    318 ;Allocation info for local variables in function 'wirelessBreakDetectISR'
                                    319 ;------------------------------------------------------------
                                    320 ;	../Wireless_Manager/wireless.c:37: void wirelessBreakDetectISR() __interrupt (1){
                                    321 ;	-----------------------------------------
                                    322 ;	 function wirelessBreakDetectISR
                                    323 ;	-----------------------------------------
      00256D                        324 _wirelessBreakDetectISR:
                           000007   325 	ar7 = 0x07
                           000006   326 	ar6 = 0x06
                           000005   327 	ar5 = 0x05
                           000004   328 	ar4 = 0x04
                           000003   329 	ar3 = 0x03
                           000002   330 	ar2 = 0x02
                           000001   331 	ar1 = 0x01
                           000000   332 	ar0 = 0x00
      00256D C0 20            [24]  333 	push	bits
      00256F C0 E0            [24]  334 	push	acc
      002571 C0 F0            [24]  335 	push	b
      002573 C0 82            [24]  336 	push	dpl
      002575 C0 83            [24]  337 	push	dph
      002577 C0 07            [24]  338 	push	(0+7)
      002579 C0 06            [24]  339 	push	(0+6)
      00257B C0 05            [24]  340 	push	(0+5)
      00257D C0 04            [24]  341 	push	(0+4)
      00257F C0 03            [24]  342 	push	(0+3)
      002581 C0 02            [24]  343 	push	(0+2)
      002583 C0 01            [24]  344 	push	(0+1)
      002585 C0 00            [24]  345 	push	(0+0)
      002587 C0 D0            [24]  346 	push	psw
      002589 75 D0 00         [24]  347 	mov	psw,#0x00
                                    348 ;	../Wireless_Manager/wireless.c:40: if(!P3_7){
      00258C 20 B7 14         [24]  349 	jb	_P3_7,00104$
                                    350 ;	../Wireless_Manager/wireless.c:41: if(Break_Count++ > BREAK_COUNT){
      00258F AF 1A            [24]  351 	mov	r7,_Break_Count
      002591 05 1A            [12]  352 	inc	_Break_Count
      002593 EF               [12]  353 	mov	a,r7
      002594 24 F0            [12]  354 	add	a,#0xff - 0x0f
      002596 50 0E            [24]  355 	jnc	00105$
                                    356 ;	../Wireless_Manager/wireless.c:43: Current_Action = getWirelessAction();
      002598 12 27 B0         [24]  357 	lcall	_getWirelessAction
      00259B 85 82 1B         [24]  358 	mov	_Current_Action,dpl
                                    359 ;	../Wireless_Manager/wireless.c:45: Break_Count = 0;
      00259E 75 1A 00         [24]  360 	mov	_Break_Count,#0x00
      0025A1 80 03            [24]  361 	sjmp	00105$
      0025A3                        362 00104$:
                                    363 ;	../Wireless_Manager/wireless.c:48: Break_Count = 0;
      0025A3 75 1A 00         [24]  364 	mov	_Break_Count,#0x00
      0025A6                        365 00105$:
                                    366 ;	../Wireless_Manager/wireless.c:52: TH0 = COUNTER_HI;
      0025A6 75 8C 84         [24]  367 	mov	_TH0,#0x84
                                    368 ;	../Wireless_Manager/wireless.c:53: TL0 = COUNTER_LO;
      0025A9 75 8A 5F         [24]  369 	mov	_TL0,#0x5f
                                    370 ;	../Wireless_Manager/wireless.c:55: }
      0025AC D0 D0            [24]  371 	pop	psw
      0025AE D0 00            [24]  372 	pop	(0+0)
      0025B0 D0 01            [24]  373 	pop	(0+1)
      0025B2 D0 02            [24]  374 	pop	(0+2)
      0025B4 D0 03            [24]  375 	pop	(0+3)
      0025B6 D0 04            [24]  376 	pop	(0+4)
      0025B8 D0 05            [24]  377 	pop	(0+5)
      0025BA D0 06            [24]  378 	pop	(0+6)
      0025BC D0 07            [24]  379 	pop	(0+7)
      0025BE D0 83            [24]  380 	pop	dph
      0025C0 D0 82            [24]  381 	pop	dpl
      0025C2 D0 F0            [24]  382 	pop	b
      0025C4 D0 E0            [24]  383 	pop	acc
      0025C6 D0 20            [24]  384 	pop	bits
      0025C8 32               [24]  385 	reti
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'tick_wireless'
                                    388 ;------------------------------------------------------------
                                    389 ;lastAction                Allocated with name '_tick_wireless_lastAction_65536_45'
                                    390 ;------------------------------------------------------------
                                    391 ;	../Wireless_Manager/wireless.c:57: void tick_wireless(){
                                    392 ;	-----------------------------------------
                                    393 ;	 function tick_wireless
                                    394 ;	-----------------------------------------
      0025C9                        395 _tick_wireless:
                                    396 ;	../Wireless_Manager/wireless.c:60: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      0025C9 75 82 10         [24]  397 	mov	dpl,#0x10
      0025CC 12 28 C8         [24]  398 	lcall	_get_runtime_data
      0025CF E5 82            [12]  399 	mov	a,dpl
      0025D1 70 04            [24]  400 	jnz	00102$
                                    401 ;	../Wireless_Manager/wireless.c:62: TCON &= ~TIMER_ON; 
      0025D3 53 88 EF         [24]  402 	anl	_TCON,#0xef
                                    403 ;	../Wireless_Manager/wireless.c:63: return;
      0025D6 22               [24]  404 	ret
      0025D7                        405 00102$:
                                    406 ;	../Wireless_Manager/wireless.c:67: TCON |= TIMER_ON; 
      0025D7 AE 88            [24]  407 	mov	r6,_TCON
      0025D9 43 06 10         [24]  408 	orl	ar6,#0x10
      0025DC 8E 88            [24]  409 	mov	_TCON,r6
                                    410 ;	../Wireless_Manager/wireless.c:69: switch (Current_Action)
      0025DE E5 1B            [12]  411 	mov	a,_Current_Action
      0025E0 FF               [12]  412 	mov	r7,a
      0025E1 24 F9            [12]  413 	add	a,#0xff - 0x06
      0025E3 40 51            [24]  414 	jc	00115$
      0025E5 EF               [12]  415 	mov	a,r7
      0025E6 2F               [12]  416 	add	a,r7
                                    417 ;	../Wireless_Manager/wireless.c:71: case WIRELESS_ACTION_PLAY: //continual
      0025E7 90 25 EB         [24]  418 	mov	dptr,#00151$
      0025EA 73               [24]  419 	jmp	@a+dptr
      0025EB                        420 00151$:
      0025EB 80 49            [24]  421 	sjmp	00115$
      0025ED 80 0A            [24]  422 	sjmp	00103$
      0025EF 80 0D            [24]  423 	sjmp	00104$
      0025F1 80 10            [24]  424 	sjmp	00105$
      0025F3 80 16            [24]  425 	sjmp	00106$
      0025F5 80 23            [24]  426 	sjmp	00109$
      0025F7 80 30            [24]  427 	sjmp	00112$
      0025F9                        428 00103$:
                                    429 ;	../Wireless_Manager/wireless.c:72: set_playing(PLAY);
      0025F9 75 6D 01         [24]  430 	mov	_Playing,#0x01
                                    431 ;	../Wireless_Manager/wireless.c:73: break;
                                    432 ;	../Wireless_Manager/wireless.c:74: case WIRELESS_ACTION_PAUSE: //continual
      0025FC 80 38            [24]  433 	sjmp	00115$
      0025FE                        434 00104$:
                                    435 ;	../Wireless_Manager/wireless.c:75: set_playing(PAUSE);
      0025FE 75 6D 00         [24]  436 	mov	_Playing,#0x00
                                    437 ;	../Wireless_Manager/wireless.c:76: break;
                                    438 ;	../Wireless_Manager/wireless.c:77: case WIRELESS_ACTION_BURST: //continual
      002601 80 33            [24]  439 	sjmp	00115$
      002603                        440 00105$:
                                    441 ;	../Wireless_Manager/wireless.c:78: power_pump(PUMP_OVERRIDE);
      002603 75 82 02         [24]  442 	mov	dpl,#0x02
      002606 12 2D C1         [24]  443 	lcall	_power_pump
                                    444 ;	../Wireless_Manager/wireless.c:79: break;
                                    445 ;	../Wireless_Manager/wireless.c:80: case WIRELESS_ACTION_USER_CONFIG_1: //press
      002609 80 2B            [24]  446 	sjmp	00115$
      00260B                        447 00106$:
                                    448 ;	../Wireless_Manager/wireless.c:81: if(lastAction == WIRELESS_ACTION_NA){
      00260B E5 1C            [12]  449 	mov	a,_tick_wireless_lastAction_65536_45
      00260D 70 27            [24]  450 	jnz	00115$
                                    451 ;	../Wireless_Manager/wireless.c:82: handleUserConfigAction(get_runtime_data(R4_INDEX));
      00260F 75 82 09         [24]  452 	mov	dpl,#0x09
      002612 12 28 C8         [24]  453 	lcall	_get_runtime_data
      002615 12 26 4C         [24]  454 	lcall	_handleUserConfigAction
                                    455 ;	../Wireless_Manager/wireless.c:84: break;
                                    456 ;	../Wireless_Manager/wireless.c:85: case WIRELESS_ACTION_USER_CONFIG_2: //press
      002618 80 1C            [24]  457 	sjmp	00115$
      00261A                        458 00109$:
                                    459 ;	../Wireless_Manager/wireless.c:86: if(lastAction == WIRELESS_ACTION_NA){
      00261A E5 1C            [12]  460 	mov	a,_tick_wireless_lastAction_65536_45
      00261C 70 18            [24]  461 	jnz	00115$
                                    462 ;	../Wireless_Manager/wireless.c:87: handleUserConfigAction(get_runtime_data(R5_INDEX));
      00261E 75 82 0A         [24]  463 	mov	dpl,#0x0a
      002621 12 28 C8         [24]  464 	lcall	_get_runtime_data
      002624 12 26 4C         [24]  465 	lcall	_handleUserConfigAction
                                    466 ;	../Wireless_Manager/wireless.c:89: break;
                                    467 ;	../Wireless_Manager/wireless.c:90: case WIRELESS_ACTION_USER_CONFIG_3: //press
      002627 80 0D            [24]  468 	sjmp	00115$
      002629                        469 00112$:
                                    470 ;	../Wireless_Manager/wireless.c:91: if(lastAction == WIRELESS_ACTION_NA){
      002629 E5 1C            [12]  471 	mov	a,_tick_wireless_lastAction_65536_45
      00262B 70 09            [24]  472 	jnz	00115$
                                    473 ;	../Wireless_Manager/wireless.c:92: handleUserConfigAction(get_runtime_data(R6_INDEX));
      00262D 75 82 0B         [24]  474 	mov	dpl,#0x0b
      002630 12 28 C8         [24]  475 	lcall	_get_runtime_data
      002633 12 26 4C         [24]  476 	lcall	_handleUserConfigAction
                                    477 ;	../Wireless_Manager/wireless.c:95: }
      002636                        478 00115$:
                                    479 ;	../Wireless_Manager/wireless.c:97: if(lastAction == WIRELESS_ACTION_BURST && Current_Action != WIRELESS_ACTION_BURST){
      002636 74 03            [12]  480 	mov	a,#0x03
      002638 B5 1C 0D         [24]  481 	cjne	a,_tick_wireless_lastAction_65536_45,00117$
      00263B 74 03            [12]  482 	mov	a,#0x03
      00263D B5 1B 02         [24]  483 	cjne	a,_Current_Action,00157$
      002640 80 06            [24]  484 	sjmp	00117$
      002642                        485 00157$:
                                    486 ;	../Wireless_Manager/wireless.c:98: power_pump(PUMP_OFF);
      002642 75 82 00         [24]  487 	mov	dpl,#0x00
      002645 12 2D C1         [24]  488 	lcall	_power_pump
      002648                        489 00117$:
                                    490 ;	../Wireless_Manager/wireless.c:101: lastAction = Current_Action;
      002648 85 1B 1C         [24]  491 	mov	_tick_wireless_lastAction_65536_45,_Current_Action
                                    492 ;	../Wireless_Manager/wireless.c:103: }
      00264B 22               [24]  493 	ret
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'handleUserConfigAction'
                                    496 ;------------------------------------------------------------
                                    497 ;changed                   Allocated with name '_handleUserConfigAction_changed_65536_53'
                                    498 ;action                    Allocated to registers r7 
                                    499 ;changedBit                Allocated to registers r1 r2 
                                    500 ;off                       Allocated to registers r6 
                                    501 ;red                       Allocated to registers r5 
                                    502 ;green                     Allocated to registers r4 
                                    503 ;blue                      Allocated with name '_handleUserConfigAction_blue_65536_53'
                                    504 ;------------------------------------------------------------
                                    505 ;	../Wireless_Manager/wireless.c:105: void handleUserConfigAction(uint8_t action){
                                    506 ;	-----------------------------------------
                                    507 ;	 function handleUserConfigAction
                                    508 ;	-----------------------------------------
      00264C                        509 _handleUserConfigAction:
      00264C AF 82            [24]  510 	mov	r7,dpl
                                    511 ;	../Wireless_Manager/wireless.c:108: uint8_t off = 0x00;
      00264E 7E 00            [12]  512 	mov	r6,#0x00
                                    513 ;	../Wireless_Manager/wireless.c:109: uint8_t red = 0, green = 0, blue = 0;
      002650 7D 00            [12]  514 	mov	r5,#0x00
      002652 7C 00            [12]  515 	mov	r4,#0x00
                                    516 ;	1-genFromRTrack replaced	mov	_handleUserConfigAction_blue_65536_53,#0x00
      002654 8E 1F            [24]  517 	mov	_handleUserConfigAction_blue_65536_53,r6
                                    518 ;	../Wireless_Manager/wireless.c:112: if(!action){ return; }
      002656 EF               [12]  519 	mov	a,r7
      002657 70 01            [24]  520 	jnz	00102$
      002659 22               [24]  521 	ret
      00265A                        522 00102$:
                                    523 ;	../Wireless_Manager/wireless.c:115: changedBit = 1 << (action-1);
      00265A EF               [12]  524 	mov	a,r7
      00265B 14               [12]  525 	dec	a
      00265C FA               [12]  526 	mov	r2,a
      00265D 8A F0            [24]  527 	mov	b,r2
      00265F 05 F0            [12]  528 	inc	b
      002661 79 01            [12]  529 	mov	r1,#0x01
      002663 7A 00            [12]  530 	mov	r2,#0x00
      002665 80 06            [24]  531 	sjmp	00172$
      002667                        532 00171$:
      002667 E9               [12]  533 	mov	a,r1
      002668 29               [12]  534 	add	a,r1
      002669 F9               [12]  535 	mov	r1,a
      00266A EA               [12]  536 	mov	a,r2
      00266B 33               [12]  537 	rlc	a
      00266C FA               [12]  538 	mov	r2,a
      00266D                        539 00172$:
      00266D D5 F0 F7         [24]  540 	djnz	b,00171$
                                    541 ;	../Wireless_Manager/wireless.c:117: if(changed & changedBit){
      002670 E9               [12]  542 	mov	a,r1
      002671 55 1D            [12]  543 	anl	a,_handleUserConfigAction_changed_65536_53
      002673 F8               [12]  544 	mov	r0,a
      002674 EA               [12]  545 	mov	a,r2
      002675 55 1E            [12]  546 	anl	a,(_handleUserConfigAction_changed_65536_53 + 1)
      002677 FB               [12]  547 	mov	r3,a
      002678 48               [12]  548 	orl	a,r0
      002679 60 10            [24]  549 	jz	00104$
                                    550 ;	../Wireless_Manager/wireless.c:118: off = 0xFF;
      00267B 7E FF            [12]  551 	mov	r6,#0xff
                                    552 ;	../Wireless_Manager/wireless.c:119: changed &= ~changedBit;
      00267D E9               [12]  553 	mov	a,r1
      00267E F4               [12]  554 	cpl	a
      00267F F8               [12]  555 	mov	r0,a
      002680 EA               [12]  556 	mov	a,r2
      002681 F4               [12]  557 	cpl	a
      002682 FB               [12]  558 	mov	r3,a
      002683 E8               [12]  559 	mov	a,r0
      002684 52 1D            [12]  560 	anl	_handleUserConfigAction_changed_65536_53,a
      002686 EB               [12]  561 	mov	a,r3
      002687 52 1E            [12]  562 	anl	(_handleUserConfigAction_changed_65536_53 + 1),a
      002689 80 06            [24]  563 	sjmp	00105$
      00268B                        564 00104$:
                                    565 ;	../Wireless_Manager/wireless.c:121: changed |= changedBit;
      00268B E9               [12]  566 	mov	a,r1
      00268C 42 1D            [12]  567 	orl	_handleUserConfigAction_changed_65536_53,a
      00268E EA               [12]  568 	mov	a,r2
      00268F 42 1E            [12]  569 	orl	(_handleUserConfigAction_changed_65536_53 + 1),a
      002691                        570 00105$:
                                    571 ;	../Wireless_Manager/wireless.c:125: switch (action)
      002691 EF               [12]  572 	mov	a,r7
      002692 24 F3            [12]  573 	add	a,#0xff - 0x0c
      002694 50 03            [24]  574 	jnc	00174$
      002696 02 27 43         [24]  575 	ljmp	00118$
      002699                        576 00174$:
      002699 EF               [12]  577 	mov	a,r7
      00269A 24 0A            [12]  578 	add	a,#(00175$-3-.)
      00269C 83               [24]  579 	movc	a,@a+pc
      00269D F5 82            [12]  580 	mov	dpl,a
      00269F EF               [12]  581 	mov	a,r7
      0026A0 24 11            [12]  582 	add	a,#(00176$-3-.)
      0026A2 83               [24]  583 	movc	a,@a+pc
      0026A3 F5 83            [12]  584 	mov	dph,a
      0026A5 E4               [12]  585 	clr	a
      0026A6 73               [24]  586 	jmp	@a+dptr
      0026A7                        587 00175$:
      0026A7 43                     588 	.db	00118$
      0026A8 C1                     589 	.db	00106$
      0026A9 CD                     590 	.db	00107$
      0026AA D2                     591 	.db	00108$
      0026AB D9                     592 	.db	00109$
      0026AC DD                     593 	.db	00110$
      0026AD E3                     594 	.db	00111$
      0026AE E8                     595 	.db	00112$
      0026AF EF                     596 	.db	00113$
      0026B0 07                     597 	.db	00114$
      0026B1 1F                     598 	.db	00115$
      0026B2 37                     599 	.db	00116$
      0026B3 3B                     600 	.db	00117$
      0026B4                        601 00176$:
      0026B4 27                     602 	.db	00118$>>8
      0026B5 26                     603 	.db	00106$>>8
      0026B6 26                     604 	.db	00107$>>8
      0026B7 26                     605 	.db	00108$>>8
      0026B8 26                     606 	.db	00109$>>8
      0026B9 26                     607 	.db	00110$>>8
      0026BA 26                     608 	.db	00111$>>8
      0026BB 26                     609 	.db	00112$>>8
      0026BC 26                     610 	.db	00113$>>8
      0026BD 27                     611 	.db	00114$>>8
      0026BE 27                     612 	.db	00115$>>8
      0026BF 27                     613 	.db	00116$>>8
      0026C0 27                     614 	.db	00117$>>8
                                    615 ;	../Wireless_Manager/wireless.c:127: case OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      0026C1                        616 00106$:
                                    617 ;	../Wireless_Manager/wireless.c:128: set_runtime_data(MACRO_INDEX, INC, NULL);
      0026C1 75 69 01         [24]  618 	mov	_set_runtime_data_PARM_2,#0x01
      0026C4 75 6A 00         [24]  619 	mov	_set_runtime_data_PARM_3,#0x00
      0026C7 75 82 03         [24]  620 	mov	dpl,#0x03
                                    621 ;	../Wireless_Manager/wireless.c:129: return;
      0026CA 02 29 5C         [24]  622 	ljmp	_set_runtime_data
                                    623 ;	../Wireless_Manager/wireless.c:130: case OPTION_WIRELESS_ACTION_RED:
      0026CD                        624 00107$:
                                    625 ;	../Wireless_Manager/wireless.c:131: red = WIRELESS_VALUE_FULL;
      0026CD 7D FF            [12]  626 	mov	r5,#0xff
                                    627 ;	../Wireless_Manager/wireless.c:132: break;
      0026CF 02 27 44         [24]  628 	ljmp	00119$
                                    629 ;	../Wireless_Manager/wireless.c:133: case OPTION_WIRELESS_ACTION_YELLOW:
      0026D2                        630 00108$:
                                    631 ;	../Wireless_Manager/wireless.c:134: red = WIRELESS_VALUE_FULL;
      0026D2 7D FF            [12]  632 	mov	r5,#0xff
                                    633 ;	../Wireless_Manager/wireless.c:135: green = WIRELESS_VALUE_FULL;
      0026D4 7C FF            [12]  634 	mov	r4,#0xff
                                    635 ;	../Wireless_Manager/wireless.c:136: break;
      0026D6 02 27 44         [24]  636 	ljmp	00119$
                                    637 ;	../Wireless_Manager/wireless.c:137: case OPTION_WIRELESS_ACTION_GREEN:
      0026D9                        638 00109$:
                                    639 ;	../Wireless_Manager/wireless.c:138: green = WIRELESS_VALUE_FULL;
      0026D9 7C FF            [12]  640 	mov	r4,#0xff
                                    641 ;	../Wireless_Manager/wireless.c:139: break;
                                    642 ;	../Wireless_Manager/wireless.c:140: case OPTION_WIRELESS_ACTION_CYAN:
      0026DB 80 67            [24]  643 	sjmp	00119$
      0026DD                        644 00110$:
                                    645 ;	../Wireless_Manager/wireless.c:141: green = WIRELESS_VALUE_FULL;
      0026DD 7C FF            [12]  646 	mov	r4,#0xff
                                    647 ;	../Wireless_Manager/wireless.c:142: blue = WIRELESS_VALUE_FULL;
                                    648 ;	1-genFromRTrack replaced	mov	_handleUserConfigAction_blue_65536_53,#0xff
      0026DF 8C 1F            [24]  649 	mov	_handleUserConfigAction_blue_65536_53,r4
                                    650 ;	../Wireless_Manager/wireless.c:143: break;
                                    651 ;	../Wireless_Manager/wireless.c:144: case OPTION_WIRELESS_ACTION_BLUE:
      0026E1 80 61            [24]  652 	sjmp	00119$
      0026E3                        653 00111$:
                                    654 ;	../Wireless_Manager/wireless.c:145: blue = WIRELESS_VALUE_FULL;
      0026E3 75 1F FF         [24]  655 	mov	_handleUserConfigAction_blue_65536_53,#0xff
                                    656 ;	../Wireless_Manager/wireless.c:146: break;
                                    657 ;	../Wireless_Manager/wireless.c:147: case OPTION_WIRELESS_ACTION_MAGENTA:
      0026E6 80 5C            [24]  658 	sjmp	00119$
      0026E8                        659 00112$:
                                    660 ;	../Wireless_Manager/wireless.c:148: blue = WIRELESS_VALUE_FULL;
      0026E8 75 1F FF         [24]  661 	mov	_handleUserConfigAction_blue_65536_53,#0xff
                                    662 ;	../Wireless_Manager/wireless.c:149: red = WIRELESS_VALUE_FULL;
      0026EB 7D FF            [12]  663 	mov	r5,#0xff
                                    664 ;	../Wireless_Manager/wireless.c:150: break;
                                    665 ;	../Wireless_Manager/wireless.c:151: case OPTION_WIRELESS_ACTION_STROBE_SLOW:
      0026ED 80 55            [24]  666 	sjmp	00119$
      0026EF                        667 00113$:
                                    668 ;	../Wireless_Manager/wireless.c:152: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_SLOW);
      0026EF EE               [12]  669 	mov	a,r6
      0026F0 60 06            [24]  670 	jz	00122$
      0026F2 7B 00            [12]  671 	mov	r3,#0x00
      0026F4 7F 00            [12]  672 	mov	r7,#0x00
      0026F6 80 04            [24]  673 	sjmp	00123$
      0026F8                        674 00122$:
      0026F8 7B 01            [12]  675 	mov	r3,#0x01
      0026FA 7F 00            [12]  676 	mov	r7,#0x00
      0026FC                        677 00123$:
      0026FC 8B 6A            [24]  678 	mov	_set_runtime_data_PARM_3,r3
      0026FE 75 69 00         [24]  679 	mov	_set_runtime_data_PARM_2,#0x00
      002701 75 82 08         [24]  680 	mov	dpl,#0x08
                                    681 ;	../Wireless_Manager/wireless.c:153: return;
      002704 02 29 5C         [24]  682 	ljmp	_set_runtime_data
                                    683 ;	../Wireless_Manager/wireless.c:154: case OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      002707                        684 00114$:
                                    685 ;	../Wireless_Manager/wireless.c:155: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_MEDIUM);
      002707 EE               [12]  686 	mov	a,r6
      002708 60 06            [24]  687 	jz	00124$
      00270A 7B 00            [12]  688 	mov	r3,#0x00
      00270C 7F 00            [12]  689 	mov	r7,#0x00
      00270E 80 04            [24]  690 	sjmp	00125$
      002710                        691 00124$:
      002710 7B 79            [12]  692 	mov	r3,#0x79
      002712 7F 00            [12]  693 	mov	r7,#0x00
      002714                        694 00125$:
      002714 8B 6A            [24]  695 	mov	_set_runtime_data_PARM_3,r3
      002716 75 69 00         [24]  696 	mov	_set_runtime_data_PARM_2,#0x00
      002719 75 82 08         [24]  697 	mov	dpl,#0x08
                                    698 ;	../Wireless_Manager/wireless.c:156: return;
      00271C 02 29 5C         [24]  699 	ljmp	_set_runtime_data
                                    700 ;	../Wireless_Manager/wireless.c:157: case OPTION_WIRELESS_ACTION_STROBE_FAST:
      00271F                        701 00115$:
                                    702 ;	../Wireless_Manager/wireless.c:158: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_FAST);
      00271F EE               [12]  703 	mov	a,r6
      002720 60 06            [24]  704 	jz	00126$
      002722 7B 00            [12]  705 	mov	r3,#0x00
      002724 7F 00            [12]  706 	mov	r7,#0x00
      002726 80 04            [24]  707 	sjmp	00127$
      002728                        708 00126$:
      002728 7B FF            [12]  709 	mov	r3,#0xff
      00272A 7F 00            [12]  710 	mov	r7,#0x00
      00272C                        711 00127$:
      00272C 8B 6A            [24]  712 	mov	_set_runtime_data_PARM_3,r3
      00272E 75 69 00         [24]  713 	mov	_set_runtime_data_PARM_2,#0x00
      002731 75 82 08         [24]  714 	mov	dpl,#0x08
                                    715 ;	../Wireless_Manager/wireless.c:159: return;
      002734 02 29 5C         [24]  716 	ljmp	_set_runtime_data
                                    717 ;	../Wireless_Manager/wireless.c:160: case OPTION_WIRELESS_ACTION_BLACKOUT:
      002737                        718 00116$:
                                    719 ;	../Wireless_Manager/wireless.c:161: off = 0xFF;
      002737 7E FF            [12]  720 	mov	r6,#0xff
                                    721 ;	../Wireless_Manager/wireless.c:162: break;
                                    722 ;	../Wireless_Manager/wireless.c:163: case OPTION_WIRELESS_ACTION_WHITEOUT:
      002739 80 09            [24]  723 	sjmp	00119$
      00273B                        724 00117$:
                                    725 ;	../Wireless_Manager/wireless.c:164: red = WIRELESS_VALUE_FULL;
      00273B 7D FF            [12]  726 	mov	r5,#0xff
                                    727 ;	../Wireless_Manager/wireless.c:165: green = WIRELESS_VALUE_FULL;
      00273D 7C FF            [12]  728 	mov	r4,#0xff
                                    729 ;	../Wireless_Manager/wireless.c:166: blue = WIRELESS_VALUE_FULL;
                                    730 ;	1-genFromRTrack replaced	mov	_handleUserConfigAction_blue_65536_53,#0xff
      00273F 8D 1F            [24]  731 	mov	_handleUserConfigAction_blue_65536_53,r5
                                    732 ;	../Wireless_Manager/wireless.c:167: break;
                                    733 ;	../Wireless_Manager/wireless.c:168: default:
      002741 80 01            [24]  734 	sjmp	00119$
      002743                        735 00118$:
                                    736 ;	../Wireless_Manager/wireless.c:169: return;
                                    737 ;	../Wireless_Manager/wireless.c:170: }
      002743 22               [24]  738 	ret
      002744                        739 00119$:
                                    740 ;	../Wireless_Manager/wireless.c:172: set_runtime_data(MACRO_INDEX, VALUE, WIRELESS_VALUE_0);
      002744 75 69 00         [24]  741 	mov	_set_runtime_data_PARM_2,#0x00
      002747 75 6A 00         [24]  742 	mov	_set_runtime_data_PARM_3,#0x00
      00274A 75 82 03         [24]  743 	mov	dpl,#0x03
      00274D C0 06            [24]  744 	push	ar6
      00274F C0 05            [24]  745 	push	ar5
      002751 C0 04            [24]  746 	push	ar4
      002753 12 29 5C         [24]  747 	lcall	_set_runtime_data
      002756 D0 04            [24]  748 	pop	ar4
      002758 D0 05            [24]  749 	pop	ar5
      00275A D0 06            [24]  750 	pop	ar6
                                    751 ;	../Wireless_Manager/wireless.c:173: set_runtime_data(RED_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : red);
      00275C EE               [12]  752 	mov	a,r6
      00275D 60 06            [24]  753 	jz	00128$
      00275F 7B 00            [12]  754 	mov	r3,#0x00
      002761 7F 00            [12]  755 	mov	r7,#0x00
      002763 80 04            [24]  756 	sjmp	00129$
      002765                        757 00128$:
      002765 8D 03            [24]  758 	mov	ar3,r5
      002767 7F 00            [12]  759 	mov	r7,#0x00
      002769                        760 00129$:
      002769 8B 6A            [24]  761 	mov	_set_runtime_data_PARM_3,r3
      00276B 75 69 00         [24]  762 	mov	_set_runtime_data_PARM_2,#0x00
      00276E 75 82 05         [24]  763 	mov	dpl,#0x05
      002771 C0 06            [24]  764 	push	ar6
      002773 C0 04            [24]  765 	push	ar4
      002775 12 29 5C         [24]  766 	lcall	_set_runtime_data
      002778 D0 04            [24]  767 	pop	ar4
      00277A D0 06            [24]  768 	pop	ar6
                                    769 ;	../Wireless_Manager/wireless.c:174: set_runtime_data(GREEN_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : green);
      00277C EE               [12]  770 	mov	a,r6
      00277D 60 06            [24]  771 	jz	00130$
      00277F 7D 00            [12]  772 	mov	r5,#0x00
      002781 7F 00            [12]  773 	mov	r7,#0x00
      002783 80 04            [24]  774 	sjmp	00131$
      002785                        775 00130$:
      002785 8C 05            [24]  776 	mov	ar5,r4
      002787 7F 00            [12]  777 	mov	r7,#0x00
      002789                        778 00131$:
      002789 8D 6A            [24]  779 	mov	_set_runtime_data_PARM_3,r5
      00278B 75 69 00         [24]  780 	mov	_set_runtime_data_PARM_2,#0x00
      00278E 75 82 06         [24]  781 	mov	dpl,#0x06
      002791 C0 06            [24]  782 	push	ar6
      002793 12 29 5C         [24]  783 	lcall	_set_runtime_data
      002796 D0 06            [24]  784 	pop	ar6
                                    785 ;	../Wireless_Manager/wireless.c:175: set_runtime_data(BLUE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : blue);
      002798 EE               [12]  786 	mov	a,r6
      002799 60 06            [24]  787 	jz	00132$
      00279B 7E 00            [12]  788 	mov	r6,#0x00
      00279D 7F 00            [12]  789 	mov	r7,#0x00
      00279F 80 04            [24]  790 	sjmp	00133$
      0027A1                        791 00132$:
      0027A1 AE 1F            [24]  792 	mov	r6,_handleUserConfigAction_blue_65536_53
      0027A3 7F 00            [12]  793 	mov	r7,#0x00
      0027A5                        794 00133$:
      0027A5 8E 6A            [24]  795 	mov	_set_runtime_data_PARM_3,r6
      0027A7 75 69 00         [24]  796 	mov	_set_runtime_data_PARM_2,#0x00
      0027AA 75 82 07         [24]  797 	mov	dpl,#0x07
                                    798 ;	../Wireless_Manager/wireless.c:177: }
      0027AD 02 29 5C         [24]  799 	ljmp	_set_runtime_data
                                    800 ;------------------------------------------------------------
                                    801 ;Allocation info for local variables in function 'getWirelessAction'
                                    802 ;------------------------------------------------------------
                                    803 ;preamble                  Allocated to registers 
                                    804 ;count                     Allocated to registers r5 
                                    805 ;i                         Allocated to registers r7 
                                    806 ;dit_dah                   Allocated to registers r6 
                                    807 ;------------------------------------------------------------
                                    808 ;	../Wireless_Manager/wireless.c:179: uint8_t getWirelessAction(){
                                    809 ;	-----------------------------------------
                                    810 ;	 function getWirelessAction
                                    811 ;	-----------------------------------------
      0027B0                        812 _getWirelessAction:
                                    813 ;	../Wireless_Manager/wireless.c:185: for(i = 0; i < PREAMBLE_BITS; i++){
      0027B0 7F 00            [12]  814 	mov	r7,#0x00
      0027B2                        815 00119$:
                                    816 ;	../Wireless_Manager/wireless.c:186: dit_dah = detectDitDah();
      0027B2 C0 07            [24]  817 	push	ar7
      0027B4 12 28 1C         [24]  818 	lcall	_detectDitDah
      0027B7 AE 82            [24]  819 	mov	r6,dpl
      0027B9 D0 07            [24]  820 	pop	ar7
                                    821 ;	../Wireless_Manager/wireless.c:188: if(dit_dah == BAD_WIRELESS){
      0027BB EE               [12]  822 	mov	a,r6
      0027BC 70 03            [24]  823 	jnz	00102$
                                    824 ;	../Wireless_Manager/wireless.c:189: return dit_dah;
      0027BE 8E 82            [24]  825 	mov	dpl,r6
      0027C0 22               [24]  826 	ret
      0027C1                        827 00102$:
                                    828 ;	../Wireless_Manager/wireless.c:192: if(preamble & (0x0001 << i)){ //expects a Dit
      0027C1 8F F0            [24]  829 	mov	b,r7
      0027C3 05 F0            [12]  830 	inc	b
      0027C5 7C 01            [12]  831 	mov	r4,#0x01
      0027C7 7D 00            [12]  832 	mov	r5,#0x00
      0027C9 80 06            [24]  833 	sjmp	00169$
      0027CB                        834 00168$:
      0027CB EC               [12]  835 	mov	a,r4
      0027CC 2C               [12]  836 	add	a,r4
      0027CD FC               [12]  837 	mov	r4,a
      0027CE ED               [12]  838 	mov	a,r5
      0027CF 33               [12]  839 	rlc	a
      0027D0 FD               [12]  840 	mov	r5,a
      0027D1                        841 00169$:
      0027D1 D5 F0 F7         [24]  842 	djnz	b,00168$
      0027D4 EC               [12]  843 	mov	a,r4
      0027D5 54 57            [12]  844 	anl	a,#0x57
      0027D7 70 05            [24]  845 	jnz	00170$
      0027D9 ED               [12]  846 	mov	a,r5
      0027DA 54 05            [12]  847 	anl	a,#0x05
      0027DC 60 09            [24]  848 	jz	00108$
      0027DE                        849 00170$:
                                    850 ;	../Wireless_Manager/wireless.c:193: if(dit_dah != DIT){
      0027DE BE 01 02         [24]  851 	cjne	r6,#0x01,00171$
      0027E1 80 0D            [24]  852 	sjmp	00120$
      0027E3                        853 00171$:
                                    854 ;	../Wireless_Manager/wireless.c:194: return BAD_WIRELESS;
      0027E3 75 82 00         [24]  855 	mov	dpl,#0x00
      0027E6 22               [24]  856 	ret
      0027E7                        857 00108$:
                                    858 ;	../Wireless_Manager/wireless.c:197: if(dit_dah != DAH){
      0027E7 BE 02 02         [24]  859 	cjne	r6,#0x02,00172$
      0027EA 80 04            [24]  860 	sjmp	00120$
      0027EC                        861 00172$:
                                    862 ;	../Wireless_Manager/wireless.c:198: return BAD_WIRELESS;
      0027EC 75 82 00         [24]  863 	mov	dpl,#0x00
      0027EF 22               [24]  864 	ret
      0027F0                        865 00120$:
                                    866 ;	../Wireless_Manager/wireless.c:185: for(i = 0; i < PREAMBLE_BITS; i++){
      0027F0 0F               [12]  867 	inc	r7
      0027F1 BF 0C 00         [24]  868 	cjne	r7,#0x0c,00173$
      0027F4                        869 00173$:
      0027F4 40 BC            [24]  870 	jc	00119$
                                    871 ;	../Wireless_Manager/wireless.c:204: while(count--){
      0027F6 7F 0D            [12]  872 	mov	r7,#0x0d
      0027F8                        873 00116$:
      0027F8 8F 06            [24]  874 	mov	ar6,r7
      0027FA 1F               [12]  875 	dec	r7
      0027FB 8F 05            [24]  876 	mov	ar5,r7
      0027FD EE               [12]  877 	mov	a,r6
      0027FE 60 16            [24]  878 	jz	00118$
                                    879 ;	../Wireless_Manager/wireless.c:205: dit_dah = detectDitDah();
      002800 C0 07            [24]  880 	push	ar7
      002802 C0 05            [24]  881 	push	ar5
      002804 12 28 1C         [24]  882 	lcall	_detectDitDah
      002807 AE 82            [24]  883 	mov	r6,dpl
      002809 D0 05            [24]  884 	pop	ar5
      00280B D0 07            [24]  885 	pop	ar7
                                    886 ;	../Wireless_Manager/wireless.c:207: if(!dit_dah){
      00280D EE               [12]  887 	mov	a,r6
                                    888 ;	../Wireless_Manager/wireless.c:208: return BAD_WIRELESS;
      00280E 70 03            [24]  889 	jnz	00114$
      002810 F5 82            [12]  890 	mov	dpl,a
      002812 22               [24]  891 	ret
      002813                        892 00114$:
                                    893 ;	../Wireless_Manager/wireless.c:209: } else if(dit_dah == DAH){
      002813 BE 02 E2         [24]  894 	cjne	r6,#0x02,00116$
                                    895 ;	../Wireless_Manager/wireless.c:210: break;
      002816                        896 00118$:
                                    897 ;	../Wireless_Manager/wireless.c:216: return count >> 1;
      002816 ED               [12]  898 	mov	a,r5
      002817 C3               [12]  899 	clr	c
      002818 13               [12]  900 	rrc	a
      002819 F5 82            [12]  901 	mov	dpl,a
                                    902 ;	../Wireless_Manager/wireless.c:217: }
      00281B 22               [24]  903 	ret
                                    904 ;------------------------------------------------------------
                                    905 ;Allocation info for local variables in function 'detectDitDah'
                                    906 ;------------------------------------------------------------
                                    907 ;count                     Allocated to registers r6 r7 
                                    908 ;timeout                   Allocated to registers r6 r7 
                                    909 ;------------------------------------------------------------
                                    910 ;	../Wireless_Manager/wireless.c:219: uint8_t detectDitDah(){
                                    911 ;	-----------------------------------------
                                    912 ;	 function detectDitDah
                                    913 ;	-----------------------------------------
      00281C                        914 _detectDitDah:
                                    915 ;	../Wireless_Manager/wireless.c:224: while(timeout--){
      00281C 7E B8            [12]  916 	mov	r6,#0xb8
      00281E 7F 0B            [12]  917 	mov	r7,#0x0b
      002820                        918 00103$:
      002820 8E 04            [24]  919 	mov	ar4,r6
      002822 8F 05            [24]  920 	mov	ar5,r7
      002824 1E               [12]  921 	dec	r6
      002825 BE FF 01         [24]  922 	cjne	r6,#0xff,00154$
      002828 1F               [12]  923 	dec	r7
      002829                        924 00154$:
      002829 EC               [12]  925 	mov	a,r4
      00282A 4D               [12]  926 	orl	a,r5
      00282B 60 03            [24]  927 	jz	00105$
                                    928 ;	../Wireless_Manager/wireless.c:225: if(P3_7){
      00282D 30 B7 F0         [24]  929 	jnb	_P3_7,00103$
                                    930 ;	../Wireless_Manager/wireless.c:226: break;
      002830                        931 00105$:
                                    932 ;	../Wireless_Manager/wireless.c:231: if(!timeout){
      002830 EE               [12]  933 	mov	a,r6
      002831 4F               [12]  934 	orl	a,r7
                                    935 ;	../Wireless_Manager/wireless.c:232: return BAD_WIRELESS;
      002832 70 03            [24]  936 	jnz	00125$
      002834 F5 82            [12]  937 	mov	dpl,a
                                    938 ;	../Wireless_Manager/wireless.c:239: while(timeout--){
      002836 22               [24]  939 	ret
      002837                        940 00125$:
      002837 7E 00            [12]  941 	mov	r6,#0x00
      002839 7F 00            [12]  942 	mov	r7,#0x00
      00283B 7C B8            [12]  943 	mov	r4,#0xb8
      00283D 7D 0B            [12]  944 	mov	r5,#0x0b
      00283F                        945 00111$:
      00283F 8C 02            [24]  946 	mov	ar2,r4
      002841 8D 03            [24]  947 	mov	ar3,r5
      002843 1C               [12]  948 	dec	r4
      002844 BC FF 01         [24]  949 	cjne	r4,#0xff,00158$
      002847 1D               [12]  950 	dec	r5
      002848                        951 00158$:
      002848 EA               [12]  952 	mov	a,r2
      002849 4B               [12]  953 	orl	a,r3
      00284A 60 0A            [24]  954 	jz	00113$
                                    955 ;	../Wireless_Manager/wireless.c:240: if(P3_7){
      00284C 30 B7 07         [24]  956 	jnb	_P3_7,00113$
                                    957 ;	../Wireless_Manager/wireless.c:241: count++;
      00284F 0E               [12]  958 	inc	r6
                                    959 ;	../Wireless_Manager/wireless.c:243: break;
      002850 BE 00 EC         [24]  960 	cjne	r6,#0x00,00111$
      002853 0F               [12]  961 	inc	r7
      002854 80 E9            [24]  962 	sjmp	00111$
      002856                        963 00113$:
                                    964 ;	../Wireless_Manager/wireless.c:248: if(!timeout){
      002856 EC               [12]  965 	mov	a,r4
      002857 4D               [12]  966 	orl	a,r5
                                    967 ;	../Wireless_Manager/wireless.c:249: return BAD_WIRELESS;
      002858 70 03            [24]  968 	jnz	00115$
      00285A F5 82            [12]  969 	mov	dpl,a
      00285C 22               [24]  970 	ret
      00285D                        971 00115$:
                                    972 ;	../Wireless_Manager/wireless.c:255: return (count > DAH_COUNT) ? DAH : DIT;
      00285D C3               [12]  973 	clr	c
      00285E 74 E9            [12]  974 	mov	a,#0xe9
      002860 9E               [12]  975 	subb	a,r6
      002861 E4               [12]  976 	clr	a
      002862 9F               [12]  977 	subb	a,r7
      002863 50 06            [24]  978 	jnc	00118$
      002865 7E 02            [12]  979 	mov	r6,#0x02
      002867 7F 00            [12]  980 	mov	r7,#0x00
      002869 80 04            [24]  981 	sjmp	00119$
      00286B                        982 00118$:
      00286B 7E 01            [12]  983 	mov	r6,#0x01
      00286D 7F 00            [12]  984 	mov	r7,#0x00
      00286F                        985 00119$:
      00286F 8E 82            [24]  986 	mov	dpl,r6
                                    987 ;	../Wireless_Manager/wireless.c:256: }
      002871 22               [24]  988 	ret
                                    989 	.area CSEG    (CODE)
                                    990 	.area CONST   (CODE)
                                    991 	.area XINIT   (CODE)
                                    992 	.area CABS    (ABS,CODE)
