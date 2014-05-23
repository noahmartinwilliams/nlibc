#! /bin/bash

NUMS=$(seq 0 $RANDOM | tr '\n' ' ')
OUT=$(./test-argv $NUMS | sed '1d')
NUMS=$(echo "$NUMS" | tr ' ' '\n')
if [ "$NUMS" -eq "$OUT" ];
then 
	exit 0
else
	exit 1
fi
