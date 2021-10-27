x=$USER
pid=`cat /etc/passwd | grep "$USER" | cut -d: -f3`

cont=0
until [[ $num -eq $pid ]]; do
	if [[ $USER -eq $x ]]; then
	read -p "Introduce un número: " num
		if [[ $num -lt $pid ]]; then
			echo "El número a adivinar es superior a $num"
			((cont++))
		elif [[ $num -gt $pid ]]; then
			echo "El número a adivinar es inferior a $num"
			((cont++))
		else
			echo "Enhorabuena, has acertado el número"
			((cont++))
			echo "Has tardado $cont intentos"
		fi
	fi
done

