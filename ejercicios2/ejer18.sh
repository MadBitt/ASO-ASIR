#!/bin/bash

echo "La tabla de multiplicar del número $1 es: "

for (( i = 1; i <= 10; i++ )); do
	let x=$1*$i
	echo "$1 * $i = $x "
done