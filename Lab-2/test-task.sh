#!/bin/bash
for pid in $(ps -axo pid)
do
        if [[ $(grep "libc" /proc/$pid/maps) != "" ]]
        then
                echo $pid
        fi
done