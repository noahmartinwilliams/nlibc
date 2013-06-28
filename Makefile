#! /usr/bin/make

INCLUDE=./include
include ./include/config.mk


tests: test-file test-string test-proc  test-assert test-memory
	echo "tests complete"

libc.so: libc.a arch/asm.a
	$(SHARE)

test-file: 
	$(MAKE) -is -C tests/file/ test

test-assert:
	$(MAKE) -is -C tests/assert/ test

test-string: 
	$(MAKE) -is -C tests/string/ test

test-proc:
	$(MAKE) -is -C tests/proc/ test

test-memory:
	$(MAKE) -is -C tests/memory/ test


libc.a: string.o file2.o assert.o errno.o 
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
	$(MAKE) -C tests/memory clean
	rm -f *.o
	rm -f *.so
	rm -f test-*
	rm -f *.a
