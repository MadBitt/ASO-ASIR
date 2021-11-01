#!/bin/bash


#mediante argumento
cat $1 | egrep ^[Ll]

#mediante variable de entrada
read -p "Introduce el fichero a analizar: " fic

cat $fic | egrep ^[Ll]