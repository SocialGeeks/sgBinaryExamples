CC:=$(CC) -m32
AS:=$(AS) --32
CFLAGS:=-fno-builtin

executeable : libc.o source.obj 
	$(CC) $(CFLAGS) -o $@ -nostdlib $^

source.obj : source.asm
	$(AS) $(FCLAGS) -o $@ $<

source.asm : source.c
	$(CC) $(CFLAGS) -S -o $@ $<

smash : smash.c
	$(CC) -o $@ $<

.PHONY : clean

clean : 
	$(RM) libc.o source.obj source.asm smash

