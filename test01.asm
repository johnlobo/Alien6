;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Sun Nov 23 00:23:51 2014
;--------------------------------------------------------
	.module test01
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setColours
	.globl _pause
	.globl _getScreenAddress
	.globl _printSpriteXOR
	.globl _setColour
	.globl _setMode
	.globl _disableFirmware
	.globl _enableFirmware
	.globl _tintas
	.globl _heart
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_heart::
	.ds 17
_tintas::
	.ds 17
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;test01.c:19: void pause(unsigned char p){
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;test01.c:21: for (i=0; i < p; i++) {
	ld	d,#0x00
00103$:
	ld	hl,#2
	add	hl,sp
	ld	a,d
	sub	a, (hl)
	ret	NC
;test01.c:24: __endasm;
	halt
;test01.c:21: for (i=0; i < p; i++) {
	inc	d
	jr	00103$
	ret
_pause_end::
;test01.c:32: void setColours()
;	---------------------------------
; Function setColours
; ---------------------------------
_setColours_start::
_setColours:
;test01.c:35: for (x=0; x<17; x++)
	ld	e,#0x00
00102$:
;test01.c:37: setColour(x,tintas[x]);
	ld	hl,#_tintas
	ld	d,#0x00
	add	hl, de
	ld	h,(hl)
	push	de
	push	hl
	inc	sp
	ld	a,e
	push	af
	inc	sp
	call	_setColour
	pop	af
	pop	de
;test01.c:35: for (x=0; x<17; x++)
	inc	e
	ld	a,e
	sub	a, #0x11
	jr	C,00102$
	ret
_setColours_end::
;test01.c:41: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;test01.c:46: disableFirmware();
	call	_disableFirmware
;test01.c:48: setMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_setMode
	inc	sp
;test01.c:50: setColours();
	call	_setColours
;test01.c:52: setColour(17,3);
	ld	hl,#0x0311
	push	hl
	call	_setColour
	pop	af
;test01.c:54: for (i=25;i<200;i=i+5){
	ld	d,#0x19
;test01.c:55: for (j=0;j<79;j=j+3){
00109$:
	ld	e,#0x00
00103$:
;test01.c:56: add=getScreenAddress(j,i);
	push	de
	push	de
	call	_getScreenAddress
	pop	af
	pop	de
;test01.c:57: printSpriteXOR(heart,j,i,0);
	ld	bc,#_heart
	push	de
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	a,#0x14
	push	af
	inc	sp
	call	_pause
	inc	sp
	pop	de
;test01.c:55: for (j=0;j<79;j=j+3){
	inc	e
	inc	e
	inc	e
	ld	a,e
	sub	a, #0x4F
	jr	C,00103$
;test01.c:60: pause(200);
	push	de
	ld	a,#0xC8
	push	af
	inc	sp
	call	_pause
	inc	sp
	pop	de
;test01.c:54: for (i=25;i<200;i=i+5){
	ld	a,d
	add	a, #0x05
	ld	d,a
	sub	a, #0xC8
	jr	C,00109$
;test01.c:63: enableFirmware();
	jp	_enableFirmware
_main_end::
	.area _CODE
	.area _INITIALIZER
__xinit__heart:
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x50	; 80	'P'
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0xB4	; 180
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xB4	; 180
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
__xinit__tintas:
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x0B	; 11
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x0C	; 12
	.db #0x1C	; 28
	.db #0x1A	; 26
	.db #0x16	; 22
	.db #0x1E	; 30
	.db #0x13	; 19
	.db #0x1F	; 31
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x14	; 20
	.area _CABS (ABS)
