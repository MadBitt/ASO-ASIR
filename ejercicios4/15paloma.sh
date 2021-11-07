#!/bin/bash

Contador=0
Suma=0

if [ $# -eq 0 ]; then
	echo "Introduce argumentos"
else
	for Numero in $*
	do
		if [ -n $Numero ] && [ "$Numero" -eq "$Numero" ] 2> /dev/null; then
			Contador=$((Contador+1))
			Suma=$(expr $Suma + $Numero)
		else
			echo "ERROR"
			exit
		fi
	done
	
	let Media=$(expr $Suma/$Contador)
	
	echo "La media aritmética de los $Contador argumentos pasados es $Media"
	
fi
