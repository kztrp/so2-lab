#!/bin/bash


find -P $1 | while read file
do
	if [[ -L $file ]]; then
			echo $file | tr '[a-z]' '[x-za-w]' | tr '[A-Z]' '[X-ZA-W]'
	fi
done




