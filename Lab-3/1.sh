#!/bin/bash
d=$(date '+%d.%m.%y_%H:%M:%S')
mkdir test && echo "catalog test was created successfully" >> report.tmp && touch test/$d.tmp
ping www.net_nikogo.ru || echo "ERROR" >> report.tmp