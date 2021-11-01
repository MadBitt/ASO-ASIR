#!/bin/bash

existe=`grep ^$1 /etc/passwd | wc -l`

if [[ $existe -eq 1 ]]; then
	find / -user $1 -type f 2>/dev/null
	echo "El total de ficheros es: `find / -user $1 -type f 2>/dev/null | wc -l`"
else
	echo "El usuario introducido no existe"
fi

