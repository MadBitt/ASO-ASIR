#!/bin/bash

set -m
sleep 1000 &
sleep 1500 &
jobs -l
echo -n "¿Qué proceso deseas pasar a primer plano?: "
read Proceso

Numero=`jobs -l | awk -F " " '{print $1,$2}' | grep $Proceso | tr -d "[]+-" | awk -F " " '{print $1}'`

if [[ $Proceso == `jobs -l | awk -F " " '{print $2}' | grep $Proceso` ]]; then
	fg %$Numero
else
	echo "El proceso NO existe"
fi
