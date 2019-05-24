;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module display
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _write_string
	.globl _write_number
	.globl _write_char
	.globl _exe_command
	.globl _charToCode
	.globl _writeShiftReg
	.globl _flipByte
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'write_string'
;------------------------------------------------------------
;length                    Allocated to stack - _bp -3
;index                     Allocated to stack - _bp -4
;line                      Allocated to stack - _bp -5
;selected                  Allocated to stack - _bp -6
;string                    Allocated to stack - _bp +1
;i                         Allocated to registers r3 
;done                      Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:16: void write_string(char* string, uint8_t length, uint8_t index, uint8_t line, uint8_t selected){
;	-----------------------------------------
;	 function write_string
;	-----------------------------------------
_write_string:
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
	push	dpl
	push	dph
	push	b
;	../UI_Manager/Display_Manager/display.c:17: uint8_t i, done = 0;
	mov	r4,#0x00
;	../UI_Manager/Display_Manager/display.c:20: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	jz	00115$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	mov	a,#0x40
	add	a,r3
	mov	r3,a
	sjmp	00116$
00115$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
00116$:
	mov	dpl,r3
	push	ar4
	lcall	_flipByte
	mov	r2,dpl
	mov	r3,#0x00
	mov	dpl,r3
	mov	a,#0x01
	orl	a,r2
	mov	dph,a
	lcall	_exe_command
	pop	ar4
;	../UI_Manager/Display_Manager/display.c:22: length++; //null terminated
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	inc	@r0
;	../UI_Manager/Display_Manager/display.c:24: if(selected){
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	jz	00122$
;	../UI_Manager/Display_Manager/display.c:25: exe_command(WRITE_CURSOR);
	mov	dptr,#0x0080
	push	ar4
	lcall	_exe_command
	pop	ar4
;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
00122$:
	mov	r3,#0x00
00111$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	jnc	00113$
;	../UI_Manager/Display_Manager/display.c:29: if(!done){
	mov	a,r4
	jnz	00107$
;	../UI_Manager/Display_Manager/display.c:30: if(string[i]){
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	pop	ar4
	mov	a,r7
	jz	00104$
;	../UI_Manager/Display_Manager/display.c:31: exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
	mov	dpl,r7
	push	ar4
	push	ar3
	lcall	_charToCode
	mov	r6,dpl
	mov	r7,#0x00
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	mov	dph,r6
	lcall	_exe_command
	pop	ar3
	pop	ar4
	sjmp	00112$
00104$:
;	../UI_Manager/Display_Manager/display.c:33: done = 1;
	mov	r4,#0x01
	sjmp	00112$
00107$:
;	../UI_Manager/Display_Manager/display.c:36: exe_command(RAM_WRITE | (CHAR_NULL << 8));
	mov	dptr,#0x0480
	push	ar4
	push	ar3
	lcall	_exe_command
	pop	ar3
	pop	ar4
00112$:
;	../UI_Manager/Display_Manager/display.c:28: for(i = 0; i < length; i++){
	inc	r3
	sjmp	00111$
00113$:
;	../UI_Manager/Display_Manager/display.c:39: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_number'
;------------------------------------------------------------
;index                     Allocated to stack - _bp -3
;line                      Allocated to stack - _bp -4
;selected                  Allocated to stack - _bp -5
;number                    Allocated to registers r6 r7 
;higherNumberPresent       Allocated to registers r5 
;value                     Allocated to registers r2 r3 
;chars                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:41: void write_number(uint16_t number, uint8_t index, uint8_t line, uint8_t selected){
;	-----------------------------------------
;	 function write_number
;	-----------------------------------------
_write_number:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r6,dpl
	mov	r7,dph
;	../UI_Manager/Display_Manager/display.c:42: uint8_t higherNumberPresent = 0;
	mov	r5,#0x00
;	../UI_Manager/Display_Manager/display.c:44: uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};
	mov	r1,_bp
	inc	r1
	mov	@r1,#0x04
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x04
	mov	a,#0x02
	add	a,r1
	mov	r4,a
	push	ar0
	mov	r0,ar4
	mov	@r0,#0x0c
	pop	ar0
;	../UI_Manager/Display_Manager/display.c:46: if(number >= 1000) {number = 999;}
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jc	00102$
	mov	r6,#0xe7
	mov	r7,#0x03
00102$:
;	../UI_Manager/Display_Manager/display.c:48: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
	push	ar0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	pop	ar0
	jz	00113$
	push	ar0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	pop	ar0
	mov	a,#0x40
	add	a,r3
	mov	r3,a
	sjmp	00114$
00113$:
	push	ar0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	pop	ar0
00114$:
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_flipByte
	mov	r2,dpl
	mov	r3,#0x00
	mov	dpl,r3
	mov	a,#0x01
	orl	a,r2
	mov	dph,a
	lcall	_exe_command
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../UI_Manager/Display_Manager/display.c:51: if(selected){
	push	ar0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	pop	ar0
	jz	00104$
;	../UI_Manager/Display_Manager/display.c:52: exe_command(WRITE_CURSOR);
	mov	dptr,#0x0080
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_exe_command
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00105$
00104$:
;	../UI_Manager/Display_Manager/display.c:54: exe_command(RAM_WRITE | (CHAR_NULL << 8));
	mov	dptr,#0x0480
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_exe_command
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00105$:
;	../UI_Manager/Display_Manager/display.c:58: value = number/100;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../UI_Manager/Display_Manager/display.c:59: if(value){
	mov	a,r2
	orl	a,r3
	jz	00107$
;	../UI_Manager/Display_Manager/display.c:60: chars[0] = charToCode(value + 0x30);
	push	ar4
	mov	ar4,r2
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_charToCode
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	@r1,a
;	../UI_Manager/Display_Manager/display.c:61: higherNumberPresent = 1;
	mov	r5,#0x01
;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
	push	ar5
	push	ar1
	push	ar0
	push	ar2
	push	ar3
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
	pop	ar4
;	../UI_Manager/Display_Manager/display.c:62: number -= value*100;
00107$:
;	../UI_Manager/Display_Manager/display.c:65: value = number/10;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../UI_Manager/Display_Manager/display.c:66: if(higherNumberPresent || value){
	mov	a,r5
	jnz	00108$
	mov	a,r2
	orl	a,r3
	jz	00109$
00108$:
;	../UI_Manager/Display_Manager/display.c:67: chars[1] = charToCode(value + 0x30);
	mov	ar5,r2
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_charToCode
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	@r0,a
;	../UI_Manager/Display_Manager/display.c:68: number -= value*10;
	push	ar1
	push	ar0
	push	ar2
	push	ar3
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r3,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
00109$:
;	../UI_Manager/Display_Manager/display.c:71: chars[2] = charToCode(number + 0x30);
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	push	ar4
	push	ar1
	push	ar0
	lcall	_charToCode
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar4
	push	ar0
	mov	r0,ar4
	mov	@r0,a
	pop	ar0
;	../UI_Manager/Display_Manager/display.c:73: exe_command(RAM_WRITE | (chars[0] << 8));
	mov	ar7,@r1
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	mov	dph,r6
	push	ar4
	push	ar0
	lcall	_exe_command
	pop	ar0
;	../UI_Manager/Display_Manager/display.c:74: exe_command(RAM_WRITE | (chars[1] << 8));
	mov	ar7,@r0
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	mov	dph,r6
	lcall	_exe_command
	pop	ar4
;	../UI_Manager/Display_Manager/display.c:75: exe_command(RAM_WRITE | (chars[2] << 8));
	mov	r0,ar4
	mov	ar7,@r0
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	mov	dph,r6
	lcall	_exe_command
;	../UI_Manager/Display_Manager/display.c:77: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_char'
;------------------------------------------------------------
;index                     Allocated to stack - _bp -3
;line                      Allocated to stack - _bp -4
;command                   Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:79: void write_char(uint8_t command, uint8_t index, uint8_t line){
;	-----------------------------------------
;	 function write_char
;	-----------------------------------------
_write_char:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../UI_Manager/Display_Manager/display.c:80: exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	jz	00103$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	mov	a,#0x40
	add	a,r6
	mov	r6,a
	sjmp	00104$
00103$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
00104$:
	mov	dpl,r6
	push	ar7
	lcall	_flipByte
	mov	r5,dpl
	mov	r6,#0x00
	mov	dpl,r6
	mov	a,#0x01
	orl	a,r5
	mov	dph,a
	lcall	_exe_command
	pop	ar7
;	../UI_Manager/Display_Manager/display.c:81: exe_command(RAM_WRITE | (command << 8));
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	mov	dph,r6
	lcall	_exe_command
;	../UI_Manager/Display_Manager/display.c:82: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'exe_command'
;------------------------------------------------------------
;command                   Allocated to registers r6 r7 
;delay                     Allocated to registers r5 r6 
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:86: void exe_command(uint16_t command){
;	-----------------------------------------
;	 function exe_command
;	-----------------------------------------
_exe_command:
	mov	r6,dpl
	mov	r7,dph
;	../UI_Manager/Display_Manager/display.c:89: command |= (1 << EXE_BIT);
	orl	ar6,#0x20
;	../UI_Manager/Display_Manager/display.c:90: writeShiftReg(command); //execute
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_writeShiftReg
	pop	ar6
	pop	ar7
;	../UI_Manager/Display_Manager/display.c:91: command &= ~(1 << EXE_BIT);
	anl	ar6,#0xdf
;	../UI_Manager/Display_Manager/display.c:92: writeShiftReg(command); //end execution
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_writeShiftReg
	pop	ar6
	pop	ar7
;	../UI_Manager/Display_Manager/display.c:95: while(delay-- && command == CLEAR_DISPLAY){;;}
	clr	a
	cjne	r6,#0x00,00118$
	cjne	r7,#0x80,00118$
	inc	a
00118$:
	mov	r7,a
	mov	r5,#0x00
	mov	r6,#0x03
00102$:
	mov	ar3,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xff,00120$
	dec	r6
00120$:
	mov	a,r3
	orl	a,r4
	jz	00105$
	mov	a,r7
	jnz	00102$
00105$:
;	../UI_Manager/Display_Manager/display.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'charToCode'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:100: uint8_t charToCode(char c){
;	-----------------------------------------
;	 function charToCode
;	-----------------------------------------
_charToCode:
	mov	r7,dpl
;	../UI_Manager/Display_Manager/display.c:101: switch(c){
	cjne	r7,#0x26,00177$
00177$:
	jnc	00178$
	ljmp	00166$
00178$:
	mov	a,r7
	add	a,#0xff - 0x7a
	jnc	00179$
	ljmp	00166$
00179$:
	mov	a,r7
	add	a,#0xda
	mov	r7,a
	add	a,#(00180$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00181$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00180$:
	.db	00164$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00163$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00153$
	.db	00154$
	.db	00155$
	.db	00156$
	.db	00157$
	.db	00158$
	.db	00159$
	.db	00160$
	.db	00161$
	.db	00162$
	.db	00166$
	.db	00165$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00101$
	.db	00103$
	.db	00105$
	.db	00107$
	.db	00109$
	.db	00111$
	.db	00113$
	.db	00115$
	.db	00117$
	.db	00119$
	.db	00121$
	.db	00123$
	.db	00125$
	.db	00127$
	.db	00129$
	.db	00131$
	.db	00133$
	.db	00135$
	.db	00137$
	.db	00139$
	.db	00141$
	.db	00143$
	.db	00145$
	.db	00147$
	.db	00149$
	.db	00151$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00166$
	.db	00102$
	.db	00104$
	.db	00106$
	.db	00108$
	.db	00110$
	.db	00112$
	.db	00114$
	.db	00116$
	.db	00118$
	.db	00120$
	.db	00122$
	.db	00124$
	.db	00126$
	.db	00128$
	.db	00130$
	.db	00132$
	.db	00134$
	.db	00136$
	.db	00138$
	.db	00140$
	.db	00142$
	.db	00144$
	.db	00146$
	.db	00148$
	.db	00150$
	.db	00152$
00181$:
	.db	00164$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00163$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00153$>>8
	.db	00154$>>8
	.db	00155$>>8
	.db	00156$>>8
	.db	00157$>>8
	.db	00158$>>8
	.db	00159$>>8
	.db	00160$>>8
	.db	00161$>>8
	.db	00162$>>8
	.db	00166$>>8
	.db	00165$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00101$>>8
	.db	00103$>>8
	.db	00105$>>8
	.db	00107$>>8
	.db	00109$>>8
	.db	00111$>>8
	.db	00113$>>8
	.db	00115$>>8
	.db	00117$>>8
	.db	00119$>>8
	.db	00121$>>8
	.db	00123$>>8
	.db	00125$>>8
	.db	00127$>>8
	.db	00129$>>8
	.db	00131$>>8
	.db	00133$>>8
	.db	00135$>>8
	.db	00137$>>8
	.db	00139$>>8
	.db	00141$>>8
	.db	00143$>>8
	.db	00145$>>8
	.db	00147$>>8
	.db	00149$>>8
	.db	00151$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00166$>>8
	.db	00102$>>8
	.db	00104$>>8
	.db	00106$>>8
	.db	00108$>>8
	.db	00110$>>8
	.db	00112$>>8
	.db	00114$>>8
	.db	00116$>>8
	.db	00118$>>8
	.db	00120$>>8
	.db	00122$>>8
	.db	00124$>>8
	.db	00126$>>8
	.db	00128$>>8
	.db	00130$>>8
	.db	00132$>>8
	.db	00134$>>8
	.db	00136$>>8
	.db	00138$>>8
	.db	00140$>>8
	.db	00142$>>8
	.db	00144$>>8
	.db	00146$>>8
	.db	00148$>>8
	.db	00150$>>8
	.db	00152$>>8
;	../UI_Manager/Display_Manager/display.c:102: case 'A':
00101$:
;	../UI_Manager/Display_Manager/display.c:103: return CHAR_A;
	mov	dpl,#0x82
	ret
;	../UI_Manager/Display_Manager/display.c:104: case 'a':
00102$:
;	../UI_Manager/Display_Manager/display.c:105: return CHAR_a;
	mov	dpl,#0x86
	ret
;	../UI_Manager/Display_Manager/display.c:106: case 'B':
00103$:
;	../UI_Manager/Display_Manager/display.c:107: return CHAR_B;
	mov	dpl,#0x42
	ret
;	../UI_Manager/Display_Manager/display.c:108: case 'b':
00104$:
;	../UI_Manager/Display_Manager/display.c:109: return CHAR_b;
	mov	dpl,#0x46
	ret
;	../UI_Manager/Display_Manager/display.c:110: case 'C':
00105$:
;	../UI_Manager/Display_Manager/display.c:111: return CHAR_C;
	mov	dpl,#0xc2
	ret
;	../UI_Manager/Display_Manager/display.c:112: case 'c':
00106$:
;	../UI_Manager/Display_Manager/display.c:113: return CHAR_c;
	mov	dpl,#0xc6
	ret
;	../UI_Manager/Display_Manager/display.c:114: case 'D':
00107$:
;	../UI_Manager/Display_Manager/display.c:115: return CHAR_D;
	mov	dpl,#0x22
	ret
;	../UI_Manager/Display_Manager/display.c:116: case 'd':
00108$:
;	../UI_Manager/Display_Manager/display.c:117: return CHAR_d;
	mov	dpl,#0x26
	ret
;	../UI_Manager/Display_Manager/display.c:118: case 'E':
00109$:
;	../UI_Manager/Display_Manager/display.c:119: return CHAR_E;
	mov	dpl,#0xa2
	ret
;	../UI_Manager/Display_Manager/display.c:120: case 'e':
00110$:
;	../UI_Manager/Display_Manager/display.c:121: return CHAR_e;
	mov	dpl,#0xa6
	ret
;	../UI_Manager/Display_Manager/display.c:122: case 'F':
00111$:
;	../UI_Manager/Display_Manager/display.c:123: return CHAR_F;
	mov	dpl,#0x62
	ret
;	../UI_Manager/Display_Manager/display.c:124: case 'f':
00112$:
;	../UI_Manager/Display_Manager/display.c:125: return CHAR_f;
	mov	dpl,#0x66
	ret
;	../UI_Manager/Display_Manager/display.c:126: case 'G':
00113$:
;	../UI_Manager/Display_Manager/display.c:127: return CHAR_G;
	mov	dpl,#0xe2
	ret
;	../UI_Manager/Display_Manager/display.c:128: case 'g':
00114$:
;	../UI_Manager/Display_Manager/display.c:129: return CHAR_g;
	mov	dpl,#0xe6
	ret
;	../UI_Manager/Display_Manager/display.c:130: case 'H':
00115$:
;	../UI_Manager/Display_Manager/display.c:131: return CHAR_H;
	mov	dpl,#0x12
	ret
;	../UI_Manager/Display_Manager/display.c:132: case 'h':
00116$:
;	../UI_Manager/Display_Manager/display.c:133: return CHAR_h;
	mov	dpl,#0x16
	ret
;	../UI_Manager/Display_Manager/display.c:134: case 'I':
00117$:
;	../UI_Manager/Display_Manager/display.c:135: return CHAR_I;
	mov	dpl,#0x92
	ret
;	../UI_Manager/Display_Manager/display.c:136: case 'i':
00118$:
;	../UI_Manager/Display_Manager/display.c:137: return CHAR_i;
	mov	dpl,#0x96
	ret
;	../UI_Manager/Display_Manager/display.c:138: case 'J':
00119$:
;	../UI_Manager/Display_Manager/display.c:139: return CHAR_J;
	mov	dpl,#0x52
	ret
;	../UI_Manager/Display_Manager/display.c:140: case 'j':
00120$:
;	../UI_Manager/Display_Manager/display.c:141: return CHAR_j;
	mov	dpl,#0x56
	ret
;	../UI_Manager/Display_Manager/display.c:142: case 'K':
00121$:
;	../UI_Manager/Display_Manager/display.c:143: return CHAR_K;
	mov	dpl,#0xd2
	ret
;	../UI_Manager/Display_Manager/display.c:144: case 'k':
00122$:
;	../UI_Manager/Display_Manager/display.c:145: return CHAR_k;
	mov	dpl,#0xd6
	ret
;	../UI_Manager/Display_Manager/display.c:146: case 'L':
00123$:
;	../UI_Manager/Display_Manager/display.c:147: return CHAR_L;
	mov	dpl,#0x32
	ret
;	../UI_Manager/Display_Manager/display.c:148: case 'l':
00124$:
;	../UI_Manager/Display_Manager/display.c:149: return CHAR_l;
	mov	dpl,#0x36
	ret
;	../UI_Manager/Display_Manager/display.c:150: case 'M':
00125$:
;	../UI_Manager/Display_Manager/display.c:151: return CHAR_M;
	mov	dpl,#0xb2
	ret
;	../UI_Manager/Display_Manager/display.c:152: case 'm':
00126$:
;	../UI_Manager/Display_Manager/display.c:153: return CHAR_m;
	mov	dpl,#0xb6
	ret
;	../UI_Manager/Display_Manager/display.c:154: case 'N':
00127$:
;	../UI_Manager/Display_Manager/display.c:155: return CHAR_N;
	mov	dpl,#0x72
	ret
;	../UI_Manager/Display_Manager/display.c:156: case 'n':
00128$:
;	../UI_Manager/Display_Manager/display.c:157: return CHAR_n;
	mov	dpl,#0x76
	ret
;	../UI_Manager/Display_Manager/display.c:158: case 'O':
00129$:
;	../UI_Manager/Display_Manager/display.c:159: return CHAR_O;
	mov	dpl,#0xf2
	ret
;	../UI_Manager/Display_Manager/display.c:160: case 'o':
00130$:
;	../UI_Manager/Display_Manager/display.c:161: return CHAR_o;
	mov	dpl,#0xf6
	ret
;	../UI_Manager/Display_Manager/display.c:162: case 'P':
00131$:
;	../UI_Manager/Display_Manager/display.c:163: return CHAR_P;
	mov	dpl,#0x0a
	ret
;	../UI_Manager/Display_Manager/display.c:164: case 'p':
00132$:
;	../UI_Manager/Display_Manager/display.c:165: return CHAR_p;
	mov	dpl,#0x0e
	ret
;	../UI_Manager/Display_Manager/display.c:166: case 'Q':
00133$:
;	../UI_Manager/Display_Manager/display.c:167: return CHAR_Q;
	mov	dpl,#0x8a
	ret
;	../UI_Manager/Display_Manager/display.c:168: case 'q':
00134$:
;	../UI_Manager/Display_Manager/display.c:169: return CHAR_q;
	mov	dpl,#0x8e
	ret
;	../UI_Manager/Display_Manager/display.c:170: case 'R':
00135$:
;	../UI_Manager/Display_Manager/display.c:171: return CHAR_R;
	mov	dpl,#0x4a
	ret
;	../UI_Manager/Display_Manager/display.c:172: case 'r':
00136$:
;	../UI_Manager/Display_Manager/display.c:173: return CHAR_r;
	mov	dpl,#0x4e
	ret
;	../UI_Manager/Display_Manager/display.c:174: case 'S':
00137$:
;	../UI_Manager/Display_Manager/display.c:175: return CHAR_S;
	mov	dpl,#0xca
	ret
;	../UI_Manager/Display_Manager/display.c:176: case 's':
00138$:
;	../UI_Manager/Display_Manager/display.c:177: return CHAR_s;
	mov	dpl,#0xce
	ret
;	../UI_Manager/Display_Manager/display.c:178: case 'T':
00139$:
;	../UI_Manager/Display_Manager/display.c:179: return CHAR_T;
	mov	dpl,#0x2a
	ret
;	../UI_Manager/Display_Manager/display.c:180: case 't':
00140$:
;	../UI_Manager/Display_Manager/display.c:181: return CHAR_t;
	mov	dpl,#0x2e
	ret
;	../UI_Manager/Display_Manager/display.c:182: case 'U':
00141$:
;	../UI_Manager/Display_Manager/display.c:183: return CHAR_U;
	mov	dpl,#0xaa
	ret
;	../UI_Manager/Display_Manager/display.c:184: case 'u':
00142$:
;	../UI_Manager/Display_Manager/display.c:185: return CHAR_u;
	mov	dpl,#0xae
	ret
;	../UI_Manager/Display_Manager/display.c:186: case 'V':
00143$:
;	../UI_Manager/Display_Manager/display.c:187: return CHAR_V;
	mov	dpl,#0x6a
	ret
;	../UI_Manager/Display_Manager/display.c:188: case 'v':
00144$:
;	../UI_Manager/Display_Manager/display.c:189: return CHAR_v;
	mov	dpl,#0x6e
	ret
;	../UI_Manager/Display_Manager/display.c:190: case 'W':
00145$:
;	../UI_Manager/Display_Manager/display.c:191: return CHAR_W;
	mov	dpl,#0xea
;	../UI_Manager/Display_Manager/display.c:192: case 'w':
	ret
00146$:
;	../UI_Manager/Display_Manager/display.c:193: return CHAR_w;
	mov	dpl,#0xee
;	../UI_Manager/Display_Manager/display.c:194: case 'X':
	ret
00147$:
;	../UI_Manager/Display_Manager/display.c:195: return CHAR_X;
	mov	dpl,#0x1a
;	../UI_Manager/Display_Manager/display.c:196: case 'x':
	ret
00148$:
;	../UI_Manager/Display_Manager/display.c:197: return CHAR_x;
	mov	dpl,#0x1e
;	../UI_Manager/Display_Manager/display.c:198: case 'Y':
	ret
00149$:
;	../UI_Manager/Display_Manager/display.c:199: return CHAR_Y;
	mov	dpl,#0x9a
;	../UI_Manager/Display_Manager/display.c:200: case 'y':
	ret
00150$:
;	../UI_Manager/Display_Manager/display.c:201: return CHAR_y;
	mov	dpl,#0x9e
;	../UI_Manager/Display_Manager/display.c:202: case 'Z':
	ret
00151$:
;	../UI_Manager/Display_Manager/display.c:203: return CHAR_Z;
	mov	dpl,#0x5a
;	../UI_Manager/Display_Manager/display.c:204: case 'z':
	ret
00152$:
;	../UI_Manager/Display_Manager/display.c:205: return CHAR_z;
	mov	dpl,#0x5e
;	../UI_Manager/Display_Manager/display.c:206: case '0':
	ret
00153$:
;	../UI_Manager/Display_Manager/display.c:207: return CHAR_0;
	mov	dpl,#0x0c
;	../UI_Manager/Display_Manager/display.c:208: case '1':
	ret
00154$:
;	../UI_Manager/Display_Manager/display.c:209: return CHAR_1;
	mov	dpl,#0x8c
;	../UI_Manager/Display_Manager/display.c:210: case '2':
	ret
00155$:
;	../UI_Manager/Display_Manager/display.c:211: return CHAR_2;
	mov	dpl,#0x4c
;	../UI_Manager/Display_Manager/display.c:212: case '3':
	ret
00156$:
;	../UI_Manager/Display_Manager/display.c:213: return CHAR_3;
	mov	dpl,#0xcc
;	../UI_Manager/Display_Manager/display.c:214: case '4':
	ret
00157$:
;	../UI_Manager/Display_Manager/display.c:215: return CHAR_4;
	mov	dpl,#0x2c
;	../UI_Manager/Display_Manager/display.c:216: case '5':
	ret
00158$:
;	../UI_Manager/Display_Manager/display.c:217: return CHAR_5;
	mov	dpl,#0xac
;	../UI_Manager/Display_Manager/display.c:218: case '6':
	ret
00159$:
;	../UI_Manager/Display_Manager/display.c:219: return CHAR_6;
	mov	dpl,#0x6c
;	../UI_Manager/Display_Manager/display.c:220: case '7':
	ret
00160$:
;	../UI_Manager/Display_Manager/display.c:221: return CHAR_7;
	mov	dpl,#0xec
;	../UI_Manager/Display_Manager/display.c:222: case '8':
	ret
00161$:
;	../UI_Manager/Display_Manager/display.c:223: return CHAR_8;
	mov	dpl,#0x1c
;	../UI_Manager/Display_Manager/display.c:224: case '9':
	ret
00162$:
;	../UI_Manager/Display_Manager/display.c:225: return CHAR_9;
	mov	dpl,#0x9c
;	../UI_Manager/Display_Manager/display.c:226: case '+':
	ret
00163$:
;	../UI_Manager/Display_Manager/display.c:227: return CHAR_PLUS;
	mov	dpl,#0xd4
;	../UI_Manager/Display_Manager/display.c:228: case '&':
	ret
00164$:
;	../UI_Manager/Display_Manager/display.c:229: return CHAR_AND;
	mov	dpl,#0x64
;	../UI_Manager/Display_Manager/display.c:230: case ';':
	ret
00165$:
;	../UI_Manager/Display_Manager/display.c:231: return CHAR_STAR_8;
	mov	dpl,#0xe0
;	../UI_Manager/Display_Manager/display.c:232: }
	ret
00166$:
;	../UI_Manager/Display_Manager/display.c:234: return CHAR_NULL;
	mov	dpl,#0x04
;	../UI_Manager/Display_Manager/display.c:235: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeShiftReg'
;------------------------------------------------------------
;value                     Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:240: void writeShiftReg(uint16_t value){
;	-----------------------------------------
;	 function writeShiftReg
;	-----------------------------------------
_writeShiftReg:
	mov	r6,dpl
	mov	r7,dph
;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
	mov	r5,#0x04
00102$:
;	../UI_Manager/Display_Manager/display.c:244: SER = value & (1 << i);
	mov	b,r5
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00116$
00115$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00116$:
	djnz	b,00115$
	mov	a,r6
	anl	ar3,a
	mov	a,r7
	anl	ar4,a
;	assignBit
	mov	a,r3
	orl	a,r4
	add	a,#0xff
	mov	_SER,c
;	../UI_Manager/Display_Manager/display.c:247: SCK = 1;
;	assignBit
	setb	_SCK
;	../UI_Manager/Display_Manager/display.c:248: SCK = 0;
;	assignBit
	clr	_SCK
;	../UI_Manager/Display_Manager/display.c:243: for(i = 4; i < USEFUL_BITS+4; i++){
	inc	r5
	cjne	r5,#0x10,00117$
00117$:
	jc	00102$
;	../UI_Manager/Display_Manager/display.c:250: RCK = 1;
;	assignBit
	setb	_RCK
;	../UI_Manager/Display_Manager/display.c:251: RCK = 0;
;	assignBit
	clr	_RCK
;	../UI_Manager/Display_Manager/display.c:252: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flipByte'
;------------------------------------------------------------
;line                      Allocated to registers r7 
;i                         Allocated to registers r5 
;temp                      Allocated to registers r6 
;------------------------------------------------------------
;	../UI_Manager/Display_Manager/display.c:255: uint8_t flipByte(uint8_t line){
;	-----------------------------------------
;	 function flipByte
;	-----------------------------------------
_flipByte:
	mov	r7,dpl
;	../UI_Manager/Display_Manager/display.c:256: uint8_t i, temp = 0;
	mov	r6,#0x00
;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
	mov	r5,#0x00
00102$:
;	../UI_Manager/Display_Manager/display.c:259: temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
	push	ar6
	mov	b,r5
	inc	b
	mov	r3,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00122$
00121$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00122$:
	djnz	b,00121$
	mov	ar2,r7
	mov	r6,#0x00
	mov	a,r2
	anl	ar3,a
	mov	a,r6
	anl	ar4,a
	pop	ar6
	mov	a,r3
	orl	a,r4
	jz	00106$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00107$
00106$:
	mov	r3,#0x00
	mov	r4,#0x00
00107$:
	mov	ar4,r5
	mov	b,r4
	inc	b
	mov	a,r3
	sjmp	00126$
00124$:
	add	a,acc
00126$:
	djnz	b,00124$
	mov	r3,a
	mov	ar4,r6
	mov	a,r4
	orl	ar3,a
	mov	ar6,r3
;	../UI_Manager/Display_Manager/display.c:258: for(i = 0; i < 8; i++){
	inc	r5
	cjne	r5,#0x08,00127$
00127$:
	jc	00102$
;	../UI_Manager/Display_Manager/display.c:262: return temp;
	mov	dpl,r6
;	../UI_Manager/Display_Manager/display.c:263: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
