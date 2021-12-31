#!/bin/bash
> report2
> memory2
> swap2

while true; do
checking=$(top -b -n 1 | grep "mem[2]*.bash")
status=$(echo $checking | awk '{if ($8 == "R") print $0}')

if [[ -n "checking" && -n "status" ]]; then
tempDate=$(date +'%X')
echo "Date: $tempDate" >> report2
echo "Information about memory:" >> report2
value=$(top -b -n 1 | head -n 5 | tail -n 2)
echo $value >> report2
echo "$value" | head -n 1 | awk '{print $6}' >> memory2
echo "$value" | tail -n 1 | awk '{print $5}' >> swap2
echo "checking" >> report2
echo "Major processes" >> report2
top -b -n 1 | head -n 12 | tail -n 5 >> report2
echo -e "\n" >> report2
else
exit
fi
sleep 1
done