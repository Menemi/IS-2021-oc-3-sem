#!/bin/bash
ps -Ao pid,command | awk '{if ($2 ~ /^\/sbin\//) print $1" : "$2}' | tee 2.log