#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Debes introducir el nombre de la tarjeta como argumento"
else
	eveW=`grep "$1 Warning" netlog | wc -l`

	echo "El número de eventos de tipo warning es $eveW"

	read -p "Deseas ver la configuración de $1?(si/no): " resp

	if [[ $resp == si ]]; then
		mac=`ip a l | grep enp0s3 -A 2 | grep link/ether| awk '{print $2}'`
		ip=`ip a l | grep enp0s3 -A 2|grep inet | awk '{print $2}'`
		masc=`ip a l | grep enp0s3 -A 2|grep inet | awk '{print $2}'| cut -d / -f2`
		echo "La dirección MAC es: $mac"
		echo "La dirección IP es: $ip"
		echo "La máscara de red es: /$masc"
	else
		echo "Hasta pronto"
	fi

fi
