#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Introduce argumentos"
else
	if [ -f $1 ]; then
		sort $1 | uniq -u
	else
		echo "$1 NO es un fichero"
	fi
fi
