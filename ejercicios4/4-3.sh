ps -e | awk '$4 ~/^k/ {print $4}'| wc -l
