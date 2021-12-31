#!/bin/bash
if [[ $HOME == $PWD ]]
then echo $HOME
exit 0
else echo "!Error! Wrong directory"
exit 1
fi