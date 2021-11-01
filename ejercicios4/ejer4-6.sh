#!/bin/bash


#contar lineas del comando w
cCab=`w | wc -l` 

#restarle a la cuenta la cabecera
qCab=$((cCab - 2))

#ejecución
w | tail -n$qCab | tr -s " " " " | sort -rt " " -k4 | tr " " "	" > usuarios.txt
