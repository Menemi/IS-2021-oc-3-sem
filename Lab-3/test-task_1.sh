#!/bin/bash
a=$RANDOM
let "a %= 20"
let "A=$1**a"
let "A %= $2"
echo $A >> result.out

B=$(sed -n '2p' result.out)
if [[ $A == $B ]]
then B=$(sed -n '3p' result.out)
fi

let "K=B**a"
let "K %= $2"
echo $K
kill $$