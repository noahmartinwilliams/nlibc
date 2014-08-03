#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-exit test-echo
	echo "proc tests complete"

test-%: %.c $(shell $(CC) -MM $< 2>/dev/null | cut -f 2 -d ':') ../../libc.a ../../arch/asm.a ../../include/stddef.h
	$(CMB)
	MSG=$(RUNWRAP); $(PRINTPRETTY)

../../include/stddef.h: ../../errors
	$(MAKE) -C ../../ include/stddef.h

../../libc.a: ../../*.c
	$(MAKE) -C ../../ libc.a

../../arch/asm.a: ../../arch/$(ARC)/*
	$(MAKE) -C ../../arch/ asm.a

clean: 
	rm -f test-*
