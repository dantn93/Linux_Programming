#!/bin/bash
echo "==TINH TONG CAC SO LE TU 0 DEN 1510=="
sum=0
max=1510
for i in `seq 0 $max`
do
    if [ `expr $i % 2` == 1 ]
    then
    	sum=`expr $i + $sum`
    fi	
done
echo "Tong: $sum"
exit 0