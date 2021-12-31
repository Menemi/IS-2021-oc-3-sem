#!/bin/bash
touch emails.lst
email="[[:alnum:].]+@[[:alnum:]]+(\.[[:alnum:]]+)+"
grep -E -h -s -o -w $email /etc/* | awk '{printf("%s, ",$1)}' > emails.lst