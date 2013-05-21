#! /usr/bin/make

INCLUDE=../../include/
include ../../include/config.mk

test: test-write test-low_print test-close test-creat test-umask-read test-chmod test-read
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
	if [ -d './tmp' ]; then rm -rf ./tmp; fi
