read -p "Introduce el campo que quieras consultar (1/2/3): " resp

case $resp in
	"1" )
	awk -F: '{print $1}' peliculas.txt
;;
	"2" )
	awk -F: '{print $2}' peliculas.txt
;;
	"3" )
	awk -F: '{print $3}' peliculas.txt
;;
esac