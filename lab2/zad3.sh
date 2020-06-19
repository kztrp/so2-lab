#!/bin/bash

for file in $1/*;do
	if ! [ -x $file ]; then 
		rm -d "$file"
		echo "Usunięto $file"
	fi
done
