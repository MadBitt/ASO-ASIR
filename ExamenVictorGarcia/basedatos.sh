#!/bin/bash

while [[ true ]]; do
		
if [[ -e biblio.dat ]]; then
	if [[ -r biblio.dat ]]; then
		echo -e "\n"	
		echo "a. Añadir registro"
		echo "b. Consultar registro"
		echo "c. Ver libros"
		echo "d. Salir"

		read -p "Escoge una opción: " opc

		case $opc in
			a )
			read -p "Introduce el título: " tit
				if [[ `echo -n $tit | wc -c` -eq 0 ]]; then
					echo "No puedes dejar el campo vacío. Prueba otra vez"
					read -p "Introduce el título: " tit
				fi
			read -p "Introduce el autor: " aut
				if [[ `echo -n $aut | wc -c` -eq 0 ]]; then
					echo "No puedes dejar el campo vacío. Prueba otra vez"
					read -p "Introduce el título: " aut
				fi
			read -p "Introduce la editorial: " ed
				if [[ `echo -n $ed | wc -c` -eq 0 ]]; then
					echo "No puedes dejar el campo vacío. Prueba otra vez"
					read -p "Introduce el título: " ed
				fi

			echo "$tit:$aut:$ed" >> biblio.dat
		;;

			b )
				read -p "¿Qué libro quieres buscar?: " lib
				if [[ `grep $lib biblio.dat | wc -l` -gt 0 ]]; then
						echo Título:Autor:Editorial
						grep "^$lib" biblio.dat
				else
					echo "No hay coincidencias en el registro para $lib"
				fi
		;;

			c )
				numLibros=`awk 'NR>1' biblio.dat | wc -l`
				echo "Hay $numLibros libros dados de alta"
				echo Título:Autor:Editorial
				awk 'NR>1' biblio.dat | sort -k1
		;;

			d )
				echo "Hasta pronto"
				exit
		esac
	else
		echo "No tienes permiso de lectura sobre biblio.dat"
	fi
else
	touch biblio.dat
	echo Título:Autor:Editorial > biblio.dat
	if [[ -r biblio.dat ]]; then
		echo "a. Añadir registro"
		echo "b. Consultar registro"
		echo "c. Ver libros"
		echo "d. Salir"

		read -p "Escoge una opción: " opc
	else
		echo "No tienes permiso de lectura sobre biblio.dat"
	fi
fi

done