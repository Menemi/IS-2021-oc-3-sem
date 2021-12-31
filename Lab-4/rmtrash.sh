#!/bin/bash
file="$PWD/$*"

if [[ $# != 1 || ! -f $file ]]; then echo "Args must be path to file"; exit 1; fi

if [[ ! -d /home/.trash ]] ; then mkdir /home/.trash; touch /home/.trash.log; fi

date=$(date +"%y_%m_%d-%T")
ln -P "$file" "/home/.trash/$date"
echo "$file" "$date" >> /home/.trash.log
rm -rf "$file"