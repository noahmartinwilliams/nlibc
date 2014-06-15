#! /usr/bin/make

INCLUDE=../include/ -I $(realpath ./$(ARC)/include)
include ../include/config.mk
ASMINCLUDE=$(realpath ./$(ARC)/include)


asm.a: loader.o file.o proc.o file.o
	$(AR)

%.o: $(ARC)/%.c $($(CC) -MM $< 2>/dev/null | cut -f 2 -d ':')
	$(CMP)

%.o: $(ARC)/%.s
	$(AS)

clean:
	rm -f asm.a
	rm -f *.o
