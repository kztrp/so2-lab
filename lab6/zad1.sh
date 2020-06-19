#!/bin/bash

LINES=$(awk '$1 !~ /\*/' $1 | awk 'NF' \
 | awk ' /\{/{gsub("int ", "short ")}{print}' | awk 'END{print length(FNR)}')
awk '$1 !~ /\*/' $1 | awk 'NF' \
 | awk ' /\{/{gsub("int ", "short ")}{print}' | nl --number-format=rz --number-width=$LINES

