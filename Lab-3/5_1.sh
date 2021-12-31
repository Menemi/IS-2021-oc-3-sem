#!/bin/bash
rslt=1
operation='+'
tail -n 0 -f 5.in | while true
do
read line
case $line in
'+')
operation='+'
echo "Operation +"
;;
M)
operation='*'
echo "Operation *"
;;
[0-9]*)
if [[ $operation == '+' ]]
then
let rslt=$rslt+$line
else
let rslt=$rslt\*$line
fi
echo "$operation$line = $rslt"
;;
*)
echo "Error!"
;;
esac
done