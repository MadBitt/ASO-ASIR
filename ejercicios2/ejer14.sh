#!/bin/bash

if [ -r $1 ]; then
cat $1
else
echo "No tiene permisos de lectura sobre el fichero $1"
fi
