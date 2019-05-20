                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fogger
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_adc_value
                                     12 	.globl _get_runtime_data
                                     13 	.globl _CPRL2
                                     14 	.globl _CT2
                                     15 	.globl _TR2
                                     16 	.globl _EXEN2
                                     17 	.globl _TCLK
                                     18 	.globl _RCLK
                                     19 	.globl _REN
                                     20 	.globl _SM2
                                     21 	.globl _SM1
                                     22 	.globl _SM0
                                     23 	.globl _RCK
                                     24 	.globl _SER
                                     25 	.globl _SCK
                                     26 	.globl _RI
                                     27 	.globl _ES
                                     28 	.globl _ET0
                                     29 	.globl _EA
                                     30 	.globl _P3_7
                                     31 	.globl _P3_6
                                     32 	.globl _P3_5
                                     33 	.globl _P3_4
                                     34 	.globl _P3_3
                                     35 	.globl _P3_2
                                     36 	.globl _P3_1
                                     37 	.globl _P3_0
                                     38 	.globl _P2_7
                                     39 	.globl _P2_6
                                     40 	.globl _P2_5
                                     41 	.globl _P2_4
                                     42 	.globl _P2_3
                                     43 	.globl _P2_2
                                     44 	.globl _P2_1
                                     45 	.globl _P2_0
                                     46 	.globl _P1_7
                                     47 	.globl _P1_6
                                     48 	.globl _P1_5
                                     49 	.globl _P1_4
                                     50 	.globl _P1_3
                                     51 	.globl _P1_2
                                     52 	.globl _P1_1
                                     53 	.globl _P1_0
                                     54 	.globl _P0_7
                                     55 	.globl _P0_6
                                     56 	.globl _P0_5
                                     57 	.globl _P0_4
                                     58 	.globl _P0_3
                                     59 	.globl _P0_2
                                     60 	.globl _P0_1
                                     61 	.globl _P0_0
                                     62 	.globl _IAP_ADRH
                                     63 	.globl _IAP_ADRL
                                     64 	.globl _IAPEN
                                     65 	.globl _TH0
                                     66 	.globl _TL0
                                     67 	.globl _CKCON
                                     68 	.globl _TMOD
                                     69 	.globl _TCON
                                     70 	.globl _PWMDATA17L
                                     71 	.globl _PWMDATA17H
                                     72 	.globl _PWMDATA14L
                                     73 	.globl _PWMDATA14H
                                     74 	.globl _PWMDATA11L
                                     75 	.globl _PWMDATA11H
                                     76 	.globl _PWM_EA2
                                     77 	.globl _PWM_EA1
                                     78 	.globl _SBUF
                                     79 	.globl _TL3
                                     80 	.globl _TH3
                                     81 	.globl _T2CON
                                     82 	.globl _RCAP2H
                                     83 	.globl _RCAP2L
                                     84 	.globl _SCON
                                     85 	.globl _P1_OPT
                                     86 	.globl _ADCVAL2
                                     87 	.globl _ADCVAL1
                                     88 	.globl _ADCSEL
                                     89 	.globl _EXIF
                                     90 	.globl _EIE
                                     91 	.globl _IE
                                     92 	.globl _P3
                                     93 	.globl _P2
                                     94 	.globl _P1
                                     95 	.globl _P0
                                     96 	.globl _PCLKSEL
                                     97 	.globl _CHIPCON
                                     98 	.globl _Fluid_Level
                                     99 	.globl _Heat_Flag
                                    100 	.globl _Playing
                                    101 	.globl _Interval_Or_Duration
                                    102 	.globl _Timer
                                    103 	.globl _tick_fogger
                                    104 	.globl _power_pump
                                    105 	.globl _power_heater
                                    106 ;--------------------------------------------------------
                                    107 ; special function registers
                                    108 ;--------------------------------------------------------
                                    109 	.area RSEG    (ABS,DATA)
      000000                        110 	.org 0x0000
                           0000BF   111 _CHIPCON	=	0x00bf
                           0000B7   112 _PCLKSEL	=	0x00b7
                           000080   113 _P0	=	0x0080
                           000090   114 _P1	=	0x0090
                           0000A0   115 _P2	=	0x00a0
                           0000B0   116 _P3	=	0x00b0
                           0000A8   117 _IE	=	0x00a8
                           0000E8   118 _EIE	=	0x00e8
                           000091   119 _EXIF	=	0x0091
                           0000DA   120 _ADCSEL	=	0x00da
                           0000DB   121 _ADCVAL1	=	0x00db
                           0000DC   122 _ADCVAL2	=	0x00dc
                           0000D9   123 _P1_OPT	=	0x00d9
                           000098   124 _SCON	=	0x0098
                           0000CA   125 _RCAP2L	=	0x00ca
                           0000CB   126 _RCAP2H	=	0x00cb
                           0000C8   127 _T2CON	=	0x00c8
                           00009B   128 _TH3	=	0x009b
                           00009A   129 _TL3	=	0x009a
                           000099   130 _SBUF	=	0x0099
                           0000D3   131 _PWM_EA1	=	0x00d3
                           0000D4   132 _PWM_EA2	=	0x00d4
                           0000BD   133 _PWMDATA11H	=	0x00bd
                           0000BE   134 _PWMDATA11L	=	0x00be
                           0000B5   135 _PWMDATA14H	=	0x00b5
                           0000B6   136 _PWMDATA14L	=	0x00b6
                           0000AD   137 _PWMDATA17H	=	0x00ad
                           0000AE   138 _PWMDATA17L	=	0x00ae
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008E   141 _CKCON	=	0x008e
                           00008A   142 _TL0	=	0x008a
                           00008C   143 _TH0	=	0x008c
                           0000E4   144 _IAPEN	=	0x00e4
                           0000E5   145 _IAP_ADRL	=	0x00e5
                           0000E6   146 _IAP_ADRH	=	0x00e6
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           0000A0   168 _P2_0	=	0x00a0
                           0000A1   169 _P2_1	=	0x00a1
                           0000A2   170 _P2_2	=	0x00a2
                           0000A3   171 _P2_3	=	0x00a3
                           0000A4   172 _P2_4	=	0x00a4
                           0000A5   173 _P2_5	=	0x00a5
                           0000A6   174 _P2_6	=	0x00a6
                           0000A7   175 _P2_7	=	0x00a7
                           0000B0   176 _P3_0	=	0x00b0
                           0000B1   177 _P3_1	=	0x00b1
                           0000B2   178 _P3_2	=	0x00b2
                           0000B3   179 _P3_3	=	0x00b3
                           0000B4   180 _P3_4	=	0x00b4
                           0000B5   181 _P3_5	=	0x00b5
                           0000B6   182 _P3_6	=	0x00b6
                           0000B7   183 _P3_7	=	0x00b7
                           0000AF   184 _EA	=	0x00af
                           0000A9   185 _ET0	=	0x00a9
                           0000AC   186 _ES	=	0x00ac
                           000098   187 _RI	=	0x0098
                           000093   188 _SCK	=	0x0093
                           000095   189 _SER	=	0x0095
                           000092   190 _RCK	=	0x0092
                           00009F   191 _SM0	=	0x009f
                           00009E   192 _SM1	=	0x009e
                           00009D   193 _SM2	=	0x009d
                           00009C   194 _REN	=	0x009c
                           0000CD   195 _RCLK	=	0x00cd
                           0000CC   196 _TCLK	=	0x00cc
                           0000CB   197 _EXEN2	=	0x00cb
                           0000CA   198 _TR2	=	0x00ca
                           0000C9   199 _CT2	=	0x00c9
                           0000C8   200 _CPRL2	=	0x00c8
                                    201 ;--------------------------------------------------------
                                    202 ; overlayable register banks
                                    203 ;--------------------------------------------------------
                                    204 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        205 	.ds 8
                                    206 ;--------------------------------------------------------
                                    207 ; internal ram data
                                    208 ;--------------------------------------------------------
                                    209 	.area DSEG    (DATA)
      00006B                        210 _Timer::
      00006B                        211 	.ds 1
      00006C                        212 _Interval_Or_Duration::
      00006C                        213 	.ds 1
      00006D                        214 _Playing::
      00006D                        215 	.ds 1
      00006E                        216 _Heat_Flag::
      00006E                        217 	.ds 1
      00006F                        218 _Fluid_Level::
      00006F                        219 	.ds 1
      000070                        220 _tick_fogger_fullCount_65536_36:
      000070                        221 	.ds 1
      000071                        222 _tick_fogger_on_65536_36:
      000071                        223 	.ds 1
      000072                        224 _tick_fogger_duration_65536_36:
      000072                        225 	.ds 1
      000073                        226 _tick_fogger_interval_65536_36:
      000073                        227 	.ds 1
      000074                        228 _tick_fogger_power_65536_36:
      000074                        229 	.ds 1
      000075                        230 _tick_fogger_tock_65536_36:
      000075                        231 	.ds 1
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram 
                                    234 ;--------------------------------------------------------
                                    235 	.area	OSEG    (OVR,DATA)
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; external initialized ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;------------------------------------------------------------
                                    284 ;Allocation info for local variables in function 'tick_fogger'
                                    285 ;------------------------------------------------------------
                                    286 ;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
                                    287 ;on                        Allocated with name '_tick_fogger_on_65536_36'
                                    288 ;duration                  Allocated with name '_tick_fogger_duration_65536_36'
                                    289 ;interval                  Allocated with name '_tick_fogger_interval_65536_36'
                                    290 ;power                     Allocated with name '_tick_fogger_power_65536_36'
                                    291 ;tock                      Allocated with name '_tick_fogger_tock_65536_36'
                                    292 ;temperature               Allocated to registers r6 r7 
                                    293 ;value                     Allocated to registers r7 
                                    294 ;------------------------------------------------------------
                                    295 ;	../Fogger_Manager/fogger.c:20: static uint8_t fullCount = 0;
      0000FE 75 70 00         [24]  296 	mov	_tick_fogger_fullCount_65536_36,#0x00
                                    297 ;	../Fogger_Manager/fogger.c:21: static uint8_t on = 0x00; //to toggle lights
      000101 75 71 00         [24]  298 	mov	_tick_fogger_on_65536_36,#0x00
                                    299 ;	../Fogger_Manager/fogger.c:28: static uint8_t tock = 0;
      000104 75 75 00         [24]  300 	mov	_tick_fogger_tock_65536_36,#0x00
                                    301 ;	../Fogger_Manager/fogger.c:14: uint8_t Playing = PAUSE;
      000107 75 6D 00         [24]  302 	mov	_Playing,#0x00
                                    303 ;	../Fogger_Manager/fogger.c:15: uint8_t Heat_Flag = COLD_FLAG;
      00010A 75 6E 04         [24]  304 	mov	_Heat_Flag,#0x04
                                    305 ;	../Fogger_Manager/fogger.c:16: uint8_t Fluid_Level = TANK_FULL;
      00010D 75 6F 01         [24]  306 	mov	_Fluid_Level,#0x01
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; code
                                    314 ;--------------------------------------------------------
                                    315 	.area CSEG    (CODE)
                                    316 ;------------------------------------------------------------
                                    317 ;Allocation info for local variables in function 'tick_fogger'
                                    318 ;------------------------------------------------------------
                                    319 ;fullCount                 Allocated with name '_tick_fogger_fullCount_65536_36'
                                    320 ;on                        Allocated with name '_tick_fogger_on_65536_36'
                                    321 ;duration                  Allocated with name '_tick_fogger_duration_65536_36'
                                    322 ;interval                  Allocated with name '_tick_fogger_interval_65536_36'
                                    323 ;power                     Allocated with name '_tick_fogger_power_65536_36'
                                    324 ;tock                      Allocated with name '_tick_fogger_tock_65536_36'
                                    325 ;temperature               Allocated to registers r6 r7 
                                    326 ;value                     Allocated to registers r7 
                                    327 ;------------------------------------------------------------
                                    328 ;	../Fogger_Manager/fogger.c:18: void tick_fogger(){
                                    329 ;	-----------------------------------------
                                    330 ;	 function tick_fogger
                                    331 ;	-----------------------------------------
      002A39                        332 _tick_fogger:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                                    341 ;	../Fogger_Manager/fogger.c:34: temperature = get_adc_value(ADC_TEMPERATURE);
      002A39 75 82 00         [24]  342 	mov	dpl,#0x00
      002A3C 12 04 5A         [24]  343 	lcall	_get_adc_value
      002A3F AE 82            [24]  344 	mov	r6,dpl
      002A41 AF 83            [24]  345 	mov	r7,dph
                                    346 ;	../Fogger_Manager/fogger.c:36: if(temperature < HEAT_LOW){ /* Turn on heater full blast */
      002A43 C3               [12]  347 	clr	c
      002A44 EE               [12]  348 	mov	a,r6
      002A45 94 A0            [12]  349 	subb	a,#0xa0
      002A47 EF               [12]  350 	mov	a,r7
      002A48 94 00            [12]  351 	subb	a,#0x00
      002A4A 50 05            [24]  352 	jnc	00107$
                                    353 ;	../Fogger_Manager/fogger.c:37: Heat_Flag &= ~HEATED;
                                    354 ;	../Fogger_Manager/fogger.c:38: Heat_Flag &= ~HOT_FLAG;
      002A4C 53 6E 7D         [24]  355 	anl	_Heat_Flag,#(0x7f&0xfd)
      002A4F 80 29            [24]  356 	sjmp	00108$
      002A51                        357 00107$:
                                    358 ;	../Fogger_Manager/fogger.c:39: } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
      002A51 C3               [12]  359 	clr	c
      002A52 74 B9            [12]  360 	mov	a,#0xb9
      002A54 9E               [12]  361 	subb	a,r6
      002A55 E4               [12]  362 	clr	a
      002A56 9F               [12]  363 	subb	a,r7
      002A57 50 10            [24]  364 	jnc	00104$
                                    365 ;	../Fogger_Manager/fogger.c:40: Heat_Flag |= HOT_FLAG;
      002A59 AC 6E            [24]  366 	mov	r4,_Heat_Flag
      002A5B 43 04 02         [24]  367 	orl	ar4,#0x02
                                    368 ;	../Fogger_Manager/fogger.c:41: Heat_Flag |= HEATED;
      002A5E 8C 6E            [24]  369 	mov  _Heat_Flag,r4
      002A60 7D 00            [12]  370 	mov	r5,#0x00
      002A62 43 04 80         [24]  371 	orl	ar4,#0x80
      002A65 8C 6E            [24]  372 	mov	_Heat_Flag,r4
      002A67 80 11            [24]  373 	sjmp	00108$
      002A69                        374 00104$:
                                    375 ;	../Fogger_Manager/fogger.c:42: } else if(temperature > HEAT_OK){ /* Set Heated */
      002A69 C3               [12]  376 	clr	c
      002A6A 74 AF            [12]  377 	mov	a,#0xaf
      002A6C 9E               [12]  378 	subb	a,r6
      002A6D E4               [12]  379 	clr	a
      002A6E 9F               [12]  380 	subb	a,r7
      002A6F 50 09            [24]  381 	jnc	00108$
                                    382 ;	../Fogger_Manager/fogger.c:43: Heat_Flag |= HEATED;
      002A71 AE 6E            [24]  383 	mov	r6,_Heat_Flag
      002A73 7F 00            [12]  384 	mov	r7,#0x00
      002A75 43 06 80         [24]  385 	orl	ar6,#0x80
      002A78 8E 6E            [24]  386 	mov	_Heat_Flag,r6
      002A7A                        387 00108$:
                                    388 ;	../Fogger_Manager/fogger.c:47: if(Heat_Flag & HEAT_DISABLE_FLAG){
      002A7A E5 6E            [12]  389 	mov	a,_Heat_Flag
      002A7C 30 E4 06         [24]  390 	jnb	acc.4,00110$
                                    391 ;	../Fogger_Manager/fogger.c:48: P3_4 = 1;
                                    392 ;	assignBit
      002A7F D2 B4            [12]  393 	setb	_P3_4
                                    394 ;	../Fogger_Manager/fogger.c:49: P3_3 = 1;
                                    395 ;	assignBit
      002A81 D2 B3            [12]  396 	setb	_P3_3
      002A83 80 0F            [24]  397 	sjmp	00111$
      002A85                        398 00110$:
                                    399 ;	../Fogger_Manager/fogger.c:51: P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
      002A85 E5 6E            [12]  400 	mov	a,_Heat_Flag
      002A87 03               [12]  401 	rr	a
      002A88 54 01            [12]  402 	anl	a,#0x01
                                    403 ;	assignBit
      002A8A FF               [12]  404 	mov	r7,a
      002A8B 24 FF            [12]  405 	add	a,#0xff
      002A8D 92 B4            [24]  406 	mov	_P3_4,c
                                    407 ;	../Fogger_Manager/fogger.c:52: P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
                                    408 ;	assignBit
      002A8F EF               [12]  409 	mov	a,r7
      002A90 24 FF            [12]  410 	add	a,#0xff
      002A92 92 B3            [24]  411 	mov	_P3_3,c
      002A94                        412 00111$:
                                    413 ;	../Fogger_Manager/fogger.c:56: if(!P2_6){ // no fluid
      002A94 20 A6 18         [24]  414 	jb	_P2_6,00123$
                                    415 ;	../Fogger_Manager/fogger.c:57: if(Fluid_Level == TANK_FULL){
      002A97 74 01            [12]  416 	mov	a,#0x01
      002A99 B5 6F 0E         [24]  417 	cjne	a,_Fluid_Level,00115$
                                    418 ;	../Fogger_Manager/fogger.c:58: if(fullCount++ > REFILL_FLUID_COUNT){
      002A9C AF 70            [24]  419 	mov	r7,_tick_fogger_fullCount_65536_36
      002A9E 05 70            [12]  420 	inc	_tick_fogger_fullCount_65536_36
      002AA0 EF               [12]  421 	mov	a,r7
      002AA1 24 DD            [12]  422 	add	a,#0xff - 0x22
      002AA3 50 1F            [24]  423 	jnc	00124$
                                    424 ;	../Fogger_Manager/fogger.c:59: Fluid_Level = TANK_EMPTY;
      002AA5 75 6F 00         [24]  425 	mov	_Fluid_Level,#0x00
      002AA8 80 1A            [24]  426 	sjmp	00124$
      002AAA                        427 00115$:
                                    428 ;	../Fogger_Manager/fogger.c:62: fullCount = 0;
      002AAA 75 70 00         [24]  429 	mov	_tick_fogger_fullCount_65536_36,#0x00
      002AAD 80 15            [24]  430 	sjmp	00124$
      002AAF                        431 00123$:
                                    432 ;	../Fogger_Manager/fogger.c:65: if(Fluid_Level == TANK_EMPTY){
      002AAF E5 6F            [12]  433 	mov	a,_Fluid_Level
      002AB1 70 0E            [24]  434 	jnz	00120$
                                    435 ;	../Fogger_Manager/fogger.c:66: if(fullCount++ > REFILL_FLUID_COUNT){
      002AB3 AF 70            [24]  436 	mov	r7,_tick_fogger_fullCount_65536_36
      002AB5 05 70            [12]  437 	inc	_tick_fogger_fullCount_65536_36
      002AB7 EF               [12]  438 	mov	a,r7
      002AB8 24 DD            [12]  439 	add	a,#0xff - 0x22
      002ABA 50 08            [24]  440 	jnc	00124$
                                    441 ;	../Fogger_Manager/fogger.c:67: Fluid_Level = TANK_FULL;
      002ABC 75 6F 01         [24]  442 	mov	_Fluid_Level,#0x01
      002ABF 80 03            [24]  443 	sjmp	00124$
      002AC1                        444 00120$:
                                    445 ;	../Fogger_Manager/fogger.c:70: fullCount = 0;
      002AC1 75 70 00         [24]  446 	mov	_tick_fogger_fullCount_65536_36,#0x00
      002AC4                        447 00124$:
                                    448 ;	../Fogger_Manager/fogger.c:75: if(!get_runtime_data(TANK_LIGHTS_INDEX)){
      002AC4 75 82 0F         [24]  449 	mov	dpl,#0x0f
      002AC7 12 28 C8         [24]  450 	lcall	_get_runtime_data
      002ACA E5 82            [12]  451 	mov	a,dpl
      002ACC 70 28            [24]  452 	jnz	00135$
                                    453 ;	../Fogger_Manager/fogger.c:76: if(Fluid_Level == TANK_EMPTY){ //flash on empty
      002ACE E5 6F            [12]  454 	mov	a,_Fluid_Level
      002AD0 70 13            [24]  455 	jnz	00132$
                                    456 ;	../Fogger_Manager/fogger.c:77: on = ~on;
      002AD2 E5 71            [12]  457 	mov	a,_tick_fogger_on_65536_36
      002AD4 F4               [12]  458 	cpl	a
                                    459 ;	../Fogger_Manager/fogger.c:79: if(on){
      002AD5 F5 71            [12]  460 	mov	_tick_fogger_on_65536_36,a
      002AD7 60 06            [24]  461 	jz	00126$
                                    462 ;	../Fogger_Manager/fogger.c:80: P1_0 = 0;
                                    463 ;	assignBit
      002AD9 C2 90            [12]  464 	clr	_P1_0
                                    465 ;	../Fogger_Manager/fogger.c:81: P2_0 = 1;
                                    466 ;	assignBit
      002ADB D2 A0            [12]  467 	setb	_P2_0
      002ADD 80 1B            [24]  468 	sjmp	00136$
      002ADF                        469 00126$:
                                    470 ;	../Fogger_Manager/fogger.c:83: P1_0 = 1;
                                    471 ;	assignBit
      002ADF D2 90            [12]  472 	setb	_P1_0
                                    473 ;	../Fogger_Manager/fogger.c:84: P2_0 = 1;
                                    474 ;	assignBit
      002AE1 D2 A0            [12]  475 	setb	_P2_0
      002AE3 80 15            [24]  476 	sjmp	00136$
      002AE5                        477 00132$:
                                    478 ;	../Fogger_Manager/fogger.c:87: if(get_heated()){ //heated not heated
      002AE5 E5 6E            [12]  479 	mov	a,_Heat_Flag
      002AE7 30 E7 06         [24]  480 	jnb	acc.7,00129$
                                    481 ;	../Fogger_Manager/fogger.c:88: P1_0 = 0;
                                    482 ;	assignBit
      002AEA C2 90            [12]  483 	clr	_P1_0
                                    484 ;	../Fogger_Manager/fogger.c:89: P2_0 = 1;
                                    485 ;	assignBit
      002AEC D2 A0            [12]  486 	setb	_P2_0
      002AEE 80 0A            [24]  487 	sjmp	00136$
      002AF0                        488 00129$:
                                    489 ;	../Fogger_Manager/fogger.c:91: P1_0 = 1;
                                    490 ;	assignBit
      002AF0 D2 90            [12]  491 	setb	_P1_0
                                    492 ;	../Fogger_Manager/fogger.c:92: P2_0 = 0;
                                    493 ;	assignBit
      002AF2 C2 A0            [12]  494 	clr	_P2_0
      002AF4 80 04            [24]  495 	sjmp	00136$
      002AF6                        496 00135$:
                                    497 ;	../Fogger_Manager/fogger.c:96: P1_0 = 1;
                                    498 ;	assignBit
      002AF6 D2 90            [12]  499 	setb	_P1_0
                                    500 ;	../Fogger_Manager/fogger.c:97: P2_0 = 1;
                                    501 ;	assignBit
      002AF8 D2 A0            [12]  502 	setb	_P2_0
      002AFA                        503 00136$:
                                    504 ;	../Fogger_Manager/fogger.c:102: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
      002AFA 75 82 10         [24]  505 	mov	dpl,#0x10
      002AFD 12 28 C8         [24]  506 	lcall	_get_runtime_data
      002B00 E5 82            [12]  507 	mov	a,dpl
      002B02 60 03            [24]  508 	jz	00581$
      002B04 02 2C CA         [24]  509 	ljmp	00233$
      002B07                        510 00581$:
                                    511 ;	../Fogger_Manager/fogger.c:103: if(has_dmx()){
      002B07 E5 38            [12]  512 	mov	a,_Has_DMX
      002B09 70 03            [24]  513 	jnz	00582$
      002B0B 02 2C C5         [24]  514 	ljmp	00224$
      002B0E                        515 00582$:
                                    516 ;	../Fogger_Manager/fogger.c:104: Playing = PLAY;
      002B0E 75 6D 01         [24]  517 	mov	_Playing,#0x01
                                    518 ;	../Fogger_Manager/fogger.c:105: power = FOG_HIGH;
      002B11 75 74 01         [24]  519 	mov	_tick_fogger_power_65536_36,#0x01
                                    520 ;	../Fogger_Manager/fogger.c:106: power_heater(HEATER_ENABLE);
      002B14 75 82 00         [24]  521 	mov	dpl,#0x00
      002B17 12 2E 08         [24]  522 	lcall	_power_heater
                                    523 ;	../Fogger_Manager/fogger.c:108: if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
      002B1A 75 82 0E         [24]  524 	mov	dpl,#0x0e
      002B1D 12 28 C8         [24]  525 	lcall	_get_runtime_data
      002B20 E5 82            [12]  526 	mov	a,dpl
      002B22 70 57            [24]  527 	jnz	00221$
                                    528 ;	../Fogger_Manager/fogger.c:110: value = get_dmx_value(DMX_M11_POWER_INDEX);
      002B24 AF 2D            [24]  529 	mov	r7,_DMX
                                    530 ;	../Fogger_Manager/fogger.c:112: if(value < DMX_FOG_OFF){
      002B26 BF 14 00         [24]  531 	cjne	r7,#0x14,00584$
      002B29                        532 00584$:
      002B29 50 05            [24]  533 	jnc	00144$
                                    534 ;	../Fogger_Manager/fogger.c:113: Playing = PAUSE;
      002B2B 75 6D 00         [24]  535 	mov	_Playing,#0x00
      002B2E 80 14            [24]  536 	sjmp	00145$
      002B30                        537 00144$:
                                    538 ;	../Fogger_Manager/fogger.c:114: } else if(value < DMX_FOG_LOW){
      002B30 BF 64 00         [24]  539 	cjne	r7,#0x64,00586$
      002B33                        540 00586$:
      002B33 50 04            [24]  541 	jnc	00141$
                                    542 ;	../Fogger_Manager/fogger.c:115: value = FOG_LO;
      002B35 7F 04            [12]  543 	mov	r7,#0x04
      002B37 80 0B            [24]  544 	sjmp	00145$
      002B39                        545 00141$:
                                    546 ;	../Fogger_Manager/fogger.c:116: } else if(value < DMX_FOG_MEDIUM){
      002B39 BF C8 00         [24]  547 	cjne	r7,#0xc8,00588$
      002B3C                        548 00588$:
      002B3C 50 04            [24]  549 	jnc	00138$
                                    550 ;	../Fogger_Manager/fogger.c:117: value = FOG_MED;
      002B3E 7F 02            [12]  551 	mov	r7,#0x02
      002B40 80 02            [24]  552 	sjmp	00145$
      002B42                        553 00138$:
                                    554 ;	../Fogger_Manager/fogger.c:119: value = FOG_HIGH;
      002B42 7F 01            [12]  555 	mov	r7,#0x01
      002B44                        556 00145$:
                                    557 ;	../Fogger_Manager/fogger.c:122: if(value != power){
      002B44 EF               [12]  558 	mov	a,r7
      002B45 B5 74 02         [24]  559 	cjne	a,_tick_fogger_power_65536_36,00590$
      002B48 80 02            [24]  560 	sjmp	00147$
      002B4A                        561 00590$:
                                    562 ;	../Fogger_Manager/fogger.c:123: power = value;
      002B4A 8F 74            [24]  563 	mov	_tick_fogger_power_65536_36,r7
      002B4C                        564 00147$:
                                    565 ;	../Fogger_Manager/fogger.c:126: value = get_dmx_value(DMX_M11_DURATION_INDEX);
                                    566 ;	../Fogger_Manager/fogger.c:128: if(value != duration){
      002B4C E5 2E            [12]  567 	mov	a,(_DMX + 0x0001)
      002B4E FF               [12]  568 	mov	r7,a
      002B4F B5 72 02         [24]  569 	cjne	a,_tick_fogger_duration_65536_36,00591$
      002B52 80 08            [24]  570 	sjmp	00149$
      002B54                        571 00591$:
                                    572 ;	../Fogger_Manager/fogger.c:129: duration = value;
      002B54 8F 72            [24]  573 	mov	_tick_fogger_duration_65536_36,r7
                                    574 ;	../Fogger_Manager/fogger.c:130: Timer = duration;
      002B56 85 72 6B         [24]  575 	mov	_Timer,_tick_fogger_duration_65536_36
                                    576 ;	../Fogger_Manager/fogger.c:131: Interval_Or_Duration = DURATION;
      002B59 75 6C FF         [24]  577 	mov	_Interval_Or_Duration,#0xff
      002B5C                        578 00149$:
                                    579 ;	../Fogger_Manager/fogger.c:134: value = get_dmx_value(DMX_M11_INTERVAL_INDEX);
                                    580 ;	../Fogger_Manager/fogger.c:136: if(value != interval){
      002B5C E5 2F            [12]  581 	mov	a,(_DMX + 0x0002)
      002B5E FF               [12]  582 	mov	r7,a
      002B5F B5 73 02         [24]  583 	cjne	a,_tick_fogger_interval_65536_36,00592$
      002B62 80 05            [24]  584 	sjmp	00151$
      002B64                        585 00592$:
                                    586 ;	../Fogger_Manager/fogger.c:137: interval = value;
      002B64 8F 73            [24]  587 	mov	_tick_fogger_interval_65536_36,r7
                                    588 ;	../Fogger_Manager/fogger.c:138: Playing = RESET;
      002B66 75 6D 02         [24]  589 	mov	_Playing,#0x02
      002B69                        590 00151$:
                                    591 ;	../Fogger_Manager/fogger.c:141: value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);
                                    592 ;	../Fogger_Manager/fogger.c:143: if(value >= DMX_HEATER_OFF){
      002B69 74 80            [12]  593 	mov	a,#0x100 - 0x80
      002B6B 25 37            [12]  594 	add	a,(_DMX + 0x000a)
      002B6D 40 03            [24]  595 	jc	00593$
      002B6F 02 2D 10         [24]  596 	ljmp	00234$
      002B72                        597 00593$:
                                    598 ;	../Fogger_Manager/fogger.c:144: power_heater(HEATER_DISABLE);
      002B72 75 82 01         [24]  599 	mov	dpl,#0x01
      002B75 12 2E 08         [24]  600 	lcall	_power_heater
      002B78 02 2D 10         [24]  601 	ljmp	00234$
      002B7B                        602 00221$:
                                    603 ;	../Fogger_Manager/fogger.c:151: value = get_dmx_value(DMX_M1_FOG_INDEX);
      002B7B AF 2D            [24]  604 	mov	r7,_DMX
                                    605 ;	../Fogger_Manager/fogger.c:154: if(value < DMX_FOG_OFF){
      002B7D BF 14 00         [24]  606 	cjne	r7,#0x14,00594$
      002B80                        607 00594$:
      002B80 50 06            [24]  608 	jnc	00218$
                                    609 ;	../Fogger_Manager/fogger.c:155: Playing = PAUSE;
      002B82 75 6D 00         [24]  610 	mov	_Playing,#0x00
      002B85 02 2D 10         [24]  611 	ljmp	00234$
      002B88                        612 00218$:
                                    613 ;	../Fogger_Manager/fogger.c:157: } else if(value < DMX_FOG_3_13){
      002B88 BF 28 00         [24]  614 	cjne	r7,#0x28,00596$
      002B8B                        615 00596$:
      002B8B 50 19            [24]  616 	jnc	00215$
                                    617 ;	../Fogger_Manager/fogger.c:158: if(duration != 3 || interval != 13){
      002B8D 74 03            [12]  618 	mov	a,#0x03
      002B8F B5 72 08         [24]  619 	cjne	a,_tick_fogger_duration_65536_36,00154$
      002B92 74 0D            [12]  620 	mov	a,#0x0d
      002B94 B5 73 03         [24]  621 	cjne	a,_tick_fogger_interval_65536_36,00600$
      002B97 02 2D 10         [24]  622 	ljmp	00234$
      002B9A                        623 00600$:
      002B9A                        624 00154$:
                                    625 ;	../Fogger_Manager/fogger.c:159: duration = 3;
      002B9A 75 72 03         [24]  626 	mov	_tick_fogger_duration_65536_36,#0x03
                                    627 ;	../Fogger_Manager/fogger.c:160: interval = 13;
      002B9D 75 73 0D         [24]  628 	mov	_tick_fogger_interval_65536_36,#0x0d
                                    629 ;	../Fogger_Manager/fogger.c:161: Playing = RESET;
      002BA0 75 6D 02         [24]  630 	mov	_Playing,#0x02
      002BA3 02 2D 10         [24]  631 	ljmp	00234$
      002BA6                        632 00215$:
                                    633 ;	../Fogger_Manager/fogger.c:163: } else if(value < DMX_FOG_3_21){
      002BA6 BF 3C 00         [24]  634 	cjne	r7,#0x3c,00601$
      002BA9                        635 00601$:
      002BA9 50 19            [24]  636 	jnc	00212$
                                    637 ;	../Fogger_Manager/fogger.c:164: if(duration != 3 || interval != 21){
      002BAB 74 03            [12]  638 	mov	a,#0x03
      002BAD B5 72 08         [24]  639 	cjne	a,_tick_fogger_duration_65536_36,00157$
      002BB0 74 15            [12]  640 	mov	a,#0x15
      002BB2 B5 73 03         [24]  641 	cjne	a,_tick_fogger_interval_65536_36,00605$
      002BB5 02 2D 10         [24]  642 	ljmp	00234$
      002BB8                        643 00605$:
      002BB8                        644 00157$:
                                    645 ;	../Fogger_Manager/fogger.c:165: duration = 3;
      002BB8 75 72 03         [24]  646 	mov	_tick_fogger_duration_65536_36,#0x03
                                    647 ;	../Fogger_Manager/fogger.c:166: interval = 21;
      002BBB 75 73 15         [24]  648 	mov	_tick_fogger_interval_65536_36,#0x15
                                    649 ;	../Fogger_Manager/fogger.c:167: Playing = RESET;
      002BBE 75 6D 02         [24]  650 	mov	_Playing,#0x02
      002BC1 02 2D 10         [24]  651 	ljmp	00234$
      002BC4                        652 00212$:
                                    653 ;	../Fogger_Manager/fogger.c:169: } else if(value < DMX_FOG_3_34){
      002BC4 BF 50 00         [24]  654 	cjne	r7,#0x50,00606$
      002BC7                        655 00606$:
      002BC7 50 19            [24]  656 	jnc	00209$
                                    657 ;	../Fogger_Manager/fogger.c:170: if(duration != 3 || interval != 34){
      002BC9 74 03            [12]  658 	mov	a,#0x03
      002BCB B5 72 08         [24]  659 	cjne	a,_tick_fogger_duration_65536_36,00160$
      002BCE 74 22            [12]  660 	mov	a,#0x22
      002BD0 B5 73 03         [24]  661 	cjne	a,_tick_fogger_interval_65536_36,00610$
      002BD3 02 2D 10         [24]  662 	ljmp	00234$
      002BD6                        663 00610$:
      002BD6                        664 00160$:
                                    665 ;	../Fogger_Manager/fogger.c:171: duration = 3;
      002BD6 75 72 03         [24]  666 	mov	_tick_fogger_duration_65536_36,#0x03
                                    667 ;	../Fogger_Manager/fogger.c:172: interval = 34;
      002BD9 75 73 22         [24]  668 	mov	_tick_fogger_interval_65536_36,#0x22
                                    669 ;	../Fogger_Manager/fogger.c:173: Playing = RESET;
      002BDC 75 6D 02         [24]  670 	mov	_Playing,#0x02
      002BDF 02 2D 10         [24]  671 	ljmp	00234$
      002BE2                        672 00209$:
                                    673 ;	../Fogger_Manager/fogger.c:175: } else if(value < DMX_FOG_3_55){
      002BE2 BF 64 00         [24]  674 	cjne	r7,#0x64,00611$
      002BE5                        675 00611$:
      002BE5 50 19            [24]  676 	jnc	00206$
                                    677 ;	../Fogger_Manager/fogger.c:176: if(duration != 3 || interval != 55){
      002BE7 74 03            [12]  678 	mov	a,#0x03
      002BE9 B5 72 08         [24]  679 	cjne	a,_tick_fogger_duration_65536_36,00163$
      002BEC 74 37            [12]  680 	mov	a,#0x37
      002BEE B5 73 03         [24]  681 	cjne	a,_tick_fogger_interval_65536_36,00615$
      002BF1 02 2D 10         [24]  682 	ljmp	00234$
      002BF4                        683 00615$:
      002BF4                        684 00163$:
                                    685 ;	../Fogger_Manager/fogger.c:177: duration = 3;
      002BF4 75 72 03         [24]  686 	mov	_tick_fogger_duration_65536_36,#0x03
                                    687 ;	../Fogger_Manager/fogger.c:178: interval = 55;
      002BF7 75 73 37         [24]  688 	mov	_tick_fogger_interval_65536_36,#0x37
                                    689 ;	../Fogger_Manager/fogger.c:179: Playing = RESET;
      002BFA 75 6D 02         [24]  690 	mov	_Playing,#0x02
      002BFD 02 2D 10         [24]  691 	ljmp	00234$
      002C00                        692 00206$:
                                    693 ;	../Fogger_Manager/fogger.c:181: } else if(value < DMX_FOG_8_21){
      002C00 BF 78 00         [24]  694 	cjne	r7,#0x78,00616$
      002C03                        695 00616$:
      002C03 50 19            [24]  696 	jnc	00203$
                                    697 ;	../Fogger_Manager/fogger.c:182: if(duration != 8 || interval != 21){
      002C05 74 08            [12]  698 	mov	a,#0x08
      002C07 B5 72 08         [24]  699 	cjne	a,_tick_fogger_duration_65536_36,00166$
      002C0A 74 15            [12]  700 	mov	a,#0x15
      002C0C B5 73 03         [24]  701 	cjne	a,_tick_fogger_interval_65536_36,00620$
      002C0F 02 2D 10         [24]  702 	ljmp	00234$
      002C12                        703 00620$:
      002C12                        704 00166$:
                                    705 ;	../Fogger_Manager/fogger.c:183: duration = 8;
      002C12 75 72 08         [24]  706 	mov	_tick_fogger_duration_65536_36,#0x08
                                    707 ;	../Fogger_Manager/fogger.c:184: interval = 21;
      002C15 75 73 15         [24]  708 	mov	_tick_fogger_interval_65536_36,#0x15
                                    709 ;	../Fogger_Manager/fogger.c:185: Playing = RESET;
      002C18 75 6D 02         [24]  710 	mov	_Playing,#0x02
      002C1B 02 2D 10         [24]  711 	ljmp	00234$
      002C1E                        712 00203$:
                                    713 ;	../Fogger_Manager/fogger.c:187: } else if(value < DMX_FOG_8_34){
      002C1E BF 8C 00         [24]  714 	cjne	r7,#0x8c,00621$
      002C21                        715 00621$:
      002C21 50 19            [24]  716 	jnc	00200$
                                    717 ;	../Fogger_Manager/fogger.c:188: if(duration != 8 || interval != 34){
      002C23 74 08            [12]  718 	mov	a,#0x08
      002C25 B5 72 08         [24]  719 	cjne	a,_tick_fogger_duration_65536_36,00169$
      002C28 74 22            [12]  720 	mov	a,#0x22
      002C2A B5 73 03         [24]  721 	cjne	a,_tick_fogger_interval_65536_36,00625$
      002C2D 02 2D 10         [24]  722 	ljmp	00234$
      002C30                        723 00625$:
      002C30                        724 00169$:
                                    725 ;	../Fogger_Manager/fogger.c:189: duration = 8;
      002C30 75 72 08         [24]  726 	mov	_tick_fogger_duration_65536_36,#0x08
                                    727 ;	../Fogger_Manager/fogger.c:190: interval = 34;
      002C33 75 73 22         [24]  728 	mov	_tick_fogger_interval_65536_36,#0x22
                                    729 ;	../Fogger_Manager/fogger.c:191: Playing = RESET;
      002C36 75 6D 02         [24]  730 	mov	_Playing,#0x02
      002C39 02 2D 10         [24]  731 	ljmp	00234$
      002C3C                        732 00200$:
                                    733 ;	../Fogger_Manager/fogger.c:193: } else if(value < DMX_FOG_8_55){
      002C3C BF A0 00         [24]  734 	cjne	r7,#0xa0,00626$
      002C3F                        735 00626$:
      002C3F 50 19            [24]  736 	jnc	00197$
                                    737 ;	../Fogger_Manager/fogger.c:194: if(duration != 8 || interval != 55){
      002C41 74 08            [12]  738 	mov	a,#0x08
      002C43 B5 72 08         [24]  739 	cjne	a,_tick_fogger_duration_65536_36,00172$
      002C46 74 37            [12]  740 	mov	a,#0x37
      002C48 B5 73 03         [24]  741 	cjne	a,_tick_fogger_interval_65536_36,00630$
      002C4B 02 2D 10         [24]  742 	ljmp	00234$
      002C4E                        743 00630$:
      002C4E                        744 00172$:
                                    745 ;	../Fogger_Manager/fogger.c:195: duration = 8;
      002C4E 75 72 08         [24]  746 	mov	_tick_fogger_duration_65536_36,#0x08
                                    747 ;	../Fogger_Manager/fogger.c:196: interval = 55;
      002C51 75 73 37         [24]  748 	mov	_tick_fogger_interval_65536_36,#0x37
                                    749 ;	../Fogger_Manager/fogger.c:197: Playing = RESET;
      002C54 75 6D 02         [24]  750 	mov	_Playing,#0x02
      002C57 02 2D 10         [24]  751 	ljmp	00234$
      002C5A                        752 00197$:
                                    753 ;	../Fogger_Manager/fogger.c:199: } else if(value < DMX_FOG_8_89){
      002C5A BF B4 00         [24]  754 	cjne	r7,#0xb4,00631$
      002C5D                        755 00631$:
      002C5D 50 19            [24]  756 	jnc	00194$
                                    757 ;	../Fogger_Manager/fogger.c:200: if(duration != 8 || interval != 89){
      002C5F 74 08            [12]  758 	mov	a,#0x08
      002C61 B5 72 08         [24]  759 	cjne	a,_tick_fogger_duration_65536_36,00175$
      002C64 74 59            [12]  760 	mov	a,#0x59
      002C66 B5 73 03         [24]  761 	cjne	a,_tick_fogger_interval_65536_36,00635$
      002C69 02 2D 10         [24]  762 	ljmp	00234$
      002C6C                        763 00635$:
      002C6C                        764 00175$:
                                    765 ;	../Fogger_Manager/fogger.c:201: duration = 8;
      002C6C 75 72 08         [24]  766 	mov	_tick_fogger_duration_65536_36,#0x08
                                    767 ;	../Fogger_Manager/fogger.c:202: interval = 89;
      002C6F 75 73 59         [24]  768 	mov	_tick_fogger_interval_65536_36,#0x59
                                    769 ;	../Fogger_Manager/fogger.c:203: Playing = RESET;
      002C72 75 6D 02         [24]  770 	mov	_Playing,#0x02
      002C75 02 2D 10         [24]  771 	ljmp	00234$
      002C78                        772 00194$:
                                    773 ;	../Fogger_Manager/fogger.c:205: } else if(value < DMX_FOG_8_144){
      002C78 BF C8 00         [24]  774 	cjne	r7,#0xc8,00636$
      002C7B                        775 00636$:
      002C7B 50 19            [24]  776 	jnc	00191$
                                    777 ;	../Fogger_Manager/fogger.c:206: if(duration != 8 || interval != 144){
      002C7D 74 08            [12]  778 	mov	a,#0x08
      002C7F B5 72 08         [24]  779 	cjne	a,_tick_fogger_duration_65536_36,00178$
      002C82 74 90            [12]  780 	mov	a,#0x90
      002C84 B5 73 03         [24]  781 	cjne	a,_tick_fogger_interval_65536_36,00640$
      002C87 02 2D 10         [24]  782 	ljmp	00234$
      002C8A                        783 00640$:
      002C8A                        784 00178$:
                                    785 ;	../Fogger_Manager/fogger.c:207: duration = 8;
      002C8A 75 72 08         [24]  786 	mov	_tick_fogger_duration_65536_36,#0x08
                                    787 ;	../Fogger_Manager/fogger.c:208: interval = 144;
      002C8D 75 73 90         [24]  788 	mov	_tick_fogger_interval_65536_36,#0x90
                                    789 ;	../Fogger_Manager/fogger.c:209: Playing = RESET;
      002C90 75 6D 02         [24]  790 	mov	_Playing,#0x02
      002C93 02 2D 10         [24]  791 	ljmp	00234$
      002C96                        792 00191$:
                                    793 ;	../Fogger_Manager/fogger.c:211: } else if(value < DMX_FOG_21_55){
      002C96 BF DC 00         [24]  794 	cjne	r7,#0xdc,00641$
      002C99                        795 00641$:
      002C99 50 17            [24]  796 	jnc	00188$
                                    797 ;	../Fogger_Manager/fogger.c:212: if(duration != 21 || interval != 55){
      002C9B 74 15            [12]  798 	mov	a,#0x15
      002C9D B5 72 07         [24]  799 	cjne	a,_tick_fogger_duration_65536_36,00181$
      002CA0 74 37            [12]  800 	mov	a,#0x37
      002CA2 B5 73 02         [24]  801 	cjne	a,_tick_fogger_interval_65536_36,00645$
      002CA5 80 69            [24]  802 	sjmp	00234$
      002CA7                        803 00645$:
      002CA7                        804 00181$:
                                    805 ;	../Fogger_Manager/fogger.c:213: duration = 21;
      002CA7 75 72 15         [24]  806 	mov	_tick_fogger_duration_65536_36,#0x15
                                    807 ;	../Fogger_Manager/fogger.c:214: interval = 55;
      002CAA 75 73 37         [24]  808 	mov	_tick_fogger_interval_65536_36,#0x37
                                    809 ;	../Fogger_Manager/fogger.c:215: Playing = RESET;
      002CAD 75 6D 02         [24]  810 	mov	_Playing,#0x02
      002CB0 80 5E            [24]  811 	sjmp	00234$
      002CB2                        812 00188$:
                                    813 ;	../Fogger_Manager/fogger.c:218: if(duration !=  0 || interval != 0){
      002CB2 E5 72            [12]  814 	mov	a,_tick_fogger_duration_65536_36
      002CB4 70 04            [24]  815 	jnz	00184$
      002CB6 E5 73            [12]  816 	mov	a,_tick_fogger_interval_65536_36
      002CB8 60 56            [24]  817 	jz	00234$
      002CBA                        818 00184$:
                                    819 ;	../Fogger_Manager/fogger.c:219: duration = 0;
      002CBA 75 72 00         [24]  820 	mov	_tick_fogger_duration_65536_36,#0x00
                                    821 ;	../Fogger_Manager/fogger.c:220: interval = 0;
      002CBD 75 73 00         [24]  822 	mov	_tick_fogger_interval_65536_36,#0x00
                                    823 ;	../Fogger_Manager/fogger.c:221: Playing = RESET;
      002CC0 75 6D 02         [24]  824 	mov	_Playing,#0x02
      002CC3 80 4B            [24]  825 	sjmp	00234$
      002CC5                        826 00224$:
                                    827 ;	../Fogger_Manager/fogger.c:227: Playing = RESET;
      002CC5 75 6D 02         [24]  828 	mov	_Playing,#0x02
      002CC8 80 46            [24]  829 	sjmp	00234$
      002CCA                        830 00233$:
                                    831 ;	../Fogger_Manager/fogger.c:230: value = get_runtime_data(FOG_POWER_INDEX);
      002CCA 75 82 00         [24]  832 	mov	dpl,#0x00
      002CCD 12 28 C8         [24]  833 	lcall	_get_runtime_data
      002CD0 AF 82            [24]  834 	mov	r7,dpl
                                    835 ;	../Fogger_Manager/fogger.c:234: value = 0x01 << value;
      002CD2 8F F0            [24]  836 	mov	b,r7
      002CD4 05 F0            [12]  837 	inc	b
      002CD6 74 01            [12]  838 	mov	a,#0x01
      002CD8 80 02            [24]  839 	sjmp	00650$
      002CDA                        840 00648$:
      002CDA 25 E0            [12]  841 	add	a,acc
      002CDC                        842 00650$:
      002CDC D5 F0 FB         [24]  843 	djnz	b,00648$
                                    844 ;	../Fogger_Manager/fogger.c:236: if(value != power){
      002CDF FF               [12]  845 	mov	r7,a
      002CE0 B5 74 02         [24]  846 	cjne	a,_tick_fogger_power_65536_36,00651$
      002CE3 80 05            [24]  847 	sjmp	00227$
      002CE5                        848 00651$:
                                    849 ;	../Fogger_Manager/fogger.c:237: power = value;
      002CE5 8F 74            [24]  850 	mov	_tick_fogger_power_65536_36,r7
                                    851 ;	../Fogger_Manager/fogger.c:238: Playing = RESET;
      002CE7 75 6D 02         [24]  852 	mov	_Playing,#0x02
      002CEA                        853 00227$:
                                    854 ;	../Fogger_Manager/fogger.c:241: value = get_runtime_data(FOG_DURATION_INDEX);
      002CEA 75 82 01         [24]  855 	mov	dpl,#0x01
      002CED 12 28 C8         [24]  856 	lcall	_get_runtime_data
                                    857 ;	../Fogger_Manager/fogger.c:243: if(value != duration){
      002CF0 E5 82            [12]  858 	mov	a,dpl
      002CF2 FF               [12]  859 	mov	r7,a
      002CF3 B5 72 02         [24]  860 	cjne	a,_tick_fogger_duration_65536_36,00652$
      002CF6 80 05            [24]  861 	sjmp	00229$
      002CF8                        862 00652$:
                                    863 ;	../Fogger_Manager/fogger.c:244: duration = value;
      002CF8 8F 72            [24]  864 	mov	_tick_fogger_duration_65536_36,r7
                                    865 ;	../Fogger_Manager/fogger.c:245: Playing = RESET;
      002CFA 75 6D 02         [24]  866 	mov	_Playing,#0x02
      002CFD                        867 00229$:
                                    868 ;	../Fogger_Manager/fogger.c:248: value = get_runtime_data(FOG_INTERVAL_INDEX);
      002CFD 75 82 02         [24]  869 	mov	dpl,#0x02
      002D00 12 28 C8         [24]  870 	lcall	_get_runtime_data
                                    871 ;	../Fogger_Manager/fogger.c:250: if(value != interval){
      002D03 E5 82            [12]  872 	mov	a,dpl
      002D05 FF               [12]  873 	mov	r7,a
      002D06 B5 73 02         [24]  874 	cjne	a,_tick_fogger_interval_65536_36,00653$
      002D09 80 05            [24]  875 	sjmp	00234$
      002D0B                        876 00653$:
                                    877 ;	../Fogger_Manager/fogger.c:251: interval = value;
      002D0B 8F 73            [24]  878 	mov	_tick_fogger_interval_65536_36,r7
                                    879 ;	../Fogger_Manager/fogger.c:252: Playing = RESET;
      002D0D 75 6D 02         [24]  880 	mov	_Playing,#0x02
      002D10                        881 00234$:
                                    882 ;	../Fogger_Manager/fogger.c:257: if(Playing == RESET){
      002D10 74 02            [12]  883 	mov	a,#0x02
      002D12 B5 6D 09         [24]  884 	cjne	a,_Playing,00236$
                                    885 ;	../Fogger_Manager/fogger.c:258: Playing = PAUSE;
      002D15 75 6D 00         [24]  886 	mov	_Playing,#0x00
                                    887 ;	../Fogger_Manager/fogger.c:259: Timer = interval;
      002D18 85 73 6B         [24]  888 	mov	_Timer,_tick_fogger_interval_65536_36
                                    889 ;	../Fogger_Manager/fogger.c:260: Interval_Or_Duration = INTERVAL;
      002D1B 75 6C 00         [24]  890 	mov	_Interval_Or_Duration,#0x00
      002D1E                        891 00236$:
                                    892 ;	../Fogger_Manager/fogger.c:264: if(Playing){
      002D1E E5 6D            [12]  893 	mov	a,_Playing
      002D20 70 03            [24]  894 	jnz	00656$
      002D22 02 2D BB         [24]  895 	ljmp	00257$
      002D25                        896 00656$:
                                    897 ;	../Fogger_Manager/fogger.c:265: tock++;
      002D25 05 75            [12]  898 	inc	_tick_fogger_tock_65536_36
                                    899 ;	../Fogger_Manager/fogger.c:267: if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
      002D27 75 82 10         [24]  900 	mov	dpl,#0x10
      002D2A 12 28 C8         [24]  901 	lcall	_get_runtime_data
      002D2D E5 82            [12]  902 	mov	a,dpl
      002D2F 70 1E            [24]  903 	jnz	00252$
                                    904 ;	../Fogger_Manager/fogger.c:268: && (!duration || !interval)){
      002D31 E5 72            [12]  905 	mov	a,_tick_fogger_duration_65536_36
      002D33 60 04            [24]  906 	jz	00251$
      002D35 E5 73            [12]  907 	mov	a,_tick_fogger_interval_65536_36
      002D37 70 16            [24]  908 	jnz	00252$
      002D39                        909 00251$:
                                    910 ;	../Fogger_Manager/fogger.c:270: if(!(tock % power)){
      002D39 85 74 F0         [24]  911 	mov	b,_tick_fogger_power_65536_36
      002D3C E5 75            [12]  912 	mov	a,_tick_fogger_tock_65536_36
      002D3E 84               [48]  913 	div	ab
      002D3F E5 F0            [12]  914 	mov	a,b
      002D41 70 06            [24]  915 	jnz	00238$
                                    916 ;	../Fogger_Manager/fogger.c:271: power_pump(PUMP_ON);
      002D43 75 82 01         [24]  917 	mov	dpl,#0x01
      002D46 02 2D C1         [24]  918 	ljmp	_power_pump
      002D49                        919 00238$:
                                    920 ;	../Fogger_Manager/fogger.c:273: power_pump(PUMP_OFF);
      002D49 75 82 00         [24]  921 	mov	dpl,#0x00
      002D4C 02 2D C1         [24]  922 	ljmp	_power_pump
      002D4F                        923 00252$:
                                    924 ;	../Fogger_Manager/fogger.c:277: if(!(tock % 8)){
      002D4F AE 75            [24]  925 	mov	r6,_tick_fogger_tock_65536_36
      002D51 7F 00            [12]  926 	mov	r7,#0x00
      002D53 75 76 08         [24]  927 	mov	__modsint_PARM_2,#0x08
                                    928 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      002D56 8F 77            [24]  929 	mov	(__modsint_PARM_2 + 1),r7
      002D58 8E 82            [24]  930 	mov	dpl,r6
      002D5A 8F 83            [24]  931 	mov	dph,r7
      002D5C 12 2F 4B         [24]  932 	lcall	__modsint
      002D5F E5 82            [12]  933 	mov	a,dpl
      002D61 85 83 F0         [24]  934 	mov	b,dph
      002D64 45 F0            [12]  935 	orl	a,b
      002D66 70 02            [24]  936 	jnz	00241$
                                    937 ;	../Fogger_Manager/fogger.c:278: Timer--;
      002D68 15 6B            [12]  938 	dec	_Timer
      002D6A                        939 00241$:
                                    940 ;	../Fogger_Manager/fogger.c:281: if(Timer == 0x00){
      002D6A E5 6B            [12]  941 	mov	a,_Timer
      002D6C 70 2E            [24]  942 	jnz	00249$
                                    943 ;	../Fogger_Manager/fogger.c:282: power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
      002D6E E5 6C            [12]  944 	mov	a,_Interval_Or_Duration
      002D70 70 05            [24]  945 	jnz	00261$
      002D72 7E 01            [12]  946 	mov	r6,#0x01
      002D74 FF               [12]  947 	mov	r7,a
      002D75 80 04            [24]  948 	sjmp	00262$
      002D77                        949 00261$:
      002D77 7E 00            [12]  950 	mov	r6,#0x00
      002D79 7F 00            [12]  951 	mov	r7,#0x00
      002D7B                        952 00262$:
      002D7B 8E 82            [24]  953 	mov	dpl,r6
      002D7D 12 2D C1         [24]  954 	lcall	_power_pump
                                    955 ;	../Fogger_Manager/fogger.c:283: Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
      002D80 E5 6C            [12]  956 	mov	a,_Interval_Or_Duration
      002D82 70 04            [24]  957 	jnz	00263$
      002D84 AF 72            [24]  958 	mov	r7,_tick_fogger_duration_65536_36
      002D86 80 02            [24]  959 	sjmp	00264$
      002D88                        960 00263$:
      002D88 AF 73            [24]  961 	mov	r7,_tick_fogger_interval_65536_36
      002D8A                        962 00264$:
      002D8A 8F 6B            [24]  963 	mov	_Timer,r7
                                    964 ;	../Fogger_Manager/fogger.c:284: Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
      002D8C E5 6C            [12]  965 	mov	a,_Interval_Or_Duration
      002D8E 70 05            [24]  966 	jnz	00265$
      002D90 7E FF            [12]  967 	mov	r6,#0xff
      002D92 FF               [12]  968 	mov	r7,a
      002D93 80 04            [24]  969 	sjmp	00266$
      002D95                        970 00265$:
      002D95 7E 00            [12]  971 	mov	r6,#0x00
      002D97 7F 00            [12]  972 	mov	r7,#0x00
      002D99                        973 00266$:
      002D99 8E 6C            [24]  974 	mov	_Interval_Or_Duration,r6
      002D9B 22               [24]  975 	ret
      002D9C                        976 00249$:
                                    977 ;	../Fogger_Manager/fogger.c:286: if(Interval_Or_Duration == INTERVAL){
      002D9C E5 6C            [12]  978 	mov	a,_Interval_Or_Duration
                                    979 ;	../Fogger_Manager/fogger.c:287: power_pump(PUMP_OFF);
      002D9E 70 05            [24]  980 	jnz	00246$
      002DA0 F5 82            [12]  981 	mov	dpl,a
      002DA2 02 2D C1         [24]  982 	ljmp	_power_pump
      002DA5                        983 00246$:
                                    984 ;	../Fogger_Manager/fogger.c:289: if(!(tock % power)){
      002DA5 85 74 F0         [24]  985 	mov	b,_tick_fogger_power_65536_36
      002DA8 E5 75            [12]  986 	mov	a,_tick_fogger_tock_65536_36
      002DAA 84               [48]  987 	div	ab
      002DAB E5 F0            [12]  988 	mov	a,b
      002DAD 70 06            [24]  989 	jnz	00243$
                                    990 ;	../Fogger_Manager/fogger.c:290: power_pump(PUMP_ON);
      002DAF 75 82 01         [24]  991 	mov	dpl,#0x01
      002DB2 02 2D C1         [24]  992 	ljmp	_power_pump
      002DB5                        993 00243$:
                                    994 ;	../Fogger_Manager/fogger.c:292: power_pump(PUMP_OFF);
      002DB5 75 82 00         [24]  995 	mov	dpl,#0x00
      002DB8 02 2D C1         [24]  996 	ljmp	_power_pump
      002DBB                        997 00257$:
                                    998 ;	../Fogger_Manager/fogger.c:300: power_pump(PUMP_OFF);
      002DBB 75 82 00         [24]  999 	mov	dpl,#0x00
                                   1000 ;	../Fogger_Manager/fogger.c:303: }
      002DBE 02 2D C1         [24] 1001 	ljmp	_power_pump
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'power_pump'
                                   1004 ;------------------------------------------------------------
                                   1005 ;action                    Allocated to registers r7 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	../Fogger_Manager/fogger.c:305: void power_pump(uint8_t action){
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function power_pump
                                   1010 ;	-----------------------------------------
      002DC1                       1011 _power_pump:
      002DC1 AF 82            [24] 1012 	mov	r7,dpl
                                   1013 ;	../Fogger_Manager/fogger.c:306: switch (action)
      002DC3 BF 01 02         [24] 1014 	cjne	r7,#0x01,00139$
      002DC6 80 0A            [24] 1015 	sjmp	00101$
      002DC8                       1016 00139$:
      002DC8 BF 02 02         [24] 1017 	cjne	r7,#0x02,00140$
      002DCB 80 1F            [24] 1018 	sjmp	00106$
      002DCD                       1019 00140$:
                                   1020 ;	../Fogger_Manager/fogger.c:308: case PUMP_ON:
      002DCD BF 03 35         [24] 1021 	cjne	r7,#0x03,00111$
      002DD0 80 30            [24] 1022 	sjmp	00110$
      002DD2                       1023 00101$:
                                   1024 ;	../Fogger_Manager/fogger.c:309: if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
      002DD2 E5 6F            [12] 1025 	mov	a,_Fluid_Level
      002DD4 60 13            [24] 1026 	jz	00103$
      002DD6 AE 6E            [24] 1027 	mov	r6,_Heat_Flag
      002DD8 53 06 80         [24] 1028 	anl	ar6,#0x80
      002DDB 7F 00            [12] 1029 	mov	r7,#0x00
      002DDD BE 80 09         [24] 1030 	cjne	r6,#0x80,00103$
      002DE0 BF 00 06         [24] 1031 	cjne	r7,#0x00,00103$
                                   1032 ;	../Fogger_Manager/fogger.c:310: P2_5 = 0;
                                   1033 ;	assignBit
      002DE3 C2 A5            [12] 1034 	clr	_P2_5
                                   1035 ;	../Fogger_Manager/fogger.c:311: Heat_Flag &= ~HOT_FLAG;
      002DE5 53 6E FD         [24] 1036 	anl	_Heat_Flag,#0xfd
      002DE8 22               [24] 1037 	ret
      002DE9                       1038 00103$:
                                   1039 ;	../Fogger_Manager/fogger.c:313: P2_5 = 1;
                                   1040 ;	assignBit
      002DE9 D2 A5            [12] 1041 	setb	_P2_5
                                   1042 ;	../Fogger_Manager/fogger.c:315: break;
                                   1043 ;	../Fogger_Manager/fogger.c:316: case PUMP_OVERRIDE:
      002DEB 22               [24] 1044 	ret
      002DEC                       1045 00106$:
                                   1046 ;	../Fogger_Manager/fogger.c:317: if(get_heated() == HEATED){
      002DEC AE 6E            [24] 1047 	mov	r6,_Heat_Flag
      002DEE 53 06 80         [24] 1048 	anl	ar6,#0x80
      002DF1 7F 00            [12] 1049 	mov	r7,#0x00
      002DF3 BE 80 09         [24] 1050 	cjne	r6,#0x80,00108$
      002DF6 BF 00 06         [24] 1051 	cjne	r7,#0x00,00108$
                                   1052 ;	../Fogger_Manager/fogger.c:318: P2_5 = 0;
                                   1053 ;	assignBit
      002DF9 C2 A5            [12] 1054 	clr	_P2_5
                                   1055 ;	../Fogger_Manager/fogger.c:319: Heat_Flag &= ~HOT_FLAG;
      002DFB 53 6E FD         [24] 1056 	anl	_Heat_Flag,#0xfd
      002DFE 22               [24] 1057 	ret
      002DFF                       1058 00108$:
                                   1059 ;	../Fogger_Manager/fogger.c:321: P2_5 = 1;
                                   1060 ;	assignBit
      002DFF D2 A5            [12] 1061 	setb	_P2_5
                                   1062 ;	../Fogger_Manager/fogger.c:323: break;
                                   1063 ;	../Fogger_Manager/fogger.c:324: case PUMP_MASTER_OVERRIDE:
      002E01 22               [24] 1064 	ret
      002E02                       1065 00110$:
                                   1066 ;	../Fogger_Manager/fogger.c:325: P2_5 = 0;
                                   1067 ;	assignBit
      002E02 C2 A5            [12] 1068 	clr	_P2_5
                                   1069 ;	../Fogger_Manager/fogger.c:326: break;
                                   1070 ;	../Fogger_Manager/fogger.c:327: default:
      002E04 22               [24] 1071 	ret
      002E05                       1072 00111$:
                                   1073 ;	../Fogger_Manager/fogger.c:328: P2_5 = 1;
                                   1074 ;	assignBit
      002E05 D2 A5            [12] 1075 	setb	_P2_5
                                   1076 ;	../Fogger_Manager/fogger.c:330: }
                                   1077 ;	../Fogger_Manager/fogger.c:331: }
      002E07 22               [24] 1078 	ret
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'power_heater'
                                   1081 ;------------------------------------------------------------
                                   1082 ;action                    Allocated to registers r7 
                                   1083 ;------------------------------------------------------------
                                   1084 ;	../Fogger_Manager/fogger.c:333: void power_heater(uint8_t action){
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function power_heater
                                   1087 ;	-----------------------------------------
      002E08                       1088 _power_heater:
      002E08 AF 82            [24] 1089 	mov	r7,dpl
                                   1090 ;	../Fogger_Manager/fogger.c:334: switch (action)
      002E0A BF 01 08         [24] 1091 	cjne	r7,#0x01,00102$
                                   1092 ;	../Fogger_Manager/fogger.c:337: Heat_Flag |= HEAT_DISABLE_FLAG;
      002E0D AE 6E            [24] 1093 	mov	r6,_Heat_Flag
      002E0F 43 06 10         [24] 1094 	orl	ar6,#0x10
      002E12 8E 6E            [24] 1095 	mov	_Heat_Flag,r6
                                   1096 ;	../Fogger_Manager/fogger.c:338: break;
                                   1097 ;	../Fogger_Manager/fogger.c:339: default:
      002E14 22               [24] 1098 	ret
      002E15                       1099 00102$:
                                   1100 ;	../Fogger_Manager/fogger.c:340: Heat_Flag &= ~HEAT_DISABLE_FLAG;
      002E15 53 6E EF         [24] 1101 	anl	_Heat_Flag,#0xef
                                   1102 ;	../Fogger_Manager/fogger.c:342: }
                                   1103 ;	../Fogger_Manager/fogger.c:343: }
      002E18 22               [24] 1104 	ret
                                   1105 	.area CSEG    (CODE)
                                   1106 	.area CONST   (CODE)
                                   1107 	.area XINIT   (CODE)
                                   1108 	.area CABS    (ABS,CODE)
