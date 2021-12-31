#!/bin/bash
for pid in $(ps uax | awk 'FNR > 1 { print $2 } '); do
if [[ -r /proc/$pid/status ]]; then
        temp="$(grep -i "VMRSS" /proc/$pid/status | awk '{ print $2 }')"
        if [[ "$temp" -ne "" ]]; then
            if [[ "$temp" -gt "$max" ]]; then
                ans=$pid
                max=$temp
            fi
        fi
    fi
done
echo "PID: "$ans" Memory: "$max