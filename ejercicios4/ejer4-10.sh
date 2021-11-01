#!/bin/bash

cat $1 | uniq > borrador
rm $1
mv borrador $1
