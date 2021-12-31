#!/bin/bash
> report1
> memory1
> swap1

while true; do
checking=$(top -b -n 1 | grep "mem.bash")
status=$(echo $checking | awk '{if ($8 == "R") print $0}')

if [[ -n "checking" && -n "status" ]]; then
tempDate=$(date +'%X')
echo "Date: $tempDate" >> report1
echo "Information about memory:" >> report1
value=$(top -b -n 1 | head -n 5 | tail -n 2)
echo $value >> report1
echo "$value" | head -n 1 | awk '{print $6}' >> memory1
echo "$value" | tail -n 1 | awk '{print $5}' >> swap1
echo "checking" >> report1
echo "Major processes" >> report1
top -b -n 1 | head -n 12 | tail -n 5 >> report1
echo -e "\n" >> report1
else
exit
fi
sleep 1
done