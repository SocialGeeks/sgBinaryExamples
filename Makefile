CC:=$(CC) -m32 -fno-builtin
AS:=$(AS) --32

executeable : libc.o source.obj 
	$(CC) -o $@ -nostdlib $^

source.obj : source.asm
	$(AS) -o $@ $<

source.asm : source.c
	$(CC) -S -o $@ $<

.PHONY : clean

clean : 
	$(RM) libc.o source.obj source.asm

