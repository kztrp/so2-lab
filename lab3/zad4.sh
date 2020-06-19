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
	if [[ -d $1/$plik ]]; then
		echo "Utworzono dowiązanie symboliczne do katalogu $1/$plik"
		ln -s ../$1/$plik $2/$plik
	else
		echo "Utworzono dowiązanie twarde do pliku $1/$plik"
		ln $1/$plik $2/$plik

	fi



done