#! /usr/bin/make

INCLUDE=../include/
include ../include/config.mk


asm.a: loader.o file.o proc.o memory.o
	$(AR)

%.o: $(ARC)/%.s
	$(AS)

clean:
	rm -f asm.a
	rm -f *.o
