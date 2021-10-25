#!/bin/bash

continuar="si"

while [[ $continuar == "si" ]]; do
	read -p "Indica el nombre de la película: " pe
	read -p "Indica el director de la película: " dir
	read -p "Indica el año de estreno: " an

	echo "$pe:$dir:$an" >> peliculas.txt

	read -p "Deseas continuar escribiendo valores (si/no): " continuar
done