#! /usr/bin/make

INCLUDE=./include
include ./include/config.mk

main: tests libm.so libc.so
	echo "compilation complete"

tests: test-loader test-file test-string test-proc  test-assert test-memory test-math
	echo "tests complete"

libc.so: libc.a arch/asm.a
	$(SHARE)

libm.so: libm.a
	$(SHARE)

test-loader:
	$(MAKE) -is -C tests/loader/ test

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

test-math: libm.a
	$(MAKE) -is -C tests/math/ test


libc.a: string.o file.o assert.o errno.o memory.o
	$(AR)

libm.a: math.o
	$(AR)

arch/asm.a: 
	$(MAKE) -C arch/ asm.a

%.o: %.c $(shell $(CC) -MM $< 2>/dev/null | cut -f 2 -d ':')
	$(CMP)
	

include/stddef.h: ./errors
	./bin/update-stddef errors >include/stddef.h

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
