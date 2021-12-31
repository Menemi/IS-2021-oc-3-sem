#!/bin/bash
result=""
temp=""
while [[ "$temp" != "q" ]]; do
        result+="$temp"
        read temp
done
echo "$result"