del *.rel
del *.lib

sdasz80 -o alienlib.s

sdar rc alienlib.lib alienlib.rel

copy alienlib.lib c:\retro\SDCC\lib\z80
copy alienlib.h c:\retro\SDCC\include

pause