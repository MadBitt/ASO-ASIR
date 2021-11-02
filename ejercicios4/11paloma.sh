#!/bin/bash

Network=`ip a l | awk -F " " '{print $2}' | grep -i enp0s* | tr -d ":"`

for Redes in $Network
do
	echo $Redes
done

echo -n "Introduce una tarjeta de red: "
read Tarjeta

ip a l $Tarjeta | grep inet | head -n 1 | awk -F " " '{print $2}' 
