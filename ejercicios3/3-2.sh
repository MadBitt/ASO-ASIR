#!/bin/bash

until [[ $resp == "pera" ]]; do
	read -p "Blanca por dentro, verde por fuera. Si quieres que te lo diga espera: " resp
	if [[ $resp == "pera" ]]; then
		echo "Enhorabuena, lo has adivinado"
	else
		echo "Buen intento, $resp no es la respuesta correcta"
	fi
done


