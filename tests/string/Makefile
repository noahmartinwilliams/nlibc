#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-strcmp test-atoi
	echo "string tests complete"

test-%: %.c ../../libc.a ../../arch/asm.a
	$(CMB)
	MSG=$(RUNWRAP); $(PRINTPRETTY)

../../libc.a: ../../string.c
	$(MAKE) -C ../../ libc.a

../../arch/asm.a:
	$(MAKE) -C ../../arch/ asm.a

clean:
	rm -f test-*
