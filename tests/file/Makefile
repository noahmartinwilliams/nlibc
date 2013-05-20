#! /usr/bin/make

INCLUDE=../../include/
include ../../include/config.mk

test: test-write test-low_print
	echo "file tests complete"

test-%: %.c ../../libc.a ../../arch/asm.a
	$(CMB)
	if [ -f "./$(WRAP)-wrapper" ]; then ./$(WRAP)-wrapper; else ./$@; fi

../../libc.a: 
	$(MAKE) -C ../../ libc.a

../../arch/asm.a: 
	$(MAKE) -C ../../arch/ asm.a

clean:
	rm -f test-*
