#!/bin/bash
> report.log
declare -a array
declare -i x=0
while true;
do array+=(1 2 3 4 5 6 7 8 9 10)
let "c = x % 100000"
if [[ $c -eq 0 && $x -gt 10 ]]; then
echo ${#array[@]} >> report.log
fi
x=$(( x + 1 ))
done