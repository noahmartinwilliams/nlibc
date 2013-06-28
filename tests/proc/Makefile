#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-exit test-echo
	echo "proc tests complete"

test-%: %.c ../../libc.a ../../arch/asm.a
	$(CMB)
	MSG=$(RUNWRAP); $(PRINTPRETTY)

../../libc.a:
	$(MAKE) -C ../../ libc.a

../../arch/asm.a:
	$(MAKE) -C ../../arch/ asm.a

clean: 
	rm -f test-*
