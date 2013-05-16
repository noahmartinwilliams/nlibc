#! /usr/bin/make

include ../include/config.mk


asm.a: loader.o file.o proc.o
	$(AR)

%.o: $(ARC)/%.s
	$(AS)

clean:
	rm -f asm.a
	rm -f *.o
