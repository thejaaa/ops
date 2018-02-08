#!/bin/sh
dic="/usr/share/dict/words"
i=$RANDOM
echo $(sed -n "$i p" "$dic")

