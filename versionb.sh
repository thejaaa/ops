#!/bin/bash
TDAY=$( date +"%Y-%m-%d")
file=$1
touch "${file%.*}"_"$TDAY"."${file##*.}"


