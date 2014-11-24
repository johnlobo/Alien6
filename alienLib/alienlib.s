;******************************
; 	unsigned char detectarColision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned ; 			  char y2,unsigned char w2,unsigned char h2){
;	return ((x1 < x2 + w2) &&
;	(x1 + w1 > x2) &&
;	(y1 < y2 + h2) &&
;	(h1 + y1 > y2));
;
; 	Descripción:	Devuelve la dirección de pantalla correspondiente a las coordenadas x,y pasadas 
;					como parámetro
;	Entrada:	- Coordenada x objeto 1
;				- Coordenada y objeto 1
				- Ancho objeto 1
				- Alto objeto 1
				- Coordenada x objeto 1
;				- Coordenada y objeto 1
				- Ancho objeto 1
				- Alto objeto 1
;	Salida:		- HL = 1 si se ha producido una colisión, HL = 0 en caso contrario
;	Modificados: 
;
; @JohnLobo Nov15  
;******************************
.globl _detectColision
_detectColision::		
	
	ld ix,#2
	add ix,sp
	ld h,4 (ix)				;recupero la coordenada x2
	ld l,5 (ix)				;recupero la coordenada y2
	ld (#coordenadas2),h
	ld (#coordenadas2+1),l
	ex de,hl
	ld h,2 (ix)				;recupero el ancho1
	ld l,3 (ix)				;recupero el alto1
	
	
	or a
	sbc hl,de
	jp m,aa1   ; Salta si HL < DE
	jp p,aa1   ; Salta si HL >= DE
	
	
	ret
	coordenadas1: .dw #0
	dimensiones1: .dw #0
	coordenadas2: .dw #0
	dimensiones2: .dw #0
	resultado1: .db #0
	resultado2: .db #0
	resultado3: .db #0
	resultado4: .db #0

;******************************
; 	int getScreenAddress (char x, char y)
;
; 	Descripción:	Devuelve la dirección de pantalla correspondiente a las coordenadas x,y pasadas 
;					como parámetro
;	Entrada:	- Coordenada x
;				- Coordenada y
;	Salida:		- HL : Dirección de pantalla.
;	Modificados: HL devuelve la dirección de pantalla
;
; @JohnLobo Nov15  
;******************************
.globl _getScreenAddress
_getScreenAddress::			; dibujar en pantalla el sprite
	push bc
	push de
	ld ix,#6
	add ix,sp
	ld b,0 (ix)				;recupero la coordenada x
	ld c,1 (ix)				;recupero la coordenada y

getScreenAddressInicio:	
	ld a,b					;Compruebo si x esta dentro de los limites de la pantalla
	cp #0
	jr c,#error
	cp #0x50
	jr nc,#error
	ld a,c					;Compruebo si y esta dentro de los limites de la pantalla
	cp #0xc8
	jr nc,#error
	cp #0
	jr c,#error
	
calculardireccionGSA:			;busco la dirección de pantalla en la tabla de direcciones 
	
	ld a,c					;cargo la coordenada y del sprite en A
	ld de,#direccionesPantalla		;cargo la tabla de direcciones de pantalla
	ld h,#0
	ld l,a					;cargo HL con la coordenada y del sprite
	add hl,hl				;Multiplico por dos la coordenda y porque los elementos de la tabla son de dos bytes 
	add hl,de				;posiciono DE en el valor concreto de la tabla
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
	ld a,b					;cargo la coordenada x en A
	add l					;añado la coordenada x a la dirección obtenida en la tabla
	ld l,a
	jr nc,#salir
	inc h
	jr #salir
error:
	ld hl,#0x0000
salir:
	pop de
	pop bc
	ret
	
;******************************
; printSpriteXOR (int sprite, char x, char y, int direccion)
;
; 	Descripción:	Imprime un sprite a partir de unas coordenadas de pantalla, o de una dirección 
;					aplicando clipping para no salir fuera de los límites de la pantalla y comprobando
;					al inicio si las coordenadas x e y están dentro de dichos límites.
;	Entrada:	- Dirección del sprite. Comienza con el alto y el ancho
;				- Coordenada x
;				- Coordenada y
;				- Dirección de pantalla. 0 Si se quiere que se calcule a partir de las coordenadas
;	Salida:	Ninguna
;	Modificados: Ninguno. Se hace uso del set alternativo de registros
;
; @JohnLobo Nov15  
;******************************
.globl _printSpriteXOR
_printSpriteXOR::			; dibujar en pantalla el sprite
	exx						; cambio los registros
	ld ix,#2
	add ix,sp
	ld b,2 (ix)				;recupero la coordenada x
	ld c,3 (ix)				;recupero la coordenada y
  	ld l,4 (ix)				;recupero la direccion del pantalla (2 bytes)
	ld h,5 (ix)
	
	ld a,b					;Compruebo si x esta dentro de los limites de la pantalla
	cp #0
	jp c,#volver
	cp #0x50
	jp nc,#volver
	ld a,c					;Compruebo si y esta dentro de los limites de la pantalla
	cp #0xc8
	jp nc,#volver
	cp #0
	jr c,#volver
	
	ld a,h					;compruebo si la dirección es 0 para calcularla o pasar a calcular el clipping
	or l
	jr nz,#calcularclipping
calculardireccion:			;busco la dirección de pantalla en la tabla de direcciones 
	ld a,c					;cargo la coordenada y del sprite en A
	ld de,#direccionesPantalla		;cargo la tabla de direcciones de pantalla
	ld h,#0
	ld l,a					;cargo HL con la coordenada y del sprite
	add hl,hl				;Multiplico por dos la coordenda y porque los elementos de la tabla son de dos bytes 
	add hl,de				;posiciono DE en el valor concreto de la tabla
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
	ld a,b					;cargo la coordenada x en A
	add l					;añado la coordenada x a la dirección obtenida en la tabla
	ld l,a
	jr nc,#calcularclipping
	inc h
calcularclipping:
	ld e,0 (ix)				;recupero la dirección del sprite (dos bytes)
	ld d,1 (ix)
	xor a
	ld (#anchoFuera),a
	ld a,(de)
	ld (#ancho),a
	add b
	cp #0x50
	jr c,#calculoalto
	sub #0x50
	ld (#anchoFuera),a
calculoalto:
	xor a
	ld (#altoFuera),a
	inc de
	ld a,(de)
	inc de
	ld (#alto),a
	add c
	cp #0xc8
	jr c,#imprimirsprite
	ld a,#0xc8
	sub c
	ld (#altoFuera),a	
imprimirsprite:	
	ld a,(#ancho)
    ld (#anchox0+#1),a			;actualizo rutina de captura
	sub #1
	cpl
	ld (#suma_siguiente_lineax0+#1),a    ;comparten los 2 los mismos valores.
	ld a,(#alto)
	jp cpc_putspxor0
cpc_putspxor0:
	.db #0xfd
	ld h,a						;ALTO, SE PUEDE TRABAJAR CON HX DIRECTAMENTE
	ld b,#7
anchox0:
loop_alto_2x:
	ld c,#4
loop_ancho_2x:
	ld a, (#anchoFuera)		;clipping cargo en A los bytes que quedan fuera
	cp c					;comparo los bytes que quedan por imprimir con los que quedan fuera
	jr nc,#saltoClipping
	ld a,(de)
	xor (hl)
	ld (hl),a
saltoClipping:	
	inc de
	inc hl
	dec c
	jp nz,loop_ancho_2x
	.db #0xfd
	dec h
	jr z,#volver

suma_siguiente_lineax0:
salto_lineax:
	ld c,#0xff						;&07F6 			;SALTO LINEA MENOS ANCHO
	add hl,bc
	jp nc,loop_alto_2x 			;SIG_LINEA_2ZZ		;SI NO DESBORDA VA A LA SIGUIENTE LINEA
	ld bc,#0xc050
	add hl,bc
	ld b,#7							;SÓLO SE DARÍA UNA DE CADA 8 VECES EN UN SPRITE
	jp loop_alto_2x

volver:
	exx
	ret

ancho: .db #0				;almacena el ancho del sprite a imprimir
alto: .db #0				;almacena el ancho del sprite a imprimir
anchoFuera: .db #0		;almacena el ancho del sprite a imprimir
altoFuera: .db #0			;almacena el ancho del sprite a imprimir
direccionesPantalla:
.dw #0xC000,#0xC800,#0xD000,#0xD800,#0xE000,#0xE800,#0xF000,#0xF800,#0xC050,#0xC850,#0xD050,#0xD850,#0xE050,#0xE850,#0xF050,#0xF850,#0xC0A0,#0xC8A0,#0xD0A0,#0xD8A0,#0xE0A0,#0xE8A0,#0xF0A0,#0xF8A0,#0xC0F0,#0xC8F0,#0xD0F0,#0xD8F0,#0xE0F0,#0xE8F0,#0xF0F0,#0xF8F0,#0xC140,#0xC940,#0xD140,#0xD940,#0xE140,#0xE940,#0xF140,#0xF940,#0xC190,#0xC990,#0xD190,#0xD990,#0xE190,#0xE990,#0xF190,#0xF990,#0xC1E0,#0xC9E0,#0xD1E0,#0xD9E0,#0xE1E0,#0xE9E0,#0xF1E0,#0xF9E0,#0xC230,#0xCA30,#0xD230,#0xDA30,#0xE230,#0xEA30,#0xF230,#0xFA30,#0xC280,#0xCA80,#0xD280,#0xDA80,#0xE280,#0xEA80,#0xF280,#0xFA80,#0xC2D0,#0xCAD0,#0xD2D0,#0xDAD0,#0xE2D0,#0xEAD0,#0xF2D0,#0xFAD0,#0xC320,#0xCB20,#0xD320,#0xDB20,#0xE320,#0xEB20,#0xF320,#0xFB20,#0xC370,#0xCB70,#0xD370,#0xDB70,#0xE370,#0xEB70,#0xF370,#0xFB70,#0xC3C0,#0xCBC0,#0xD3C0,#0xDBC0,#0xE3C0,#0xEBC0,#0xF3C0,#0xFBC0,#0xC410,#0xCC10,#0xD410,#0xDC10,#0xE410,#0xEC10,#0xF410,#0xFC10,#0xC460,#0xCC60,#0xD460,#0xDC60,#0xE460,#0xEC60,#0xF460,#0xFC60,#0xC4B0,#0xCCB0,#0xD4B0,#0xDCB0,#0xE4B0,#0xECB0,#0xF4B0,#0xFCB0,#0xC500,#0xCD00,#0xD500,#0xDD00,#0xE500,#0xED00,#0xF500,#0xFD00,#0xC550,#0xCD50,#0xD550,#0xDD50,#0xE550,#0xED50,#0xF550,#0xFD50,#0xC5A0,#0xCDA0,#0xD5A0,#0xDDA0,#0xE5A0,#0xEDA0,#0xF5A0,#0xFDA0,#0xC5F0,#0xCDF0,#0xD5F0,#0xDDF0,#0xE5F0,#0xEDF0,#0xF5F0,#0xFDF0,#0xC640,#0xCE40,#0xD640,#0xDE40,#0xE640,#0xEE40,#0xF640,#0xFE40,#0xC690,#0xCE90,#0xD690,#0xDE90,#0xE690,#0xEE90,#0xF690,#0xFE90,#0xC6E0,#0xCEE0,#0xD6E0,#0xDEE0,#0xE6E0,#0xEEE0,#0xF6E0,#0xFEE0,#0xC730,#0xCF30,#0xD730,#0xDF30,#0xE730,#0xEF30,#0xF730,#0xFF30,#0xC780,#0xCF80,#0xD780,#0xDF80,#0xE780,#0xEF80,#0xF780,#0xFF80

cpc_GetScrAddress0:			;en HL están las coordenadas

	;LD A,H
	LD (#inc_ancho+1),A
	LD A,L
	SRL A
	SRL A
	SRL A
	; A indica el bloque a multiplicar x &50
	LD D,A						;D
	SLA A
	SLA A
	SLA A
	SUB L
	NEG
	; A indica el desplazamiento a multiplicar x &800
	LD E,A						;E
	LD L,D
	LD H,#0
	ADD HL,HL
	LD BC,#bloques
	ADD HL,BC
	;HL APUNTA AL BLOQUE BUSCADO
	LD C,(HL)
	INC HL
	LD H,(HL)
	LD L,C
	;HL TIENE EL VALOR DEL BLOQUE DE 8 BUSCADO
	PUSH HL
	LD D,#0
	LD HL,#sub_bloques
	ADD HL,DE
	LD A,(HL)
	POP HL
	ADD H
	LD H,A
inc_ancho:
	LD E,#0
	ADD HL,DE
	RET

bloques:
.DW #0XC000,#0XC050,#0XC0A0,#0XC0F0,#0XC140,#0XC190,#0XC1E0,#0XC230,#0XC280,#0XC2D0,#0XC320,#0XC370,#0XC3C0,#0XC410,#0XC460,#0XC4B0,#0XC500,#0XC550,#0XC5A0,#0XC5F0,#0XC640,#0XC690,#0XC6E0,#0XC730,#0XC780
sub_bloques:
.DB #0X00,#0X08,#0X10,#0X18,#0X20,#0X28,#0X30,#0X38
