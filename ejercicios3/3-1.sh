read -p "Introduce el primer operando: " pri
read -p "Introduce el segundo operando: " seg
read -p "Introduce la operación a ejecutar (suma/resta/mult/div): " op

let suma=$pri+$seg
let resta=$pri-$seg
let mult=$pri*$seg
let div=$pri/$seg


case $op in
	[Ss]uma )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $suma"
;;
	[Rr]esta )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $resta"
;;
	[m]ult )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $mult"
;;
	[Dd]iv )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $div"
;;
esac
