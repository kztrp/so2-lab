#!/bin/bash


PLIKI=`ls $1`
for plik in $PLIKI
do

	if [[ -L $1/$plik ]]; then
		if [[ -d $1/$plik ]]; then
			echo "Usunięto dowiązanie symboliczne "$plik " do ścieżki " 
			readlink -f $1/$plik
			rm $1/$plik
		fi
	fi

done
