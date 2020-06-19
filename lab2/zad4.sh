#!/bin/bash

counter=1

for file in $(ls -Sp $1 | grep -v / ); do
	mv "$1/$file" "$1/$file.$counter"
	counter=$((counter+1))
done
