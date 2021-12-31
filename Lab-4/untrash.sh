#!/bin/bash
file="$*"
echo $file
trash="/home/.trash"
trashLog="$trash.log"

grep -- "$file " "$trashLog" | while read line
do
echo $line;
currentFile=$(echo "$line" | awk '{$NF=""} 1')
trashFile=$(echo "$line" | awk '{ print $NF }')
echo -n "Restore file ?(y/n)"
read ans < /dev/tty
if [[ "$ans" == "Yes" || "$ans" == "y" ]]
then
path=$(echo "$currentFile" | grep -Eo '.*\/')
if [ ! -d "$path" ]
then
echo "Original directory doesn't exist, file restored in /home directory"
path="/home"
fi;
path="$path/$file"
trashFile="$trash/$trashFile"
ln "$trashFile" "$path"
rm $trashFile
fi
done