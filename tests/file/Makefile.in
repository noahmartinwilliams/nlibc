#! /usr/bin/make

INCLUDE=../../include/
include ../../include/config.mk

test: test-write test-low_print test-close test-creat test-umask-read test-chmod test-open test-read test-getcwd test-chdir test-read-eagain test-getgid test-o_append test-low_error
	echo "file tests complete"

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
	if [ -d './tmp' ]; then rm -rf ./tmp; fi
