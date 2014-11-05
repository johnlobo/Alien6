#include <stdio.h>
#include "cpcrslib.h"
#include "cpcwyzlib.h"	//Music & Sound library
#include "datos.h"
#include "estructuras.h"
#include "sprites.h"

#define KEY_LEFT	0
#define KEY_RIGHT	1
#define KEY_UP		2
#define KEY_DOWN	3
#define KEY_FIRE	4
#define KEY_ESC		5
#define KEY_ME1		6
#define KEY_ME2		7
#define KEY_ME3		8
#define KEY_ME4		9
#define KEY_DEBUG	10
#define KEY_HOSTILITY	11

#define DEBUG 1


#define STATE_MENU    2
#define STATE_HELP    3
#define STATE_GAME    4
#define STATE_EXIT    5
#define STATE_WIN     6
#define STATE_LOSE    7
#define STATE_LEVELUP    8
#define STATE_REDEFINE    9
#define STATE_DEBUG 10
#define INITIAL_STATE STATE_MENU

#define BADDIE_FORMATION 1
#define BADDIE_ATTACK 2
#define BADDIE_PATH 3


#define STARS_NUM 10
#define ESTRELLAS_ACTIVADAS 1
#define VELOCIDAD_ESTRELLAS 10

#define MAX_DISPAROS 2
#define SALTO_DISPARO 4
#define SALTO_DISPARO_MALO 3

#define MAX_MALOS 6
#define MAX_EXPLOSIONES 6
#define MAX_ATAQUES 3
#define PROTA_SPEED 10
#define SONIDO_ACTIVADO 1

#define MAX_ADDONES 2
#define VELOCIDAD_EXPLOSIONES 40

unsigned int timer0 = 0;
unsigned int timer1 = 0;
unsigned char nFPS = 0;
unsigned long nTimeLast = 0;

TIPO_ESTRELLA aStars[STARS_NUM];
unsigned char nStar = 0;
TIPO_ESTRELLA *pStar = NULL;
long lastMovedEstrella = 0;
unsigned char estrellasMovidas = 0;
TIPO_DISPARO disparos [5];
unsigned char disparos_activos;
TIPO_DISPARO disparosMalos[4];
unsigned char disparos_activos_malos;
unsigned char MAX_DISPAROS_MALOS = 3;
TIPO_NAVE prota;
TIPO_MALO malos[6];
unsigned char malos_activos;
//explosiones
TIPO_EXPLOSION explosiones[12];
unsigned char explosiones_activas;
void *explosion_sprite[2][4];
long explosiones_lastUpdated;
//Autómata de estados
char state;
char previous_state;
//General
char nivel;
char hostilidad;
int score=0;
unsigned char cambio_score=0;
char aux_txt[6];
//Formación
unsigned char velXForm;
unsigned char velYForm;
unsigned char stepCount;
unsigned char formMoved;
//Ataques
TIPO_ATAQUE ataques[MAX_ATAQUES];
unsigned char ataques_activos;
unsigned char max_ataques_activos;
//Addones
TIPO_ADDON addones[MAX_ADDONES];
unsigned char addones_activos;
void *addon_sprite[4];

void interrupciones(void) {
	__asm
	di
	im 1
	ld hl,(#0X0039)
	ld (int_original),HL   //guardo el salto original
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
	ld	hl,#_timer0
desborde:
	inc (hl)
	inc hl
	jr	z,desborde
	POP AF
	POP HL
	EI
	RET
term:
	__endasm;
}

unsigned long getTime()
{
	unsigned long nTime = 0;
	nTime = (timer1 << 8) + timer0;
	return nTime;
}

void halt_me () {			
	__asm
	halt				
	halt
	halt
	halt
	halt
	__endasm;
}


void scr_waitVSYNC() {
	__asm 
	// Check if we are in VSYNC zone
	wait_vs:
	ld b, #0xF5
	in a, (c)
	rra
	jr nc, wait_vs // no, wait
	__endasm;
}

void pause(unsigned char p){
	unsigned char i;
	for (i=0; i < p; i++) {
		__asm
		halt
		__endasm;
	}
}

void set_colours()
{
	unsigned char x;
	for (x=0; x<17; x++)
	{
		cpc_SetColour(x,tintas[x]);
	}
}

unsigned char detectarColision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2){
	return ((x1 < x2 + w2) &&
	(x1 + w1 > x2) &&
	(y1 < y2 + h2) &&
	(h1 + y1 > y2));
}

void letrasColorAzul(){
	cpc_SetInkGphStr(0,0);
	cpc_SetInkGphStr(1,42);
	cpc_SetInkGphStr(2,34);
	cpc_SetInkGphStr(3,42);
	pause(2);
}

void letrasColorRojo(){
	cpc_SetInkGphStr(0,0);
	cpc_SetInkGphStr(1,40);
	cpc_SetInkGphStr(2,136);
	cpc_SetInkGphStr(3,40);
	pause(2);
}

unsigned char pixelEstrella(unsigned char nPixel){
	unsigned char nByte = 0;
	
	if(nPixel == 0)
	{
		nByte = 32;
	}
	else{
		nByte = 16;
	}
	
	return nByte;
}

unsigned char GetMode0PixelColorByte(unsigned char nColor, unsigned char nPixel)
{
	unsigned char nByte = 0;

	if(nPixel == 0)
	{
		nByte &= 85;

		if(nColor & 1)
		nByte |= 128;

		if(nColor & 2)
		nByte |= 8;

		if(nColor & 4)
		nByte |= 32;

		if(nColor & 8)
		nByte |= 2;
	}
	else
	{
		nByte &= 170;

		if(nColor & 1)
		nByte |= 64;

		if(nColor & 2)
		nByte |= 4;

		if(nColor & 4)
		nByte |= 16;

		if(nColor & 8)
		nByte |= 1;
	}

	return nByte;
}



void inicializarEstrellas(){
	//Inicializar estrellas
	for(nStar = 0; nStar < STARS_NUM; nStar++)
	{
		aStars[nStar].nX = cpc_Random() % 160;
		aStars[nStar].nY = (cpc_Random() % 184)+16;
		aStars[nStar].nStarType = cpc_Random() % 3;
		aStars[nStar].pLineAddress = (int *) direccionLinea[aStars[nStar].nY];
		aStars[nStar].columnOffset = aStars[nStar].nY/2;
		aStars[nStar].pCurrentAddress = aStars[nStar].pLineAddress+aStars[nStar].columnOffset;
	}
	lastMovedEstrella = 0;
}

void borrarEstrellas(){
	for(nStar = 0; nStar < STARS_NUM; nStar++)
	{
		pStar = &aStars[nStar];
		//delete star
		//		if (*pStar->pCurrentAddress==GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2))
		//			*pStar->pCurrentAddress = 0;
		*pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
		//*pStar->pCurrentAddress ^= pixelEstrella(pStar->nX % 2);
	}
}

void pintarEstrellas(){
	for(nStar = 0; nStar < STARS_NUM; nStar++)
	{
		pStar = &aStars[nStar];
		//paint star
		//pStar->pLineAddress = direccionLinea[pStar->nY];
		pStar->pCurrentAddress = (int *) direccionLinea[pStar->nY] + pStar->columnOffset;
		//		if (*pStar->pCurrentAddress==0)
		*pStar->pCurrentAddress ^= GetMode0PixelColorByte(pStar->nStarType + 1, pStar->nX % 2);
		//*pStar->pCurrentAddress ^= pixelEstrella(pStar->nX % 2);
	}
}

void moverEstrellas(){
	// Pintar Estrellas
	for(nStar = 0; nStar < STARS_NUM; nStar++)
	{
		pStar = &aStars[nStar];
		//move star
		switch(pStar->nStarType)
		{
		case 0: //slow star
			pStar->nY += 1;
			break;
		case 1: //medium star
			pStar->nY += 2;
			break;
		case 2: //fast star
			pStar->nY += 3;
			break;
		}
		
		if(pStar->nY >= 200)
		{
			pStar->nY = 16;
			//pStar->nY = rand() % 200;
			//pStar->nStarType = rand() % 3;
		}
	}
}



void inicializarExplosiones(){
	unsigned char i = 0;
	
	for (i=0;i<MAX_EXPLOSIONES;i++){
		explosiones[i].activo=0;
		explosiones[i].tipo=0;
		explosiones[i].fase=0;
		explosiones[i].cx=0;
		explosiones[i].cy=0;
		explosiones[i].ox=0;
		explosiones[i].oy=0;
		explosiones[i].memoriaPantalla=0;
		explosiones[i].h=0;
		explosiones[i].w=0;
		explosiones[i].lastmoved=0;
	}
	explosiones_activas=0;
	explosion_sprite[0][0]=&explosion02000;
	explosion_sprite[0][1]=&explosion02001;
	explosion_sprite[0][2]=&explosion02002;
	explosion_sprite[0][3]=&explosion02003;
	explosion_sprite[1][0]=&toque000;
	explosion_sprite[1][1]=&toque001;
	explosion_sprite[1][2]=&toque002;
	explosion_sprite[1][3]=&toque003;
}

//crear explosion
void crearExplosion(unsigned char tipo, unsigned char x, unsigned char y){
	unsigned char i;
	i=0;
	while (explosiones[i].activo==1) { 
		i++;
	} //buscar explosion no activa disponible
	explosiones[i].activo=1;
	explosiones[i].tipo=tipo;
	explosiones[i].fase=0;
	explosiones[i].cx=x;
	explosiones[i].cy=y;
	explosiones[i].memoriaPantalla = direccionLinea[explosiones[i].cy]+explosiones[i].cx;
	if (!tipo){
		explosiones[i].h=16;
		explosiones[i].w=4;
	} else {
		explosiones[i].h=8;
		explosiones[i].w=2;
	}
	explosiones_activas++;
	cpc_PutSpXOR((char *)explosion_sprite[tipo][0],explosiones[i].h,explosiones[i].w,explosiones[i].memoriaPantalla);
}

void actualizarExplosiones(){
	unsigned char i=0;
	if (explosiones_activas>0){
		for (i=0;i<MAX_EXPLOSIONES;i++){
			if (explosiones[i].activo==1){
				cpc_PutSpXOR((char *)explosion_sprite[explosiones[i].tipo][explosiones[i].fase],explosiones[i].h,explosiones[i].w,explosiones[i].memoriaPantalla);
			}
		}
	}
}

void animarExplosiones(){
	unsigned char i=0;
	if (explosiones_activas>0){
		for (i=0;i<MAX_EXPLOSIONES;i++){
			if (explosiones[i].activo==1){
				if (explosiones[i].fase<3){
					explosiones[i].fase++;
				}
				else {
					//borrar explosion
					explosiones[i].fase=0;
					explosiones[i].activo=0;
					explosiones[i].cx=0;
					explosiones[i].cy=0;
					explosiones_activas--;
				}
				
			}
		}
	}

}



void inicializarDisparosMalos(){
	unsigned char k;
	k=0;
	for (k=0;k<MAX_DISPAROS_MALOS;k++){
		disparos[k].activo=0;
		disparos[k].sp0=shot2;
		disparos[k].cx=0;
		disparos[k].cy=0;
		disparos[k].ox=0;
		disparos[k].oy=0;
		disparos[k].nuevo=0;
		disparos[k].dead=0;
		disparos[k].lastmoved=0;
	}
	disparos_activos_malos=0;
}

void borrarDisparosMalos(){
	unsigned char k;
	k=0;
	if (disparos_activos_malos>0){
		for (k=0;k<MAX_DISPAROS_MALOS;k++){
			if ((disparosMalos[k].activo==1) && (disparosMalos[k].nuevo==0)){
				cpc_PutSpXOR(disparosMalos[k].sp0,4,2,direccionLinea[disparosMalos[k].oy]+disparosMalos[k].ox);
				if (disparosMalos[k].dead){
					disparosMalos[k].activo=0;
					disparos_activos_malos--;
				}
			}
		}
	}
}

void moverDisparosMalos(){
	unsigned char i;
	unsigned char j;
	i=0;
	j=0;
	if (disparos_activos_malos>0){
		for (i=0;i<MAX_DISPAROS_MALOS;i++){
			if ((disparosMalos[i].activo==1) && (disparosMalos[i].dead==0)){
				if (disparosMalos[i].cy<200){
					disparosMalos[i].cy=disparosMalos[i].cy + SALTO_DISPARO_MALO;
					if (detectarColision(disparosMalos[i].cx,disparosMalos[i].cy,2,4,prota.cx,prota.cy,4,16)){  
						//matarMalo(i,j);
						//matar disparo
						disparosMalos[i].dead=1;
						//matar malo
						prota.dead=1;
						//crear explosión
						crearExplosion(0, prota.cx, prota.cy);
						//sonido explosion
						if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
						hostilidad=0;
					}	
				} else {
					//Borro Disparo
					disparosMalos[i].dead=1;
				}
			}
		}
	}

}

void crearDisparoMalo(unsigned char x, unsigned char y){
	unsigned char k;
	k=0;
	while (disparosMalos[k].activo==1){
		k++;
	}
	disparosMalos[k].activo=1;
	disparosMalos[k].cx=x+1;
	disparosMalos[k].cy=y-1;
	disparosMalos[k].ox=x+1;
	disparosMalos[k].oy=y-1;
	disparosMalos[k].sp0=shot3;
	disparosMalos[k].nuevo=1;
	disparosMalos[k].dead=0;
	disparos_activos_malos++;
	if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
}

void pintarDisparosMalo(){
	unsigned char k;
	k=0;
	if (disparos_activos_malos>0){
		for (k=0;k<MAX_DISPAROS_MALOS;k++){
			if (disparosMalos[k].activo==1){
				cpc_PutSpXOR(disparosMalos[k].sp0,4,2,direccionLinea[disparosMalos[k].cy]+disparosMalos[k].cx);
				disparosMalos[k].ox=disparosMalos[k].cx;
				disparosMalos[k].oy=disparosMalos[k].cy;
				if (disparosMalos[k].nuevo) disparosMalos[k].nuevo=0;
			}
		}
	}
}
//Inicializo los addones, pero solo los campos necesarios para la carga
void inicializarAddones(){
	unsigned char i;
	for (i=0;i<MAX_ADDONES;i++){
		addones[i].activo=0;
	}
	addones_activos=0;
	//inicializar los sprites de los addones
	addon_sprite[0]=&addon000;
	addon_sprite[1]=&addon001;
	addon_sprite[2]=&addon002;
	addon_sprite[3]=&addon003;
}
void crearAddon(unsigned char posx, unsigned char posy){
	unsigned char i;
	unsigned char aux;
	i=0;
	while (addones[i].activo==1){
		i++;
	}
	addones[i].activo=1;
	//calculo el tipo de addon en base a un valor aleatorio y una probabilidad 40% escudo, 40% rafaga, 15% freeza, 5% vida extra
	aux=cpc_Random();
	if (aux<108)
	addones[i].tipo=0;
	else if (aux<216)
	addones[i].tipo=1;
	else if (aux<243)
	addones[i].tipo=2;
	else
	addones[i].tipo=3;
	addones[i].x=posx;
	addones[i].y=posy+10;
	addones[i].moved=0;
	addones[i].lastmoved=0;
	addones[i].speed=40;
	//Aumentar el contador de addones activos
	addones_activos++;
}
//borrar Addones
void borrarAddones(){
	unsigned char i = 0;
	if (addones_activos>0){
		for (i=0;i<MAX_ADDONES;i++){
			if ((addones[i].activo==1) && (addones[i].moved)){
				cpc_PutSpXOR(addon_sprite[addones[i].tipo],6,3,direccionLinea[addones[i].y]+addones[i].x);
			}
		}
	}
}
//mover addones
void moverAddones(){
	unsigned char i;
	long lapso;
	
	lapso=getTime();
	if (addones_activos>0){
		for (i=0;i<MAX_ADDONES;i++){
			if ((addones[i].activo==1) && (lapso-addones[i].lastmoved>addones[i].speed)){
				//Movimiento de la formación
				addones[i].y++;
				//Si el addon ha llegado al final de la pantalla lo desactivo
				if (addones[i].y>199){
					addones[i].activo=0;
					addones_activos--;
				}
			}
		}
	}
}
//Pintar Addones
void pintarAddones(){
	unsigned char i = 0;
	if (addones_activos>0){
		for (i=0;i<MAX_ADDONES;i++){
			if ((addones[i].activo==1) && (addones[i].moved)){
				cpc_PutSpXOR(addon_sprite[addones[i].tipo],6,3,direccionLinea[addones[i].y]+addones[i].x);
				addones[i].moved=0;
			}
		}
	}
}

//Inicializo los ataques, pero solo los campos necesarios para la carga
void inicializarAtaques(){
	unsigned char i;
	for (i=0;i<MAX_ATAQUES;i++){
		ataques[i].activo=0;
		ataques[i].maxStep=19;
		ataques[i].trayectoria=trayectoria1;
	}
	ataques_activos=0;
}

void crearAtaque(unsigned char malo){
	unsigned char i;
	i=0;
	while (ataques[i].activo==1){
		i++;
	}
	ataques[i].activo=1;
	ataques[i].idMalo=malo;
	ataques[i].step=0;
	ataques_activos++;
}

void malosACero(){
	unsigned char i = 0;
	for (i=0;i < MAX_MALOS;i++){
		malos[i].type=0;
		malos[i].activo=0;
		malos[i].sp0=0;
		malos[i].movement=0;
		malos[i].idMovement=0;
		malos[i].cx=0;
		malos[i].cy=0;
		malos[i].homeX=0;
		malos[i].homeY=0;
		malos[i].w=0;
		malos[i].h=0;
		malos[i].nuevo=0;
		malos[i].dead=0;
		malos[i].agresividad=0;
		malos[i].vidas=0;
		malos[i].speed=0;
	}
}

void cargarMalo(unsigned char malo, unsigned char tipo){
	malos[malo].type=tipo;
	switch(tipo) {
	case 1:
		malos[malo].activo=1;
		malos[malo].sp0=baddie01;
		malos[malo].w=4;
		malos[malo].h=15;
		malos[malo].agresividad=4;
		malos[malo].vidas=1;
		malos[malo].speed=40;
		break;
	case 2:
		malos[malo].activo=1;
		malos[malo].sp0=baddie02;
		malos[malo].w=4;
		malos[malo].h=8;
		malos[malo].agresividad=8;
		malos[malo].vidas=2;
		malos[malo].speed=16;
		break;
	case 3:
		malos[malo].activo=1;
		malos[malo].sp0=baddie03;
		malos[malo].w=4;
		malos[malo].h=8;
		malos[malo].agresividad=16;
		malos[malo].vidas=3;
		malos[malo].speed=8;
		break;
	default:
		malos[malo].activo=1;
		malos[malo].sp0=baddie01;
		malos[malo].w=4;
		malos[malo].h=15;
		malos[malo].agresividad=32;
		malos[malo].vidas=1;
		malos[malo].speed=15;
		break;
	}

}


void inicializarMalos(){
	unsigned char i = 0;
	
	malosACero();
	
	switch(nivel) {
	case 1:
		malos_activos=4;
		for (i=0;i < malos_activos;i++){
			cargarMalo(i,1);
		}
		malos[0].cx=20;  // coloco en formación el segundo malo
		malos[0].cy=17;  // coloco en formación el segundo malo
		malos[1].cx=32;  // coloco en formación el segundo malo
		malos[1].cy=17;  // coloco en formación el segundo malo		
		malos[2].cx=44;  // coloco en formación el segundo malo
		malos[2].cy=17;  // coloco en formación el segundo malo
		malos[3].cx=56;  // coloco en formación el segundo malo
		malos[3].cy=17;  // coloco en formación el segundo malo		
		for (i=0;i < malos_activos;i++){
			malos[i].ox=malos[i].cx;
			malos[i].oy=malos[i].cy;
			malos[i].homeX=malos[i].cx;
			malos[i].homeY=malos[i].cy;
			malos[i].lastmoved=0;
		}

		break;
	case 2:
		malos_activos=4;
		for (i=0;i < malos_activos;i++){
			cargarMalo(i,2);
		}
		malos[0].cx=29;  // coloco en formación el segundo malo
		malos[0].cy=20;  // coloco en formación el segundo malo
		malos[1].cx=38;  // coloco en formación el segundo malo
		malos[1].cy=28;  // coloco en formación el segundo malo		
		malos[2].cx=47;  // coloco en formación el segundo malo
		malos[2].cy=20;  // coloco en formación el segundo malo
		malos[3].cx=56;  // coloco en formación el segundo malo
		malos[3].cy=28;  // coloco en formación el segundo malo		
		for (i=0;i < malos_activos;i++){
			malos[i].ox=malos[i].cx;
			malos[i].oy=malos[i].cy;
			malos[i].homeX=malos[i].cx;
			malos[i].homeY=malos[i].cy;
			malos[i].lastmoved=0;
		}

		break;
	case 3:
		malos_activos=5;
		for (i=0;i < malos_activos;i++){
			cargarMalo(i,3);
		}
		malos[0].cx=20;  // coloco en formación el segundo malo
		malos[0].cy=17;  // coloco en formación el segundo malo
		malos[1].cx=29;  // coloco en formación el segundo malo
		malos[1].cy=17;  // coloco en formación el segundo malo		
		malos[2].cx=38;  // coloco en formación el segundo malo
		malos[2].cy=17;  // coloco en formación el segundo malo
		malos[3].cx=47;  // coloco en formación el segundo malo
		malos[3].cy=17;  // coloco en formación el segundo malo
		malos[4].cx=56;  // coloco en formación el segundo malo
		malos[4].cy=17;  // coloco en formación el segundo malo			
		for (i=0;i < malos_activos;i++){
			malos[i].ox=malos[i].cx;
			malos[i].oy=malos[i].cy;
			malos[i].homeX=malos[i].cx;
			malos[i].homeY=malos[i].cy;
			malos[i].lastmoved=0;
		}

		break;
	default:
		malos_activos=5;
		for (i=0;i < malos_activos;i++){
			cargarMalo(i,3);
		}
		malos[0].cx=20;  // coloco en formación el segundo malo
		malos[0].cy=17;  // coloco en formación el segundo malo
		malos[1].cx=29;  // coloco en formación el segundo malo
		malos[1].cy=17;  // coloco en formación el segundo malo		
		malos[2].cx=38;  // coloco en formación el segundo malo
		malos[2].cy=17;  // coloco en formación el segundo malo
		malos[3].cx=47;  // coloco en formación el segundo malo
		malos[3].cy=17;  // coloco en formación el segundo malo
		malos[4].cx=56;  // coloco en formación el segundo malo
		malos[4].cy=17;  // coloco en formación el segundo malo			
		for (i=0;i < malos_activos;i++){
			malos[i].ox=malos[i].cx;
			malos[i].oy=malos[i].cy;
			malos[i].homeX=malos[i].cx;
			malos[i].homeY=malos[i].cy;
			malos[i].lastmoved=0;
		}
		break;
	}
}

void borrarMalos(){
	unsigned char i = 0;
	if (malos_activos>0){
		for (i=0;i<MAX_MALOS;i++){
			if ((malos[i].activo==1) && (malos[i].nuevo==0) && (malos[i].moved)){
				if((malos[i].ox>0)&&(malos[i].ox<160)&&(malos[i].oy>0)&&(malos[i].oy<200))
				cpc_PutSpXOR(malos[i].sp0,malos[i].h,malos[i].w,direccionLinea[malos[i].oy]+malos[i].ox);
				if (malos[i].dead){
					malos[i].activo=0;
					malos_activos--;
				}
			}
		}
	}


}

void moverMalos(){
	unsigned char i;
	unsigned char j;
	long lapso;
	
	lapso=getTime();
	formMoved=0;
	
	if (malos_activos>0){
		for (i=0;i<MAX_MALOS;i++){
			if ((malos[i].activo==1) && (lapso-malos[i].lastmoved>malos[i].speed)){
				//Movimiento de la formación				
				if (formMoved==0){ 
					stepCount++;
					if (stepCount>39){	//Si llego a 40 pasos me doy la vuelta
						stepCount=0;
						velXForm=-velXForm;
					}
					formMoved=1;
				}
				//Si se ha movido la formación actualizo la coordenada de desplazamiento para poder regresar al mismo sitio.
				if (formMoved)
				malos[i].homeX=malos[i].homeX+velXForm;
				//Movimiento del malo en formación 
				if (malos[i].movement==0){	
					if (ataques_activos<max_ataques_activos)
					if (cpc_Random()<malos[i].agresividad){	//creo ataque propocionalmente a la agresividad
						crearAtaque(i);
					} else 
					malos[i].cx=malos[i].cx+velXForm;	//en caso contrario me sigo moviendo con la formación.
					//Movimiento del malo atacando				
				} else if (malos[i].movement==1){	
					j=0;
					while (!(ataques[j].idMalo==i)&&(ataques[j].activo==1)){ 	//busco el ataque que le corresponde a este malo
						j++;
					}
					malos[i].cx=malos[i].cx+ataques[j].trayectoria[ataques[j].step]; //muevo al malo
					malos[i].cy++;
					if (malos[i].cy>200){	// si me salgo de la pantalla inicio el camino a la formación
						malos[i].movement=2;
						malos[i].cy=-10;  //coloco al malo fuera de la pantalla por arriba para que tarde un poco en llegar
						ataques[j].activo=0;
						ataques[j].idMalo=0;
						ataques_activos--;
					}else if (ataques[j].step<ataques[j].maxStep)	//actualizo próximas siguiente paso en caso de que reiniciar el ciclo de la trayectoria
					ataques[j].step++;
					else 
					ataques[j].step=0;
					
					//malo regresando a formación
				}else if (malos[i].movement==2){
					//Si he llegado al destino me pongo en modo formación
					if ((malos[i].cx=malos[i].homeX) && (malos[i].cy==malos[i].homeY)){
						malos[i].movement=0;
						//en caso contrario ajusto desplazamientos.
					}else{ 
						//ajuste del desplazamiento horizontal
						if (malos[i].cx<malos[i].homeX)
						malos[i].cx++;
						else if (malos[i].cx>malos[i].homeX)
						malos[i].cx--;
						//ajuste del desplazamiento vertical	
						if (malos[i].cy<malos[i].homeY)
						malos[i].cy++;
						else if (malos[i].cy>malos[i].homeY)
						malos[i].cy--;
					}
					
				}
				//gestión de disparos - Probablmente me lleve esto al ataque...
				if ((disparos_activos_malos<MAX_DISPAROS_MALOS) && (cpc_Random() < malos[i].agresividad) && (hostilidad)){
					crearDisparoMalo(malos[i].cx,malos[i].cy);
				}
				malos[i].lastmoved=lapso;
				malos[i].moved=1;
			}
		}
	}
}

void pintarMalos(){
	unsigned char i = 0;
	if (malos_activos>0){
		for (i=0;i<MAX_MALOS;i++){
			if ((malos[i].activo==1) && (malos[i].moved)){
				//Pinto los malos si están dentro de la pantalla
				if((malos[i].cx>0)&&(malos[i].cx<160)&&(malos[i].cy>0)&&(malos[i].cy<200))
				cpc_PutSpXOR(malos[i].sp0,malos[i].h,malos[i].w,direccionLinea[malos[i].cy]+malos[i].cx);
				malos[i].ox=malos[i].cx;
				malos[i].oy=malos[i].cy;
				if (malos[i].nuevo) malos[i].nuevo=0;
				malos[i].moved=0;
			}
		}
	}


}

//Inicializar los disparos del prota
void inicializarDisparos(){
	unsigned char k;
	k=0;
	for (k=0;k<MAX_DISPAROS;k++){
		disparos[k].activo=0;
		disparos[k].sp0=shot2;
		disparos[k].cx=0;
		disparos[k].cy=0;
		disparos[k].ox=0;
		disparos[k].oy=0;
		disparos[k].nuevo=0;
		disparos[k].dead=0;
		disparos[k].lastmoved=0;
	}
	disparos_activos=0;
}

void crearDisparo(unsigned char x, unsigned char y){
	unsigned char k;
	k=0;
	while (disparos[k].activo==1){
		k++;
	}
	disparos[k].activo=1;
	disparos[k].cx=x+1;
	disparos[k].cy=y-1;
	disparos[k].ox=x+1;
	disparos[k].oy=y-1;
	disparos[k].sp0=shot2;
	disparos[k].nuevo=1;
	disparos[k].dead=0;
	disparos_activos++;
	prota.lastShot = getTime();
	if (SONIDO_ACTIVADO) cpc_WyzStartEffect(0,0);
}

void borrarDisparos(){
	unsigned char k;
	k=0;
	if (disparos_activos>0){
		for (k=0;k<MAX_DISPAROS;k++){
			if ((disparos[k].activo==1) && (disparos[k].nuevo==0)){
				cpc_PutSpXOR(disparos[k].sp0,6,2,direccionLinea[disparos[k].oy]+disparos[k].ox);
				if (disparos[k].dead){
					disparos[k].activo=0;
					disparos_activos--;
				}
			}
		}
	}
}

void moverDisparos(){
	unsigned char i;
	unsigned char j;
	i=0;
	j=0;
	if (disparos_activos>0){
		for (i=0;i<MAX_DISPAROS;i++){
			if ((disparos[i].activo==1) && (disparos[i].dead==0)){
				if (disparos[i].cy>16){
					disparos[i].cy=disparos[i].cy - SALTO_DISPARO;
					for (j=0;j<MAX_MALOS;j++){	//compruebo colisiones con los malos.
						if (malos[j].activo==1){
							if (detectarColision(disparos[i].cx,disparos[i].cy,2,6,malos[j].cx,malos[j].cy,malos[j].w,malos[j].h)){  
								//matarMalo(i,j);
								//matar disparo
								disparos[i].dead=1;
								//matar malo
								malos[j].vidas--;
								if (malos[j].vidas==0){
									malos[j].dead=1;
									//crear explosión
									crearExplosion(0, malos[j].cx, malos[j].cy);
									//sonido explosion
									if (SONIDO_ACTIVADO) cpc_WyzStartEffect(1,3);
									//actualizar puntuación
									score+=10;
									cambio_score=1;
									//Creo un addon un 10% de las veces
									if (cpc_Random()<25)
										crearAddon(malos[j].cx, malos[j].cy);
								} else {
									//crear explosión
									crearExplosion(1, malos[j].cx, malos[j].cy+malos[i].h);
									//sonido explosion
									if (SONIDO_ACTIVADO) cpc_WyzStartEffect(2,2);
									//actualizar puntuación
								}
								
							}	
						}
					}
				} else {
					//Borro Disparo
					disparos[i].dead=1;
				}
			}
		}
	}

}



void pintarDisparos(){
	unsigned char k;
	k=0;
	if (disparos_activos>0){
		for (k=0;k<MAX_DISPAROS;k++){
			if (disparos[k].activo==1){
				cpc_PutSpXOR(disparos[k].sp0,6,2,direccionLinea[disparos[k].cy]+disparos[k].cx);
				disparos[k].ox=disparos[k].cx;
				disparos[k].oy=disparos[k].cy;
				if (disparos[k].nuevo) disparos[k].nuevo=0;
			}
		}
	}
}

void inicializarProta(){
	prota.activo=1;
	prota.sp0=nave;
	prota.cx=39;
	prota.cy=178;
	prota.ox=39;
	prota.oy=179;
	prota.moved=0;
	prota.dead=0;
	prota.speed=PROTA_SPEED;
	prota.lastmoved=0;
	prota.lastShot=0;
	prota.reloadSpeed=20; //Velocidad de recarga
}

void borrarProta(){
	if ((prota.moved) || (prota.dead==1)){
		cpc_PutSpXOR(prota.sp0,16,4,direccionLinea[prota.oy]+prota.ox);
		if (prota.dead) { 
			prota.moved=0;
			prota.dead++;
		}
	}
}


void moverProta(){
	if (!prota.dead){
		if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
		{
			prota.cx++;
			prota.moved=1;
		}
		if (cpc_TestKey(KEY_LEFT)==1 && prota.cx>0)   // IZQUIERDA
		{
			prota.cx--;
			prota.moved=1;
		}
		if (cpc_TestKey(KEY_UP)==1 && prota.cy>15)   // ARRIBA
		{
			prota.cy-=2;
			prota.moved=1;
		}
		if (cpc_TestKey(KEY_DOWN)==1 && prota.cy<178)   // ABAJO
		{
			prota.cy+=2;
			prota.moved=1;
		}
		if ((cpc_TestKey(KEY_FIRE)==1) && (getTime()-prota.lastShot>prota.reloadSpeed))   // ESPACIO
		{
			crearDisparo(prota.cx, prota.cy);
		}
	}
}

void pintarProta(){
	if ((prota.moved) && (!prota.dead)){
		cpc_PutSpXOR(prota.sp0,16,4,direccionLinea[prota.cy]+prota.cx);
		prota.ox=prota.cx;
		prota.oy=prota.cy;
		prota.moved=0;
	}
}


void inicializarTeclado()
{
	cpc_AssignKey (KEY_LEFT, 0x4404);		// O
	cpc_AssignKey (KEY_RIGHT, 0x4308);		// P
	cpc_AssignKey (KEY_UP, 0x4808);		    // Q
	cpc_AssignKey (KEY_DOWN, 0x4820);		// A
	cpc_AssignKey (KEY_FIRE, 0x4580);		// SPACE
	cpc_AssignKey (KEY_ESC, 0x4804);		// ESC
	cpc_AssignKey (KEY_ME1, 0x4801);		// 1
	cpc_AssignKey (KEY_ME2, 0x4802);		// 2
	cpc_AssignKey (KEY_ME3, 0x4702);		// 3
	cpc_AssignKey (KEY_ME4, 0x4701);		// 4
	cpc_AssignKey (KEY_DEBUG, 0x4720);		// D
	cpc_AssignKey (KEY_HOSTILITY, 0x4510);		// H
}

void mostrarVidasProta(){
	unsigned char i = 0;
	for (i=0;i<prota.vidas;i++){
		cpc_PutSpXOR(heart,5,3,direccionLinea[195]+(77-(i*3)));
	}
}

void mostrarNivel(){
	unsigned char i;
	unsigned char avance;
	unsigned char aux;
	unsigned char aux2;
	
	avance=0;
	//Pînto Banderas verdes una cada cinco niveles
	aux=nivel/5;
	for (i=0;i<aux;i++){
		cpc_PutSpXOR(greenFlag,6,2,direccionLinea[194]+avance);
		avance=avance+3;
	}
	//Pînto Banderas rojas una cada nivel
	aux2=nivel-(aux*5);
	for (i=0;i<aux2;i++){
		cpc_PutSpXOR(redFlag,6,2,direccionLinea[194]+avance);
		avance=avance+3;
	}
}
void inicializarPartida(){
	prota.vidas=3;
	nivel=1;
	score=0;
}

void debug(){
	cpc_ClrScr();				//fills scr with ink 0
	letrasColorAzul();
	sprintf(aux_txt,"DISPAROS;ACTIVOS;%03u",disparos_activos);
	cpc_PrintGphStrXY(aux_txt,2*2,0*8);
	sprintf(aux_txt,"DISPAROS;MALOS;ACTIVOS;%03u",disparos_activos_malos);
	cpc_PrintGphStrXY(aux_txt,2*2,1*8);
	sprintf(aux_txt,"MALOS;ACTIVOS;%03u",malos_activos);
	cpc_PrintGphStrXY(aux_txt,2*2,2*8);
	pause(6);

	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	cpc_ClrScr();				//fills scr with ink 0
}

char help() {
	cpc_ClrScr();				//fills scr with ink 0
	cpc_SetMode(0);				//hardware call to set mode 1

	letrasColorAzul();
	cpc_PrintGphStrXY("BANQUERO:PONDRA;TU;DINERO",20,0*11);
	cpc_PrintGphStrXY(";;;;;;;;;FUERA;DEL;ALCANCE",20,1*11);
	cpc_PrintGphStrXY(";;;;;;;;;DEL;FISCO",20,2*11);

	cpc_PrintGphStrXY("PROMOTOR:TE;DARA;SOBRES;A",20,4*11);
	cpc_PrintGphStrXY(";;;;;;;;;CAMBIO;DE",20,5*11);
	cpc_PrintGphStrXY(";;;;;;;;;ADJUDICACIONES",20,6*11);

	cpc_PrintGphStrXY("JUEZ:SU;MAZA;HARA;CAER;SOBRE",20,8*11);
	cpc_PrintGphStrXY(";;;;;;;;;TI;EL;PESO;DE;LA;LEY",20,9*11);

	cpc_PrintGphStrXY("LARCENAS:SIMPATICO;LADRONZUELO",20,11*11);

	cpc_PrintGphStrXY("TECLAS:;CURSORES;Y;BARRA;DE;ESPACIO",3,16*11);


	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());

	return STATE_MENU; 
}

char gameOver()
{
	letrasColorAzul();
	sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY(aux_txt,8*2,14*8);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (cpc_AnyKeyPressed()==0);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	pause(6);

	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	return STATE_MENU; 
}

char levelUp()
{
	letrasColorAzul();
	sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY(aux_txt,8*2,14*8);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (cpc_AnyKeyPressed()==0);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY(";;;;SIGUIENTE;NIVEL;;;;",8*2,14*8);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	pause(6);

	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	nivel++;
	
	return STATE_GAME; 
}

char win()
{
	letrasColorAzul();
	sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY(aux_txt,8*2,14*8);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (cpc_AnyKeyPressed()==0);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	cpc_PrintGphStrXY(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	pause(6);

	while (cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	return STATE_MENU; 
}

unsigned char redefineKeys()
{
	
	cpc_SetMode(0);				//hardware call to set mode 1
	cpc_ClrScr();				//fills scr with ink 0

	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOn();
	
	letrasColorAzul();

	cpc_PrintGphStrXY("PULSA;PARA",12*2,15*8);
	letrasColorRojo();
	
	cpc_PrintGphStrXY("IZQUIERDA",12*2,17*8);
	cpc_RedefineKey(KEY_LEFT);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("DERECHA;;",12*2,17*8);
	cpc_RedefineKey(KEY_RIGHT);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("ARRIBA;;;",12*2,17*8);
	cpc_RedefineKey(KEY_UP);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("ABAJO;;;;",12*2,17*8);
	cpc_RedefineKey(KEY_DOWN);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("DISPARO;;;",12*2,17*8);
	cpc_RedefineKey(KEY_FIRE);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	
	return STATE_MENU;
}

void pintarMenu(){
	cpc_ClrScr();				//fills scr with ink 0
	cpc_SetMode(0);				//hardware call to set mode 1

	letrasColorRojo();
	cpc_PrintGphStrXY("SPACE;RETRO;INVADERS",20, 1*16);
	letrasColorAzul();
	cpc_PrintGphStrXY("1;JUGAR",    30, 4*16);
	cpc_PrintGphStrXY("2;AYUDA",    30, 5*16);
	cpc_PrintGphStrXY("3;REDEFINIR;TECLAS",    30, 6*16);
	cpc_PrintGphStrXY("ESC;SALIR",  30, 7*16);

	cpc_PrintGphStrXY("C;2014;GLASNOST;CORP", 20, 10*16);
	letrasColorRojo();
	cpc_PrintGphStrXY("JOHN;LOBO", 31, 11*16);
}

char menu() {
	char choice=-1;
	
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOn();

	pintarMenu();

	while (choice==-1) {
		cpc_ScanKeyboard();

		if (cpc_TestKey(KEY_ME1)==1){
			inicializarPartida();
			choice=STATE_GAME;
		}
		if (cpc_TestKey(KEY_ME2)==1)   
		choice=STATE_HELP;
		if (cpc_TestKey(KEY_ME3)==1)   
		choice=STATE_REDEFINE;
		if (cpc_TestKey(KEY_ESC)==1)   
		choice=STATE_EXIT;
		if ((DEBUG) && (cpc_TestKey(KEY_DEBUG)==1)){
			debug();
			pintarMenu();
		}
	}

	while (cpc_AnyKeyPressed());
	
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();

	return choice; 
}

void inicializarNivel(){
	// Pinto la cabecera
	letrasColorAzul();
	cpc_PrintGphStr("1UP",0xc000);
	cpc_PrintGphStr("HIGH;SCORE",0xc01E);	
	cpc_PrintGphStr("2UP",0xc04A);
	letrasColorRojo();
	sprintf(aux_txt,"%05d",score);
	cpc_PrintGphStr(aux_txt,0xc050);
	cpc_PrintGphStr("00000",0xc073);	
	cpc_PrintGphStr("00000",0xc096);
	
	// Pinto las estrellas por primera ver si están activadas
	if(ESTRELLAS_ACTIVADAS){
		inicializarEstrellas();
		pintarEstrellas();
	}

	inicializarMalos();
	inicializarProta();
	prota.moved=1;
	inicializarDisparos();
	inicializarDisparosMalos();
	inicializarExplosiones();
	
	pintarMalos();
	pintarProta();
	mostrarVidasProta();
	mostrarNivel();
	
	stepCount=19;
	velXForm=1;
	switch (nivel){
	case 1:
		max_ataques_activos=2;
		break;
	default:
		max_ataques_activos=2;
		break;
	}
	inicializarAtaques();
	
	inicializarAddones();
	
	hostilidad=0;  //este flag hace que los enemigos disparen
	
	explosiones_lastUpdated=0; //La última vez que se actualizaron las explosiones
}

//Bucle principal de juego
unsigned char game()
{
	cpc_ClrScr();				//fills scr with ink 0
	
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOn();
	
	
	inicializarNivel();
	
	while(1)
	{

		//Espera al barrido
		//scr_waitVSYNC();
		
		//Bloque de movimiento 
		if ((ESTRELLAS_ACTIVADAS) && (getTime()-lastMovedEstrella>VELOCIDAD_ESTRELLAS)){
			estrellasMovidas=1;
			moverEstrellas();
			borrarEstrellas();
			lastMovedEstrella=getTime();
		}
		
		
		//Mostrar explosiones
		if ((explosiones_activas>0)&&((getTime()-explosiones_lastUpdated)>VELOCIDAD_EXPLOSIONES)){
			actualizarExplosiones();
			animarExplosiones();
			actualizarExplosiones();
		}
		
		

		//mover al protagonista
		if ((getTime()-prota.lastmoved)>prota.speed){
			prota.lastmoved=getTime();
			moverProta();	//mover al prota
			borrarProta();	//borro al prota
			pintarProta();	//Pinto al protagonista
		}

		borrarAddones();
		moverAddones();
		pintarAddones();

		moverMalos();		//Muevo los malos
		borrarMalos();		//Borro los malos
		pintarMalos();		//Pinto los malos

		moverDisparos();  		//Mover disparos
		borrarDisparos();		//Borro disparos
		pintarDisparos();		//Pinto Disparos

		moverDisparosMalos();	//mover disparos
		borrarDisparosMalos();	//borro disparos
		pintarDisparosMalo();	//Pinto Disparos
		
		//Pinto las estrellas
		if ((ESTRELLAS_ACTIVADAS) && (estrellasMovidas)){
			pintarEstrellas();
			estrellasMovidas=0;
		}
		
		//pinta puntuaciones
		if (cambio_score){
			cambio_score=0;
			sprintf(aux_txt,"%05d",score);
			cpc_PrintGphStr(aux_txt,0xc050);
		}
		
		if ((prota.dead) && (!explosiones_activas) && (!disparos_activos) && (!disparos_activos_malos)){
			state = STATE_LOSE;
			break;
		}

		if (cpc_TestKey(KEY_ESC)==1){			// ESC
			state = STATE_MENU;
			break;
		}
		
		if ((DEBUG) && (cpc_TestKey(KEY_DEBUG)==1)){			// DEBUG
			debug();
		}
		
		if ((DEBUG) && (cpc_TestKey(KEY_HOSTILITY)==1)){			// DEBUG
			hostilidad=!hostilidad;
		}
		
		
		if ((malos_activos==0) && (explosiones_activas==0) && (!disparos_activos) && (!disparos_activos_malos)){
			state = STATE_LEVELUP;
			break;
		}
		
	}
	
	//apago la música
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	
	return state;
}

//Setup inicial
void InitialSetUp() {
	
	//cpc_DisableFirmware();
	
	interrupciones();
	//halt_me();
	
	cpc_SetMode(0);				//hardware call to set mode 1
	set_colours();
	cpc_ClrScr();				//fills scr with ink 0
	
	letrasColorAzul();

	inicializarTeclado();
	
	nivel=1;
	prota.vidas=3;

	//Inicializo putuacion
	cambio_score=0;
	score=0;

	if (SONIDO_ACTIVADO){	
		cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
		cpc_WyzLoadSong(0);
		cpc_WyzSetPlayerOn();
	}

	state = INITIAL_STATE;

}

//Bucle principal del Juego
int main() {
	
	InitialSetUp();

	while (state != STATE_EXIT) {
		switch(state) {
		case STATE_MENU:
			state = menu();
			break;
			
		case STATE_REDEFINE:
			state = redefineKeys();
			break;

		case STATE_HELP:
			state = help();
			break;

		case STATE_GAME:
			state = game();
			break;

		case STATE_WIN:
			state = win();
			break;
			
		case STATE_LEVELUP:
			state = levelUp();
			break;
			
		case STATE_LOSE:
			state = gameOver();
			break;
			
		default:
			state = STATE_EXIT;
			break;
		}
	}
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();

	return 0;  
}