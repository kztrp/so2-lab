#!/bin/bash
shopt -s lastpipe
REG_FILES=0
CATALOGS=0
SYM_LINKS=0

find -P $1 | while read file
do
	if [[ -L $file ]]; then
		SYM_LINKS=$(( SYM_LINKS+1 ))
	elif [[ -f $file ]]; then
		REG_FILES=$(( REG_FILES+1 ))
	elif [[ -d $file ]]; then
		CATALOGS=$(( CATALOGS+1 ))
	fi
done

echo "Plików regularnych: $REG_FILES"
echo "Linków symbolicznych: $SYM_LINKS"
echo "Katalogów: $CATALOGS"



