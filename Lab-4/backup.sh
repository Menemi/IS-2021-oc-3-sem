#!/bin/bash
path="/home/user"
dateFull=$(date +'%F')
dateSec=$(date -d "$dateFull" +'%s')
prevBack=$(ls $path | grep -E "Backup-[[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}" | sort -n -r | head -n 1)
datePrevBack=$(echo $prevBack | sed "s/Backup-//")
datePrevBackSec=$(date -d "$datePrevBack" +'%s')
dateComparisonSec=$((dateSec - datePrevBackSec))
dateComparison=$((dateComparisonSec/3600/24))

[ -d "$path/source" ] || { echo "Directory $path/source does not exist"; exit 1; }
if [[ "$dateComparison" -gt 7 || ! $prevBack ]];
then
currentBack="$path/Backup-$dateFull"
mkdir $currentBack
cp -r $path/source/* $currentBack
filesList=$(ls $currentBack)
echo -e "new directory was created: Backup-$dateFull date: $dateFull;\nfiles : $filesList" >> $path/backup-report

else
for var in $(ls $path/source)
do
if [[ -f $path/$prevBack/$var ]];
then
prevSize=$(wc -c $path/$prevBack/$var | awk '{print $1}')
currentSize=$(wc -c $path/source/$var | awk '{print $1}')

if [[ "$prevSize" != "$currentSize" ]];
then
newName="$var.$dateFull"
mv $path/$prevBack/$var $path/$prevBack/$newName
cp $path/source/$var $path/$prevBack
echo "$newName $var" >> changedFiles.txt
fi

else
cp $path/source/$var $path/$prevBack
echo $var >> newFiles.txt
fi
done
echo "directory was updated: $prevBack date: $dateFull" >> $path/backup-report
[ -s newFiles.txt ] && { echo "new files: $(cat newFiles.txt)" >> $path/backup-report; }
[ -s changedFiles.txt ] && { echo "changed files: $(cat changedFiles.txt)" >> $path/backup-report; }
fi
rm newFiles.txt changedFiles.txt 2>/dev/null