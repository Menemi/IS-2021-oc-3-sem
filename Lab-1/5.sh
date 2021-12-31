#!/bin/bash
if [[ $HOME == $PWD ]]
then echo $HOME
exit 0
else echo "!Error! Wrong directory"
exit 1
fi
[root@localhost lab1]# cat 5.sh
#!/bin/bash
touch info.log
temp=""
echo "" | tee info.log
while read line
do
if [[ "INFO" == $(echo $line | cut -d ' ' -f 2) ]]
then echo $line | tee -a info.log
fi
done < ../../../var/log/anaconda/syslog