;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module storage
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Init_Data
	.globl _CPRL2
	.globl _CT2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _RCK
	.globl _SER
	.globl _SCK
	.globl _RI
	.globl _ES
	.globl _ET0
	.globl _EA
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _IAP_ADRH
	.globl _IAP_ADRL
	.globl _IAPEN
	.globl _TH0
	.globl _TL0
	.globl _CKCON
	.globl _TMOD
	.globl _TCON
	.globl _PWMDATA17L
	.globl _PWMDATA17H
	.globl _PWMDATA14L
	.globl _PWMDATA14H
	.globl _PWMDATA11L
	.globl _PWMDATA11H
	.globl _PWM_EA2
	.globl _PWM_EA1
	.globl _SBUF
	.globl _TL3
	.globl _TH3
	.globl _T2CON
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _SCON
	.globl _P1_OPT
	.globl _ADCVAL2
	.globl _ADCVAL1
	.globl _ADCSEL
	.globl _EXIF
	.globl _EIE
	.globl _IE
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _PCLKSEL
	.globl _CHIPCON
	.globl _IAP_AUX
	.globl _save_load_settings
	.globl _get_runtime_data
	.globl _set_runtime_data
	.globl _set_dmx_address
	.globl _get_dmx_address
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CHIPCON	=	0x00bf
_PCLKSEL	=	0x00b7
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_IE	=	0x00a8
_EIE	=	0x00e8
_EXIF	=	0x0091
_ADCSEL	=	0x00da
_ADCVAL1	=	0x00db
_ADCVAL2	=	0x00dc
_P1_OPT	=	0x00d9
_SCON	=	0x0098
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2CON	=	0x00c8
_TH3	=	0x009b
_TL3	=	0x009a
_SBUF	=	0x0099
_PWM_EA1	=	0x00d3
_PWM_EA2	=	0x00d4
_PWMDATA11H	=	0x00bd
_PWMDATA11L	=	0x00be
_PWMDATA14H	=	0x00b5
_PWMDATA14L	=	0x00b6
_PWMDATA17H	=	0x00ad
_PWMDATA17L	=	0x00ae
_TCON	=	0x0088
_TMOD	=	0x0089
_CKCON	=	0x008e
_TL0	=	0x008a
_TH0	=	0x008c
_IAPEN	=	0x00e4
_IAP_ADRL	=	0x00e5
_IAP_ADRH	=	0x00e6
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_EA	=	0x00af
_ET0	=	0x00a9
_ES	=	0x00ac
_RI	=	0x0098
_SCK	=	0x0093
_SER	=	0x0095
_RCK	=	0x0092
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_CT2	=	0x00c9
_CPRL2	=	0x00c8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Runtime_Data:
	.ds 16
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_IAP_AUX	=	0x0100
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'save_load_settings'
;------------------------------------------------------------
;save                      Allocated to stack - _bp -3
;slot                      Allocated to registers r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	../Storage_Manager/storage.c:30: void save_load_settings(uint8_t slot, uint8_t save){
;	-----------------------------------------
;	 function save_load_settings
;	-----------------------------------------
_save_load_settings:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
;	../Storage_Manager/storage.c:33: slot = slot * CONFIG_COUNT;
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r7,a
;	../Storage_Manager/storage.c:35: if(save == LOAD){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00115$
;	../Storage_Manager/storage.c:36: IAPEN = IAP_Read; //read
	mov	_IAPEN,#0xa0
;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
00115$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	a
	cjne	@r0,#0x01,00140$
	inc	a
00140$:
	mov	r6,a
	mov	r5,#0x00
00109$:
;	../Storage_Manager/storage.c:40: if(save == SAVE){
	mov	a,r6
	jz	00104$
;	../Storage_Manager/storage.c:41: IAP_AUX[i + slot] = Runtime_Data[i];
	mov	a,r7
	add	a,r5
	add	a,#_IAP_AUX
	mov	r3,a
	clr	a
	addc	a,#(_IAP_AUX >> 8)
	mov	r4,a
	mov	a,r5
	add	a,#_Runtime_Data
	mov	r1,a
	mov	ar2,@r1
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	sjmp	00110$
00104$:
;	../Storage_Manager/storage.c:43: Runtime_Data[i] = IAP_AUX[i + slot];
	mov	a,r5
	add	a,#_Runtime_Data
	mov	r1,a
	mov	a,r7
	add	a,r5
	add	a,#_IAP_AUX
	mov	dpl,a
	clr	a
	addc	a,#(_IAP_AUX >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	@r1,a
00110$:
;	../Storage_Manager/storage.c:39: for(i = 0; i < CONFIG_COUNT; i++){
	inc	r5
	cjne	r5,#0x10,00143$
00143$:
	jc	00109$
;	../Storage_Manager/storage.c:47: if(save == SAVE){
	mov	a,r6
	jz	00111$
;	../Storage_Manager/storage.c:48: IAPEN = IAP_Erase; //have to erase before write...
	mov	_IAPEN,#0x90
;	../Storage_Manager/storage.c:49: IAPEN = IAP_Write;  
	mov	_IAPEN,#0xc0
;	../Storage_Manager/storage.c:50: Nop(); //datasheet recommend no operation following write
	nop 
	nop 
	nop 
00111$:
;	../Storage_Manager/storage.c:52: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_runtime_data'
;------------------------------------------------------------
;index                     Allocated to registers r7 
;value                     Allocated to registers r6 
;------------------------------------------------------------
;	../Storage_Manager/storage.c:54: uint8_t get_runtime_data(uint8_t index){
;	-----------------------------------------
;	 function get_runtime_data
;	-----------------------------------------
_get_runtime_data:
	mov	r7,dpl
;	../Storage_Manager/storage.c:57: if(index == OP_MODE_INDEX){
	cjne	r7,#0x10,00102$
;	../Storage_Manager/storage.c:58: return Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
	mov	a,#0x80
	anl	a,_Runtime_Data
	mov	dpl,a
	ret
00102$:
;	../Storage_Manager/storage.c:61: value = Runtime_Data[index];
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r1,a
	mov	ar6,@r1
;	../Storage_Manager/storage.c:63: switch (index)
	mov	a,r7
	add	a,#0xff - 0x0e
	jnc	00130$
	ljmp	00113$
00130$:
	mov	a,r7
	add	a,#(00131$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00132$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00131$:
	.db	00103$
	.db	00105$
	.db	00105$
	.db	00108$
	.db	00113$
	.db	00113$
	.db	00113$
	.db	00113$
	.db	00113$
	.db	00111$
	.db	00111$
	.db	00111$
	.db	00113$
	.db	00113$
	.db	00112$
00132$:
	.db	00103$>>8
	.db	00105$>>8
	.db	00105$>>8
	.db	00108$>>8
	.db	00113$>>8
	.db	00113$>>8
	.db	00113$>>8
	.db	00113$>>8
	.db	00113$>>8
	.db	00111$>>8
	.db	00111$>>8
	.db	00111$>>8
	.db	00113$>>8
	.db	00113$>>8
	.db	00112$>>8
;	../Storage_Manager/storage.c:65: case FOG_POWER_INDEX:
00103$:
;	../Storage_Manager/storage.c:66: return (value & ~OP_MODE_BIT) % FOG_OPTIONS;
	mov	ar5,r6
	mov	r7,#0x00
	mov	a,#0x7f
	anl	a,r5
	mov	dpl,a
	mov	dph,r7
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	lcall	__modsint
	mov	r5,dpl
	dec	sp
	dec	sp
	mov	dpl,r5
;	../Storage_Manager/storage.c:68: case FOG_INTERVAL_INDEX:
	ret
00105$:
;	../Storage_Manager/storage.c:69: if(value == 0){ value = 1; } //we dont want a 0 duration or interval
	mov	a,r6
	jnz	00107$
	mov	r6,#0x01
00107$:
;	../Storage_Manager/storage.c:70: return value;
	mov	dpl,r6
;	../Storage_Manager/storage.c:71: case MACRO_INDEX:
	ret
00108$:
;	../Storage_Manager/storage.c:72: return value % MACRO_OPTIONS;
	mov	ar5,r6
	mov	r7,#0x00
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	mov	r5,dpl
	dec	sp
	dec	sp
	mov	dpl,r5
;	../Storage_Manager/storage.c:75: case R6_INDEX:
	ret
00111$:
;	../Storage_Manager/storage.c:76: return value % WIRELESS_ACTION_OPTIONS;
	mov	ar5,r6
	mov	r7,#0x00
	mov	a,#0x0d
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	mov	r5,dpl
	dec	sp
	dec	sp
	mov	dpl,r5
;	../Storage_Manager/storage.c:77: case MODE_INDEX:
	ret
00112$:
;	../Storage_Manager/storage.c:78: return value % DMX_OPTIONS;
	mov	ar5,r6
	mov	r7,#0x00
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	mov	r5,dpl
	dec	sp
	dec	sp
	mov	dpl,r5
;	../Storage_Manager/storage.c:80: }
	ret
00113$:
;	../Storage_Manager/storage.c:82: return value;
	mov	dpl,r6
;	../Storage_Manager/storage.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_runtime_data'
;------------------------------------------------------------
;inc                       Allocated to stack - _bp -3
;value                     Allocated to stack - _bp -4
;index                     Allocated to registers r7 
;opMode                    Allocated to registers r6 
;------------------------------------------------------------
;	../Storage_Manager/storage.c:85: void set_runtime_data(uint8_t index, uint8_t inc, uint8_t value){
;	-----------------------------------------
;	 function set_runtime_data
;	-----------------------------------------
_set_runtime_data:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../Storage_Manager/storage.c:86: uint8_t opMode = Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
	mov	a,#0x80
	anl	a,_Runtime_Data
	mov	r6,a
;	../Storage_Manager/storage.c:93: switch(inc){
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x01,00142$
	sjmp	00101$
00142$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
;	../Storage_Manager/storage.c:94: case INC:
	cjne	@r0,#0x02,00103$
	sjmp	00102$
00101$:
;	../Storage_Manager/storage.c:95: Runtime_Data[index]++;
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	inc	a
	mov	@r1,a
;	../Storage_Manager/storage.c:96: break;
;	../Storage_Manager/storage.c:97: case DEC:
	sjmp	00110$
00102$:
;	../Storage_Manager/storage.c:98: Runtime_Data[index]--;
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	dec	a
	mov	@r1,a
;	../Storage_Manager/storage.c:99: break;
;	../Storage_Manager/storage.c:100: default:
	sjmp	00110$
00103$:
;	../Storage_Manager/storage.c:101: if(index == OP_MODE_INDEX){
	cjne	r7,#0x10,00108$
;	../Storage_Manager/storage.c:102: if(value) { 
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jz	00105$
;	../Storage_Manager/storage.c:103: Runtime_Data[FOG_POWER_INDEX] |= OP_MODE_BIT;
	mov	r4,_Runtime_Data
	mov	r5,#0x00
	orl	ar4,#0x80
	mov	_Runtime_Data,r4
	sjmp	00110$
00105$:
;	../Storage_Manager/storage.c:105: Runtime_Data[FOG_POWER_INDEX] &= ~OP_MODE_BIT;
	mov	a,#0x7f
	anl	a,_Runtime_Data
	mov	_Runtime_Data,a
	sjmp	00110$
00108$:
;	../Storage_Manager/storage.c:108: Runtime_Data[index] = value;
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	mov	a,@r1
	mov	@r0,a
;	../Storage_Manager/storage.c:111: }
00110$:
;	../Storage_Manager/storage.c:113: if(index == FOG_POWER_INDEX){
	mov	a,r7
	jnz	00115$
;	../Storage_Manager/storage.c:114: if(opMode){
	mov	a,r6
	jz	00112$
;	../Storage_Manager/storage.c:115: Runtime_Data[index] |= OP_MODE_BIT;
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r1,a
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r0,a
	mov	ar6,@r0
	mov	r5,#0x00
	orl	ar6,#0x80
	mov	@r1,ar6
	sjmp	00115$
00112$:
;	../Storage_Manager/storage.c:117: Runtime_Data[index] &= ~OP_MODE_BIT;
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r1,a
	mov	a,r7
	add	a,#_Runtime_Data
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x7f
	anl	a,r7
	mov	@r1,a
00115$:
;	../Storage_Manager/storage.c:121: save_load_settings(SLOT_0, SAVE);
	mov	a,#0x01
	push	acc
	mov	dpl,#0x00
	lcall	_save_load_settings
	dec	sp
;	../Storage_Manager/storage.c:122: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_dmx_address'
;------------------------------------------------------------
;inc                       Allocated to registers r7 
;addr                      Allocated to registers r5 r6 
;------------------------------------------------------------
;	../Storage_Manager/storage.c:124: void set_dmx_address(uint8_t inc){
;	-----------------------------------------
;	 function set_dmx_address
;	-----------------------------------------
_set_dmx_address:
	mov	r7,dpl
;	../Storage_Manager/storage.c:125: uint16_t addr = get_dmx_address();
	push	ar7
	lcall	_get_dmx_address
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
;	../Storage_Manager/storage.c:127: if(inc == INC){
	cjne	r7,#0x01,00108$
;	../Storage_Manager/storage.c:128: if(addr >= DMX_MAX_ADDRESS){
	mov	a,#0x100 - 0x02
	add	a,r6
	jnc	00102$
;	../Storage_Manager/storage.c:129: addr = 1;
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00109$
00102$:
;	../Storage_Manager/storage.c:131: addr++;
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00108$:
;	../Storage_Manager/storage.c:134: if(addr <= 1){
	clr	c
	mov	a,#0x01
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00105$
;	../Storage_Manager/storage.c:135: addr = DMX_MAX_ADDRESS;
	mov	r5,#0x00
	mov	r6,#0x02
	sjmp	00109$
00105$:
;	../Storage_Manager/storage.c:137: addr--;
	dec	r5
	cjne	r5,#0xff,00129$
	dec	r6
00129$:
00109$:
;	../Storage_Manager/storage.c:141: set_runtime_data(ADDR_L_INDEX, VALUE, (uint8_t) addr);
	mov	ar7,r5
	push	ar6
	push	ar5
	push	ar7
	clr	a
	push	acc
	mov	dpl,#0x0d
	lcall	_set_runtime_data
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
;	../Storage_Manager/storage.c:142: set_runtime_data(ADDR_H_INDEX, VALUE, (uint8_t) (addr >> 8));
	mov	ar5,r6
	push	ar5
	clr	a
	push	acc
	mov	dpl,#0x0c
	lcall	_set_runtime_data
	dec	sp
	dec	sp
;	../Storage_Manager/storage.c:144: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_dmx_address'
;------------------------------------------------------------
;address                   Allocated to registers 
;------------------------------------------------------------
;	../Storage_Manager/storage.c:146: uint16_t get_dmx_address(){
;	-----------------------------------------
;	 function get_dmx_address
;	-----------------------------------------
_get_dmx_address:
;	../Storage_Manager/storage.c:149: address |= (Runtime_Data[ADDR_H_INDEX] << 8);
	mov	r7,(_Runtime_Data + 0x000c)
	mov	r6,#0x00
;	../Storage_Manager/storage.c:150: address |= Runtime_Data[ADDR_L_INDEX];
	mov	r4,(_Runtime_Data + 0x000d)
	mov	r5,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dpl,r4
	mov	dph,r5
;	../Storage_Manager/storage.c:152: return address;
;	../Storage_Manager/storage.c:153: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x3FC0
_Init_Data:
	.db #0x82	; 130
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
