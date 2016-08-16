#!/bin/sh
echo "==HIEN THI THU MUC CON=="
echo "Nhap duong dan: "
read path
#check directory exist
if [ -d $path ]
then
    #go to path
    cd $path
	#write into temp.txt
	ls -d */ > temp.txt
	#Read file temp.txt
	count=0
	flag=false #don't print first line
    for p in $(cat temp.txt)
    do
        echo "Line $count : $p"
        count=`expr $count + 1`
    done
else
	echo "Duong dan khong hop le"
fi
#Delete temp file
rm -f temp.txt
exit 0