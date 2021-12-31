#!/bin/bash
q=$RANDOM
p=$RANDOM
let "q %= 10"
let "p %= 10"
echo "" > result.out
./test1.sh $q $p&
./test1.sh $q $p&