#! /usr/bin/make

INCLUDE=./include
include ./include/config.mk


tests: test-file test-string test-proc  test-assert
	echo "tests complete"

libc.so: libc.a arch/asm.a
	$(SHARE)

test-file: 
	$(MAKE) -C tests/file/ test

test-assert:
	$(MAKE) -C tests/assert/ test

test-string: 
	$(MAKE) -C tests/string/ test

test-proc:
	$(MAKE) -C tests/proc/ test


libc.a: string.o file2.o assert.o 
	$(AR)

arch/asm.a:
	$(MAKE) -C arch/ asm.a

%.o: %.c
	$(CMP)
	

clean:
	$(MAKE) -C arch/ clean
	$(MAKE) -C tests/assert clean
	$(MAKE) -C tests/file clean
	$(MAKE) -C tests/string clean
	$(MAKE) -C tests/proc clean
	rm -f *.o
	rm -f *.so
	rm -f test-*
	rm -f *.a
