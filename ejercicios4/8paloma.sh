#!/bin/bash

Raiz=/mnt
Contador=0

if [ -d $Raiz ]; then
	if [ "$(ls -A $Raiz)" ]; then
		for Carpetas in $Raiz/*
		do
			Contador=$((Contador+1)) 
			echo "$Contador) $Carpetas"
		done
		echo -n "Selecciona una carpeta: "
		read Respuesta
		echo -n "¿Qué desea copiar?: "
		read Copia
		
		if [ -d $Raiz/$Respuesta ]; then
			tar -cf $Raiz/$Respuesta/$Copia.tar $Copia
			tar -tvf $Raiz/$Respuesta/$Copia.tar
		else
			echo "Respuesta incorrecta"
		fi
		
	else
		echo "$Raiz está vacio"
	fi
else
	echo "$Raiz NO es un directorio"
fi
