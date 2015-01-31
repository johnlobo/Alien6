;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Sat Jan 31 13:30:25 2015
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
	.globl _inicializarPartida
	.globl _motorProta
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
	.globl _set_colours
	.globl _pause
	.globl _scr_waitVSYNC
	.globl _halt_me
	.globl _getTime
	.globl _timerOff
	.globl _timerOn
	.globl _getScreenAddress
	.globl _printSpriteXOR
	.globl _fastCollision2
	.globl _fastCollision
	.globl _cpct_drawSprite
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
	.globl _escudo
	.globl _addones004
	.globl _addones003
	.globl _addones002
	.globl _addones001
	.globl _addones000
	.globl _fire003
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
	.globl _animMotorSprite
	.globl _malos
	.globl _prota
	.globl _max_disparos_MALOS
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
_max_disparos_MALOS::
	.ds 1
_prota::
	.ds 28
_malos::
	.ds 348
_animMotorSprite::
	.ds 8
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
	.ds 24
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
_fire003::
	.ds 6
_addones000::
	.ds 34
_addones001::
	.ds 34
_addones002::
	.ds 34
_addones003::
	.ds 34
_addones004::
	.ds 34
_escudo::
	.ds 98
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
;alien6.c:232: void letrasColorAzul(){
;	---------------------------------
; Function letrasColorAzul
; ---------------------------------
_letrasColorAzul_start::
_letrasColorAzul:
;alien6.c:233: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;alien6.c:234: cpc_SetInkGphStr(1,42);
	ld	hl, #0x2A01
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:235: cpc_SetInkGphStr(2,34);
	ld	hl, #0x2202
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:236: cpc_SetInkGphStr(3,42);
	ld	hl, #0x2A03
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:237: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorAzul_end::
;alien6.c:243: void letrasColorRojo(){
;	---------------------------------
; Function letrasColorRojo
; ---------------------------------
_letrasColorRojo_start::
_letrasColorRojo:
;alien6.c:244: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;alien6.c:245: cpc_SetInkGphStr(1,40);
	ld	hl, #0x2801
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:246: cpc_SetInkGphStr(2,136);
	ld	hl, #0x8802
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:247: cpc_SetInkGphStr(3,40);
	ld	hl, #0x2803
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;alien6.c:248: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorRojo_end::
;alien6.c:254: unsigned char pixelEstrella(unsigned char nPixel){
;	---------------------------------
; Function pixelEstrella
; ---------------------------------
_pixelEstrella_start::
_pixelEstrella:
;alien6.c:257: if(nPixel == 0)
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;alien6.c:259: nByte = 32;
	ld	l,#0x20
	ret
00102$:
;alien6.c:262: nByte = 16;
	ld	l,#0x10
;alien6.c:265: return nByte;
	ret
_pixelEstrella_end::
;alien6.c:271: unsigned char GetMode0PixelColorByte(unsigned char nColor, unsigned char nPixel)
;	---------------------------------
; Function GetMode0PixelColorByte
; ---------------------------------
_GetMode0PixelColorByte_start::
_GetMode0PixelColorByte:
;alien6.c:279: if(nColor & 1)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	and	a, #0x01
	ld	h,a
;alien6.c:282: if(nColor & 2)
	ld	a,0 (iy)
	and	a, #0x02
	ld	b,a
;alien6.c:285: if(nColor & 4)
	ld	a,0 (iy)
	and	a, #0x04
	ld	l,a
;alien6.c:288: if(nColor & 8)
	ld	a,0 (iy)
	and	a, #0x08
	ld	c,a
;alien6.c:275: if(nPixel == 0)
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
;alien6.c:277: nByte &= 85;
	or	a,a
	jr	NZ,00118$
	ld	e,a
;alien6.c:279: if(nColor & 1)
	ld	a,h
	or	a, a
	jr	Z,00102$
;alien6.c:280: nByte |= 128;
	ld	e,#0x80
00102$:
;alien6.c:282: if(nColor & 2)
	ld	a,b
	or	a, a
	jr	Z,00104$
;alien6.c:283: nByte |= 8;
	set	3, e
00104$:
;alien6.c:285: if(nColor & 4)
	ld	a,l
	or	a, a
	jr	Z,00106$
;alien6.c:286: nByte |= 32;
	set	5, e
00106$:
;alien6.c:288: if(nColor & 8)
	ld	a,c
	or	a, a
	jr	Z,00119$
;alien6.c:289: nByte |= 2;
	set	1, e
	jr	00119$
00118$:
;alien6.c:293: nByte &= 170;
	ld	e,#0x00
;alien6.c:295: if(nColor & 1)
	ld	a,h
	or	a, a
	jr	Z,00110$
;alien6.c:296: nByte |= 64;
	ld	e,#0x40
00110$:
;alien6.c:298: if(nColor & 2)
	ld	a,b
	or	a, a
	jr	Z,00112$
;alien6.c:299: nByte |= 4;
	set	2, e
00112$:
;alien6.c:301: if(nColor & 4)
	ld	a,l
	or	a, a
	jr	Z,00114$
;alien6.c:302: nByte |= 16;
	set	4, e
00114$:
;alien6.c:304: if(nColor & 8)
	ld	a,c
	or	a, a
	jr	Z,00119$
;alien6.c:305: nByte |= 1;
	set	0, e
00119$:
;alien6.c:308: return nByte;
	ld	l,e
	ret
_GetMode0PixelColorByte_end::
;alien6.c:314: void inicializarEstrellas(){
;	---------------------------------
; Function inicializarEstrellas
; ---------------------------------
_inicializarEstrellas_start::
_inicializarEstrellas:
	push	af
;alien6.c:316: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:318: aStars[nStar].nX = cpc_Random() % 160;
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
;alien6.c:319: aStars[nStar].nY = (cpc_Random() % 184)+16;
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
;alien6.c:320: aStars[nStar].nStarType = cpc_Random() % 3;
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
;alien6.c:322: aStars[nStar].pLineAddress = (int *) getScreenAddress(0,aStars[nStar].nY);
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
;alien6.c:323: aStars[nStar].columnOffset = aStars[nStar].nY/2;
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
;alien6.c:324: aStars[nStar].pCurrentAddress = aStars[nStar].pLineAddress+aStars[nStar].columnOffset;
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
;alien6.c:316: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jp	C,00102$
;alien6.c:326: lastMovedEstrella = 0;
	xor	a, a
	ld	(#_lastMovedEstrella + 0),a
	ld	(#_lastMovedEstrella + 1),a
	ld	(#_lastMovedEstrella + 2),a
	ld	(#_lastMovedEstrella + 3),a
	pop	af
	ret
_inicializarEstrellas_end::
;alien6.c:332: void borrarEstrellas(){
;	---------------------------------
; Function borrarEstrellas
; ---------------------------------
_borrarEstrellas_start::
_borrarEstrellas:
	push	af
	dec	sp
;alien6.c:333: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:335: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:339: *pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
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
;alien6.c:333: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jr	C,00102$
	pop	af
	inc	sp
	ret
_borrarEstrellas_end::
;alien6.c:347: void pintarEstrellas(){
;	---------------------------------
; Function pintarEstrellas
; ---------------------------------
_pintarEstrellas_start::
_pintarEstrellas:
	push	af
	dec	sp
;alien6.c:348: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00102$:
;alien6.c:350: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:354: pStar->pCurrentAddress = (int *) getScreenAddress(pStar->columnOffset,pStar->nY);
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
;alien6.c:356: *pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
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
;alien6.c:348: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jp	C,00102$
	pop	af
	inc	sp
	ret
_pintarEstrellas_end::
;alien6.c:364: void moverEstrellas(){
;	---------------------------------
; Function moverEstrellas
; ---------------------------------
_moverEstrellas_start::
_moverEstrellas:
;alien6.c:366: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl,#_nStar + 0
	ld	(hl), #0x00
00108$:
;alien6.c:368: pStar = &aStars[nStar];
	ld	iy,#_nStar
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,#_aStars
	add	hl,de
	ld	(_pStar),hl
;alien6.c:370: switch(pStar->nStarType)
	ld	bc,(_pStar)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00104$
;alien6.c:373: pStar->nY += 1;
	inc	bc
	ld	a,(bc)
	ld	d,a
;alien6.c:370: switch(pStar->nStarType)
	push	de
	ld	d,#0x00
	ld	hl,#00124$
	add	hl,de
	add	hl,de
;alien6.c:372: case 0: //slow star
	pop	de
	jp	(hl)
00124$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;alien6.c:373: pStar->nY += 1;
	ld	a,d
	inc	a
	ld	(bc),a
;alien6.c:374: break;
	jr	00104$
;alien6.c:375: case 1: //medium star
00102$:
;alien6.c:376: pStar->nY += 2;
	ld	a,d
	add	a, #0x02
	ld	(bc),a
;alien6.c:377: break;
	jr	00104$
;alien6.c:378: case 2: //fast star
00103$:
;alien6.c:379: pStar->nY += 3;
	ld	a,d
	add	a, #0x03
	ld	(bc),a
;alien6.c:381: }
00104$:
;alien6.c:370: switch(pStar->nStarType)
	ld	de,(_pStar)
;alien6.c:373: pStar->nY += 1;
	inc	de
;alien6.c:383: if(pStar->nY >= 200)
	ld	a,(de)
	sub	a, #0xC8
	jr	C,00109$
;alien6.c:385: pStar->nY = 16;
	ld	a,#0x10
	ld	(de),a
00109$:
;alien6.c:366: for(nStar = 0; nStar < STARS_NUM; nStar++)
	ld	hl, #_nStar+0
	inc	(hl)
	ld	a,(#_nStar + 0)
	sub	a, #0x0A
	jr	C,00108$
	ret
_moverEstrellas_end::
;alien6.c:400: void crearExplosionProta(unsigned char x, unsigned char y){
;	---------------------------------
; Function crearExplosionProta
; ---------------------------------
_crearExplosionProta_start::
_crearExplosionProta:
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;alien6.c:403: explosiones_prota[0].cx=x-SALTO_EXPLOSION_PROTA;
	ld	hl, #15+0
	add	hl, sp
	ld	a, (hl)
	add	a,#0xFC
	ld	d,a
	ld	hl,#_explosiones_prota
	ld	(hl),d
;alien6.c:404: explosiones_prota[0].cy=y;
	inc	hl
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:405: explosiones_prota[1].cx=x-SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 6
	ld	(hl),d
;alien6.c:406: explosiones_prota[1].cy=y-SALTO_EXPLOSION_PROTA*2;
	ld	a,0 (iy)
	add	a,#0xF8
	ld	e,a
	ld	hl,#(_explosiones_prota + 0x0007)
	ld	(hl),e
;alien6.c:407: explosiones_prota[2].cx=x;
	ld	hl,#_explosiones_prota + 12
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:408: explosiones_prota[2].cy=y-SALTO_EXPLOSION_PROTA*2;
	ld	hl,#_explosiones_prota + 13
	ld	(hl),e
;alien6.c:409: explosiones_prota[3].cx=x+SALTO_EXPLOSION_PROTA;
	ld	d,0 (iy)
	inc	d
	inc	d
	inc	d
	inc	d
	ld	hl,#(_explosiones_prota + 0x0012)
	ld	(hl),d
;alien6.c:410: explosiones_prota[3].cy=y-SALTO_EXPLOSION_PROTA*2;
	ld	hl,#_explosiones_prota + 19
	ld	(hl),e
;alien6.c:411: explosiones_prota[4].cx=x+SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 24
	ld	(hl),d
;alien6.c:412: explosiones_prota[4].cy=y;
	ld	hl,#_explosiones_prota + 25
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:413: for (i=0;i<5;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #9
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00102$:
;alien6.c:414: explosiones_prota[i].memoriaPantalla = getScreenAddress(explosiones_prota[i].cx,explosiones_prota[i].cy);
	ld	a,#<(_explosiones_prota)
	ld	hl,#9
	add	hl,sp
	add	a, (hl)
	ld	c,a
	ld	a,#>(_explosiones_prota)
	inc	hl
	adc	a, (hl)
	ld	b,a
	ld	hl,#0x0004
	add	hl,bc
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	hl,#0x0001
	add	hl,bc
	ld	iy,#11
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
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),e
	inc	hl
	ld	(hl),d
;alien6.c:415: printSpriteXOR(explosion_sprite[0][0],explosiones_prota[i].cx,explosiones_prota[i].cy,explosiones_prota[i].memoriaPantalla);
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	push	af
	ld	a,(bc)
	ld	iy,#9
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
	ld	hl, #12+0
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
;alien6.c:416: explosiones_prota[i].ox=explosiones_prota[i].cx;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a,(bc)
	ld	(de),a
;alien6.c:417: explosiones_prota[i].oy=explosiones_prota[i].cy;
	inc	bc
	inc	bc
	inc	bc
	ld	d,c
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	l, d
	ld	h, b
	ld	(hl),a
;alien6.c:413: for (i=0;i<5;i++){
	ld	hl,#9
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
;alien6.c:419: fase_explosion_prota=0;
	ld	hl,#_fase_explosion_prota + 0
	ld	(hl), #0x00
;alien6.c:420: fin_explosion_prota=0;
	ld	hl,#_fin_explosion_prota + 0
	ld	(hl), #0x00
;alien6.c:421: explosion_prota_lastUpdated = getTime();
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
;alien6.c:422: explosion_prota_activada=1;
	ld	hl,#_explosion_prota_activada + 0
	ld	(hl), #0x01
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
	ret
_crearExplosionProta_end::
;alien6.c:428: void animarExplosionProta(){
;	---------------------------------
; Function animarExplosionProta
; ---------------------------------
_animarExplosionProta_start::
_animarExplosionProta:
;alien6.c:429: if ((explosion_prota_activada) && (fase_explosion_prota<4)){
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	ret	Z
	ld	a,(#_fase_explosion_prota + 0)
	sub	a, #0x04
	ret	NC
;alien6.c:431: explosiones_prota[0].cx=explosiones_prota[0].cx-SALTO_EXPLOSION_PROTA;
	ld	de,#_explosiones_prota+0
	ld	a,(de)
	add	a,#0xFC
	ld	(de),a
;alien6.c:432: explosiones_prota[1].cx=explosiones_prota[1].cx-SALTO_EXPLOSION_PROTA;
	ld	de,#_explosiones_prota + 6
	ld	a,(de)
	add	a,#0xFC
	ld	(de),a
;alien6.c:433: explosiones_prota[1].cy=explosiones_prota[1].cy-SALTO_EXPLOSION_PROTA*2;
	ld	de,#_explosiones_prota + 7
	ld	a,(de)
	add	a,#0xF8
	ld	(de),a
;alien6.c:434: explosiones_prota[2].cy=explosiones_prota[2].cy-SALTO_EXPLOSION_PROTA*2;
	ld	de,#_explosiones_prota + 13
	ld	a,(de)
	add	a,#0xF8
	ld	(de),a
;alien6.c:435: explosiones_prota[3].cx=explosiones_prota[3].cx+SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 18
	ld	a,(hl)
	add	a, #0x04
	ld	(hl),a
;alien6.c:436: explosiones_prota[3].cy=explosiones_prota[3].cy-SALTO_EXPLOSION_PROTA*2;
	ld	de,#_explosiones_prota + 19
	ld	a,(de)
	add	a,#0xF8
	ld	(de),a
;alien6.c:437: explosiones_prota[4].cx=explosiones_prota[4].cx+SALTO_EXPLOSION_PROTA;
	ld	hl,#_explosiones_prota + 24
	ld	a,(hl)
	add	a, #0x04
	ld	(hl),a
	ret
_animarExplosionProta_end::
;alien6.c:444: void actualizarExplosionProta(){
;	---------------------------------
; Function actualizarExplosionProta
; ---------------------------------
_actualizarExplosionProta_start::
_actualizarExplosionProta:
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;alien6.c:446: if (explosion_prota_activada){
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jp	Z,00112$
;alien6.c:447: for (i=0;i<5;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00108$:
;alien6.c:448: printSpriteXOR(explosion_sprite[0][fase_explosion_prota],explosiones_prota[i].ox,explosiones_prota[i].oy,explosiones_prota[i].memoriaPantalla);
	ld	hl,#_explosiones_prota
	add	hl,de
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	a,0 (iy)
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #3+1
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
	ld	hl, #3
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
	ld	iy,#3
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
	ld	hl, #8+0
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
;alien6.c:447: for (i=0;i<5;i++){
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
;alien6.c:450: fase_explosion_prota++;
	ld	hl, #_fase_explosion_prota+0
	inc	(hl)
;alien6.c:451: if (fase_explosion_prota<4){
	ld	a,(#_fase_explosion_prota + 0)
	sub	a, #0x04
	jp	NC,00104$
;alien6.c:452: for (i=0;i<5;i++){
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
;alien6.c:453: explosiones_prota[i].memoriaPantalla = getScreenAddress(explosiones_prota[i].cx,explosiones_prota[i].cy);
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
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	hl,#0x0001
	add	hl,de
	ld	iy,#1
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
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),c
	inc	hl
	ld	(hl),b
;alien6.c:454: printSpriteXOR(explosion_sprite[0][fase_explosion_prota],explosiones_prota[i].cx,explosiones_prota[i].cy,explosiones_prota[i].memoriaPantalla);
	ld	hl, #1
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
	ld	iy,#3
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
	ld	iy,#8
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
	ld	hl, #8+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #14
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
;alien6.c:455: explosiones_prota[i].ox=explosiones_prota[i].cx;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,(de)
	ld	(bc),a
;alien6.c:456: explosiones_prota[i].oy=explosiones_prota[i].cy;
	inc	de
	inc	de
	inc	de
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:452: for (i=0;i<5;i++){
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
;alien6.c:459: explosion_prota_activada=0;
	ld	hl,#_explosion_prota_activada + 0
	ld	(hl), #0x00
00112$:
	ld	hl,#10
	add	hl,sp
	ld	sp,hl
	ret
_actualizarExplosionProta_end::
;alien6.c:471: void inicializarExplosiones(){
;	---------------------------------
; Function inicializarExplosiones
; ---------------------------------
_inicializarExplosiones_start::
_inicializarExplosiones:
;alien6.c:474: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	d,#0x00
00102$:
;alien6.c:475: explosiones[i].activo=0;
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
;alien6.c:476: explosiones[i].tipo=0;
	xor	a, a
	ld	(bc),a
;alien6.c:477: explosiones[i].fase=0;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;alien6.c:478: explosiones[i].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:479: explosiones[i].cy=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:480: explosiones[i].ox=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:481: explosiones[i].oy=0;
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:482: explosiones[i].memoriaPantalla=0;
	ld	hl,#0x0009
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;alien6.c:483: explosiones[i].h=0;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:484: explosiones[i].w=0;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:485: explosiones[i].lastmoved=0;
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
;alien6.c:474: for (i=0;i<MAX_EXPLOSIONES;i++){
	inc	d
	ld	a,d
	sub	a, #0x06
	jr	C,00102$
;alien6.c:487: explosiones_activas=0;
	ld	hl,#_explosiones_activas + 0
	ld	(hl), #0x00
;alien6.c:488: explosion_sprite[0][0]=&explosion02000;
	ld	hl,#_explosion02000
	ld	(_explosion_sprite), hl
;alien6.c:489: explosion_sprite[0][1]=&explosion02001;
	ld	hl,#_explosion02001
	ld	((_explosion_sprite + 0x0002)), hl
;alien6.c:490: explosion_sprite[0][2]=&explosion02002;
	ld	hl,#_explosion02002
	ld	((_explosion_sprite + 0x0004)), hl
;alien6.c:491: explosion_sprite[0][3]=&explosion02003;
	ld	hl,#_explosion02003
	ld	((_explosion_sprite + 0x0006)), hl
;alien6.c:492: explosion_sprite[1][0]=&toque000;
	ld	hl,#_toque000
	ld	((_explosion_sprite + 0x0008)), hl
;alien6.c:493: explosion_sprite[1][1]=&toque001;
	ld	hl,#_toque001
	ld	((_explosion_sprite + 0x000a)), hl
;alien6.c:494: explosion_sprite[1][2]=&toque002;
	ld	hl,#_toque002
	ld	((_explosion_sprite + 0x000c)), hl
;alien6.c:495: explosion_sprite[1][3]=&toque003;
	ld	hl,#_toque003
	ld	((_explosion_sprite + 0x000e)), hl
	ret
_inicializarExplosiones_end::
;alien6.c:501: void crearExplosion(unsigned char tipo, unsigned char x, unsigned char y){
;	---------------------------------
; Function crearExplosion
; ---------------------------------
_crearExplosion_start::
_crearExplosion:
	push	af
	push	af
	dec	sp
;alien6.c:504: while (explosiones[i].activo==1) { 
	ld	bc,#_explosiones+0
	ld	e,#0x00
00101$:
	ld	l,e
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	hl,#1
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
;alien6.c:505: i++;
	inc	e
	jr	00101$
00112$:
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),e
;alien6.c:507: explosiones[i].activo=1;
	ld	(hl),#0x01
;alien6.c:508: explosiones[i].tipo=tipo;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	iy,#7
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:509: explosiones[i].fase=0;
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	(hl),#0x00
;alien6.c:510: explosiones[i].cx=x;
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	iy,#8
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:511: explosiones[i].cy=y;
	ld	iy,#1
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
;alien6.c:512: explosiones[i].memoriaPantalla = getScreenAddress(explosiones[i].cx,explosiones[i].cy);
	ld	hl,#3
	add	hl,sp
	ld	iy,#1
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
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	inc	hl
	ld	(hl),e
;alien6.c:514: explosiones[i].h=16;
	ld	hl,#3
	add	hl,sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x07
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:515: explosiones[i].w=4;
	ld	a,0 (iy)
	add	a, #0x08
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
;alien6.c:513: if (!tipo){
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00105$
;alien6.c:514: explosiones[i].h=16;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:515: explosiones[i].w=4;
	ld	a,#0x04
	ld	(de),a
	jr	00106$
00105$:
;alien6.c:517: explosiones[i].h=8;
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:518: explosiones[i].w=2;
	ld	a,#0x02
	ld	(de),a
00106$:
;alien6.c:520: explosiones_activas++;
	ld	hl, #_explosiones_activas+0
	inc	(hl)
;alien6.c:521: printSpriteXOR(explosion_sprite[tipo][0],explosiones[i].cx,explosiones[i].cy,explosiones[i].memoriaPantalla);
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
	ld	iy,#3
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
	ld	hl, #3
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
;alien6.c:527: void actualizarExplosiones(){
;	---------------------------------
; Function actualizarExplosiones
; ---------------------------------
_actualizarExplosiones_start::
_actualizarExplosiones:
	push	af
	push	af
	dec	sp
;alien6.c:529: if (explosiones_activas>0){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	Z,00108$
;alien6.c:530: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00106$:
;alien6.c:531: if (explosiones[i].activo==1){
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	a,#<(_explosiones)
	ld	hl,#1
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
;alien6.c:532: printSpriteXOR(explosion_sprite[explosiones[i].tipo][explosiones[i].fase],explosiones[i].cx,explosiones[i].cy,explosiones[i].memoriaPantalla);
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
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#3
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
	ld	hl, #1
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #6+0
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
;alien6.c:530: for (i=0;i<MAX_EXPLOSIONES;i++){
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
;alien6.c:541: void animarExplosiones(){
;	---------------------------------
; Function animarExplosiones
; ---------------------------------
_animarExplosiones_start::
_animarExplosiones:
;alien6.c:543: if (explosiones_activas>0){
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	ret	Z
;alien6.c:544: for (i=0;i<MAX_EXPLOSIONES;i++){
	ld	e,#0x00
00109$:
;alien6.c:545: if (explosiones[i].activo==1){
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
;alien6.c:546: if (explosiones[i].fase<3){
	ld	l, c
	ld	h, b
	inc	hl
	ld	d,(hl)
	ld	a,d
	sub	a, #0x03
	jr	NC,00102$
;alien6.c:547: explosiones[i].fase++;
	inc	d
	ld	(hl),d
	jr	00110$
00102$:
;alien6.c:551: explosiones[i].activo=0;
	ld	0 (iy), #0x00
;alien6.c:552: explosiones_activas--;
	ld	hl, #_explosiones_activas+0
	dec	(hl)
00110$:
;alien6.c:544: for (i=0;i<MAX_EXPLOSIONES;i++){
	inc	e
	ld	a,e
	sub	a, #0x06
	jr	C,00109$
	ret
_animarExplosiones_end::
;alien6.c:569: void inicializarDisparosMalos(){
;	---------------------------------
; Function inicializarDisparosMalos
; ---------------------------------
_inicializarDisparosMalos_start::
_inicializarDisparosMalos:
	dec	sp
;alien6.c:572: for (k=0;k<max_disparos_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00103$:
	ld	hl,#_max_disparos_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00101$
;alien6.c:573: disparosMalos[k].activo=0;
	ld	hl,#_disparosMalos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:574: disparosMalos[k].sp0=shot3;
	ld	l, c
	ld	h, b
	ld	(hl),#<(_shot3)
	inc	hl
	ld	(hl),#>(_shot3)
;alien6.c:575: disparosMalos[k].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:576: disparosMalos[k].cy=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:577: disparosMalos[k].ox=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:578: disparosMalos[k].oy=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:579: disparosMalos[k].nuevo=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:580: disparosMalos[k].dead=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:581: disparosMalos[k].lastmoved=0;
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
;alien6.c:572: for (k=0;k<max_disparos_MALOS;k++){
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	inc	0 (iy)
	jr	00103$
00101$:
;alien6.c:583: disparos_malos_activos=0;
	ld	hl,#_disparos_malos_activos + 0
	ld	(hl), #0x00
	inc	sp
	ret
_inicializarDisparosMalos_end::
;alien6.c:589: void crearDisparoMalo(unsigned char x, unsigned char y, unsigned speed){
;	---------------------------------
; Function crearDisparoMalo
; ---------------------------------
_crearDisparoMalo_start::
_crearDisparoMalo:
	push	af
;alien6.c:592: while (disparosMalos[k].activo==1){
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
;alien6.c:593: k++;
	ld	hl,#0x000F
	add	hl,bc
	ld	c,l
	ld	b,h
	jr	00101$
00103$:
;alien6.c:595: disparosMalos[k].activo=1;
	ld	(hl),#0x01
;alien6.c:596: disparosMalos[k].cx=x+1;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	hl,#0
	add	hl,sp
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	inc	a
	ld	(hl),a
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	ld	(bc),a
;alien6.c:597: disparosMalos[k].cy=y-1;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	hl,#1
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a,#0xFF
	ld	(hl),a
	ld	hl, #1+0
	add	hl, sp
	ld	a, (hl)
	ld	(bc),a
;alien6.c:598: disparosMalos[k].ox=x+1;
	ld	hl,#0x0004
	add	hl,de
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:599: disparosMalos[k].oy=y-1;
	ld	hl,#0x0005
	add	hl,de
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:600: disparosMalos[k].sp0=shot3;
	ld	l, e
	ld	h, d
	ld	(hl),#<(_shot3)
	inc	hl
	ld	(hl),#>(_shot3)
;alien6.c:601: disparosMalos[k].nuevo=1;
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x01
;alien6.c:602: disparosMalos[k].dead=0;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x00
;alien6.c:603: disparosMalos[k].speed=speed;
	ld	hl,#0x0008
	add	hl,de
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:605: disparosMalos[k].lastmoved=0;
	ld	hl,#0x000B
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;alien6.c:606: disparosMalos[k].moved=0;
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x00
;alien6.c:607: disparos_malos_activos++;
	ld	hl, #_disparos_malos_activos+0
	inc	(hl)
;alien6.c:608: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	af
	ret
_crearDisparoMalo_end::
;alien6.c:614: void moverDisparosMalos(){
;	---------------------------------
; Function moverDisparosMalos
; ---------------------------------
_moverDisparosMalos_start::
_moverDisparosMalos:
	ld	hl,#-17
	add	hl,sp
	ld	sp,hl
;alien6.c:619: lapso=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),e
	ld	3 (iy),d
;alien6.c:620: if (disparos_malos_activos>0){
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	Z,00121$
;alien6.c:621: for (i=0;i<max_disparos_MALOS;i++){
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #7
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00119$:
	ld	hl,#_max_disparos_MALOS
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00121$
;alien6.c:622: if ((disparosMalos[i].activo) && (!disparosMalos[i].dead) && (lapso-disparosMalos[i].lastmoved>disparosMalos[i].speed)){
	ld	a,#<(_disparosMalos)
	ld	hl,#5
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#15
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	Z,00120$
	ld	hl,#13
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	or	a, a
	jp	NZ,00120$
	ld	hl, #15
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
	ld	hl,#9
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
	ld	hl, #15
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
	ld	iy,#9
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	P,00120$
;alien6.c:623: if (disparosMalos[i].cy<(199-SALTO_DISPARO_MALO)){
	ld	hl,#9
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x03
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	iy,#9
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,(hl)
	ld	a,e
	sub	a, #0xC5
	jp	NC,00109$
;alien6.c:624: disparosMalos[i].cy=disparosMalos[i].cy + SALTO_DISPARO_MALO;
	inc	e
	inc	e
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),e
;alien6.c:631: if (fastCollision(disparosMalos[i].cx,disparosMalos[i].cy,2,4,prota.cx,prota.cy,4,16)){  
	ld	hl, #(_prota + 0x0003) + 0
	ld	d,(hl)
	ld	hl, #(_prota + 0x0002) + 0
	ld	c,(hl)
	ld	hl, #15
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#9
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
	call	_fastCollision
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	Z,00110$
;alien6.c:632: if (prota.escudo){
	ld	de,#_prota + 25
	ld	a,(de)
	or	a, a
	jr	Z,00104$
;alien6.c:634: disparosMalos[i].dead=1;
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:635: prota.escudo=0;
	xor	a, a
	ld	(de),a
;alien6.c:636: printSpriteXOR(escudo,prota.cx-1,prota.cy-3,0);
	ld	a, (#(_prota + 0x0003) + 0)
	add	a,#0xFD
	ld	d,a
	ld	a, (#(_prota + 0x0002) + 0)
	ld	b,a
	dec	b
	ld	hl,#0x0000
	push	hl
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_escudo
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	jr	00110$
00104$:
;alien6.c:640: disparosMalos[i].dead=1;
	ld	iy,#13
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x01
;alien6.c:642: prota.dead=1;
	ld	hl,#_prota + 14
	ld	(hl),#0x01
;alien6.c:644: crearExplosionProta(prota.cx, prota.cy);  //explosion chula
	ld	a, (#(_prota + 0x0003) + 0)
	ld	hl, #(_prota + 0x0002) + 0
	ld	d,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_crearExplosionProta
;alien6.c:646: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
	ld	hl, #0x0202
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
;alien6.c:647: hostilidad=0;
	ld	hl,#_hostilidad + 0
	ld	(hl), #0x00
	jr	00110$
00109$:
;alien6.c:652: disparosMalos[i].dead=1;
	ld	hl, #13
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00110$:
;alien6.c:654: disparosMalos[i].moved=1;
	ld	a,#<(_disparosMalos)
	ld	hl,#7
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
00120$:
;alien6.c:621: for (i=0;i<max_disparos_MALOS;i++){
	ld	hl,#7
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#5
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
	jp	00119$
00121$:
	ld	hl,#17
	add	hl,sp
	ld	sp,hl
	ret
_moverDisparosMalos_end::
;alien6.c:664: void borrarDisparosMalos(){
;	---------------------------------
; Function borrarDisparosMalos
; ---------------------------------
_borrarDisparosMalos_start::
_borrarDisparosMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:667: if (disparos_malos_activos>0){
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	Z,00113$
;alien6.c:668: for (k=0;k<max_disparos_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00111$:
	ld	hl,#_max_disparos_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00113$
;alien6.c:669: if ((disparosMalos[k].activo==1) && (disparosMalos[k].nuevo==0) && (disparosMalos[k].moved)){
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
;alien6.c:670: printSpriteXOR(disparosMalos[k].sp0,disparosMalos[k].ox,disparosMalos[k].oy,0);
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),a
	ld	l, e
	ld	h, d
	ld	a,(hl)
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #9+0
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
	pop	de
	pop	bc
;alien6.c:671: if (disparosMalos[k].dead){
	push	de
	pop	iy
	ld	a,10 (iy)
	or	a, a
	jr	Z,00112$
;alien6.c:672: disparosMalos[k].activo=0;
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:673: disparos_malos_activos--;
	ld	hl, #_disparos_malos_activos+0
	dec	(hl)
00112$:
;alien6.c:668: for (k=0;k<max_disparos_MALOS;k++){
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
;alien6.c:683: void pintarDisparosMalos(){
;	---------------------------------
; Function pintarDisparosMalos
; ---------------------------------
_pintarDisparosMalos_start::
_pintarDisparosMalos:
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;alien6.c:686: if (disparos_malos_activos>0){
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	Z,00113$
;alien6.c:687: for (k=0;k<max_disparos_MALOS;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #9
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00111$:
	ld	hl,#_max_disparos_MALOS
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jp	NC,00113$
;alien6.c:688: if ((disparosMalos[k].activo==1) && (disparosMalos[k].moved) && (!disparosMalos[k].dead)){
	ld	a,#<(_disparosMalos)
	ld	hl,#5
	add	hl,sp
	ld	iy,#3
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparosMalos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#3
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
;alien6.c:689: printSpriteXOR(disparosMalos[k].sp0,disparosMalos[k].cx,disparosMalos[k].cy,0);
	ld	hl,#1
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
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
	ld	d,(hl)
	ld	iy,#3
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
	ld	iy,#7
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
;alien6.c:690: disparosMalos[k].ox=disparosMalos[k].cx;
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(bc)
	ld	(de),a
;alien6.c:691: disparosMalos[k].oy=disparosMalos[k].cy;
	ld	a,0 (iy)
	add	a, #0x05
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:692: if (disparosMalos[k].nuevo) 
	ld	hl,#7
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
	ld	iy,#7
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	or	a, a
	jr	Z,00102$
;alien6.c:693: disparosMalos[k].nuevo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
00102$:
;alien6.c:694: disparosMalos[k].moved=0;
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
;alien6.c:695: disparosMalos[k].lastmoved=getTime();
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
;alien6.c:687: for (k=0;k<max_disparos_MALOS;k++){
	ld	hl,#9
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
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
	jp	00111$
00113$:
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	ret
_pintarDisparosMalos_end::
;alien6.c:709: void inicializarAddones(){
;	---------------------------------
; Function inicializarAddones
; ---------------------------------
_inicializarAddones_start::
_inicializarAddones:
;alien6.c:711: for (i=0;i<MAX_ADDONES;i++){
	ld	d,#0x00
	ld	bc,#0x0000
00102$:
;alien6.c:712: addones[i].activo=0;
	ld	hl,#_addones
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:711: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#0x000C
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	ld	a,d
	sub	a, #0x02
	jr	C,00102$
;alien6.c:714: addones_activos=0;
	ld	hl,#_addones_activos + 0
	ld	(hl), #0x00
;alien6.c:716: addon_sprite[0]=&addones000;
	ld	hl,#_addones000
	ld	(_addon_sprite), hl
;alien6.c:717: addon_sprite[1]=&addones001;
	ld	hl,#_addones001
	ld	((_addon_sprite + 0x0002)), hl
;alien6.c:718: addon_sprite[2]=&addones002;
	ld	hl,#_addones002
	ld	((_addon_sprite + 0x0004)), hl
;alien6.c:719: addon_sprite[3]=&addones003;
	ld	hl,#_addones003
	ld	((_addon_sprite + 0x0006)), hl
	ret
_inicializarAddones_end::
;alien6.c:725: void crearAddon(unsigned char posx, unsigned char posy){
;	---------------------------------
; Function crearAddon
; ---------------------------------
_crearAddon_start::
_crearAddon:
	push	af
	push	af
;alien6.c:729: while (addones[i].activo==1){
	ld	bc,#_addones+0
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00101$:
	ld	a,c
	ld	hl,#1
	add	hl,sp
	add	a, e
	ld	(hl),a
	ld	a,b
	adc	a, d
	inc	hl
	ld	(hl),a
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	dec	a
	jr	NZ,00123$
;alien6.c:730: i++;
	ld	hl,#0x000C
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
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),a
;alien6.c:732: if (i<MAX_ADDONES){
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x02
	jp	NC,00115$
;alien6.c:734: addones[i].activo=1;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:736: aux=cpc_Random();
	push	bc
	call	_cpc_Random
	pop	bc
	ld	d,l
;alien6.c:738: addones[i].tipo=0;		//escudo
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
;alien6.c:737: if (aux<108)
	ld	a,d
	sub	a, #0x6C
	jr	NC,00111$
;alien6.c:738: addones[i].tipo=0;		//escudo
	ld	(hl),#0x00
	jr	00112$
00111$:
;alien6.c:739: else if (aux<216)	
	ld	a,d
	sub	a, #0xD8
	jr	NC,00108$
;alien6.c:740: addones[i].tipo=1;		//rafaga		
	ld	(hl),#0x01
	jr	00112$
00108$:
;alien6.c:741: else if (aux<243)
	ld	a,d
	sub	a, #0xF3
	jr	NC,00105$
;alien6.c:742: addones[i].tipo=2;		//freeze
	ld	(hl),#0x02
	jr	00112$
00105$:
;alien6.c:744: addones[i].tipo=3;		//vida extra
	ld	(hl),#0x03
00112$:
;alien6.c:745: addones[i].x=posx;
	ld	hl, #3+0
	add	hl, sp
	ld	e, (hl)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl,bc
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:746: addones[i].y=posy+10;
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
;alien6.c:747: addones[i].moved=1;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0x01
;alien6.c:748: addones[i].lastmoved=0;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;alien6.c:749: addones[i].speed=40;
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x28
;alien6.c:750: addones[i].dead=0;
	ld	hl,#0x0005
	add	hl,de
	ld	(hl),#0x00
;alien6.c:751: addones[i].nuevo=1;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x01
;alien6.c:753: addones_activos++;
	ld	hl, #_addones_activos+0
	inc	(hl)
00115$:
	pop	af
	pop	af
	ret
_crearAddon_end::
;alien6.c:760: void moverAddones(){
;	---------------------------------
; Function moverAddones
; ---------------------------------
_moverAddones_start::
_moverAddones:
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;alien6.c:764: lapso=getTime();
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),e
	ld	3 (iy),d
;alien6.c:765: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00119$
;alien6.c:766: for (i=0;i<MAX_ADDONES;i++){
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #16
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00117$:
;alien6.c:767: if ((addones[i].activo==1) && (lapso-addones[i].lastmoved>addones[i].speed)){
	ld	a,#<(_addones)
	ld	hl,#16
	add	hl,sp
	ld	iy,#14
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_addones)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#14
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jp	NZ,00118$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0008
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	hl,#10
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
	ld	hl, #14
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	de, #0x0007
	add	hl, de
	ld	e,(hl)
	ld	d,#0x00
	ld	bc,#0x0000
	ld	a,e
	ld	iy,#10
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,b
	sbc	a, 2 (iy)
	ld	a,c
	sbc	a, 3 (iy)
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	P,00118$
;alien6.c:769: addones[i].y=addones[i].y + PASO_ADDONES;
	ld	hl, #14
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	ld	hl,#10
	add	hl,sp
	add	a, #0x04
	ld	(hl),a
	ld	hl, #10+0
	add	hl, sp
	ld	a, (hl)
	ld	(de),a
;alien6.c:770: addones[i].moved=1;
	ld	iy,#14
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x06
	ld	c,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	b,a
	ld	a,#0x01
	ld	(bc),a
;alien6.c:772: if (addones[i].y>199){
	ld	a,(de)
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),a
;alien6.c:773: addones[i].dead=1;
	ld	hl,#6
	add	hl,sp
	ld	iy,#14
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x05
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:772: if (addones[i].y>199){
	ld	a,#0xC7
	ld	iy,#10
	add	iy,sp
	sub	a, 0 (iy)
	jr	NC,00109$
;alien6.c:773: addones[i].dead=1;
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
	jp	00118$
00109$:
;alien6.c:774: } else if (fastCollision2(addones[i].x, addones[i].y, addon_sprite[addones[i].tipo], prota.cx, prota.cy, prota.sp0)) {
	ld	hl, #_prota + 0
	ld	a,(hl)
	ld	iy,#10
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	ld	a,(#(_prota + 0x0003) + 0)
	ld	iy,#8
	add	iy,sp
	ld	0 (iy),a
	ld	a,(#(_prota + 0x0002) + 0)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	iy,#14
	add	iy,sp
	ld	e,0 (iy)
	ld	d,1 (iy)
	inc	de
	ld	a,(de)
	ld	l,a
	ld	h,#0x00
	add	hl, hl
	ld	bc,#_addon_sprite
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	0 (iy),a
	push	de
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #12+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #10+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	ld	hl, #17+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #23+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_fastCollision2
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00118$
;alien6.c:775: addones[i].dead=1;
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:776: switch(addones[i].tipo) {
	ld	a,(de)
	ld	l,a
	or	a, a
	jr	Z,00101$
	dec	l
	jr	Z,00102$
	jr	00104$
;alien6.c:777: case 0:
00101$:
;alien6.c:778: prota.escudo=1;
	ld	hl,#(_prota + 0x0019)
	ld	(hl),#0x01
;alien6.c:779: printSpriteXOR(escudo,prota.cx-1,prota.cy-3,0);
	ld	a, (#(_prota + 0x0003) + 0)
	add	a,#0xFD
	ld	c,a
	ld	a, (#(_prota + 0x0002) + 0)
	ld	e,a
	dec	e
	ld	hl,#0x0000
	push	hl
	ld	d, c
	push	de
	ld	hl,#_escudo
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:780: break;
	jr	00104$
;alien6.c:781: case 1:
00102$:
;alien6.c:782: prota.max_disparos++;
	ld	hl,#_prota + 26
	inc	(hl)
;alien6.c:785: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
00104$:
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
00118$:
;alien6.c:766: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#16
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0C
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
	jp	C,00117$
00119$:
	ld	hl,#18
	add	hl,sp
	ld	sp,hl
	ret
_moverAddones_end::
;alien6.c:796: void borrarAddones(){
;	---------------------------------
; Function borrarAddones
; ---------------------------------
_borrarAddones_start::
_borrarAddones:
	push	af
	push	af
	dec	sp
;alien6.c:798: if (addones_activos){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00112$
;alien6.c:799: for (i=0;i<MAX_ADDONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00110$:
;alien6.c:800: if ((addones[i].activo==1) && (addones[i].moved) && (!addones[i].nuevo)){
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
	jr	NZ,00111$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0004
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	NZ,00111$
;alien6.c:801: printSpriteXOR(addon_sprite[addones[i].tipo],addones[i].x,addones[i].y - PASO_ADDONES,0);
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	add	a,#0xFC
	ld	d,a
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
;alien6.c:802: if (addones[i].dead){
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0005
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
;alien6.c:803: addones[i].activo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:804: addones_activos--;
	ld	hl, #_addones_activos+0
	dec	(hl)
00111$:
;alien6.c:799: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0C
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
	pop	af
	pop	af
	inc	sp
	ret
_borrarAddones_end::
;alien6.c:814: void pintarAddones(){
;	---------------------------------
; Function pintarAddones
; ---------------------------------
_pintarAddones_start::
_pintarAddones:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:816: if (addones_activos>0){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jp	Z,00111$
;alien6.c:817: for (i=0;i<MAX_ADDONES;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00109$:
;alien6.c:818: if ((addones[i].activo==1) && (addones[i].moved)){
	ld	a,#<(_addones)
	ld	hl,#3
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_addones)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#5
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	dec	a
	jp	NZ,00110$
	ld	hl,#1
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x06
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
	jp	Z,00110$
;alien6.c:819: printSpriteXOR(addon_sprite[addones[i].tipo],addones[i].x,addones[i].y,0);
	ld	iy,#5
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
;alien6.c:820: addones[i].moved=0;
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:821: addones[i].lastmoved=getTime();
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x08
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
;alien6.c:822: if (addones[i].nuevo){
	ld	iy,#5
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	or	a, a
	jr	Z,00110$
;alien6.c:823: addones[i].nuevo=0;	
	xor	a, a
	ld	(de),a
00110$:
;alien6.c:817: for (i=0;i<MAX_ADDONES;i++){
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0C
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
	jp	C,00109$
00111$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_pintarAddones_end::
;alien6.c:838: void inicializarAtaques(){
;	---------------------------------
; Function inicializarAtaques
; ---------------------------------
_inicializarAtaques_start::
_inicializarAtaques:
;alien6.c:840: for (i=0;i<MAX_ATAQUES;i++){
	ld	d,#0x00
	ld	bc,#0x0000
00102$:
;alien6.c:841: ataques[i].activo=0;
	ld	hl,#_ataques
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:842: ataques[i].maxStep=19;
	push	hl
	pop	iy
	inc	iy
	inc	iy
	inc	iy
	ld	0 (iy), #0x13
;alien6.c:843: ataques[i].trayectoria=trayectoria1;
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#<(_trayectoria1)
	inc	hl
	ld	(hl),#>(_trayectoria1)
;alien6.c:840: for (i=0;i<MAX_ATAQUES;i++){
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	ld	a,d
	sub	a, #0x03
	jr	C,00102$
;alien6.c:845: ataques_activos=0;
	ld	hl,#_ataques_activos + 0
	ld	(hl), #0x00
	ret
_inicializarAtaques_end::
;alien6.c:851: void crearAtaque(unsigned char malo){
;	---------------------------------
; Function crearAtaque
; ---------------------------------
_crearAtaque_start::
_crearAtaque:
	dec	sp
;alien6.c:854: while (ataques[i].activo==1){
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
;alien6.c:855: i++;
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00101$
00103$:
;alien6.c:857: if (i<max_ataques_activos){
	ld	hl,#_max_ataques_activos
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00106$
;alien6.c:858: ataques[i].activo=1;
	ld	a,#0x01
	ld	(de),a
;alien6.c:859: ataques[i].idMalo=malo;
	ld	l, e
	ld	h, d
	inc	hl
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:860: ataques[i].step=0;
	inc	de
	ld	l,e
	ld	h,d
	inc	hl
	ld	(hl),#0x00
;alien6.c:861: ataques_activos++;
	ld	hl, #_ataques_activos+0
	inc	(hl)
;alien6.c:862: malos[malo].movement=BADDIE_ATTACK;
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
;alien6.c:863: malos[malo].formSpeed=malos[malo].speed;
	ld	hl,#0x0010
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	ld	a,(de)
	ld	(bc),a
;alien6.c:864: malos[malo].speed=VELOCIDAD_ATAQUE;
	ld	a,#0x08
	ld	(de),a
00106$:
	inc	sp
	ret
_crearAtaque_end::
;alien6.c:875: void cargarMalo(unsigned char malo, unsigned char tipo){
;	---------------------------------
; Function cargarMalo
; ---------------------------------
_cargarMalo_start::
_cargarMalo:
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;alien6.c:876: malos[malo].type=tipo;
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
;alien6.c:879: malos[malo].activo=1;
	ld	hl,#0x000D
	add	hl,de
	ex	(sp), hl
;alien6.c:881: malos[malo].w=4;
	ld	hl,#0x0007
	add	hl,de
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:882: malos[malo].h=15;
	ld	hl,#0x0006
	add	hl,de
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:883: malos[malo].agresividad=4;
	ld	hl,#0x0014
	add	hl,de
	ld	iy,#11
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:884: malos[malo].vidas=1;
	ld	hl,#0x0013
	add	hl,de
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:885: malos[malo].speed=40;
	ld	hl,#0x000F
	add	hl,de
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
;alien6.c:886: malos[malo].moved=1;
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
;alien6.c:877: switch(tipo) {
	ld	iy,#16
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x01
	jp	C,00104$
	ld	a,#0x03
	sub	a, 0 (iy)
	jp	C,00104$
	ld	hl,#6
	add	hl,sp
	ld	a,0 (iy)
	add	a,#0xFF
	ld	(hl),a
	push	de
	ld	iy,#8
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
;alien6.c:878: case 1:
00101$:
;alien6.c:879: malos[malo].activo=1;
	pop	hl
	push	hl
	ld	(hl),#0x01
;alien6.c:880: malos[malo].sp0=baddie01;
	ld	a,#<(_baddie01)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie01)
	ld	(de),a
;alien6.c:881: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:882: malos[malo].h=15;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:883: malos[malo].agresividad=4;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:884: malos[malo].vidas=1;
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:885: malos[malo].speed=40;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x28
;alien6.c:886: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:887: break;
	jp	00106$
;alien6.c:888: case 2:
00102$:
;alien6.c:889: malos[malo].activo=1;
	pop	hl
	push	hl
	ld	(hl),#0x01
;alien6.c:890: malos[malo].sp0=baddie02;
	ld	a,#<(_baddie02)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie02)
	ld	(de),a
;alien6.c:891: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:892: malos[malo].h=8;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:893: malos[malo].agresividad=8;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:894: malos[malo].vidas=2;
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x02
;alien6.c:895: malos[malo].speed=16;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:896: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:897: break;
	jp	00106$
;alien6.c:898: case 3:
00103$:
;alien6.c:899: malos[malo].activo=1;
	pop	hl
	push	hl
	ld	(hl),#0x01
;alien6.c:900: malos[malo].sp0=baddie03;
	ld	a,#<(_baddie03)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie03)
	ld	(de),a
;alien6.c:901: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:902: malos[malo].h=8;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:903: malos[malo].agresividad=16;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x10
;alien6.c:904: malos[malo].vidas=3;
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x03
;alien6.c:905: malos[malo].speed=8;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x08
;alien6.c:906: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:907: break;
	jr	00106$
;alien6.c:908: default:
00104$:
;alien6.c:909: malos[malo].activo=1;
	pop	hl
	push	hl
	ld	(hl),#0x01
;alien6.c:910: malos[malo].sp0=baddie01;
	ld	a,#<(_baddie01)
	ld	(de),a
	inc	de
	ld	a,#>(_baddie01)
	ld	(de),a
;alien6.c:911: malos[malo].w=4;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x04
;alien6.c:912: malos[malo].h=15;
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:913: malos[malo].agresividad=32;
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x20
;alien6.c:914: malos[malo].vidas=1;
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
;alien6.c:915: malos[malo].speed=15;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x0F
;alien6.c:916: malos[malo].moved=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:918: }
00106$:
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
	ret
_cargarMalo_end::
;alien6.c:925: void inicializarMalos(){
;	---------------------------------
; Function inicializarMalos
; ---------------------------------
_inicializarMalos_start::
_inicializarMalos:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:929: for(i=0;i<MAX_MALOS;i++){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00113$:
;alien6.c:930: malos[i].activo=0;
	ld	hl,#_malos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x000D
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:931: malos[i].nuevo=1;
	ld	hl,#0x0011
	add	hl,bc
	ld	(hl),#0x01
;alien6.c:932: malos[i].dead=0;
	ld	hl,#0x0012
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:933: malos[i].movement=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:934: malos[i].lastmoved=0;
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
;alien6.c:929: for(i=0;i<MAX_MALOS;i++){
	ld	hl,#0x001D
	add	hl,de
	ld	e,l
	ld	d,h
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x0C
	jr	C,00113$
;alien6.c:937: switch(nivel) {
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
;alien6.c:938: case 1:
00102$:
;alien6.c:939: malos_activos=8;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x08
;alien6.c:941: for (i=0;i < 4;i++){
	ld	e,#0x14
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00115$:
;alien6.c:942: cargarMalo(i,1);
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
;alien6.c:943: malos[i].cx=x;
	ld	hl,#_malos
	add	hl,bc
	push	hl
	pop	iy
	inc	iy
	inc	iy
	ld	0 (iy), e
;alien6.c:944: x=x+12;
	ld	a,e
	add	a, #0x0C
	ld	e,a
;alien6.c:945: malos[i].cy=17;  // primera fila de malos
	inc	hl
	inc	hl
	inc	hl
	ld	d,h
	ld	h, d
	ld	(hl),#0x11
;alien6.c:941: for (i=0;i < 4;i++){
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
;alien6.c:948: for (i=4;i < 8;i++){
	ld	bc,#0x041A
	ld	de,#0x0074
00117$:
;alien6.c:949: cargarMalo(i,1);
	push	bc
	push	de
	ld	a,#0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
	pop	bc
;alien6.c:950: malos[i].cx=x;
	ld	hl,#_malos
	add	hl,de
	push	hl
	pop	iy
	inc	iy
	inc	iy
	ld	0 (iy), c
;alien6.c:951: x=x+12;
	ld	a,c
	add	a, #0x0C
	ld	c,a
;alien6.c:952: malos[i].cy=36;  // segunda fila de malos
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x24
;alien6.c:948: for (i=4;i < 8;i++){
	ld	hl,#0x001D
	add	hl,de
	ex	de,hl
	inc	b
	ld	a,b
	sub	a, #0x08
	jr	C,00117$
;alien6.c:954: for (i=0;i < malos_activos;i++){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #4
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
;alien6.c:955: malos[i].ox=malos[i].cx;
	ld	a,#<(_malos)
	ld	hl,#4
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
	ld	iy,#6
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	(bc),a
;alien6.c:956: malos[i].oy=malos[i].cy;
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
;alien6.c:957: malos[i].homeX=malos[i].cx;
	ld	hl,#0x000B
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(bc),a
;alien6.c:958: malos[i].homeY=malos[i].cy;
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
;alien6.c:954: for (i=0;i < malos_activos;i++){
	ld	hl,#4
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
;alien6.c:962: case 2:
00106$:
;alien6.c:964: malos_activos=4;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x04
;alien6.c:965: for (i=0;i < malos_activos;i++){
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
;alien6.c:966: cargarMalo(i,2);
	ld	a,#0x02
	push	af
	inc	sp
	ld	a,0 (iy)
	push	af
	inc	sp
	call	_cargarMalo
	pop	af
;alien6.c:967: malos[i].cx=x;
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
;alien6.c:968: malos[i].ox=x;
	ld	hl,#0x0004
	add	hl,de
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:969: malos[i].homeX=x;
	ld	hl,#0x000B
	add	hl,de
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:970: x=x+9;
	ld	hl,#0
	add	hl,sp
	ld	a,(hl)
	add	a, #0x09
	ld	(hl),a
;alien6.c:971: malos[i].cy=20+((i%2)*8); 
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
;alien6.c:972: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	(hl),c
;alien6.c:973: malos[i].homeY=malos[i].cy;
	ld	hl,#0x000C
	add	hl,de
	ld	(hl),c
;alien6.c:965: for (i=0;i < malos_activos;i++){
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
;alien6.c:976: case 3:
00108$:
;alien6.c:977: malos_activos=5;
	ld	hl,#_malos_activos + 0
	ld	(hl), #0x05
;alien6.c:979: for (i=0;i < malos_activos;i++){
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
;alien6.c:980: cargarMalo(i,3);
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cargarMalo
	pop	af
	pop	de
;alien6.c:981: malos[i].cx=x;
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
;alien6.c:982: malos[i].ox=x;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),e
;alien6.c:983: malos[i].homeX=x;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),e
;alien6.c:984: x=x+9;
	ld	a,e
	add	a, #0x09
	ld	e,a
;alien6.c:985: malos[i].cy=17; 
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x11
;alien6.c:986: malos[i].oy=17;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:987: malos[i].homeY=17;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:979: for (i=0;i < malos_activos;i++){
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
;alien6.c:990: default:
00110$:
;alien6.c:991: malos_activos=nivel+2;
	ld	hl,#_malos_activos
	ld	a,(#_nivel + 0)
	add	a, #0x02
	ld	(hl),a
;alien6.c:993: for (i=0;i < malos_activos;i++){
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
;alien6.c:994: cargarMalo(i,(nivel%3)+1);
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
;alien6.c:995: malos[i].cx=x;
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
;alien6.c:996: malos[i].ox=x;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),e
;alien6.c:997: malos[i].homeX=x;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),e
;alien6.c:998: x=x+9;
	ld	a,e
	add	a, #0x09
	ld	e,a
;alien6.c:999: malos[i].cy=17; 
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x11
;alien6.c:1000: malos[i].oy=17;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:1001: malos[i].homeY=17;
	ld	hl,#0x000C
	add	hl,bc
	ld	(hl),#0x11
;alien6.c:993: for (i=0;i < malos_activos;i++){
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
;alien6.c:1004: }
00131$:
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	ret
_inicializarMalos_end::
;alien6.c:1010: void moverMalos(){
;	---------------------------------
; Function moverMalos
; ---------------------------------
_moverMalos_start::
_moverMalos:
	ld	hl,#-29
	add	hl,sp
	ld	sp,hl
;alien6.c:1015: formMoved=0;
	ld	hl,#_formMoved + 0
	ld	(hl), #0x00
;alien6.c:1017: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00162$
;alien6.c:1018: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #5
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
	ld	hl, #23
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00160$:
;alien6.c:1019: if ((malos[i].activo==1) && (!malos[i].nuevo) && (getTime()-malos[i].lastmoved>malos[i].speed)){
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
	ld	iy,#15
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
	ld	hl,#15
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
	ld	iy,#15
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,d
	sbc	a, 1 (iy)
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jp	NC,00161$
;alien6.c:1021: if (formMoved==0){ 
	ld	a,(#_formMoved + 0)
	or	a, a
	jr	NZ,00104$
;alien6.c:1022: stepCount++;
	ld	hl, #_stepCount+0
	inc	(hl)
;alien6.c:1023: if (stepCount>39){	//Si llego a 40 pasos me doy la vuelta
	ld	a,#0x27
	ld	iy,#_stepCount
	sub	a, 0 (iy)
	jr	NC,00102$
;alien6.c:1024: stepCount=0;
	ld	hl,#_stepCount + 0
	ld	(hl), #0x00
;alien6.c:1025: velXForm=-velXForm;
	xor	a, a
	ld	iy,#_velXForm
	sub	a, 0 (iy)
	ld	(#_velXForm + 0),a
00102$:
;alien6.c:1027: formMoved=1;
	ld	hl,#_formMoved + 0
	ld	(hl), #0x01
00104$:
;alien6.c:1030: if (formMoved)
	ld	a,(#_formMoved + 0)
	or	a, a
	jr	Z,00106$
;alien6.c:1031: malos[i].homeX=malos[i].homeX+velXForm;
	ld	a,#<(_malos)
	ld	hl,#5
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl,#15
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0B
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a, (hl)
	ld	hl,#_velXForm
	add	a, (hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
00106$:
;alien6.c:1033: if (malos[i].movement==BADDIE_FORMATION){	
	ld	a,#<(_malos)
	ld	hl,#27
	add	hl,sp
	ld	iy,#15
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
	ld	iy,#15
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
;alien6.c:1035: if (cpc_Random()<malos[i].agresividad){		//creo ataque propocionalmente a la agresividad
	ld	hl,#9
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x14
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:1037: } else malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formaciÃ³n.
	ld	hl,#19
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x02
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:1047: if (malos[i].cy>(199-(malos[i].h))){	// si me salgo de la pantalla inicio el camino a la formaciÃ³n
	ld	hl,#25
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;alien6.c:1033: if (malos[i].movement==BADDIE_FORMATION){	
	ld	a,c
	or	a, a
	jr	NZ,00143$
;alien6.c:1034: if (ataques_activos<max_ataques_activos){
	ld	hl,#_max_ataques_activos
	ld	a,(#_ataques_activos + 0)
	sub	a, (hl)
	jr	NC,00111$
;alien6.c:1035: if (cpc_Random()<malos[i].agresividad){		//creo ataque propocionalmente a la agresividad
	call	_cpc_Random
	ld	d,l
	ld	hl, #9
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	h,(hl)
	ld	a,d
	sub	a, h
	jr	NC,00108$
;alien6.c:1036: crearAtaque(i);
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_crearAtaque
	inc	sp
	jp	00144$
00108$:
;alien6.c:1037: } else malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formaciÃ³n.
	ld	iy,#19
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
;alien6.c:1038: } else 	malos[i].cx=malos[i].cx+velXForm;		//en caso contrario me sigo moviendo con la formaciÃ³n.
	ld	iy,#19
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
;alien6.c:1040: } else if (malos[i].movement==BADDIE_ATTACK){	
	ld	a,c
	dec	a
	jp	NZ,00140$
;alien6.c:1042: while (!(ataques[j].idMalo==i)&&(ataques[j].activo==1)){ 	//busco el ataque que le corresponde a este malo
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00114$:
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
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, b
	jr	Z,00116$
	ld	a,(de)
	dec	a
	jr	NZ,00116$
;alien6.c:1043: j++;
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x06
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#2
	add	iy,sp
	inc	0 (iy)
	jr	00114$
00116$:
;alien6.c:1045: malos[i].cx=malos[i].cx+ataques[j].trayectoria[ataques[j].step]; //muevo al malo
	ld	hl, #19
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,#<(_ataques)
	ld	hl,#3
	add	hl,sp
	add	a, l
	ld	(hl),a
	ld	a,#>(_ataques)
	adc	a, h
	inc	hl
	ld	(hl),a
	ld	iy,#3
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
	ld	iy,#19
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),a
;alien6.c:1047: if (malos[i].cy>(199-(malos[i].h))){	// si me salgo de la pantalla inicio el camino a la formaciÃ³n
	ld	hl, #25
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	iy,#15
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
;alien6.c:1048: malos[i].movement=BADDIE_PATH;
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x02
;alien6.c:1049: malos[i].cy=-10;  //coloco al malo fuera de la pantalla por arriba para que tarde un poco en llegar
	ld	hl, #25
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0xF6
;alien6.c:1050: ataques[j].activo=0;
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:1051: ataques[j].idMalo=0;
	ld	l,0 (iy)
	ld	h,1 (iy)
	inc	hl
	ld	(hl),#0x00
;alien6.c:1052: ataques_activos--;
	ld	hl, #_ataques_activos+0
	dec	(hl)
	jp	00144$
00121$:
;alien6.c:1053: }else if (ataques[j].step<ataques[j].maxStep)	//actualizo prÃ³ximas siguiente paso en caso de que reiniciar el ciclo de la trayectoria
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #3
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
;alien6.c:1054: ataques[j].step++;
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
;alien6.c:1056: ataques[j].step=0;
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
	jp	00144$
00140$:
;alien6.c:1059: }else if (malos[i].
	ld	a,c
	sub	a, #0x02
	jp	NZ,00144$
;alien6.c:1062: if ((malos[i].cx=malos[i].homeX) && (malos[i].cy==malos[i].homeY)){
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0B
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	ld	b,a
	ld	hl, #19
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),b
	ld	hl,#7
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0C
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	a,b
	or	a, a
	jr	Z,00134$
	ld	hl, #25
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	b,(hl)
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	c,(hl)
	ld	a,b
	sub	a, c
	jr	NZ,00134$
;alien6.c:1063: malos[i].movement=BADDIE_FORMATION;
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x00
;alien6.c:1064: malos[i].speed=malos[i].formSpeed;
	ld	iy,#15
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
;alien6.c:1068: if (malos[i].cx<malos[i].homeX)
	ld	iy,#19
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	c,(hl)
	ld	a,(de)
	ld	l,a
	ld	a,c
	sub	a, l
	jr	NC,00126$
;alien6.c:1069: malos[i].cx++;
	inc	c
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),c
	jr	00127$
00126$:
;alien6.c:1070: else if (malos[i].cx>malos[i].homeX)
	ld	a,l
	sub	a, c
	jr	NC,00127$
;alien6.c:1071: malos[i].cx--;
	dec	c
	ld	hl, #19
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),c
00127$:
;alien6.c:1073: if (malos[i].cy<malos[i].homeY)
	ld	hl, #25
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
;alien6.c:1074: malos[i].cy++;
	inc	d
	ld	hl, #25
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
	jr	00144$
00131$:
;alien6.c:1075: else if (malos[i].cy>malos[i].homeY)
	ld	a,h
	sub	a, d
	jr	NC,00144$
;alien6.c:1076: malos[i].cy--;
	dec	d
	ld	hl, #25
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),d
00144$:
;alien6.c:1081: if ((disparos_malos_activos<max_disparos_MALOS) && (cpc_Random() < malos[i].agresividad) && (hostilidad)){
	ld	hl,#_max_disparos_MALOS
	ld	a,(#_disparos_malos_activos + 0)
	sub	a, (hl)
	jp	NC,00150$
	call	_cpc_Random
	ld	iy,#7
	add	iy,sp
	ld	0 (iy),l
	ld	hl, #9
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
;alien6.c:1082: switch (malos[i].type){
	ld	hl, #15
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
;alien6.c:1083: case 1:
00145$:
;alien6.c:1084: velocidadDisparo=8;
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x08
;alien6.c:1085: break;
	jr	00148$
;alien6.c:1086: case 2:
00146$:
;alien6.c:1087: velocidadDisparo=6;
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x06
;alien6.c:1088: break;
	jr	00148$
;alien6.c:1089: default:
00147$:
;alien6.c:1090: velocidadDisparo=4;
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x04
;alien6.c:1092: }
00148$:
;alien6.c:1093: crearDisparoMalo(malos[i].cx,malos[i].cy,velocidadDisparo);
	ld	hl, #1+0
	add	hl, sp
	ld	c, (hl)
	ld	b,#0x00
	ld	hl, #25
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	hl, #19
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
;alien6.c:1095: malos[i].lastmoved=getTime();
	ld	hl,#7
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x19
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	call	_getTime
	ld	iy,#11
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
	ld	hl, #0x000B
	add	hl, sp
	ld	bc, #0x0004
	ldir
;alien6.c:1096: malos[i].moved=1;
	ld	hl,#11
	add	hl,sp
	ld	iy,#15
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0E
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #11
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00161$:
;alien6.c:1018: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#5
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#27
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
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	ld	a,0 (iy)
	sub	a, #0x0C
	jp	C,00160$
00162$:
	ld	hl,#29
	add	hl,sp
	ld	sp,hl
	ret
_moverMalos_end::
;alien6.c:1105: void borrarMalos(){
;	---------------------------------
; Function borrarMalos
; ---------------------------------
_borrarMalos_start::
_borrarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:1107: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00117$
;alien6.c:1108: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #5
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00115$:
;alien6.c:1109: if ((malos[i].activo==1) && (malos[i].nuevo==0) && (malos[i].moved)){
	ld	a,#<(_malos)
	ld	hl,#5
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
;alien6.c:1110: if((malos[i].ox>0)&&(malos[i].ox<159)&&(malos[i].oy>0)&&(malos[i].oy<199))
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
;alien6.c:1111: printSpriteXOR(malos[i].sp0,malos[i].ox,malos[i].oy,0);
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
;alien6.c:1112: if (malos[i].dead){
	ld	a,#<(_malos)
	ld	hl,#3
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
;alien6.c:1113: malos[i].activo=0;
	ld	hl,#0x000D
	add	hl,de
	ld	(hl),#0x00
;alien6.c:1114: malos_activos--;
	ld	hl, #_malos_activos+0
	dec	(hl)
00116$:
;alien6.c:1108: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#5
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
	sub	a, #0x0C
	jp	C,00115$
00117$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_borrarMalos_end::
;alien6.c:1124: void pintarMalos(){
;	---------------------------------
; Function pintarMalos
; ---------------------------------
_pintarMalos_start::
_pintarMalos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:1126: if (malos_activos>0){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	Z,00116$
;alien6.c:1127: for (i=0;i<MAX_MALOS;i++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #1
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
;alien6.c:1128: if ((malos[i].activo==1) && (malos[i].moved)){
	ld	a,#<(_malos)
	ld	hl,#3
	add	hl,sp
	ld	iy,#5
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#5
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
;alien6.c:1130: if((malos[i].cx>0)&&(malos[i].cx<159)&&(malos[i].cy>0)&&(malos[i].cy<199))
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
;alien6.c:1131: printSpriteXOR(malos[i].sp0,malos[i].cx,malos[i].cy,0);
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
;alien6.c:1132: malos[i].ox=malos[i].cx;
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
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;alien6.c:1133: malos[i].oy=malos[i].cy;
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
	push	de
	pop	iy
	ld	a,3 (iy)
	ld	(bc),a
;alien6.c:1134: if (malos[i].nuevo) malos[i].nuevo=0;
	ld	hl,#0x0011
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00107$
	ld	(hl),#0x00
00107$:
;alien6.c:1135: malos[i].moved=0;
	ld	hl,#0x000E
	add	hl,de
	ld	(hl),#0x00
00115$:
;alien6.c:1127: for (i=0;i<MAX_MALOS;i++){
	ld	hl,#1
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
	sub	a, #0x0C
	jp	C,00114$
00116$:
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	ret
_pintarMalos_end::
;alien6.c:1146: void inicializarDisparos(){
;	---------------------------------
; Function inicializarDisparos
; ---------------------------------
_inicializarDisparos_start::
_inicializarDisparos:
	dec	sp
;alien6.c:1148: for (k=0;k<prota.max_disparos;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	de,#0x0000
00103$:
	ld	hl, #(_prota + 0x001a) + 0
	ld	b,(hl)
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, b
	jr	NC,00101$
;alien6.c:1149: disparos[k].activo=0;
	ld	hl,#_disparos
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl,#0x0006
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1150: disparos[k].sp0=shot2;
	ld	l, c
	ld	h, b
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:1151: disparos[k].cx=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:1152: disparos[k].cy=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x00
;alien6.c:1153: disparos[k].ox=0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1154: disparos[k].oy=0;
	ld	hl,#0x0005
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1155: disparos[k].nuevo=0;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1156: disparos[k].dead=0;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x00
;alien6.c:1157: disparos[k].lastmoved=0;
	ld	hl,#0x000B
	add	hl,bc
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;alien6.c:1148: for (k=0;k<prota.max_disparos;k++){
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	inc	0 (iy)
	jr	00103$
00101$:
;alien6.c:1159: disparos_activos=0;
	ld	hl,#_disparos_activos + 0
	ld	(hl), #0x00
	inc	sp
	ret
_inicializarDisparos_end::
;alien6.c:1165: void crearDisparo(unsigned char x, unsigned char y){
;	---------------------------------
; Function crearDisparo
; ---------------------------------
_crearDisparo_start::
_crearDisparo:
	push	af
;alien6.c:1168: while (disparos[k].activo==1){
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
;alien6.c:1169: k++;
	ld	hl,#0x000F
	add	hl,de
	ex	de,hl
	jr	00101$
00103$:
;alien6.c:1171: disparos[k].activo=1;
	ld	a,#0x01
	ld	(bc),a
;alien6.c:1172: disparos[k].cx=x+1;
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
;alien6.c:1173: disparos[k].cy=y-1;
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
;alien6.c:1174: disparos[k].ox=x+1;
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
;alien6.c:1175: disparos[k].oy=y-1;
	ld	a,0 (iy)
	add	a, #0x05
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),d
;alien6.c:1176: disparos[k].sp0=shot2;
	pop	hl
	push	hl
	ld	(hl),#<(_shot2)
	inc	hl
	ld	(hl),#>(_shot2)
;alien6.c:1177: disparos[k].nuevo=1;
	ld	a,0 (iy)
	add	a, #0x09
	ld	l, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	h, a
	ld	(hl),#0x01
;alien6.c:1178: disparos[k].dead=0;
	ld	a,0 (iy)
	add	a, #0x0A
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	xor	a, a
	ld	(de),a
;alien6.c:1179: disparos_activos++;
	ld	hl, #_disparos_activos+0
	inc	(hl)
;alien6.c:1180: prota.lastShot = getTime();
	call	_getTime
	ld	c,l
	ld	b,h
	ld	((_prota + 0x0014)), bc
	ld	((_prota + 0x0014) + 2), de
;alien6.c:1181: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_WyzStartEffect
	pop	af
	pop	af
	ret
_crearDisparo_end::
;alien6.c:1187: void moverDisparos(){
;	---------------------------------
; Function moverDisparos
; ---------------------------------
_moverDisparos_start::
_moverDisparos:
	ld	hl,#-33
	add	hl,sp
	ld	sp,hl
;alien6.c:1193: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00136$
;alien6.c:1194: for (i=0;i<prota.max_disparos;i++){
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #3
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	ld	hl, #30
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	ld	hl, #12
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	ld	hl, #18
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
00134$:
	ld	hl, #(_prota + 0x001a) + 0
	ld	d,(hl)
	ld	hl, #1+0
	add	hl, sp
	ld	a, (hl)
	sub	a, d
	jp	NC,00136$
;alien6.c:1195: if ((disparos[i].activo==1) && (disparos[i].dead==0)){
	ld	a,#<(_disparos)
	ld	hl,#18
	add	hl,sp
	ld	iy,#26
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#26
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	dec	a
	jp	NZ,00135$
	ld	hl,#22
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	(hl),a
	ld	a,1 (iy)
	adc	a, #0x00
	inc	hl
	ld	(hl),a
	ld	hl, #22
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#17
	add	iy,sp
	ld	0 (iy),a
	ld	a,0 (iy)
	or	a, a
	jp	NZ,00135$
;alien6.c:1196: if (disparos[i].cy>16){
	ld	hl,#26
	add	hl,sp
	ld	a,(hl)
	add	a, #0x03
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl, #26
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	iy,#17
	add	iy,sp
	ld	0 (iy),a
	ld	a,#0x10
	sub	a, 0 (iy)
	jp	NC,00123$
;alien6.c:1197: disparos[i].cy=disparos[i].cy - SALTO_DISPARO;
	ld	hl,#17
	add	hl,sp
	ld	a,(hl)
	add	a,#0xFC
	ld	(hl),a
	ld	hl, #26
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	iy,#17
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
;alien6.c:1198: for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
	ld	a,#<(_disparos)
	ld	hl,#30
	add	hl,sp
	ld	iy,#26
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl, #26+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#5
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #26+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#5
	add	iy,sp
	ld	1 (iy),a
	ld	hl, #26+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#28
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #26+1
	add	hl, sp
	ld	a, (hl)
	ld	iy,#28
	add	iy,sp
	ld	1 (iy),a
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #10
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
00131$:
;alien6.c:1199: if (malos[j].activo==1){
	ld	a,#<(_malos)
	ld	hl,#7
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
;alien6.c:1200: if (fastCollision(disparos[i].cx,disparos[i].cy,2,6,malos[j].cx,malos[j].cy,malos[j].w,malos[j].h)){  
	ld	l, c
	ld	h, b
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	ld	iy,#17
	add	iy,sp
	ld	0 (iy),a
	push	bc
	pop	iy
	ld	e,7 (iy)
	ld	hl,#0x0003
	add	hl,bc
	ld	iy,#15
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#14
	add	iy,sp
	ld	0 (iy),a
	ld	hl,#0x0002
	add	hl,bc
	ld	iy,#24
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#32
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#9
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #28
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	inc	hl
	inc	hl
	ld	d,(hl)
	push	bc
	ld	hl, #19+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	a,e
	push	af
	inc	sp
	ld	hl, #18+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #37+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl,#0x0602
	push	hl
	ld	hl, #17+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_fastCollision
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	pop	bc
	or	a, a
	jp	Z,00132$
;alien6.c:1202: disparos[i].dead=1;
	ld	iy,#26
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x0A
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,#0x01
	ld	(de),a
;alien6.c:1204: malos[j].vidas--;
	ld	hl,#0x0013
	add	hl,bc
	ex	de,hl
	ld	a,(de)
	add	a,#0xFF
	ld	(de),a
;alien6.c:1205: if (malos[j].vidas==0){
	or	a, a
	jp	NZ,00115$
;alien6.c:1206: malos[j].dead=1;
	ld	hl,#0x0012
	add	hl,bc
	ld	(hl),#0x01
;alien6.c:1208: if (malos[j].movement==BADDIE_ATTACK){
	push	bc
	pop	iy
	ld	a,9 (iy)
	dec	a
	jr	NZ,00106$
;alien6.c:1210: while ((ataques[k].idMalo!=j)&&(!ataques[k].activo))
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #20
	add	hl, sp
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00102$:
	ld	a,#<(_ataques)
	ld	hl,#20
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
;alien6.c:1211: k++;
	ld	hl,#20
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
	jr	00102$
00104$:
;alien6.c:1212: ataques[k].activo=0;
	ld	hl, #0+0
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
;alien6.c:1213: ataques_activos--;
	ld	hl, #_ataques_activos+0
	dec	(hl)
;alien6.c:1215: score+=100;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x64
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:1216: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
	jr	00107$
00106$:
;alien6.c:1219: score+=50;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x32
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:1220: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
00107$:
;alien6.c:1223: crearExplosion(0, malos[j].cx, malos[j].cy);
	ld	a,#<(_malos)
	ld	hl,#10
	add	hl,sp
	add	a, (hl)
	ld	e,a
	ld	a,#>(_malos)
	inc	hl
	adc	a, (hl)
	ld	d,a
	ld	hl,#0x0003
	add	hl,de
	ld	iy,#20
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
;alien6.c:1228: crearAddon(malos[j].cx, malos[j].cy);
	ld	hl, #20
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
;alien6.c:1231: crearExplosion(1, malos[j].cx, malos[j].cy+malos[i].h);
	ld	hl, #15
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	d,(hl)
	ld	a,#<(_malos)
	ld	hl,#3
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
	ld	iy,#24
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	d,(hl)
	push	af
	inc	sp
	ld	e, #0x01
	push	de
	call	_crearExplosion
;alien6.c:1233: if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
	inc	sp
	ld	hl,#0x0202
	ex	(sp),hl
	call	_cpc_WyzStartEffect
	pop	af
;alien6.c:1235: score+=5;
	ld	hl,#_score
	ld	a,(hl)
	add	a, #0x05
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
;alien6.c:1236: cambio_score=1;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x01
00132$:
;alien6.c:1198: for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
	ld	hl,#10
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#7
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
	sub	a, #0x0C
	jp	C,00131$
	jr	00124$
00123$:
;alien6.c:1244: disparos[i].dead=1;
	ld	hl, #22
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00124$:
;alien6.c:1246: disparos[i].moved=1;
	ld	a,#<(_disparos)
	ld	hl,#12
	add	hl,sp
	ld	iy,#20
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	hl,#20
	add	hl,sp
	ld	a,(hl)
	add	a, #0x07
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl, #20
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl),#0x01
00135$:
;alien6.c:1194: for (i=0;i<prota.max_disparos;i++){
	ld	hl,#3
	add	hl,sp
	ld	a,(hl)
	add	a, #0x1D
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#30
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#12
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#18
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	iy,#1
	add	iy,sp
	inc	0 (iy)
	jp	00134$
00136$:
	ld	hl,#33
	add	hl,sp
	ld	sp,hl
	ret
_moverDisparos_end::
;alien6.c:1256: void borrarDisparos(){
;	---------------------------------
; Function borrarDisparos
; ---------------------------------
_borrarDisparos_start::
_borrarDisparos:
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;alien6.c:1259: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00113$
;alien6.c:1260: for (k=0;k<prota.max_disparos;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	bc,#0x0000
00111$:
	ld	hl, #(_prota + 0x001a) + 0
	ld	d,(hl)
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, d
	jp	NC,00113$
;alien6.c:1261: if ((disparos[k].activo) && (!disparos[k].nuevo) && (disparos[k].moved)){
	ld	hl,#_disparos
	add	hl,bc
	ex	de,hl
	ld	hl,#0x0006
	add	hl,de
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	or	a, a
	jp	Z,00112$
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
;alien6.c:1262: printSpriteXOR(disparos[k].sp0,disparos[k].ox,disparos[k].oy,0);
	ld	l, e
	ld	h, d
	inc	hl
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
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#6
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
;alien6.c:1263: if (disparos[k].dead){
	push	de
	pop	iy
	ld	a,10 (iy)
	or	a, a
	jr	Z,00112$
;alien6.c:1264: disparos[k].activo=0;
	ld	iy,#4
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	(hl),#0x00
;alien6.c:1265: disparos_activos--;
	ld	hl, #_disparos_activos+0
	dec	(hl)
00112$:
;alien6.c:1260: for (k=0;k<prota.max_disparos;k++){
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
_borrarDisparos_end::
;alien6.c:1275: void pintarDisparos(){
;	---------------------------------
; Function pintarDisparos
; ---------------------------------
_pintarDisparos_start::
_pintarDisparos:
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;alien6.c:1278: if (disparos_activos>0){
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	Z,00113$
;alien6.c:1279: for (k=0;k<prota.max_disparos;k++){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
	ld	hl, #7
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	ld	hl, #9
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
00111$:
	ld	hl, #(_prota + 0x001a) + 0
	ld	d,(hl)
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, d
	jp	NC,00113$
;alien6.c:1280: if ((disparos[k].activo) && (disparos[k].moved) && (!disparos[k].dead)){
	ld	a,#<(_disparos)
	ld	hl,#9
	add	hl,sp
	ld	iy,#1
	add	iy,sp
	add	a, (hl)
	ld	0 (iy),a
	ld	a,#>(_disparos)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy),a
	ld	iy,#1
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	Z,00112$
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
;alien6.c:1281: printSpriteXOR(disparos[k].sp0,disparos[k].cx,disparos[k].cy,0);
	ld	hl,#5
	add	hl,sp
	ld	a,0 (iy)
	add	a, #0x03
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
	ld	d,(hl)
	ld	iy,#1
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
	ld	iy,#3
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
;alien6.c:1282: disparos[k].ox=disparos[k].cx;
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x04
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(bc)
	ld	(de),a
;alien6.c:1283: disparos[k].oy=disparos[k].cy;
	ld	a,0 (iy)
	add	a, #0x05
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	hl, #5
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a,(hl)
	ld	(de),a
;alien6.c:1284: if (disparos[k].nuevo) disparos[k].nuevo=0;
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x09
	ld	e,a
	ld	a,1 (iy)
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	or	a, a
	jr	Z,00102$
	xor	a, a
	ld	(de),a
00102$:
;alien6.c:1285: disparos[k].moved=0;
	ld	a,#<(_disparos)
	ld	hl,#7
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
00112$:
;alien6.c:1279: for (k=0;k<prota.max_disparos;k++){
	ld	hl,#7
	add	hl,sp
	ld	a,(hl)
	add	a, #0x0F
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, #0x00
	ld	(hl),a
	ld	hl,#9
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
_pintarDisparos_end::
;alien6.c:1297: void inicializarProta(){
;	---------------------------------
; Function inicializarProta
; ---------------------------------
_inicializarProta_start::
_inicializarProta:
;alien6.c:1298: prota.activo=1;
	ld	hl,#_prota + 9
	ld	(hl),#0x01
;alien6.c:1299: prota.sp0=nave;
	ld	hl,#_nave
	ld	(_prota), hl
;alien6.c:1300: prota.cx=39;
	ld	hl,#_prota + 2
	ld	(hl),#0x27
;alien6.c:1301: prota.cy=177;
	ld	hl,#_prota + 3
	ld	(hl),#0xB1
;alien6.c:1302: prota.ox=39;
	ld	hl,#_prota + 4
	ld	(hl),#0x27
;alien6.c:1303: prota.oy=177;
	ld	hl,#_prota + 5
	ld	(hl),#0xB1
;alien6.c:1304: prota.moved=0;
	ld	hl,#_prota + 11
	ld	(hl),#0x00
;alien6.c:1305: prota.dead=0;
	ld	hl,#_prota + 14
	ld	(hl),#0x00
;alien6.c:1306: prota.speed=PROTA_SPEED;
	ld	hl,#_prota + 12
	ld	(hl),#0x0A
;alien6.c:1307: prota.lastmoved=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0010)),hl
	ld	((_prota + 0x0010) + 2), hl
;alien6.c:1308: prota.lastShot=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0014)),hl
	ld	((_prota + 0x0014) + 2), hl
;alien6.c:1309: prota.reloadSpeed=80; //Velocidad de recarga
	ld	hl,#_prota + 24
	ld	(hl),#0x50
;alien6.c:1310: prota.max_disparos=2;
	ld	hl,#_prota + 26
	ld	(hl),#0x02
;alien6.c:1311: prota.escudo=0;
	ld	hl,#_prota + 25
	ld	(hl),#0x00
;alien6.c:1312: prota.motor=0;
	ld	hl,#_prota + 27
	ld	(hl),#0x00
;alien6.c:1313: animMotorSprite[0]=&fire000;
	ld	hl,#_fire000
	ld	(_animMotorSprite), hl
;alien6.c:1314: animMotorSprite[1]=&fire001;
	ld	hl,#_fire001
	ld	((_animMotorSprite + 0x0002)), hl
;alien6.c:1315: animMotorSprite[2]=&fire002;    
	ld	hl,#_fire002
	ld	((_animMotorSprite + 0x0004)), hl
;alien6.c:1316: animMotorSprite[3]=&fire003;	
	ld	hl,#_fire003
	ld	((_animMotorSprite + 0x0006)), hl
	ret
_inicializarProta_end::
;alien6.c:1322: void moverProta(){
;	---------------------------------
; Function moverProta
; ---------------------------------
_moverProta_start::
_moverProta:
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;alien6.c:1323: if (!prota.dead){
	ld	a,(#_prota + 14)
	or	a, a
	jp	NZ,00119$
;alien6.c:1324: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	ld	de,#_prota + 2
;alien6.c:1327: prota.moved=1;
;alien6.c:1324: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	dec	l
	jr	NZ,00102$
	ld	a,(de)
	ld	h,a
	ld	a,#0x4B
	sub	a, h
	jr	C,00102$
;alien6.c:1326: prota.cx++;
	ld	a,h
	inc	a
	ld	(de),a
;alien6.c:1327: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00102$:
;alien6.c:1329: if (cpc_TestKey(KEY_LEFT)==1 && prota.cx>0)   // IZQUIERDA
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
;alien6.c:1331: prota.cx--;
	add	a,#0xFF
	ld	(de),a
;alien6.c:1332: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00105$:
;alien6.c:1334: if (cpc_TestKey(KEY_UP)==1 && prota.cy>15)   // ARRIBA
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
;alien6.c:1336: prota.cy-=2;
	dec	b
	dec	b
	ld	hl,#(_prota + 0x0003)
	ld	(hl),b
;alien6.c:1337: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00108$:
;alien6.c:1339: if (cpc_TestKey(KEY_DOWN)==1 && prota.cy<177)   // ABAJO
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
	sub	a, #0xB1
	jr	NC,00111$
;alien6.c:1341: prota.cy+=2;
	inc	b
	inc	b
	ld	hl,#(_prota + 0x0003)
	ld	(hl),b
;alien6.c:1342: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00111$:
;alien6.c:1344: if ((cpc_TestKey(KEY_FIRE)==1) && (disparos_activos<prota.max_disparos) && (getTime()-prota.lastShot>prota.reloadSpeed))   // ESPACIO
	push	de
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jp	NZ,00119$
	ld	hl, #_prota + 26
	ld	b,(hl)
	ld	a,(#_disparos_activos + 0)
	sub	a, b
	jp	NC,00119$
	push	de
	call	_getTime
	ld	iy,#2
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	pop	de
	ld	hl, (#_prota + 20)
	ld	bc, (#_prota + 22)
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),l
	ld	1 (iy),h
	ld	2 (iy),c
	ld	3 (iy),b
	ld	hl,#4
	add	hl,sp
	ld	iy,#0
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
	ld	hl,#0
	add	hl,sp
	ld	a,(hl)
	ld	iy,#4
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
;alien6.c:1346: crearDisparo(prota.cx, prota.cy);
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
;alien6.c:1354: void borrarProta(){
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta_start::
_borrarProta:
;alien6.c:1355: if ((prota.moved) || (prota.dead==1)){
	ld	a,(#(_prota + 0x000b) + 0)
	or	a, a
	jr	NZ,00105$
	ld	a, (#(_prota + 0x000e) + 0)
	dec	a
	ret	NZ
00105$:
;alien6.c:1356: if (prota.escudo){
;alien6.c:1357: printSpriteXOR(escudo,prota.ox-1,prota.oy-3,0);
;alien6.c:1356: if (prota.escudo){
	ld	a,(#_prota + 25)
	or	a, a
	jr	Z,00102$
;alien6.c:1357: printSpriteXOR(escudo,prota.ox-1,prota.oy-3,0);
	ld	a, (#(_prota + 0x0005) + 0)
	add	a,#0xFD
	ld	d,a
	ld	a, (#(_prota + 0x0004) + 0)
	ld	e,a
	dec	e
	ld	bc,#_escudo+0
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00102$:
;alien6.c:1359: printSpriteXOR(prota.sp0,prota.ox,prota.oy,0);
	ld	hl, #(_prota + 0x0005) + 0
	ld	d,(hl)
	ld	hl, #(_prota + 0x0004) + 0
	ld	e,(hl)
	ld	bc, (#_prota + 0)
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1360: if (prota.dead) { 
	ld	a, (#(_prota + 0x000e) + 0)
	or	a, a
	jr	Z,00104$
;alien6.c:1361: prota.moved=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
;alien6.c:1362: prota.dead++;
	ld	a, (#(_prota + 0x000e) + 0)
	inc	a
	ld	(#(_prota + 0x000e)),a
00104$:
;alien6.c:1365: cpct_drawSprite(animMotorSprite[3],getScreenAddress(prota.ox+1,prota.oy+15));
	ld	a, (#(_prota + 0x0005) + 0)
	add	a, #0x0F
	ld	d,a
	ld	a, (#(_prota + 0x0004) + 0)
	inc	a
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	ex	de,hl
	ld	hl, (#(_animMotorSprite + 0x0006) + 0)
	push	de
	push	hl
	call	_cpct_drawSprite
	pop	af
	pop	af
	ret
_borrarProta_end::
;alien6.c:1368: void pintarProta(){
;	---------------------------------
; Function pintarProta
; ---------------------------------
_pintarProta_start::
_pintarProta:
;alien6.c:1369: if ((prota.moved) && (!prota.dead)){
	ld	a,(#(_prota + 0x000b) + 0)
	or	a, a
	ret	Z
	ld	a, (#_prota + 14)
	or	a, a
	ret	NZ
;alien6.c:1370: if (prota.escudo){
;alien6.c:1371: printSpriteXOR(escudo,prota.cx-1,prota.cy-3,0);
;alien6.c:1370: if (prota.escudo){
	ld	a,(#_prota + 25)
	or	a, a
	jr	Z,00102$
;alien6.c:1371: printSpriteXOR(escudo,prota.cx-1,prota.cy-3,0);
	ld	a, (#(_prota + 0x0003) + 0)
	add	a,#0xFD
	ld	d,a
	ld	a, (#(_prota + 0x0002) + 0)
	ld	e,a
	dec	e
	ld	bc,#_escudo+0
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
00102$:
;alien6.c:1373: printSpriteXOR(prota.sp0,prota.cx,prota.cy,0);
	ld	hl, #(_prota + 0x0003) + 0
	ld	d,(hl)
	ld	hl, #(_prota + 0x0002) + 0
	ld	e,(hl)
	ld	bc, (#_prota + 0)
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1374: prota.ox=prota.cx;
	ld	de,#_prota + 4
	ld	a, (#(_prota + 0x0002) + 0)
	ld	(de),a
;alien6.c:1375: prota.oy=prota.cy;
	ld	de,#_prota + 5
	ld	a, (#(_prota + 0x0003) + 0)
	ld	(de),a
;alien6.c:1376: prota.moved=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
	ret
_pintarProta_end::
;alien6.c:1383: void inicializarTeclado()
;	---------------------------------
; Function inicializarTeclado
; ---------------------------------
_inicializarTeclado_start::
_inicializarTeclado:
;alien6.c:1385: cpc_AssignKey (KEY_LEFT, 0x4404);		// O
	ld	hl,#0x4404
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1386: cpc_AssignKey (KEY_RIGHT, 0x4308);		// P
	inc	sp
	ld	hl,#0x4308
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1387: cpc_AssignKey (KEY_UP, 0x4808);		    // Q
	inc	sp
	ld	hl,#0x4808
	ex	(sp),hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1388: cpc_AssignKey (KEY_DOWN, 0x4820);		// A
	inc	sp
	ld	hl,#0x4820
	ex	(sp),hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1389: cpc_AssignKey (KEY_FIRE, 0x4580);		// SPACE
	inc	sp
	ld	hl,#0x4580
	ex	(sp),hl
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1390: cpc_AssignKey (KEY_ESC, 0x4804);		// ESC
	inc	sp
	ld	hl,#0x4804
	ex	(sp),hl
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1391: cpc_AssignKey (KEY_ME1, 0x4801);		// 1
	inc	sp
	ld	hl,#0x4801
	ex	(sp),hl
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1392: cpc_AssignKey (KEY_ME2, 0x4802);		// 2
	inc	sp
	ld	hl,#0x4802
	ex	(sp),hl
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1393: cpc_AssignKey (KEY_ME3, 0x4702);		// 3
	inc	sp
	ld	hl,#0x4702
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1394: cpc_AssignKey (KEY_ME4, 0x4701);		// 4
	inc	sp
	ld	hl,#0x4701
	ex	(sp),hl
	ld	a,#0x09
	push	af
	inc	sp
	call	_cpc_AssignKey
;alien6.c:1395: cpc_AssignKey (KEY_HOSTILITY, 0x4510);		// H
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
;alien6.c:1401: void mostrarVidasProta(){
;	---------------------------------
; Function mostrarVidasProta
; ---------------------------------
_mostrarVidasProta_start::
_mostrarVidasProta:
;alien6.c:1403: for (i=0;i<prota.vidas;i++){
	ld	de,#0x0000
00103$:
	ld	hl, #(_prota + 0x000f) + 0
	ld	h,(hl)
	ld	a,d
	sub	a, h
	ret	NC
;alien6.c:1404: printSpriteXOR(heart,77-(i*3),194,0);
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
;alien6.c:1403: for (i=0;i<prota.vidas;i++){
	inc	e
	inc	e
	inc	e
	inc	d
	jr	00103$
	ret
_mostrarVidasProta_end::
;alien6.c:1415: void pintarBanderasNivel(){
;	---------------------------------
; Function pintarBanderasNivel
; ---------------------------------
_pintarBanderasNivel_start::
_pintarBanderasNivel:
	dec	sp
;alien6.c:1423: aux=nivel/5;
	ld	a,#0x05
	push	af
	inc	sp
	ld	a,(_nivel)
	push	af
	inc	sp
	call	__divuschar_rrx_s
	pop	af
	ld	c,l
;alien6.c:1424: for (i=0;i<aux;i++){
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
;alien6.c:1425: printSpriteXOR(greenFlag,avance,194,0);
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
;alien6.c:1426: avance=avance+3;
	inc	e
	inc	e
	inc	e
;alien6.c:1424: for (i=0;i<aux;i++){
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00104$
00101$:
;alien6.c:1429: aux2=nivel-(aux*5);
	ld	a,c
	add	a, a
	add	a, a
	add	a, c
	ld	d,a
	ld	a,(#_nivel + 0)
	sub	a, d
	ld	d,a
;alien6.c:1430: for (i=0;i<aux2;i++){
	ld	b,e
	ld	e,#0x00
00107$:
	ld	a,e
	sub	a, d
	jr	NC,00109$
;alien6.c:1431: printSpriteXOR(redFlag,avance,194,0);
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
;alien6.c:1432: avance=avance+3;
	inc	b
	inc	b
	inc	b
;alien6.c:1430: for (i=0;i<aux2;i++){
	inc	e
	jr	00107$
00109$:
	inc	sp
	ret
_pintarBanderasNivel_end::
;alien6.c:1439: void motorProta(){
;	---------------------------------
; Function motorProta
; ---------------------------------
_motorProta_start::
_motorProta:
;alien6.c:1440: prota.motor++;
	ld	de,#_prota + 27
	ld	a,(de)
	inc	a
	ld	(de),a
;alien6.c:1441: if (prota.motor==3) prota.motor=0;
	sub	a, #0x03
	jr	NZ,00102$
	xor	a, a
	ld	(de),a
00102$:
;alien6.c:1442: cpct_drawSprite(animMotorSprite[prota.motor],getScreenAddress(prota.cx+1,prota.cy+15));
	ld	a, (#_prota + 3)
	add	a, #0x0F
	ld	b,a
	ld	a, (#_prota + 2)
	inc	a
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
	ld	a,(de)
	ld	l,a
	ld	h,#0x00
	add	hl, hl
	ld	de,#_animMotorSprite
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	call	_cpct_drawSprite
	pop	af
	pop	af
	ret
_motorProta_end::
;alien6.c:1449: void inicializarPartida(){
;	---------------------------------
; Function inicializarPartida
; ---------------------------------
_inicializarPartida_start::
_inicializarPartida:
;alien6.c:1450: prota.vidas=3;
	ld	hl,#_prota+15
	ld	(hl),#0x03
;alien6.c:1451: nivel=1;
	ld	hl,#_nivel + 0
	ld	(hl), #0x01
;alien6.c:1452: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
	ret
_inicializarPartida_end::
;alien6.c:1458: char help() {
;	---------------------------------
; Function help
; ---------------------------------
_help_start::
_help:
;alien6.c:1459: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1460: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1462: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1463: cpc_PrintGphStrXY("DEFIENDE;LA;GALAXIA;DE;LA",0*2,0*8);
	ld	de,#___str_0
	ld	hl,#0x0000
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1464: cpc_PrintGphStrXY("INVASION;DE;LAS;TROPAS;ALIENIGENAS",0*2,1*8);
	ld	de,#___str_1
	ld	hl,#0x0800
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1466: cpc_PrintGphStrXY("LA;VICTORIA;TE;REPORTARA;GRANDES",0*2,2*8);
	ld	de,#___str_2
	ld	hl,#0x1000
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1467: cpc_PrintGphStrXY("RECOMPENSAS",0*2,3*8);
	ld	de,#___str_3
	ld	hl,#0x1800
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1469: printSpriteXOR(heart,0,32,0);
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
;alien6.c:1471: cpct_drawSprite(heart,getScreenAddress(0,40));
	ld	hl,#0x2800
	push	hl
	call	_getScreenAddress
	pop	af
	ld	de,#_heart
	push	hl
	push	de
	call	_cpct_drawSprite
	pop	af
	pop	af
;alien6.c:1474: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1475: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1477: return STATE_MENU; 
	ld	l,#0x02
	ret
_help_end::
___str_0:
	.ascii "DEFIENDE;LA;GALAXIA;DE;LA"
	.db 0x00
___str_1:
	.ascii "INVASION;DE;LAS;TROPAS;ALIENIGENAS"
	.db 0x00
___str_2:
	.ascii "LA;VICTORIA;TE;REPORTARA;GRANDES"
	.db 0x00
___str_3:
	.ascii "RECOMPENSAS"
	.db 0x00
;alien6.c:1483: char gameOver()
;	---------------------------------
; Function gameOver
; ---------------------------------
_gameOver_start::
_gameOver:
;alien6.c:1485: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1486: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_4
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1487: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_5
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1488: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1489: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_5
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1490: while (cpc_AnyKeyPressed()==0);
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1491: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_5
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1492: cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,13*8);
	ld	de,#___str_6
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1493: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_5
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1494: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1496: while (!cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00104$
;alien6.c:1497: while (cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00107$
;alien6.c:1499: return STATE_MENU; 
	ld	l,#0x02
	ret
_gameOver_end::
___str_4:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_5:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_6:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;alien6.c:1505: char levelUp()
;	---------------------------------
; Function levelUp
; ---------------------------------
_levelUp_start::
_levelUp:
;alien6.c:1507: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1508: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_7
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1509: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_8
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1510: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1511: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_8
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1512: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1513: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1514: nivel++;
	ld	hl, #_nivel+0
	inc	(hl)
;alien6.c:1515: sprintf(aux_txt,";;SIGUIENTE;NIVEL;:;%02d;",nivel);
	ld	hl,#_nivel + 0
	ld	e, (hl)
	ld	a,(#_nivel + 0)
	rla
	sbc	a, a
	ld	d,a
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_9
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1516: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_8
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1517: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1518: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_8
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1519: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;alien6.c:1520: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;alien6.c:1521: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_8
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1522: cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	ld	de,#___str_10
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1523: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_8
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1524: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1525: while (!cpc_AnyKeyPressed());
00113$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00113$
;alien6.c:1526: while (cpc_AnyKeyPressed());
00116$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00116$
;alien6.c:1528: return STATE_GAME; 
	ld	l,#0x04
	ret
_levelUp_end::
___str_7:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_8:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_9:
	.ascii ";;SIGUIENTE;NIVEL;:;%02d;"
	.db 0x00
___str_10:
	.ascii ";;;;;;;PREPARADO;;;;;;;"
	.db 0x00
;alien6.c:1534: char protaDead()
;	---------------------------------
; Function protaDead
; ---------------------------------
_protaDead_start::
_protaDead:
	push	af
;alien6.c:1536: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1537: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_11
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1538: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_12
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
	ld	de,#___str_12
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1541: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1542: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1543: sprintf(aux_txt,";;;;;;;;;VIDAS;:;%02d;",prota.vidas);
	ld	a, (#(_prota + 0x000f) + 0)
	ld	e,a
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_13
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1544: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_12
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1545: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1546: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_12
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1547: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;alien6.c:1548: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;alien6.c:1549: if (prota.vidas){
	ld	a,(#(_prota + 0x000f) + 0)
	or	a, a
	jp	Z,00126$
;alien6.c:1550: sprintf(aux_txt,";;;NIVEL;ACTUAL;:;%02d;",nivel);
	ld	hl,#_nivel + 0
	ld	e, (hl)
	ld	a,(#_nivel + 0)
	rla
	sbc	a, a
	ld	d,a
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_14
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;alien6.c:1551: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_12
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1552: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1553: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_12
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1554: while (!cpc_AnyKeyPressed());
00113$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00113$
;alien6.c:1555: while (cpc_AnyKeyPressed());
00116$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00116$
;alien6.c:1556: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_12
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1557: cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	ld	de,#___str_15
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1558: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_12
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1559: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1560: while (!cpc_AnyKeyPressed());
00119$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00119$
;alien6.c:1561: while (cpc_AnyKeyPressed());
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
;alien6.c:1562: return STATE_GAME;
	ld	l,#0x04
	jr	00128$
00126$:
;alien6.c:1564: return STATE_LOSE; 
	ld	l,#0x07
00128$:
	pop	af
	ret
_protaDead_end::
___str_11:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_12:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_13:
	.ascii ";;;;;;;;;VIDAS;:;%02d;"
	.db 0x00
___str_14:
	.ascii ";;;NIVEL;ACTUAL;:;%02d;"
	.db 0x00
___str_15:
	.ascii ";;;;;;;PREPARADO;;;;;;;"
	.db 0x00
;alien6.c:1570: char win()
;	---------------------------------
; Function win
; ---------------------------------
_win_start::
_win:
;alien6.c:1572: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1573: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
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
;alien6.c:1574: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_17
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1575: cpc_PrintGphStrXY2X(aux_txt,8*2,14*8);
	ld	de,#_aux_txt
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1576: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_17
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1577: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;alien6.c:1578: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;alien6.c:1579: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_17
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1580: cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	ld	de,#___str_18
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;alien6.c:1581: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_17
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;alien6.c:1582: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1584: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;alien6.c:1585: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;alien6.c:1587: return STATE_MENU; 
	ld	l,#0x02
	ret
_win_end::
___str_16:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_17:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_18:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;alien6.c:1593: unsigned char redefineKeys()
;	---------------------------------
; Function redefineKeys
; ---------------------------------
_redefineKeys_start::
_redefineKeys:
;alien6.c:1596: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1597: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1599: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1601: cpc_PrintGphStrXY("PULSA;PARA",12*2,15*8);
	ld	de,#___str_19
	ld	hl,#0x7818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1602: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1604: cpc_PrintGphStrXY("IZQUIERDA",12*2,17*8);
	ld	de,#___str_20
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1605: cpc_RedefineKey(KEY_LEFT);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1606: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1607: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1608: cpc_PrintGphStrXY("DERECHA;;",12*2,17*8);
	ld	de,#___str_21
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1609: cpc_RedefineKey(KEY_RIGHT);
	ld	h,#0x01
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1610: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1611: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1612: cpc_PrintGphStrXY("ARRIBA;;;",12*2,17*8);
	ld	de,#___str_22
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1613: cpc_RedefineKey(KEY_UP);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1614: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1615: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1616: cpc_PrintGphStrXY("ABAJO;;;;",12*2,17*8);
	ld	de,#___str_23
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1617: cpc_RedefineKey(KEY_DOWN);
	ld	h,#0x03
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1618: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1619: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1620: cpc_PrintGphStrXY("DISPARO;;;",12*2,17*8);
	ld	de,#___str_24
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;alien6.c:1621: cpc_RedefineKey(KEY_FIRE);
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;alien6.c:1622: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;alien6.c:1623: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;alien6.c:1625: return STATE_MENU;
	ld	l,#0x02
	ret
_redefineKeys_end::
___str_19:
	.ascii "PULSA;PARA"
	.db 0x00
___str_20:
	.ascii "IZQUIERDA"
	.db 0x00
___str_21:
	.ascii "DERECHA;;"
	.db 0x00
___str_22:
	.ascii "ARRIBA;;;"
	.db 0x00
___str_23:
	.ascii "ABAJO;;;;"
	.db 0x00
___str_24:
	.ascii "DISPARO;;;"
	.db 0x00
;alien6.c:1631: void pintarMenu(){
;	---------------------------------
; Function pintarMenu
; ---------------------------------
_pintarMenu_start::
_pintarMenu:
;alien6.c:1632: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;alien6.c:1633: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;alien6.c:1635: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1636: cpc_PrintGphStrXY("SPACE;RETRO;INVADERS",20, 1*16);
	ld	de,#___str_25
	ld	hl,#0x1014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1637: letrasColorAzul();
	call	_letrasColorAzul
;alien6.c:1638: cpc_PrintGphStrXY("1;JUGAR",    30, 4*16);
	ld	de,#___str_26
	ld	hl,#0x401E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1639: cpc_PrintGphStrXY("2;AYUDA",    30, 5*16);
	ld	de,#___str_27
	ld	hl,#0x501E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1640: cpc_PrintGphStrXY("3;REDEFINIR;TECLAS",    30, 6*16);
	ld	de,#___str_28
	ld	hl,#0x601E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1641: cpc_PrintGphStrXY("ESC;SALIR",  30, 7*16);
	ld	de,#___str_29
	ld	hl,#0x701E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1643: cpc_PrintGphStrXY("C;2014;GLASNOST;CORP", 20, 10*16);
	ld	de,#___str_30
	ld	hl,#0xA014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;alien6.c:1644: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1645: cpc_PrintGphStrXY("JOHN;LOBO", 31, 11*16);
	ld	de,#___str_31
	ld	hl,#0xB01F
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
	ret
_pintarMenu_end::
___str_25:
	.ascii "SPACE;RETRO;INVADERS"
	.db 0x00
___str_26:
	.ascii "1;JUGAR"
	.db 0x00
___str_27:
	.ascii "2;AYUDA"
	.db 0x00
___str_28:
	.ascii "3;REDEFINIR;TECLAS"
	.db 0x00
___str_29:
	.ascii "ESC;SALIR"
	.db 0x00
___str_30:
	.ascii "C;2014;GLASNOST;CORP"
	.db 0x00
___str_31:
	.ascii "JOHN;LOBO"
	.db 0x00
;alien6.c:1651: char menu() {
;	---------------------------------
; Function menu
; ---------------------------------
_menu_start::
_menu:
;alien6.c:1652: char choice=-1;
	ld	d,#0xFF
;alien6.c:1654: pintarMenu();
	push	de
	call	_pintarMenu
	pop	de
;alien6.c:1656: while (choice==-1) {
00109$:
	ld	a,d
	inc	a
	jr	NZ,00112$
;alien6.c:1657: cpc_ScanKeyboard();
	push	de
	call	_cpc_ScanKeyboard
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00102$
;alien6.c:1660: inicializarPartida();
	call	_inicializarPartida
;alien6.c:1661: choice=STATE_GAME;
	ld	d,#0x04
00102$:
;alien6.c:1663: if (cpc_TestKey(KEY_ME2)==1)   
	push	de
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00104$
;alien6.c:1664: choice=STATE_HELP;
	ld	d,#0x03
00104$:
;alien6.c:1665: if (cpc_TestKey(KEY_ME3)==1)   
	push	de
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00106$
;alien6.c:1666: choice=STATE_REDEFINE;
	ld	d,#0x09
00106$:
;alien6.c:1667: if (cpc_TestKey(KEY_ESC)==1)   
	push	de
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	de
	dec	l
	jr	NZ,00109$
;alien6.c:1668: choice=STATE_EXIT;
	ld	d,#0x05
	jr	00109$
;alien6.c:1671: while (cpc_AnyKeyPressed());
00112$:
	push	de
	call	_cpc_AnyKeyPressed
	pop	de
	ld	a,h
	or	a,l
	jr	NZ,00112$
;alien6.c:1673: return choice; 
	ld	l,d
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
	ld	hl,#___str_32+0
	ld	bc,#0xC000
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1683: cpc_PrintGphStr("HIGH;SCORE",0xc01E);	
	ld	hl,#___str_33+0
	ld	bc,#0xC01E
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1684: cpc_PrintGphStr("2UP",0xc04A);
	ld	hl,#___str_34+0
	ld	bc,#0xC04A
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1685: letrasColorRojo();
	call	_letrasColorRojo
;alien6.c:1686: sprintf(aux_txt,"%05d",score);
	ld	de,#___str_35+0
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
	ld	hl,#___str_36
	ld	bc,#0xC073
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;alien6.c:1689: cpc_PrintGphStr("00000",0xc096);
	ld	hl,#___str_36
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
;alien6.c:1704: max_disparos_MALOS=1;
	ld	hl,#_max_disparos_MALOS + 0
	ld	(hl), #0x01
;alien6.c:1705: break;
	jr	00105$
;alien6.c:1706: default:
00104$:
;alien6.c:1707: max_disparos_MALOS=2;
	ld	hl,#_max_disparos_MALOS + 0
	ld	(hl), #0x02
;alien6.c:1709: }
00105$:
;alien6.c:1710: inicializarDisparosMalos();
	call	_inicializarDisparosMalos
;alien6.c:1712: inicializarExplosiones();
	call	_inicializarExplosiones
;alien6.c:1713: explosiones_lastUpdated=0; //La Ãºltima vez que se actualizaron las explosiones
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
___str_32:
	.ascii "1UP"
	.db 0x00
___str_33:
	.ascii "HIGH;SCORE"
	.db 0x00
___str_34:
	.ascii "2UP"
	.db 0x00
___str_35:
	.ascii "%05d"
	.db 0x00
___str_36:
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
00140$:
;alien6.c:1761: if ((ESTRELLAS_ACTIVADAS) && (getTime()-lastMovedEstrella>VELOCIDAD_ESTRELLAS)){
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
	jr	NC,00104$
;alien6.c:1762: estrellasMovidas=1;
	ld	hl,#_estrellasMovidas + 0
	ld	(hl), #0x01
;alien6.c:1763: moverEstrellas();
	call	_moverEstrellas
;alien6.c:1764: borrarEstrellas();
	call	_borrarEstrellas
;alien6.c:1765: lastMovedEstrella=getTime();
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
;alien6.c:1768: if ((explosiones_activas>0)&&((getTime()-explosiones_lastUpdated)>VELOCIDAD_EXPLOSIONES)){
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
	jr	NC,00107$
;alien6.c:1769: actualizarExplosiones();
	call	_actualizarExplosiones
;alien6.c:1770: animarExplosiones();
	call	_animarExplosiones
;alien6.c:1771: actualizarExplosiones();
	call	_actualizarExplosiones
;alien6.c:1772: explosiones_lastUpdated=getTime();
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
00107$:
;alien6.c:1775: if ((getTime()-prota.lastmoved)>prota.speed){
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
	jr	NC,00110$
;alien6.c:1776: prota.lastmoved=getTime();
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
;alien6.c:1777: moverProta();	//mover al prota
	call	_moverProta
;alien6.c:1778: borrarProta();	//borro al prota
	call	_borrarProta
;alien6.c:1779: pintarProta();	//Pinto al protagonista
	call	_pintarProta
00110$:
;alien6.c:1782: if ((explosion_prota_activada)&&((getTime()-explosion_prota_lastUpdated)>VELOCIDAD_EXPLOSION_PROTA)){
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jr	Z,00112$
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
	jr	NC,00112$
;alien6.c:1783: animarExplosionProta();
	call	_animarExplosionProta
;alien6.c:1784: actualizarExplosionProta();
	call	_actualizarExplosionProta
;alien6.c:1785: explosion_prota_lastUpdated=getTime();
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
00112$:
;alien6.c:1789: if (addones_activos){
	ld	a,(#_addones_activos + 0)
	or	a, a
	jr	Z,00115$
;alien6.c:1790: moverAddones();
	call	_moverAddones
;alien6.c:1791: borrarAddones();
	call	_borrarAddones
;alien6.c:1792: pintarAddones();
	call	_pintarAddones
00115$:
;alien6.c:1796: moverDisparos();  		//Mover disparos
	call	_moverDisparos
;alien6.c:1797: borrarDisparos();		//Borro disparos
	call	_borrarDisparos
;alien6.c:1798: pintarDisparos();		//Pinto Disparos
	call	_pintarDisparos
;alien6.c:1801: moverMalos();		//Muevo los malos
	call	_moverMalos
;alien6.c:1802: borrarMalos();		//Borro los malos
	call	_borrarMalos
;alien6.c:1803: pintarMalos();		//Pinto los malos
	call	_pintarMalos
;alien6.c:1806: moverDisparosMalos();	//mover disparos
	call	_moverDisparosMalos
;alien6.c:1807: borrarDisparosMalos();	//borro disparos
	call	_borrarDisparosMalos
;alien6.c:1808: pintarDisparosMalos();	//Pinto Disparos
	call	_pintarDisparosMalos
;alien6.c:1811: if (!prota.dead)
	ld	a, (#(_prota + 0x000e) + 0)
	or	a, a
	jr	NZ,00120$
;alien6.c:1812: motorProta();
	call	_motorProta
;alien6.c:1815: if ((ESTRELLAS_ACTIVADAS) && (estrellasMovidas)){
00120$:
	ld	a,(#_estrellasMovidas + 0)
	or	a, a
	jr	Z,00119$
;alien6.c:1816: pintarEstrellas();
	call	_pintarEstrellas
;alien6.c:1817: estrellasMovidas=0;
	ld	hl,#_estrellasMovidas + 0
	ld	(hl), #0x00
00119$:
;alien6.c:1821: if (cambio_score){
	ld	a,(#_cambio_score + 0)
	or	a, a
	jr	Z,00122$
;alien6.c:1822: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;alien6.c:1823: sprintf(aux_txt,"%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_37
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
00122$:
;alien6.c:1827: if ((prota.dead) && (!explosiones_activas) && (!disparos_activos) && (!disparos_malos_activos) && (!explosion_prota_activada)){
	ld	a, (#(_prota + 0x000e) + 0)
	or	a, a
	jr	Z,00124$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	NZ,00124$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jr	NZ,00124$
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jr	NZ,00124$
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jr	NZ,00124$
;alien6.c:1828: state = STATE_DEAD;
	ld	hl,#_state + 0
	ld	(hl), #0x0B
;alien6.c:1829: break;
	jr	00142$
00124$:
;alien6.c:1832: if (cpc_TestKey(KEY_ESC)==1){			// ESC
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00133$
;alien6.c:1833: state = STATE_MENU;
	ld	hl,#_state + 0
	ld	(hl), #0x02
;alien6.c:1834: break;
	jr	00142$
;alien6.c:1839: if ((DEBUG) && (cpc_TestKey(KEY_HOSTILITY)==1)){			
00133$:
	ld	a,#0x0B
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00132$
;alien6.c:1840: hostilidad=!hostilidad;
	ld	a,(#_hostilidad + 0)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(#_hostilidad + 0),a
00132$:
;alien6.c:1844: if ((malos_activos==0) && (explosiones_activas==0) && (!disparos_activos) && (!disparos_malos_activos)){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	NZ,00140$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	NZ,00140$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	NZ,00140$
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	NZ,00140$
;alien6.c:1845: state = STATE_LEVELUP;
	ld	hl,#_state + 0
	ld	(hl), #0x08
;alien6.c:1851: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00142$:
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
___str_37:
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
;alien6.c:1905: prota.escudo=0;
	ld	hl,#_prota + 25
	ld	(hl),#0x00
;alien6.c:1906: prota.max_disparos=2;
	ld	hl,#_prota + 26
	ld	(hl),#0x02
;alien6.c:1908: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;alien6.c:1909: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
;alien6.c:1911: while ((state!=STATE_LOSE) && (state!=STATE_WIN) && (state!=STATE_MENU)) {
00115$:
	ld	a,(#_state + 0)
	cp	a,#0x07
	jr	Z,00122$
	cp	a,#0x06
	jr	Z,00122$
	sub	a, #0x02
	jr	Z,00122$
;alien6.c:1913: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	call	_cpc_WyzSetPlayerOff
;alien6.c:1914: state = game();
	call	_game
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1916: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
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
;alien6.c:1917: cpc_WyzLoadSong(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_WyzLoadSong
	inc	sp
;alien6.c:1918: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;alien6.c:1920: if (state==STATE_LEVELUP)
	ld	a,(#_state + 0)
	sub	a, #0x08
	jr	NZ,00110$
;alien6.c:1921: state=levelUp();
	call	_levelUp
	ld	iy,#_state
	ld	0 (iy),l
00110$:
;alien6.c:1922: if (state==STATE_DEAD){
	ld	a,(#_state + 0)
	sub	a, #0x0B
	jr	NZ,00115$
;alien6.c:1923: prota.vidas--;
	ld	a, (#(_prota + 0x000f) + 0)
	add	a,#0xFF
	ld	(#(_prota + 0x000f)),a
;alien6.c:1924: state=protaDead();
	call	_protaDead
	ld	iy,#_state
	ld	0 (iy),l
	jr	00115$
;alien6.c:1929: case STATE_WIN:
00118$:
;alien6.c:1930: state = win();
	call	_win
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1931: break;
	jp	00122$
;alien6.c:1933: case STATE_LOSE:
00119$:
;alien6.c:1934: state = gameOver();
	call	_gameOver
	ld	iy,#_state
	ld	0 (iy),l
;alien6.c:1935: break;
	jp	00122$
;alien6.c:1937: default:
00120$:
;alien6.c:1938: state = STATE_EXIT;
	ld	hl,#_state + 0
	ld	(hl), #0x05
;alien6.c:1940: }
	jp	00122$
;alien6.c:1942: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00125$:
	call	_cpc_WyzSetPlayerOff
;alien6.c:1944: return 0;  
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
	.db #0xFC	; -4	'ü'
	.db #0xFB	; -5
	.db #0xFA	; -6
	.db #0xFA	; -6
	.db #0xFA	; -6
	.db #0xFB	; -5
	.db #0xFC	; -4	'ü'
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0xAA	; 170
	.db #0x00	; 0
	.db #0x00	; 0
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
	.db #0xBF	; -65	'¿'
	.db #0xAA	; -86
	.db #0xBF	; -65	'¿'
	.db #0xAA	; -86
	.db #0xBF	; -65	'¿'
	.db #0xAA	; -86
	.db #0xBF	; -65	'¿'
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
	.db #0x02	; 2
	.db #0xB4	; 180
	.db #0x70	; 112	'p'
	.db #0x10	; 16
	.db #0x28	; 40
__xinit__fire001:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x70	; 112	'p'
	.db #0x38	; 56	'8'
	.db #0x14	; 20
	.db #0xA0	; 160
__xinit__fire002:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x38	; 56	'8'
	.db #0xB4	; 180
	.db #0x50	; 80	'P'
	.db #0x20	; 32
__xinit__fire003:
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__addones000:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x05	; 5
	.db #0x11	; 17
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0x62	; 98	'b'
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x33	; 51	'3'
	.db #0xC0	; 192
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x11	; 17
	.db #0x80	; 128
	.db #0x0F	; 15
__xinit__addones001:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0xF3	; 243
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0xFF	; 255
	.db #0x3F	; 63
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
__xinit__addones002:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x8F	; 143
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0xA7	; 167
	.db #0x4F	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x51	; 81	'Q'
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xFF	; 255
	.db #0xAA	; 170
	.db #0x00	; 0
	.db #0xF3	; 243
	.db #0xF7	; 247
	.db #0xF3	; 243
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0xF7	; 247
	.db #0xA2	; 162
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0xFB	; 251
	.db #0xFB	; 251
	.db #0x00	; 0
	.db #0xA2	; 162
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0xA7	; 167
	.db #0x0F	; 15
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x0F	; 15
__xinit__addones003:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x5A	; 90	'Z'
	.db #0x28	; 40
	.db #0x7C	; 124
	.db #0xAD	; 173
	.db #0xF0	; 240
	.db #0x28	; 40
	.db #0x7C	; 124
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x28	; 40
	.db #0x7C	; 124
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x28	; 40
	.db #0x7C	; 124
	.db #0xA8	; 168
	.db #0x50	; 80	'P'
	.db #0x28	; 40
	.db #0x7C	; 124
	.db #0x00	; 0
	.db #0x5A	; 90	'Z'
	.db #0x14	; 20
	.db #0x54	; 84	'T'
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
__xinit__addones004:
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xA0	; 160
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
__xinit__escudo:
	.db #0x06	; 6
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x91	; 145
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x91	; 145
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
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
