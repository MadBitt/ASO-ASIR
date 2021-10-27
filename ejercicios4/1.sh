#!/bin/bash

# Realizar un script que dado una lista de directorios, cree un archivo tar comprimido
# con gzip con nombre igual a la fecha en formato yyyy-mm-dd.tar.gz. Además se
# generará un fichero yyyy-mm-dd.lst con los nombres de los directorios contenidos en
# el archivo tar, UNO POR LINEA usando un bucle. Si el fichero lst existe, mostrar un
# error y terminar el programa. Si alguno de los elementos no es un directorio, mostrar
# un error y finalizar el programa.

if [ $# -eq 0 ]; then
	echo "Introduce argumentos"
else

	Fecha=$(date +%Y-%m-%d)

	if [ -e $Fecha.lst ]; then
		echo "Error, $Fecha.lst ya existe"
		exit
	fi

	for Arg in $*
	do
		if [ -d $Arg ]; then
			echo -e "$Arg" >> $Fecha.lst
			tar -cf $Fecha.tar.gz -T $Fecha.lst
		else
			echo "$Arg NO es un directorio"
		fi
	done
fi