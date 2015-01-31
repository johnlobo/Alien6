del *.rel
del *.lib

sdasz80 -o alienlib.s

sdar rc alienlib.lib alienlib.rel

copy alienlib.lib c:\"Archivos de programa"\SDCC\lib\z80
copy alienlib.h c:\"Archivos de programa"\SDCC\include

pause