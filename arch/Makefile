#! /usr/bin/make

INCLUDE=../include/ -I $(realpath ./$(ARC)/include)
include ../include/config.mk
ASMINCLUDE=$(realpath ./$(ARC)/include)


asm.a: loader.o file.o proc.o memory.o handle_auxv.o
	$(AR)

%.o: $(ARC)/%.c
	$(CMP)

%.o: $(ARC)/%.s
	$(AS)

clean:
	rm -f asm.a
	rm -f *.o
