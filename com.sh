#!/bin/bash

# -- edited after switching off the git in win
echo "switching off the git in win"
wd=`echo $(pwd)`
cd $wd

awk 'BEGIN{RS="  \n"}{ f = "A" NR ".dat"; print > f; close(f) }' wannier90_band.dat

cp A1.dat tmp1

for name in A*.dat; do
    if [ $name != "A1.dat" ] ; then
	if [ $name == "A2.dat" ] ; then
	 #echo $name
	 awk '{print $2 }' $name | paste -d "   " A1.dat - > tmp1
         rm $name
	else
	 #echo $name
	 awk '{print $2 }' $name | paste -d "   " tmp1  - > tmp2
	 rm tmp1
	 mv tmp2 tmp1
         rm $name
     fi
    fi
done

echo " Hi "
mv tmp1 tmp1.dat
