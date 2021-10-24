#!/bin/bash

read -p "Introduce el nombre del archivo a visualizar: " fich

if [ -f $fich ]; then
cat $fich
else
echo "El fichero $fich no existe"
fi
