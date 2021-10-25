read -p "Introduce el primer operando: " pri
read -p "Introduce el segundo operando: " seg
read -p "Introduce la operación a ejecutar (suma/resta/mult/div): " op

let suma=$pri+$seg
let resta=$pri-$seg
let mult=$pri*$seg
let div=$pri/$seg


case $op in
	suma )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $suma"
;;
	resta )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $resta"
;;
	mult )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $mult"
;;
	div )
		echo "El resultado de la operación de $op con los operadores $pri y $seg es $div"
;;
esac