#!/bin/bash

if [ -z $1 ]; then
	echo "fatal: no pattern given."
	exit
fi
git grep -n "$*" | while IFS=: read i j k; do git --no-pager blame -L $j,$j $i; done