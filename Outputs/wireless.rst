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
      000015                        222 _Break_Count:
      000015                        223 	.ds 1
      000016                        224 _Current_Action:
      000016                        225 	.ds 1
      000017                        226 _tick_wireless_lastAction_65536_45:
      000017                        227 	.ds 1
      000018                        228 _handleUserConfigAction_changed_65536_53:
      000018                        229 	.ds 2
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram 
                                    232 ;--------------------------------------------------------
                                    233 ;--------------------------------------------------------
                                    234 ; indirectly addressable internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area ISEG    (DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; absolute internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area IABS    (ABS,DATA)
                                    241 	.area IABS    (ABS,DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; bit data
                                    244 ;--------------------------------------------------------
                                    245 	.area BSEG    (BIT)
                                    246 ;--------------------------------------------------------
                                    247 ; paged external ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area PSEG    (PAG,XDATA)
                                    250 ;--------------------------------------------------------
                                    251 ; external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area XSEG    (XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; absolute external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XABS    (ABS,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; external initialized ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XISEG   (XDATA)
                                    262 	.area HOME    (CODE)
                                    263 	.area GSINIT0 (CODE)
                                    264 	.area GSINIT1 (CODE)
                                    265 	.area GSINIT2 (CODE)
                                    266 	.area GSINIT3 (CODE)
                                    267 	.area GSINIT4 (CODE)
                                    268 	.area GSINIT5 (CODE)
                                    269 	.area GSINIT  (CODE)
                                    270 	.area GSFINAL (CODE)
                                    271 	.area CSEG    (CODE)
                                    272 ;--------------------------------------------------------
                                    273 ; global & static initialisations
                                    274 ;--------------------------------------------------------
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 ;------------------------------------------------------------
                                    280 ;Allocation info for local variables in function 'tick_wireless'
                                    281 ;------------------------------------------------------------
                                    282 ;lastAction                Allocated with name '_tick_wireless_lastAction_65536_45'
                                    283 ;------------------------------------------------------------
                                    284 ;	../Wireless_Manager/wireless.c:58: static uint8_t lastAction = WIRELESS_ACTION_NA;
      0000F0 75 17 00         [24]  285 	mov	_tick_wireless_lastAction_65536_45,#0x00
                                    286 ;------------------------------------------------------------
                                    287 ;Allocation info for local variables in function 'handleUserConfigAction'
                                    288 ;------------------------------------------------------------
                                    289 ;action                    Allocated to registers r7 
                                    290 ;changedBit                Allocated to registers r2 r3 
                                    291 ;off                       Allocated to registers r6 
                                    292 ;red                       Allocated to stack - _bp +1
                                    293 ;green                     Allocated to stack - _bp +2
                                    294 ;blue                      Allocated to stack - _bp +3
                                    295 ;changed                   Allocated with name '_handleUserConfigAction_changed_65536_53'
                                    296 ;------------------------------------------------------------
                                    297 ;	../Wireless_Manager/wireless.c:106: static uint16_t changed = 0;    
      0000F3 E4               [12]  298 	clr	a
      0000F4 F5 18            [12]  299 	mov	_handleUserConfigAction_changed_65536_53,a
      0000F6 F5 19            [12]  300 	mov	(_handleUserConfigAction_changed_65536_53 + 1),a
                                    301 ;	../Wireless_Manager/wireless.c:29: static volatile uint8_t Break_Count = 0;
      0000F8 75 15 00         [24]  302 	mov	_Break_Count,#0x00
                                    303 ;	../Wireless_Manager/wireless.c:30: static volatile uint8_t Current_Action = WIRELESS_ACTION_NA;
      0000FB 75 16 00         [24]  304 	mov	_Current_Action,#0x00
                                    305 ;--------------------------------------------------------
                                    306 ; Home
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area HOME    (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; code
                                    312 ;--------------------------------------------------------
                                    313 	.area CSEG    (CODE)
                                    314 ;------------------------------------------------------------
                                    315 ;Allocation info for local variables in function 'wirelessBreakDetectISR'
                                    316 ;------------------------------------------------------------
                                    317 ;	../Wireless_Manager/wireless.c:37: void wirelessBreakDetectISR() __interrupt (1){
                                    318 ;	-----------------------------------------
                                    319 ;	 function wirelessBreakDetectISR
                                    320 ;	-----------------------------------------
      002BAC                        321 _wirelessBreakDetectISR:
                           000007   322 	ar7 = 0x07
                           000006   323 	ar6 = 0x06
                           000005   324 	ar5 = 0x05
                           000004   325 	ar4 = 0x04
                           000003   326 	ar3 = 0x03
                           000002   327 	ar2 = 0x02
                           000001   328 	ar1 = 0x01
                           000000   329 	ar0 = 0x00
      002BAC C0 20            [24]  330 	push	bits
      002BAE C0 E0            [24]  331 	push	acc
      002BB0 C0 F0            [24]  332 	push	b
      002BB2 C0 82            [24]  333 	push	dpl
      002BB4 C0 83            [24]  334 	push	dph
      002BB6 C0 07            [24]  335 	push	(0+7)
      002BB8 C0 06            [24]  336 	push	(0+6)
      002BBA C0 05            [24]  337 	push	(0+5)
      002BBC C0 04            [24]  338 	push	(0+4)
      002BBE C0 03            [24]  339 	push	(0+3)
      002BC0 C0 02            [24]  340 	push	(0+2)
      002BC2 C0 01            [24]  341 	push	(0+1)
      002BC4 C0 00            [24]  342 	push	(0+0)
      002BC6 C0 D0            [24]  343 	push	psw
      002BC8 75 D0 00         [24]  344 	mov	psw,#0x00
                                    345 ;	../Wireless_Manager/wireless.c:40: if(!P3_7){
      002BCB 20 B7 14         [24]  346 	jb	_P3_7,00104$
                                    347 ;	../Wireless_Manager/wireless.c:41: if(Break_Count++ > BREAK_COUNT){
      002BCE AF 15            [24]  348 	mov	r7,_Break_Count
      002BD0 05 15            [12]  349 	inc	_Break_Count
      002BD2 EF               [12]  350 	mov	a,r7
      002BD3 24 F0            [12]  351 	add	a,#0xff - 0x0f
      002BD5 50 0E            [24]  352 	jnc	00105$
                                    353 ;	../Wireless_Manager/wireless.c:43: Current_Action = getWirelessAction();
      002BD7 12 2E 6B         [24]  354 	lcall	_getWirelessAction
      002BDA 85 82 16         [24]  355 	mov	_Current_Action,dpl
                                    356 ;	../Wireless_Manager/wireless.c:45: Break_Count = 0;
      002BDD 75 15 00         [24]  357 	mov	_Break_Count,#0x00
      002BE0 80 03            [24]  358 	sjmp	00105$
      002BE2                        359 00104$:
                                    360 ;	../Wireless_Manager/wireless.c:48: Break_Count = 0;
      002BE2 75 15 00         [24]  361 	mov	_Break_Count,#0x00
      002BE5                        362 00105$:
                                    363 ;	../Wireless_Manager/wireless.c:52: TH0 = COUNTER_HI;
      002BE5 75 8C 84         [24]  364 	mov	_TH0,#0x84
                                    365 ;	../Wireless_Manager/wireless.c:53: TL0 = COUNTER_LO;
      002BE8 75 8A 5F         [24]  366 	mov	_TL0,#0x5f
                                    367 ;	../Wireless_Manager/wireless.c:55: }
      002BEB D0 D0            [24]  368 	pop	psw
      002BED D0 00            [24]  369 	pop	(0+0)
      002BEF D0 01            [24]  370 	pop	(0+1)
      002BF1 D0 02            [24]  371 	pop	(0+2)
      002BF3 D0 03            [24]  372 	pop	(0+3)
      002BF5 D0 04            [24]  373 	pop	(0+4)
      002BF7 D0 05            [24]  374 	pop	(0+5)
      002BF9 D0 06            [24]  375 	pop	(0+6)
      002BFB D0 07            [24]  376 	pop	(0+7)
      002BFD D0 83            [24]  377 	pop	dph
      002BFF D0 82            [24]  378 	pop	dpl
      002C01 D0 F0            [24]  379 	pop	b
      002C03 D0 E0            [24]  380 	pop	acc
      002C05 D0 20            [24]  381 	pop	bits
      002C07 32               [24]  382 	reti
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'tick_wireless'
                                    385 ;------------------------------------------------------------
                                    386 ;lastAction                Allocated with name '_tick_wireless_lastAction_65536_45'
                                    387 ;------------------------------------------------------------
                                    388 ;	../Wireless_Manager/wireless.c:57: void tick_wireless(){
                                    389 ;	-----------------------------------------
                                    390 ;	 function tick_wireless
                                    391 ;	-----------------------------------------
      002C08                        392 _tick_wireless:
                                    393 ;	../Wireless_Manager/wireless.c:60: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002C08 75 82 10         [24]  394 	mov	dpl,#0x10
      002C0B 12 2F 91         [24]  395 	lcall	_get_runtime_data
      002C0E E5 82            [12]  396 	mov	a,dpl
      002C10 70 04            [24]  397 	jnz	00102$
                                    398 ;	../Wireless_Manager/wireless.c:62: TCON &= ~TIMER_ON; 
      002C12 53 88 EF         [24]  399 	anl	_TCON,#0xef
                                    400 ;	../Wireless_Manager/wireless.c:63: return;
      002C15 22               [24]  401 	ret
      002C16                        402 00102$:
                                    403 ;	../Wireless_Manager/wireless.c:67: TCON |= TIMER_ON; 
      002C16 AE 88            [24]  404 	mov	r6,_TCON
      002C18 43 06 10         [24]  405 	orl	ar6,#0x10
      002C1B 8E 88            [24]  406 	mov	_TCON,r6
                                    407 ;	../Wireless_Manager/wireless.c:69: switch (Current_Action)
      002C1D E5 16            [12]  408 	mov	a,_Current_Action
      002C1F FF               [12]  409 	mov	r7,a
      002C20 24 F9            [12]  410 	add	a,#0xff - 0x06
      002C22 40 51            [24]  411 	jc	00115$
      002C24 EF               [12]  412 	mov	a,r7
      002C25 2F               [12]  413 	add	a,r7
                                    414 ;	../Wireless_Manager/wireless.c:71: case WIRELESS_ACTION_PLAY: //continual
      002C26 90 2C 2A         [24]  415 	mov	dptr,#00151$
      002C29 73               [24]  416 	jmp	@a+dptr
      002C2A                        417 00151$:
      002C2A 80 49            [24]  418 	sjmp	00115$
      002C2C 80 0A            [24]  419 	sjmp	00103$
      002C2E 80 0D            [24]  420 	sjmp	00104$
      002C30 80 10            [24]  421 	sjmp	00105$
      002C32 80 16            [24]  422 	sjmp	00106$
      002C34 80 23            [24]  423 	sjmp	00109$
      002C36 80 30            [24]  424 	sjmp	00112$
      002C38                        425 00103$:
                                    426 ;	../Wireless_Manager/wireless.c:72: set_playing(PLAY);
      002C38 75 4E 01         [24]  427 	mov	_Playing,#0x01
                                    428 ;	../Wireless_Manager/wireless.c:73: break;
                                    429 ;	../Wireless_Manager/wireless.c:74: case WIRELESS_ACTION_PAUSE: //continual
      002C3B 80 38            [24]  430 	sjmp	00115$
      002C3D                        431 00104$:
                                    432 ;	../Wireless_Manager/wireless.c:75: set_playing(PAUSE);
      002C3D 75 4E 00         [24]  433 	mov	_Playing,#0x00
                                    434 ;	../Wireless_Manager/wireless.c:76: break;
                                    435 ;	../Wireless_Manager/wireless.c:77: case WIRELESS_ACTION_BURST: //continual
      002C40 80 33            [24]  436 	sjmp	00115$
      002C42                        437 00105$:
                                    438 ;	../Wireless_Manager/wireless.c:78: power_pump(PUMP_OVERRIDE);
      002C42 75 82 02         [24]  439 	mov	dpl,#0x02
      002C45 12 35 BD         [24]  440 	lcall	_power_pump
                                    441 ;	../Wireless_Manager/wireless.c:79: break;
                                    442 ;	../Wireless_Manager/wireless.c:80: case WIRELESS_ACTION_USER_CONFIG_1: //press
      002C48 80 2B            [24]  443 	sjmp	00115$
      002C4A                        444 00106$:
                                    445 ;	../Wireless_Manager/wireless.c:81: if(lastAction == WIRELESS_ACTION_NA){
      002C4A E5 17            [12]  446 	mov	a,_tick_wireless_lastAction_65536_45
      002C4C 70 27            [24]  447 	jnz	00115$
                                    448 ;	../Wireless_Manager/wireless.c:82: handleUserConfigAction(get_runtime_data(R4_INDEX));
      002C4E 75 82 09         [24]  449 	mov	dpl,#0x09
      002C51 12 2F 91         [24]  450 	lcall	_get_runtime_data
      002C54 12 2C 8B         [24]  451 	lcall	_handleUserConfigAction
                                    452 ;	../Wireless_Manager/wireless.c:84: break;
                                    453 ;	../Wireless_Manager/wireless.c:85: case WIRELESS_ACTION_USER_CONFIG_2: //press
      002C57 80 1C            [24]  454 	sjmp	00115$
      002C59                        455 00109$:
                                    456 ;	../Wireless_Manager/wireless.c:86: if(lastAction == WIRELESS_ACTION_NA){
      002C59 E5 17            [12]  457 	mov	a,_tick_wireless_lastAction_65536_45
      002C5B 70 18            [24]  458 	jnz	00115$
                                    459 ;	../Wireless_Manager/wireless.c:87: handleUserConfigAction(get_runtime_data(R5_INDEX));
      002C5D 75 82 0A         [24]  460 	mov	dpl,#0x0a
      002C60 12 2F 91         [24]  461 	lcall	_get_runtime_data
      002C63 12 2C 8B         [24]  462 	lcall	_handleUserConfigAction
                                    463 ;	../Wireless_Manager/wireless.c:89: break;
                                    464 ;	../Wireless_Manager/wireless.c:90: case WIRELESS_ACTION_USER_CONFIG_3: //press
      002C66 80 0D            [24]  465 	sjmp	00115$
      002C68                        466 00112$:
                                    467 ;	../Wireless_Manager/wireless.c:91: if(lastAction == WIRELESS_ACTION_NA){
      002C68 E5 17            [12]  468 	mov	a,_tick_wireless_lastAction_65536_45
      002C6A 70 09            [24]  469 	jnz	00115$
                                    470 ;	../Wireless_Manager/wireless.c:92: handleUserConfigAction(get_runtime_data(R6_INDEX));
      002C6C 75 82 0B         [24]  471 	mov	dpl,#0x0b
      002C6F 12 2F 91         [24]  472 	lcall	_get_runtime_data
      002C72 12 2C 8B         [24]  473 	lcall	_handleUserConfigAction
                                    474 ;	../Wireless_Manager/wireless.c:95: }
      002C75                        475 00115$:
                                    476 ;	../Wireless_Manager/wireless.c:97: if(lastAction == WIRELESS_ACTION_BURST && Current_Action != WIRELESS_ACTION_BURST){
      002C75 74 03            [12]  477 	mov	a,#0x03
      002C77 B5 17 0D         [24]  478 	cjne	a,_tick_wireless_lastAction_65536_45,00117$
      002C7A 74 03            [12]  479 	mov	a,#0x03
      002C7C B5 16 02         [24]  480 	cjne	a,_Current_Action,00157$
      002C7F 80 06            [24]  481 	sjmp	00117$
      002C81                        482 00157$:
                                    483 ;	../Wireless_Manager/wireless.c:98: power_pump(PUMP_OFF);
      002C81 75 82 00         [24]  484 	mov	dpl,#0x00
      002C84 12 35 BD         [24]  485 	lcall	_power_pump
      002C87                        486 00117$:
                                    487 ;	../Wireless_Manager/wireless.c:101: lastAction = Current_Action;
      002C87 85 16 17         [24]  488 	mov	_tick_wireless_lastAction_65536_45,_Current_Action
                                    489 ;	../Wireless_Manager/wireless.c:103: }
      002C8A 22               [24]  490 	ret
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'handleUserConfigAction'
                                    493 ;------------------------------------------------------------
                                    494 ;action                    Allocated to registers r7 
                                    495 ;changedBit                Allocated to registers r2 r3 
                                    496 ;off                       Allocated to registers r6 
                                    497 ;red                       Allocated to stack - _bp +1
                                    498 ;green                     Allocated to stack - _bp +2
                                    499 ;blue                      Allocated to stack - _bp +3
                                    500 ;changed                   Allocated with name '_handleUserConfigAction_changed_65536_53'
                                    501 ;------------------------------------------------------------
                                    502 ;	../Wireless_Manager/wireless.c:105: void handleUserConfigAction(uint8_t action){
                                    503 ;	-----------------------------------------
                                    504 ;	 function handleUserConfigAction
                                    505 ;	-----------------------------------------
      002C8B                        506 _handleUserConfigAction:
      002C8B C0 1A            [24]  507 	push	_bp
      002C8D 85 81 1A         [24]  508 	mov	_bp,sp
      002C90 05 81            [12]  509 	inc	sp
      002C92 05 81            [12]  510 	inc	sp
      002C94 05 81            [12]  511 	inc	sp
      002C96 AF 82            [24]  512 	mov	r7,dpl
                                    513 ;	../Wireless_Manager/wireless.c:108: uint8_t off = 0x00;
      002C98 7E 00            [12]  514 	mov	r6,#0x00
                                    515 ;	../Wireless_Manager/wireless.c:109: uint8_t red = 0, green = 0, blue = 0;
      002C9A A8 1A            [24]  516 	mov	r0,_bp
      002C9C 08               [12]  517 	inc	r0
      002C9D 76 00            [12]  518 	mov	@r0,#0x00
      002C9F A8 1A            [24]  519 	mov	r0,_bp
      002CA1 08               [12]  520 	inc	r0
      002CA2 08               [12]  521 	inc	r0
      002CA3 76 00            [12]  522 	mov	@r0,#0x00
      002CA5 E5 1A            [12]  523 	mov	a,_bp
      002CA7 24 03            [12]  524 	add	a,#0x03
      002CA9 F8               [12]  525 	mov	r0,a
      002CAA 76 00            [12]  526 	mov	@r0,#0x00
                                    527 ;	../Wireless_Manager/wireless.c:112: if(!action){ return; }
      002CAC EF               [12]  528 	mov	a,r7
      002CAD 70 03            [24]  529 	jnz	00102$
      002CAF 02 2E 65         [24]  530 	ljmp	00120$
      002CB2                        531 00102$:
                                    532 ;	../Wireless_Manager/wireless.c:115: changedBit = 1 << (action-1);
      002CB2 EF               [12]  533 	mov	a,r7
      002CB3 14               [12]  534 	dec	a
      002CB4 FA               [12]  535 	mov	r2,a
      002CB5 8A F0            [24]  536 	mov	b,r2
      002CB7 05 F0            [12]  537 	inc	b
      002CB9 7A 01            [12]  538 	mov	r2,#0x01
      002CBB 7B 00            [12]  539 	mov	r3,#0x00
      002CBD 80 06            [24]  540 	sjmp	00172$
      002CBF                        541 00171$:
      002CBF EA               [12]  542 	mov	a,r2
      002CC0 2A               [12]  543 	add	a,r2
      002CC1 FA               [12]  544 	mov	r2,a
      002CC2 EB               [12]  545 	mov	a,r3
      002CC3 33               [12]  546 	rlc	a
      002CC4 FB               [12]  547 	mov	r3,a
      002CC5                        548 00172$:
      002CC5 D5 F0 F7         [24]  549 	djnz	b,00171$
                                    550 ;	../Wireless_Manager/wireless.c:117: if(changed & changedBit){
      002CC8 EA               [12]  551 	mov	a,r2
      002CC9 55 18            [12]  552 	anl	a,_handleUserConfigAction_changed_65536_53
      002CCB FC               [12]  553 	mov	r4,a
      002CCC EB               [12]  554 	mov	a,r3
      002CCD 55 19            [12]  555 	anl	a,(_handleUserConfigAction_changed_65536_53 + 1)
      002CCF FD               [12]  556 	mov	r5,a
      002CD0 4C               [12]  557 	orl	a,r4
      002CD1 60 10            [24]  558 	jz	00104$
                                    559 ;	../Wireless_Manager/wireless.c:118: off = 0xFF;
      002CD3 7E FF            [12]  560 	mov	r6,#0xff
                                    561 ;	../Wireless_Manager/wireless.c:119: changed &= ~changedBit;
      002CD5 EA               [12]  562 	mov	a,r2
      002CD6 F4               [12]  563 	cpl	a
      002CD7 FC               [12]  564 	mov	r4,a
      002CD8 EB               [12]  565 	mov	a,r3
      002CD9 F4               [12]  566 	cpl	a
      002CDA FD               [12]  567 	mov	r5,a
      002CDB EC               [12]  568 	mov	a,r4
      002CDC 52 18            [12]  569 	anl	_handleUserConfigAction_changed_65536_53,a
      002CDE ED               [12]  570 	mov	a,r5
      002CDF 52 19            [12]  571 	anl	(_handleUserConfigAction_changed_65536_53 + 1),a
      002CE1 80 06            [24]  572 	sjmp	00105$
      002CE3                        573 00104$:
                                    574 ;	../Wireless_Manager/wireless.c:121: changed |= changedBit;
      002CE3 EA               [12]  575 	mov	a,r2
      002CE4 42 18            [12]  576 	orl	_handleUserConfigAction_changed_65536_53,a
      002CE6 EB               [12]  577 	mov	a,r3
      002CE7 42 19            [12]  578 	orl	(_handleUserConfigAction_changed_65536_53 + 1),a
      002CE9                        579 00105$:
                                    580 ;	../Wireless_Manager/wireless.c:125: switch (action)
      002CE9 EF               [12]  581 	mov	a,r7
      002CEA 24 F3            [12]  582 	add	a,#0xff - 0x0c
      002CEC 50 03            [24]  583 	jnc	00174$
      002CEE 02 2E 65         [24]  584 	ljmp	00120$
      002CF1                        585 00174$:
      002CF1 EF               [12]  586 	mov	a,r7
      002CF2 24 0A            [12]  587 	add	a,#(00175$-3-.)
      002CF4 83               [24]  588 	movc	a,@a+pc
      002CF5 F5 82            [12]  589 	mov	dpl,a
      002CF7 EF               [12]  590 	mov	a,r7
      002CF8 24 11            [12]  591 	add	a,#(00176$-3-.)
      002CFA 83               [24]  592 	movc	a,@a+pc
      002CFB F5 83            [12]  593 	mov	dph,a
      002CFD E4               [12]  594 	clr	a
      002CFE 73               [24]  595 	jmp	@a+dptr
      002CFF                        596 00175$:
      002CFF E8                     597 	.db	00118$
      002D00 19                     598 	.db	00106$
      002D01 2C                     599 	.db	00107$
      002D02 34                     600 	.db	00108$
      002D03 42                     601 	.db	00109$
      002D04 4B                     602 	.db	00110$
      002D05 5B                     603 	.db	00111$
      002D06 65                     604 	.db	00112$
      002D07 73                     605 	.db	00113$
      002D08 92                     606 	.db	00114$
      002D09 B1                     607 	.db	00115$
      002D0A D0                     608 	.db	00116$
      002D0B D4                     609 	.db	00117$
      002D0C                        610 00176$:
      002D0C 2D                     611 	.db	00118$>>8
      002D0D 2D                     612 	.db	00106$>>8
      002D0E 2D                     613 	.db	00107$>>8
      002D0F 2D                     614 	.db	00108$>>8
      002D10 2D                     615 	.db	00109$>>8
      002D11 2D                     616 	.db	00110$>>8
      002D12 2D                     617 	.db	00111$>>8
      002D13 2D                     618 	.db	00112$>>8
      002D14 2D                     619 	.db	00113$>>8
      002D15 2D                     620 	.db	00114$>>8
      002D16 2D                     621 	.db	00115$>>8
      002D17 2D                     622 	.db	00116$>>8
      002D18 2D                     623 	.db	00117$>>8
                                    624 ;	../Wireless_Manager/wireless.c:127: case OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
      002D19                        625 00106$:
                                    626 ;	../Wireless_Manager/wireless.c:128: set_runtime_data(MACRO_INDEX, INC, NULL);
      002D19 E4               [12]  627 	clr	a
      002D1A C0 E0            [24]  628 	push	acc
      002D1C 04               [12]  629 	inc	a
      002D1D C0 E0            [24]  630 	push	acc
      002D1F 75 82 03         [24]  631 	mov	dpl,#0x03
      002D22 12 30 51         [24]  632 	lcall	_set_runtime_data
      002D25 15 81            [12]  633 	dec	sp
      002D27 15 81            [12]  634 	dec	sp
                                    635 ;	../Wireless_Manager/wireless.c:129: return;
      002D29 02 2E 65         [24]  636 	ljmp	00120$
                                    637 ;	../Wireless_Manager/wireless.c:130: case OPTION_WIRELESS_ACTION_RED:
      002D2C                        638 00107$:
                                    639 ;	../Wireless_Manager/wireless.c:131: red = WIRELESS_VALUE_FULL;
      002D2C A8 1A            [24]  640 	mov	r0,_bp
      002D2E 08               [12]  641 	inc	r0
      002D2F 76 FF            [12]  642 	mov	@r0,#0xff
                                    643 ;	../Wireless_Manager/wireless.c:132: break;
      002D31 02 2D EA         [24]  644 	ljmp	00119$
                                    645 ;	../Wireless_Manager/wireless.c:133: case OPTION_WIRELESS_ACTION_YELLOW:
      002D34                        646 00108$:
                                    647 ;	../Wireless_Manager/wireless.c:134: red = WIRELESS_VALUE_FULL;
      002D34 A8 1A            [24]  648 	mov	r0,_bp
      002D36 08               [12]  649 	inc	r0
      002D37 76 FF            [12]  650 	mov	@r0,#0xff
                                    651 ;	../Wireless_Manager/wireless.c:135: green = WIRELESS_VALUE_FULL;
      002D39 A8 1A            [24]  652 	mov	r0,_bp
      002D3B 08               [12]  653 	inc	r0
      002D3C 08               [12]  654 	inc	r0
      002D3D 76 FF            [12]  655 	mov	@r0,#0xff
                                    656 ;	../Wireless_Manager/wireless.c:136: break;
      002D3F 02 2D EA         [24]  657 	ljmp	00119$
                                    658 ;	../Wireless_Manager/wireless.c:137: case OPTION_WIRELESS_ACTION_GREEN:
      002D42                        659 00109$:
                                    660 ;	../Wireless_Manager/wireless.c:138: green = WIRELESS_VALUE_FULL;
      002D42 A8 1A            [24]  661 	mov	r0,_bp
      002D44 08               [12]  662 	inc	r0
      002D45 08               [12]  663 	inc	r0
      002D46 76 FF            [12]  664 	mov	@r0,#0xff
                                    665 ;	../Wireless_Manager/wireless.c:139: break;
      002D48 02 2D EA         [24]  666 	ljmp	00119$
                                    667 ;	../Wireless_Manager/wireless.c:140: case OPTION_WIRELESS_ACTION_CYAN:
      002D4B                        668 00110$:
                                    669 ;	../Wireless_Manager/wireless.c:141: green = WIRELESS_VALUE_FULL;
      002D4B A8 1A            [24]  670 	mov	r0,_bp
      002D4D 08               [12]  671 	inc	r0
      002D4E 08               [12]  672 	inc	r0
      002D4F 76 FF            [12]  673 	mov	@r0,#0xff
                                    674 ;	../Wireless_Manager/wireless.c:142: blue = WIRELESS_VALUE_FULL;
      002D51 E5 1A            [12]  675 	mov	a,_bp
      002D53 24 03            [12]  676 	add	a,#0x03
      002D55 F8               [12]  677 	mov	r0,a
      002D56 76 FF            [12]  678 	mov	@r0,#0xff
                                    679 ;	../Wireless_Manager/wireless.c:143: break;
      002D58 02 2D EA         [24]  680 	ljmp	00119$
                                    681 ;	../Wireless_Manager/wireless.c:144: case OPTION_WIRELESS_ACTION_BLUE:
      002D5B                        682 00111$:
                                    683 ;	../Wireless_Manager/wireless.c:145: blue = WIRELESS_VALUE_FULL;
      002D5B E5 1A            [12]  684 	mov	a,_bp
      002D5D 24 03            [12]  685 	add	a,#0x03
      002D5F F8               [12]  686 	mov	r0,a
      002D60 76 FF            [12]  687 	mov	@r0,#0xff
                                    688 ;	../Wireless_Manager/wireless.c:146: break;
      002D62 02 2D EA         [24]  689 	ljmp	00119$
                                    690 ;	../Wireless_Manager/wireless.c:147: case OPTION_WIRELESS_ACTION_MAGENTA:
      002D65                        691 00112$:
                                    692 ;	../Wireless_Manager/wireless.c:148: blue = WIRELESS_VALUE_FULL;
      002D65 E5 1A            [12]  693 	mov	a,_bp
      002D67 24 03            [12]  694 	add	a,#0x03
      002D69 F8               [12]  695 	mov	r0,a
      002D6A 76 FF            [12]  696 	mov	@r0,#0xff
                                    697 ;	../Wireless_Manager/wireless.c:149: red = WIRELESS_VALUE_FULL;
      002D6C A8 1A            [24]  698 	mov	r0,_bp
      002D6E 08               [12]  699 	inc	r0
      002D6F 76 FF            [12]  700 	mov	@r0,#0xff
                                    701 ;	../Wireless_Manager/wireless.c:150: break;
                                    702 ;	../Wireless_Manager/wireless.c:151: case OPTION_WIRELESS_ACTION_STROBE_SLOW:
      002D71 80 77            [24]  703 	sjmp	00119$
      002D73                        704 00113$:
                                    705 ;	../Wireless_Manager/wireless.c:152: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_SLOW);
      002D73 EE               [12]  706 	mov	a,r6
      002D74 60 06            [24]  707 	jz	00122$
      002D76 7D 00            [12]  708 	mov	r5,#0x00
      002D78 7F 00            [12]  709 	mov	r7,#0x00
      002D7A 80 04            [24]  710 	sjmp	00123$
      002D7C                        711 00122$:
      002D7C 7D 01            [12]  712 	mov	r5,#0x01
      002D7E 7F 00            [12]  713 	mov	r7,#0x00
      002D80                        714 00123$:
      002D80 C0 05            [24]  715 	push	ar5
      002D82 E4               [12]  716 	clr	a
      002D83 C0 E0            [24]  717 	push	acc
      002D85 75 82 08         [24]  718 	mov	dpl,#0x08
      002D88 12 30 51         [24]  719 	lcall	_set_runtime_data
      002D8B 15 81            [12]  720 	dec	sp
      002D8D 15 81            [12]  721 	dec	sp
                                    722 ;	../Wireless_Manager/wireless.c:153: return;
      002D8F 02 2E 65         [24]  723 	ljmp	00120$
                                    724 ;	../Wireless_Manager/wireless.c:154: case OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
      002D92                        725 00114$:
                                    726 ;	../Wireless_Manager/wireless.c:155: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_MEDIUM);
      002D92 EE               [12]  727 	mov	a,r6
      002D93 60 06            [24]  728 	jz	00124$
      002D95 7D 00            [12]  729 	mov	r5,#0x00
      002D97 7F 00            [12]  730 	mov	r7,#0x00
      002D99 80 04            [24]  731 	sjmp	00125$
      002D9B                        732 00124$:
      002D9B 7D 79            [12]  733 	mov	r5,#0x79
      002D9D 7F 00            [12]  734 	mov	r7,#0x00
      002D9F                        735 00125$:
      002D9F C0 05            [24]  736 	push	ar5
      002DA1 E4               [12]  737 	clr	a
      002DA2 C0 E0            [24]  738 	push	acc
      002DA4 75 82 08         [24]  739 	mov	dpl,#0x08
      002DA7 12 30 51         [24]  740 	lcall	_set_runtime_data
      002DAA 15 81            [12]  741 	dec	sp
      002DAC 15 81            [12]  742 	dec	sp
                                    743 ;	../Wireless_Manager/wireless.c:156: return;
      002DAE 02 2E 65         [24]  744 	ljmp	00120$
                                    745 ;	../Wireless_Manager/wireless.c:157: case OPTION_WIRELESS_ACTION_STROBE_FAST:
      002DB1                        746 00115$:
                                    747 ;	../Wireless_Manager/wireless.c:158: set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_FAST);
      002DB1 EE               [12]  748 	mov	a,r6
      002DB2 60 06            [24]  749 	jz	00126$
      002DB4 7D 00            [12]  750 	mov	r5,#0x00
      002DB6 7F 00            [12]  751 	mov	r7,#0x00
      002DB8 80 04            [24]  752 	sjmp	00127$
      002DBA                        753 00126$:
      002DBA 7D FF            [12]  754 	mov	r5,#0xff
      002DBC 7F 00            [12]  755 	mov	r7,#0x00
      002DBE                        756 00127$:
      002DBE C0 05            [24]  757 	push	ar5
      002DC0 E4               [12]  758 	clr	a
      002DC1 C0 E0            [24]  759 	push	acc
      002DC3 75 82 08         [24]  760 	mov	dpl,#0x08
      002DC6 12 30 51         [24]  761 	lcall	_set_runtime_data
      002DC9 15 81            [12]  762 	dec	sp
      002DCB 15 81            [12]  763 	dec	sp
                                    764 ;	../Wireless_Manager/wireless.c:159: return;
      002DCD 02 2E 65         [24]  765 	ljmp	00120$
                                    766 ;	../Wireless_Manager/wireless.c:160: case OPTION_WIRELESS_ACTION_BLACKOUT:
      002DD0                        767 00116$:
                                    768 ;	../Wireless_Manager/wireless.c:161: off = 0xFF;
      002DD0 7E FF            [12]  769 	mov	r6,#0xff
                                    770 ;	../Wireless_Manager/wireless.c:162: break;
                                    771 ;	../Wireless_Manager/wireless.c:163: case OPTION_WIRELESS_ACTION_WHITEOUT:
      002DD2 80 16            [24]  772 	sjmp	00119$
      002DD4                        773 00117$:
                                    774 ;	../Wireless_Manager/wireless.c:164: red = WIRELESS_VALUE_FULL;
      002DD4 A8 1A            [24]  775 	mov	r0,_bp
      002DD6 08               [12]  776 	inc	r0
      002DD7 76 FF            [12]  777 	mov	@r0,#0xff
                                    778 ;	../Wireless_Manager/wireless.c:165: green = WIRELESS_VALUE_FULL;
      002DD9 A8 1A            [24]  779 	mov	r0,_bp
      002DDB 08               [12]  780 	inc	r0
      002DDC 08               [12]  781 	inc	r0
      002DDD 76 FF            [12]  782 	mov	@r0,#0xff
                                    783 ;	../Wireless_Manager/wireless.c:166: blue = WIRELESS_VALUE_FULL;
      002DDF E5 1A            [12]  784 	mov	a,_bp
      002DE1 24 03            [12]  785 	add	a,#0x03
      002DE3 F8               [12]  786 	mov	r0,a
      002DE4 76 FF            [12]  787 	mov	@r0,#0xff
                                    788 ;	../Wireless_Manager/wireless.c:167: break;
                                    789 ;	../Wireless_Manager/wireless.c:168: default:
      002DE6 80 02            [24]  790 	sjmp	00119$
      002DE8                        791 00118$:
                                    792 ;	../Wireless_Manager/wireless.c:169: return;
                                    793 ;	../Wireless_Manager/wireless.c:170: }
      002DE8 80 7B            [24]  794 	sjmp	00120$
      002DEA                        795 00119$:
                                    796 ;	../Wireless_Manager/wireless.c:172: set_runtime_data(MACRO_INDEX, VALUE, WIRELESS_VALUE_0);
      002DEA C0 06            [24]  797 	push	ar6
      002DEC E4               [12]  798 	clr	a
      002DED C0 E0            [24]  799 	push	acc
      002DEF C0 E0            [24]  800 	push	acc
      002DF1 75 82 03         [24]  801 	mov	dpl,#0x03
      002DF4 12 30 51         [24]  802 	lcall	_set_runtime_data
      002DF7 15 81            [12]  803 	dec	sp
      002DF9 15 81            [12]  804 	dec	sp
      002DFB D0 06            [24]  805 	pop	ar6
                                    806 ;	../Wireless_Manager/wireless.c:173: set_runtime_data(RED_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : red);
      002DFD EE               [12]  807 	mov	a,r6
      002DFE 60 06            [24]  808 	jz	00128$
      002E00 7D 00            [12]  809 	mov	r5,#0x00
      002E02 7F 00            [12]  810 	mov	r7,#0x00
      002E04 80 07            [24]  811 	sjmp	00129$
      002E06                        812 00128$:
      002E06 A8 1A            [24]  813 	mov	r0,_bp
      002E08 08               [12]  814 	inc	r0
      002E09 86 05            [24]  815 	mov	ar5,@r0
      002E0B 7F 00            [12]  816 	mov	r7,#0x00
      002E0D                        817 00129$:
      002E0D C0 06            [24]  818 	push	ar6
      002E0F C0 05            [24]  819 	push	ar5
      002E11 E4               [12]  820 	clr	a
      002E12 C0 E0            [24]  821 	push	acc
      002E14 75 82 05         [24]  822 	mov	dpl,#0x05
      002E17 12 30 51         [24]  823 	lcall	_set_runtime_data
      002E1A 15 81            [12]  824 	dec	sp
      002E1C 15 81            [12]  825 	dec	sp
      002E1E D0 06            [24]  826 	pop	ar6
                                    827 ;	../Wireless_Manager/wireless.c:174: set_runtime_data(GREEN_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : green);
      002E20 EE               [12]  828 	mov	a,r6
      002E21 60 06            [24]  829 	jz	00130$
      002E23 7D 00            [12]  830 	mov	r5,#0x00
      002E25 7F 00            [12]  831 	mov	r7,#0x00
      002E27 80 08            [24]  832 	sjmp	00131$
      002E29                        833 00130$:
      002E29 A8 1A            [24]  834 	mov	r0,_bp
      002E2B 08               [12]  835 	inc	r0
      002E2C 08               [12]  836 	inc	r0
      002E2D 86 05            [24]  837 	mov	ar5,@r0
      002E2F 7F 00            [12]  838 	mov	r7,#0x00
      002E31                        839 00131$:
      002E31 C0 06            [24]  840 	push	ar6
      002E33 C0 05            [24]  841 	push	ar5
      002E35 E4               [12]  842 	clr	a
      002E36 C0 E0            [24]  843 	push	acc
      002E38 75 82 06         [24]  844 	mov	dpl,#0x06
      002E3B 12 30 51         [24]  845 	lcall	_set_runtime_data
      002E3E 15 81            [12]  846 	dec	sp
      002E40 15 81            [12]  847 	dec	sp
      002E42 D0 06            [24]  848 	pop	ar6
                                    849 ;	../Wireless_Manager/wireless.c:175: set_runtime_data(BLUE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : blue);
      002E44 EE               [12]  850 	mov	a,r6
      002E45 60 06            [24]  851 	jz	00132$
      002E47 7E 00            [12]  852 	mov	r6,#0x00
      002E49 7F 00            [12]  853 	mov	r7,#0x00
      002E4B 80 09            [24]  854 	sjmp	00133$
      002E4D                        855 00132$:
      002E4D E5 1A            [12]  856 	mov	a,_bp
      002E4F 24 03            [12]  857 	add	a,#0x03
      002E51 F8               [12]  858 	mov	r0,a
      002E52 86 06            [24]  859 	mov	ar6,@r0
      002E54 7F 00            [12]  860 	mov	r7,#0x00
      002E56                        861 00133$:
      002E56 C0 06            [24]  862 	push	ar6
      002E58 E4               [12]  863 	clr	a
      002E59 C0 E0            [24]  864 	push	acc
      002E5B 75 82 07         [24]  865 	mov	dpl,#0x07
      002E5E 12 30 51         [24]  866 	lcall	_set_runtime_data
      002E61 15 81            [12]  867 	dec	sp
      002E63 15 81            [12]  868 	dec	sp
      002E65                        869 00120$:
                                    870 ;	../Wireless_Manager/wireless.c:177: }
      002E65 85 1A 81         [24]  871 	mov	sp,_bp
      002E68 D0 1A            [24]  872 	pop	_bp
      002E6A 22               [24]  873 	ret
                                    874 ;------------------------------------------------------------
                                    875 ;Allocation info for local variables in function 'getWirelessAction'
                                    876 ;------------------------------------------------------------
                                    877 ;preamble                  Allocated to registers 
                                    878 ;count                     Allocated to registers r5 
                                    879 ;i                         Allocated to registers r7 
                                    880 ;dit_dah                   Allocated to registers r6 
                                    881 ;------------------------------------------------------------
                                    882 ;	../Wireless_Manager/wireless.c:179: uint8_t getWirelessAction(){
                                    883 ;	-----------------------------------------
                                    884 ;	 function getWirelessAction
                                    885 ;	-----------------------------------------
      002E6B                        886 _getWirelessAction:
                                    887 ;	../Wireless_Manager/wireless.c:185: for(i = 0; i < PREAMBLE_BITS; i++){
      002E6B 7F 00            [12]  888 	mov	r7,#0x00
      002E6D                        889 00119$:
                                    890 ;	../Wireless_Manager/wireless.c:186: dit_dah = detectDitDah();
      002E6D C0 07            [24]  891 	push	ar7
      002E6F 12 2E D7         [24]  892 	lcall	_detectDitDah
      002E72 AE 82            [24]  893 	mov	r6,dpl
      002E74 D0 07            [24]  894 	pop	ar7
                                    895 ;	../Wireless_Manager/wireless.c:188: if(dit_dah == BAD_WIRELESS){
      002E76 EE               [12]  896 	mov	a,r6
      002E77 70 03            [24]  897 	jnz	00102$
                                    898 ;	../Wireless_Manager/wireless.c:189: return dit_dah;
      002E79 8E 82            [24]  899 	mov	dpl,r6
      002E7B 22               [24]  900 	ret
      002E7C                        901 00102$:
                                    902 ;	../Wireless_Manager/wireless.c:192: if(preamble & (0x0001 << i)){ //expects a Dit
      002E7C 8F F0            [24]  903 	mov	b,r7
      002E7E 05 F0            [12]  904 	inc	b
      002E80 7C 01            [12]  905 	mov	r4,#0x01
      002E82 7D 00            [12]  906 	mov	r5,#0x00
      002E84 80 06            [24]  907 	sjmp	00169$
      002E86                        908 00168$:
      002E86 EC               [12]  909 	mov	a,r4
      002E87 2C               [12]  910 	add	a,r4
      002E88 FC               [12]  911 	mov	r4,a
      002E89 ED               [12]  912 	mov	a,r5
      002E8A 33               [12]  913 	rlc	a
      002E8B FD               [12]  914 	mov	r5,a
      002E8C                        915 00169$:
      002E8C D5 F0 F7         [24]  916 	djnz	b,00168$
      002E8F EC               [12]  917 	mov	a,r4
      002E90 54 57            [12]  918 	anl	a,#0x57
      002E92 70 05            [24]  919 	jnz	00170$
      002E94 ED               [12]  920 	mov	a,r5
      002E95 54 05            [12]  921 	anl	a,#0x05
      002E97 60 09            [24]  922 	jz	00108$
      002E99                        923 00170$:
                                    924 ;	../Wireless_Manager/wireless.c:193: if(dit_dah != DIT){
      002E99 BE 01 02         [24]  925 	cjne	r6,#0x01,00171$
      002E9C 80 0D            [24]  926 	sjmp	00120$
      002E9E                        927 00171$:
                                    928 ;	../Wireless_Manager/wireless.c:194: return BAD_WIRELESS;
      002E9E 75 82 00         [24]  929 	mov	dpl,#0x00
      002EA1 22               [24]  930 	ret
      002EA2                        931 00108$:
                                    932 ;	../Wireless_Manager/wireless.c:197: if(dit_dah != DAH){
      002EA2 BE 02 02         [24]  933 	cjne	r6,#0x02,00172$
      002EA5 80 04            [24]  934 	sjmp	00120$
      002EA7                        935 00172$:
                                    936 ;	../Wireless_Manager/wireless.c:198: return BAD_WIRELESS;
      002EA7 75 82 00         [24]  937 	mov	dpl,#0x00
      002EAA 22               [24]  938 	ret
      002EAB                        939 00120$:
                                    940 ;	../Wireless_Manager/wireless.c:185: for(i = 0; i < PREAMBLE_BITS; i++){
      002EAB 0F               [12]  941 	inc	r7
      002EAC BF 0C 00         [24]  942 	cjne	r7,#0x0c,00173$
      002EAF                        943 00173$:
      002EAF 40 BC            [24]  944 	jc	00119$
                                    945 ;	../Wireless_Manager/wireless.c:204: while(count--){
      002EB1 7F 0D            [12]  946 	mov	r7,#0x0d
      002EB3                        947 00116$:
      002EB3 8F 06            [24]  948 	mov	ar6,r7
      002EB5 1F               [12]  949 	dec	r7
      002EB6 8F 05            [24]  950 	mov	ar5,r7
      002EB8 EE               [12]  951 	mov	a,r6
      002EB9 60 16            [24]  952 	jz	00118$
                                    953 ;	../Wireless_Manager/wireless.c:205: dit_dah = detectDitDah();
      002EBB C0 07            [24]  954 	push	ar7
      002EBD C0 05            [24]  955 	push	ar5
      002EBF 12 2E D7         [24]  956 	lcall	_detectDitDah
      002EC2 AE 82            [24]  957 	mov	r6,dpl
      002EC4 D0 05            [24]  958 	pop	ar5
      002EC6 D0 07            [24]  959 	pop	ar7
                                    960 ;	../Wireless_Manager/wireless.c:207: if(!dit_dah){
      002EC8 EE               [12]  961 	mov	a,r6
                                    962 ;	../Wireless_Manager/wireless.c:208: return BAD_WIRELESS;
      002EC9 70 03            [24]  963 	jnz	00114$
      002ECB F5 82            [12]  964 	mov	dpl,a
      002ECD 22               [24]  965 	ret
      002ECE                        966 00114$:
                                    967 ;	../Wireless_Manager/wireless.c:209: } else if(dit_dah == DAH){
      002ECE BE 02 E2         [24]  968 	cjne	r6,#0x02,00116$
                                    969 ;	../Wireless_Manager/wireless.c:210: break;
      002ED1                        970 00118$:
                                    971 ;	../Wireless_Manager/wireless.c:216: return count >> 1;
      002ED1 ED               [12]  972 	mov	a,r5
      002ED2 C3               [12]  973 	clr	c
      002ED3 13               [12]  974 	rrc	a
      002ED4 F5 82            [12]  975 	mov	dpl,a
                                    976 ;	../Wireless_Manager/wireless.c:217: }
      002ED6 22               [24]  977 	ret
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'detectDitDah'
                                    980 ;------------------------------------------------------------
                                    981 ;count                     Allocated to registers r6 r7 
                                    982 ;timeout                   Allocated to registers r6 r7 
                                    983 ;------------------------------------------------------------
                                    984 ;	../Wireless_Manager/wireless.c:219: uint8_t detectDitDah(){
                                    985 ;	-----------------------------------------
                                    986 ;	 function detectDitDah
                                    987 ;	-----------------------------------------
      002ED7                        988 _detectDitDah:
                                    989 ;	../Wireless_Manager/wireless.c:224: while(timeout--){
      002ED7 7E B8            [12]  990 	mov	r6,#0xb8
      002ED9 7F 0B            [12]  991 	mov	r7,#0x0b
      002EDB                        992 00103$:
      002EDB 8E 04            [24]  993 	mov	ar4,r6
      002EDD 8F 05            [24]  994 	mov	ar5,r7
      002EDF 1E               [12]  995 	dec	r6
      002EE0 BE FF 01         [24]  996 	cjne	r6,#0xff,00154$
      002EE3 1F               [12]  997 	dec	r7
      002EE4                        998 00154$:
      002EE4 EC               [12]  999 	mov	a,r4
      002EE5 4D               [12] 1000 	orl	a,r5
      002EE6 60 03            [24] 1001 	jz	00105$
                                   1002 ;	../Wireless_Manager/wireless.c:225: if(P3_7){
      002EE8 30 B7 F0         [24] 1003 	jnb	_P3_7,00103$
                                   1004 ;	../Wireless_Manager/wireless.c:226: break;
      002EEB                       1005 00105$:
                                   1006 ;	../Wireless_Manager/wireless.c:231: if(!timeout){
      002EEB EE               [12] 1007 	mov	a,r6
      002EEC 4F               [12] 1008 	orl	a,r7
                                   1009 ;	../Wireless_Manager/wireless.c:232: return BAD_WIRELESS;
      002EED 70 03            [24] 1010 	jnz	00125$
      002EEF F5 82            [12] 1011 	mov	dpl,a
                                   1012 ;	../Wireless_Manager/wireless.c:239: while(timeout--){
      002EF1 22               [24] 1013 	ret
      002EF2                       1014 00125$:
      002EF2 7E 00            [12] 1015 	mov	r6,#0x00
      002EF4 7F 00            [12] 1016 	mov	r7,#0x00
      002EF6 7C B8            [12] 1017 	mov	r4,#0xb8
      002EF8 7D 0B            [12] 1018 	mov	r5,#0x0b
      002EFA                       1019 00111$:
      002EFA 8C 02            [24] 1020 	mov	ar2,r4
      002EFC 8D 03            [24] 1021 	mov	ar3,r5
      002EFE 1C               [12] 1022 	dec	r4
      002EFF BC FF 01         [24] 1023 	cjne	r4,#0xff,00158$
      002F02 1D               [12] 1024 	dec	r5
      002F03                       1025 00158$:
      002F03 EA               [12] 1026 	mov	a,r2
      002F04 4B               [12] 1027 	orl	a,r3
      002F05 60 0A            [24] 1028 	jz	00113$
                                   1029 ;	../Wireless_Manager/wireless.c:240: if(P3_7){
      002F07 30 B7 07         [24] 1030 	jnb	_P3_7,00113$
                                   1031 ;	../Wireless_Manager/wireless.c:241: count++;
      002F0A 0E               [12] 1032 	inc	r6
                                   1033 ;	../Wireless_Manager/wireless.c:243: break;
      002F0B BE 00 EC         [24] 1034 	cjne	r6,#0x00,00111$
      002F0E 0F               [12] 1035 	inc	r7
      002F0F 80 E9            [24] 1036 	sjmp	00111$
      002F11                       1037 00113$:
                                   1038 ;	../Wireless_Manager/wireless.c:248: if(!timeout){
      002F11 EC               [12] 1039 	mov	a,r4
      002F12 4D               [12] 1040 	orl	a,r5
                                   1041 ;	../Wireless_Manager/wireless.c:249: return BAD_WIRELESS;
      002F13 70 03            [24] 1042 	jnz	00115$
      002F15 F5 82            [12] 1043 	mov	dpl,a
      002F17 22               [24] 1044 	ret
      002F18                       1045 00115$:
                                   1046 ;	../Wireless_Manager/wireless.c:255: return (count > DAH_COUNT) ? DAH : DIT;
      002F18 C3               [12] 1047 	clr	c
      002F19 74 E9            [12] 1048 	mov	a,#0xe9
      002F1B 9E               [12] 1049 	subb	a,r6
      002F1C E4               [12] 1050 	clr	a
      002F1D 9F               [12] 1051 	subb	a,r7
      002F1E 50 06            [24] 1052 	jnc	00118$
      002F20 7E 02            [12] 1053 	mov	r6,#0x02
      002F22 7F 00            [12] 1054 	mov	r7,#0x00
      002F24 80 04            [24] 1055 	sjmp	00119$
      002F26                       1056 00118$:
      002F26 7E 01            [12] 1057 	mov	r6,#0x01
      002F28 7F 00            [12] 1058 	mov	r7,#0x00
      002F2A                       1059 00119$:
      002F2A 8E 82            [24] 1060 	mov	dpl,r6
                                   1061 ;	../Wireless_Manager/wireless.c:256: }
      002F2C 22               [24] 1062 	ret
                                   1063 	.area CSEG    (CODE)
                                   1064 	.area CONST   (CODE)
                                   1065 	.area XINIT   (CODE)
                                   1066 	.area CABS    (ABS,CODE)
