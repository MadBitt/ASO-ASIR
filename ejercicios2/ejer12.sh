#!/bin/bash

read -p"Ingresa la longitud del lado del cuadrado: " long

let area=$long**2

echo "El área de un cuadrado cuyo lado mide $long es: $area"
