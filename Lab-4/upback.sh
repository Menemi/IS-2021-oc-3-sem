#!/bin/bash
path="/home/user"
prevBack=$(ls $path | grep -E "Backup-[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}" | sort -n -r | head -n 1)
[ -z $prevBack ] && { echo "Previous backup absent"; exit 1; }
[ -d "$path/restore" ] && rm $path/restore/* || mkdir $path/restore
for var in $(ls $path/$prevBack | grep -Ev "\.[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}$")
do
cp $path/$prevBack/$var $path/restore/
done