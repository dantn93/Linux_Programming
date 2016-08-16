#!/bin/bash
echo "==KIEM TRA SO CHAN, LE=="
echo "Nhap vao mot so: "
read a
if [ `expr $a % 2` == 0 ]
then
	echo "So chan"
else
	echo "So le"
fi
exit 0
