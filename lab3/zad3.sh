#!/bin/bash

if [[ ! -d $1 ]]; then
    echo "$1 nie jest katalogiem!"
    exit 1
fi

if [[ ! -d $2 ]]; then
    echo "$2 nie jest katalogiem!"
    exit 1
fi

if [[ $1 = $2 ]]; then
	echo "Podano dwukrotnie ten sam katalog!"
	exit 2
fi

PLIKI=`ls $1`
for plik in $PLIKI
do
	if [[ ! -e $1/$plik ]]; then
		echo "Usunięto wiszące dowiązanie symboliczne "$plik
			rm $1/$plik
	fi
done
