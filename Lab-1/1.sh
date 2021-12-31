#!/bin/bash
result=0
if [[ "$1" -gt "$2" ]]
then result=$1
else result=$2
fi
if [[ "$3" -gt "result" ]]
then result=$3
fi
echo $result