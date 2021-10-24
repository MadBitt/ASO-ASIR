#!/bin/bash

read -p "Ingresa la base del triángulo: " base
read -p "Ingresa la altura del triángulo: " altura

let area=($base*$altura)/2

echo "El área del triángulo es $area"
