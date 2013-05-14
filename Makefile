#! /usr/bin/make

LIBRARY_PATH := ${LIBRARY_PATH}:./
CC=gcc -I ./include -ffreestanding -nostdlib -nodefaultlibs 
OBJ=$$(echo "$^" | sed 's/[[:space:]\+]/\n/g' | grep '.*\.[aoc]' | sed 's/\n/ /g')
CMP=$(CC) -c $(OBJ) -o $@
CMB=$(CC) $(OBJ) -o $@ 
ARC=arch/x86
LD=ld $^ -o $@
AS=as $^ -o $@
AR=ar rc $@ $^
SHARE=ld -nostdlib -share $^ -o $@

loader.o: $(ARC)/loader.s
	$(AS)

tests: test-file-write test-string-strcmp test-proc-exit test-file-low_print
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

libc.a: file.o string.o proc.o file2.o
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
