#!/bin/bash
touch test.log
echo "" | tee test.log
while read line
do
echo $line | cut -d ':' -f 1,3 | tee -a test.log
sort -nk2 -t ":" test.log
done < /etc/passwd