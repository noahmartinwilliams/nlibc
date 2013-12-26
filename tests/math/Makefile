#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-fabs
	echo "string tests complete"

test-%: %.c ../../libc.a ../../arch/asm.a ../../include/stddef.h ../../libm.a
	$(MAKE) -C ../../ include/stddef.h
	$(MAKE) -C ../../ libc.a
	$(MAKE) -C ../../arch/ asm.a
	$(CMB)
	MSG=$(RUNWRAP); $(PRINTPRETTY)

../../include/stddef.h: ../../errors
	$(MAKE) -C ../.. include/stddef.h

../../libc.a: ../../string.c
	$(MAKE) -C ../../ libc.a

../../arch/asm.a:
	$(MAKE) -C ../../arch/ asm.a

clean:
	rm -f test-*
