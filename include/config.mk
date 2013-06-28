LIBRARY_PATH := ${LIBRARY_PATH}:./
CC=gcc -I $(INCLUDE) -ffreestanding -nostdlib -nodefaultlibs 
OBJ=$$(echo "$^" | sed 's/[[:space:]\+]/\n/g' | grep '.*\.[aoc]' | sed 's/\n/ /g')
CMP=$(CC) -c $(OBJ) -o $@
CMB=$(CC) $(OBJ) -o $@ 
ARC=x86
LD=ld $^ -o $@
AS=as $^ -o $@
AR=ar rc $@ $^
SHARE=ld -nostdlib -share $^ -o $@
WRAP=$$(echo "$@" | sed 's/test-//g')
RUNWRAP=$$(if [ -f "./$(WRAP)-wrapper" ]; then ./$(WRAP)-wrapper; else ./$@; fi)
PRINTPRETTY=if [ "$$?" = "0" ]; then tput sgr0; echo -n "$@ [ "; tput bold; tput setaf 2; echo -n "passed"; tput sgr0; echo " ] $$MSG"; else tput sgr0; echo -n "$@ [ "; tput bold; tput setaf 1; echo -n "failed"; tput sgr0; echo " ] $$MSG"; fi
