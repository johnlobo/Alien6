del *.rel
del *.lib

sdasz80 -o alienlib.s

sdar rc alienlib.lib alienlib.rel

copy alienlib.lib d:\programas\Sdcc\lib\z80
copy alienlib.h d:\programas\Sdcc\include

pause