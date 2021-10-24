
num="[0-9]"
let="[a-z A-Z]"


if [ `echo -n "$1" | wc -c` -eq 1 ]; then
	if [[ $1 =~ $num ]]; then
		echo "$1 es un número"
	elif [[ $1 =~ $let ]]; then
		echo "$1 es una letra"
	else
		echo "$1 no es un número ni una letra"
	fi

else
	echo "Los argumentos deben de ser de un caracter"
fi
	