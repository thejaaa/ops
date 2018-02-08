#!/bin.bash
TDAY=$(date +"%Y-%m-%d")
FILENAME="$TDAY"_"$1"
touch "$FILENAME"
echo "$FILENAME" created

