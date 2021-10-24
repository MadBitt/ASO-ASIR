
read -p "Introduce el nombre del fichero: " fich

if [ -f $fich ] && [ -r $fich ]; then

	read -p "Introduce el nombre de la palabra: " pal

	if [ `grep -o $fich $pal|wc -l` -eq 0 ]; then

		if [ `grep -o $fich $pal|wc -l` -eq 1 ]; then

			echo "La palabra $pal se encuentra `grep -o $pal $fich | wc -l` vez en el fichero $fich"

		else

			echo "La palabra $pal se encuentra `grep -o $pal $fich | wc -l` veces en el fichero $fich"

		fi

	else

		echo "La palabra $pal no se encuentra en el fichero $fich"

	fi

else

echo "El fichero $fich no existe"	

fi