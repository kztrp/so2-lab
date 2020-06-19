#!/bin/bash
shopt -s lastpipe
REG_FILES=0
HIDDEN_FILES=0

rm P1
find -P $1 -name '.*' | while read file
do
	HIDDEN_FILES=$(( HIDDEN_FILES+1 ))
	if [[ -f $file ]]; then
		cat $file | tail -n 1 | rev |cut -d " " -f1 | tr -d "."| rev >> P1
	fi
done
cat P1 | sort | tee P1 | rev
echo "Plików ukrytych: $HIDDEN_FILES"



