LIBRARY_PATH := ${LIBRARY_PATH}:./
CC=gcc -I $(INCLUDE) -ffreestanding -nostdlib -nodefaultlibs 
OBJ=$$(echo "$^" | sed 's/[[:space:]\+]/\n/g' | grep '.*\.[aoc]' | sed 's/\n/ /g')
CMP=if ( stat -c='%A' $(OBJ) | grep T 2>/dev/null >/dev/null) ; then $(CC) -gstabs -c $(OBJ) -o $@ ; else $(CC) -c $(OBJ) -o $@ ; fi
CMB=$(CC) $(OBJ) -o $@ 
ARC=$(shell uname -p)
LD=ld $^ -o $@
AS=if (stat -c='%A' $^ | grep T 2>/dev/null >/dev/null ) ; then as -I $(ASMINCLUDE) -gstabs $^ -o $@ ; else as -I $(ASMINCLUDE) $^ -o $@ ; fi
AR=ar rc $@ $^
SHARE=ld -nostdlib -share $^ -o $@
WRAP=$$(echo "$@" | sed 's/test-//g')
RUNWRAP=$$(if [ -f "./$(WRAP)-wrapper" ]; then ./$(WRAP)-wrapper 2>&1; else ./$@ 2>&1; fi)
PRINTPRETTY=if [ "$$?" = "0" ]; then tput sgr0; echo -n "$@ [ "; tput bold; tput setaf 2; echo -n "passed"; tput sgr0; echo " ] $$MSG"; else tput sgr0; echo -n "$@ [ "; tput bold; tput setaf 1; echo -n "failed"; tput sgr0; echo " ] $$MSG"; fi
