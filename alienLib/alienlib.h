#ifndef  __alienlib_h__
#define __alienlib_h__

void enableFirmware();
void disableFirmware();
void printSpriteXOR(char *sprite, char x, char y, int direccion);
int getScreenAddress (char x, char y);


#endif /* __alienlib_h__ */