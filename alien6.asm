;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Tue Nov 25 23:15:40 2014
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
	.globl _protaDead
	.globl _levelUp
	.globl _gameOver
	.globl _help
	.globl _debug
	.globl _inicializarPartida
	.globl _pintarBanderasNivel
	.globl _mostrarVidasProta
	.globl _inicializarTeclado
	.globl _pintarProta
	.globl _borrarProta
	.globl _moverProta
	.globl _inicializarProta
	.globl _pintarDisparos
	.globl _borrarDisparos
	.globl _moverDisparos
	.globl _crearDisparo
	.globl _inicializarDisparos
	.globl _pintarMalos
	.globl _borrarMalos
	.globl _moverMalos
	.globl _inicializarMalos
	.globl _cargarMalo
	.globl _crearAtaque
	.globl _inicializarAtaques
	.globl _pintarAddones
	.globl _borrarAddones
	.globl _moverAddones
	.globl _crearAddon
	.globl _inicializarAddones
	.globl _pintarDisparosMalos
	.globl _borrarDisparosMalos
	.globl _moverDisparosMalos
	.globl _crearDisparoMalo
	.globl _inicializarDisparosMalos
	.globl _animarExplosiones
	.globl _actualizarExplosiones
	.globl _crearExplosion
	.globl _inicializarExplosiones
	.globl _actualizarExplosionProta
	.globl _animarExplosionProta
	.globl _crearExplosionProta
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
	.globl _timerOff
	.globl _timerOn
	.globl _getScreenAddress
	.globl _printSpriteXOR
	.globl _asm_data_quezesto
	.globl _cpc_WyzInitPlayer
	.globl _cpc_WyzSetPlayerOff
	.globl _cpc_WyzSetPlayerOn
	.globl _cpc_WyzStartEffect
	.globl _cpc_WyzLoadSong
	.globl _cpc_SetInkGphStr
	.globl _cpc_PrintGphStrXY2X
	.globl _cpc_PrintGphStrXY
	.globl _cpc_PrintGphStr
	.globl _cpc_RedefineKey
	.globl _cpc_TestKey
	.globl _cpc_AssignKey
	.globl _cpc_ScanKeyboard
	.globl _cpc_AnyKeyPressed
	.globl _cpc_ClrScr
	.globl _cpc_Random
	.globl _cpc_SetColour
	.globl _cpc_SetMode
	.globl _cpc_DisableFirmware
	.globl _sprintf
	.globl _cambio_score
	.globl _score
	.globl _estrellasMovidas
	.globl _lastMovedEstrella
	.globl _pStar
	.globl _nStar
	.globl _nTimeLast
	.globl _nFPS
	.globl _timer1
	.globl _timer0
	.globl _addones003
	.globl _addones002
	.globl _addones001
	.globl _addones000
	.globl _fire002
	.globl _fire001
	.globl _fire000
	.globl _toque004
	.globl _toque003
	.globl _toque002
	.globl _toque001
	.globl _toque000
	.globl _redFlag
	.globl _greenFlag
	.globl _plane
	.globl _heart
	.globl _shot3
	.globl _shot2
	.globl _explosion02004
	.globl _explosion02003
	.globl _explosion02002
	.globl _explosion02001
	.globl _explosion02000
	.globl _baddie03
	.globl _baddie02
	.globl _baddie01
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
	.globl _fin_explosion_prota
	.globl _explosion_prota_activada
	.globl _fase_explosion_prota
	.globl _explosion_prota_lastUpdated
	.globl _explosiones_prota
	.globl _explosiones_lastUpdated
	.globl _explosion_sprite
	.globl _explosiones_activas
	.globl _explosiones
	.globl _malos_activos
	.globl _malos
	.globl _prota
	.globl _MAX_DISPAROS_MALOS
	.globl _disparos_malos_activos
	.globl _disparosMalos
	.globl _disparos_activos
	.globl _disparos
	.globl _aStars
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
	.ds 75
_disparos_activos::
	.ds 1
_disparosMalos::
	.ds 60
_disparos_malos_activos::
	.ds 1
_MAX_DISPAROS_MALOS::
	.ds 1
_prota::
	.ds 25
_malos::
	.ds 232
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
_explosiones_prota::
	.ds 30
_explosion_prota_lastUpdated::
	.ds 4
_fase_explosion_prota::
	.ds 1
_explosion_prota_activada::
	.ds 1
_fin_explosion_prota::
	.ds 1
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
	.ds 66
_baddie01::
	.ds 62
_baddie02::
	.ds 34
_baddie03::
	.ds 34
_explosion02000::
	.ds 66
_explosion02001::
	.ds 66
_explosion02002::
	.ds 66
_explosion02003::
	.ds 66
_explosion02004::
	.ds 66
_shot2::
	.ds 14
_shot3::
	.ds 10
_heart::
	.ds 17
_plane::
	.ds 17
_greenFlag::
	.ds 14
_redFlag::
	.ds 14
_toque000::
	.ds 18
_toque001::
	.ds 18
_toque002::
	.ds 18
_toque003::
	.ds 18
_toque004::
	.ds 18
_fire000::
	.ds 6
_fire001::
	.ds 6
_fire002::
	.ds 6
_addones000::
	.ds 34
_addones001::
	.ds 34
_addones002::
	.ds 34
_addones003::
	.ds 34
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
;alien6.c:121: void timerOn(void) {
;	---------------------------------
; Function timerOn
; ---------------------------------
_timerOn_start::
_timerOn:
;alien6.c:150: __endasm;
	DI
	IM 1
	PUSH HL
	LD HL, #_timer0
	LD (HL),#0X0000
	LD HL,#0X0038
	LD (HL),#0XC3 ;JP
	INC HL
	LD HL,#interrupcion
	LD (#0X0039),HL
	POP HL
	EI
	JP term
	interrupcion:
	DI
	PUSH HL
	PUSH AF
	LD HL,#_timer0
	desborde:
	INC (HL)
	INC HL
	JR Z,desborde
	POP AF
	POP HL
	EI
	RET
	term:
	ret
_timerOn_end::
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
;alien6.c:156: void timerOff(void) {
;	---------------------------------
; Function timerOff
; ---------------------------------
_timerOff_start::
_timerOff:
;alien6.c:165: __endasm;
	DI
	IM 1
	LD HL,#0X0038
	LD (HL),#0XFB ;EI
	INC HL
	LD (HL),#0XC9 ;RET
	EI
	ret
_timerOff_end::
;alien6.c:171: unsigned long getTime()
;	---------------------------------
; Function getTime
; ---------------------------------
_getTime_start::
_getTime:
;alien6.c:174: nTime = (timer1 << 8) + timer0;
	ld	hl,#_timer1 + 0
	ld	d, (hl)
	ld	e,#0x00
	ld	hl,(_timer0)
	add	hl,de
	ld	de,#0x0000
;alien6.c:175: return nTime;
	ret
_getTime_end::
;alien6.c:181: void halt_me () {			
;	---------------------------------
; Function halt_me
; ---------------------------------
_halt_me_start::
_halt_me:
;alien6.c:188: __endasm;
	halt
	halt
	halt
	halt
	halt
	ret
_halt_me_end::
;alien6.c:194: void scr_waitVSYNC() {
;	---------------------------------
; Function scr_waitVSYNC
; ---------------------------------
_scr_waitVSYNC_start::
_scr_waitVSYNC:
;alien6.c:202: __endasm;
	 wait_vs:
	ld b, #0xF5
	in a, (c)
	rra
	jr nc, wait_vs
	ret
_scr_waitVSYNC_end::
;alien6.c:208: void pause(unsigned char p){
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;alien6.c:210: for (i=0; i < p; i++) {
	ld	d,#0x00
00103$:
	ld	hl,#2
	add	hl,sp
	ld	a,d
	sub	a, (hl)
	ret	NC
;alien6.c:213: __endasm;
	halt
;alien6.c:210: for (i=0; i < p; i++) {
	inc	d
	jr	00103$
	ret
_pause_end::
;alien6.c:220: void set_colours()
;	---------------------------------
; Function set_colours
; ---------------------------------
_set_colours_start::
_set_colours:
;alien6.c:223: for (x=0; x<17; x++)
	ld	e,#0x00
00102$:
;alien6.c:225: cpc_SetColour(x,tintas[x]);
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
;alien6.c:223: for (x=0; x<17; x++)
	inc	e
	ld	a,e
	sub	a, #0x11
	jr	C,00102$
	ret
_set_colours_end::
;alien6.c:232: unsigned char detectarColision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2){
;	---------------------------------
; Function detectarColision
; ---------------------------------
_detectarColision_start::
_detectarColision:
;alien6.c:233: return ((x1 < x2 + w2) &&
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
;alien6.c:234: (x1 + w1 > x2) &&
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
;alien6.c:235: (y1 < y2 + h2) &&
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
;alien6.c:236: (h1 + y1 > y2));
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
;alien6.c:242: void letrasColorAzul(){
;	---------------------------------
; Function letrasColorAzul
; ---------------------------------
_letrasColorAzul_start::
_letrasColorAzul:
;alien6.c:243: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;alien6.c:244: cpc_SetInkGphStr(1,42);
	ld	hl, #0x2A01
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:245: cpc_SetInkGphStr(2,34);
	ld	hl, #0x2202
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:246: cpc_SetInkGphStr(3,42);
	ld	hl, #0x2A03
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:247: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorAzul_end::
;alien6.c:253: void letrasColorRojo(){
;	---------------------------------
; Function letrasColorRojo
; ---------------------------------
_letrasColorRojo_start::
_letrasColorRojo:
;alien6.c:254: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;alien6.c:255: cpc_SetInkGphStr(1,40);
	ld	hl, #0x2801
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:256: cpc_SetInkGphStr(2,136);
	ld	hl, #0x8802
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:257: cpc_SetInkGphStr(3,40);
	ld	hl, #0x2803
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:258: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorRojo_end::
;alien6.c:264: unsigned char pixelEstrella(unsigned char nPixel){
;	---------------------------------
; Function pixelEstrella
; ---------------------------------
_pixelEstrella_start::
_pixelEstrella:
;alien6.c:267: if(nPixel == 0)
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;alien6.c:269: nByte = 32;
	ld	l,#0x20
	ret
00102$:
;alien6.c:272: nByte = 16;
	ld	l,#0x10
;alien6.c:275: return nByte;
	ret
_pixelEstrella_end::
;alien6.c:281: unsigned char GetMode0PixelColorByte(unsigned char nColor, unsigned char nPixel)
;	---------------------------------
; Function GetMode0PixelColorByte
; ---------------------------------
_GetMode0PixelColorByte_start::
_GetMode0PixelColorByte:
;alien6.c:289: if(nColor & 1)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	and	a, #0x01
	ld	h,a
;alien6.c:292: if(nColor & 2)
	ld	a,0 (iy)
	and	a, #0x02
	ld	b,a
;alien6.c:295: if(nColor & 4)
	ld	a,0 (iy)
	and	a, #0x04
	ld	l,a
;alien6.c:298: if(nColor & 8)
	ld	a,0 (iy)
	and	a, #0x08
	ld	c,a
;alien6.c:285: if(nPixel == 0)
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
;alien6.c:287: nByte &= 85;
	or	a,a
	jr	NZ,00118$
	ld	e,a
;alien6.c:289: if(nColor & 1)
	ld	a,h
	or	a, a
	jr	Z,00102$
;alien6.c:290: nByte |= 128;
	ld	e,#0x80
00102$:
;alien6.c:292: if(nColor & 2)
	ld	a,b
	or	a, a
	jr	Z,00104$
;alien6.c:293: nByte |= 8;
	set	3, e
00104$:
;alien6.c:295: if(nColor & 4)
	ld	a,l
	or	a, a
	jr	Z,00106$
;alien6.c:296: nByte |= 32;
	set	5, e
00106$:
;alien6.c:298: if(nColor & 8)
	ld	a,c
	or	a, a
	jr	Z,00119$
;alien6.c:299: nByte |= 2;
	set	1, e
	jr	00119$
00118$:
;alien6.c:303: nByte &= 170;
	ld	e,#0x00
;alien6.c:305: if(nColor & 1)
	ld	a,h
	or	a, a
	jr	Z,00110$
;alien6.c:306: nByte |= 64;
	ld	e,#0x40
00110$:
;alien6.c:308: if(nColor & 2)
	ld	a,b
	or	a, a
	jr	Z,00112$
;alien6.c:309: nByte |= 4;
	set	2, e
00112$:
;alien6.c:311: if(nColor & 4)
	ld	a,l
	or	a, a
	jr	Z,00114$
;alien6.c:312: nByte |= 16;
	set	4, e
00114$:
;alien6.c:314: if(nColor & 8)
	ld	a,c
	or	a, a
	jr	Z,00119$
;alien6.c:315: nByte |= 1;
	set	0, e
00119$:
;alien6.c:318: return nByte;
	ld	l,e
	ret
_GetMode0PixelColorByte_end::
;alien6.c:324: void inicializarEstrellas(){
;	---------------------------------
; Function inicializarEstrellas
; ---------------------------------
_inicializarEstrellas_start::
_inicializarEstrellas:
	push	af
;alien6.c:326: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:328: aStars[nStar].nX = cpc_Random() % 160;
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
;alien6.c:329: aStars[nStar].nY = (cpc_Random() % 184)+16;
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
;alien6.c:330: aStars[nStar].nStarType = cpc_Random() % 3;
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
;alien6.c:332: aStars[nStar].pLineAddress = (int *) getScreenAddress(0,aStars[nStar].nY);
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
	ld	h,(hl)
	push	de
	push	hl
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	pop	de
	ld	b,l
	ld	c,h
	ld	a,b
	ld	(de),a
	inc	de
	ld	a,c
	ld	(de),a
;alien6.c:333: aStars[nStar].columnOffset = aStars[nStar].nY/2;
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
;alien6.c:334: aStars[nStar].pCurrentAddress = aStars[nStar].pLineAddress+aStars[nStar].columnOffset;
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
;alien6.c:326: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jp	C,00102$
;alien6.c:336: lastMovedEstrella = 0;
	xor	a, a
	ld	(#_lastMovedEstrella + 0),a
	ld	(#_lastMovedEstrella + 1),a
	ld	(#_lastMovedEstrella + 2),a
	ld	(#_lastMovedEstrella + 3),a
	pop	af
	ret
_inicializarEstrellas_end::
;alien6.c:342: void borrarEstrellas(){
;	---------------------------------
; Function borrarEstrellas
; ---------------------------------
_borrarEstrellas_start::
_borrarEstrellas:
	push	af
	dec	sp
;alien6.c:343: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:345: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:349: *pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
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
;alien6.c:343: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jr	C,00102$
	pop	af
	inc	sp
	ret
_borrarEstrellas_end::
;alien6.c:357: void pintarEstrellas(){
;	---------------------------------
; Function pintarEstrellas
; ---------------------------------
_pintarEstrellas_start::
_pintarEstrellas:
	push	af
	dec	sp
;alien6.c:358: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:360: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:364: pStar->pCurrentAddress = (int *) getScreenAddress(pStar->columnOffset,pStar->nY);
	ld	bc,(_pStar)
	ld	hl,#0x0006
	add	hl,bc
	ex	de,hl
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,(hl)
	ld	h,b
	ld	l, c
	ld	bc, #0x0005
	add	hl, bc
	ld	b,(hl)
	push	de
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_getScreenAddress
	pop	af
	pop	de
	ld	b,l
	ld	c,h
	ld	a,b
	ld	(de),a
	inc	de
	ld	a,c
	ld	(de),a
	ld	bc,(_pStar)
	ld	l, c
	ld	h, b
;alien6.c:366: *pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
	ld	de, #0x0006
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	a,(bc)
	and	a, #0x01
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	b,(hl)
	inc	b
	push	de
	ld	a,0 (iy)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_GetMode0PixelColorByte
	pop	af
	pop	de
	ld	h,#0x00
	ld	iy,#0
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
;alien6.c:358: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jp	C,00102$
	pop	af
	inc	sp
	ret
_pintarEstrellas_end::
;alien6.c:374: void moverEstrellas(){
;	---------------------------------
; Function moverEstrellas
; ---------------------------------
_moverEstrellas_start::
_moverEstrellas:
;alien6.c:376: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00108$:
;alien6.c:378: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:380: switch(pStar->nStarType)
	ld	bc,(_pStar)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00104$
;alien6.c:383: pStar->nY += 1;
	inc	bc
	ld	a,(bc)
	ld	d,a
;alien6.c:380: switch(pStar->nStarType)
	push	de
	ld	d,#0x00
	ld	hl,#00124$
	add	hl,de
	add	hl,de
;alien6.c:382: case 0: //slow star
	pop	de
	jp	(hl)
00124$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;alien6.c:383: pStar->nY += 1;
	ld	a,d
	inc	a
	ld	(bc),a
;alien6.c:384: break;
	jr	00104$
;alien6.c:385: case 1: //medium star
00102$:
;alien6.c:386: pStar->nY += 2;
	ld	a,d
	add	a, #0x02
	ld	(bc),a
;alien6.c:387: break;
	jr	00104$
;alien6.c:388: case 2: //fast star
00103$:
;alien6.c:389: pStar->nY += 3;
	ld	a,d
	add	a, #0x03
	ld	(bc),a
;alien6.c:391: }
00104$:
;alien6.c:380: switch(pStar->nStarType)
	ld	hl,(_pStar)
;alien6.c:383: pStar->nY += 1;
	inc	hl
;alien6.c:393: if(pStar->nY >= 200)
	ld	a, (hl)
	sub	a, #0xC8
	jr	C,00109$
;alien6.c:395: pStar->nY = 16;
	ld	(hl),#0x10
00109$:
;alien6.c:376: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jr	C,00108$
	ret
_moverEstrellas_end::
;alien6.c:410: void crearExplosionProta(unsigned char x, unsigned char y){
;	---------------------------------
; Function crearExplosionProta
; ---------------------------------
_crearExplosionProta_start::
_crearExplosionProta:
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;alien6.c:413: explosiones_prota[0].cx=x-SALTO_EXPLOSION_PROTA;
	ld	hl, #15+0
	add	hl, sp
	ld	a, (hl)
	add	a,#0xFC
	ld	d,a
	ld	hl,#_explosiones_prota
	ld	(hl),d
;alien6.c:414: explosiones_prota[0].cy=y;
	inc	hl
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:415: explosiones_prota[1].cx=x-SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 6
	ld	(hl),d
;alien6.c:416: explosiones_prota[1].cy=y-SALTO_EXPLOSION_PROTA*2;
	ld	a,0 (iy)
	add	a,#0xF8
	ld	e,a
	ld	hl,#(_explosiones_prota + 0x0007)
	ld	(hl),e
;alien6.c:417: explosiones_prota[2].cx=x;
	ld	hl,#_explosiones_prota + 12
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:418: explosiones_prota[2].cy=y-SALTO_EXPLOSION_PROTA*2;
	ld	hl,#_explosiones_prota + 13
	ld	(hl),e
;alien6.c:419: explosiones_prota[3].cx=x+SALTO_EXPLOSION_PROTA;
	ld	d,0 (iy)
	inc	d
	inc	d
	inc	d
	inc	d
	ld	hl,#(_explosiones_prota + 0x0012)
	ld	(hl),d
;alien6.c:420: explosiones_prota[3].cy=y-SALTO_EXPLOSION_PROTA*2;
	ld	hl,#_explosiones_prota + 19
	ld	(hl),e
;alien6.c:421: explosiones_prota[4].cx=x+SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 24
	ld	(hl),d
;alien6.c:422: explosiones_prota[4].cy=y;
	ld	hl,#_explosiones_prota + 25
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:423: for (i=0;i<5;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #11
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00102$:
;alien6.c:424: explosiones_prota[i].memoriaPantalla = getScreenAddress(explosiones_prota[i].cx,explosiones_prota[i].cy);
	ld	a,#<(_explosiones_prota)
	ld	hl,#11
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_explosiones_prota)
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	hl,#0x0004
	add	hl,bc
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	hl,#0x0001
	add	hl,bc
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	d,(hl)
	ld	a,(bc)
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	ex	de,hl
	pop	bc
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),e
	inc	hl
	ld	(hl),d
;alien6.c:425: printSpriteXOR(explosion_sprite[0][0],explosiones_prota[i].cx,explosiones_prota[i].cy,explosiones_prota[i].memoriaPantalla);
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	push	af
	ld	a,(bc)
	ld	iy,#11
	add	iy,sp
	ld	0 (iy),a
	pop	af
	ld	hl, (#_explosion_sprite + 0)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	push	bc
	push	de
	push	af
	inc	sp
	ld	hl, #14+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #11
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
;alien6.c:426: explosiones_prota[i].ox=explosiones_prota[i].cx;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,(bc)
	ld	(de),a
;alien6.c:427: explosiones_prota[i].oy=explosiones_prota[i].cy;
	inc	bc
	inc	bc
	inc	bc
	ld	d,c
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	l, d
	ld	h, b
	ld	(hl),a
;alien6.c:423: for (i=0;i<5;i++){
	ld	hl,#11
	add	hl,sp
	ld	a,(hl)
	add	a, #0x06
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x05
	jp	C,00102$
;alien6.c:429: fase_explosion_prota=0;
	ld	hl,#_fase_explosion_prota + 0
	ld	(hl), #0x00
;alien6.c:430: fin_explosion_prota=0;
	ld	hl,#_fin_explosion_prota + 0
	ld	(hl), #0x00
;alien6.c:431: explosion_prota_lastUpdated = getTime();
	call	_getTime
	ld	iy,#1
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, #_explosion_prota_lastUpdated
	ld	hl, #1
	add	hl, sp
	ld	bc, #4
	ldir
;alien6.c:432: explosion_prota_activada=1;
	ld	hl,#_explosion_prota_activada + 0
	ld	(hl), #0x01
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
	ret
_crearExplosionProta_end::
;alien6.c:438: void animarExplosionProta(){
;	---------------------------------
; Function animarExplosionProta
; ---------------------------------
_animarExplosionProta_start::
_animarExplosionProta:
;alien6.c:439: if ((explosion_prota_activada) && (fase_explosion_prota<4)){
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	ret	Z
	ld	a,(#_fase_explosion_prota + 0)
	sub	a, #0x04
	ret	NC
;alien6.c:441: explosiones_prota[0].cx=explosiones_prota[0].cx-SALTO_EXPLOSION_PROTA;
	ld	de,#_explosiones_prota+0
	ld	a,(de)
	add	a,#0xFC
	ld	(de),a
;alien6.c:442: explosiones_prota[1].cx=explosiones_prota[1].cx-SALTO_EXPLOSION_PROTA;
	ld	de,#_explosiones_prota + 6
	ld	a,(de)
	add	a,#0xFC
	ld	(de),a
;alien6.c:443: explosiones_prota[1].cy=explosiones_prota[1].cy-SALTO_EXPLOSION_PROTA*2;
	ld	de,#_explosiones_prota + 7
	ld	a,(de)
	add	a,#0xF8
	ld	(de),a
;alien6.c:444: explosiones_prota[2].cy=explosiones_prota[2].cy-SALTO_EXPLOSION_PROTA*2;
	ld	de,#_explosiones_prota + 13
	ld	a,(de)
	add	a,#0xF8
	ld	(de),a
;alien6.c:445: explosiones_prota[3].cx=explosiones_prota[3].cx+SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 18
	ld	a,(hl)
	add	a, #0x04
	ld	(hl),a
;alien6.c:446: explosiones_prota[3].cy=explosiones_prota[3].cy-SALTO_EXPLOSION_PROTA*2;
	ld	de,#_explosiones_prota + 19
	ld	a,(de)
	add	a,#0xF8
	ld	(de),a
;alien6.c:447: explosiones_prota[4].cx=explosiones_prota[4].cx+SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 24
	ld	a,(hl)
	add	a, #0x04
	ld	(hl),a
	ret
_animarExplosionProta_end::
;alien6.c:454: void actualizarExplosionProta(){
;	---------------------------------
; Function actualizarExplosionProta
; ---------------------------------
_actualizarExplosionProta_start::
_actualizarExplosionProta:
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;alien6.c:456: if (explosion_prota_activada){
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jp	Z,00112$
;alien6.c:457: for (i=0;i<5;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00108$:
;alien6.c:458: printSpriteXOR(explosion_sprite[0][fase_explosion_prota],explosiones_prota[i].ox,explosiones_prota[i].oy,explosiones_prota[i].memoriaPantalla);
	ld	hl,#_explosiones_prota
	add	hl,de
	ld	iy,#8
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	a,0 (iy)
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #8+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#6
	add	iy,sp
	ld	1 (iy),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0004
	add	hl, bc
	ld	a,(hl)
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	hl, #8
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	iy,#8
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	0 (iy),a
	ld	a,(#_fase_explosion_prota + 0)
	add	a, a
	ld	c,a
	ld	hl,#_explosion_sprite
	ld	b,#0x00
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	hl, #8
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #13+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:457: for (i=0;i<5;i++){
	ld	hl,#0x0006
	add	hl,de
	ld	e,l
	ld	d,h
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x05
	jp	C,00108$
;alien6.c:460: fase_explosion_prota++;
	ld	hl, #_fase_explosion_prota+0
	inc	(hl)
;alien6.c:461: if (fase_explosion_prota<4){
	ld	a,(#_fase_explosion_prota + 0)
	sub	a, #0x04
	jp	NC,00104$
;alien6.c:462: for (i=0;i<5;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #6
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00110$:
;alien6.c:463: explosiones_prota[i].memoriaPantalla = getScreenAddress(explosiones_prota[i].cx,explosiones_prota[i].cy);
	ld	a,#<(_explosiones_prota)
	ld	hl,#6
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_explosiones_prota)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0004
	add	hl,de
	ld	iy,#8
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	hl,#0x0001
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	b,(hl)
	ld	a,(de)
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	ld	c,l
	ld	b,h
	pop	de
	ld	hl, #8
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),c
	inc	hl
	ld	(hl),b
;alien6.c:464: printSpriteXOR(explosion_sprite[0][fase_explosion_prota],explosiones_prota[i].cx,explosiones_prota[i].cy,explosiones_prota[i].memoriaPantalla);
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	a,(de)
	ld	iy,#8
	add	iy,sp
	ld	0 (iy),a
	ld	a,(#_fase_explosion_prota + 0)
	add	a, a
	add	a,#<(_explosion_sprite)
	ld	l,a
	ld	a,#>(_explosion_sprite)
	adc	a, #0x00
	ld	h,a
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	push	de
	push	bc
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #13+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #7
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:465: explosiones_prota[i].ox=explosiones_prota[i].cx;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,(de)
	ld	(bc),a
;alien6.c:466: explosiones_prota[i].oy=explosiones_prota[i].cy;
	inc	de
	inc	de
	inc	de
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:462: for (i=0;i<5;i++){
	ld	hl,#6
	add	hl,sp
	ld	a,(hl)
	add	a, #0x06
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x05
	jp	C,00110$
	jr	00112$
00104$:
;alien6.c:469: explosion_prota_activada=0;
	ld	hl,#_explosion_prota_activada + 0
	ld	(hl), #0x00
00112$:
	ld	hl,#10
	add	hl,sp
	ld	sp,hl
	ret
_actualizarExplosionProta_end::
;alien6.c:481: void inicializarExplosiones(){
;	---------------------------------
; Function inicializarExplosiones
; ---------------------------------
_inicializarExplosiones_start::
_inicializarExplosiones:
;alien6.c:484: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	d,#0x00
00102$:
;alien6.c:485: explosiones[i].activo=0;
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
;alien6.c:486: explosiones[i].tipo=0;
	xor	a, a
	ld	(bc),a
;alien6.c:487: explosiones[i].fase=0;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;alien6.c:488: explosiones[i].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:489: explosiones[i].cy=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:490: explosiones[i].ox=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:491: explosiones[i].oy=0;
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:492: explosiones[i].memoriaPantalla=0;
	ld	hl,#0x0009
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:493: explosiones[i].h=0;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:494: explosiones[i].w=0;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:495: explosiones[i].lastmoved=0;
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
;alien6.c:484: for (i=0;i<MAX_EXPLOSIONES;i++){
	inc	d
	ld	a,d
	sub	a, #0x06
	jr	C,00102$
;alien6.c:497: explosiones_activas=0;
	ld	hl,#_explosiones_activas + 0
	ld	(hl), #0x00
;alien6.c:498: explosion_sprite[0][0]=&explosion02000;
	ld	hl,#_explosion02000
	ld	(_explosion_sprite), hl
;alien6.c:499: explosion_sprite[0][1]=&explosion02001;
	ld	hl,#_explosion02001
	ld	((_explosion_sprite + 0x0002)), hl
;alien6.c:500: explosion_sprite[0][2]=&explosion02002;
	ld	hl,#_explosion02002
	ld	((_explosion_sprite + 0x0004)), hl
;alien6.c:501: explosion_sprite[0][3]=&explosion02003;
	ld	hl,#_explosion02003
	ld	((_explosion_sprite + 0x0006)), hl
;alien6.c:502: explosion_sprite[1][0]=&toque000;
	ld	hl,#_toque000
	ld	((_explosion_sprite + 0x0008)), hl
;alien6.c:503: explosion_sprite[1][1]=&toque001;
	ld	hl,#_toque001
	ld	((_explosion_sprite + 0x000a)), hl
;alien6.c:504: explosion_sprite[1][2]=&toque002;
	ld	hl,#_toque002
	ld	((_explosion_sprite + 0x000c)), hl
;alien6.c:505: explosion_sprite[1][3]=&toque003;
	ld	hl,#_toque003
	ld	((_explosion_sprite + 0x000e)), hl
	ret
_inicializarExplosiones_end::
;alien6.c:511: void crearExplosion(unsigned char tipo, unsigned char x, unsigned char y){
;	---------------------------------
; Function crearExplosion
; ---------------------------------
_crearExplosion_start::
_crearExplosion:
	push	af
	push	af
	dec	sp
;alien6.c:514: while (explosiones[i].activo==1) { 
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
;alien6.c:515: i++;
	inc	e
	jr	00101$
00112$:
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),e
;alien6.c:517: explosiones[i].activo=1;
	ld	(hl),#0x01
;alien6.c:518: explosiones[i].tipo=tipo;
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
;alien6.c:519: explosiones[i].fase=0;
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	(hl),#0x00
;alien6.c:520: explosiones[i].cx=x;
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	iy,#8
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:521: explosiones[i].cy=y;
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
;alien6.c:522: explosiones[i].memoriaPantalla = getScreenAddress(explosiones[i].cx,explosiones[i].cy);
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
	push	bc
	ld	hl, #11+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #11+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	ld	d,l
	ld	e,h
	pop	bc
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	inc	hl
	ld	(hl),e
;alien6.c:524: explosiones[i].h=16;
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
;alien6.c:525: explosiones[i].w=4;
	ld	a,0 (iy)
	add	a, #0x08
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
;alien6.c:523: if (!tipo){
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00105$
;alien6.c:524: explosiones[i].h=16;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:525: explosiones[i].w=4;
	ld	a,#0x04
	ld	(de),a
	jr	00106$
00105$:
;alien6.c:527: explosiones[i].h=8;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:528: explosiones[i].w=2;
	ld	a,#0x02
	ld	(de),a
00106$:
;alien6.c:530: explosiones_activas++;
	ld	hl, #_explosiones_activas+0
	inc	(hl)
;alien6.c:531: printSpriteXOR(explosion_sprite[tipo][0],explosiones[i].cx,explosiones[i].cy,explosiones[i].memoriaPantalla);
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
	ld	b,4 (iy)
	ex	de,hl
	inc	hl
	inc	hl
	inc	hl
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
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	af
	pop	af
	inc	sp
	ret
_crearExplosion_end::
;alien6.c:537: void actualizarExplosiones(){
;	---------------------------------
; Function actualizarExplosiones
; ---------------------------------
_actualizarExplosiones_start::
_actualizarExplosiones:
	push	af
	push	af
	dec	sp
;alien6.c:539: if (explosiones_activas>0){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	Z,00108$
;alien6.c:540: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00106$:
;alien6.c:541: if (explosiones[i].activo==1){
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
;alien6.c:543: printSpriteXOR(explosion_sprite[explosiones[i].tipo][explosiones[i].fase],explosiones[i].cx,explosiones[i].cy,explosiones[i].memoriaPantalla);
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
	ld	bc, #0x0004
	add	hl, bc
	ld	a,(hl)
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
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
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00107$:
;alien6.c:540: for (i=0;i<MAX_EXPLOSIONES;i++){
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
;alien6.c:552: void animarExplosiones(){
;	---------------------------------
; Function animarExplosiones
; ---------------------------------
_animarExplosiones_start::
_animarExplosiones:
;alien6.c:554: if (explosiones_activas>0){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	ret	Z
;alien6.c:555: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	e,#0x00
00109$:
;alien6.c:556: if (explosiones[i].activo==1){
	ld	l,e
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
	push	bc
	pop	iy
	inc	iy
	inc	iy
	ld	a, 0 (iy)
	dec	a
	jr	NZ,00110$
;alien6.c:557: if (explosiones[i].fase<3){
	ld	l, c
	ld	h, b
	inc	hl
	ld	d,(hl)
	ld	a,d
	sub	a, #0x03
	jr	NC,00102$
;alien6.c:558: explosiones[i].fase++;
	inc	d
	ld	(hl),d
	jr	00110$
00102$:
;alien6.c:562: explosiones[i].activo=0;
	ld	0 (iy), #0x00
;alien6.c:563: explosiones_activas--;
	ld	hl, #_explosiones_activas+0
	dec	(hl)
00110$:
;alien6.c:555: for (i=0;i<MAX_EXPLOSIONES;i++){
	inc	e
	ld	a,e
	sub	a, #0x06
	jr	C,00109$
	ret
_animarExplosiones_end::
;alien6.c:580: void inicializarDisparosMalos(){
;	---------------------------------
; Function inicializarDisparosMalos
; ---------------------------------
_inicializarDisparosMalos_start::
_inicializarDisparosMalos:
	dec	sp
;alien6.c:583: for (k=0;k<MAX_DISPAROS_MALOS;k++){
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
;alien6.c:584: disparosMalos[k].activo=0;
	ld	hl,#_disparosMalos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:585: disparosMalos[k].sp0=shot3;
	ld	l, c
	ld	h, b
	ld	(hl),#<(_shot3)
	inc	hl
	ld	(hl),#>(_shot3)
;alien6.c:586: disparosMalos[k].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:587: disparosMalos[k].cy=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:588: disparosMalos[k].ox=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:589: disparosMalos[k].oy=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:590: disparosMalos[k].nuevo=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:591: disparosMalos[k].dead=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:592: disparosMalos[k].lastmoved=0;
	ld	hl,#0x000B
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
;alien6.c:583: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	inc	0 (iy)
	jr	00103$
00101$:
;alien6.c:594: disparos_malos_activos=0;
	ld	hl,#_disparos_malos_activos + 0
	ld	(hl), #0x00
	inc	sp
	ret
_inicializarDisparosMalos_end::
;alien6.c:600: void crearDisparoMalo(unsigned char x, unsigned char y, unsigned speed){
;	---------------------------------
; Function crearDisparoMalo
; ---------------------------------
_crearDisparoMalo_start::
_crearDisparoMalo:
	push	af
;alien6.c:603: while (disparosMalos[k].activo==1){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00101$:
	ld	hl,#_disparosMalos
	add	hl,bc
	ex	de,hl
	ld	hl,#0x0006
	add	hl,de
	ld	a,(hl)
	dec	a
	jr	NZ,00103$
;alien6.c:604: k++;
	ld	hl,#0x000F
	add	hl,bc
	ld	c,l
	ld	b,h
	jr	00101$
00103$:
;alien6.c:606: disparosMalos[k].activo=1;
	ld	(hl),#0x01
;alien6.c:607: disparosMalos[k].cx=x+1;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
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
;alien6.c:608: disparosMalos[k].cy=y-1;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
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
;alien6.c:609: disparosMalos[k].ox=x+1;
	ld	hl,#0x0004
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:610: disparosMalos[k].oy=y-1;
	ld	hl,#0x0005
	add	hl,de
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:611: disparosMalos[k].sp0=shot3;
	ld	l, e
	ld	h, d
	ld	(hl),#<(_shot3)
	inc	hl
	ld	(hl),#>(_shot3)
;alien6.c:612: disparosMalos[k].nuevo=1;
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x01
;alien6.c:613: disparosMalos[k].dead=0;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x00
;alien6.c:614: disparosMalos[k].speed=speed;
	ld	hl,#0x0008
	add	hl,de
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:616: disparosMalos[k].lastmoved=0;
	ld	hl,#0x000B
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;alien6.c:617: disparosMalos[k].moved=0;
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x00
;alien6.c:618: disparos_malos_activos++;
	ld	hl, #_disparos_malos_activos+0
	inc	(hl)
;alien6.c:619: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	af
	ret
_crearDisparoMalo_end::
;alien6.c:625: void moverDisparosMalos(){
;	---------------------------------
; Function moverDisparosMalos
; ---------------------------------
_moverDisparosMalos_start::
_moverDisparosMalos:
	ld	hl,#-17
	add	hl,sp
	ld	sp,hl
;alien6.c:630: lapso=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),e
	ld	3 (iy),d
;alien6.c:631: if (disparos_malos_activos>0){
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	Z,00118$
;alien6.c:632: for (i=0;i<MAX_DISPAROS_MALOS;i++){
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #15
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #13
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00116$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00118$
;alien6.c:633: if ((disparosMalos[i].activo) && (!disparosMalos[i].dead) && (lapso-disparosMalos[i].lastmoved>disparosMalos[i].speed)){
	ld	a,#<(_disparosMalos)
	ld	hl,#13
	add	hl,sp
	ld	iy,#11
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#11
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00117$
	ld	hl,#9
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	or	a, a
	jp	NZ,00117$
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x000B
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
	sbc	a, c
	inc	hl
	ld	(hl),a
	ld	a,3 (iy)
	sbc	a, b
	inc	hl
	ld	(hl),a
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0008
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
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	P,00117$
;alien6.c:634: if (disparosMalos[i].cy<(199-SALTO_DISPARO_MALO)){
	ld	hl,#5
	add	hl,sp
	ld	iy,#11
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x03
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	iy,#5
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,(hl)
	ld	a,e
	sub	a, #0xC5
	jr	NC,00106$
;alien6.c:635: disparosMalos[i].cy=disparosMalos[i].cy + SALTO_DISPARO_MALO;
	inc	e
	inc	e
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),e
;alien6.c:642: if (detectarColision(disparosMalos[i].cx,disparosMalos[i].cy,2,4,prota.cx,prota.cy,4,16)){  
	ld	hl, #(_prota + 0x0003) + 0
	ld	d,(hl)
	ld	hl, #(_prota + 0x0002) + 0
	ld	c,(hl)
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	hl,#0x1004
	push	hl
	push	de
	inc	sp
	ld	a,c
	push	af
	inc	sp
	ld	hl,#0x0402
	push	hl
	ld	a,e
	push	af
	inc	sp
	ld	a,0 (iy)
	push	af
	inc	sp
	call	_detectarColision
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	Z,00107$
;alien6.c:644: disparosMalos[i].dead=1;
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x01
;alien6.c:646: prota.dead=1;
	ld	hl,#_prota + 14
	ld	(hl),#0x01
;alien6.c:648: crearExplosionProta(prota.cx, prota.cy);  //explosion chula
	ld	a, (#(_prota + 0x0003) + 0)
	ld	hl, #(_prota + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_crearExplosionProta
;alien6.c:650: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
	ld	hl, #0x0202
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
;alien6.c:651: hostilidad=0;
	ld	hl,#_hostilidad + 0
	ld	(hl), #0x00
	jr	00107$
00106$:
;alien6.c:655: disparosMalos[i].dead=1;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00107$:
;alien6.c:657: disparosMalos[i].moved=1;
	ld	a,#<(_disparosMalos)
	ld	hl,#15
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x01
00117$:
;alien6.c:632: for (i=0;i<MAX_DISPAROS_MALOS;i++){
	ld	hl,#15
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#13
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#4
	add	iy,sp
	inc	0 (iy)
	jp	00116$
00118$:
	ld	hl,#17
	add	hl,sp
	ld	sp,hl
	ret
_moverDisparosMalos_end::
;alien6.c:667: void borrarDisparosMalos(){
;	---------------------------------
; Function borrarDisparosMalos
; ---------------------------------
_borrarDisparosMalos_start::
_borrarDisparosMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:670: if (disparos_malos_activos>0){
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	Z,00113$
;alien6.c:671: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00111$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00113$
;alien6.c:672: if ((disparosMalos[k].activo==1) && (disparosMalos[k].nuevo==0) && (disparosMalos[k].moved)){
	ld	hl,#_disparosMalos
	add	hl,bc
	ex	de,hl
	ld	hl,#0x0006
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jp	NZ,00112$
	push	de
	pop	iy
	ld	a,9 (iy)
	or	a, a
	jr	NZ,00112$
	push	de
	pop	iy
	ld	a,7 (iy)
	or	a, a
	jr	Z,00112$
;alien6.c:673: printSpriteXOR(disparosMalos[k].sp0,disparosMalos[k].ox,disparosMalos[k].oy,0);
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl, #10+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #10+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #9
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;alien6.c:674: if (disparosMalos[k].dead){
	push	de
	pop	iy
	ld	a,10 (iy)
	or	a, a
	jr	Z,00112$
;alien6.c:675: disparosMalos[k].activo=0;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:676: disparos_malos_activos--;
	ld	hl, #_disparos_malos_activos+0
	dec	(hl)
00112$:
;alien6.c:671: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	hl,#0x000F
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00111$
00113$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarDisparosMalos_end::
;alien6.c:686: void pintarDisparosMalos(){
;	---------------------------------
; Function pintarDisparosMalos
; ---------------------------------
_pintarDisparosMalos_start::
_pintarDisparosMalos:
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;alien6.c:689: if (disparos_malos_activos>0){
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	Z,00113$
;alien6.c:690: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #9
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #7
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00111$:
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00113$
;alien6.c:691: if ((disparosMalos[k].activo==1) && (disparosMalos[k].moved) && (!disparosMalos[k].dead)){
	ld	a,#<(_disparosMalos)
	ld	hl,#7
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#5
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00112$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0007
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00112$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000A
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	NZ,00112$
;alien6.c:692: printSpriteXOR(disparosMalos[k].sp0,disparosMalos[k].cx,disparosMalos[k].cy,0);
	ld	hl,#3
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
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
	ld	d,(hl)
	ld	iy,#5
	add	iy,sp
	ld	c,0 (iy)
	ld	b,1 (iy)
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	e,a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	ld	hl,#0x0000
	push	hl
	push	de
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
;alien6.c:693: disparosMalos[k].ox=disparosMalos[k].cx;
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(bc)
	ld	(de),a
;alien6.c:694: disparosMalos[k].oy=disparosMalos[k].cy;
	ld	a,0 (iy)
	add	a, #0x05
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:695: if (disparosMalos[k].nuevo) 
	ld	hl,#1
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	or	a, a
	jr	Z,00102$
;alien6.c:696: disparosMalos[k].nuevo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
00102$:
;alien6.c:697: disparosMalos[k].moved=0;
	ld	a,#<(_disparosMalos)
	ld	hl,#9
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x00
;alien6.c:698: disparosMalos[k].lastmoved=getTime();
	ld	hl,#0x000B
	add	hl,de
	push	hl
	call	_getTime
	ld	c,l
	ld	b,h
	pop	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
00112$:
;alien6.c:690: for (k=0;k<MAX_DISPAROS_MALOS;k++){
	ld	hl,#9
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#7
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00111$
00113$:
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	ret
_pintarDisparosMalos_end::
;alien6.c:712: void inicializarAddones(){
;	---------------------------------
; Function inicializarAddones
; ---------------------------------
_inicializarAddones_start::
_inicializarAddones:
;alien6.c:714: for (i=0;i<MAX_ADDONES;i++){
	ld	d,#0x00
	ld	bc,#0x0000
00102$:
;alien6.c:715: addones[i].activo=0;
	ld	hl,#_addones
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:714: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#0x000A
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	ld	a,d
	sub	a, #0x02
	jr	C,00102$
;alien6.c:717: addones_activos=0;
	ld	hl,#_addones_activos + 0
	ld	(hl), #0x00
;alien6.c:719: addon_sprite[0]=&addones000;
	ld	hl,#_addones000
	ld	(_addon_sprite), hl
;alien6.c:720: addon_sprite[1]=&addones001;
	ld	hl,#_addones001
	ld	((_addon_sprite + 0x0002)), hl
;alien6.c:721: addon_sprite[2]=&addones002;
	ld	hl,#_addones002
	ld	((_addon_sprite + 0x0004)), hl
;alien6.c:722: addon_sprite[3]=&addones003;
	ld	hl,#_addones003
	ld	((_addon_sprite + 0x0006)), hl
	ret
_inicializarAddones_end::
;alien6.c:728: void crearAddon(unsigned char posx, unsigned char posy){
;	---------------------------------
; Function crearAddon
; ---------------------------------
_crearAddon_start::
_crearAddon:
	push	af
	push	af
;alien6.c:732: while (addones[i].activo==1){
	ld	bc,#_addones+0
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00101$:
	ld	a,c
	ld	hl,#2
	add	hl,sp
	add	a, e
	ld	(hl),a
	ld	a,b
	adc	a, d
	inc	hl
	ld	(hl),a
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	dec	a
	jr	NZ,00123$
;alien6.c:733: i++;
	ld	hl,#0x000A
	add	hl,de
	ex	de,hl
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00101$
00123$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
;alien6.c:735: if (i<MAX_ADDONES){
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x02
	jp	NC,00115$
;alien6.c:737: addones[i].activo=1;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:739: aux=cpc_Random();
	push	bc
	call	_cpc_Random
	pop	bc
	ld	d,l
;alien6.c:741: addones[i].tipo=0;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
;alien6.c:740: if (aux<108)
	ld	a,d
	sub	a, #0x6C
	jr	NC,00111$
;alien6.c:741: addones[i].tipo=0;
	ld	(hl),#0x00
	jr	00112$
00111$:
;alien6.c:742: else if (aux<216)
	ld	a,d
	sub	a, #0xD8
	jr	NC,00108$
;alien6.c:743: addones[i].tipo=1;
	ld	(hl),#0x01
	jr	00112$
00108$:
;alien6.c:744: else if (aux<243)
	ld	a,d
	sub	a, #0xF3
	jr	NC,00105$
;alien6.c:745: addones[i].tipo=2;
	ld	(hl),#0x02
	jr	00112$
00105$:
;alien6.c:747: addones[i].tipo=3;
	ld	(hl),#0x03
00112$:
;alien6.c:748: addones[i].x=posx;
	ld	hl, #1+0
	add	hl, sp
	ld	e, (hl)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl,bc
	ex	de,hl
	ld	hl,#0x0002
	add	hl,de
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:749: addones[i].y=posy+10;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x0A
	ld	(bc),a
;alien6.c:750: addones[i].moved=1;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x01
;alien6.c:751: addones[i].lastmoved=0;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;alien6.c:752: addones[i].speed=40;
	ld	hl,#0x0005
	add	hl,de
	ld	(hl),#0x28
;alien6.c:754: addones_activos++;
	ld	hl, #_addones_activos+0
	inc	(hl)
;alien6.c:755: printSpriteXOR(addon_sprite[addones[i].tipo],addones[i].x,addones[i].y,0);
	ld	a,(bc)
	ld	b,a
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c,(hl)
	ex	de,hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_addon_sprite
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0000
	push	hl
	push	bc
	push	de
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00115$:
	pop	af
	pop	af
	ret
_crearAddon_end::
;alien6.c:762: void moverAddones(){
;	---------------------------------
; Function moverAddones
; ---------------------------------
_moverAddones_start::
_moverAddones:
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;alien6.c:766: lapso=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),e
	ld	3 (iy),d
;alien6.c:767: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00111$
;alien6.c:768: for (i=0;i<MAX_ADDONES;i++){
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
;alien6.c:769: if ((addones[i].activo==1) && (lapso-addones[i].lastmoved>addones[i].speed)){
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
;alien6.c:771: addones[i].y=addones[i].y+4;
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	inc	d
	inc	d
	inc	d
	inc	d
	ld	(hl),d
;alien6.c:772: addones[i].moved=1;
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	h,a
	ld	l, e
	ld	(hl),#0x01
;alien6.c:774: if (addones[i].y>199){
	ld	a,#0xC7
	sub	a, d
	jr	NC,00110$
;alien6.c:775: addones[i].activo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:776: addones_activos--;
	ld	hl, #_addones_activos+0
	dec	(hl)
00110$:
;alien6.c:768: for (i=0;i<MAX_ADDONES;i++){
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
;alien6.c:786: void borrarAddones(){
;	---------------------------------
; Function borrarAddones
; ---------------------------------
_borrarAddones_start::
_borrarAddones:
	push	af
	push	af
	dec	sp
;alien6.c:788: if (addones_activos){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00109$
;alien6.c:789: for (i=0;i<MAX_ADDONES;i++){
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
;alien6.c:790: if ((addones[i].activo==1) && (addones[i].moved)){
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
;alien6.c:791: printSpriteXOR(addon_sprite[addones[i].tipo],addones[i].x,addones[i].y,0);
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	e,(hl)
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
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00108$:
;alien6.c:789: for (i=0;i<MAX_ADDONES;i++){
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
;alien6.c:800: void pintarAddones(){
;	---------------------------------
; Function pintarAddones
; ---------------------------------
_pintarAddones_start::
_pintarAddones:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:802: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00109$
;alien6.c:803: for (i=0;i<MAX_ADDONES;i++){
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
;alien6.c:804: if ((addones[i].activo==1) && (addones[i].moved)){
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
	jp	NZ,00108$
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
;alien6.c:805: printSpriteXOR(addon_sprite[addones[i].tipo],addones[i].x,addones[i].y,0);
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	e,(hl)
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
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:806: addones[i].moved=0;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:807: addones[i].lastmoved=getTime();
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x06
	push	af
	ld	a,1 (iy)
	adc	a, #0x00
	ld	h,a
	pop	af
	ld	l,a
	push	hl
	call	_getTime
	ld	c,l
	ld	b,h
	pop	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
00108$:
;alien6.c:803: for (i=0;i<MAX_ADDONES;i++){
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
;alien6.c:821: void inicializarAtaques(){
;	---------------------------------
; Function inicializarAtaques
; ---------------------------------
_inicializarAtaques_start::
_inicializarAtaques:
;alien6.c:823: for (i=0;i<MAX_ATAQUES;i++){
	ld	d,#0x00
	ld	bc,#0x0000
00102$:
;alien6.c:824: ataques[i].activo=0;
	ld	hl,#_ataques
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:825: ataques[i].maxStep=19;
	push	hl
	pop	iy
	inc	iy
	inc	iy
	inc	iy
	ld	0 (iy), #0x13
;alien6.c:826: ataques[i].trayectoria=trayectoria1;
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#<(_trayectoria1)
	inc	hl
	ld	(hl),#>(_trayectoria1)
;alien6.c:823: for (i=0;i<MAX_ATAQUES;i++){
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	ld	a,d
	sub	a, #0x03
	jr	C,00102$
;alien6.c:828: ataques_activos=0;
	ld	hl,#_ataques_activos + 0
	ld	(hl), #0x00
	ret
_inicializarAtaques_end::
;alien6.c:834: void crearAtaque(unsigned char malo){
;	---------------------------------
; Function crearAtaque
; ---------------------------------
_crearAtaque_start::
_crearAtaque:
	dec	sp
;alien6.c:837: while (ataques[i].activo==1){
	ld	iy,#0
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
;alien6.c:838: i++;
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00101$
00103$:
;alien6.c:840: if (i<max_ataques_activos){
	ld	hl,#_max_ataques_activos
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00106$
;alien6.c:841: ataques[i].activo=1;
	ld	a,#0x01
	ld	(de),a
;alien6.c:842: ataques[i].idMalo=malo;
	ld	l, e
	ld	h, d
	inc	hl
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:843: ataques[i].step=0;
	inc	de
	ld	l,e
	ld	h,d
	inc	hl
	ld	(hl),#0x00
;alien6.c:844: ataques_activos++;
	ld	hl, #_ataques_activos+0
	inc	(hl)
;alien6.c:845: malos[malo].movement=BADDIE_ATTACK;
	ld	de,#_malos+0
	ld	hl, #3+0
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
	add	hl, bc
	add	hl,de
	ex	de,hl
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x01
;alien6.c:846: malos[malo].formSpeed=malos[malo].speed;
	ld	hl,#0x0010
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	ld	a,(de)
	ld	(bc),a
;alien6.c:847: malos[malo].speed=VELOCIDAD_ATAQUE;
	ld	a,#0x08
	ld	(de),a
00106$:
	inc	sp
	ret
_crearAtaque_end::
;alien6.c:858: void cargarMalo(unsigned char malo, unsigned char tipo){
;	---------------------------------
; Function cargarMalo
; ---------------------------------
_cargarMalo_start::
_cargarMalo:
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;alien6.c:859: malos[malo].type=tipo;
	ld	de,#_malos+0
	ld	hl, #15+0
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
	add	hl, bc
	add	hl,de
	ex	de,hl
	ld	hl,#0x0008
	add	hl,de
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:862: malos[malo].activo=1;
	ld	hl,#0x000D
	add	hl,de
	ld	iy,#11
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:864: malos[malo].w=4;
	ld	hl,#0x0007
	add	hl,de
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:865: malos[malo].h=15;
	ld	hl,#0x0006
	add	hl,de
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:866: malos[malo].agresividad=4;
	ld	hl,#0x0014
	add	hl,de
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:867: malos[malo].vidas=1;
	ld	hl,#0x0013
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:868: malos[malo].speed=40;
	ld	hl,#0x000F
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:869: malos[malo].moved=1;
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
;alien6.c:860: switch(tipo) {
	ld	iy,#16
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
;alien6.c:861: case 1:
00101$:
;alien6.c:862: malos[malo].activo=1;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:863: malos[malo].sp0=baddie01;
	ld	a,#<(_baddie01)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie01)
	ld	(de),a
;alien6.c:864: malos[malo].w=4;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:865: malos[malo].h=15;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:866: malos[malo].agresividad=4;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:867: malos[malo].vidas=1;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:868: malos[malo].speed=40;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x28
;alien6.c:869: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:870: break;
	jp	00106$
;alien6.c:871: case 2:
00102$:
;alien6.c:872: malos[malo].activo=1;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:873: malos[malo].sp0=baddie02;
	ld	a,#<(_baddie02)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie02)
	ld	(de),a
;alien6.c:874: malos[malo].w=4;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:875: malos[malo].h=8;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:876: malos[malo].agresividad=8;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:877: malos[malo].vidas=2;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x02
;alien6.c:878: malos[malo].speed=16;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:879: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:880: break;
	jp	00106$
;alien6.c:881: case 3:
00103$:
;alien6.c:882: malos[malo].activo=1;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:883: malos[malo].sp0=baddie03;
	ld	a,#<(_baddie03)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie03)
	ld	(de),a
;alien6.c:884: malos[malo].w=4;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:885: malos[malo].h=8;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:886: malos[malo].agresividad=16;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:887: malos[malo].vidas=3;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x03
;alien6.c:888: malos[malo].speed=8;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:889: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:890: break;
	jr	00106$
;alien6.c:891: default:
00104$:
;alien6.c:892: malos[malo].activo=1;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:893: malos[malo].sp0=baddie01;
	ld	a,#<(_baddie01)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie01)
	ld	(de),a
;alien6.c:894: malos[malo].w=4;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:895: malos[malo].h=15;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:896: malos[malo].agresividad=32;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x20
;alien6.c:897: malos[malo].vidas=1;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:898: malos[malo].speed=15;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:899: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:901: }
00106$:
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
	ret
_cargarMalo_end::
;alien6.c:908: void inicializarMalos(){
;	---------------------------------
; Function inicializarMalos
; ---------------------------------
_inicializarMalos_start::
_inicializarMalos:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:912: for(i=0;i<MAX_MALOS;i++){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00113$:
;alien6.c:913: malos[i].activo=0;
	ld	hl,#_malos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x000D
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:914: malos[i].nuevo=1;
	ld	hl,#0x0011
	add	hl,bc
	ld	(hl),#0x01
;alien6.c:915: malos[i].dead=0;
	ld	hl,#0x0012
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:916: malos[i].movement=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:917: malos[i].lastmoved=0;
	ld	hl,#0x0019
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
;alien6.c:912: for(i=0;i<MAX_MALOS;i++){
	ld	hl,#0x001D
	add	hl,de
	ld	e,l
	ld	d,h
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x08
	jr	C,00113$
;alien6.c:920: switch(nivel) {
	ld	a,(#_nivel + 0)
	xor	a, #0x80
	sub	a, #0x81
	jp	C,00110$
	ld	a,#0x03
	ld	iy,#_nivel
	sub	a, 0 (iy)
	jp	PO, 00204$
	xor	a, #0x80
00204$:
	jp	M,00110$
	ld	iy,#_nivel
	ld	e,0 (iy)
	dec	e
	ld	d,#0x00
	ld	hl,#00205$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00205$:
	jp	00102$
	jp	00106$
	jp	00108$
;alien6.c:921: case 1:
00102$:
;alien6.c:922: malos_activos=8;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x08
;alien6.c:924: for (i=0;i < 4;i++){
	ld	e,#0x14
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00115$:
;alien6.c:925: cargarMalo(i,1);
	push	bc
	push	de
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
	pop	bc
;alien6.c:926: malos[i].cx=x;
	ld	hl,#_malos
	add	hl,bc
	push	hl
	pop	iy
	inc	iy
	inc	iy
	ld	0 (iy), e
;alien6.c:927: x=x+12;
	ld	a,e
	add	a, #0x0C
	ld	e,a
;alien6.c:928: malos[i].cy=17;  // primera fila de malos
	inc	hl
	inc	hl
	inc	hl
	ld	d,h
	ld	h, d
	ld	(hl),#0x11
;alien6.c:924: for (i=0;i < 4;i++){
	ld	hl,#0x001D
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x04
	jr	C,00115$
;alien6.c:931: for (i=4;i < 8;i++){
	ld	bc,#0x041A
	ld	de,#0x0074
00117$:
;alien6.c:932: cargarMalo(i,2);
	push	bc
	push	de
	ld	a,#0x02
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
	pop	bc
;alien6.c:933: malos[i].cx=x;
	ld	hl,#_malos
	add	hl,de
	push	hl
	pop	iy
	inc	iy
	inc	iy
	ld	0 (iy), c
;alien6.c:934: x=x+12;
	ld	a,c
	add	a, #0x0C
	ld	c,a
;alien6.c:935: malos[i].cy=36;  // segunda fila de malos
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x24
;alien6.c:931: for (i=4;i < 8;i++){
	ld	hl,#0x001D
	add	hl,de
	ex	de,hl
	inc	b
	ld	a,b
	sub	a, #0x08
	jr	C,00117$
;alien6.c:937: for (i=0;i < malos_activos;i++){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #6
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00120$:
	ld	hl,#_malos_activos
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00131$
;alien6.c:938: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#6
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
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:939: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:940: malos[i].homeX=malos[i].cx;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:941: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ex	de,hl
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:937: for (i=0;i < malos_activos;i++){
	ld	hl,#6
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	jp	00120$
;alien6.c:945: case 2:
00106$:
;alien6.c:947: malos_activos=4;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x04
;alien6.c:948: for (i=0;i < malos_activos;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x14
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #2
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00123$:
	ld	hl,#_malos_activos
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00131$
;alien6.c:949: cargarMalo(i,2);
	ld	a,#0x02
	push	af
	inc	sp
	ld	a,0 (iy)
	push	af
	inc	sp
	call	_cargarMalo
	pop	af
;alien6.c:950: malos[i].cx=x;
	ld	a,#<(_malos)
	ld	hl,#2
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:951: malos[i].ox=x;
	ld	hl,#0x0004
	add	hl,de
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:952: malos[i].homeX=x;
	ld	hl,#0x000B
	add	hl,de
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:953: x=x+9;
	ld	hl,#0
	add	hl,sp
	ld	a,(hl)
	add	a, #0x09
	ld	(hl),a
;alien6.c:954: malos[i].cy=20+((i%2)*8); 
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	and	a, #0x01
	rlca
	rlca
	rlca
	and	a,#0xF8
	add	a, #0x14
	ld	c,a
	ld	(hl),c
;alien6.c:955: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	(hl),c
;alien6.c:956: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ld	(hl),c
;alien6.c:948: for (i=0;i < malos_activos;i++){
	ld	hl,#2
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	inc	0 (iy)
	jp	00123$
;alien6.c:959: case 3:
00108$:
;alien6.c:960: malos_activos=5;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x05
;alien6.c:962: for (i=0;i < malos_activos;i++){
	ld	de,#0x0014
	ld	hl, #2
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00126$:
	ld	hl,#_malos_activos
	ld	a,d
	sub	a, (hl)
	jp	NC,00131$
;alien6.c:963: cargarMalo(i,3);
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:964: malos[i].cx=x;
	ld	a,#<(_malos)
	ld	hl,#2
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),e
;alien6.c:965: malos[i].ox=x;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),e
;alien6.c:966: malos[i].homeX=x;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),e
;alien6.c:967: x=x+9;
	ld	a,e
	add	a, #0x09
	ld	e,a
;alien6.c:968: malos[i].cy=17; 
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x11
;alien6.c:969: malos[i].oy=17;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:970: malos[i].homeY=17;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:962: for (i=0;i < malos_activos;i++){
	ld	hl,#2
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	inc	d
	jr	00126$
;alien6.c:973: default:
00110$:
;alien6.c:974: malos_activos=nivel+2;
	ld	hl,#_malos_activos
	ld	a,(#_nivel + 0)
	add	a, #0x02
	ld	(hl),a
;alien6.c:976: for (i=0;i < malos_activos;i++){
	ld	de,#0x0014
	ld	hl, #2
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00129$:
	ld	hl,#_malos_activos
	ld	a,d
	sub	a, (hl)
	jr	NC,00131$
;alien6.c:977: cargarMalo(i,(nivel%3)+1);
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	ld	a,(_nivel)
	push	af
	inc	sp
	call	__moduschar_rrx_s
	pop	af
	ld	h,l
	pop	de
	inc	h
	push	de
	push	hl
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:978: malos[i].cx=x;
	ld	a,#<(_malos)
	ld	hl,#2
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),e
;alien6.c:979: malos[i].ox=x;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),e
;alien6.c:980: malos[i].homeX=x;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),e
;alien6.c:981: x=x+9;
	ld	a,e
	add	a, #0x09
	ld	e,a
;alien6.c:982: malos[i].cy=17; 
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x11
;alien6.c:983: malos[i].oy=17;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:984: malos[i].homeY=17;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:976: for (i=0;i < malos_activos;i++){
	ld	hl,#2
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	inc	d
	jr	00129$
;alien6.c:987: }
00131$:
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	ret
_inicializarMalos_end::
;alien6.c:993: void moverMalos(){
;	---------------------------------
; Function moverMalos
; ---------------------------------
_moverMalos_start::
_moverMalos:
	ld	hl,#-29
	add	hl,sp
	ld	sp,hl
;alien6.c:1000: formMoved=0;
	ld	hl,#_formMoved + 0
	ld	(hl), #0x00
;alien6.c:1002: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00162$
;alien6.c:1003: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #27
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #25
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #23
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00160$:
;alien6.c:1004: if ((malos[i].activo==1) && (!malos[i].nuevo) && (getTime()-malos[i].lastmoved>malos[i].speed)){
	ld	a,#<(_malos)
	ld	hl,#23
	add	hl,sp
	ld	iy,#21
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#21
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000D
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00161$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0011
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	NZ,00161$
	call	_getTime
	ld	iy,#17
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	iy,#21
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0019
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#17
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
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000F
	add	hl, de
	ld	e,(hl)
	ld	d,#0x00
	ld	bc,#0x0000
	ld	a,e
	ld	iy,#17
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jp	NC,00161$
;alien6.c:1006: if (formMoved==0){ 
	ld	a,(#_formMoved + 0)
	or	a, a
	jr	NZ,00104$
;alien6.c:1007: stepCount++;
	ld	hl, #_stepCount+0
	inc	(hl)
;alien6.c:1008: if (stepCount>39){	//Si llego a 40 pasos me doy la vuelta
	ld	a,#0x27
	ld	iy,#_stepCount
	sub	a, 0 (iy)
	jr	NC,00102$
;alien6.c:1009: stepCount=0;
	ld	hl,#_stepCount + 0
	ld	(hl), #0x00
;alien6.c:1010: velXForm=-velXForm;
	xor	a, a
	ld	iy,#_velXForm
	sub	a, 0 (iy)
	ld	(#_velXForm + 0),a
00102$:
;alien6.c:1012: formMoved=1;
	ld	hl,#_formMoved + 0
	ld	(hl), #0x01
00104$:
;alien6.c:1015: if (formMoved)
	ld	a,(#_formMoved + 0)
	or	a, a
	jr	Z,00106$
;alien6.c:1016: malos[i].homeX=malos[i].homeX+velXForm;
	ld	a,#<(_malos)
	ld	hl,#27
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
;alien6.c:1018: if (malos[i].movement==BADDIE_FORMATION){	
	ld	a,#<(_malos)
	ld	hl,#25
	add	hl,sp
	ld	iy,#17
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl,#21
	add	hl,sp
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c,(hl)
;alien6.c:1020: if (cpc_Random()<malos[i].agresividad){	//creo ataque propocionalmente a la agresividad
	ld	hl,#15
	add	hl,sp
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x14
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:1022: } else malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formación.
	ld	hl,#13
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x02
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:1032: if (malos[i].cy>(199-(malos[i].h))){	// si me salgo de la pantalla inicio el camino a la formación
	ld	hl,#11
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:1018: if (malos[i].movement==BADDIE_FORMATION){	
	ld	a,c
	or	a, a
	jr	NZ,00143$
;alien6.c:1019: if (ataques_activos<max_ataques_activos){
	ld	hl,#_max_ataques_activos
	ld	a,(#_ataques_activos + 0)
	sub	a, (hl)
	jr	NC,00111$
;alien6.c:1020: if (cpc_Random()<malos[i].agresividad){	//creo ataque propocionalmente a la agresividad
	call	_cpc_Random
	ld	d,l
	ld	hl, #15
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	h,(hl)
	ld	a,d
	sub	a, h
	jp	C,00144$
;alien6.c:1022: } else malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formación.
	ld	iy,#13
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a, (hl)
	ld	hl,#_velXForm
	add	a, (hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
	jp	00144$
00111$:
;alien6.c:1023: } else 	malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formación.
	ld	iy,#13
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a, (hl)
	ld	hl,#_velXForm
	add	a, (hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
	jp	00144$
00143$:
;alien6.c:1025: } else if (malos[i].movement==BADDIE_ATTACK){	
	ld	a,c
	dec	a
	jp	NZ,00140$
;alien6.c:1027: while (!(ataques[j].idMalo==i)&&(ataques[j].activo==1)){ 	//busco el ataque que le corresponde a este malo
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #9
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00114$:
	ld	a,#<(_ataques)
	ld	hl,#9
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
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, b
	jr	Z,00116$
	ld	a,(de)
	dec	a
	jr	NZ,00116$
;alien6.c:1028: j++;
	ld	hl,#9
	add	hl,sp
	ld	a,(hl)
	add	a, #0x06
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	jr	00114$
00116$:
;alien6.c:1030: malos[i].cx=malos[i].cx+ataques[j].trayectoria[ataques[j].step]; //muevo al malo
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	hl, #1+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,#<(_ataques)
	ld	hl,#9
	add	hl,sp
	add	a, l
	ld	(hl),a
	ld	a,#>(_ataques)
	adc	a, h
	inc	hl
	ld	(hl),a
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0004
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#7
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x02
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #7
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
	ld	iy,#13
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
;alien6.c:1032: if (malos[i].cy>(199-(malos[i].h))){	// si me salgo de la pantalla inicio el camino a la formación
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	iy,#17
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0006
	add	hl, bc
	ld	c,(hl)
	ld	b,#0x00
	ld	a,#0xC7
	sub	a, c
	ld	c,a
	ld	a,#0x00
	sbc	a, b
	ld	b,a
	ld	d,#0x00
	ld	a,c
	sub	a, e
	ld	a,b
	sbc	a, d
	jp	PO, 00289$
	xor	a, #0x80
00289$:
	jp	P,00121$
;alien6.c:1033: malos[i].movement=BADDIE_PATH;
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x02
;alien6.c:1034: malos[i].cy=-10;  //coloco al malo fuera de la pantalla por arriba para que tarde un poco en llegar
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0xF6
;alien6.c:1035: ataques[j].activo=0;
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:1036: ataques[j].idMalo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	(hl),#0x00
;alien6.c:1037: ataques_activos--;
	ld	hl, #_ataques_activos+0
	dec	(hl)
	jp	00144$
00121$:
;alien6.c:1038: }else if (ataques[j].step<ataques[j].maxStep)	//actualizo próximas siguiente paso en caso de que reiniciar el ciclo de la trayectoria
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #9
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
	jr	NC,00118$
;alien6.c:1039: ataques[j].step++;
	inc	d
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	jp	00144$
00118$:
;alien6.c:1041: ataques[j].step=0;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
	jp	00144$
00140$:
;alien6.c:1044: }else if (malos[i].movement==BADDIE_PATH){
	ld	a,c
	sub	a, #0x02
	jp	NZ,00144$
;alien6.c:1046: if ((malos[i].cx=malos[i].homeX) && (malos[i].cy==malos[i].homeY)){
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0B
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	d,a
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	ld	hl,#7
	add	hl,sp
	ld	iy,#17
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
	jr	Z,00134$
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	a,d
	sub	a, e
	jr	NZ,00134$
;alien6.c:1047: malos[i].movement=BADDIE_FORMATION;
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:1048: malos[i].speed=malos[i].formSpeed;
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0F
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0010
	add	hl, bc
	ld	a,(hl)
	ld	(de),a
	jr	00144$
00134$:
;alien6.c:1052: if (malos[i].cx<malos[i].homeX)
	ld	iy,#13
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,(hl)
	ld	a,(bc)
	ld	h,a
	ld	a,e
	sub	a, h
	jr	NC,00126$
;alien6.c:1053: malos[i].cx++;
	inc	e
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),e
	jr	00127$
00126$:
;alien6.c:1054: else if (malos[i].cx>malos[i].homeX)
	ld	a,h
	sub	a, e
	jr	NC,00127$
;alien6.c:1055: malos[i].cx--;
	dec	e
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),e
00127$:
;alien6.c:1057: if (malos[i].cy<malos[i].homeY)
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	h,(hl)
	ld	a,d
	sub	a, h
	jr	NC,00131$
;alien6.c:1058: malos[i].cy++;
	inc	d
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	jr	00144$
00131$:
;alien6.c:1059: else if (malos[i].cy>malos[i].homeY)
	ld	a,h
	sub	a, d
	jr	NC,00144$
;alien6.c:1060: malos[i].cy--;
	dec	d
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
00144$:
;alien6.c:1065: if ((disparos_malos_activos<MAX_DISPAROS_MALOS) && (cpc_Random() < malos[i].agresividad) && (hostilidad)){
	ld	hl,#_MAX_DISPAROS_MALOS
	ld	a,(#_disparos_malos_activos + 0)
	sub	a, (hl)
	jp	NC,00150$
	call	_cpc_Random
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	hl, #15
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	sub	a, d
	jr	NC,00150$
	ld	a,(#_hostilidad + 0)
	or	a, a
	jr	Z,00150$
;alien6.c:1066: switch (malos[i].type){
	ld	hl, #17
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0008
	add	hl, de
	ld	a,(hl)
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),a
	ld	a,0 (iy)
	dec	a
	jr	Z,00145$
	ld	a,0 (iy)
	sub	a, #0x02
	jr	Z,00146$
	jr	00147$
;alien6.c:1067: case 1:
00145$:
;alien6.c:1068: velocidadDisparo=8;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x08
;alien6.c:1069: break;
	jr	00148$
;alien6.c:1070: case 2:
00146$:
;alien6.c:1071: velocidadDisparo=6;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x06
;alien6.c:1072: break;
	jr	00148$
;alien6.c:1073: default:
00147$:
;alien6.c:1074: velocidadDisparo=4;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x04
;alien6.c:1076: }
00148$:
;alien6.c:1077: crearDisparoMalo(malos[i].cx,malos[i].cy,velocidadDisparo);
	ld	hl, #0+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	call	_crearDisparoMalo
	pop	af
	pop	af
00150$:
;alien6.c:1079: malos[i].lastmoved=getTime();
	ld	hl,#7
	add	hl,sp
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x19
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	call	_getTime
	ld	iy,#3
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	hl, #7
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0003
	add	hl, sp
	ld	bc, #0x0004
	ldir
;alien6.c:1080: malos[i].moved=1;
	ld	hl,#3
	add	hl,sp
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0E
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
	ld	(hl),#0x01
00161$:
;alien6.c:1003: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#27
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#25
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#23
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#2
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x08
	jp	C,00160$
00162$:
	ld	hl,#29
	add	hl,sp
	ld	sp,hl
	ret
_moverMalos_end::
;alien6.c:1089: void borrarMalos(){
;	---------------------------------
; Function borrarMalos
; ---------------------------------
_borrarMalos_start::
_borrarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:1091: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00117$
;alien6.c:1092: for (i=0;i<MAX_MALOS;i++){
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
;alien6.c:1093: if ((malos[i].activo==1) && (malos[i].nuevo==0) && (malos[i].moved)){
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
	ld	de, #0x0011
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	NZ,00116$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000E
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00116$
;alien6.c:1094: if((malos[i].ox>0)&&(malos[i].ox<159)&&(malos[i].oy>0)&&(malos[i].oy<199))
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0004
	add	hl, de
	ld	d,(hl)
	ld	a,d
	or	a, a
	jr	Z,00102$
	ld	a,d
	sub	a, #0x9F
	jr	NC,00102$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	bc, #0x0005
	add	hl, bc
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00102$
	ld	a,b
	sub	a, #0xC7
	jr	NC,00102$
;alien6.c:1096: printSpriteXOR(malos[i].sp0,malos[i].ox,malos[i].oy,0);
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	ld	hl,#0x0000
	push	hl
	push	bc
	inc	sp
	push	de
	inc	sp
	ld	l, e
	ld	h, c
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00102$:
;alien6.c:1097: if (malos[i].dead){
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
	ld	a,18 (iy)
	or	a, a
	jr	Z,00116$
;alien6.c:1098: malos[i].activo=0;
	ld	hl,#0x000D
	add	hl,de
	ld	(hl),#0x00
;alien6.c:1099: malos_activos--;
	ld	hl, #_malos_activos+0
	dec	(hl)
00116$:
;alien6.c:1092: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x08
	jp	C,00115$
00117$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarMalos_end::
;alien6.c:1109: void pintarMalos(){
;	---------------------------------
; Function pintarMalos
; ---------------------------------
_pintarMalos_start::
_pintarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:1111: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00116$
;alien6.c:1112: for (i=0;i<MAX_MALOS;i++){
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
;alien6.c:1113: if ((malos[i].activo==1) && (malos[i].moved)){
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
	jr	Z,00115$
;alien6.c:1115: if((malos[i].cx>0)&&(malos[i].cx<159)&&(malos[i].cy>0)&&(malos[i].cy<199))
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a, a
	jr	Z,00102$
	ld	a,d
	sub	a, #0x9F
	jr	NC,00102$
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00102$
	ld	a,b
	sub	a, #0xC7
	jr	NC,00102$
;alien6.c:1117: printSpriteXOR(malos[i].sp0,malos[i].cx,malos[i].cy,0);
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	ld	hl,#0x0000
	push	hl
	push	bc
	inc	sp
	push	de
	inc	sp
	ld	l, e
	ld	h, c
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00102$:
;alien6.c:1118: malos[i].ox=malos[i].cx;
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
;alien6.c:1119: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	push	de
	pop	iy
	ld	a,3 (iy)
	ld	(bc),a
;alien6.c:1120: if (malos[i].nuevo) malos[i].nuevo=0;
	ld	hl,#0x0011
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00107$
	ld	(hl),#0x00
00107$:
;alien6.c:1121: malos[i].moved=0;
	ld	hl,#0x000E
	add	hl,de
	ld	(hl),#0x00
00115$:
;alien6.c:1112: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x08
	jp	C,00114$
00116$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_pintarMalos_end::
;alien6.c:1132: void inicializarDisparos(){
;	---------------------------------
; Function inicializarDisparos
; ---------------------------------
_inicializarDisparos_start::
_inicializarDisparos:
	dec	sp
;alien6.c:1134: for (k=0;k<MAX_DISPAROS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00102$:
;alien6.c:1135: disparos[k].activo=0;
	ld	hl,#_disparos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1136: disparos[k].sp0=shot2;
	ld	l, c
	ld	h, b
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:1137: disparos[k].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:1138: disparos[k].cy=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:1139: disparos[k].ox=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1140: disparos[k].oy=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1141: disparos[k].nuevo=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1142: disparos[k].dead=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1143: disparos[k].lastmoved=0;
	ld	hl,#0x000B
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
;alien6.c:1134: for (k=0;k<MAX_DISPAROS;k++){
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x02
	jr	C,00102$
;alien6.c:1145: disparos_activos=0;
	ld	hl,#_disparos_activos + 0
	ld	(hl), #0x00
	inc	sp
	ret
_inicializarDisparos_end::
;alien6.c:1151: void crearDisparo(unsigned char x, unsigned char y){
;	---------------------------------
; Function crearDisparo
; ---------------------------------
_crearDisparo_start::
_crearDisparo:
	push	af
;alien6.c:1154: while (disparos[k].activo==1){
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
	add	a, #0x06
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	dec	a
	jr	NZ,00103$
;alien6.c:1155: k++;
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	jr	00101$
00103$:
;alien6.c:1157: disparos[k].activo=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:1158: disparos[k].cx=x+1;
	pop	bc
	push	bc
	inc	bc
	inc	bc
	ld	hl, #4+0
	add	hl, sp
	ld	e, (hl)
	inc	e
	ld	a,e
	ld	(bc),a
;alien6.c:1159: disparos[k].cy=y-1;
	pop	bc
	push	bc
	inc	bc
	inc	bc
	inc	bc
	ld	hl, #5+0
	add	hl, sp
	ld	d, (hl)
	dec	d
	ld	a,d
	ld	(bc),a
;alien6.c:1160: disparos[k].ox=x+1;
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,e
	ld	(bc),a
;alien6.c:1161: disparos[k].oy=y-1;
	ld	a,0 (iy)
	add	a, #0x05
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),d
;alien6.c:1162: disparos[k].sp0=shot2;
	pop	hl
	push	hl
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:1163: disparos[k].nuevo=1;
	ld	a,0 (iy)
	add	a, #0x09
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),#0x01
;alien6.c:1164: disparos[k].dead=0;
	ld	a,0 (iy)
	add	a, #0x0A
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	xor	a, a
	ld	(de),a
;alien6.c:1165: disparos_activos++;
	ld	hl, #_disparos_activos+0
	inc	(hl)
;alien6.c:1166: prota.lastShot = getTime();
	call	_getTime
	ld	c,l
	ld	b,h
	ld	((_prota + 0x0014)), bc
	ld	((_prota + 0x0014) + 2), de
;alien6.c:1167: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	af
	ret
_crearDisparo_end::
;alien6.c:1173: void moverDisparos(){
;	---------------------------------
; Function moverDisparos
; ---------------------------------
_moverDisparos_start::
_moverDisparos:
	ld	hl,#-33
	add	hl,sp
	ld	sp,hl
;alien6.c:1179: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00135$
;alien6.c:1180: for (i=0;i<MAX_DISPAROS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #31
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #29
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #27
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #25
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00133$:
;alien6.c:1181: if ((disparos[i].activo==1) && (disparos[i].dead==0)){
	ld	a,#<(_disparos)
	ld	hl,#25
	add	hl,sp
	ld	iy,#23
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl, #23+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#21
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #23+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#21
	add	iy,sp
	ld	1 (iy),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00134$
	ld	hl,#21
	add	hl,sp
	ld	iy,#23
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#20
	add	iy,sp
	ld	0 (iy),a
	ld	a,0 (iy)
	or	a, a
	jp	NZ,00134$
;alien6.c:1182: if (disparos[i].cy>16){
	ld	hl,#23
	add	hl,sp
	ld	a,(hl)
	add	a, #0x03
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl, #23
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#20
	add	iy,sp
	ld	0 (iy),a
	ld	a,#0x10
	sub	a, 0 (iy)
	jp	NC,00123$
;alien6.c:1183: disparos[i].cy=disparos[i].cy - SALTO_DISPARO;
	ld	hl,#20
	add	hl,sp
	ld	a,(hl)
	add	a,#0xFC
	ld	(hl),a
	ld	hl, #23
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	iy,#20
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:1184: for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
	ld	a,#<(_disparos)
	ld	hl,#29
	add	hl,sp
	ld	iy,#23
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl, #23+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#18
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #23+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#18
	add	iy,sp
	ld	1 (iy),a
	ld	hl, #23+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#16
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #23+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#16
	add	iy,sp
	ld	1 (iy),a
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #14
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #12
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00131$:
;alien6.c:1185: if (malos[j].activo==1){
	ld	a,#<(_malos)
	ld	hl,#12
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	b,a
	push	bc
	pop	iy
	ld	a,13 (iy)
	dec	a
	jp	NZ,00132$
;alien6.c:1186: if (detectarColision(disparos[i].cx,disparos[i].cy,2,6,malos[j].cx,malos[j].cy,malos[j].w,malos[j].h)){  
	ld	l, c
	ld	h, b
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	ld	iy,#20
	add	iy,sp
	ld	0 (iy),a
	push	bc
	pop	iy
	ld	e,7 (iy)
	ld	hl,#0x0003
	add	hl,bc
	ld	iy,#10
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),a
	ld	hl,#0x0002
	add	hl,bc
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #18
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #16
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	d,(hl)
	push	bc
	ld	hl, #22+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	ld	hl, #13+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #11+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl,#0x0602
	push	hl
	ld	hl, #13+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_detectarColision
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	pop	bc
	or	a, a
	jp	Z,00132$
;alien6.c:1188: disparos[i].dead=1;
	ld	iy,#23
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,#0x01
	ld	(de),a
;alien6.c:1190: malos[j].vidas--;
	ld	hl,#0x0013
	add	hl,bc
	ex	de,hl
	ld	a,(de)
	add	a,#0xFF
	ld	(de),a
;alien6.c:1191: if (malos[j].vidas==0){
	or	a, a
	jp	NZ,00115$
;alien6.c:1192: malos[j].dead=1;
	ld	hl,#0x0012
	add	hl,bc
	ld	(hl),#0x01
;alien6.c:1194: if (malos[j].movement==BADDIE_ATTACK){
	push	bc
	pop	iy
	ld	a,9 (iy)
	dec	a
	jr	NZ,00106$
;alien6.c:1196: while ((ataques[k].idMalo!=j)&&(!ataques[k].activo))
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00102$:
	ld	a,#<(_ataques)
	ld	hl,#3
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
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, b
	jr	Z,00104$
	ld	a,(de)
	or	a, a
	jr	NZ,00104$
;alien6.c:1197: k++;
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x06
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	jr	00102$
00104$:
;alien6.c:1198: ataques[k].activo=0;
	ld	hl, #1+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de,#_ataques
	add	hl,de
	ld	(hl),#0x00
;alien6.c:1199: ataques_activos--;
	ld	hl, #_ataques_activos+0
	dec	(hl)
;alien6.c:1201: score+=100;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x64
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:1202: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
	jr	00107$
00106$:
;alien6.c:1205: score+=50;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x32
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:1206: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
00107$:
;alien6.c:1209: crearExplosion(0, malos[j].cx, malos[j].cy);
	ld	a,#<(_malos)
	ld	hl,#14
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	b,(hl)
	inc	de
	inc	de
	ld	a,(de)
	push	de
	push	bc
	inc	sp
	push	af
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
	call	_cpc_Random
	pop	de
	ld	a,l
	sub	a, #0x19
	jr	NC,00132$
;alien6.c:1214: crearAddon(malos[j].cx, malos[j].cy);
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	b,(hl)
	ld	a,(de)
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_crearAddon
	pop	af
	jr	00132$
00115$:
;alien6.c:1217: crearExplosion(1, malos[j].cx, malos[j].cy+malos[i].h);
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	a,#<(_malos)
	ld	hl,#31
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	h,a
	ld	l, e
	ld	bc, #0x0006
	add	hl, bc
	ld	l,(hl)
	ld	a,d
	add	a, l
	ld	iy,#7
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	d,(hl)
	push	af
	inc	sp
	ld	e, #0x01
	push	de
	call	_crearExplosion
;alien6.c:1219: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
	inc	sp
	ld	hl,#0x0202
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
;alien6.c:1221: score+=5;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x05
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:1222: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
00132$:
;alien6.c:1184: for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
	ld	hl,#14
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#12
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#2
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x08
	jp	C,00131$
	jr	00124$
00123$:
;alien6.c:1230: disparos[i].dead=1;
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00124$:
;alien6.c:1232: disparos[i].moved=1;
	ld	a,#<(_disparos)
	ld	hl,#27
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x07
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00134$:
;alien6.c:1180: for (i=0;i<MAX_DISPAROS;i++){
	ld	hl,#31
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#29
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#27
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#25
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
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
	jp	C,00133$
00135$:
	ld	hl,#33
	add	hl,sp
	ld	sp,hl
	ret
_moverDisparos_end::
;alien6.c:1242: void borrarDisparos(){
;	---------------------------------
; Function borrarDisparos
; ---------------------------------
_borrarDisparos_start::
_borrarDisparos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:1245: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00112$
;alien6.c:1246: for (k=0;k<MAX_DISPAROS;k++){
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
;alien6.c:1247: if ((disparos[k].activo) && (!disparos[k].nuevo) && (disparos[k].moved)){
	ld	a,#<(_disparos)
	ld	hl,#5
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	hl,#0x0006
	add	hl,bc
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
	push	bc
	pop	iy
	ld	a,9 (iy)
	or	a, a
	jr	NZ,00111$
	push	bc
	pop	iy
	ld	a,7 (iy)
	or	a, a
	jr	Z,00111$
;alien6.c:1249: printSpriteXOR(disparos[k].sp0,disparos[k].ox,disparos[k].oy,0);
	push	bc
	pop	iy
	ld	e,5 (iy)
	push	bc
	pop	iy
	ld	d,4 (iy)
	ld	l, c
	ld	h, b
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1250: if (disparos[k].dead){
	pop	hl
	ld	de, #0x000A
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
;alien6.c:1251: disparos[k].activo=0;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:1252: disparos_activos--;
	ld	hl, #_disparos_activos+0
	dec	(hl)
00111$:
;alien6.c:1246: for (k=0;k<MAX_DISPAROS;k++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
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
	jp	C,00110$
00112$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarDisparos_end::
;alien6.c:1262: void pintarDisparos(){
;	---------------------------------
; Function pintarDisparos
; ---------------------------------
_pintarDisparos_start::
_pintarDisparos:
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;alien6.c:1265: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00112$
;alien6.c:1266: for (k=0;k<MAX_DISPAROS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #9
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #7
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00110$:
;alien6.c:1267: if ((disparos[k].activo) && (disparos[k].moved) && (!disparos[k].dead)){
	ld	a,#<(_disparos)
	ld	hl,#7
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#5
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00111$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0007
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00111$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x000A
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	NZ,00111$
;alien6.c:1269: printSpriteXOR(disparos[k].sp0,disparos[k].cx,disparos[k].cy,0);
	ld	hl,#3
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
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
	ld	d,(hl)
	ld	iy,#5
	add	iy,sp
	ld	c,0 (iy)
	ld	b,1 (iy)
	inc	bc
	inc	bc
	ld	a,(bc)
	ld	e,a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	ld	hl,#0x0000
	push	hl
	push	de
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
;alien6.c:1270: disparos[k].ox=disparos[k].cx;
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(bc)
	ld	(de),a
;alien6.c:1271: disparos[k].oy=disparos[k].cy;
	ld	a,0 (iy)
	add	a, #0x05
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:1272: if (disparos[k].nuevo) disparos[k].nuevo=0;
	ld	hl,#1
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
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
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),a
	ld	a,0 (iy)
	or	a, a
	jr	Z,00102$
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
00102$:
;alien6.c:1273: disparos[k].moved=0;
	ld	a,#<(_disparos)
	ld	hl,#9
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x00
00111$:
;alien6.c:1266: for (k=0;k<MAX_DISPAROS;k++){
	ld	hl,#9
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#7
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
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
	jp	C,00110$
00112$:
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	ret
_pintarDisparos_end::
;alien6.c:1285: void inicializarProta(){
;	---------------------------------
; Function inicializarProta
; ---------------------------------
_inicializarProta_start::
_inicializarProta:
;alien6.c:1286: prota.activo=1;
	ld	hl,#_prota + 9
	ld	(hl),#0x01
;alien6.c:1287: prota.sp0=nave;
	ld	hl,#_nave
	ld	(_prota), hl
;alien6.c:1288: prota.cx=39;
	ld	hl,#_prota + 2
	ld	(hl),#0x27
;alien6.c:1289: prota.cy=178;
	ld	hl,#_prota + 3
	ld	(hl),#0xB2
;alien6.c:1290: prota.ox=39;
	ld	hl,#_prota + 4
	ld	(hl),#0x27
;alien6.c:1291: prota.oy=178;
	ld	hl,#_prota + 5
	ld	(hl),#0xB2
;alien6.c:1292: prota.moved=0;
	ld	hl,#_prota + 11
	ld	(hl),#0x00
;alien6.c:1293: prota.dead=0;
	ld	hl,#_prota + 14
	ld	(hl),#0x00
;alien6.c:1294: prota.speed=PROTA_SPEED;
	ld	hl,#_prota + 12
	ld	(hl),#0x0A
;alien6.c:1295: prota.lastmoved=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0010)),hl
	ld	((_prota + 0x0010) + 2), hl
;alien6.c:1296: prota.lastShot=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0014)),hl
	ld	((_prota + 0x0014) + 2), hl
;alien6.c:1297: prota.reloadSpeed=80; //Velocidad de recarga
	ld	hl,#_prota + 24
	ld	(hl),#0x50
	ret
_inicializarProta_end::
;alien6.c:1303: void moverProta(){
;	---------------------------------
; Function moverProta
; ---------------------------------
_moverProta_start::
_moverProta:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:1304: if (!prota.dead){
	ld	a,(#_prota + 14)
	or	a, a
	jp	NZ,00119$
;alien6.c:1305: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	ld	de,#_prota + 2
;alien6.c:1308: prota.moved=1;
;alien6.c:1305: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	dec	l
	jr	NZ,00102$
	ld	a,(de)
	ld	h,a
	ld	a,#0x4B
	sub	a, h
	jr	C,00102$
;alien6.c:1307: prota.cx++;
	ld	a,h
	inc	a
	ld	(de),a
;alien6.c:1308: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00102$:
;alien6.c:1310: if (cpc_TestKey(KEY_LEFT)==1 && prota.cx>0)   // IZQUIERDA
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
;alien6.c:1312: prota.cx--;
	add	a,#0xFF
	ld	(de),a
;alien6.c:1313: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00105$:
;alien6.c:1315: if (cpc_TestKey(KEY_UP)==1 && prota.cy>15)   // ARRIBA
	push	de
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00108$
	ld	hl, #(_prota + 0x0003) + 0
	ld	b,(hl)
	ld	a,#0x0F
	sub	a, b
	jr	NC,00108$
;alien6.c:1317: prota.cy-=2;
	dec	b
	dec	b
	ld	hl,#(_prota + 0x0003)
	ld	(hl),b
;alien6.c:1318: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00108$:
;alien6.c:1320: if (cpc_TestKey(KEY_DOWN)==1 && prota.cy<178)   // ABAJO
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00111$
	ld	hl, #(_prota + 0x0003) + 0
	ld	b,(hl)
	ld	a,b
	sub	a, #0xB2
	jr	NC,00111$
;alien6.c:1322: prota.cy+=2;
	inc	b
	inc	b
	ld	hl,#(_prota + 0x0003)
	ld	(hl),b
;alien6.c:1323: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00111$:
;alien6.c:1325: if ((cpc_TestKey(KEY_FIRE)==1) && (disparos_activos<MAX_DISPAROS) && (getTime()-prota.lastShot>prota.reloadSpeed))   // ESPACIO
	push	de
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jp	NZ,00119$
	ld	a,(#_disparos_activos + 0)
	sub	a, #0x02
	jp	NC,00119$
	push	de
	call	_getTime
	ld	iy,#6
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	pop	de
	ld	hl, (#_prota + 20)
	ld	bc, (#_prota + 22)
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
	ld	a, (#_prota + 24)
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
	jr	NC,00119$
;alien6.c:1327: crearDisparo(prota.cx, prota.cy);
	ld	hl, #(_prota + 0x0003) + 0
	ld	b,(hl)
	ld	a,(de)
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_crearDisparo
	pop	af
00119$:
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	ret
_moverProta_end::
;alien6.c:1335: void borrarProta(){
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta_start::
_borrarProta:
	dec	sp
;alien6.c:1336: if ((prota.moved) || (prota.dead==1)){
	ld	a,(#(_prota + 0x000b) + 0)
	or	a, a
	jr	NZ,00103$
	ld	a, (#(_prota + 0x000e) + 0)
	dec	a
	jr	NZ,00106$
00103$:
;alien6.c:1338: printSpriteXOR(prota.sp0,prota.ox,prota.oy,0);
	ld	hl, #_prota + 5
	ld	c,(hl)
	ld	a,(#_prota + 4)
	inc	sp
	push	af
	inc	sp
	ld	de, (#_prota + 0)
	ld	hl,#0x0000
	push	hl
	ld	a,c
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1339: if (prota.dead) { 
	ld	a, (#(_prota + 0x000e) + 0)
	or	a, a
	jr	Z,00106$
;alien6.c:1340: prota.moved=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
;alien6.c:1341: prota.dead++;
	ld	a, (#(_prota + 0x000e) + 0)
	inc	a
	ld	(#(_prota + 0x000e)),a
00106$:
	inc	sp
	ret
_borrarProta_end::
;alien6.c:1345: void pintarProta(){
;	---------------------------------
; Function pintarProta
; ---------------------------------
_pintarProta_start::
_pintarProta:
	dec	sp
;alien6.c:1346: if ((prota.moved) && (!prota.dead)){
	ld	a, (#(_prota + 0x000b) + 0)
	or	a, a
	jr	Z,00104$
	ld	a, (#_prota + 14)
	or	a, a
	jr	NZ,00104$
;alien6.c:1348: printSpriteXOR(prota.sp0,prota.cx,prota.cy,0);
	ld	hl, #(_prota + 0x0003) + 0
	ld	c,(hl)
	ld	a,(#(_prota + 0x0002) + 0)
	inc	sp
	push	af
	inc	sp
	ld	de, (#_prota + 0)
	ld	hl,#0x0000
	push	hl
	ld	a,c
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1349: prota.ox=prota.cx;
	ld	a, (#(_prota + 0x0002) + 0)
	ld	(#(_prota + 0x0004)),a
;alien6.c:1350: prota.oy=prota.cy;
	ld	a, (#(_prota + 0x0003) + 0)
	ld	(#(_prota + 0x0005)),a
;alien6.c:1351: prota.moved=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
00104$:
	inc	sp
	ret
_pintarProta_end::
;alien6.c:1358: void inicializarTeclado()
;	---------------------------------
; Function inicializarTeclado
; ---------------------------------
_inicializarTeclado_start::
_inicializarTeclado:
;alien6.c:1360: cpc_AssignKey (KEY_LEFT, 0x4404);		// O
	ld	hl,#0x4404
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1361: cpc_AssignKey (KEY_RIGHT, 0x4308);		// P
	inc	sp
	ld	hl,#0x4308
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1362: cpc_AssignKey (KEY_UP, 0x4808);		    // Q
	inc	sp
	ld	hl,#0x4808
	ex	(sp),hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1363: cpc_AssignKey (KEY_DOWN, 0x4820);		// A
	inc	sp
	ld	hl,#0x4820
	ex	(sp),hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1364: cpc_AssignKey (KEY_FIRE, 0x4580);		// SPACE
	inc	sp
	ld	hl,#0x4580
	ex	(sp),hl
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1365: cpc_AssignKey (KEY_ESC, 0x4804);		// ESC
	inc	sp
	ld	hl,#0x4804
	ex	(sp),hl
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1366: cpc_AssignKey (KEY_ME1, 0x4801);		// 1
	inc	sp
	ld	hl,#0x4801
	ex	(sp),hl
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1367: cpc_AssignKey (KEY_ME2, 0x4802);		// 2
	inc	sp
	ld	hl,#0x4802
	ex	(sp),hl
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1368: cpc_AssignKey (KEY_ME3, 0x4702);		// 3
	inc	sp
	ld	hl,#0x4702
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1369: cpc_AssignKey (KEY_ME4, 0x4701);		// 4
	inc	sp
	ld	hl,#0x4701
	ex	(sp),hl
	ld	a,#0x09
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1370: cpc_AssignKey (KEY_DEBUG, 0x4720);		// D
	inc	sp
	ld	hl,#0x4720
	ex	(sp),hl
	ld	a,#0x0A
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1371: cpc_AssignKey (KEY_HOSTILITY, 0x4510);		// H
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
;alien6.c:1377: void mostrarVidasProta(){
;	---------------------------------
; Function mostrarVidasProta
; ---------------------------------
_mostrarVidasProta_start::
_mostrarVidasProta:
;alien6.c:1379: for (i=0;i<prota.vidas;i++){
	ld	de,#0x0000
00103$:
	ld	hl, #(_prota + 0x000f) + 0
	ld	h,(hl)
	ld	a,d
	sub	a, h
	ret	NC
;alien6.c:1381: printSpriteXOR(heart,77-(i*3),194,0);
	ld	a,#0x4D
	sub	a, e
	ld	b,a
	push	de
	ld	hl,#0x0000
	push	hl
	ld	a,#0xC2
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_heart
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;alien6.c:1379: for (i=0;i<prota.vidas;i++){
	inc	e
	inc	e
	inc	e
	inc	d
	jr	00103$
	ret
_mostrarVidasProta_end::
;alien6.c:1392: void pintarBanderasNivel(){
;	---------------------------------
; Function pintarBanderasNivel
; ---------------------------------
_pintarBanderasNivel_start::
_pintarBanderasNivel:
	dec	sp
;alien6.c:1400: aux=nivel/5;
	ld	a,#0x05
	push	af
	inc	sp
	ld	a,(_nivel)
	push	af
	inc	sp
	call	__divuschar_rrx_s
	pop	af
	ld	c,l
;alien6.c:1401: for (i=0;i<aux;i++){
	ld	e,#0x00
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00104$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, c
	jr	NC,00101$
;alien6.c:1403: printSpriteXOR(greenFlag,avance,194,0);
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	d,#0xC2
	push	de
	ld	hl,#_greenFlag
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;alien6.c:1404: avance=avance+3;
	inc	e
	inc	e
	inc	e
;alien6.c:1401: for (i=0;i<aux;i++){
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00104$
00101$:
;alien6.c:1407: aux2=nivel-(aux*5);
	ld	a,c
	add	a, a
	add	a, a
	add	a, c
	ld	d,a
	ld	a,(#_nivel + 0)
	sub	a, d
	ld	d,a
;alien6.c:1408: for (i=0;i<aux2;i++){
	ld	b,e
	ld	e,#0x00
00107$:
	ld	a,e
	sub	a, d
	jr	NC,00109$
;alien6.c:1410: printSpriteXOR(redFlag,avance,194,0);
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	a,#0xC2
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_redFlag
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;alien6.c:1411: avance=avance+3;
	inc	b
	inc	b
	inc	b
;alien6.c:1408: for (i=0;i<aux2;i++){
	inc	e
	jr	00107$
00109$:
	inc	sp
	ret
_pintarBanderasNivel_end::
;alien6.c:1418: void inicializarPartida(){
;	---------------------------------
; Function inicializarPartida
; ---------------------------------
_inicializarPartida_start::
_inicializarPartida:
;alien6.c:1419: prota.vidas=3;
	ld	hl,#_prota+15
	ld	(hl),#0x03
;alien6.c:1420: nivel=1;
	ld	hl,#_nivel + 0
	ld	(hl), #0x01
;alien6.c:1421: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
	ret
_inicializarPartida_end::
;alien6.c:1427: void debug(){
;	---------------------------------
; Function debug
; ---------------------------------
_debug_start::
_debug:
;alien6.c:1428: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1429: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1430: sprintf(aux_txt,"DISPAROS;ACTIVOS;%03u",disparos_activos);
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
;alien6.c:1431: cpc_PrintGphStrXY(aux_txt,2*2,0*8);
	ld	de,#_aux_txt
	ld	hl,#0x0004
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1432: sprintf(aux_txt,"DISPAROS;MALOS;ACTIVOS;%03u",disparos_malos_activos);
	ld	hl,#_disparos_malos_activos + 0
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
;alien6.c:1433: cpc_PrintGphStrXY(aux_txt,2*2,1*8);
	ld	de,#_aux_txt
	ld	hl,#0x0804
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1434: sprintf(aux_txt,"MALOS;ACTIVOS;%03u",malos_activos);
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
;alien6.c:1435: cpc_PrintGphStrXY(aux_txt,2*2,2*8);
	ld	de,#_aux_txt
	ld	hl,#0x1004
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1436: sprintf(aux_txt,"EXPLOSIONES;ACTIVAS;%03u",explosiones_activas);
	ld	hl,#_explosiones_activas + 0
	ld	e, (hl)
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_3
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1437: cpc_PrintGphStrXY(aux_txt,2*2,3*8);
	ld	de,#_aux_txt
	ld	hl,#0x1804
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1438: sprintf(aux_txt,"PROTA CX;%03u",prota.cx);
	ld	a, (#_prota + 2)
	ld	e,a
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_4
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1439: cpc_PrintGphStrXY(aux_txt,2*2,4*8);
	ld	de,#_aux_txt
	ld	hl,#0x2004
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1440: sprintf(aux_txt,"PROTA CY;%03u",prota.cy);
	ld	a, (#_prota + 3)
	ld	e,a
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_5
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1441: cpc_PrintGphStrXY(aux_txt,2*2,5*8);
	ld	de,#_aux_txt
	ld	hl,#0x2804
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1442: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1444: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1445: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1447: cpc_ClrScr();				//fills scr with ink 0
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
___str_3:
	.ascii "EXPLOSIONES;ACTIVAS;%03u"
	.db 0x00
___str_4:
	.ascii "PROTA CX;%03u"
	.db 0x00
___str_5:
	.ascii "PROTA CY;%03u"
	.db 0x00
;alien6.c:1453: char help() {
;	---------------------------------
; Function help
; ---------------------------------
_help_start::
_help:
;alien6.c:1454: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1455: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1457: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1458: cpc_PrintGphStrXY("DEFIENDE;LA;GALAXIA;DE;LA",0*2,0*8);
	ld	de,#___str_6
	ld	hl,#0x0000
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1459: cpc_PrintGphStrXY("INVASION;DE;LAS;TROPAS;ALIENIGENAS",0*2,1*8);
	ld	de,#___str_7
	ld	hl,#0x0800
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1461: cpc_PrintGphStrXY("LA;VICTORIA;TE;REPORTARA;GRANDES",0*2,2*8);
	ld	de,#___str_8
	ld	hl,#0x1000
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1462: cpc_PrintGphStrXY("RECOMPENSAS",0*2,3*8);
	ld	de,#___str_9
	ld	hl,#0x1800
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1464: printSpriteXOR(heart,0,32,0);
	ld	de,#_heart
	ld	hl,#0x0000
	push	hl
	ld	h, #0x20
	push	hl
	push	de
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1466: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1467: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1469: return STATE_MENU; 
	ld	l,#0x02
	ret
_help_end::
___str_6:
	.ascii "DEFIENDE;LA;GALAXIA;DE;LA"
	.db 0x00
___str_7:
	.ascii "INVASION;DE;LAS;TROPAS;ALIENIGENAS"
	.db 0x00
___str_8:
	.ascii "LA;VICTORIA;TE;REPORTARA;GRANDES"
	.db 0x00
___str_9:
	.ascii "RECOMPENSAS"
	.db 0x00
;alien6.c:1475: char gameOver()
;	---------------------------------
; Function gameOver
; ---------------------------------
_gameOver_start::
_gameOver:
;alien6.c:1477: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1478: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_10
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1479: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_11
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1480: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1481: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_11
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1482: while (cpc_AnyKeyPressed()==0);
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1483: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_11
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1484: cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,13*8);
	ld	de,#___str_12
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1485: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_11
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1486: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1488: while (!cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00104$
;alien6.c:1489: while (cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00107$
;alien6.c:1491: return STATE_MENU; 
	ld	l,#0x02
	ret
_gameOver_end::
___str_10:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_11:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_12:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;alien6.c:1497: char levelUp()
;	---------------------------------
; Function levelUp
; ---------------------------------
_levelUp_start::
_levelUp:
;alien6.c:1499: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1500: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
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
;alien6.c:1501: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_14
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1502: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1503: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_14
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1504: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1505: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1506: nivel++;
	ld	hl, #_nivel+0
	inc	(hl)
;alien6.c:1507: sprintf(aux_txt,";;SIGUIENTE;NIVEL;:;%02d;",nivel);
	ld	hl,#_nivel + 0
	ld	e, (hl)
	ld	a,(#_nivel + 0)
	rla
	sbc	a, a
	ld	d,a
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_15
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1508: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_14
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1509: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1510: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_14
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1511: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;alien6.c:1512: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;alien6.c:1513: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_14
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1514: cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	ld	de,#___str_16
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1515: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_14
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1516: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1517: while (!cpc_AnyKeyPressed());
00113$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00113$
;alien6.c:1518: while (cpc_AnyKeyPressed());
00116$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00116$
;alien6.c:1519: while (!cpc_AnyKeyPressed());
00119$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00119$
;alien6.c:1520: while (cpc_AnyKeyPressed());
00122$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00122$
;alien6.c:1522: return STATE_GAME; 
	ld	l,#0x04
	ret
_levelUp_end::
___str_13:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_14:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_15:
	.ascii ";;SIGUIENTE;NIVEL;:;%02d;"
	.db 0x00
___str_16:
	.ascii ";;;;;;;PREPARADO;;;;;;;"
	.db 0x00
;alien6.c:1528: char protaDead()
;	---------------------------------
; Function protaDead
; ---------------------------------
_protaDead_start::
_protaDead:
	push	af
;alien6.c:1530: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1531: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_17
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1532: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_18
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1533: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1534: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_18
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1535: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1536: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1537: sprintf(aux_txt,";;;;;;;;;VIDAS;:;%02d;",prota.vidas);
	ld	a, (#(_prota + 0x000f) + 0)
	ld	e,a
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_19
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1538: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_18
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1539: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1540: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_18
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1541: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;alien6.c:1542: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;alien6.c:1543: if (prota.vidas){
	ld	a,(#(_prota + 0x000f) + 0)
	or	a, a
	jp	Z,00126$
;alien6.c:1544: sprintf(aux_txt,";;;NIVEL;ACTUAL;:;%02d;",nivel);
	ld	hl,#_nivel + 0
	ld	e, (hl)
	ld	a,(#_nivel + 0)
	rla
	sbc	a, a
	ld	d,a
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_20
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1545: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_18
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1546: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1547: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_18
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1548: while (!cpc_AnyKeyPressed());
00113$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00113$
;alien6.c:1549: while (cpc_AnyKeyPressed());
00116$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00116$
;alien6.c:1550: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_18
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1551: cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	ld	de,#___str_21
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1552: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_18
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1553: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1554: while (!cpc_AnyKeyPressed());
00119$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00119$
;alien6.c:1555: while (cpc_AnyKeyPressed());
00122$:
	call	_cpc_AnyKeyPressed
	ld	iy,#0
	add	iy,sp
	ld	1 (iy),h
	ld	0 (iy),l
	ld	hl, #0+1
	add	hl, sp
	ld	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00122$
;alien6.c:1556: return STATE_GAME;
	ld	l,#0x04
	jr	00128$
00126$:
;alien6.c:1558: return STATE_LOSE; 
	ld	l,#0x07
00128$:
	pop	af
	ret
_protaDead_end::
___str_17:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_18:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_19:
	.ascii ";;;;;;;;;VIDAS;:;%02d;"
	.db 0x00
___str_20:
	.ascii ";;;NIVEL;ACTUAL;:;%02d;"
	.db 0x00
___str_21:
	.ascii ";;;;;;;PREPARADO;;;;;;;"
	.db 0x00
;alien6.c:1564: char win()
;	---------------------------------
; Function win
; ---------------------------------
_win_start::
_win:
;alien6.c:1566: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1567: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_22
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1568: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_23
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1569: cpc_PrintGphStrXY2X(aux_txt,8*2,14*8);
	ld	de,#_aux_txt
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1570: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_23
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1571: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1572: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1573: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_23
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1574: cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	ld	de,#___str_24
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1575: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_23
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1576: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1578: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;alien6.c:1579: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;alien6.c:1581: return STATE_MENU; 
	ld	l,#0x02
	ret
_win_end::
___str_22:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_23:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_24:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;alien6.c:1587: unsigned char redefineKeys()
;	---------------------------------
; Function redefineKeys
; ---------------------------------
_redefineKeys_start::
_redefineKeys:
;alien6.c:1590: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1591: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1593: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1595: cpc_PrintGphStrXY("PULSA;PARA",12*2,15*8);
	ld	de,#___str_25
	ld	hl,#0x7818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1596: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1598: cpc_PrintGphStrXY("IZQUIERDA",12*2,17*8);
	ld	de,#___str_26
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1599: cpc_RedefineKey(KEY_LEFT);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1600: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1601: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1602: cpc_PrintGphStrXY("DERECHA;;",12*2,17*8);
	ld	de,#___str_27
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1603: cpc_RedefineKey(KEY_RIGHT);
	ld	h,#0x01
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1604: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1605: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1606: cpc_PrintGphStrXY("ARRIBA;;;",12*2,17*8);
	ld	de,#___str_28
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1607: cpc_RedefineKey(KEY_UP);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1608: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1609: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1610: cpc_PrintGphStrXY("ABAJO;;;;",12*2,17*8);
	ld	de,#___str_29
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1611: cpc_RedefineKey(KEY_DOWN);
	ld	h,#0x03
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1612: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1613: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1614: cpc_PrintGphStrXY("DISPARO;;;",12*2,17*8);
	ld	de,#___str_30
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1615: cpc_RedefineKey(KEY_FIRE);
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1616: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1617: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1619: return STATE_MENU;
	ld	l,#0x02
	ret
_redefineKeys_end::
___str_25:
	.ascii "PULSA;PARA"
	.db 0x00
___str_26:
	.ascii "IZQUIERDA"
	.db 0x00
___str_27:
	.ascii "DERECHA;;"
	.db 0x00
___str_28:
	.ascii "ARRIBA;;;"
	.db 0x00
___str_29:
	.ascii "ABAJO;;;;"
	.db 0x00
___str_30:
	.ascii "DISPARO;;;"
	.db 0x00
;alien6.c:1625: void pintarMenu(){
;	---------------------------------
; Function pintarMenu
; ---------------------------------
_pintarMenu_start::
_pintarMenu:
;alien6.c:1626: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1627: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1629: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1630: cpc_PrintGphStrXY("SPACE;RETRO;INVADERS",20, 1*16);
	ld	de,#___str_31
	ld	hl,#0x1014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1631: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1632: cpc_PrintGphStrXY("1;JUGAR",    30, 4*16);
	ld	de,#___str_32
	ld	hl,#0x401E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1633: cpc_PrintGphStrXY("2;AYUDA",    30, 5*16);
	ld	de,#___str_33
	ld	hl,#0x501E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1634: cpc_PrintGphStrXY("3;REDEFINIR;TECLAS",    30, 6*16);
	ld	de,#___str_34
	ld	hl,#0x601E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1635: cpc_PrintGphStrXY("ESC;SALIR",  30, 7*16);
	ld	de,#___str_35
	ld	hl,#0x701E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1637: cpc_PrintGphStrXY("C;2014;GLASNOST;CORP", 20, 10*16);
	ld	de,#___str_36
	ld	hl,#0xA014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1638: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1639: cpc_PrintGphStrXY("JOHN;LOBO", 31, 11*16);
	ld	de,#___str_37
	ld	hl,#0xB01F
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
	ret
_pintarMenu_end::
___str_31:
	.ascii "SPACE;RETRO;INVADERS"
	.db 0x00
___str_32:
	.ascii "1;JUGAR"
	.db 0x00
___str_33:
	.ascii "2;AYUDA"
	.db 0x00
___str_34:
	.ascii "3;REDEFINIR;TECLAS"
	.db 0x00
___str_35:
	.ascii "ESC;SALIR"
	.db 0x00
___str_36:
	.ascii "C;2014;GLASNOST;CORP"
	.db 0x00
___str_37:
	.ascii "JOHN;LOBO"
	.db 0x00
;alien6.c:1645: char menu() {
;	---------------------------------
; Function menu
; ---------------------------------
_menu_start::
_menu:
	dec	sp
;alien6.c:1646: char choice=-1;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0xFF
;alien6.c:1649: pintarMenu();
	call	_pintarMenu
;alien6.c:1651: while (choice==-1) {
00112$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	inc	a
	jr	NZ,00115$
;alien6.c:1652: cpc_ScanKeyboard();
	call	_cpc_ScanKeyboard
;alien6.c:1654: if (cpc_TestKey(KEY_ME1)==1){
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00102$
;alien6.c:1655: inicializarPartida();
	call	_inicializarPartida
;alien6.c:1656: choice=STATE_GAME;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x04
00102$:
;alien6.c:1658: if (cpc_TestKey(KEY_ME2)==1)   
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00104$
;alien6.c:1659: choice=STATE_HELP;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x03
00104$:
;alien6.c:1660: if (cpc_TestKey(KEY_ME3)==1)   
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00106$
;alien6.c:1661: choice=STATE_REDEFINE;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x09
00106$:
;alien6.c:1662: if (cpc_TestKey(KEY_ESC)==1)   
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00111$
;alien6.c:1663: choice=STATE_EXIT;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x05
;alien6.c:1664: if ((DEBUG) && (cpc_TestKey(KEY_DEBUG)==1)){
00111$:
	ld	a,#0x0A
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00112$
;alien6.c:1665: debug();
	call	_debug
;alien6.c:1666: pintarMenu();
	call	_pintarMenu
	jr	00112$
;alien6.c:1670: while (cpc_AnyKeyPressed());
00115$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00115$
;alien6.c:1673: return choice; 
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	inc	sp
	ret
_menu_end::
;alien6.c:1679: void inicializarNivel(){
;	---------------------------------
; Function inicializarNivel
; ---------------------------------
_inicializarNivel_start::
_inicializarNivel:
;alien6.c:1681: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1682: cpc_PrintGphStr("1UP",0xc000);
	ld	hl,#___str_38+0
	ld	bc,#0xC000
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1683: cpc_PrintGphStr("HIGH;SCORE",0xc01E);	
	ld	hl,#___str_39+0
	ld	bc,#0xC01E
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1684: cpc_PrintGphStr("2UP",0xc04A);
	ld	hl,#___str_40+0
	ld	bc,#0xC04A
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1685: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1686: sprintf(aux_txt,"%05d",score);
	ld	de,#___str_41+0
	ld	bc,#_aux_txt
	ld	hl,(_score)
	push	hl
	push	de
	push	bc
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1687: cpc_PrintGphStr(aux_txt,0xc050);
	ld	hl,#_aux_txt
	ld	bc,#0xC050
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1688: cpc_PrintGphStr("00000",0xc073);	
	ld	hl,#___str_42
	ld	bc,#0xC073
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1689: cpc_PrintGphStr("00000",0xc096);
	ld	hl,#___str_42
	ld	bc,#0xC096
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1693: inicializarEstrellas();
	call	_inicializarEstrellas
;alien6.c:1694: pintarEstrellas();
	call	_pintarEstrellas
;alien6.c:1697: inicializarMalos();
	call	_inicializarMalos
;alien6.c:1698: inicializarProta();
	call	_inicializarProta
;alien6.c:1699: prota.moved=1;
	ld	hl,#_prota+11
	ld	(hl),#0x01
;alien6.c:1700: inicializarDisparos();
	call	_inicializarDisparos
;alien6.c:1702: switch (nivel){
	ld	a,(#_nivel + 0)
	dec	a
	jr	NZ,00104$
;alien6.c:1704: MAX_DISPAROS_MALOS=1;
	ld	hl,#_MAX_DISPAROS_MALOS + 0
	ld	(hl), #0x01
;alien6.c:1705: break;
	jr	00105$
;alien6.c:1706: default:
00104$:
;alien6.c:1707: MAX_DISPAROS_MALOS=2;
	ld	hl,#_MAX_DISPAROS_MALOS + 0
	ld	(hl), #0x02
;alien6.c:1709: }
00105$:
;alien6.c:1710: inicializarDisparosMalos();
	call	_inicializarDisparosMalos
;alien6.c:1712: inicializarExplosiones();
	call	_inicializarExplosiones
;alien6.c:1713: explosiones_lastUpdated=0; //La última vez que se actualizaron las explosiones
	xor	a, a
	ld	(#_explosiones_lastUpdated + 0),a
	ld	(#_explosiones_lastUpdated + 1),a
	ld	(#_explosiones_lastUpdated + 2),a
	ld	(#_explosiones_lastUpdated + 3),a
;alien6.c:1715: explosion_prota_activada=0;
	ld	hl,#_explosion_prota_activada + 0
	ld	(hl), #0x00
;alien6.c:1717: pintarMalos();
	call	_pintarMalos
;alien6.c:1718: pintarProta();
	call	_pintarProta
;alien6.c:1719: mostrarVidasProta();
	call	_mostrarVidasProta
;alien6.c:1720: pintarBanderasNivel();
	call	_pintarBanderasNivel
;alien6.c:1722: stepCount=19;
	ld	hl,#_stepCount + 0
	ld	(hl), #0x13
;alien6.c:1723: velXForm=1;
	ld	hl,#_velXForm + 0
	ld	(hl), #0x01
;alien6.c:1724: switch (nivel){
	ld	a,(#_nivel + 0)
	dec	a
	jr	NZ,00107$
;alien6.c:1726: max_ataques_activos=2;
	ld	hl,#_max_ataques_activos + 0
	ld	(hl), #0x02
;alien6.c:1727: break;
	jr	00108$
;alien6.c:1728: default:
00107$:
;alien6.c:1729: max_ataques_activos=2;
	ld	hl,#_max_ataques_activos + 0
	ld	(hl), #0x02
;alien6.c:1731: }
00108$:
;alien6.c:1732: inicializarAtaques();
	call	_inicializarAtaques
;alien6.c:1734: inicializarAddones();
	call	_inicializarAddones
;alien6.c:1736: hostilidad=1;  //este flag hace que los enemigos disparen
	ld	hl,#_hostilidad + 0
	ld	(hl), #0x01
	ret
_inicializarNivel_end::
___str_38:
	.ascii "1UP"
	.db 0x00
___str_39:
	.ascii "HIGH;SCORE"
	.db 0x00
___str_40:
	.ascii "2UP"
	.db 0x00
___str_41:
	.ascii "%05d"
	.db 0x00
___str_42:
	.ascii "00000"
	.db 0x00
;alien6.c:1742: unsigned char game()
;	---------------------------------
; Function game
; ---------------------------------
_game_start::
_game:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:1744: timerOn();
	call	_timerOn
;alien6.c:1747: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
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
;alien6.c:1748: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1750: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1752: inicializarNivel();
	call	_inicializarNivel
;alien6.c:1754: while(1)
00141$:
;alien6.c:1760: if ((DEBUG) && (cpc_TestKey(KEY_DEBUG)==1)){			// DEBUG
	ld	a,#0x0A
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00108$
;alien6.c:1761: debug();
	call	_debug
;alien6.c:1765: if ((ESTRELLAS_ACTIVADAS) && (getTime()-lastMovedEstrella>VELOCIDAD_ESTRELLAS)){
00108$:
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
	ld	a,#0x28
	cp	a, d
	ld	a,#0x00
	sbc	a, e
	ld	a,#0x00
	sbc	a, c
	ld	a,#0x00
	sbc	a, b
	jr	NC,00107$
;alien6.c:1766: estrellasMovidas=1;
	ld	hl,#_estrellasMovidas + 0
	ld	(hl), #0x01
;alien6.c:1767: moverEstrellas();
	call	_moverEstrellas
;alien6.c:1768: borrarEstrellas();
	call	_borrarEstrellas
;alien6.c:1769: lastMovedEstrella=getTime();
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
00107$:
;alien6.c:1772: if ((explosiones_activas>0)&&((getTime()-explosiones_lastUpdated)>VELOCIDAD_EXPLOSIONES)){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	Z,00110$
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
	ld	a,#0x1E
	cp	a, d
	ld	a,#0x00
	sbc	a, e
	ld	a,#0x00
	sbc	a, c
	ld	a,#0x00
	sbc	a, b
	jr	NC,00110$
;alien6.c:1773: actualizarExplosiones();
	call	_actualizarExplosiones
;alien6.c:1774: animarExplosiones();
	call	_animarExplosiones
;alien6.c:1775: actualizarExplosiones();
	call	_actualizarExplosiones
;alien6.c:1776: explosiones_lastUpdated=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, #_explosiones_lastUpdated
	ld	hl, #0
	add	hl, sp
	ld	bc, #4
	ldir
00110$:
;alien6.c:1779: if ((getTime()-prota.lastmoved)>prota.speed){
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, (#(_prota + 0x0010) + 0)
	ld	bc, (#(_prota + 0x0010) + 2)
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
	ld	a, (#_prota + 12)
	ld	d,a
	ld	e,#0x00
	ld	bc,#0x0000
	ld	a,d
	ld	iy,#0
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,e
	sbc	a, 1 (iy)
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jr	NC,00113$
;alien6.c:1780: prota.lastmoved=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de,#(_prota + 0x0010)
	ld	hl, #0x0000
	add	hl, sp
	ld	bc, #0x0004
	ldir
;alien6.c:1781: moverProta();	//mover al prota
	call	_moverProta
;alien6.c:1782: borrarProta();	//borro al prota
	call	_borrarProta
;alien6.c:1783: pintarProta();	//Pinto al protagonista
	call	_pintarProta
00113$:
;alien6.c:1786: if ((explosion_prota_activada)&&((getTime()-explosion_prota_lastUpdated)>VELOCIDAD_EXPLOSION_PROTA)){
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jr	Z,00115$
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
	ld	hl, #_explosion_prota_lastUpdated
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
	jr	NC,00115$
;alien6.c:1787: animarExplosionProta();
	call	_animarExplosionProta
;alien6.c:1788: actualizarExplosionProta();
	call	_actualizarExplosionProta
;alien6.c:1789: explosion_prota_lastUpdated=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, #_explosion_prota_lastUpdated
	ld	hl, #0
	add	hl, sp
	ld	bc, #4
	ldir
00115$:
;alien6.c:1793: if (addones_activos){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jr	Z,00118$
;alien6.c:1794: borrarAddones();
	call	_borrarAddones
;alien6.c:1795: moverAddones();
	call	_moverAddones
;alien6.c:1796: pintarAddones();
	call	_pintarAddones
00118$:
;alien6.c:1800: moverDisparos();  		//Mover disparos
	call	_moverDisparos
;alien6.c:1801: borrarDisparos();		//Borro disparos
	call	_borrarDisparos
;alien6.c:1802: pintarDisparos();		//Pinto Disparos
	call	_pintarDisparos
;alien6.c:1805: moverMalos();		//Muevo los malos
	call	_moverMalos
;alien6.c:1806: borrarMalos();		//Borro los malos
	call	_borrarMalos
;alien6.c:1807: pintarMalos();		//Pinto los malos
	call	_pintarMalos
;alien6.c:1810: moverDisparosMalos();	//mover disparos
	call	_moverDisparosMalos
;alien6.c:1811: borrarDisparosMalos();	//borro disparos
	call	_borrarDisparosMalos
;alien6.c:1812: pintarDisparosMalos();	//Pinto Disparos
	call	_pintarDisparosMalos
;alien6.c:1815: if ((ESTRELLAS_ACTIVADAS) && (estrellasMovidas)){
	ld	a,(#_estrellasMovidas + 0)
	or	a, a
	jr	Z,00120$
;alien6.c:1816: pintarEstrellas();
	call	_pintarEstrellas
;alien6.c:1817: estrellasMovidas=0;
	ld	hl,#_estrellasMovidas + 0
	ld	(hl), #0x00
00120$:
;alien6.c:1821: if (cambio_score){
	ld	a,(#_cambio_score + 0)
	or	a, a
	jr	Z,00123$
;alien6.c:1822: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;alien6.c:1823: sprintf(aux_txt,"%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_43
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1824: cpc_PrintGphStr(aux_txt,0xc050);
	ld	hl,#_aux_txt
	ld	bc,#0xC050
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
00123$:
;alien6.c:1827: if ((prota.dead) && (!explosiones_activas) && (!disparos_activos) && (!disparos_malos_activos) && (!explosion_prota_activada)){
	ld	a, (#_prota + 14)
	or	a, a
	jr	Z,00125$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	NZ,00125$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jr	NZ,00125$
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jr	NZ,00125$
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jr	NZ,00125$
;alien6.c:1828: state = STATE_DEAD;
	ld	hl,#_state + 0
	ld	(hl), #0x0B
;alien6.c:1829: break;
	jr	00143$
00125$:
;alien6.c:1832: if (cpc_TestKey(KEY_ESC)==1){			// ESC
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00134$
;alien6.c:1833: state = STATE_MENU;
	ld	hl,#_state + 0
	ld	(hl), #0x02
;alien6.c:1834: break;
	jr	00143$
;alien6.c:1839: if ((DEBUG) && (cpc_TestKey(KEY_HOSTILITY)==1)){			
00134$:
	ld	a,#0x0B
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00133$
;alien6.c:1840: hostilidad=!hostilidad;
	ld	a,(#_hostilidad + 0)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(#_hostilidad + 0),a
00133$:
;alien6.c:1844: if ((malos_activos==0) && (explosiones_activas==0) && (!disparos_activos) && (!disparos_malos_activos)){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	NZ,00141$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	NZ,00141$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	NZ,00141$
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	NZ,00141$
;alien6.c:1845: state = STATE_LEVELUP;
	ld	hl,#_state + 0
	ld	(hl), #0x08
;alien6.c:1851: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00143$:
	call	_cpc_WyzSetPlayerOff
;alien6.c:1852: timerOff();
	call	_timerOff
;alien6.c:1853: return state;
	ld	iy,#_state
	ld	l,0 (iy)
	pop	af
	pop	af
	pop	af
	pop	af
	ret
_game_end::
___str_43:
	.ascii "%05d"
	.db 0x00
;alien6.c:1859: void InitialSetUp() {
;	---------------------------------
; Function InitialSetUp
; ---------------------------------
_InitialSetUp_start::
_InitialSetUp:
;alien6.c:1861: cpc_DisableFirmware();
	call	_cpc_DisableFirmware
;alien6.c:1863: set_colours();
	call	_set_colours
;alien6.c:1864: cpc_SetMode(0);				//hardware call to set mode 0
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1865: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1867: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1869: inicializarTeclado();
	call	_inicializarTeclado
;alien6.c:1873: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
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
;alien6.c:1874: cpc_WyzLoadSong(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_WyzLoadSong
	inc	sp
;alien6.c:1875: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1878: state = INITIAL_STATE;
	ld	hl,#_state + 0
	ld	(hl), #0x02
	ret
_InitialSetUp_end::
;alien6.c:1885: int main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;alien6.c:1886: InitialSetUp();
	call	_InitialSetUp
;alien6.c:1888: while (state != STATE_EXIT) {
00122$:
;alien6.c:1889: switch(state) {
	ld	a,(#_state + 0)
	cp	a,#0x05
	jp	Z,00125$
	cp	a,#0x02
	jr	Z,00101$
	cp	a,#0x03
	jr	Z,00103$
	cp	a,#0x04
	jr	Z,00104$
	cp	a,#0x06
	jp	Z,00118$
	cp	a,#0x07
	jp	Z,00119$
	sub	a, #0x09
	jr	Z,00102$
	jp	00120$
;alien6.c:1890: case STATE_MENU:
00101$:
;alien6.c:1891: state = menu();
	call	_menu
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1892: break;
	jr	00122$
;alien6.c:1894: case STATE_REDEFINE:
00102$:
;alien6.c:1895: state = redefineKeys();
	call	_redefineKeys
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1896: break;
	jr	00122$
;alien6.c:1898: case STATE_HELP:
00103$:
;alien6.c:1899: state = help();
	call	_help
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1900: break;
	jr	00122$
;alien6.c:1902: case STATE_GAME:
00104$:
;alien6.c:1903: nivel=1;
	ld	hl,#_nivel + 0
	ld	(hl), #0x01
;alien6.c:1904: prota.vidas=3;
	ld	hl,#(_prota + 0x000f)
	ld	(hl),#0x03
;alien6.c:1906: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;alien6.c:1907: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
;alien6.c:1909: while ((state!=STATE_LOSE) && (state!=STATE_WIN) && (state!=STATE_MENU)) {
00115$:
	ld	a,(#_state + 0)
	cp	a,#0x07
	jr	Z,00122$
	cp	a,#0x06
	jr	Z,00122$
	sub	a, #0x02
	jr	Z,00122$
;alien6.c:1911: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	call	_cpc_WyzSetPlayerOff
;alien6.c:1912: state = game();
	call	_game
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1914: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
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
;alien6.c:1915: cpc_WyzLoadSong(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_WyzLoadSong
	inc	sp
;alien6.c:1916: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1918: if (state==STATE_LEVELUP)
	ld	a,(#_state + 0)
	sub	a, #0x08
	jr	NZ,00110$
;alien6.c:1919: state=levelUp();
	call	_levelUp
	ld	iy,#_state
	ld	0 (iy),l
00110$:
;alien6.c:1920: if (state==STATE_DEAD){
	ld	a,(#_state + 0)
	sub	a, #0x0B
	jr	NZ,00115$
;alien6.c:1921: prota.vidas--;
	ld	a, (#(_prota + 0x000f) + 0)
	add	a,#0xFF
	ld	(#(_prota + 0x000f)),a
;alien6.c:1922: state=protaDead();
	call	_protaDead
	ld	iy,#_state
	ld	0 (iy),l
	jr	00115$
;alien6.c:1927: case STATE_WIN:
00118$:
;alien6.c:1928: state = win();
	call	_win
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1929: break;
	jp	00122$
;alien6.c:1931: case STATE_LOSE:
00119$:
;alien6.c:1932: state = gameOver();
	call	_gameOver
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1933: break;
	jp	00122$
;alien6.c:1935: default:
00120$:
;alien6.c:1936: state = STATE_EXIT;
	ld	hl,#_state + 0
	ld	(hl), #0x05
;alien6.c:1938: }
	jp	00122$
;alien6.c:1940: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00125$:
	call	_cpc_WyzSetPlayerOff
;alien6.c:1942: return 0;  
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
	.db #0x04	; 4
	.db #0x10	; 16
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
__xinit__baddie01:
	.db #0x04	; 4
	.db #0x0F	; 15
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
__xinit__baddie02:
	.db #0x04	; 4
	.db #0x08	; 8
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
	.db #0x04	; 4
	.db #0x08	; 8
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
__xinit__explosion02000:
	.db #0x04	; 4
	.db #0x10	; 16
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
	.db #0x04	; 4
	.db #0x10	; 16
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
	.db #0x04	; 4
	.db #0x10	; 16
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
	.db #0x04	; 4
	.db #0x10	; 16
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
__xinit__explosion02004:
	.db #0x04	; 4
	.db #0x10	; 16
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
__xinit__shot2:
	.db #0x02	;  2
	.db #0x06	;  6
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
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x00	; 0
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
__xinit__plane:
	.db #0x03	; 3
	.db #0x05	; 5
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
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x05	; 5
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
__xinit__redFlag:
	.db #0x02	; 2
	.db #0x06	; 6
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
__xinit__toque000:
	.db #0x02	; 2
	.db #0x08	; 8
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
	.db #0x02	; 2
	.db #0x08	; 8
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
	.db #0x02	; 2
	.db #0x08	; 8
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
	.db #0x02	; 2
	.db #0x08	; 8
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
__xinit__toque004:
	.db #0x02	; 2
	.db #0x08	; 8
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
__xinit__fire000:
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0xB4	; 180
	.db #0x70	; 112	'p'
	.db #0x10	; 16
	.db #0x28	; 40
__xinit__fire001:
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x70	; 112	'p'
	.db #0x38	; 56	'8'
	.db #0x14	; 20
	.db #0xA0	; 160
__xinit__fire002:
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x38	; 56	'8'
	.db #0xB4	; 180
	.db #0x50	; 80	'P'
	.db #0x20	; 32
__xinit__addones000:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x00	; 0
__xinit__addones001:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xAA	; 170
	.db #0x00	; 0
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0x2A	; 42
	.db #0x55	; 85	'U'
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x15	; 21
	.db #0x2A	; 42
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
__xinit__addones002:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x8A	; 138
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0xA2	; 162
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x9B	; 155
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0xB3	; 179
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0xA2	; 162
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__addones003:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xA8	; 168
	.db #0xBC	; 188
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0xA8	; 168
	.db #0xBC	; 188
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0xA8	; 168
	.db #0xBC	; 188
	.db #0x14	; 20
	.db #0x10	; 16
	.db #0xA8	; 168
	.db #0xBC	; 188
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0xA8	; 168
	.db #0xBC	; 188
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x54	; 84	'T'
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
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
__xinit__score:
	.dw #0x0000
__xinit__cambio_score:
	.db #0x00	; 0
	.area _CABS (ABS)
