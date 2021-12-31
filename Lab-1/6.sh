#!/bin/bash
touch full.log
echo "" | tee full.log
while read line
do
if [[ "(**)" != $(echo $line | cut -d ' ' -f 3) ]]
        then if [[ "(WW)" == $(echo $line | cut -d ' ' -f 3) ]]
                then echo ${line//(WW)/Warning:} | tee -a full.log
        fi
fi
done < ../../../var/log/anaconda/X.log
while read line
do
if [[ "(**)" != $(echo $line | cut -d ' ' -f 3) ]]
        then if [[ "(II)" == $(echo $line | cut -d ' ' -f 3) ]]
                then echo ${line//(II)/Information:} | tee -a full.log
        fi
fi
done < ../../../var/log/anaconda/X.log