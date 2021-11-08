#!/bin/bash

if [[ $# -ne 3 ]]; then

	echo "Debes introducir tres argumentos. Ejemplo: notas 3 6"

else
	if [[ -e $1 ]]; then
		if [[ $2 -lt $3 ]]; then
			awk 'NR=='$2', NR=='$3'' $1
		else
			echo "El segundo argumento debe ser menor que el tercero"
		fi
	else
		"El fichero $1 no existe"
	fi

fi