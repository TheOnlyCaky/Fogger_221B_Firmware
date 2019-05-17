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
                                     11 	.globl _save_load_settings_PARM_2
                                     12 	.globl _Init_Data
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
                                     98 	.globl _IAP_AUX
                                     99 	.globl _set_runtime_data_PARM_3
                                    100 	.globl _set_runtime_data_PARM_2
                                    101 	.globl _save_load_settings
                                    102 	.globl _get_runtime_data
                                    103 	.globl _set_runtime_data
                                    104 	.globl _set_dmx_address
                                    105 	.globl _get_dmx_address
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
      000055                        210 _Runtime_Data:
      000055                        211 	.ds 16
      000065                        212 _set_runtime_data_PARM_2:
      000065                        213 	.ds 1
      000066                        214 _set_runtime_data_PARM_3:
      000066                        215 	.ds 1
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable items in internal ram 
                                    218 ;--------------------------------------------------------
                                    219 	.area	OSEG    (OVR,DATA)
      000072                        220 _save_load_settings_PARM_2:
      000072                        221 	.ds 1
                                    222 	.area	OSEG    (OVR,DATA)
                                    223 ;--------------------------------------------------------
                                    224 ; indirectly addressable internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area ISEG    (DATA)
                                    227 ;--------------------------------------------------------
                                    228 ; absolute internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area IABS    (ABS,DATA)
                                    231 	.area IABS    (ABS,DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; bit data
                                    234 ;--------------------------------------------------------
                                    235 	.area BSEG    (BIT)
                                    236 ;--------------------------------------------------------
                                    237 ; paged external ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area PSEG    (PAG,XDATA)
                                    240 ;--------------------------------------------------------
                                    241 ; external ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area XSEG    (XDATA)
                           000100   244 _IAP_AUX	=	0x0100
                                    245 ;--------------------------------------------------------
                                    246 ; absolute external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XABS    (ABS,XDATA)
                                    249 ;--------------------------------------------------------
                                    250 ; external initialized ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area HOME    (CODE)
                                    253 	.area GSINIT0 (CODE)
                                    254 	.area GSINIT1 (CODE)
                                    255 	.area GSINIT2 (CODE)
                                    256 	.area GSINIT3 (CODE)
                                    257 	.area GSINIT4 (CODE)
                                    258 	.area GSINIT5 (CODE)
                                    259 	.area GSINIT  (CODE)
                                    260 	.area GSFINAL (CODE)
                                    261 	.area CSEG    (CODE)
                                    262 ;--------------------------------------------------------
                                    263 ; global & static initialisations
                                    264 ;--------------------------------------------------------
                                    265 	.area HOME    (CODE)
                                    266 	.area GSINIT  (CODE)
                                    267 	.area GSFINAL (CODE)
                                    268 	.area GSINIT  (CODE)
                                    269 ;--------------------------------------------------------
                                    270 ; Home
                                    271 ;--------------------------------------------------------
                                    272 	.area HOME    (CODE)
                                    273 	.area HOME    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; code
                                    276 ;--------------------------------------------------------
                                    277 	.area CSEG    (CODE)
                                    278 ;------------------------------------------------------------
                                    279 ;Allocation info for local variables in function 'save_load_settings'
                                    280 ;------------------------------------------------------------
                                    281 ;save                      Allocated with name '_save_load_settings_PARM_2'
                                    282 ;slot                      Allocated to registers r7 
                                    283 ;i                         Allocated to registers r5 
                                    284 ;------------------------------------------------------------
                                    285 ;	../Storage_Manager/storage.c:30: void save_load_settings(uint8_t slot, uint8_t save){
                                    286 ;	-----------------------------------------
                                    287 ;	 function save_load_settings
                                    288 ;	-----------------------------------------
      002714                        289 _save_load_settings:
                           000007   290 	ar7 = 0x07
                           000006   291 	ar6 = 0x06
                           000005   292 	ar5 = 0x05
                           000004   293 	ar4 = 0x04
                           000003   294 	ar3 = 0x03
                           000002   295 	ar2 = 0x02
                           000001   296 	ar1 = 0x01
                           000000   297 	ar0 = 0x00
                                    298 ;	../Storage_Manager/storage.c:33: slot = slot * CONFIG_COUNT;
      002714 E5 82            [12]  299 	mov	a,dpl
      002716 C4               [12]  300 	swap	a
      002717 54 F0            [12]  301 	anl	a,#0xf0
      002719 FF               [12]  302 	mov	r7,a
                                    303 ;	../Storage_Manager/storage.c:35: if(save == LOAD){
      00271A E5 72            [12]  304 	mov	a,_save_load_settings_PARM_2
      00271C 70 03            [24]  305 	jnz	00115$
                                    306 ;	../Storage_Manager/storage.c:36: IAPEN = IAP_Read; //read
      00271E 75 E4 A0         [24]  307 	mov	_IAPEN,#0xa0
                                    308 ;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
      002721                        309 00115$:
      002721 74 01            [12]  310 	mov	a,#0x01
      002723 B5 72 04         [24]  311 	cjne	a,_save_load_settings_PARM_2,00140$
      002726 74 01            [12]  312 	mov	a,#0x01
      002728 80 01            [24]  313 	sjmp	00141$
      00272A                        314 00140$:
      00272A E4               [12]  315 	clr	a
      00272B                        316 00141$:
      00272B FE               [12]  317 	mov	r6,a
      00272C 7D 00            [12]  318 	mov	r5,#0x00
      00272E                        319 00109$:
                                    320 ;	../Storage_Manager/storage.c:40: if(save == SAVE){
      00272E EE               [12]  321 	mov	a,r6
      00272F 60 14            [24]  322 	jz	00104$
                                    323 ;	../Storage_Manager/storage.c:41: IAP_AUX[i + slot] = Runtime_Data[i];
      002731 EF               [12]  324 	mov	a,r7
      002732 2D               [12]  325 	add	a,r5
      002733 24 00            [12]  326 	add	a,#_IAP_AUX
      002735 F5 82            [12]  327 	mov	dpl,a
      002737 E4               [12]  328 	clr	a
      002738 34 01            [12]  329 	addc	a,#(_IAP_AUX >> 8)
      00273A F5 83            [12]  330 	mov	dph,a
      00273C ED               [12]  331 	mov	a,r5
      00273D 24 55            [12]  332 	add	a,#_Runtime_Data
      00273F F9               [12]  333 	mov	r1,a
      002740 E7               [12]  334 	mov	a,@r1
      002741 FC               [12]  335 	mov	r4,a
      002742 F0               [24]  336 	movx	@dptr,a
      002743 80 12            [24]  337 	sjmp	00110$
      002745                        338 00104$:
                                    339 ;	../Storage_Manager/storage.c:43: Runtime_Data[i] = IAP_AUX[i + slot];
      002745 ED               [12]  340 	mov	a,r5
      002746 24 55            [12]  341 	add	a,#_Runtime_Data
      002748 F9               [12]  342 	mov	r1,a
      002749 EF               [12]  343 	mov	a,r7
      00274A 2D               [12]  344 	add	a,r5
      00274B 24 00            [12]  345 	add	a,#_IAP_AUX
      00274D F5 82            [12]  346 	mov	dpl,a
      00274F E4               [12]  347 	clr	a
      002750 34 01            [12]  348 	addc	a,#(_IAP_AUX >> 8)
      002752 F5 83            [12]  349 	mov	dph,a
      002754 E0               [24]  350 	movx	a,@dptr
      002755 FC               [12]  351 	mov	r4,a
      002756 F7               [12]  352 	mov	@r1,a
      002757                        353 00110$:
                                    354 ;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
      002757 0D               [12]  355 	inc	r5
      002758 BD 10 00         [24]  356 	cjne	r5,#0x10,00143$
      00275B                        357 00143$:
      00275B 40 D1            [24]  358 	jc	00109$
                                    359 ;	../Storage_Manager/storage.c:47: if(save == SAVE){
      00275D EE               [12]  360 	mov	a,r6
      00275E 60 09            [24]  361 	jz	00111$
                                    362 ;	../Storage_Manager/storage.c:48: IAPEN = IAP_Erase; //have to erase before write...
      002760 75 E4 90         [24]  363 	mov	_IAPEN,#0x90
                                    364 ;	../Storage_Manager/storage.c:49: IAPEN = IAP_Write;  
      002763 75 E4 C0         [24]  365 	mov	_IAPEN,#0xc0
                                    366 ;	../Storage_Manager/storage.c:50: Nop(); //datasheet recommend no operation following write
      002766 00               [12]  367 	nop 
      002767 00               [12]  368 	nop 
      002768 00               [12]  369 	nop 
      002769                        370 00111$:
                                    371 ;	../Storage_Manager/storage.c:52: }
      002769 22               [24]  372 	ret
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'get_runtime_data'
                                    375 ;------------------------------------------------------------
                                    376 ;index                     Allocated to registers r7 
                                    377 ;value                     Allocated to registers r6 
                                    378 ;------------------------------------------------------------
                                    379 ;	../Storage_Manager/storage.c:54: uint8_t get_runtime_data(uint8_t index){
                                    380 ;	-----------------------------------------
                                    381 ;	 function get_runtime_data
                                    382 ;	-----------------------------------------
      00276A                        383 _get_runtime_data:
      00276A AF 82            [24]  384 	mov	r7,dpl
                                    385 ;	../Storage_Manager/storage.c:57: if(index == OP_MODE_INDEX){
      00276C BF 10 07         [24]  386 	cjne	r7,#0x10,00102$
                                    387 ;	../Storage_Manager/storage.c:58: return Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
      00276F 74 80            [12]  388 	mov	a,#0x80
      002771 55 55            [12]  389 	anl	a,_Runtime_Data
      002773 F5 82            [12]  390 	mov	dpl,a
      002775 22               [24]  391 	ret
      002776                        392 00102$:
                                    393 ;	../Storage_Manager/storage.c:61: value = Runtime_Data[index];
      002776 EF               [12]  394 	mov	a,r7
      002777 24 55            [12]  395 	add	a,#_Runtime_Data
      002779 F9               [12]  396 	mov	r1,a
      00277A 87 06            [24]  397 	mov	ar6,@r1
                                    398 ;	../Storage_Manager/storage.c:63: switch (index)
      00277C EF               [12]  399 	mov	a,r7
      00277D 24 F1            [12]  400 	add	a,#0xff - 0x0e
      00277F 50 03            [24]  401 	jnc	00130$
      002781 02 27 FB         [24]  402 	ljmp	00113$
      002784                        403 00130$:
      002784 EF               [12]  404 	mov	a,r7
      002785 24 0A            [12]  405 	add	a,#(00131$-3-.)
      002787 83               [24]  406 	movc	a,@a+pc
      002788 F5 82            [12]  407 	mov	dpl,a
      00278A EF               [12]  408 	mov	a,r7
      00278B 24 13            [12]  409 	add	a,#(00132$-3-.)
      00278D 83               [24]  410 	movc	a,@a+pc
      00278E F5 83            [12]  411 	mov	dph,a
      002790 E4               [12]  412 	clr	a
      002791 73               [24]  413 	jmp	@a+dptr
      002792                        414 00131$:
      002792 B0                     415 	.db	00103$
      002793 C3                     416 	.db	00105$
      002794 C3                     417 	.db	00105$
      002795 CB                     418 	.db	00108$
      002796 FB                     419 	.db	00113$
      002797 FB                     420 	.db	00113$
      002798 FB                     421 	.db	00113$
      002799 FB                     422 	.db	00113$
      00279A FB                     423 	.db	00113$
      00279B DB                     424 	.db	00111$
      00279C DB                     425 	.db	00111$
      00279D DB                     426 	.db	00111$
      00279E FB                     427 	.db	00113$
      00279F FB                     428 	.db	00113$
      0027A0 EB                     429 	.db	00112$
      0027A1                        430 00132$:
      0027A1 27                     431 	.db	00103$>>8
      0027A2 27                     432 	.db	00105$>>8
      0027A3 27                     433 	.db	00105$>>8
      0027A4 27                     434 	.db	00108$>>8
      0027A5 27                     435 	.db	00113$>>8
      0027A6 27                     436 	.db	00113$>>8
      0027A7 27                     437 	.db	00113$>>8
      0027A8 27                     438 	.db	00113$>>8
      0027A9 27                     439 	.db	00113$>>8
      0027AA 27                     440 	.db	00111$>>8
      0027AB 27                     441 	.db	00111$>>8
      0027AC 27                     442 	.db	00111$>>8
      0027AD 27                     443 	.db	00113$>>8
      0027AE 27                     444 	.db	00113$>>8
      0027AF 27                     445 	.db	00112$>>8
                                    446 ;	../Storage_Manager/storage.c:65: case FOG_POWER_INDEX:
      0027B0                        447 00103$:
                                    448 ;	../Storage_Manager/storage.c:66: return (value & ~OP_MODE_BIT) % FOG_OPTIONS;
      0027B0 8E 05            [24]  449 	mov	ar5,r6
      0027B2 7F 00            [12]  450 	mov	r7,#0x00
      0027B4 74 7F            [12]  451 	mov	a,#0x7f
      0027B6 5D               [12]  452 	anl	a,r5
      0027B7 F5 82            [12]  453 	mov	dpl,a
      0027B9 8F 83            [24]  454 	mov	dph,r7
      0027BB 75 72 03         [24]  455 	mov	__modsint_PARM_2,#0x03
                                    456 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0027BE 8F 73            [24]  457 	mov	(__modsint_PARM_2 + 1),r7
                                    458 ;	../Storage_Manager/storage.c:68: case FOG_INTERVAL_INDEX:
      0027C0 02 2E 0D         [24]  459 	ljmp	__modsint
      0027C3                        460 00105$:
                                    461 ;	../Storage_Manager/storage.c:69: if(value == 0){ value = 1; } //we dont want a 0 duration or interval
      0027C3 EE               [12]  462 	mov	a,r6
      0027C4 70 02            [24]  463 	jnz	00107$
      0027C6 7E 01            [12]  464 	mov	r6,#0x01
      0027C8                        465 00107$:
                                    466 ;	../Storage_Manager/storage.c:70: return value;
      0027C8 8E 82            [24]  467 	mov	dpl,r6
                                    468 ;	../Storage_Manager/storage.c:71: case MACRO_INDEX:
      0027CA 22               [24]  469 	ret
      0027CB                        470 00108$:
                                    471 ;	../Storage_Manager/storage.c:72: return value % MACRO_OPTIONS;
      0027CB 8E 05            [24]  472 	mov	ar5,r6
      0027CD 7F 00            [12]  473 	mov	r7,#0x00
      0027CF 75 72 07         [24]  474 	mov	__modsint_PARM_2,#0x07
                                    475 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0027D2 8F 73            [24]  476 	mov	(__modsint_PARM_2 + 1),r7
      0027D4 8D 82            [24]  477 	mov	dpl,r5
      0027D6 8F 83            [24]  478 	mov	dph,r7
                                    479 ;	../Storage_Manager/storage.c:75: case R6_INDEX:
      0027D8 02 2E 0D         [24]  480 	ljmp	__modsint
      0027DB                        481 00111$:
                                    482 ;	../Storage_Manager/storage.c:76: return value % WIRELESS_ACTION_OPTIONS;
      0027DB 8E 05            [24]  483 	mov	ar5,r6
      0027DD 7F 00            [12]  484 	mov	r7,#0x00
      0027DF 75 72 0D         [24]  485 	mov	__modsint_PARM_2,#0x0d
                                    486 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0027E2 8F 73            [24]  487 	mov	(__modsint_PARM_2 + 1),r7
      0027E4 8D 82            [24]  488 	mov	dpl,r5
      0027E6 8F 83            [24]  489 	mov	dph,r7
                                    490 ;	../Storage_Manager/storage.c:77: case MODE_INDEX:
      0027E8 02 2E 0D         [24]  491 	ljmp	__modsint
      0027EB                        492 00112$:
                                    493 ;	../Storage_Manager/storage.c:78: return value % DMX_OPTIONS;
      0027EB 8E 05            [24]  494 	mov	ar5,r6
      0027ED 7F 00            [12]  495 	mov	r7,#0x00
      0027EF 75 72 03         [24]  496 	mov	__modsint_PARM_2,#0x03
                                    497 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0027F2 8F 73            [24]  498 	mov	(__modsint_PARM_2 + 1),r7
      0027F4 8D 82            [24]  499 	mov	dpl,r5
      0027F6 8F 83            [24]  500 	mov	dph,r7
                                    501 ;	../Storage_Manager/storage.c:80: }
      0027F8 02 2E 0D         [24]  502 	ljmp	__modsint
      0027FB                        503 00113$:
                                    504 ;	../Storage_Manager/storage.c:82: return value;
      0027FB 8E 82            [24]  505 	mov	dpl,r6
                                    506 ;	../Storage_Manager/storage.c:83: }
      0027FD 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'set_runtime_data'
                                    510 ;------------------------------------------------------------
                                    511 ;inc                       Allocated with name '_set_runtime_data_PARM_2'
                                    512 ;value                     Allocated with name '_set_runtime_data_PARM_3'
                                    513 ;index                     Allocated to registers r7 
                                    514 ;opMode                    Allocated to registers r6 
                                    515 ;------------------------------------------------------------
                                    516 ;	../Storage_Manager/storage.c:85: void set_runtime_data(uint8_t index, uint8_t inc, uint8_t value){
                                    517 ;	-----------------------------------------
                                    518 ;	 function set_runtime_data
                                    519 ;	-----------------------------------------
      0027FE                        520 _set_runtime_data:
      0027FE AF 82            [24]  521 	mov	r7,dpl
                                    522 ;	../Storage_Manager/storage.c:86: uint8_t opMode = Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
      002800 74 80            [12]  523 	mov	a,#0x80
      002802 55 55            [12]  524 	anl	a,_Runtime_Data
      002804 FE               [12]  525 	mov	r6,a
                                    526 ;	../Storage_Manager/storage.c:93: switch(inc){
      002805 74 01            [12]  527 	mov	a,#0x01
      002807 B5 65 02         [24]  528 	cjne	a,_set_runtime_data_PARM_2,00142$
      00280A 80 07            [24]  529 	sjmp	00101$
      00280C                        530 00142$:
      00280C 74 02            [12]  531 	mov	a,#0x02
                                    532 ;	../Storage_Manager/storage.c:94: case INC:
      00280E B5 65 16         [24]  533 	cjne	a,_set_runtime_data_PARM_2,00103$
      002811 80 0A            [24]  534 	sjmp	00102$
      002813                        535 00101$:
                                    536 ;	../Storage_Manager/storage.c:95: Runtime_Data[index]++;
      002813 EF               [12]  537 	mov	a,r7
      002814 24 55            [12]  538 	add	a,#_Runtime_Data
      002816 F9               [12]  539 	mov	r1,a
      002817 E7               [12]  540 	mov	a,@r1
      002818 FD               [12]  541 	mov	r5,a
      002819 04               [12]  542 	inc	a
      00281A F7               [12]  543 	mov	@r1,a
                                    544 ;	../Storage_Manager/storage.c:96: break;
                                    545 ;	../Storage_Manager/storage.c:97: case DEC:
      00281B 80 2A            [24]  546 	sjmp	00110$
      00281D                        547 00102$:
                                    548 ;	../Storage_Manager/storage.c:98: Runtime_Data[index]--;
      00281D EF               [12]  549 	mov	a,r7
      00281E 24 55            [12]  550 	add	a,#_Runtime_Data
      002820 F9               [12]  551 	mov	r1,a
      002821 E7               [12]  552 	mov	a,@r1
      002822 FD               [12]  553 	mov	r5,a
      002823 14               [12]  554 	dec	a
      002824 F7               [12]  555 	mov	@r1,a
                                    556 ;	../Storage_Manager/storage.c:99: break;
                                    557 ;	../Storage_Manager/storage.c:100: default:
      002825 80 20            [24]  558 	sjmp	00110$
      002827                        559 00103$:
                                    560 ;	../Storage_Manager/storage.c:101: if(index == OP_MODE_INDEX){
      002827 BF 10 17         [24]  561 	cjne	r7,#0x10,00108$
                                    562 ;	../Storage_Manager/storage.c:102: if(value) { 
      00282A E5 66            [12]  563 	mov	a,_set_runtime_data_PARM_3
      00282C 60 0B            [24]  564 	jz	00105$
                                    565 ;	../Storage_Manager/storage.c:103: Runtime_Data[FOG_POWER_INDEX] |= OP_MODE_BIT;
      00282E AC 55            [24]  566 	mov	r4,_Runtime_Data
      002830 7D 00            [12]  567 	mov	r5,#0x00
      002832 43 04 80         [24]  568 	orl	ar4,#0x80
      002835 8C 55            [24]  569 	mov	_Runtime_Data,r4
      002837 80 0E            [24]  570 	sjmp	00110$
      002839                        571 00105$:
                                    572 ;	../Storage_Manager/storage.c:105: Runtime_Data[FOG_POWER_INDEX] &= ~OP_MODE_BIT;
      002839 74 7F            [12]  573 	mov	a,#0x7f
      00283B 55 55            [12]  574 	anl	a,_Runtime_Data
      00283D F5 55            [12]  575 	mov	_Runtime_Data,a
      00283F 80 06            [24]  576 	sjmp	00110$
      002841                        577 00108$:
                                    578 ;	../Storage_Manager/storage.c:108: Runtime_Data[index] = value;
      002841 EF               [12]  579 	mov	a,r7
      002842 24 55            [12]  580 	add	a,#_Runtime_Data
      002844 F8               [12]  581 	mov	r0,a
      002845 A6 66            [24]  582 	mov	@r0,_set_runtime_data_PARM_3
                                    583 ;	../Storage_Manager/storage.c:111: }
      002847                        584 00110$:
                                    585 ;	../Storage_Manager/storage.c:113: if(index == FOG_POWER_INDEX){
      002847 EF               [12]  586 	mov	a,r7
      002848 70 24            [24]  587 	jnz	00115$
                                    588 ;	../Storage_Manager/storage.c:114: if(opMode){
      00284A EE               [12]  589 	mov	a,r6
      00284B 60 13            [24]  590 	jz	00112$
                                    591 ;	../Storage_Manager/storage.c:115: Runtime_Data[index] |= OP_MODE_BIT;
      00284D EF               [12]  592 	mov	a,r7
      00284E 24 55            [12]  593 	add	a,#_Runtime_Data
      002850 F9               [12]  594 	mov	r1,a
      002851 EF               [12]  595 	mov	a,r7
      002852 24 55            [12]  596 	add	a,#_Runtime_Data
      002854 F8               [12]  597 	mov	r0,a
      002855 86 06            [24]  598 	mov	ar6,@r0
      002857 7D 00            [12]  599 	mov	r5,#0x00
      002859 43 06 80         [24]  600 	orl	ar6,#0x80
      00285C A7 06            [24]  601 	mov	@r1,ar6
      00285E 80 0E            [24]  602 	sjmp	00115$
      002860                        603 00112$:
                                    604 ;	../Storage_Manager/storage.c:117: Runtime_Data[index] &= ~OP_MODE_BIT;
      002860 EF               [12]  605 	mov	a,r7
      002861 24 55            [12]  606 	add	a,#_Runtime_Data
      002863 F9               [12]  607 	mov	r1,a
      002864 EF               [12]  608 	mov	a,r7
      002865 24 55            [12]  609 	add	a,#_Runtime_Data
      002867 F8               [12]  610 	mov	r0,a
      002868 86 07            [24]  611 	mov	ar7,@r0
      00286A 74 7F            [12]  612 	mov	a,#0x7f
      00286C 5F               [12]  613 	anl	a,r7
      00286D F7               [12]  614 	mov	@r1,a
      00286E                        615 00115$:
                                    616 ;	../Storage_Manager/storage.c:121: save_load_settings(SLOT_0, SAVE);
      00286E 75 72 01         [24]  617 	mov	_save_load_settings_PARM_2,#0x01
      002871 75 82 00         [24]  618 	mov	dpl,#0x00
                                    619 ;	../Storage_Manager/storage.c:122: }
      002874 02 27 14         [24]  620 	ljmp	_save_load_settings
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'set_dmx_address'
                                    623 ;------------------------------------------------------------
                                    624 ;inc                       Allocated to registers r7 
                                    625 ;addr                      Allocated to registers r5 r6 
                                    626 ;------------------------------------------------------------
                                    627 ;	../Storage_Manager/storage.c:124: void set_dmx_address(uint8_t inc){
                                    628 ;	-----------------------------------------
                                    629 ;	 function set_dmx_address
                                    630 ;	-----------------------------------------
      002877                        631 _set_dmx_address:
      002877 AF 82            [24]  632 	mov	r7,dpl
                                    633 ;	../Storage_Manager/storage.c:125: uint16_t addr = get_dmx_address();
      002879 C0 07            [24]  634 	push	ar7
      00287B 12 28 CA         [24]  635 	lcall	_get_dmx_address
      00287E AD 82            [24]  636 	mov	r5,dpl
      002880 AE 83            [24]  637 	mov	r6,dph
      002882 D0 07            [24]  638 	pop	ar7
                                    639 ;	../Storage_Manager/storage.c:127: if(inc == INC){
      002884 BF 01 12         [24]  640 	cjne	r7,#0x01,00108$
                                    641 ;	../Storage_Manager/storage.c:128: if(addr >= DMX_MAX_ADDRESS){
      002887 74 FE            [12]  642 	mov	a,#0x100 - 0x02
      002889 2E               [12]  643 	add	a,r6
      00288A 50 06            [24]  644 	jnc	00102$
                                    645 ;	../Storage_Manager/storage.c:129: addr = 1;
      00288C 7D 01            [12]  646 	mov	r5,#0x01
      00288E 7E 00            [12]  647 	mov	r6,#0x00
      002890 80 1A            [24]  648 	sjmp	00109$
      002892                        649 00102$:
                                    650 ;	../Storage_Manager/storage.c:131: addr++;
      002892 0D               [12]  651 	inc	r5
      002893 BD 00 16         [24]  652 	cjne	r5,#0x00,00109$
      002896 0E               [12]  653 	inc	r6
      002897 80 13            [24]  654 	sjmp	00109$
      002899                        655 00108$:
                                    656 ;	../Storage_Manager/storage.c:134: if(addr <= 1){
      002899 C3               [12]  657 	clr	c
      00289A 74 01            [12]  658 	mov	a,#0x01
      00289C 9D               [12]  659 	subb	a,r5
      00289D E4               [12]  660 	clr	a
      00289E 9E               [12]  661 	subb	a,r6
      00289F 40 06            [24]  662 	jc	00105$
                                    663 ;	../Storage_Manager/storage.c:135: addr = DMX_MAX_ADDRESS;
      0028A1 7D 00            [12]  664 	mov	r5,#0x00
      0028A3 7E 02            [12]  665 	mov	r6,#0x02
      0028A5 80 05            [24]  666 	sjmp	00109$
      0028A7                        667 00105$:
                                    668 ;	../Storage_Manager/storage.c:137: addr--;
      0028A7 1D               [12]  669 	dec	r5
      0028A8 BD FF 01         [24]  670 	cjne	r5,#0xff,00129$
      0028AB 1E               [12]  671 	dec	r6
      0028AC                        672 00129$:
      0028AC                        673 00109$:
                                    674 ;	../Storage_Manager/storage.c:141: set_runtime_data(ADDR_L_INDEX, VALUE, (uint8_t) addr);
      0028AC 8D 66            [24]  675 	mov	_set_runtime_data_PARM_3,r5
      0028AE 75 65 00         [24]  676 	mov	_set_runtime_data_PARM_2,#0x00
      0028B1 75 82 0D         [24]  677 	mov	dpl,#0x0d
      0028B4 C0 06            [24]  678 	push	ar6
      0028B6 C0 05            [24]  679 	push	ar5
      0028B8 12 27 FE         [24]  680 	lcall	_set_runtime_data
      0028BB D0 05            [24]  681 	pop	ar5
      0028BD D0 06            [24]  682 	pop	ar6
                                    683 ;	../Storage_Manager/storage.c:142: set_runtime_data(ADDR_H_INDEX, VALUE, (uint8_t) (addr >> 8));
      0028BF 8E 66            [24]  684 	mov	_set_runtime_data_PARM_3,r6
      0028C1 75 65 00         [24]  685 	mov	_set_runtime_data_PARM_2,#0x00
      0028C4 75 82 0C         [24]  686 	mov	dpl,#0x0c
                                    687 ;	../Storage_Manager/storage.c:144: }
      0028C7 02 27 FE         [24]  688 	ljmp	_set_runtime_data
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'get_dmx_address'
                                    691 ;------------------------------------------------------------
                                    692 ;address                   Allocated to registers 
                                    693 ;------------------------------------------------------------
                                    694 ;	../Storage_Manager/storage.c:146: uint16_t get_dmx_address(){
                                    695 ;	-----------------------------------------
                                    696 ;	 function get_dmx_address
                                    697 ;	-----------------------------------------
      0028CA                        698 _get_dmx_address:
                                    699 ;	../Storage_Manager/storage.c:149: address |= (Runtime_Data[ADDR_H_INDEX] << 8);
      0028CA AF 61            [24]  700 	mov	r7,(_Runtime_Data + 0x000c)
      0028CC 7E 00            [12]  701 	mov	r6,#0x00
                                    702 ;	../Storage_Manager/storage.c:150: address |= Runtime_Data[ADDR_L_INDEX];
      0028CE AC 62            [24]  703 	mov	r4,(_Runtime_Data + 0x000d)
      0028D0 7D 00            [12]  704 	mov	r5,#0x00
      0028D2 EC               [12]  705 	mov	a,r4
      0028D3 4E               [12]  706 	orl	a,r6
      0028D4 F5 82            [12]  707 	mov	dpl,a
      0028D6 ED               [12]  708 	mov	a,r5
      0028D7 4F               [12]  709 	orl	a,r7
      0028D8 F5 83            [12]  710 	mov	dph,a
                                    711 ;	../Storage_Manager/storage.c:152: return address;
                                    712 ;	../Storage_Manager/storage.c:153: }
      0028DA 22               [24]  713 	ret
                                    714 	.area CSEG    (CODE)
                                    715 	.area CONST   (CODE)
                                    716 	.area CABS    (ABS,CODE)
      003FC0                        717 	.org 0x3FC0
      003FC0                        718 _Init_Data:
      003FC0 80                     719 	.db #0x80	; 128
      003FC1 06                     720 	.db #0x06	; 6
      003FC2 09                     721 	.db #0x09	; 9
      003FC3 00                     722 	.db #0x00	; 0
      003FC4 00                     723 	.db #0x00	; 0
      003FC5 00                     724 	.db #0x00	; 0
      003FC6 00                     725 	.db #0x00	; 0
      003FC7 00                     726 	.db #0x00	; 0
      003FC8 00                     727 	.db #0x00	; 0
      003FC9 0B                     728 	.db #0x0b	; 11
      003FCA 0C                     729 	.db #0x0c	; 12
      003FCB 0A                     730 	.db #0x0a	; 10
      003FCC 00                     731 	.db #0x00	; 0
      003FCD 01                     732 	.db #0x01	; 1
      003FCE 00                     733 	.db #0x00	; 0
      003FCF 00                     734 	.db #0x00	; 0
      003FD0 80                     735 	.db #0x80	; 128
      003FD1 06                     736 	.db #0x06	; 6
      003FD2 09                     737 	.db #0x09	; 9
      003FD3 00                     738 	.db #0x00	; 0
      003FD4 00                     739 	.db #0x00	; 0
      003FD5 00                     740 	.db #0x00	; 0
      003FD6 00                     741 	.db #0x00	; 0
      003FD7 00                     742 	.db #0x00	; 0
      003FD8 00                     743 	.db #0x00	; 0
      003FD9 0B                     744 	.db #0x0b	; 11
      003FDA 0C                     745 	.db #0x0c	; 12
      003FDB 0A                     746 	.db #0x0a	; 10
      003FDC 00                     747 	.db #0x00	; 0
      003FDD 01                     748 	.db #0x01	; 1
      003FDE 00                     749 	.db #0x00	; 0
      003FDF 00                     750 	.db #0x00	; 0
      003FE0 80                     751 	.db #0x80	; 128
      003FE1 06                     752 	.db #0x06	; 6
      003FE2 09                     753 	.db #0x09	; 9
      003FE3 00                     754 	.db #0x00	; 0
      003FE4 00                     755 	.db #0x00	; 0
      003FE5 00                     756 	.db #0x00	; 0
      003FE6 00                     757 	.db #0x00	; 0
      003FE7 00                     758 	.db #0x00	; 0
      003FE8 00                     759 	.db #0x00	; 0
      003FE9 0B                     760 	.db #0x0b	; 11
      003FEA 0C                     761 	.db #0x0c	; 12
      003FEB 0A                     762 	.db #0x0a	; 10
      003FEC 00                     763 	.db #0x00	; 0
      003FED 01                     764 	.db #0x01	; 1
      003FEE 00                     765 	.db #0x00	; 0
      003FEF 00                     766 	.db #0x00	; 0
      003FF0 80                     767 	.db #0x80	; 128
      003FF1 06                     768 	.db #0x06	; 6
      003FF2 09                     769 	.db #0x09	; 9
      003FF3 00                     770 	.db #0x00	; 0
      003FF4 00                     771 	.db #0x00	; 0
      003FF5 00                     772 	.db #0x00	; 0
      003FF6 00                     773 	.db #0x00	; 0
      003FF7 00                     774 	.db #0x00	; 0
      003FF8 00                     775 	.db #0x00	; 0
      003FF9 0B                     776 	.db #0x0b	; 11
      003FFA 0C                     777 	.db #0x0c	; 12
      003FFB 0A                     778 	.db #0x0a	; 10
      003FFC 00                     779 	.db #0x00	; 0
      003FFD 01                     780 	.db #0x01	; 1
      003FFE 00                     781 	.db #0x00	; 0
      003FFF 00                     782 	.db #0x00	; 0
