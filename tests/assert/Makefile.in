#! /usr/bin/make

INCLUDE=../../include/
include ../../include/config.mk

test: test-assert_fail test-assert_succeed
	echo "assert tests complete"

test-%: %.c $(shell $(CC) -MM $< 2>/dev/null | cut -f 2 -d ':' ) ../../libc.a ../../arch/asm.a ../../include/stddef.h
	$(MAKE) -C ../../ include/stddef.h
	$(MAKE) -C ../../ libc.a
	$(MAKE) -C ../../arch/ asm.a
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
