#! /usr/bin/make

INCLUDE=../../include
include ../../include/config.mk

test: test-mmap2 test-mmap2-anon
	echo "memory tests complete"

test-%: %.c ../../libc.a ../../arch/asm.a
	$(CMB)
	if [ -f "./$(WRAP)-wrapper" ]; then ./$(WRAP)-wrapper; else ./$@; fi

../../libc.a:
	$(MAKE) -C ../../ libc.a

../../arch/asm.a:
	$(MAKE) -C ../../arch/ asm.a

clean: 
	if [ -d tmp/ ]; then rm -rf tmp/; fi
	rm -f test-*
