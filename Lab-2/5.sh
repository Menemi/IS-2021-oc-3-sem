#!/bin/bash
curppid=0
sum=0
avg=0
cnt=1

echo -e "$(<4.log)\n" | sed "s/[^0-9.]\+/ /g" | sed "s/^ //g" |
while read str;
do
        pid=$(awk '{print $1}' <<< $str)
        ppid=$(awk '{print $2}' <<< $str)
        art=$(awk '{print $3}' <<< $str)
        if [[ $ppid == $curppid ]];
        then
                sum=$(echo "$sum+$art" | bc | awk '{printf "%.2f", $0}')
                cnt=$(($cnt+1))
        else
                avg=$(echo "scale = 2; $sum/$cnt" | bc | awk '{printf "%.2f", $0}')
                echo "Average_Children_Running_Time_Of_PaarentID="$curppid" is "$avg
                sum=$art
                cnt=1
                curppid=$ppid
        fi
        if [[ -n $pid ]];
        then
                echo "ProcessID="$pid" : Parent_ProcessID="$ppid" : Average_Running_Time="$art
        fi
done > 5.log