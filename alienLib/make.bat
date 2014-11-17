del *.rel
del *.lib

sdasz80 -o alienlib.s

sdar rc alienlib.lib alienlib.rel

