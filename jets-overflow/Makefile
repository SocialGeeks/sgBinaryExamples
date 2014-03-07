.PHONY: clean

clean:
	rm overflow overflow-protect
all: overflow overflow-protect

overflow:
	gcc -g -Wall -fno-stack-protector -o overflow overflow.c

overflow-protect:
	gcc -g -Wall -Wstack-protector -o overflow-protect overflow.c
