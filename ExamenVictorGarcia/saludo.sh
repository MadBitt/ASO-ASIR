#!/bin/bash

if [[ `date +%H` -ge 5 && `date +%H` -lt 13 ]]; then
	echo "Buenos días `grep "^$USER" /etc/passwd | awk -F: '{print $5}'|cut -d, -f1`"
elif [[ `date +%H` -ge 13 && `date +%H` -lt 20 ]]; then
	echo "Buenas tardes `grep "^$USER" /etc/passwd | awk -F: '{print $5}'|cut -d, -f1`"
else
	echo "Buenas noches `grep "^$USER" /etc/passwd | awk -F: '{print $5}'|cut -d, -f1`"
fi
