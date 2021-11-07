#!/bin/bash

for (( i = 1; i <= 50; i++ )); do
	if [[ $i -lt 10 ]]; then
		echo "usuario$i:x:200$i:200$i:usuario$i,,,:/home/usuario$i:/bin/bash" >> /etc/passwd
		echo "usuario$i:x:200$i:" >> /etc/group
		mkdir /home/usuario$i
		echo -e "pass\npass" | passwd usuario$i
	else
		echo "usuario$i:x:20$i:20$i:usuario$i,,,:/home/usuario$i:/bin/bash" >> /etc/passwd
		echo "usuario$i:x:20$i:" >> /etc/group
		mkdir /home/usuario$i
		echo -e "pass\npass" | passwd usuario$i"

	fi
	
done
