touch 1.log
ps -U root | wc -l | tee 1.log
ps -U root -o pid,command | sed -r "s/\s*([0-9]+)\s(.+)$/\1:\2/" | tee -a 1.log