#!/bin/bash
while IFS= read -r line
do
  	touch "$1/$line"
done < "$2"
