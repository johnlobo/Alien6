;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Wed Nov 05 10:54:46 2014
;--------------------------------------------------------
	.module alien6
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _InitialSetUp
	.globl _game
	.globl _inicializarNivel
	.globl _menu
	.globl _pintarMenu
	.globl _redefineKeys
	.globl _win
	.globl _levelUp
	.globl _gameOver
	.globl _help
	.globl _debug
	.globl _inicializarPartida
	.globl _mostrarNivel
	.globl _mostrarVidasProta
	.globl _inicializarTeclado
	.globl _pintarProta
	.globl _moverProta
	.globl _borrarProta
	.globl _inicializarProta
	.globl _pintarDisparos
	.globl _moverDisparos
	.globl _borrarDisparos
	.globl _crearDisparo
	.globl _inicializarDisparos
	.globl _pintarMalos
	.globl _moverMalos
	.globl _borrarMalos
	.globl _inicializarMalos
	.globl _cargarMalo
	.globl _malosACero
	.globl _crearAtaque
	.globl _inicializarAtaques
	.globl _pintarAddones
	.globl _moverAddones
	.globl _borrarAddones
	.globl _crearAddon
	.globl _inicializarAddones
	.globl _pintarDisparosMalo
	.globl _crearDisparoMalo
	.globl _moverDisparosMalos
	.globl _borrarDisparosMalos
	.globl _inicializarDisparosMalos
	.globl _animarExplosiones
	.globl _actualizarExplosiones
	.globl _crearExplosion
	.globl _inicializarExplosiones
	.globl _moverEstrellas
	.globl _pintarEstrellas
	.globl _borrarEstrellas
	.globl _inicializarEstrellas
	.globl _GetMode0PixelColorByte
	.globl _pixelEstrella
	.globl _letrasColorRojo
	.globl _letrasColorAzul
	.globl _detectarColision
	.globl _set_colours
	.globl _pause
	.globl _scr_waitVSYNC
	.globl _halt_me
	.globl _getTime
	.globl _interrupciones
	.globl _asm_data_quezesto
	.globl _cpc_WyzInitPlayer
	.globl _cpc_WyzSetPlayerOff
	.globl _cpc_WyzSetPlayerOn
	.globl _cpc_WyzStartEffect
	.globl _cpc_WyzLoadSong
	.globl _cpc_SetInkGphStr
	.globl _cpc_PrintGphStrXY
	.globl _cpc_PrintGphStr
	.globl _cpc_RedefineKey
	.globl _cpc_TestKey
	.globl _cpc_AssignKey
	.globl _cpc_ScanKeyboard
	.globl _cpc_AnyKeyPressed
	.globl _cpc_PutSpXOR
	.globl _cpc_ClrScr
	.globl _cpc_Random
	.globl _cpc_SetColour
	.globl _cpc_SetMode
	.globl _sprintf
	.globl _cambio_score
	.globl _score
	.globl _MAX_DISPAROS_MALOS
	.globl _estrellasMovidas
	.globl _lastMovedEstrella
	.globl _pStar
	.globl _nStar
	.globl _nTimeLast
	.globl _nFPS
	.globl _timer1
	.globl _timer0
	.globl _addon003
	.globl _addon002
	.globl _addon001
	.globl _addon000
	.globl _fire002
	.globl _fire001
	.globl _fire000
	.globl _toque003
	.globl _toque002
	.globl _toque001
	.globl _toque000
	.globl _baddie03
	.globl _baddie02
	.globl _redFlag
	.globl _greenFlag
	.globl _plane
	.globl _heart
	.globl _shot3
	.globl _shot2
	.globl _explosion02003
	.globl _explosion02002
	.globl _explosion02001
	.globl _explosion02000
	.globl _baddie01
	.globl _shot
	.globl _nave
	.globl _tintas
	.globl _trayectoria1
	.globl _addon_sprite
	.globl _addones_activos
	.globl _addones
	.globl _max_ataques_activos
	.globl _ataques_activos
	.globl _ataques
	.globl _formMoved
	.globl _stepCount
	.globl _velYForm
	.globl _velXForm
	.globl _aux_txt
	.globl _hostilidad
	.globl _nivel
	.globl _previous_state
	.globl _state
	.globl _explosiones_lastUpdated
	.globl _explosion_sprite
	.globl _explosiones_activas
	.globl _explosiones
	.globl _malos_activos
	.globl _malos
	.globl _prota
	.globl _disparos_activos_malos
	.globl _disparosMalos
	.globl _disparos_activos
	.globl _disparos
	.globl _aStars
	.globl _direccionLinea
	.globl _SONG_0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_aStars::
	.ds 80
_disparos::
	.ds 105
_disparos_activos::
	.ds 1
_disparosMalos::
	.ds 84
_disparos_activos_malos::
	.ds 1
_prota::
	.ds 31
_malos::
	.ds 168
_malos_activos::
	.ds 1
_explosiones::
	.ds 192
_explosiones_activas::
	.ds 1
_explosion_sprite::
	.ds 16
_explosiones_lastUpdated::
	.ds 4
_state::
	.ds 1
_previous_state::
	.ds 1
_nivel::
	.ds 1
_hostilidad::
	.ds 1
_aux_txt::
	.ds 6
_velXForm::
	.ds 1
_velYForm::
	.ds 1
_stepCount::
	.ds 1
_formMoved::
	.ds 1
_ataques::
	.ds 18
_ataques_activos::
	.ds 1
_max_ataques_activos::
	.ds 1
_addones::
	.ds 20
_addones_activos::
	.ds 1
_addon_sprite::
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_trayectoria1::
	.ds 20
_tintas::
	.ds 17
_nave::
	.ds 64
_shot::
	.ds 4
_baddie01::
	.ds 60
_explosion02000::
	.ds 64
_explosion02001::
	.ds 64
_explosion02002::
	.ds 64
_explosion02003::
	.ds 64
_shot2::
	.ds 12
_shot3::
	.ds 8
_heart::
	.ds 15
_plane::
	.ds 15
_greenFlag::
	.ds 12
_redFlag::
	.ds 12
_baddie02::
	.ds 32
_baddie03::
	.ds 32
_toque000::
	.ds 16
_toque001::
	.ds 16
_toque002::
	.ds 16
_toque003::
	.ds 16
_fire000::
	.ds 4
_fire001::
	.ds 4
_fire002::
	.ds 4
_addon000::
	.ds 15
_addon001::
	.ds 15
_addon002::
	.ds 15
_addon003::
	.ds 15
_timer0::
	.ds 2
_timer1::
	.ds 2
_nFPS::
	.ds 1
_nTimeLast::
	.ds 4
_nStar::
	.ds 1
_pStar::
	.ds 2
_lastMovedEstrella::
	.ds 4
_estrellasMovidas::
	.ds 1
_MAX_DISPAROS_MALOS::
	.ds 1
_score::
	.ds 2
_cambio_score::
	.ds 1
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
;datos.h:11: void asm_data_quezesto(void) {
;	---------------------------------
; Function asm_data_quezesto
; ---------------------------------
_asm_data_quezesto_start::
_asm_data_quezesto:
;datos.h:127: __endasm;
	_SONG_TABLE_0:
	.dw _SONG_0
	_RULE_TABLE_0:
	.dw PAUTA_0,PAUTA_1,PAUTA_2,PAUTA_3,PAUTA_4,PAUTA_5,PAUTA_6
	PAUTA_0:
	.DB #46,#0,#12,#0,#10,#0,#9,#0,#129
	PAUTA_1:
	.DB #46,#0,#13,#0,#12,#0,#10,#0,#10,#0,#9,#0,#8,#0,#12,#0,#10,#0,#9,#0,#129
	PAUTA_2:
	.DB #7,#0,#8,#0,#9,#0,#9,#0,#8,#0,#7,#0,#6,#0,#129
	PAUTA_3:
	.DB #45,#0,#12,#0,#12,#0,#11,#0,#11,#0,#10,#0,#10,#0,#9,#0,#129
	PAUTA_4:
	.DB #7,#0,#8,#0,#8,#0,#8,#0,#7,#0,#6,#0,#6,#0,#6,#0,#6,#0,#6,#0,#5,#0,#5,#0,#5,#0,#5,#0,#5,#0,#138
	PAUTA_5:
	.DB #7,#0,#8,#0,#9,#0,#8,#0,#7,#0,#6,#0,#129
	PAUTA_6:
	.DB #77,#0,#12,#0,#11,#0,#10,#0,#9,#0,#8,#0,#7,#0,#9,#0,#8,#0,#7,#0,#129
	_SOUND_TABLE_0:
	.dw SONIDO1
	.dw SONIDO2
	.dw SONIDO3
	SONIDO0:
	.DB #23,#63,#0,#116,#110,#0,#255
	SONIDO1:
	.DB #162,#47,#0,#23,#93,#9,#255
	SONIDO2:
	.DB #0,#10,#5,#255
	SONIDO3:
	.DB #186,#58,#0,#0,#102,#0,#162,#131,#0,#255
	_EFFECT_TABLE:
	.dw _EFECTO0
	.dw _EFECTO1
	.dw _EFECTO2
	.dw _EFECTO3
	_EFECTO0:
	.db #0x58,#0x0D
	.db #0x50,#0x0B
	.db #0x47,#0x0A
	.db #0x3E,#0x06
	.db #0x35,#0x03
	.db #0x50,#0x09
	.db #0x47,#0x0A
	.db #0x3E,#0x07
	.db #0xFF
	_EFECTO1:
	.db #0x58,#0x0C
	.db #0x5D,#0x0D
	.db #0x61,#0x0E
	.db #0x66,#0x0F
	.db #0x6A,#0x0E
	.db #0x6F,#0x0D
	.db #0x7A,#0x0C
	.db #0x78,#0x0B
	.db #0x7C,#0x0A
	.db #0x85,#0x09
	.db #0x8E,#0x08
	.db #0x97,#0x07
	.db #0xA0,#0x06
	.db #0xA9,#0x05
	.db #0xFF
	_EFECTO2:
	.db #0x1F,#0x0B
	.db #0x1A,#0x0C
	.db #0x1F,#0x0D
	.db #0x16,#0x0E
	.db #0x1F,#0x0E
	.db #0x0D,#0x0D
	.db #0x1F,#0x0C
	.db #0x0D,#0x0B
	.db #0x00,#0x00
	.db #0x00,#0x00
	.db #0x1F,#0x08
	.db #0x1A,#0x09
	.db #0x1F,#0x0A
	.db #0x16,#0x0B
	.db #0x1F,#0x0B
	.db #0x0D,#0x0A
	.db #0x1F,#0x09
	.db #0x0D,#0x07
	.db #0x00,#0x00
	.db #0x00,#0x00
	.db #0x1F,#0x06
	.db #0x1A,#0x07
	.db #0x1F,#0x08
	.db #0x16,#0x08
	.db #0x1F,#0x07
	.db #0x0D,#0x06
	.db #0x1F,#0x05
	.db #0xFF
	_EFECTO3:
	.db #0x1A,#0x0E
	.db #0x1A,#0x0E
	.db #0x00,#0x00
	.db #0x1A,#0x0A
	.db #0x1A,#0x0A
	.db #0x00,#0x00
	.db #0x1A,#0x0C
	.db #0x1A,#0x0C
	.db #0x00,#0x00
	.db #0x1A,#0x08
	.db #0x1A,#0x08
	.db #0xFF
	ret
_asm_data_quezesto_end::
;alien6.c:103: void interrupciones(void) {
;	---------------------------------
; Function interrupciones
; ---------------------------------
_interrupciones_start::
_interrupciones:
;alien6.c:129: __endasm;
	di
	im 1
	ld hl,(#0X0039)
	ld (int_original),HL
	ld HL,#interrupcion
	ld (#0X0039),HL
	ei
	jp term
	 int_original:
	.dw #0
	interrupcion:
	di
	push HL
	push AF
	ld hl,#_timer0
	desborde:
	inc (hl)
	inc hl
	jr z,desborde
	POP AF
	POP HL
	EI
	RET
	term:
	ret
_interrupciones_end::
_SONG_0:
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4D	; 77	'M'
	.db #0x0D	; 13
	.db #0x0D	; 13
	.db #0x4D	; 77	'M'
	.db #0x4D	; 77	'M'
	.db #0x0D	; 13
	.db #0x0D	; 13
	.db #0x4D	; 77	'M'
	.db #0x4D	; 77	'M'
	.db #0x0D	; 13
	.db #0x0D	; 13
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x1A	; 26
	.db #0x1A	; 26
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5C	; 92
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x57	; 87	'W'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x1A	; 26
	.db #0x1A	; 26
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5C	; 92
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x6F	; 111	'o'
	.db #0x81	; 129
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x6F	; 111	'o'
	.db #0x81	; 129
	.db #0x6C	; 108	'l'
	.db #0x6D	; 109	'm'
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x6F	; 111	'o'
	.db #0x81	; 129
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x72	; 114	'r'
	.db #0x81	; 129
	.db #0xB4	; 180
	.db #0xA1	; 161
	.db #0xAA	; 170
	.db #0xAD	; 173
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0xB1	; 177
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xEA	; 234
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x68	; 104	'h'
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x6D	; 109	'm'
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0xA8	; 168
	.db #0xBE	; 190
	.db #0xB4	; 180
	.db #0xF3	; 243
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x68	; 104	'h'
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x31	; 49	'1'
	.db #0xA1	; 161
	.db #0xAA	; 170
	.db #0xAD	; 173
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0xB1	; 177
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xEA	; 234
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x68	; 104	'h'
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x6D	; 109	'm'
	.db #0x7E	; 126
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xB1	; 177
	.db #0xBE	; 190
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xAD	; 173
	.db #0xAF	; 175
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0xED	; 237
	.db #0xAF	; 175
	.db #0xBE	; 190
	.db #0x2D	; 45
	.db #0x2C	; 44
	.db #0xAA	; 170
	.db #0xAC	; 172
	.db #0x41	; 65	'A'
	.db #0x3F	; 63
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0xAC	; 172
	.db #0x68	; 104	'h'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2D	; 45
	.db #0x72	; 114	'r'
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x2F	; 47
	.db #0x74	; 116	't'
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0xAC	; 172
	.db #0x68	; 104	'h'
	.db #0x6D	; 109	'm'
	.db #0x7E	; 126
	.db #0x2D	; 45
	.db #0xB4	; 180
	.db #0x73	; 115	's'
	.db #0x7E	; 126
	.db #0x33	; 51	'3'
	.db #0xB6	; 182
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0xAC	; 172
	.db #0x68	; 104	'h'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2D	; 45
	.db #0x72	; 114	'r'
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x2F	; 47
	.db #0x74	; 116	't'
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x6D	; 109	'm'
	.db #0x6C	; 108	'l'
	.db #0x68	; 104	'h'
	.db #0x3F	; 63
	.db #0x04	; 4
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x2A	; 42
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xAF	; 175
	.db #0xAD	; 173
	.db #0xAC	; 172
	.db #0xA9	; 169
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x6D	; 109	'm'
	.db #0x6F	; 111	'o'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x68	; 104	'h'
	.db #0x6A	; 106	'j'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x6C	; 108	'l'
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x6D	; 109	'm'
	.db #0x6F	; 111	'o'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0x6F	; 111	'o'
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0xB1	; 177
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xA1	; 161
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0xA5	; 165
	.db #0xBE	; 190
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0xE7	; 231
	.db #0x41	; 65	'A'
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xA1	; 161
	.db #0xA5	; 165
	.db #0x6A	; 106	'j'
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xA5	; 165
	.db #0xBE	; 190
	.db #0xB1	; 177
	.db #0x5E	; 94
	.db #0x1E	; 30
	.db #0x1C	; 28
	.db #0x1E	; 30
	.db #0x1C	; 28
	.db #0x1E	; 30
	.db #0x20	; 32
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x65	; 101	'e'
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x27	; 39
	.db #0x68	; 104	'h'
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x2A	; 42
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xA1	; 161
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0xA5	; 165
	.db #0xBE	; 190
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0xE7	; 231
	.db #0x41	; 65	'A'
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xA1	; 161
	.db #0xA5	; 165
	.db #0x6A	; 106	'j'
	.db #0x7E	; 126
	.db #0x25	; 37
	.db #0x68	; 104	'h'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xAC	; 172
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0xEA	; 234
	.db #0xAC	; 172
	.db #0xBE	; 190
	.db #0x2A	; 42
	.db #0x28	; 40
	.db #0xA5	; 165
	.db #0xA8	; 168
	.db #0x41	; 65	'A'
	.db #0x3F	; 63
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0xA8	; 168
	.db #0x65	; 101	'e'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x2A	; 42
	.db #0x6D	; 109	'm'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x2C	; 44
	.db #0x6F	; 111	'o'
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0xA8	; 168
	.db #0x65	; 101	'e'
	.db #0x68	; 104	'h'
	.db #0x7E	; 126
	.db #0x28	; 40
	.db #0xB1	; 177
	.db #0x6F	; 111	'o'
	.db #0x7E	; 126
	.db #0x2F	; 47
	.db #0xB3	; 179
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0xA8	; 168
	.db #0x65	; 101	'e'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x2A	; 42
	.db #0x6D	; 109	'm'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x2C	; 44
	.db #0x6F	; 111	'o'
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x6A	; 106	'j'
	.db #0x68	; 104	'h'
	.db #0x65	; 101	'e'
	.db #0x01	; 1
	.db #0x3F	; 63
	.db #0x04	; 4
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xAC	; 172
	.db #0xAA	; 170
	.db #0xA9	; 169
	.db #0xA5	; 165
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
_direccionLinea:
	.dw #0xC000
	.dw #0xC800
	.dw #0xD000
	.dw #0xD800
	.dw #0xE000
	.dw #0xE800
	.dw #0xF000
	.dw #0xF800
	.dw #0xC050
	.dw #0xC850
	.dw #0xD050
	.dw #0xD850
	.dw #0xE050
	.dw #0xE850
	.dw #0xF050
	.dw #0xF850
	.dw #0xC0A0
	.dw #0xC8A0
	.dw #0xD0A0
	.dw #0xD8A0
	.dw #0xE0A0
	.dw #0xE8A0
	.dw #0xF0A0
	.dw #0xF8A0
	.dw #0xC0F0
	.dw #0xC8F0
	.dw #0xD0F0
	.dw #0xD8F0
	.dw #0xE0F0
	.dw #0xE8F0
	.dw #0xF0F0
	.dw #0xF8F0
	.dw #0xC140
	.dw #0xC940
	.dw #0xD140
	.dw #0xD940
	.dw #0xE140
	.dw #0xE940
	.dw #0xF140
	.dw #0xF940
	.dw #0xC190
	.dw #0xC990
	.dw #0xD190
	.dw #0xD990
	.dw #0xE190
	.dw #0xE990
	.dw #0xF190
	.dw #0xF990
	.dw #0xC1E0
	.dw #0xC9E0
	.dw #0xD1E0
	.dw #0xD9E0
	.dw #0xE1E0
	.dw #0xE9E0
	.dw #0xF1E0
	.dw #0xF9E0
	.dw #0xC230
	.dw #0xCA30
	.dw #0xD230
	.dw #0xDA30
	.dw #0xE230
	.dw #0xEA30
	.dw #0xF230
	.dw #0xFA30
	.dw #0xC280
	.dw #0xCA80
	.dw #0xD280
	.dw #0xDA80
	.dw #0xE280
	.dw #0xEA80
	.dw #0xF280
	.dw #0xFA80
	.dw #0xC2D0
	.dw #0xCAD0
	.dw #0xD2D0
	.dw #0xDAD0
	.dw #0xE2D0
	.dw #0xEAD0
	.dw #0xF2D0
	.dw #0xFAD0
	.dw #0xC320
	.dw #0xCB20
	.dw #0xD320
	.dw #0xDB20
	.dw #0xE320
	.dw #0xEB20
	.dw #0xF320
	.dw #0xFB20
	.dw #0xC370
	.dw #0xCB70
	.dw #0xD370
	.dw #0xDB70
	.dw #0xE370
	.dw #0xEB70
	.dw #0xF370
	.dw #0xFB70
	.dw #0xC3C0
	.dw #0xCBC0
	.dw #0xD3C0
	.dw #0xDBC0
	.dw #0xE3C0
	.dw #0xEBC0
	.dw #0xF3C0
	.dw #0xFBC0
	.dw #0xC410
	.dw #0xCC10
	.dw #0xD410
	.dw #0xDC10
	.dw #0xE410
	.dw #0xEC10
	.dw #0xF410
	.dw #0xFC10
	.dw #0xC460
	.dw #0xCC60
	.dw #0xD460
	.dw #0xDC60
	.dw #0xE460
	.dw #0xEC60
	.dw #0xF460
	.dw #0xFC60
	.dw #0xC4B0
	.dw #0xCCB0
	.dw #0xD4B0
	.dw #0xDCB0
	.dw #0xE4B0
	.dw #0xECB0
	.dw #0xF4B0
	.dw #0xFCB0
	.dw #0xC500
	.dw #0xCD00
	.dw #0xD500
	.dw #0xDD00
	.dw #0xE500
	.dw #0xED00
	.dw #0xF500
	.dw #0xFD00
	.dw #0xC550
	.dw #0xCD50
	.dw #0xD550
	.dw #0xDD50
	.dw #0xE550
	.dw #0xED50
	.dw #0xF550
	.dw #0xFD50
	.dw #0xC5A0
	.dw #0xCDA0
	.dw #0xD5A0
	.dw #0xDDA0
	.dw #0xE5A0
	.dw #0xEDA0
	.dw #0xF5A0
	.dw #0xFDA0
	.dw #0xC5F0
	.dw #0xCDF0
	.dw #0xD5F0
	.dw #0xDDF0
	.dw #0xE5F0
	.dw #0xEDF0
	.dw #0xF5F0
	.dw #0xFDF0
	.dw #0xC640
	.dw #0xCE40
	.dw #0xD640
	.dw #0xDE40
	.dw #0xE640
	.dw #0xEE40
	.dw #0xF640
	.dw #0xFE40
	.dw #0xC690
	.dw #0xCE90
	.dw #0xD690
	.dw #0xDE90
	.dw #0xE690
	.dw #0xEE90
	.dw #0xF690
	.dw #0xFE90
	.dw #0xC6E0
	.dw #0xCEE0
	.dw #0xD6E0
	.dw #0xDEE0
	.dw #0xE6E0
	.dw #0xEEE0
	.dw #0xF6E0
	.dw #0xFEE0
	.dw #0xC730
	.dw #0xCF30
	.dw #0xD730
	.dw #0xDF30
	.dw #0xE730
	.dw #0xEF30
	.dw #0xF730
	.dw #0xFF30
	.dw #0xC780
	.dw #0xCF80
	.dw #0xD780
	.dw #0xDF80
	.dw #0xE780
	.dw #0xEF80
	.dw #0xF780
	.dw #0xFF80
;alien6.c:132: unsigned long getTime()
;	---------------------------------
; Function getTime
; ---------------------------------
_getTime_start::
_getTime:
;alien6.c:135: nTime = (timer1 << 8) + timer0;
	ld	hl,#_timer1 + 0
	ld	d, (hl)
	ld	e,#0x00
	ld	hl,(_timer0)
	add	hl,de
	ld	de,#0x0000
;alien6.c:136: return nTime;
	ret
_getTime_end::
;alien6.c:139: void halt_me () {			
;	---------------------------------
; Function halt_me
; ---------------------------------
_halt_me_start::
_halt_me:
;alien6.c:146: __endasm;
	halt
	halt
	halt
	halt
	halt
	ret
_halt_me_end::
;alien6.c:150: void scr_waitVSYNC() {
;	---------------------------------
; Function scr_waitVSYNC
; ---------------------------------
_scr_waitVSYNC_start::
_scr_waitVSYNC:
;alien6.c:158: __endasm;
	 wait_vs:
	ld b, #0xF5
	in a, (c)
	rra
	jr nc, wait_vs
	ret
_scr_waitVSYNC_end::
;alien6.c:161: void pause(unsigned char p){
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;alien6.c:163: for (i=0; i < p; i++) {
	ld	d,#0x00
00103$:
	ld	hl,#2
	add	hl,sp
	ld	a,d
	sub	a, (hl)
	ret	NC
;alien6.c:166: __endasm;
	halt
;alien6.c:163: for (i=0; i < p; i++) {
	inc	d
	jr	00103$
	ret
_pause_end::
;alien6.c:170: void set_colours()
;	---------------------------------
; Function set_colours
; ---------------------------------
_set_colours_start::
_set_colours:
;alien6.c:173: for (x=0; x<17; x++)
	ld	e,#0x00
00102$:
;alien6.c:175: cpc_SetColour(x,tintas[x]);
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
	call	_cpc_SetColour
	pop	af
	pop	de
;alien6.c:173: for (x=0; x<17; x++)
	inc	e
	ld	a,e
	sub	a, #0x11
	jr	C,00102$
	ret
_set_colours_end::
;alien6.c:179: unsigned char detectarColision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2){
;	---------------------------------
; Function detectarColision
; ---------------------------------
_detectarColision_start::
_detectarColision:
;alien6.c:180: return ((x1 < x2 + w2) &&
	ld	hl, #6+0
	add	hl, sp
	ld	e, (hl)
	ld	d,#0x00
	ld	iy,#8
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl,de
	ld	iy,#2
	add	iy,sp
	ld	c,0 (iy)
	ld	b,#0x00
	ld	a,c
	sub	a, l
	ld	a,b
	sbc	a, h
	jp	PO, 00122$
	xor	a, #0x80
00122$:
	jp	P,00103$
;alien6.c:181: (x1 + w1 > x2) &&
	ld	iy,#4
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00123$
	xor	a, #0x80
00123$:
	jp	P,00103$
;alien6.c:182: (y1 < y2 + h2) &&
	ld	hl, #7+0
	add	hl, sp
	ld	e, (hl)
	ld	d,#0x00
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	c,0 (iy)
	ld	b,#0x00
	ld	a,c
	sub	a, l
	ld	a,b
	sbc	a, h
	jp	PO, 00124$
	xor	a, #0x80
00124$:
	jp	P,00103$
;alien6.c:183: (h1 + y1 > y2));
	ld	iy,#5
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,e
	sub	a, c
	ld	a,d
	sbc	a, b
	jp	PO, 00125$
	xor	a, #0x80
00125$:
	jp	M,00104$
00103$:
	ld	l,#0x00
	ret
00104$:
	ld	l,#0x01
	ret
_detectarColision_end::
;alien6.c:186: void letrasColorAzul(){
;	---------------------------------
; Function letrasColorAzul
; ---------------------------------
_letrasColorAzul_start::
_letrasColorAzul:
;alien6.c:187: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;alien6.c:188: cpc_SetInkGphStr(1,42);
	ld	hl, #0x2A01
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:189: cpc_SetInkGphStr(2,34);
	ld	hl, #0x2202
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:190: cpc_SetInkGphStr(3,42);
	ld	hl, #0x2A03
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:191: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorAzul_end::
;alien6.c:194: void letrasColorRojo(){
;	---------------------------------
; Function letrasColorRojo
; ---------------------------------
_letrasColorRojo_start::
_letrasColorRojo:
;alien6.c:195: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;alien6.c:196: cpc_SetInkGphStr(1,40);
	ld	hl, #0x2801
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:197: cpc_SetInkGphStr(2,136);
	ld	hl, #0x8802
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:198: cpc_SetInkGphStr(3,40);
	ld	hl, #0x2803
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:199: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorRojo_end::
;alien6.c:202: unsigned char pixelEstrella(unsigned char nPixel){
;	---------------------------------
; Function pixelEstrella
; ---------------------------------
_pixelEstrella_start::
_pixelEstrella:
;alien6.c:205: if(nPixel == 0)
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;alien6.c:207: nByte = 32;
	ld	l,#0x20
	ret
00102$:
;alien6.c:210: nByte = 16;
	ld	l,#0x10
;alien6.c:213: return nByte;
	ret
_pixelEstrella_end::
;alien6.c:216: unsigned char GetMode0PixelColorByte(unsigned char nColor, unsigned char nPixel)
;	---------------------------------
; Function GetMode0PixelColorByte
; ---------------------------------
_GetMode0PixelColorByte_start::
_GetMode0PixelColorByte:
;alien6.c:224: if(nColor & 1)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	and	a, #0x01
	ld	h,a
;alien6.c:227: if(nColor & 2)
	ld	a,0 (iy)
	and	a, #0x02
	ld	b,a
;alien6.c:230: if(nColor & 4)
	ld	a,0 (iy)
	and	a, #0x04
	ld	l,a
;alien6.c:233: if(nColor & 8)
	ld	a,0 (iy)
	and	a, #0x08
	ld	c,a
;alien6.c:220: if(nPixel == 0)
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
;alien6.c:222: nByte &= 85;
	or	a,a
	jr	NZ,00118$
	ld	e,a
;alien6.c:224: if(nColor & 1)
	ld	a,h
	or	a, a
	jr	Z,00102$
;alien6.c:225: nByte |= 128;
	ld	e,#0x80
00102$:
;alien6.c:227: if(nColor & 2)
	ld	a,b
	or	a, a
	jr	Z,00104$
;alien6.c:228: nByte |= 8;
	set	3, e
00104$:
;alien6.c:230: if(nColor & 4)
	ld	a,l
	or	a, a
	jr	Z,00106$
;alien6.c:231: nByte |= 32;
	set	5, e
00106$:
;alien6.c:233: if(nColor & 8)
	ld	a,c
	or	a, a
	jr	Z,00119$
;alien6.c:234: nByte |= 2;
	set	1, e
	jr	00119$
00118$:
;alien6.c:238: nByte &= 170;
	ld	e,#0x00
;alien6.c:240: if(nColor & 1)
	ld	a,h
	or	a, a
	jr	Z,00110$
;alien6.c:241: nByte |= 64;
	ld	e,#0x40
00110$:
;alien6.c:243: if(nColor & 2)
	ld	a,b
	or	a, a
	jr	Z,00112$
;alien6.c:244: nByte |= 4;
	set	2, e
00112$:
;alien6.c:246: if(nColor & 4)
	ld	a,l
	or	a, a
	jr	Z,00114$
;alien6.c:247: nByte |= 16;
	set	4, e
00114$:
;alien6.c:249: if(nColor & 8)
	ld	a,c
	or	a, a
	jr	Z,00119$
;alien6.c:250: nByte |= 1;
	set	0, e
00119$:
;alien6.c:253: return nByte;
	ld	l,e
	ret
_GetMode0PixelColorByte_end::
;alien6.c:258: void inicializarEstrellas(){
;	---------------------------------
; Function inicializarEstrellas
; ---------------------------------
_inicializarEstrellas_start::
_inicializarEstrellas:
	push	af
;alien6.c:260: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:262: aStars[nStar].nX = cpc_Random() % 160;
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a,#<(_aStars)
	add	a, l
	ld	e,a
	ld	a,#>(_aStars)
	adc	a, h
	ld	d,a
	push	de
	call	_cpc_Random
	ld	b,l
	ld	a,#0xA0
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar_rrx_s
	pop	af
	ld	a,l
	pop	de
	ld	(de),a
;alien6.c:263: aStars[nStar].nY = (cpc_Random() % 184)+16;
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ex	de,hl
	inc	de
	push	de
	call	_cpc_Random
	ld	b,l
	ld	a,#0xB8
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar_rrx_s
	pop	af
	ld	a,l
	pop	de
	add	a, #0x10
	ld	(de),a
;alien6.c:264: aStars[nStar].nStarType = cpc_Random() % 3;
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	inc	hl
	inc	hl
	ld	d,l
	ld	e,h
	push	de
	call	_cpc_Random
	ld	b,l
	ld	a,#0x03
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar_rrx_s
	pop	af
	ld	a,l
	pop	de
	ld	l, d
	ld	h, e
	ld	(hl),a
;alien6.c:265: aStars[nStar].pLineAddress = (int *) direccionLinea[aStars[nStar].nY];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	e, l
	ld	d, h
	inc	de
	inc	de
	inc	de
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;alien6.c:266: aStars[nStar].columnOffset = aStars[nStar].nY/2;
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	a,l
	add	a, #0x05
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	inc	hl
	ld	a,(hl)
	srl	a
	ld	(de),a
;alien6.c:267: aStars[nStar].pCurrentAddress = aStars[nStar].pLineAddress+aStars[nStar].columnOffset;
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a,#<(_aStars)
	add	a, l
	ld	e,a
	ld	a,#>(_aStars)
	adc	a, h
	ld	d,a
	ld	hl,#0x0006
	add	hl,de
	ex	(sp), hl
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ex	de,hl
	ld	de, #0x0005
	add	hl, de
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	add	hl,bc
	ld	d,l
	ld	e,h
	pop	hl
	push	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
;alien6.c:260: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jp	C,00102$
;alien6.c:269: lastMovedEstrella = 0;
	xor	a, a
	ld	(#_lastMovedEstrella + 0),a
	ld	(#_lastMovedEstrella + 1),a
	ld	(#_lastMovedEstrella + 2),a
	ld	(#_lastMovedEstrella + 3),a
	pop	af
	ret
_inicializarEstrellas_end::
;alien6.c:272: void borrarEstrellas(){
;	---------------------------------
; Function borrarEstrellas
; ---------------------------------
_borrarEstrellas_start::
_borrarEstrellas:
	push	af
	dec	sp
;alien6.c:273: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:275: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:279: *pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
	ld	bc,(_pStar)
	ld	l, c
	ld	h, b
	ld	de, #0x0006
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	a,(bc)
	and	a, #0x01
	inc	sp
	push	af
	inc	sp
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	b,(hl)
	inc	b
	push	de
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_GetMode0PixelColorByte
	pop	af
	pop	de
	ld	h,#0x00
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	xor	a, l
	ld	c,a
	ld	a,1 (iy)
	xor	a, h
	ld	b,a
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;alien6.c:273: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jr	C,00102$
	pop	af
	inc	sp
	ret
_borrarEstrellas_end::
;alien6.c:284: void pintarEstrellas(){
;	---------------------------------
; Function pintarEstrellas
; ---------------------------------
_pintarEstrellas_start::
_pintarEstrellas:
	push	af
	dec	sp
;alien6.c:285: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:287: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:290: pStar->pCurrentAddress = (int *) direccionLinea[pStar->nY] + pStar->columnOffset;
	ld	de,(_pStar)
	ld	hl,#0x0006
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l, e
	ld	h, d
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ex	de,hl
	ld	de, #0x0005
	add	hl, de
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	bc,(_pStar)
	ld	l, c
	ld	h, b
;alien6.c:292: *pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
	ld	de, #0x0006
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	a,(bc)
	and	a, #0x01
	inc	sp
	push	af
	inc	sp
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	b,(hl)
	inc	b
	push	de
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_GetMode0PixelColorByte
	pop	af
	pop	de
	ld	h,#0x00
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	xor	a, l
	ld	c,a
	ld	a,1 (iy)
	xor	a, h
	ld	b,a
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;alien6.c:285: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jp	C,00102$
	pop	af
	inc	sp
	ret
_pintarEstrellas_end::
;alien6.c:297: void moverEstrellas(){
;	---------------------------------
; Function moverEstrellas
; ---------------------------------
_moverEstrellas_start::
_moverEstrellas:
;alien6.c:299: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00108$:
;alien6.c:301: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:303: switch(pStar->nStarType)
	ld	bc,(_pStar)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00104$
;alien6.c:306: pStar->nY += 1;
	inc	bc
	ld	a,(bc)
	ld	d,a
;alien6.c:303: switch(pStar->nStarType)
	push	de
	ld	d,#0x00
	ld	hl,#00124$
	add	hl,de
	add	hl,de
;alien6.c:305: case 0: //slow star
	pop	de
	jp	(hl)
00124$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;alien6.c:306: pStar->nY += 1;
	ld	a,d
	inc	a
	ld	(bc),a
;alien6.c:307: break;
	jr	00104$
;alien6.c:308: case 1: //medium star
00102$:
;alien6.c:309: pStar->nY += 2;
	ld	a,d
	add	a, #0x02
	ld	(bc),a
;alien6.c:310: break;
	jr	00104$
;alien6.c:311: case 2: //fast star
00103$:
;alien6.c:312: pStar->nY += 3;
	ld	a,d
	add	a, #0x03
	ld	(bc),a
;alien6.c:314: }
00104$:
;alien6.c:303: switch(pStar->nStarType)
	ld	hl,(_pStar)
;alien6.c:306: pStar->nY += 1;
	inc	hl
;alien6.c:316: if(pStar->nY >= 200)
	ld	a, (hl)
	sub	a, #0xC8
	jr	C,00109$
;alien6.c:318: pStar->nY = 16;
	ld	(hl),#0x10
00109$:
;alien6.c:299: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jr	C,00108$
	ret
_moverEstrellas_end::
;alien6.c:327: void inicializarExplosiones(){
;	---------------------------------
; Function inicializarExplosiones
; ---------------------------------
_inicializarExplosiones_start::
_inicializarExplosiones:
;alien6.c:330: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	d,#0x00
00102$:
;alien6.c:331: explosiones[i].activo=0;
	ld	l,d
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a,#<(_explosiones)
	add	a, l
	ld	c,a
	ld	a,#>(_explosiones)
	adc	a, h
	ld	b,a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:332: explosiones[i].tipo=0;
	xor	a, a
	ld	(bc),a
;alien6.c:333: explosiones[i].fase=0;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;alien6.c:334: explosiones[i].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:335: explosiones[i].cy=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:336: explosiones[i].ox=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:337: explosiones[i].oy=0;
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:338: explosiones[i].memoriaPantalla=0;
	ld	hl,#0x0009
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:339: explosiones[i].h=0;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:340: explosiones[i].w=0;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:341: explosiones[i].lastmoved=0;
	ld	hl,#0x000C
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:330: for (i=0;i<MAX_EXPLOSIONES;i++){
	inc	d
	ld	a,d
	sub	a, #0x06
	jr	C,00102$
;alien6.c:343: explosiones_activas=0;
	ld	hl,#_explosiones_activas + 0
	ld	(hl), #0x00
;alien6.c:344: explosion_sprite[0][0]=&explosion02000;
	ld	hl,#_explosion02000
	ld	(_explosion_sprite), hl
;alien6.c:345: explosion_sprite[0][1]=&explosion02001;
	ld	hl,#_explosion02001
	ld	((_explosion_sprite + 0x0002)), hl
;alien6.c:346: explosion_sprite[0][2]=&explosion02002;
	ld	hl,#_explosion02002
	ld	((_explosion_sprite + 0x0004)), hl
;alien6.c:347: explosion_sprite[0][3]=&explosion02003;
	ld	hl,#_explosion02003
	ld	((_explosion_sprite + 0x0006)), hl
;alien6.c:348: explosion_sprite[1][0]=&toque000;
	ld	hl,#_toque000
	ld	((_explosion_sprite + 0x0008)), hl
;alien6.c:349: explosion_sprite[1][1]=&toque001;
	ld	hl,#_toque001
	ld	((_explosion_sprite + 0x000a)), hl
;alien6.c:350: explosion_sprite[1][2]=&toque002;
	ld	hl,#_toque002
	ld	((_explosion_sprite + 0x000c)), hl
;alien6.c:351: explosion_sprite[1][3]=&toque003;
	ld	hl,#_toque003
	ld	((_explosion_sprite + 0x000e)), hl
	ret
_inicializarExplosiones_end::
;alien6.c:355: void crearExplosion(unsigned char tipo, unsigned char x, unsigned char y){
;	---------------------------------
; Function crearExplosion
; ---------------------------------
_crearExplosion_start::
_crearExplosion:
	push	af
	push	af
	dec	sp
;alien6.c:358: while (explosiones[i].activo==1) { 
	ld	bc,#_explosiones+0
	ld	e,#0x00
00101$:
	ld	l,e
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, c
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, b
	ld	(hl),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	a
	jr	NZ,00112$
;alien6.c:359: i++;
	inc	e
	jr	00101$
00112$:
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),e
;alien6.c:361: explosiones[i].activo=1;
	ld	(hl),#0x01
;alien6.c:362: explosiones[i].tipo=tipo;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:363: explosiones[i].fase=0;
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	(hl),#0x00
;alien6.c:364: explosiones[i].cx=x;
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	iy,#8
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:365: explosiones[i].cy=y;
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	ld	(de),a
;alien6.c:366: explosiones[i].memoriaPantalla = direccionLinea[explosiones[i].cy]+explosiones[i].cx;
	ld	hl,#1
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_direccionLinea
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	iy,#8
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl,de
	ex	de,hl
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),e
	inc	hl
	ld	(hl),d
;alien6.c:368: explosiones[i].h=16;
	ld	hl,#1
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x07
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:369: explosiones[i].w=4;
	ld	a,0 (iy)
	add	a, #0x08
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
;alien6.c:367: if (!tipo){
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00105$
;alien6.c:368: explosiones[i].h=16;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:369: explosiones[i].w=4;
	ld	a,#0x04
	ld	(de),a
	jr	00106$
00105$:
;alien6.c:371: explosiones[i].h=8;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:372: explosiones[i].w=2;
	ld	a,#0x02
	ld	(de),a
00106$:
;alien6.c:374: explosiones_activas++;
	ld	hl, #_explosiones_activas+0
	inc	(hl)
;alien6.c:375: cpc_PutSpXOR((char *)explosion_sprite[tipo][0],explosiones[i].h,explosiones[i].w,explosiones[i].memoriaPantalla);
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	bc, #0x0009
	add	hl, bc
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	de
	pop	iy
	ld	b,8 (iy)
	ex	de,hl
	ld	de, #0x0007
	add	hl, de
	ld	c,(hl)
	ld	iy,#7
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_explosion_sprite
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	push	de
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	af
	pop	af
	inc	sp
	ret
_crearExplosion_end::
;alien6.c:378: void actualizarExplosiones(){
;	---------------------------------
; Function actualizarExplosiones
; ---------------------------------
_actualizarExplosiones_start::
_actualizarExplosiones:
	push	af
	push	af
	dec	sp
;alien6.c:380: if (explosiones_activas>0){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	Z,00108$
;alien6.c:381: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00106$:
;alien6.c:382: if (explosiones[i].activo==1){
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	a,#<(_explosiones)
	ld	hl,#3
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_explosiones)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	a
	jr	NZ,00107$
;alien6.c:383: cpc_PutSpXOR((char *)explosion_sprite[explosiones[i].tipo][explosiones[i].fase],explosiones[i].h,explosiones[i].w,explosiones[i].memoriaPantalla);
	ld	l, e
	ld	h, d
	ld	bc, #0x0009
	add	hl, bc
	ld	a,(hl)
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	l, e
	ld	h, d
	ld	bc, #0x0008
	add	hl, bc
	ld	a,(hl)
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	ld	bc, #0x0007
	add	hl, bc
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	ld	a,(de)
	ld	l,a
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a,#<(_explosion_sprite)
	add	a, l
	ld	c,a
	ld	a,#>(_explosion_sprite)
	adc	a, h
	ld	b,a
	ex	de,hl
	inc	hl
	ld	a,(hl)
	add	a, a
	add	a,c
	ld	e,a
	ld	a,b
	adc	a, #0x00
	ld	d,a
	ex	de,hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00107$:
;alien6.c:381: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jp	C,00106$
00108$:
	pop	af
	pop	af
	inc	sp
	ret
_actualizarExplosiones_end::
;alien6.c:389: void animarExplosiones(){
;	---------------------------------
; Function animarExplosiones
; ---------------------------------
_animarExplosiones_start::
_animarExplosiones:
	dec	sp
;alien6.c:391: if (explosiones_activas>0){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	Z,00111$
;alien6.c:392: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00109$:
;alien6.c:393: if (explosiones[i].activo==1){
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a,#<(_explosiones)
	add	a, l
	ld	e,a
	ld	a,#>(_explosiones)
	adc	a, h
	ld	d,a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,(bc)
	dec	a
	jr	NZ,00110$
;alien6.c:394: if (explosiones[i].fase<3){
	push	de
	pop	iy
	inc	iy
	ld	h, 0 (iy)
	ld	a,h
	sub	a, #0x03
	jr	NC,00102$
;alien6.c:395: explosiones[i].fase++;
	inc	h
	ld	0 (iy), h
	jr	00110$
00102$:
;alien6.c:399: explosiones[i].fase=0;
	ld	0 (iy), #0x00
;alien6.c:400: explosiones[i].activo=0;
	xor	a, a
	ld	(bc),a
;alien6.c:401: explosiones[i].cx=0;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:402: explosiones[i].cy=0;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x00
;alien6.c:403: explosiones_activas--;
	ld	hl, #_explosiones_activas+0
	dec	(hl)
00110$:
;alien6.c:392: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jr	C,00109$
00111$:
	inc	sp
	ret
_animarExplosiones_end::
;alien6.c:414: void inicializarDisparosMalos(){
;	---------------------------------
; Function inicializarDisparosMalos
; ---------------------------------
_inicializarDisparosMalos_start::
_inicializarDisparosMalos:
	dec	sp
;alien6.c:417: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00103$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00101$
;alien6.c:418: disparos[k].activo=0;
	ld	hl,#_disparos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:419: disparos[k].sp0=shot2;
	ld	l, c
	ld	h, b
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:420: disparos[k].cx=0;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:421: disparos[k].cy=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:422: disparos[k].ox=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:423: disparos[k].oy=0;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:424: disparos[k].nuevo=0;
	ld	hl,#0x000F
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:425: disparos[k].dead=0;
	ld	hl,#0x0010
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:426: disparos[k].lastmoved=0;
	ld	hl,#0x0011
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:417: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	hl,#0x0015
	add	hl,de
	ex	de,hl
	inc	0 (iy)
	jr	00103$
00101$:
;alien6.c:428: disparos_activos_malos=0;
	ld	hl,#_disparos_activos_malos + 0
	ld	(hl), #0x00
	inc	sp
	ret
_inicializarDisparosMalos_end::
;alien6.c:431: void borrarDisparosMalos(){
;	---------------------------------
; Function borrarDisparosMalos
; ---------------------------------
_borrarDisparosMalos_start::
_borrarDisparosMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:434: if (disparos_activos_malos>0){
	ld	a,(#_disparos_activos_malos + 0)
	or	a, a
	jp	Z,00112$
;alien6.c:435: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00110$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00112$
;alien6.c:436: if ((disparosMalos[k].activo==1) && (disparosMalos[k].nuevo==0)){
	ld	a,#<(_disparosMalos)
	ld	hl,#5
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x000C
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jr	NZ,00111$
	push	de
	pop	iy
	ld	a,15 (iy)
	or	a, a
	jr	NZ,00111$
;alien6.c:437: cpc_PutSpXOR(disparosMalos[k].sp0,4,2,direccionLinea[disparosMalos[k].oy]+disparosMalos[k].ox);
	push	de
	pop	iy
	ld	l,11 (iy)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	pop	iy
	ld	l,10 (iy)
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	de
	push	bc
	ld	hl,#0x0204
	push	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	iy
	ld	a,16 (iy)
	or	a, a
	jr	Z,00111$
;alien6.c:439: disparosMalos[k].activo=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:440: disparos_activos_malos--;
	ld	hl, #_disparos_activos_malos+0
	dec	(hl)
00111$:
;alien6.c:435: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x15
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00110$
00112$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarDisparosMalos_end::
;alien6.c:447: void moverDisparosMalos(){
;	---------------------------------
; Function moverDisparosMalos
; ---------------------------------
_moverDisparosMalos_start::
_moverDisparosMalos:
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;alien6.c:452: if (disparos_activos_malos>0){
	ld	a,(#_disparos_activos_malos + 0)
	or	a, a
	jp	Z,00117$
;alien6.c:453: for (i=0;i<MAX_DISPAROS_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #4
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00115$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00117$
;alien6.c:454: if ((disparosMalos[i].activo==1) && (disparosMalos[i].dead==0)){
	ld	a,#<(_disparosMalos)
	ld	hl,#4
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	push	de
	pop	iy
	ld	a,12 (iy)
	dec	a
	jp	NZ,00116$
	ld	hl,#0x0010
	add	hl,de
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	or	a, a
	jp	NZ,00116$
;alien6.c:455: if (disparosMalos[i].cy<200){
	ld	hl,#0x0009
	add	hl,de
	ld	b,(hl)
	ld	a,b
	sub	a, #0xC8
	jr	NC,00106$
;alien6.c:456: disparosMalos[i].cy=disparosMalos[i].cy + SALTO_DISPARO_MALO;
	inc	b
	inc	b
	inc	b
	ld	(hl),b
;alien6.c:457: if (detectarColision(disparosMalos[i].cx,disparosMalos[i].cy,2,4,prota.cx,prota.cy,4,16)){  
	ld	hl, #(_prota + 0x0009) + 0
	ld	c,(hl)
	ld	a,(#(_prota + 0x0008) + 0)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	ex	de,hl
	ld	de, #0x0008
	add	hl, de
	ld	e,(hl)
	ld	hl,#0x1004
	push	hl
	ld	a,c
	push	af
	inc	sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	hl,#0x0402
	push	hl
	push	bc
	inc	sp
	ld	a,e
	push	af
	inc	sp
	call	_detectarColision
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	Z,00116$
;alien6.c:460: disparosMalos[i].dead=1;
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x01
;alien6.c:462: prota.dead=1;
	ld	hl,#_prota + 20
	ld	(hl),#0x01
;alien6.c:464: crearExplosion(0, prota.cx, prota.cy);
	ld	a, (#(_prota + 0x0009) + 0)
	ld	hl, #(_prota + 0x0008) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_crearExplosion
;alien6.c:466: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
	inc	sp
	ld	hl,#0x0202
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
;alien6.c:467: hostilidad=0;
	ld	hl,#_hostilidad + 0
	ld	(hl), #0x00
	jr	00116$
00106$:
;alien6.c:471: disparosMalos[i].dead=1;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00116$:
;alien6.c:453: for (i=0;i<MAX_DISPAROS_MALOS;i++){
	ld	hl,#4
	add	hl,sp
	ld	a,(hl)
	add	a, #0x15
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00115$
00117$:
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
_moverDisparosMalos_end::
;alien6.c:479: void crearDisparoMalo(unsigned char x, unsigned char y){
;	---------------------------------
; Function crearDisparoMalo
; ---------------------------------
_crearDisparoMalo_start::
_crearDisparoMalo:
	push	af
;alien6.c:482: while (disparosMalos[k].activo==1){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00101$:
	ld	hl,#_disparosMalos
	add	hl,bc
	ex	de,hl
	ld	hl,#0x000C
	add	hl,de
	ld	a,(hl)
	dec	a
	jr	NZ,00103$
;alien6.c:483: k++;
	ld	hl,#0x0015
	add	hl,bc
	ld	c,l
	ld	b,h
	jr	00101$
00103$:
;alien6.c:485: disparosMalos[k].activo=1;
	ld	(hl),#0x01
;alien6.c:486: disparosMalos[k].cx=x+1;
	ld	hl,#0x0008
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#1
	add	hl,sp
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	inc	a
	ld	(hl),a
	ld	hl, #1+0
	add	hl, sp
	ld	a, (hl)
	ld	(bc),a
;alien6.c:487: disparosMalos[k].cy=y-1;
	ld	hl,#0x0009
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a,#0xFF
	ld	(hl),a
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	ld	(bc),a
;alien6.c:488: disparosMalos[k].ox=x+1;
	ld	hl,#0x000A
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:489: disparosMalos[k].oy=y-1;
	ld	hl,#0x000B
	add	hl,de
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:490: disparosMalos[k].sp0=shot3;
	ld	l, e
	ld	h, d
	ld	(hl),#<(_shot3)
	inc	hl
	ld	(hl),#>(_shot3)
;alien6.c:491: disparosMalos[k].nuevo=1;
	ld	hl,#0x000F
	add	hl,de
	ld	(hl),#0x01
;alien6.c:492: disparosMalos[k].dead=0;
	ld	hl,#0x0010
	add	hl,de
	ld	(hl),#0x00
;alien6.c:493: disparos_activos_malos++;
	ld	hl, #_disparos_activos_malos+0
	inc	(hl)
;alien6.c:494: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	af
	ret
_crearDisparoMalo_end::
;alien6.c:497: void pintarDisparosMalo(){
;	---------------------------------
; Function pintarDisparosMalo
; ---------------------------------
_pintarDisparosMalo_start::
_pintarDisparosMalo:
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;alien6.c:500: if (disparos_activos_malos>0){
	ld	a,(#_disparos_activos_malos + 0)
	or	a, a
	jp	Z,00111$
;alien6.c:501: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #7
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00109$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00111$
;alien6.c:502: if (disparosMalos[k].activo==1){
	ld	a,#<(_disparosMalos)
	ld	hl,#7
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	push	de
	pop	iy
	ld	a,12 (iy)
	dec	a
	jp	NZ,00110$
;alien6.c:503: cpc_PutSpXOR(disparosMalos[k].sp0,4,2,direccionLinea[disparosMalos[k].cy]+disparosMalos[k].cx);
	ld	hl,#0x0009
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x0008
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	l,(hl)
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	de
	push	bc
	ld	hl,#0x0204
	push	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:504: disparosMalos[k].ox=disparosMalos[k].cx;
	ld	hl,#0x000A
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:505: disparosMalos[k].oy=disparosMalos[k].cy;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:506: if (disparosMalos[k].nuevo) disparosMalos[k].nuevo=0;
	ld	hl,#0x000F
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00110$
	ld	(hl),#0x00
00110$:
;alien6.c:501: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	hl,#7
	add	hl,sp
	ld	a,(hl)
	add	a, #0x15
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00109$
00111$:
	ld	hl,#9
	add	hl,sp
	ld	sp,hl
	ret
_pintarDisparosMalo_end::
;alien6.c:512: void inicializarAddones(){
;	---------------------------------
; Function inicializarAddones
; ---------------------------------
_inicializarAddones_start::
_inicializarAddones:
;alien6.c:514: for (i=0;i<MAX_ADDONES;i++){
	ld	d,#0x00
	ld	bc,#0x0000
00102$:
;alien6.c:515: addones[i].activo=0;
	ld	hl,#_addones
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:514: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#0x000A
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	ld	a,d
	sub	a, #0x02
	jr	C,00102$
;alien6.c:517: addones_activos=0;
	ld	hl,#_addones_activos + 0
	ld	(hl), #0x00
;alien6.c:519: addon_sprite[0]=&addon000;
	ld	hl,#_addon000
	ld	(_addon_sprite), hl
;alien6.c:520: addon_sprite[1]=&addon001;
	ld	hl,#_addon001
	ld	((_addon_sprite + 0x0002)), hl
;alien6.c:521: addon_sprite[2]=&addon002;
	ld	hl,#_addon002
	ld	((_addon_sprite + 0x0004)), hl
;alien6.c:522: addon_sprite[3]=&addon003;
	ld	hl,#_addon003
	ld	((_addon_sprite + 0x0006)), hl
	ret
_inicializarAddones_end::
;alien6.c:524: void crearAddon(unsigned char posx, unsigned char posy){
;	---------------------------------
; Function crearAddon
; ---------------------------------
_crearAddon_start::
_crearAddon:
;alien6.c:528: while (addones[i].activo==1){
	ld	b,#0x00
	ld	de,#0x0000
00101$:
	ld	hl,#_addones
	add	hl,de
	ld	a,(hl)
	dec	a
	jr	NZ,00120$
;alien6.c:529: i++;
	ld	hl,#0x000A
	add	hl,de
	ex	de,hl
	inc	b
	jr	00101$
00120$:
;alien6.c:531: addones[i].activo=1;
	ld	(hl),#0x01
;alien6.c:533: aux=cpc_Random();
	push	hl
	push	bc
	call	_cpc_Random
	ld	e,l
	pop	bc
	pop	hl
;alien6.c:535: addones[i].tipo=0;
	inc	hl
;alien6.c:534: if (aux<108)
	ld	a,e
	sub	a, #0x6C
	jr	NC,00111$
;alien6.c:535: addones[i].tipo=0;
	ld	(hl),#0x00
	jr	00112$
00111$:
;alien6.c:536: else if (aux<216)
	ld	a,e
	sub	a, #0xD8
	jr	NC,00108$
;alien6.c:537: addones[i].tipo=1;
	ld	(hl),#0x01
	jr	00112$
00108$:
;alien6.c:538: else if (aux<243)
	ld	a,e
	sub	a, #0xF3
	jr	NC,00105$
;alien6.c:539: addones[i].tipo=2;
	ld	(hl),#0x02
	jr	00112$
00105$:
;alien6.c:541: addones[i].tipo=3;
	ld	(hl),#0x03
00112$:
;alien6.c:542: addones[i].x=posx;
	ld	c,b
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,#<(_addones)
	add	a, l
	ld	e,a
	ld	a,#>(_addones)
	adc	a, h
	ld	d,a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:543: addones[i].y=posy+10;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x0A
	ld	(bc),a
;alien6.c:544: addones[i].moved=0;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x00
;alien6.c:545: addones[i].lastmoved=0;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;alien6.c:546: addones[i].speed=40;
	ld	hl,#0x0005
	add	hl,de
	ld	(hl),#0x28
;alien6.c:548: addones_activos++;
	ld	hl, #_addones_activos+0
	inc	(hl)
	ret
_crearAddon_end::
;alien6.c:551: void borrarAddones(){
;	---------------------------------
; Function borrarAddones
; ---------------------------------
_borrarAddones_start::
_borrarAddones:
	push	af
	push	af
	dec	sp
;alien6.c:553: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00109$
;alien6.c:554: for (i=0;i<MAX_ADDONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00107$:
;alien6.c:555: if ((addones[i].activo==1) && (addones[i].moved)){
	ld	a,#<(_addones)
	ld	hl,#3
	add	hl,sp
	ld	iy,#1
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_addones)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jr	NZ,00108$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0004
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00108$
;alien6.c:556: cpc_PutSpXOR(addon_sprite[addones[i].tipo],6,3,direccionLinea[addones[i].y]+addones[i].x);
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_direccionLinea
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ex	de,hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_addon_sprite
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	hl,#0x0306
	push	hl
	push	bc
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00108$:
;alien6.c:554: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0A
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jp	C,00107$
00109$:
	pop	af
	pop	af
	inc	sp
	ret
_borrarAddones_end::
;alien6.c:562: void moverAddones(){
;	---------------------------------
; Function moverAddones
; ---------------------------------
_moverAddones_start::
_moverAddones:
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;alien6.c:566: lapso=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),e
	ld	3 (iy),d
;alien6.c:567: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00111$
;alien6.c:568: for (i=0;i<MAX_ADDONES;i++){
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #11
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00109$:
;alien6.c:569: if ((addones[i].activo==1) && (lapso-addones[i].lastmoved>addones[i].speed)){
	ld	a,#<(_addones)
	ld	hl,#11
	add	hl,sp
	ld	iy,#9
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_addones)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jp	NZ,00110$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	hl,#5
	add	hl,sp
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, e
	ld	(hl),a
	ld	a,1 (iy)
	sbc	a, d
	inc	hl
	ld	(hl),a
	ld	a,2 (iy)
	sbc	a, b
	inc	hl
	ld	(hl),a
	ld	a,3 (iy)
	sbc	a, c
	inc	hl
	ld	(hl),a
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0005
	add	hl, de
	ld	e,(hl)
	ld	d,#0x00
	ld	bc,#0x0000
	ld	a,e
	ld	iy,#5
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,b
	sbc	a, 2 (iy)
	ld	a,c
	sbc	a, 3 (iy)
	jp	PO, 00136$
	xor	a, #0x80
00136$:
	jp	P,00110$
;alien6.c:571: addones[i].y++;
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	inc	d
	ld	(hl),d
;alien6.c:573: if (addones[i].y>199){
	ld	a,#0xC7
	sub	a, d
	jr	NC,00110$
;alien6.c:574: addones[i].activo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:575: addones_activos--;
	ld	hl, #_addones_activos+0
	dec	(hl)
00110$:
;alien6.c:568: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#11
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0A
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#4
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jp	C,00109$
00111$:
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
	ret
_moverAddones_end::
;alien6.c:582: void pintarAddones(){
;	---------------------------------
; Function pintarAddones
; ---------------------------------
_pintarAddones_start::
_pintarAddones:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:584: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00109$
;alien6.c:585: for (i=0;i<MAX_ADDONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00107$:
;alien6.c:586: if ((addones[i].activo==1) && (addones[i].moved)){
	ld	a,#<(_addones)
	ld	hl,#5
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_addones)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jr	NZ,00108$
	ld	hl,#1
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	or	a, a
	jr	Z,00108$
;alien6.c:587: cpc_PutSpXOR(addon_sprite[addones[i].tipo],6,3,direccionLinea[addones[i].y]+addones[i].x);
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_direccionLinea
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ex	de,hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_addon_sprite
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	hl,#0x0306
	push	hl
	push	bc
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:588: addones[i].moved=0;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
00108$:
;alien6.c:585: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0A
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jp	C,00107$
00109$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_pintarAddones_end::
;alien6.c:595: void inicializarAtaques(){
;	---------------------------------
; Function inicializarAtaques
; ---------------------------------
_inicializarAtaques_start::
_inicializarAtaques:
;alien6.c:597: for (i=0;i<MAX_ATAQUES;i++){
	ld	d,#0x00
	ld	bc,#0x0000
00102$:
;alien6.c:598: ataques[i].activo=0;
	ld	hl,#_ataques
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:599: ataques[i].maxStep=19;
	push	hl
	pop	iy
	inc	iy
	inc	iy
	inc	iy
	ld	0 (iy), #0x13
;alien6.c:600: ataques[i].trayectoria=trayectoria1;
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#<(_trayectoria1)
	inc	hl
	ld	(hl),#>(_trayectoria1)
;alien6.c:597: for (i=0;i<MAX_ATAQUES;i++){
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	ld	a,d
	sub	a, #0x03
	jr	C,00102$
;alien6.c:602: ataques_activos=0;
	ld	hl,#_ataques_activos + 0
	ld	(hl), #0x00
	ret
_inicializarAtaques_end::
;alien6.c:605: void crearAtaque(unsigned char malo){
;	---------------------------------
; Function crearAtaque
; ---------------------------------
_crearAtaque_start::
_crearAtaque:
;alien6.c:608: while (ataques[i].activo==1){
	ld	iy,#-1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00101$:
	ld	hl,#_ataques
	add	hl,bc
	ex	de,hl
	ld	a,(de)
	dec	a
	jr	NZ,00103$
;alien6.c:609: i++;
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	jr	00101$
00103$:
;alien6.c:611: ataques[i].activo=1;
	ld	a,#0x01
	ld	(de),a
;alien6.c:612: ataques[i].idMalo=malo;
	ld	l, e
	ld	h, d
	inc	hl
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:613: ataques[i].step=0;
	inc	de
	ld	l,e
	ld	h,d
	inc	hl
	ld	(hl),#0x00
;alien6.c:614: ataques_activos++;
	ld	hl, #_ataques_activos+0
	inc	(hl)
	ret
_crearAtaque_end::
;alien6.c:617: void malosACero(){
;	---------------------------------
; Function malosACero
; ---------------------------------
_malosACero_start::
_malosACero:
	dec	sp
;alien6.c:619: for (i=0;i < MAX_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00102$:
;alien6.c:620: malos[i].type=0;
	ld	hl,#_malos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:621: malos[i].activo=0;
	ld	hl,#0x000D
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:622: malos[i].sp0=0;
	ld	l, c
	ld	h, b
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:623: malos[i].movement=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:624: malos[i].idMovement=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:625: malos[i].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:626: malos[i].cy=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:627: malos[i].homeX=0;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:628: malos[i].homeY=0;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:629: malos[i].w=0;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:630: malos[i].h=0;
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:631: malos[i].nuevo=0;
	ld	hl,#0x0010
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:632: malos[i].dead=0;
	ld	hl,#0x0011
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:633: malos[i].agresividad=0;
	ld	hl,#0x0013
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:634: malos[i].vidas=0;
	ld	hl,#0x0012
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:635: malos[i].speed=0;
	ld	hl,#0x000F
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:619: for (i=0;i < MAX_MALOS;i++){
	ld	hl,#0x001C
	add	hl,de
	ex	de,hl
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jr	C,00102$
	inc	sp
	ret
_malosACero_end::
;alien6.c:639: void cargarMalo(unsigned char malo, unsigned char tipo){
;	---------------------------------
; Function cargarMalo
; ---------------------------------
_cargarMalo_start::
_cargarMalo:
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;alien6.c:640: malos[malo].type=tipo;
	ld	de,#_malos+0
	ld	hl, #13+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl,de
	ex	de,hl
	ld	hl,#0x0008
	add	hl,de
	ld	iy,#14
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:643: malos[malo].activo=1;
	ld	hl,#0x000D
	add	hl,de
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:645: malos[malo].w=4;
	ld	hl,#0x0007
	add	hl,de
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:646: malos[malo].h=15;
	ld	hl,#0x0006
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:647: malos[malo].agresividad=4;
	ld	hl,#0x0013
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:648: malos[malo].vidas=1;
	ld	hl,#0x0012
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:649: malos[malo].speed=40;
	ld	hl,#0x000F
	add	hl,de
	ld	c,l
	ld	b,h
;alien6.c:641: switch(tipo) {
	ld	iy,#14
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x01
	jp	C,00104$
	ld	a,#0x03
	sub	a, 0 (iy)
	jp	C,00104$
	ld	hl,#0
	add	hl,sp
	ld	a,0 (iy)
	add	a,#0xFF
	ld	(hl),a
	push	de
	ld	iy,#2
	add	iy,sp
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00116$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00116$:
	jp	00101$
	jp	00102$
	jp	00103$
;alien6.c:642: case 1:
00101$:
;alien6.c:643: malos[malo].activo=1;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:644: malos[malo].sp0=baddie01;
	ld	a,#<(_baddie01)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie01)
	ld	(de),a
;alien6.c:645: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:646: malos[malo].h=15;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:647: malos[malo].agresividad=4;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:648: malos[malo].vidas=1;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:649: malos[malo].speed=40;
	ld	a,#0x28
	ld	(bc),a
;alien6.c:650: break;
	jp	00106$
;alien6.c:651: case 2:
00102$:
;alien6.c:652: malos[malo].activo=1;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:653: malos[malo].sp0=baddie02;
	ld	a,#<(_baddie02)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie02)
	ld	(de),a
;alien6.c:654: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:655: malos[malo].h=8;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:656: malos[malo].agresividad=8;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:657: malos[malo].vidas=2;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x02
;alien6.c:658: malos[malo].speed=16;
	ld	a,#0x10
	ld	(bc),a
;alien6.c:659: break;
	jr	00106$
;alien6.c:660: case 3:
00103$:
;alien6.c:661: malos[malo].activo=1;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:662: malos[malo].sp0=baddie03;
	ld	a,#<(_baddie03)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie03)
	ld	(de),a
;alien6.c:663: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:664: malos[malo].h=8;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:665: malos[malo].agresividad=16;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:666: malos[malo].vidas=3;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x03
;alien6.c:667: malos[malo].speed=8;
	ld	a,#0x08
	ld	(bc),a
;alien6.c:668: break;
	jr	00106$
;alien6.c:669: default:
00104$:
;alien6.c:670: malos[malo].activo=1;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:671: malos[malo].sp0=baddie01;
	ld	a,#<(_baddie01)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie01)
	ld	(de),a
;alien6.c:672: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:673: malos[malo].h=15;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:674: malos[malo].agresividad=32;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x20
;alien6.c:675: malos[malo].vidas=1;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:676: malos[malo].speed=15;
	ld	a,#0x0F
	ld	(bc),a
;alien6.c:678: }
00106$:
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	ret
_cargarMalo_end::
;alien6.c:683: void inicializarMalos(){
;	---------------------------------
; Function inicializarMalos
; ---------------------------------
_inicializarMalos_start::
_inicializarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:686: malosACero();
	call	_malosACero
;alien6.c:688: switch(nivel) {
	ld	a,(#_nivel + 0)
	xor	a, #0x80
	sub	a, #0x81
	jp	C,00110$
	ld	a,#0x03
	ld	iy,#_nivel
	sub	a, 0 (iy)
	jp	PO, 00220$
	xor	a, #0x80
00220$:
	jp	M,00110$
	ld	iy,#_nivel
	ld	e,0 (iy)
	dec	e
	ld	d,#0x00
	ld	hl,#00221$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00221$:
	jp	00101$
	jp	00104$
	jp	00107$
;alien6.c:689: case 1:
00101$:
;alien6.c:690: malos_activos=4;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x04
;alien6.c:691: for (i=0;i < malos_activos;i++){
	ld	d,#0x00
00115$:
	ld	hl,#_malos_activos
	ld	a,d
	sub	a, (hl)
	jr	NC,00102$
;alien6.c:692: cargarMalo(i,1);
	push	de
	ld	a,#0x01
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:691: for (i=0;i < malos_activos;i++){
	inc	d
	jr	00115$
00102$:
;alien6.c:694: malos[0].cx=20;  // coloco en formación el segundo malo
	ld	hl,#_malos + 2
	ld	(hl),#0x14
;alien6.c:695: malos[0].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 3
	ld	(hl),#0x11
;alien6.c:696: malos[1].cx=32;  // coloco en formación el segundo malo
	ld	hl,#_malos + 30
	ld	(hl),#0x20
;alien6.c:697: malos[1].cy=17;  // coloco en formación el segundo malo		
	ld	hl,#_malos + 31
	ld	(hl),#0x11
;alien6.c:698: malos[2].cx=44;  // coloco en formación el segundo malo
	ld	hl,#_malos + 58
	ld	(hl),#0x2C
;alien6.c:699: malos[2].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 59
	ld	(hl),#0x11
;alien6.c:700: malos[3].cx=56;  // coloco en formación el segundo malo
	ld	hl,#_malos + 86
	ld	(hl),#0x38
;alien6.c:701: malos[3].cy=17;  // coloco en formación el segundo malo		
	ld	hl,#_malos + 87
	ld	(hl),#0x11
;alien6.c:702: for (i=0;i < malos_activos;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00118$:
	ld	hl,#_malos_activos
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00138$
;alien6.c:703: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#5
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:704: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:705: malos[i].homeX=malos[i].cx;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:706: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:707: malos[i].lastmoved=0;
	ld	hl,#0x0018
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:702: for (i=0;i < malos_activos;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00118$
;alien6.c:711: case 2:
00104$:
;alien6.c:712: malos_activos=4;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x04
;alien6.c:713: for (i=0;i < malos_activos;i++){
	ld	d,#0x00
00121$:
	ld	hl,#_malos_activos
	ld	a,d
	sub	a, (hl)
	jr	NC,00105$
;alien6.c:714: cargarMalo(i,2);
	push	de
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:713: for (i=0;i < malos_activos;i++){
	inc	d
	jr	00121$
00105$:
;alien6.c:716: malos[0].cx=29;  // coloco en formación el segundo malo
	ld	hl,#_malos + 2
	ld	(hl),#0x1D
;alien6.c:717: malos[0].cy=20;  // coloco en formación el segundo malo
	ld	hl,#_malos + 3
	ld	(hl),#0x14
;alien6.c:718: malos[1].cx=38;  // coloco en formación el segundo malo
	ld	hl,#_malos + 30
	ld	(hl),#0x26
;alien6.c:719: malos[1].cy=28;  // coloco en formación el segundo malo		
	ld	hl,#_malos + 31
	ld	(hl),#0x1C
;alien6.c:720: malos[2].cx=47;  // coloco en formación el segundo malo
	ld	hl,#_malos + 58
	ld	(hl),#0x2F
;alien6.c:721: malos[2].cy=20;  // coloco en formación el segundo malo
	ld	hl,#_malos + 59
	ld	(hl),#0x14
;alien6.c:722: malos[3].cx=56;  // coloco en formación el segundo malo
	ld	hl,#_malos + 86
	ld	(hl),#0x38
;alien6.c:723: malos[3].cy=28;  // coloco en formación el segundo malo		
	ld	hl,#_malos + 87
	ld	(hl),#0x1C
;alien6.c:724: for (i=0;i < malos_activos;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #1
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00124$:
	ld	hl,#_malos_activos
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00138$
;alien6.c:725: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#1
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:726: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:727: malos[i].homeX=malos[i].cx;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:728: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:729: malos[i].lastmoved=0;
	ld	hl,#0x0018
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:724: for (i=0;i < malos_activos;i++){
	ld	hl,#1
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00124$
;alien6.c:733: case 3:
00107$:
;alien6.c:734: malos_activos=5;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x05
;alien6.c:735: for (i=0;i < malos_activos;i++){
	ld	d,#0x00
00127$:
	ld	hl,#_malos_activos
	ld	a,d
	sub	a, (hl)
	jr	NC,00108$
;alien6.c:736: cargarMalo(i,3);
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:735: for (i=0;i < malos_activos;i++){
	inc	d
	jr	00127$
00108$:
;alien6.c:738: malos[0].cx=20;  // coloco en formación el segundo malo
	ld	hl,#_malos + 2
	ld	(hl),#0x14
;alien6.c:739: malos[0].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 3
	ld	(hl),#0x11
;alien6.c:740: malos[1].cx=29;  // coloco en formación el segundo malo
	ld	hl,#_malos + 30
	ld	(hl),#0x1D
;alien6.c:741: malos[1].cy=17;  // coloco en formación el segundo malo		
	ld	hl,#_malos + 31
	ld	(hl),#0x11
;alien6.c:742: malos[2].cx=38;  // coloco en formación el segundo malo
	ld	hl,#_malos + 58
	ld	(hl),#0x26
;alien6.c:743: malos[2].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 59
	ld	(hl),#0x11
;alien6.c:744: malos[3].cx=47;  // coloco en formación el segundo malo
	ld	hl,#_malos + 86
	ld	(hl),#0x2F
;alien6.c:745: malos[3].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 87
	ld	(hl),#0x11
;alien6.c:746: malos[4].cx=56;  // coloco en formación el segundo malo
	ld	hl,#_malos + 114
	ld	(hl),#0x38
;alien6.c:747: malos[4].cy=17;  // coloco en formación el segundo malo			
	ld	hl,#_malos + 115
	ld	(hl),#0x11
;alien6.c:748: for (i=0;i < malos_activos;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #1
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00130$:
	ld	hl,#_malos_activos
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00138$
;alien6.c:749: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#1
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:750: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:751: malos[i].homeX=malos[i].cx;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:752: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:753: malos[i].lastmoved=0;
	ld	hl,#0x0018
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:748: for (i=0;i < malos_activos;i++){
	ld	hl,#1
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00130$
;alien6.c:757: default:
00110$:
;alien6.c:758: malos_activos=5;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x05
;alien6.c:759: for (i=0;i < malos_activos;i++){
	ld	d,#0x00
00133$:
	ld	hl,#_malos_activos
	ld	a,d
	sub	a, (hl)
	jr	NC,00111$
;alien6.c:760: cargarMalo(i,3);
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:759: for (i=0;i < malos_activos;i++){
	inc	d
	jr	00133$
00111$:
;alien6.c:762: malos[0].cx=20;  // coloco en formación el segundo malo
	ld	hl,#_malos + 2
	ld	(hl),#0x14
;alien6.c:763: malos[0].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 3
	ld	(hl),#0x11
;alien6.c:764: malos[1].cx=29;  // coloco en formación el segundo malo
	ld	hl,#_malos + 30
	ld	(hl),#0x1D
;alien6.c:765: malos[1].cy=17;  // coloco en formación el segundo malo		
	ld	hl,#_malos + 31
	ld	(hl),#0x11
;alien6.c:766: malos[2].cx=38;  // coloco en formación el segundo malo
	ld	hl,#_malos + 58
	ld	(hl),#0x26
;alien6.c:767: malos[2].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 59
	ld	(hl),#0x11
;alien6.c:768: malos[3].cx=47;  // coloco en formación el segundo malo
	ld	hl,#_malos + 86
	ld	(hl),#0x2F
;alien6.c:769: malos[3].cy=17;  // coloco en formación el segundo malo
	ld	hl,#_malos + 87
	ld	(hl),#0x11
;alien6.c:770: malos[4].cx=56;  // coloco en formación el segundo malo
	ld	hl,#_malos + 114
	ld	(hl),#0x38
;alien6.c:771: malos[4].cy=17;  // coloco en formación el segundo malo			
	ld	hl,#_malos + 115
	ld	(hl),#0x11
;alien6.c:772: for (i=0;i < malos_activos;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #1
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00136$:
	ld	hl,#_malos_activos
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00138$
;alien6.c:773: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#1
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:774: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:775: malos[i].homeX=malos[i].cx;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:776: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:777: malos[i].lastmoved=0;
	ld	hl,#0x0018
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:772: for (i=0;i < malos_activos;i++){
	ld	hl,#1
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00136$
;alien6.c:780: }
00138$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_inicializarMalos_end::
;alien6.c:783: void borrarMalos(){
;	---------------------------------
; Function borrarMalos
; ---------------------------------
_borrarMalos_start::
_borrarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:785: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00117$
;alien6.c:786: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00115$:
;alien6.c:787: if ((malos[i].activo==1) && (malos[i].nuevo==0) && (malos[i].moved)){
	ld	a,#<(_malos)
	ld	hl,#3
	add	hl,sp
	ld	iy,#1
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000D
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00116$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0010
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	NZ,00116$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000E
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00116$
;alien6.c:788: if((malos[i].ox>0)&&(malos[i].ox<160)&&(malos[i].oy>0)&&(malos[i].oy<200))
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0004
	add	hl, de
	ld	e,(hl)
	ld	a,e
	or	a, a
	jr	Z,00102$
	ld	a,e
	sub	a, #0xA0
	jr	NC,00102$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0005
	add	hl, bc
	ld	l,(hl)
	ld	a,l
	or	a, a
	jr	Z,00102$
	ld	a,l
	sub	a, #0xC8
	jr	NC,00102$
;alien6.c:789: cpc_PutSpXOR(malos[i].sp0,malos[i].h,malos[i].w,direccionLinea[malos[i].oy]+malos[i].ox);
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	d,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0007
	add	hl, de
	ld	e,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	d,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00102$:
;alien6.c:790: if (malos[i].dead){
	ld	a,#<(_malos)
	ld	hl,#5
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	push	de
	pop	iy
	ld	a,17 (iy)
	or	a, a
	jr	Z,00116$
;alien6.c:791: malos[i].activo=0;
	ld	hl,#0x000D
	add	hl,de
	ld	(hl),#0x00
;alien6.c:792: malos_activos--;
	ld	hl, #_malos_activos+0
	dec	(hl)
00116$:
;alien6.c:786: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jp	C,00115$
00117$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarMalos_end::
;alien6.c:801: void moverMalos(){
;	---------------------------------
; Function moverMalos
; ---------------------------------
_moverMalos_start::
_moverMalos:
	ld	hl,#-28
	add	hl,sp
	ld	sp,hl
;alien6.c:806: lapso=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),e
	ld	3 (iy),d
;alien6.c:807: formMoved=0;
	ld	hl,#_formMoved + 0
	ld	(hl), #0x00
;alien6.c:809: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00156$
;alien6.c:810: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #26
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #24
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #22
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00154$:
;alien6.c:811: if ((malos[i].activo==1) && (lapso-malos[i].lastmoved>malos[i].speed)){
	ld	a,#<(_malos)
	ld	hl,#22
	add	hl,sp
	ld	iy,#20
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#20
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000D
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00155$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0018
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#16
	add	hl,sp
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, e
	ld	(hl),a
	ld	a,1 (iy)
	sbc	a, d
	inc	hl
	ld	(hl),a
	ld	a,2 (iy)
	sbc	a, c
	inc	hl
	ld	(hl),a
	ld	a,3 (iy)
	sbc	a, b
	inc	hl
	ld	(hl),a
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x000F
	add	hl, de
	ld	e,(hl)
	ld	d,#0x00
	ld	bc,#0x0000
	ld	a,e
	ld	iy,#16
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jp	PO, 00266$
	xor	a, #0x80
00266$:
	jp	P,00155$
;alien6.c:813: if (formMoved==0){ 
	ld	a,(#_formMoved + 0)
	or	a, a
	jr	NZ,00104$
;alien6.c:814: stepCount++;
	ld	hl, #_stepCount+0
	inc	(hl)
;alien6.c:815: if (stepCount>39){	//Si llego a 40 pasos me doy la vuelta
	ld	a,#0x27
	ld	iy,#_stepCount
	sub	a, 0 (iy)
	jr	NC,00102$
;alien6.c:816: stepCount=0;
	ld	hl,#_stepCount + 0
	ld	(hl), #0x00
;alien6.c:817: velXForm=-velXForm;
	xor	a, a
	ld	iy,#_velXForm
	sub	a, 0 (iy)
	ld	(#_velXForm + 0),a
00102$:
;alien6.c:819: formMoved=1;
	ld	hl,#_formMoved + 0
	ld	(hl), #0x01
00104$:
;alien6.c:822: if (formMoved)
	ld	a,(#_formMoved + 0)
	or	a, a
	jr	Z,00106$
;alien6.c:823: malos[i].homeX=malos[i].homeX+velXForm;
	ld	a,#<(_malos)
	ld	hl,#26
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x000B
	add	hl,de
	ex	de,hl
	ld	a,(de)
	ld	hl,#_velXForm
	add	a, (hl)
	ld	(de),a
00106$:
;alien6.c:825: if (malos[i].movement==0){	
	ld	a,#<(_malos)
	ld	hl,#24
	add	hl,sp
	ld	iy,#16
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl,#20
	add	hl,sp
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c,(hl)
;alien6.c:827: if (cpc_Random()<malos[i].agresividad){	//creo ataque propocionalmente a la agresividad
	ld	hl,#14
	add	hl,sp
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x13
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:830: malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formación.
	ld	hl,#12
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x02
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:838: malos[i].cy++;
	ld	hl,#10
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:825: if (malos[i].movement==0){	
	ld	a,c
	or	a, a
	jr	NZ,00142$
;alien6.c:826: if (ataques_activos<max_ataques_activos)
	ld	hl,#_max_ataques_activos
	ld	a,(#_ataques_activos + 0)
	sub	a, (hl)
	jp	NC,00143$
;alien6.c:827: if (cpc_Random()<malos[i].agresividad){	//creo ataque propocionalmente a la agresividad
	call	_cpc_Random
	ld	d,l
	ld	hl, #14
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	h,(hl)
	ld	a,d
	sub	a, h
	jr	NC,00108$
;alien6.c:828: crearAtaque(i);
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_crearAtaque
	inc	sp
	jp	00143$
00108$:
;alien6.c:830: malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formación.
	ld	iy,#12
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a, (hl)
	ld	hl,#_velXForm
	add	a, (hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
	jp	00143$
00142$:
;alien6.c:832: } else if (malos[i].movement==1){	
	ld	a,c
	dec	a
	jp	NZ,00139$
;alien6.c:834: while (!(ataques[j].idMalo==i)&&(ataques[j].activo==1)){ 	//busco el ataque que le corresponde a este malo
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #8
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00113$:
	ld	a,#<(_ataques)
	ld	hl,#8
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_ataques)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	l, e
	ld	h, d
	inc	hl
	ld	b,(hl)
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	sub	a, b
	jr	Z,00115$
	ld	a,(de)
	dec	a
	jr	NZ,00115$
;alien6.c:835: j++;
	ld	hl,#8
	add	hl,sp
	ld	a,(hl)
	add	a, #0x06
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#4
	add	iy,sp
	inc	0 (iy)
	jr	00113$
00115$:
;alien6.c:837: malos[i].cx=malos[i].cx+ataques[j].trayectoria[ataques[j].step]; //muevo al malo
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	hl, #4+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,#<(_ataques)
	ld	hl,#8
	add	hl,sp
	add	a, l
	ld	(hl),a
	ld	a,#>(_ataques)
	adc	a, h
	inc	hl
	ld	(hl),a
	ld	iy,#8
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0004
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#6
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x02
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	l, (hl)
	ld	h,#0x00
	add	hl,bc
	ld	l,(hl)
	ld	a,e
	add	a, l
	ld	iy,#12
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
;alien6.c:838: malos[i].cy++;
	ld	iy,#10
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	d,(hl)
	inc	d
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),d
;alien6.c:839: if (malos[i].cy>200){	// si me salgo de la pantalla inicio el camino a la formación
	ld	a,#0xC8
	sub	a, d
	jr	NC,00120$
;alien6.c:840: malos[i].movement=2;
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x02
;alien6.c:841: malos[i].cy=-10;  //coloco al malo fuera de la pantalla por arriba para que tarde un poco en llegar
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0xF6
;alien6.c:842: ataques[j].activo=0;
	ld	iy,#8
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:843: ataques[j].idMalo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	(hl),#0x00
;alien6.c:844: ataques_activos--;
	ld	hl, #_ataques_activos+0
	dec	(hl)
	jp	00143$
00120$:
;alien6.c:845: }else if (ataques[j].step<ataques[j].maxStep)	//actualizo próximas siguiente paso en caso de que reiniciar el ciclo de la trayectoria
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #8
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	inc	hl
	ld	h,(hl)
	ld	a,d
	sub	a, h
	jr	NC,00117$
;alien6.c:846: ataques[j].step++;
	inc	d
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	jp	00143$
00117$:
;alien6.c:848: ataques[j].step=0;
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
	jp	00143$
00139$:
;alien6.c:851: }else if (malos[i].movement==2){
	ld	a,c
	sub	a, #0x02
	jp	NZ,00143$
;alien6.c:853: if ((malos[i].cx=malos[i].homeX) && (malos[i].cy==malos[i].homeY)){
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0B
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	d,a
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	ld	hl,#6
	add	hl,sp
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0C
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	a,d
	or	a, a
	jr	Z,00133$
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	a,d
	sub	a, e
	jr	NZ,00133$
;alien6.c:854: malos[i].movement=0;
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
	jr	00143$
00133$:
;alien6.c:858: if (malos[i].cx<malos[i].homeX)
	ld	iy,#12
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,(hl)
	ld	a,(bc)
	ld	h,a
	ld	a,e
	sub	a, h
	jr	NC,00125$
;alien6.c:859: malos[i].cx++;
	inc	e
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),e
	jr	00126$
00125$:
;alien6.c:860: else if (malos[i].cx>malos[i].homeX)
	ld	a,h
	sub	a, e
	jr	NC,00126$
;alien6.c:861: malos[i].cx--;
	dec	e
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),e
00126$:
;alien6.c:863: if (malos[i].cy<malos[i].homeY)
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	h,(hl)
	ld	a,d
	sub	a, h
	jr	NC,00130$
;alien6.c:864: malos[i].cy++;
	inc	d
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	jr	00143$
00130$:
;alien6.c:865: else if (malos[i].cy>malos[i].homeY)
	ld	a,h
	sub	a, d
	jr	NC,00143$
;alien6.c:866: malos[i].cy--;
	dec	d
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
00143$:
;alien6.c:871: if ((disparos_activos_malos<MAX_DISPAROS_MALOS) && (cpc_Random() < malos[i].agresividad) && (hostilidad)){
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	a,(#_disparos_activos_malos + 0)
	sub	a, (hl)
	jr	NC,00145$
	call	_cpc_Random
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),l
	ld	hl, #14
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	sub	a, d
	jr	NC,00145$
	ld	a,(#_hostilidad + 0)
	or	a, a
	jr	Z,00145$
;alien6.c:872: crearDisparoMalo(malos[i].cx,malos[i].cy);
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	b,(hl)
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c, (hl)
	push	bc
	call	_crearDisparoMalo
	pop	af
00145$:
;alien6.c:874: malos[i].lastmoved=lapso;
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x18
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	hl, #0x0000
	add	hl, sp
	ld	bc, #0x0004
	ldir
;alien6.c:875: malos[i].moved=1;
	ld	a,0 (iy)
	add	a, #0x0E
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),#0x01
00155$:
;alien6.c:810: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#26
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#24
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#22
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#5
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jp	C,00154$
00156$:
	ld	hl,#28
	add	hl,sp
	ld	sp,hl
	ret
_moverMalos_end::
;alien6.c:881: void pintarMalos(){
;	---------------------------------
; Function pintarMalos
; ---------------------------------
_pintarMalos_start::
_pintarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:883: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00116$
;alien6.c:884: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00114$:
;alien6.c:885: if ((malos[i].activo==1) && (malos[i].moved)){
	ld	a,#<(_malos)
	ld	hl,#3
	add	hl,sp
	ld	iy,#1
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000D
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00115$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000E
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00115$
;alien6.c:887: if((malos[i].cx>0)&&(malos[i].cx<160)&&(malos[i].cy>0)&&(malos[i].cy<200))
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	a,e
	or	a, a
	jr	Z,00102$
	ld	a,e
	sub	a, #0xA0
	jr	NC,00102$
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	a,l
	or	a, a
	jr	Z,00102$
	ld	a,l
	sub	a, #0xC8
	jr	NC,00102$
;alien6.c:888: cpc_PutSpXOR(malos[i].sp0,malos[i].h,malos[i].w,direccionLinea[malos[i].cy]+malos[i].cx);
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	d,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0007
	add	hl, de
	ld	e,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	d,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00102$:
;alien6.c:889: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#5
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;alien6.c:890: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	push	de
	pop	iy
	ld	a,3 (iy)
	ld	(bc),a
;alien6.c:891: if (malos[i].nuevo) malos[i].nuevo=0;
	ld	hl,#0x0010
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00107$
	ld	(hl),#0x00
00107$:
;alien6.c:892: malos[i].moved=0;
	ld	hl,#0x000E
	add	hl,de
	ld	(hl),#0x00
00115$:
;alien6.c:884: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jp	C,00114$
00116$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_pintarMalos_end::
;alien6.c:901: void inicializarDisparos(){
;	---------------------------------
; Function inicializarDisparos
; ---------------------------------
_inicializarDisparos_start::
_inicializarDisparos:
	dec	sp
;alien6.c:904: for (k=0;k<MAX_DISPAROS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00102$:
;alien6.c:905: disparos[k].activo=0;
	ld	hl,#_disparos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:906: disparos[k].sp0=shot2;
	ld	l, c
	ld	h, b
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:907: disparos[k].cx=0;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:908: disparos[k].cy=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:909: disparos[k].ox=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:910: disparos[k].oy=0;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:911: disparos[k].nuevo=0;
	ld	hl,#0x000F
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:912: disparos[k].dead=0;
	ld	hl,#0x0010
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:913: disparos[k].lastmoved=0;
	ld	hl,#0x0011
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:904: for (k=0;k<MAX_DISPAROS;k++){
	ld	hl,#0x0015
	add	hl,de
	ex	de,hl
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jr	C,00102$
;alien6.c:915: disparos_activos=0;
	ld	hl,#_disparos_activos + 0
	ld	(hl), #0x00
	inc	sp
	ret
_inicializarDisparos_end::
;alien6.c:918: void crearDisparo(unsigned char x, unsigned char y){
;	---------------------------------
; Function crearDisparo
; ---------------------------------
_crearDisparo_start::
_crearDisparo:
	push	af
;alien6.c:921: while (disparos[k].activo==1){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00101$:
	ld	hl,#_disparos
	add	hl,de
	ex	(sp), hl
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0C
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	dec	a
	jr	NZ,00103$
;alien6.c:922: k++;
	ld	hl,#0x0015
	add	hl,de
	ex	de,hl
	jr	00101$
00103$:
;alien6.c:924: disparos[k].activo=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:925: disparos[k].cx=x+1;
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x08
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	hl, #4+0
	add	hl, sp
	ld	e, (hl)
	inc	e
	ld	a,e
	ld	(bc),a
;alien6.c:926: disparos[k].cy=y-1;
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	hl, #5+0
	add	hl, sp
	ld	d, (hl)
	dec	d
	ld	a,d
	ld	(bc),a
;alien6.c:927: disparos[k].ox=x+1;
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,e
	ld	(bc),a
;alien6.c:928: disparos[k].oy=y-1;
	ld	a,0 (iy)
	add	a, #0x0B
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),d
;alien6.c:929: disparos[k].sp0=shot2;
	pop	hl
	push	hl
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:930: disparos[k].nuevo=1;
	ld	a,0 (iy)
	add	a, #0x0F
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),#0x01
;alien6.c:931: disparos[k].dead=0;
	ld	a,0 (iy)
	add	a, #0x10
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	xor	a, a
	ld	(de),a
;alien6.c:932: disparos_activos++;
	ld	hl, #_disparos_activos+0
	inc	(hl)
;alien6.c:933: prota.lastShot = getTime();
	call	_getTime
	ld	c,l
	ld	b,h
	ld	((_prota + 0x001a)), bc
	ld	((_prota + 0x001a) + 2), de
;alien6.c:934: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	af
	ret
_crearDisparo_end::
;alien6.c:937: void borrarDisparos(){
;	---------------------------------
; Function borrarDisparos
; ---------------------------------
_borrarDisparos_start::
_borrarDisparos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:940: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00111$
;alien6.c:941: for (k=0;k<MAX_DISPAROS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00109$:
;alien6.c:942: if ((disparos[k].activo==1) && (disparos[k].nuevo==0)){
	ld	hl,#_disparos
	add	hl,bc
	ex	de,hl
	ld	hl,#0x000C
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jp	NZ,00110$
	push	de
	pop	iy
	ld	a,15 (iy)
	or	a, a
	jp	NZ,00110$
;alien6.c:943: cpc_PutSpXOR(disparos[k].sp0,6,2,direccionLinea[disparos[k].oy]+disparos[k].ox);
	push	de
	pop	iy
	ld	l,11 (iy)
	ld	h,#0x00
	add	hl, hl
	ld	a,l
	add	a, #<(_direccionLinea)
	ld	l,a
	ld	a,h
	adc	a, #>(_direccionLinea)
	ld	h,a
	ld	a,(hl)
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	de
	pop	iy
	ld	a,10 (iy)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	ld	1 (iy),#0x00
	ld	hl,#1
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	add	a, (hl)
	ld	(hl),a
	ld	a,1 (iy)
	inc	hl
	adc	a, (hl)
	ld	(hl),a
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	push	de
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl,#0x0206
	push	hl
	ld	hl, #11
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;alien6.c:944: if (disparos[k].dead){
	push	de
	pop	iy
	ld	a,16 (iy)
	or	a, a
	jr	Z,00110$
;alien6.c:945: disparos[k].activo=0;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:946: disparos_activos--;
	ld	hl, #_disparos_activos+0
	dec	(hl)
00110$:
;alien6.c:941: for (k=0;k<MAX_DISPAROS;k++){
	ld	hl,#0x0015
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jp	C,00109$
00111$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarDisparos_end::
;alien6.c:953: void moverDisparos(){
;	---------------------------------
; Function moverDisparos
; ---------------------------------
_moverDisparos_start::
_moverDisparos:
	ld	hl,#-25
	add	hl,sp
	ld	sp,hl
;alien6.c:958: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00128$
;alien6.c:959: for (i=0;i<MAX_DISPAROS;i++){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #23
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #21
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #19
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00126$:
;alien6.c:960: if ((disparos[i].activo==1) && (disparos[i].dead==0)){
	ld	a,#<(_disparos)
	ld	hl,#19
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	ld	b,a
	push	bc
	pop	iy
	ld	a,12 (iy)
	dec	a
	jp	NZ,00127$
	ld	hl,#0x0010
	add	hl,bc
	ex	de,hl
	ld	a,(de)
	or	a, a
	jp	NZ,00127$
;alien6.c:961: if (disparos[i].cy>16){
	ld	iy,#0x0009
	add	iy, bc
	ld	b, 0 (iy)
	ld	a,#0x10
	sub	a, b
	jp	NC,00116$
;alien6.c:962: disparos[i].cy=disparos[i].cy - SALTO_DISPARO;
	ld	a,b
	add	a,#0xFC
	ld	0 (iy), a
;alien6.c:963: for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
	ld	a,#<(_disparos)
	ld	hl,#21
	add	hl,sp
	ld	iy,#17
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl, #17+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#15
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #17+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#15
	add	iy,sp
	ld	1 (iy),a
	ld	hl, #17+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#13
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #17+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#13
	add	iy,sp
	ld	1 (iy),a
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #11
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00124$:
;alien6.c:964: if (malos[j].activo==1){
	ld	a,#<(_malos)
	ld	hl,#11
	add	hl,sp
	ld	iy,#9
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #9+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#7
	add	iy,sp
	ld	1 (iy),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000D
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00125$
;alien6.c:965: if (detectarColision(disparos[i].cx,disparos[i].cy,2,6,malos[j].cx,malos[j].cy,malos[j].w,malos[j].h)){  
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0007
	add	hl, de
	ld	a,(hl)
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #9
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	hl,#3
	add	hl,sp
	ld	iy,#9
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x02
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #15
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	bc, #0x0009
	add	hl, bc
	ld	b,(hl)
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	ld	bc, #0x0008
	add	hl, bc
	pop	bc
	ld	c,(hl)
	push	de
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl,#0x0602
	push	hl
	push	bc
	call	_detectarColision
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jp	Z,00125$
;alien6.c:968: disparos[i].dead=1;
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x10
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,#0x01
	ld	(bc),a
;alien6.c:970: malos[j].vidas--;
	ld	iy,#9
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x12
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
;alien6.c:971: if (malos[j].vidas==0){
	or	a, a
	jr	NZ,00108$
;alien6.c:972: malos[j].dead=1;
	ld	a,0 (iy)
	add	a, #0x11
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,#0x01
	ld	(bc),a
;alien6.c:974: crearExplosion(0, malos[j].cx, malos[j].cy);
	ld	a,(de)
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	b,(hl)
	push	de
	push	af
	inc	sp
	push	bc
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_crearExplosion
	inc	sp
	ld	hl,#0x0301
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	de
;alien6.c:978: score+=10;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x0A
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:979: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
;alien6.c:981: if (cpc_Random()<25)
	push	de
	call	_cpc_Random
	pop	de
	ld	a,l
	sub	a, #0x19
	jr	NC,00125$
;alien6.c:982: crearAddon(malos[j].cx, malos[j].cy);
	ld	a,(de)
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_crearAddon
	pop	af
	jr	00125$
00108$:
;alien6.c:985: crearExplosion(1, malos[j].cx, malos[j].cy+malos[i].h);
	ld	a,(de)
	ld	e,a
	ld	a,#<(_malos)
	push	af
	ld	iy,#25
	add	iy,sp
	pop	af
	add	a, 0 (iy)
	push	af
	ld	a,#>(_malos)
	adc	a, 1 (iy)
	ld	h,a
	pop	af
	ld	l,a
	ld	bc, #0x0006
	add	hl, bc
	ld	l,(hl)
	ld	a,e
	add	a, l
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	d,(hl)
	push	af
	inc	sp
	ld	e, #0x01
	push	de
	call	_crearExplosion
;alien6.c:987: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
	inc	sp
	ld	hl,#0x0202
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
00125$:
;alien6.c:963: for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
	ld	hl,#11
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x06
	jp	C,00124$
	jr	00127$
00116$:
;alien6.c:996: disparos[i].dead=1;
	ld	a,#0x01
	ld	(de),a
00127$:
;alien6.c:959: for (i=0;i<MAX_DISPAROS;i++){
	ld	hl,#23
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1C
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#21
	add	hl,sp
	ld	a,(hl)
	add	a, #0x15
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#19
	add	hl,sp
	ld	a,(hl)
	add	a, #0x15
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jp	C,00126$
00128$:
	ld	hl,#25
	add	hl,sp
	ld	sp,hl
	ret
_moverDisparos_end::
;alien6.c:1006: void pintarDisparos(){
;	---------------------------------
; Function pintarDisparos
; ---------------------------------
_pintarDisparos_start::
_pintarDisparos:
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;alien6.c:1009: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00110$
;alien6.c:1010: for (k=0;k<MAX_DISPAROS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00108$:
;alien6.c:1011: if (disparos[k].activo==1){
	ld	hl,#_disparos
	add	hl,de
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	a,0 (iy)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #7+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#5
	add	iy,sp
	ld	1 (iy),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x000C
	add	hl, bc
	ld	a,(hl)
	dec	a
	jp	NZ,00109$
;alien6.c:1012: cpc_PutSpXOR(disparos[k].sp0,6,2,direccionLinea[disparos[k].cy]+disparos[k].cx);
	ld	hl,#5
	add	hl,sp
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_direccionLinea
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#3
	add	hl,sp
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x08
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	l,(hl)
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	de
	push	bc
	ld	hl,#0x0206
	push	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:1013: disparos[k].ox=disparos[k].cx;
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:1014: disparos[k].oy=disparos[k].cy;
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0B
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:1015: if (disparos[k].nuevo) disparos[k].nuevo=0;
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0F
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	or	a, a
	jr	Z,00109$
	xor	a, a
	ld	(bc),a
00109$:
;alien6.c:1010: for (k=0;k<MAX_DISPAROS;k++){
	ld	hl,#0x0015
	add	hl,de
	ex	de,hl
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jp	C,00108$
00110$:
	ld	hl,#9
	add	hl,sp
	ld	sp,hl
	ret
_pintarDisparos_end::
;alien6.c:1021: void inicializarProta(){
;	---------------------------------
; Function inicializarProta
; ---------------------------------
_inicializarProta_start::
_inicializarProta:
;alien6.c:1022: prota.activo=1;
	ld	hl,#_prota + 15
	ld	(hl),#0x01
;alien6.c:1023: prota.sp0=nave;
	ld	hl,#_nave
	ld	(_prota), hl
;alien6.c:1024: prota.cx=39;
	ld	hl,#_prota + 8
	ld	(hl),#0x27
;alien6.c:1025: prota.cy=178;
	ld	hl,#_prota + 9
	ld	(hl),#0xB2
;alien6.c:1026: prota.ox=39;
	ld	hl,#_prota + 10
	ld	(hl),#0x27
;alien6.c:1027: prota.oy=179;
	ld	hl,#_prota + 11
	ld	(hl),#0xB3
;alien6.c:1028: prota.moved=0;
	ld	hl,#_prota + 17
	ld	(hl),#0x00
;alien6.c:1029: prota.dead=0;
	ld	hl,#_prota + 20
	ld	(hl),#0x00
;alien6.c:1030: prota.speed=PROTA_SPEED;
	ld	hl,#_prota + 18
	ld	(hl),#0x0A
;alien6.c:1031: prota.lastmoved=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0016)),hl
	ld	((_prota + 0x0016) + 2), hl
;alien6.c:1032: prota.lastShot=0;
	ld	hl,#0x0000
	ld	((_prota + 0x001a)),hl
	ld	((_prota + 0x001a) + 2), hl
;alien6.c:1033: prota.reloadSpeed=20; //Velocidad de recarga
	ld	hl,#_prota + 30
	ld	(hl),#0x14
	ret
_inicializarProta_end::
;alien6.c:1036: void borrarProta(){
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta_start::
_borrarProta:
;alien6.c:1037: if ((prota.moved) || (prota.dead==1)){
	ld	a,(#(_prota + 0x0011) + 0)
	or	a, a
	jr	NZ,00103$
	ld	a, (#(_prota + 0x0014) + 0)
	dec	a
	ret	NZ
00103$:
;alien6.c:1038: cpc_PutSpXOR(prota.sp0,16,4,direccionLinea[prota.oy]+prota.ox);
	ld	a, (#_prota + 11)
	ld	l,a
	ld	h,#0x00
	add	hl, hl
	ld	de,#_direccionLinea
	add	hl,de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a, (#_prota + 10)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	de, (#_prota + 0)
	push	bc
	ld	hl,#0x0410
	push	hl
	push	de
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1039: if (prota.dead) { 
	ld	a, (#(_prota + 0x0014) + 0)
	or	a, a
	ret	Z
;alien6.c:1040: prota.moved=0;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x00
;alien6.c:1041: prota.dead++;
	ld	a, (#(_prota + 0x0014) + 0)
	inc	a
	ld	(#(_prota + 0x0014)),a
	ret
_borrarProta_end::
;alien6.c:1047: void moverProta(){
;	---------------------------------
; Function moverProta
; ---------------------------------
_moverProta_start::
_moverProta:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:1048: if (!prota.dead){
	ld	a,(#_prota + 20)
	or	a, a
	jp	NZ,00118$
;alien6.c:1049: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	ld	de,#_prota + 8
;alien6.c:1052: prota.moved=1;
;alien6.c:1049: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	dec	l
	jr	NZ,00102$
	ld	a,(de)
	ld	h,a
	ld	a,#0x4B
	sub	a, h
	jr	C,00102$
;alien6.c:1051: prota.cx++;
	ld	a,h
	inc	a
	ld	(de),a
;alien6.c:1052: prota.moved=1;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x01
00102$:
;alien6.c:1054: if (cpc_TestKey(KEY_LEFT)==1 && prota.cx>0)   // IZQUIERDA
	push	de
	xor	a, a
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00105$
	ld	a,(de)
	or	a, a
	jr	Z,00105$
;alien6.c:1056: prota.cx--;
	add	a,#0xFF
	ld	(de),a
;alien6.c:1057: prota.moved=1;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x01
00105$:
;alien6.c:1059: if (cpc_TestKey(KEY_UP)==1 && prota.cy>15)   // ARRIBA
	push	de
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00108$
	ld	hl, #(_prota + 0x0009) + 0
	ld	b,(hl)
	ld	a,#0x0F
	sub	a, b
	jr	NC,00108$
;alien6.c:1061: prota.cy-=2;
	dec	b
	dec	b
	ld	hl,#(_prota + 0x0009)
	ld	(hl),b
;alien6.c:1062: prota.moved=1;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x01
00108$:
;alien6.c:1064: if (cpc_TestKey(KEY_DOWN)==1 && prota.cy<178)   // ABAJO
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00111$
	ld	hl, #(_prota + 0x0009) + 0
	ld	b,(hl)
	ld	a,b
	sub	a, #0xB2
	jr	NC,00111$
;alien6.c:1066: prota.cy+=2;
	inc	b
	inc	b
	ld	hl,#(_prota + 0x0009)
	ld	(hl),b
;alien6.c:1067: prota.moved=1;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x01
00111$:
;alien6.c:1069: if ((cpc_TestKey(KEY_FIRE)==1) && (getTime()-prota.lastShot>prota.reloadSpeed))   // ESPACIO
	push	de
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jp	NZ,00118$
	push	de
	call	_getTime
	ld	iy,#6
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	pop	de
	ld	hl, (#_prota + 26)
	ld	bc, (#_prota + 28)
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),c
	ld	3 (iy),b
	ld	hl,#0
	add	hl,sp
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	ld	(hl),a
	ld	a,1 (iy)
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a,2 (iy)
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a,3 (iy)
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, (#_prota + 30)
	ld	0 (iy),a
	rla
	sbc	a, a
	ld	1 (iy),a
	ld	2 (iy),a
	ld	3 (iy),a
	ld	hl,#4
	add	hl,sp
	ld	a,(hl)
	ld	iy,#0
	add	iy,sp
	sub	a, 0 (iy)
	inc	hl
	ld	a,(hl)
	sbc	a, 1 (iy)
	inc	hl
	ld	a,(hl)
	sbc	a, 2 (iy)
	inc	hl
	ld	a,(hl)
	sbc	a, 3 (iy)
	jr	NC,00118$
;alien6.c:1071: crearDisparo(prota.cx, prota.cy);
	ld	hl, #(_prota + 0x0009) + 0
	ld	b,(hl)
	ld	a,(de)
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_crearDisparo
	pop	af
00118$:
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	ret
_moverProta_end::
;alien6.c:1076: void pintarProta(){
;	---------------------------------
; Function pintarProta
; ---------------------------------
_pintarProta_start::
_pintarProta:
;alien6.c:1077: if ((prota.moved) && (!prota.dead)){
	ld	a, (#(_prota + 0x0011) + 0)
	or	a, a
	ret	Z
	ld	a, (#_prota + 20)
	or	a, a
	ret	NZ
;alien6.c:1078: cpc_PutSpXOR(prota.sp0,16,4,direccionLinea[prota.cy]+prota.cx);
	ld	a, (#(_prota + 0x0009) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl, hl
	ld	de,#_direccionLinea
	add	hl,de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a, (#(_prota + 0x0008) + 0)
	ld	l,a
	ld	h,#0x00
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	de, (#_prota + 0)
	push	bc
	ld	hl,#0x0410
	push	hl
	push	de
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1079: prota.ox=prota.cx;
	ld	a, (#(_prota + 0x0008) + 0)
	ld	(#(_prota + 0x000a)),a
;alien6.c:1080: prota.oy=prota.cy;
	ld	a, (#(_prota + 0x0009) + 0)
	ld	(#(_prota + 0x000b)),a
;alien6.c:1081: prota.moved=0;
	ld	hl,#(_prota + 0x0011)
	ld	(hl),#0x00
	ret
_pintarProta_end::
;alien6.c:1086: void inicializarTeclado()
;	---------------------------------
; Function inicializarTeclado
; ---------------------------------
_inicializarTeclado_start::
_inicializarTeclado:
;alien6.c:1088: cpc_AssignKey (KEY_LEFT, 0x4404);		// O
	ld	hl,#0x4404
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1089: cpc_AssignKey (KEY_RIGHT, 0x4308);		// P
	inc	sp
	ld	hl,#0x4308
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1090: cpc_AssignKey (KEY_UP, 0x4808);		    // Q
	inc	sp
	ld	hl,#0x4808
	ex	(sp),hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1091: cpc_AssignKey (KEY_DOWN, 0x4820);		// A
	inc	sp
	ld	hl,#0x4820
	ex	(sp),hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1092: cpc_AssignKey (KEY_FIRE, 0x4580);		// SPACE
	inc	sp
	ld	hl,#0x4580
	ex	(sp),hl
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1093: cpc_AssignKey (KEY_ESC, 0x4804);		// ESC
	inc	sp
	ld	hl,#0x4804
	ex	(sp),hl
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1094: cpc_AssignKey (KEY_ME1, 0x4801);		// 1
	inc	sp
	ld	hl,#0x4801
	ex	(sp),hl
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1095: cpc_AssignKey (KEY_ME2, 0x4802);		// 2
	inc	sp
	ld	hl,#0x4802
	ex	(sp),hl
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1096: cpc_AssignKey (KEY_ME3, 0x4702);		// 3
	inc	sp
	ld	hl,#0x4702
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1097: cpc_AssignKey (KEY_ME4, 0x4701);		// 4
	inc	sp
	ld	hl,#0x4701
	ex	(sp),hl
	ld	a,#0x09
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1098: cpc_AssignKey (KEY_DEBUG, 0x4720);		// D
	inc	sp
	ld	hl,#0x4720
	ex	(sp),hl
	ld	a,#0x0A
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1099: cpc_AssignKey (KEY_HOSTILITY, 0x4510);		// H
	inc	sp
	ld	hl,#0x4510
	ex	(sp),hl
	ld	a,#0x0B
	push	af
	inc	sp
	call	_cpc_AssignKey
	pop	af
	inc	sp
	ret
_inicializarTeclado_end::
;alien6.c:1102: void mostrarVidasProta(){
;	---------------------------------
; Function mostrarVidasProta
; ---------------------------------
_mostrarVidasProta_start::
_mostrarVidasProta:
	push	af
	dec	sp
;alien6.c:1104: for (i=0;i<prota.vidas;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00103$:
	ld	hl, #(_prota + 0x0015) + 0
	ld	b,(hl)
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, b
	jr	NC,00105$
;alien6.c:1105: cpc_PutSpXOR(heart,5,3,direccionLinea[195]+(77-(i*3)));
	ld	bc, (#(_direccionLinea + 0x0186) + 0)
	ld	hl,#1
	add	hl,sp
	ld	a,#0x4D
	sub	a, e
	ld	(hl),a
	ld	a,#0x00
	sbc	a, d
	inc	hl
	ld	(hl),a
	ld	a,c
	ld	hl,#1
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,b
	inc	hl
	adc	a, (hl)
	ld	b,a
	push	de
	push	bc
	ld	hl,#0x0305
	push	hl
	ld	hl,#_heart
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:1104: for (i=0;i<prota.vidas;i++){
	inc	de
	inc	de
	inc	de
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00103$
00105$:
	pop	af
	inc	sp
	ret
_mostrarVidasProta_end::
;alien6.c:1109: void mostrarNivel(){
;	---------------------------------
; Function mostrarNivel
; ---------------------------------
_mostrarNivel_start::
_mostrarNivel:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:1117: aux=nivel/5;
	ld	a,#0x05
	push	af
	inc	sp
	ld	a,(_nivel)
	push	af
	inc	sp
	call	__divuschar_rrx_s
	pop	af
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
;alien6.c:1118: for (i=0;i<aux;i++){
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x00
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),#0x00
00104$:
	ld	hl,#1
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00101$
;alien6.c:1119: cpc_PutSpXOR(greenFlag,6,2,direccionLinea[194]+avance);
	ld	hl, #(_direccionLinea + 0x0184) + 0
	ld	a,(hl)
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),a
	ld	1 (iy),#0x00
	ld	hl,#4
	add	hl,sp
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	add	a, (hl)
	ld	c,a
	ld	a,1 (iy)
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	de,#_greenFlag
	push	bc
	ld	hl,#0x0206
	push	hl
	push	de
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1120: avance=avance+3;
	ld	iy,#2
	add	iy,sp
	inc	0 (iy)
	inc	0 (iy)
	inc	0 (iy)
;alien6.c:1118: for (i=0;i<aux;i++){
	ld	iy,#3
	add	iy,sp
	inc	0 (iy)
	jr	00104$
00101$:
;alien6.c:1123: aux2=nivel-(aux*5);
	ld	hl, #1+0
	add	hl, sp
	ld	a, (hl)
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	ld	d,a
	ld	a,(#_nivel + 0)
	sub	a, d
	inc	sp
	push	af
	inc	sp
;alien6.c:1124: for (i=0;i<aux2;i++){
	ld	hl, #2+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x00
00107$:
	ld	hl,#0
	add	hl,sp
	ld	a,e
	sub	a, (hl)
	jr	NC,00109$
;alien6.c:1125: cpc_PutSpXOR(redFlag,6,2,direccionLinea[194]+avance);
	ld	bc, (#(_direccionLinea + 0x0184) + 0)
	ld	l,d
	ld	h,#0x00
	add	hl,bc
	push	de
	push	hl
	ld	hl,#0x0206
	push	hl
	ld	hl,#_redFlag
	push	hl
	call	_cpc_PutSpXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:1126: avance=avance+3;
	inc	d
	inc	d
	inc	d
;alien6.c:1124: for (i=0;i<aux2;i++){
	inc	e
	jr	00107$
00109$:
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	ret
_mostrarNivel_end::
;alien6.c:1129: void inicializarPartida(){
;	---------------------------------
; Function inicializarPartida
; ---------------------------------
_inicializarPartida_start::
_inicializarPartida:
;alien6.c:1130: prota.vidas=3;
	ld	hl,#_prota+21
	ld	(hl),#0x03
;alien6.c:1131: nivel=1;
	ld	hl,#_nivel + 0
	ld	(hl), #0x01
;alien6.c:1132: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
	ret
_inicializarPartida_end::
;alien6.c:1135: void debug(){
;	---------------------------------
; Function debug
; ---------------------------------
_debug_start::
_debug:
;alien6.c:1136: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1137: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1138: sprintf(aux_txt,"DISPAROS;ACTIVOS;%03u",disparos_activos);
	ld	hl,#_disparos_activos + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_0
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1139: cpc_PrintGphStrXY(aux_txt,2*2,0*8);
	ld	de,#_aux_txt
	ld	hl,#0x0004
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1140: sprintf(aux_txt,"DISPAROS;MALOS;ACTIVOS;%03u",disparos_activos_malos);
	ld	hl,#_disparos_activos_malos + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_1
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1141: cpc_PrintGphStrXY(aux_txt,2*2,1*8);
	ld	de,#_aux_txt
	ld	hl,#0x0804
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1142: sprintf(aux_txt,"MALOS;ACTIVOS;%03u",malos_activos);
	ld	hl,#_malos_activos + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_2
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1143: cpc_PrintGphStrXY(aux_txt,2*2,2*8);
	ld	de,#_aux_txt
	ld	hl,#0x1004
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1144: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1146: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1147: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1149: cpc_ClrScr();				//fills scr with ink 0
	jp	_cpc_ClrScr
_debug_end::
___str_0:
	.ascii "DISPAROS;ACTIVOS;%03u"
	.db 0x00
___str_1:
	.ascii "DISPAROS;MALOS;ACTIVOS;%03u"
	.db 0x00
___str_2:
	.ascii "MALOS;ACTIVOS;%03u"
	.db 0x00
;alien6.c:1152: char help() {
;	---------------------------------
; Function help
; ---------------------------------
_help_start::
_help:
;alien6.c:1153: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1154: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1156: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1157: cpc_PrintGphStrXY("BANQUERO:PONDRA;TU;DINERO",20,0*11);
	ld	de,#___str_3
	ld	hl,#0x0014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1158: cpc_PrintGphStrXY(";;;;;;;;;FUERA;DEL;ALCANCE",20,1*11);
	ld	de,#___str_4
	ld	hl,#0x0B14
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1159: cpc_PrintGphStrXY(";;;;;;;;;DEL;FISCO",20,2*11);
	ld	de,#___str_5
	ld	hl,#0x1614
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1161: cpc_PrintGphStrXY("PROMOTOR:TE;DARA;SOBRES;A",20,4*11);
	ld	de,#___str_6
	ld	hl,#0x2C14
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1162: cpc_PrintGphStrXY(";;;;;;;;;CAMBIO;DE",20,5*11);
	ld	de,#___str_7
	ld	hl,#0x3714
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1163: cpc_PrintGphStrXY(";;;;;;;;;ADJUDICACIONES",20,6*11);
	ld	de,#___str_8
	ld	hl,#0x4214
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1165: cpc_PrintGphStrXY("JUEZ:SU;MAZA;HARA;CAER;SOBRE",20,8*11);
	ld	de,#___str_9
	ld	hl,#0x5814
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1166: cpc_PrintGphStrXY(";;;;;;;;;TI;EL;PESO;DE;LA;LEY",20,9*11);
	ld	de,#___str_10
	ld	hl,#0x6314
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1168: cpc_PrintGphStrXY("LARCENAS:SIMPATICO;LADRONZUELO",20,11*11);
	ld	de,#___str_11
	ld	hl,#0x7914
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1170: cpc_PrintGphStrXY("TECLAS:;CURSORES;Y;BARRA;DE;ESPACIO",3,16*11);
	ld	de,#___str_12
	ld	hl,#0xB003
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1173: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1174: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1176: return STATE_MENU; 
	ld	l,#0x02
	ret
_help_end::
___str_3:
	.ascii "BANQUERO:PONDRA;TU;DINERO"
	.db 0x00
___str_4:
	.ascii ";;;;;;;;;FUERA;DEL;ALCANCE"
	.db 0x00
___str_5:
	.ascii ";;;;;;;;;DEL;FISCO"
	.db 0x00
___str_6:
	.ascii "PROMOTOR:TE;DARA;SOBRES;A"
	.db 0x00
___str_7:
	.ascii ";;;;;;;;;CAMBIO;DE"
	.db 0x00
___str_8:
	.ascii ";;;;;;;;;ADJUDICACIONES"
	.db 0x00
___str_9:
	.ascii "JUEZ:SU;MAZA;HARA;CAER;SOBRE"
	.db 0x00
___str_10:
	.ascii ";;;;;;;;;TI;EL;PESO;DE;LA;LEY"
	.db 0x00
___str_11:
	.ascii "LARCENAS:SIMPATICO;LADRONZUELO"
	.db 0x00
___str_12:
	.ascii "TECLAS:;CURSORES;Y;BARRA;DE;ESPACIO"
	.db 0x00
;alien6.c:1179: char gameOver()
;	---------------------------------
; Function gameOver
; ---------------------------------
_gameOver_start::
_gameOver:
;alien6.c:1181: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1182: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_13
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1183: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_14
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1184: cpc_PrintGphStrXY(aux_txt,8*2,14*8);
	ld	de,#_aux_txt
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1185: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_14
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1186: while (cpc_AnyKeyPressed()==0);
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1187: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_14
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1188: cpc_PrintGphStrXY(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	ld	de,#___str_15
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1189: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_14
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1190: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1192: while (!cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00104$
;alien6.c:1193: while (cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00107$
;alien6.c:1195: return STATE_MENU; 
	ld	l,#0x02
	ret
_gameOver_end::
___str_13:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_14:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_15:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;alien6.c:1198: char levelUp()
;	---------------------------------
; Function levelUp
; ---------------------------------
_levelUp_start::
_levelUp:
;alien6.c:1200: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1201: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_16
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1202: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_17
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1203: cpc_PrintGphStrXY(aux_txt,8*2,14*8);
	ld	de,#_aux_txt
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1204: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_17
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1205: while (cpc_AnyKeyPressed()==0);
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1206: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_17
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1207: cpc_PrintGphStrXY(";;;;SIGUIENTE;NIVEL;;;;",8*2,14*8);
	ld	de,#___str_18
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1208: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_17
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1209: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1211: while (!cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00104$
;alien6.c:1212: while (cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00107$
;alien6.c:1214: nivel++;
	ld	hl, #_nivel+0
	inc	(hl)
;alien6.c:1216: return STATE_GAME; 
	ld	l,#0x04
	ret
_levelUp_end::
___str_16:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_17:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_18:
	.ascii ";;;;SIGUIENTE;NIVEL;;;;"
	.db 0x00
;alien6.c:1219: char win()
;	---------------------------------
; Function win
; ---------------------------------
_win_start::
_win:
;alien6.c:1221: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1222: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_19
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1223: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_20
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1224: cpc_PrintGphStrXY(aux_txt,8*2,14*8);
	ld	de,#_aux_txt
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1225: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_20
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1226: while (cpc_AnyKeyPressed()==0);
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1227: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_20
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1228: cpc_PrintGphStrXY(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	ld	de,#___str_21
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1229: cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_20
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1230: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1232: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1233: while (cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00107$
;alien6.c:1235: return STATE_MENU; 
	ld	l,#0x02
	ret
_win_end::
___str_19:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_20:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_21:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;alien6.c:1238: unsigned char redefineKeys()
;	---------------------------------
; Function redefineKeys
; ---------------------------------
_redefineKeys_start::
_redefineKeys:
;alien6.c:1241: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1242: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1244: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1246: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1248: cpc_PrintGphStrXY("PULSA;PARA",12*2,15*8);
	ld	de,#___str_22
	ld	hl,#0x7818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1249: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1251: cpc_PrintGphStrXY("IZQUIERDA",12*2,17*8);
	ld	de,#___str_23
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1252: cpc_RedefineKey(KEY_LEFT);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1253: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1254: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1255: cpc_PrintGphStrXY("DERECHA;;",12*2,17*8);
	ld	de,#___str_24
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1256: cpc_RedefineKey(KEY_RIGHT);
	ld	h,#0x01
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1257: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1258: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1259: cpc_PrintGphStrXY("ARRIBA;;;",12*2,17*8);
	ld	de,#___str_25
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1260: cpc_RedefineKey(KEY_UP);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1261: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1262: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1263: cpc_PrintGphStrXY("ABAJO;;;;",12*2,17*8);
	ld	de,#___str_26
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1264: cpc_RedefineKey(KEY_DOWN);
	ld	h,#0x03
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1265: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1266: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1267: cpc_PrintGphStrXY("DISPARO;;;",12*2,17*8);
	ld	de,#___str_27
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1268: cpc_RedefineKey(KEY_FIRE);
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1269: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1270: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1272: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	call	_cpc_WyzSetPlayerOff
;alien6.c:1274: return STATE_MENU;
	ld	l,#0x02
	ret
_redefineKeys_end::
___str_22:
	.ascii "PULSA;PARA"
	.db 0x00
___str_23:
	.ascii "IZQUIERDA"
	.db 0x00
___str_24:
	.ascii "DERECHA;;"
	.db 0x00
___str_25:
	.ascii "ARRIBA;;;"
	.db 0x00
___str_26:
	.ascii "ABAJO;;;;"
	.db 0x00
___str_27:
	.ascii "DISPARO;;;"
	.db 0x00
;alien6.c:1277: void pintarMenu(){
;	---------------------------------
; Function pintarMenu
; ---------------------------------
_pintarMenu_start::
_pintarMenu:
;alien6.c:1278: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1279: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1281: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1282: cpc_PrintGphStrXY("SPACE;RETRO;INVADERS",20, 1*16);
	ld	de,#___str_28
	ld	hl,#0x1014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1283: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1284: cpc_PrintGphStrXY("1;JUGAR",    30, 4*16);
	ld	de,#___str_29
	ld	hl,#0x401E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1285: cpc_PrintGphStrXY("2;AYUDA",    30, 5*16);
	ld	de,#___str_30
	ld	hl,#0x501E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1286: cpc_PrintGphStrXY("3;REDEFINIR;TECLAS",    30, 6*16);
	ld	de,#___str_31
	ld	hl,#0x601E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1287: cpc_PrintGphStrXY("ESC;SALIR",  30, 7*16);
	ld	de,#___str_32
	ld	hl,#0x701E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1289: cpc_PrintGphStrXY("C;2014;GLASNOST;CORP", 20, 10*16);
	ld	de,#___str_33
	ld	hl,#0xA014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1290: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1291: cpc_PrintGphStrXY("JOHN;LOBO", 31, 11*16);
	ld	de,#___str_34
	ld	hl,#0xB01F
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
	ret
_pintarMenu_end::
___str_28:
	.ascii "SPACE;RETRO;INVADERS"
	.db 0x00
___str_29:
	.ascii "1;JUGAR"
	.db 0x00
___str_30:
	.ascii "2;AYUDA"
	.db 0x00
___str_31:
	.ascii "3;REDEFINIR;TECLAS"
	.db 0x00
___str_32:
	.ascii "ESC;SALIR"
	.db 0x00
___str_33:
	.ascii "C;2014;GLASNOST;CORP"
	.db 0x00
___str_34:
	.ascii "JOHN;LOBO"
	.db 0x00
;alien6.c:1294: char menu() {
;	---------------------------------
; Function menu
; ---------------------------------
_menu_start::
_menu:
	dec	sp
;alien6.c:1295: char choice=-1;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0xFF
;alien6.c:1297: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1299: pintarMenu();
	call	_pintarMenu
;alien6.c:1301: while (choice==-1) {
00114$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	inc	a
	jr	NZ,00117$
;alien6.c:1302: cpc_ScanKeyboard();
	call	_cpc_ScanKeyboard
;alien6.c:1304: if (cpc_TestKey(KEY_ME1)==1){
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00104$
;alien6.c:1305: inicializarPartida();
	call	_inicializarPartida
;alien6.c:1306: choice=STATE_GAME;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x04
00104$:
;alien6.c:1308: if (cpc_TestKey(KEY_ME2)==1)   
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00106$
;alien6.c:1309: choice=STATE_HELP;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x03
00106$:
;alien6.c:1310: if (cpc_TestKey(KEY_ME3)==1)   
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00108$
;alien6.c:1311: choice=STATE_REDEFINE;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x09
00108$:
;alien6.c:1312: if (cpc_TestKey(KEY_ESC)==1)   
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00113$
;alien6.c:1313: choice=STATE_EXIT;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x05
;alien6.c:1314: if ((DEBUG) && (cpc_TestKey(KEY_DEBUG)==1)){
00113$:
	ld	a,#0x0A
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00114$
;alien6.c:1315: debug();
	call	_debug
;alien6.c:1316: pintarMenu();
	call	_pintarMenu
	jr	00114$
;alien6.c:1320: while (cpc_AnyKeyPressed());
00117$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00117$
;alien6.c:1322: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	call	_cpc_WyzSetPlayerOff
;alien6.c:1324: return choice; 
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	inc	sp
	ret
_menu_end::
;alien6.c:1327: void inicializarNivel(){
;	---------------------------------
; Function inicializarNivel
; ---------------------------------
_inicializarNivel_start::
_inicializarNivel:
;alien6.c:1329: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1330: cpc_PrintGphStr("1UP",0xc000);
	ld	hl,#___str_35+0
	ld	bc,#0xC000
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1331: cpc_PrintGphStr("HIGH;SCORE",0xc01E);	
	ld	hl,#___str_36+0
	ld	bc,#0xC01E
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1332: cpc_PrintGphStr("2UP",0xc04A);
	ld	hl,#___str_37+0
	ld	bc,#0xC04A
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1333: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1334: sprintf(aux_txt,"%05d",score);
	ld	de,#___str_38+0
	ld	bc,#_aux_txt
	ld	hl,(_score)
	push	hl
	push	de
	push	bc
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1335: cpc_PrintGphStr(aux_txt,0xc050);
	ld	hl,#_aux_txt
	ld	bc,#0xC050
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1336: cpc_PrintGphStr("00000",0xc073);	
	ld	hl,#___str_39
	ld	bc,#0xC073
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1337: cpc_PrintGphStr("00000",0xc096);
	ld	hl,#___str_39
	ld	bc,#0xC096
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1341: inicializarEstrellas();
	call	_inicializarEstrellas
;alien6.c:1342: pintarEstrellas();
	call	_pintarEstrellas
;alien6.c:1345: inicializarMalos();
	call	_inicializarMalos
;alien6.c:1346: inicializarProta();
	call	_inicializarProta
;alien6.c:1347: prota.moved=1;
	ld	hl,#_prota+17
	ld	(hl),#0x01
;alien6.c:1348: inicializarDisparos();
	call	_inicializarDisparos
;alien6.c:1349: inicializarDisparosMalos();
	call	_inicializarDisparosMalos
;alien6.c:1350: inicializarExplosiones();
	call	_inicializarExplosiones
;alien6.c:1352: pintarMalos();
	call	_pintarMalos
;alien6.c:1353: pintarProta();
	call	_pintarProta
;alien6.c:1354: mostrarVidasProta();
	call	_mostrarVidasProta
;alien6.c:1355: mostrarNivel();
	call	_mostrarNivel
;alien6.c:1357: stepCount=19;
	ld	hl,#_stepCount + 0
	ld	(hl), #0x13
;alien6.c:1358: velXForm=1;
	ld	hl,#_velXForm + 0
	ld	(hl), #0x01
;alien6.c:1359: switch (nivel){
	ld	a,(#_nivel + 0)
	dec	a
	jr	NZ,00104$
;alien6.c:1361: max_ataques_activos=2;
	ld	hl,#_max_ataques_activos + 0
	ld	(hl), #0x02
;alien6.c:1362: break;
	jr	00105$
;alien6.c:1363: default:
00104$:
;alien6.c:1364: max_ataques_activos=2;
	ld	hl,#_max_ataques_activos + 0
	ld	(hl), #0x02
;alien6.c:1366: }
00105$:
;alien6.c:1367: inicializarAtaques();
	call	_inicializarAtaques
;alien6.c:1369: inicializarAddones();
	call	_inicializarAddones
;alien6.c:1371: hostilidad=0;  //este flag hace que los enemigos disparen
	ld	hl,#_hostilidad + 0
	ld	(hl), #0x00
;alien6.c:1373: explosiones_lastUpdated=0; //La última vez que se actualizaron las explosiones
	xor	a, a
	ld	(#_explosiones_lastUpdated + 0),a
	ld	(#_explosiones_lastUpdated + 1),a
	ld	(#_explosiones_lastUpdated + 2),a
	ld	(#_explosiones_lastUpdated + 3),a
	ret
_inicializarNivel_end::
___str_35:
	.ascii "1UP"
	.db 0x00
___str_36:
	.ascii "HIGH;SCORE"
	.db 0x00
___str_37:
	.ascii "2UP"
	.db 0x00
___str_38:
	.ascii "%05d"
	.db 0x00
___str_39:
	.ascii "00000"
	.db 0x00
;alien6.c:1377: unsigned char game()
;	---------------------------------
; Function game
; ---------------------------------
_game_start::
_game:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:1379: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1381: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1384: inicializarNivel();
	call	_inicializarNivel
;alien6.c:1386: while(1)
00135$:
;alien6.c:1393: if ((ESTRELLAS_ACTIVADAS) && (getTime()-lastMovedEstrella>VELOCIDAD_ESTRELLAS)){
	call	_getTime
	ld	iy,#4
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	hl, #_lastMovedEstrella
	ld	bc, #4
	ldir
	ld	hl,#0
	add	hl,sp
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	ld	d,a
	ld	a,1 (iy)
	inc	hl
	sbc	a, (hl)
	ld	e,a
	ld	a,2 (iy)
	inc	hl
	sbc	a, (hl)
	ld	c,a
	ld	a,3 (iy)
	inc	hl
	sbc	a, (hl)
	ld	b,a
	ld	a,#0x0A
	cp	a, d
	ld	a,#0x00
	sbc	a, e
	ld	a,#0x00
	sbc	a, c
	ld	a,#0x00
	sbc	a, b
	jr	NC,00104$
;alien6.c:1394: estrellasMovidas=1;
	ld	hl,#_estrellasMovidas + 0
	ld	(hl), #0x01
;alien6.c:1395: moverEstrellas();
	call	_moverEstrellas
;alien6.c:1396: borrarEstrellas();
	call	_borrarEstrellas
;alien6.c:1397: lastMovedEstrella=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, #_lastMovedEstrella
	ld	hl, #0
	add	hl, sp
	ld	bc, #4
	ldir
00104$:
;alien6.c:1402: if ((explosiones_activas>0)&&((getTime()-explosiones_lastUpdated)>VELOCIDAD_EXPLOSIONES)){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	Z,00107$
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	hl, #_explosiones_lastUpdated
	ld	bc, #4
	ldir
	ld	hl,#4
	add	hl,sp
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	ld	e,a
	ld	a,1 (iy)
	inc	hl
	sbc	a, (hl)
	ld	d,a
	ld	a,2 (iy)
	inc	hl
	sbc	a, (hl)
	ld	c,a
	ld	a,3 (iy)
	inc	hl
	sbc	a, (hl)
	ld	b,a
	ld	a,#0x28
	cp	a, e
	ld	a,#0x00
	sbc	a, d
	ld	a,#0x00
	sbc	a, c
	ld	a,#0x00
	sbc	a, b
	jr	NC,00107$
;alien6.c:1403: actualizarExplosiones();
	call	_actualizarExplosiones
;alien6.c:1404: animarExplosiones();
	call	_animarExplosiones
;alien6.c:1405: actualizarExplosiones();
	call	_actualizarExplosiones
00107$:
;alien6.c:1411: if ((getTime()-prota.lastmoved)>prota.speed){
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, (#(_prota + 0x0016) + 0)
	ld	bc, (#(_prota + 0x0016) + 2)
	ld	hl,#0
	add	hl,sp
	ld	a,(hl)
	sub	a, e
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	sbc	a, d
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	sbc	a, c
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	sbc	a, b
	ld	(hl),a
	ld	a, (#_prota + 18)
	ld	e,a
	ld	d,#0x00
	ld	bc,#0x0000
	ld	a,e
	ld	iy,#0
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,b
	sbc	a, 2 (iy)
	ld	a,c
	sbc	a, 3 (iy)
	jr	NC,00110$
;alien6.c:1412: prota.lastmoved=getTime();
	call	_getTime
	ld	c,l
	ld	b,h
	ld	((_prota + 0x0016)), bc
	ld	((_prota + 0x0016) + 2), de
;alien6.c:1413: moverProta();	//mover al prota
	call	_moverProta
;alien6.c:1414: borrarProta();	//borro al prota
	call	_borrarProta
;alien6.c:1415: pintarProta();	//Pinto al protagonista
	call	_pintarProta
00110$:
;alien6.c:1418: borrarAddones();
	call	_borrarAddones
;alien6.c:1419: moverAddones();
	call	_moverAddones
;alien6.c:1420: pintarAddones();
	call	_pintarAddones
;alien6.c:1422: moverMalos();		//Muevo los malos
	call	_moverMalos
;alien6.c:1423: borrarMalos();		//Borro los malos
	call	_borrarMalos
;alien6.c:1424: pintarMalos();		//Pinto los malos
	call	_pintarMalos
;alien6.c:1426: moverDisparos();  		//Mover disparos
	call	_moverDisparos
;alien6.c:1427: borrarDisparos();		//Borro disparos
	call	_borrarDisparos
;alien6.c:1428: pintarDisparos();		//Pinto Disparos
	call	_pintarDisparos
;alien6.c:1430: moverDisparosMalos();	//mover disparos
	call	_moverDisparosMalos
;alien6.c:1431: borrarDisparosMalos();	//borro disparos
	call	_borrarDisparosMalos
;alien6.c:1432: pintarDisparosMalo();	//Pinto Disparos
	call	_pintarDisparosMalo
;alien6.c:1435: if ((ESTRELLAS_ACTIVADAS) && (estrellasMovidas)){
	ld	a,(#_estrellasMovidas + 0)
	or	a, a
	jr	Z,00112$
;alien6.c:1436: pintarEstrellas();
	call	_pintarEstrellas
;alien6.c:1437: estrellasMovidas=0;
	ld	hl,#_estrellasMovidas + 0
	ld	(hl), #0x00
00112$:
;alien6.c:1441: if (cambio_score){
	ld	a,(#_cambio_score + 0)
	or	a, a
	jr	Z,00115$
;alien6.c:1442: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;alien6.c:1443: sprintf(aux_txt,"%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_40
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1444: cpc_PrintGphStr(aux_txt,0xc050);
	ld	hl,#_aux_txt
	ld	bc,#0xC050
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
00115$:
;alien6.c:1447: if ((prota.dead) && (!explosiones_activas) && (!disparos_activos) && (!disparos_activos_malos)){
	ld	a, (#_prota + 20)
	or	a, a
	jr	Z,00117$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	NZ,00117$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jr	NZ,00117$
	ld	a,(#_disparos_activos_malos + 0)
	or	a, a
	jr	NZ,00117$
;alien6.c:1448: state = STATE_LOSE;
	ld	hl,#_state + 0
	ld	(hl), #0x07
;alien6.c:1449: break;
	jr	00137$
00117$:
;alien6.c:1452: if (cpc_TestKey(KEY_ESC)==1){			// ESC
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00125$
;alien6.c:1453: state = STATE_MENU;
	ld	hl,#_state + 0
	ld	(hl), #0x02
;alien6.c:1454: break;
	jr	00137$
;alien6.c:1457: if ((DEBUG) && (cpc_TestKey(KEY_DEBUG)==1)){			// DEBUG
00125$:
	ld	a,#0x0A
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00128$
;alien6.c:1458: debug();
	call	_debug
;alien6.c:1461: if ((DEBUG) && (cpc_TestKey(KEY_HOSTILITY)==1)){			// DEBUG
00128$:
	ld	a,#0x0B
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00127$
;alien6.c:1462: hostilidad=!hostilidad;
	ld	a,(#_hostilidad + 0)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(#_hostilidad + 0),a
00127$:
;alien6.c:1466: if ((malos_activos==0) && (explosiones_activas==0) && (!disparos_activos) && (!disparos_activos_malos)){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	NZ,00135$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	NZ,00135$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	NZ,00135$
	ld	a,(#_disparos_activos_malos + 0)
	or	a, a
	jp	NZ,00135$
;alien6.c:1467: state = STATE_LEVELUP;
	ld	hl,#_state + 0
	ld	(hl), #0x08
;alien6.c:1474: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00137$:
	call	_cpc_WyzSetPlayerOff
;alien6.c:1476: return state;
	ld	iy,#_state
	ld	l,0 (iy)
	pop	af
	pop	af
	pop	af
	pop	af
	ret
_game_end::
___str_40:
	.ascii "%05d"
	.db 0x00
;alien6.c:1480: void InitialSetUp() {
;	---------------------------------
; Function InitialSetUp
; ---------------------------------
_InitialSetUp_start::
_InitialSetUp:
;alien6.c:1484: interrupciones();
	call	_interrupciones
;alien6.c:1487: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1488: set_colours();
	call	_set_colours
;alien6.c:1489: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1491: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1493: inicializarTeclado();
	call	_inicializarTeclado
;alien6.c:1495: nivel=1;
	ld	hl,#_nivel + 0
	ld	(hl), #0x01
;alien6.c:1496: prota.vidas=3;
	ld	hl,#_prota+21
	ld	(hl),#0x03
;alien6.c:1499: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;alien6.c:1500: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
;alien6.c:1503: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
	ld	hl,#_SOUND_TABLE_0
	ld	bc,#_SONG_TABLE_0
	push	bc
	ld	bc,#_EFFECT_TABLE
	push	bc
	ld	bc,#_RULE_TABLE_0
	push	bc
	push	hl
	call	_cpc_WyzInitPlayer
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;alien6.c:1504: cpc_WyzLoadSong(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_WyzLoadSong
	inc	sp
;alien6.c:1505: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1508: state = INITIAL_STATE;
	ld	hl,#_state + 0
	ld	(hl), #0x02
	ret
_InitialSetUp_end::
;alien6.c:1513: int main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;alien6.c:1515: InitialSetUp();
	call	_InitialSetUp
;alien6.c:1517: while (state != STATE_EXIT) {
00110$:
;alien6.c:1518: switch(state) {
	ld	a,(#_state + 0)
	cp	a,#0x05
	jp	Z,00113$
	xor	a, #0x80
	sub	a, #0x82
	jp	C,00108$
	ld	a,#0x09
	ld	iy,#_state
	sub	a, 0 (iy)
	jp	PO, 00134$
	xor	a, #0x80
00134$:
	jp	M,00108$
	ld	iy,#_state
	ld	e,0 (iy)
	dec	e
	dec	e
	ld	d,#0x00
	ld	hl,#00135$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00135$:
	jp	00101$
	jp	00103$
	jp	00104$
	jp	00108$
	jp	00105$
	jp	00107$
	jp	00106$
	jp	00102$
;alien6.c:1519: case STATE_MENU:
00101$:
;alien6.c:1520: state = menu();
	call	_menu
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1521: break;
	jr	00110$
;alien6.c:1523: case STATE_REDEFINE:
00102$:
;alien6.c:1524: state = redefineKeys();
	call	_redefineKeys
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1525: break;
	jr	00110$
;alien6.c:1527: case STATE_HELP:
00103$:
;alien6.c:1528: state = help();
	call	_help
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1529: break;
	jr	00110$
;alien6.c:1531: case STATE_GAME:
00104$:
;alien6.c:1532: state = game();
	call	_game
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1533: break;
	jr	00110$
;alien6.c:1535: case STATE_WIN:
00105$:
;alien6.c:1536: state = win();
	call	_win
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1537: break;
	jp	00110$
;alien6.c:1539: case STATE_LEVELUP:
00106$:
;alien6.c:1540: state = levelUp();
	call	_levelUp
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1541: break;
	jp	00110$
;alien6.c:1543: case STATE_LOSE:
00107$:
;alien6.c:1544: state = gameOver();
	call	_gameOver
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1545: break;
	jp	00110$
;alien6.c:1547: default:
00108$:
;alien6.c:1548: state = STATE_EXIT;
	ld	iy,#_state
	ld	0 (iy),#0x05
;alien6.c:1550: }
	jp	00110$
;alien6.c:1552: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00113$:
	call	_cpc_WyzSetPlayerOff
;alien6.c:1554: return 0;  
	ld	hl,#0x0000
	ret
_main_end::
	.area _CODE
	.area _INITIALIZER
__xinit__trayectoria1:
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x05	;  5
	.db #0x06	;  6
	.db #0x06	;  6
	.db #0x06	;  6
	.db #0x05	;  5
	.db #0x04	;  4
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0xFE	; -2
	.db #0xFC	; -4
	.db #0xFB	; -5
	.db #0xFA	; -6
	.db #0xFA	; -6
	.db #0xFA	; -6
	.db #0xFB	; -5
	.db #0xFC	; -4
	.db #0xFE	; -2
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
__xinit__nave:
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x6F	; 111	'o'
	.db #0xB7	; 183
	.db #0x00	; 0
	.db #0xA2	; 162
	.db #0x7B	; 123
	.db #0xB7	; 183
	.db #0x51	; 81	'Q'
	.db #0x2A	; 42
	.db #0x7B	; 123
	.db #0xB7	; 183
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x7B	; 123
	.db #0xB7	; 183
	.db #0x15	; 21
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0xBF	; 191
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x7F	; 127
	.db #0xBF	; 191
	.db #0x7F	; 127
	.db #0xBF	; 191
	.db #0x7F	; 127
	.db #0x55	; 85	'U'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xAA	; 170
	.db #0xAA	; 170
	.db #0xB4	; 180
	.db #0x70	; 112	'p'
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x55	; 85	'U'
__xinit__shot:
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
__xinit__baddie01:
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x96	; 150
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x96	; 150
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x69	; 105	'i'
	.db #0x41	; 65	'A'
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x82	; 130
	.db #0x41	; 65	'A'
	.db #0x38	; 56	'8'
	.db #0x34	; 52	'4'
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x14	; 20
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x3E	; 62
	.db #0x3D	; 61
	.db #0x10	; 16
	.db #0x15	; 21
	.db #0x3E	; 62
	.db #0x3D	; 61
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x28	; 40
	.db #0x2A	; 42
	.db #0x3F	; 63
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2A	; 42
__xinit__explosion02000:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0xF4	; 244
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xF0	; 240
	.db #0x78	; 120	'x'
	.db #0xA8	; 168
	.db #0x54	; 84	'T'
	.db #0xB4	; 180
	.db #0x70	; 112	'p'
	.db #0xA8	; 168
	.db #0x50	; 80	'P'
	.db #0x38	; 56	'8'
	.db #0x70	; 112	'p'
	.db #0xA8	; 168
	.db #0xF8	; 248
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xFC	; 252
	.db #0xBC	; 188
	.db #0x34	; 52	'4'
	.db #0x3C	; 60
	.db #0xF4	; 244
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0x34	; 52	'4'
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xF4	; 244
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0xF8	; 248
	.db #0xF4	; 244
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xFC	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__explosion02001:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xBC	; 188
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x38	; 56	'8'
	.db #0xB4	; 180
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0xF0	; 240
	.db #0x30	; 48	'0'
	.db #0x7C	; 124
	.db #0xBC	; 188
	.db #0xB0	; 176
	.db #0x70	; 112	'p'
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x28	; 40
	.db #0x54	; 84	'T'
	.db #0x3C	; 60
	.db #0xB4	; 180
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0xFC	; 252
	.db #0xA8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__explosion02002:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0xB4	; 180
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__explosion02003:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xA0	; 160
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__shot2:
	.db #0x55	;  85	'U'
	.db #0x00	;  0
	.db #0xBF	; -65
	.db #0xAA	; -86
	.db #0xBF	; -65
	.db #0xAA	; -86
	.db #0xBF	; -65
	.db #0xAA	; -86
	.db #0xBF	; -65
	.db #0xAA	; -86
	.db #0x55	;  85	'U'
	.db #0x00	;  0
__xinit__shot3:
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x00	; 0
__xinit__heart:
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
__xinit__plane:
	.db #0x00	; 0
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0xFF	; 255
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xAA	; 170
	.db #0x00	; 0
	.db #0xAA	; 170
	.db #0x00	; 0
__xinit__greenFlag:
	.db #0x00	; 0
	.db #0x2C	; 44
	.db #0x14	; 20
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0x2C	; 44
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
__xinit__redFlag:
	.db #0x00	; 0
	.db #0x2C	; 44
	.db #0x14	; 20
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0x2C	; 44
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
__xinit__baddie02:
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x22	; 34
	.db #0x0F	; 15
	.db #0x5B	; 91
	.db #0x2F	; 47
	.db #0x1B	; 27
	.db #0x0F	; 15
	.db #0xF3	; 243
	.db #0x9F	; 159
	.db #0x1B	; 27
	.db #0x87	; 135
	.db #0x5B	; 91
	.db #0xA7	; 167
	.db #0x0F	; 15
	.db #0x83	; 131
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x41	; 65	'A'
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x00	; 0
__xinit__baddie03:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xA3	; 163
	.db #0x53	; 83	'S'
	.db #0x7F	; 127
	.db #0x55	; 85	'U'
	.db #0xA7	; 167
	.db #0x53	; 83	'S'
	.db #0x2A	; 42
	.db #0x55	; 85	'U'
	.db #0xA7	; 167
	.db #0x5B	; 91
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0xB7	; 183
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xFB	; 251
	.db #0xB7	; 183
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x2A	; 42
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x2A	; 42
	.db #0x00	; 0
__xinit__toque000:
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__toque001:
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__toque002:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__toque003:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
__xinit__fire000:
	.db #0xB4	; 180
	.db #0x70	; 112	'p'
	.db #0x10	; 16
	.db #0x28	; 40
__xinit__fire001:
	.db #0x70	; 112	'p'
	.db #0x38	; 56	'8'
	.db #0x14	; 20
	.db #0xA0	; 160
__xinit__fire002:
	.db #0x38	; 56	'8'
	.db #0xB4	; 180
	.db #0x50	; 80	'P'
	.db #0x20	; 32
__xinit__addon000:
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
__xinit__addon001:
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
__xinit__addon002:
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
__xinit__addon003:
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
__xinit__timer0:
	.dw #0x0000
__xinit__timer1:
	.dw #0x0000
__xinit__nFPS:
	.db #0x00	; 0
__xinit__nTimeLast:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
__xinit__nStar:
	.db #0x00	; 0
__xinit__pStar:
	.dw #0x0000
__xinit__lastMovedEstrella:
	.byte #0x00,#0x00,#0x00,#0x00	;  0
__xinit__estrellasMovidas:
	.db #0x00	; 0
__xinit__MAX_DISPAROS_MALOS:
	.db #0x03	; 3
__xinit__score:
	.dw #0x0000
__xinit__cambio_score:
	.db #0x00	; 0
	.area _CABS (ABS)
