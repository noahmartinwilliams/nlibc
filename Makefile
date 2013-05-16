#! /usr/bin/make

INCLUDE=./include
include ./include/config.mk


tests: test-file-write test-string-strcmp test-proc-exit test-file-low_print test-assert
	echo "tests complete"

libc.so: libc.a arch/asm.a
	$(SHARE)

test-file-%: tests/file/%.c  libc.a arch/asm.a
	$(CMB)
	./tests/file/$@-wrapper

test-assert:
	$(MAKE) -C tests/assert/ test

test-string-%: tests/string/%.c  libc.a arch/asm.a
	$(CMB)
	./tests/string/$@-wrapper

test-proc-%: tests/proc/%.c  libc.a arch/asm.a
	$(CMB)
	./tests/proc/$@-wrapper


libc.a: string.o file2.o assert.o 
	$(AR)

arch/asm.a:
	$(MAKE) -C arch/ asm.a

%.o: %.c
	$(CMP)
	

clean:
	$(MAKE) -C arch/ clean
	$(MAKE) -C tests/assert clean
	rm -f *.o
	rm -f *.so
	rm -f test-*
	rm -f *.a
