#!/bin/bash

case $1 in
cafe)
	echo "Su café estará listo en un momento"
;;

te)
	read -p "¿Lo quiere con leche? (s/n): " resp
		if [ $resp == "n" ]; then
			echo "En seguida le traigo su té sin leche"
		elif [ $resp = "s" ]; then
			echo "En seguida le traigo su te con leche"
		else
			echo "Responda si o no (s/n)"
		fi
	
;;

chocolate)
	echo "Buena elección, ya verá como le encanta"
;;

*)
	echo "Lo siento, pero no servimos esta bebida"

esac
