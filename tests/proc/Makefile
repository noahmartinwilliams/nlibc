#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-exit test-echo
	echo "proc tests complete"

test-%: %.c ../../libc.a ../../arch/asm.a ../../include/stddef.h
	$(CMB)
	MSG=$(RUNWRAP); $(PRINTPRETTY)

../../include/stddef.h: ../../errors
	$(MAKE) -C ../../ include/stddef.h

../../libc.a:
	$(MAKE) -C ../../ libc.a

../../arch/asm.a:
	$(MAKE) -C ../../arch/ asm.a

clean: 
	rm -f test-*
