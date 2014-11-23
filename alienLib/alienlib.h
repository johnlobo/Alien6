#ifndef  __alienlib_h__
#define __alienlib_h__

void enableFirmware();
void disableFirmware();
void setMode(unsigned char modo);
void clrScr();
void setColour(unsigned char num,  char color);
void printSpriteXOR(char *sprite, char x, char y, int direccion);
int getScreenAddress (char x, char y);

#endif /* __alienlib_h__ */