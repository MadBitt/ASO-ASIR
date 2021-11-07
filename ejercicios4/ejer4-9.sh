#!/bin/bash

server=`find /etc/apache2/ -name *.conf | xargs grep '#ServerName www.' | awk '{print $3}' | uniq`

echo "El nombre del servidor es: $server"


puertos=`grep Listen /etc/apache2/ports.conf | uniq | tr -d "[:blank:]" | tr -d "Listen"`


for puerto in $puertos; do
	z="$z $puerto"
	
done

echo "Lo puertos donde escucha son: $z"



