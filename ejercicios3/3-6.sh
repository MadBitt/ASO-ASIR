#!/bin/bash


echo "Copia-a-USB (1)" 
echo "Copia-a-PC  (2)"
echo "Compara     (3)"
echo "Salir       (4)"
echo " "
read -p "Elige la opción que desees realizar: " opc

case $opc in
	"1" )
		sudo find / -wholename "/home/alumno" -exec cp -r {} /mnt/pendrive/ 2>/dev/null \;
;;
	"2" )
		sudo find / -wholename "/home/alumno" -exec cp -r /mnt/pendrive/ {} \;
;;
	"3" )
		echo "PC tiene `sudo find / -wholename "/home/alumno" -exec ls -R {} 2>/dev/null \; | wc -l` archivos"
		echo "USB tiene `ls -R /mnt/pendrive/alumno/ 2>/dev/null | wc -l` archivos"
;;
	"4" )
		echo "Hasta pronto"
		break 2>/dev/null
;;
	esac

