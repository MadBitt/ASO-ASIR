echo "La tabla de multiplicar del número $1 es: "

i=1
until [[ $i -eq 11 ]]; do
	let x=$1*$i
	echo "$1 * $i = $x"
	((i++))
done