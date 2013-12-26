#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-mmap2 test-mmap2-anon test-sbrk2 test-sbrk
	echo "memory tests complete"

test-%: %.c $(shell $(CC) -MM $< 2>/dev/null | cut -f 2 -d ':') ../../libc.a ../../arch/asm.a ../../include/stddef.h
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
	if [ -d tmp/ ]; then rm -rf tmp/; fi
	rm -f test-*
