#!/bin/bash
declare -a array
declare -i x=0
while true;
do
array+=(1 2 3 4 5 6 7 8 9 0)
if [[ ${#array[@]} -gt $1 ]]; then
exit
fi
x=$(( x + 1 ))
done