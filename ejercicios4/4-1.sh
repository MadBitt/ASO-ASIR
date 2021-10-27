#!/bin/bash

fecha=$(date +%Y-%m-%d)

if [[ -e $fecha.lst ]]; then
			echo "$fecha.lst ya existe"
			break
else
	for dir in $@; do
		if [[ -d $dir ]]; then
			echo "$dir" >> $fecha.lst
		else
			echo "$dir no es un directorio"
			break
		fi
	done

tar -cfz $@ $fecha.tar.gz

fi
	




	
