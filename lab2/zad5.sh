#!/bin/bash

for file in $(ls -p $1 | grep -v / ); do
	if [ -w $1/$file ]; then 
		echo "Plik $1/$file"
		cat $1/$file	
		echo ""
	fi
done
