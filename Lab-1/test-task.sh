#!/bin/bash
for file in *.sh
do
case $file in
i.sh )
mv -v $file 1.sh
;;
ii.sh )
mv -v $file 2.sh
;;
iii.sh )
mv -v $file 3.sh
;;
iv.sh )
mv -v $file 4.sh
;;
v.sh )
mv -v $file 5.sh
;;
vi.sh )
mv -v $file 6.sh
;;
vii.sh )
mv -v $file 7.sh
;;
viii.sh )
mv -v $file 8.sh
;;
ix.sh )
mv -v $file 9.sh
;;
x.sh )
mv -v $file 10.sh
;;
esac
done