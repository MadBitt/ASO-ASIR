#!/bin/bash



for num in $@; do
	let suma=$suma+$num
done

let media=$suma/2
echo $media