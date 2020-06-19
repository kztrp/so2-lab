#!/bin/bash

if [ -d $1 ]; then
	find $1 -maxdepth 3 -name '*.png' -mmin +5 -print
fi
