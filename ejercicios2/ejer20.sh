#!/bin/bash

if [[ `cat /etc/passwd | grep -w $1 | wc -l` -eq 1 ]]; then
	tar -cf /tmp/$1.tar /home/$1
fi