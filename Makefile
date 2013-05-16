#! /usr/bin/make

include ./include/config.mk

loader.o: $(ARC)/loader.s
	$(AS)

tests: test-file-write test-string-strcmp test-proc-exit test-file-low_print test-assert-assert_fail
	echo "tests complete"

libc.so: libc.a
	$(SHARE)

file.o: $(ARC)/file.s
	$(AS)

test-file-%: tests/file/%.c loader.o libc.a 
	$(CMB)
	./tests/file/$@-wrapper

test-string-%: tests/string/%.c loader.o libc.a
	$(CMB)
	./tests/string/$@-wrapper

test-proc-%: tests/proc/%.c loader.o libc.a
	$(CMB)
	./tests/proc/$@-wrapper

test-assert-%: tests/assert/%.c loader.o libc.a
	$(CMB)
	./tests/assert/$@-wrapper

libc.a: file.o string.o proc.o file2.o assert.o
	$(AR)

%.o: $(ARC)/%.s
	$(AS)

%.o: %.c
	$(CMP)
	

clean:
	rm -f *.o
	rm -f *.so
	rm -f test-*
	rm -f *.a
