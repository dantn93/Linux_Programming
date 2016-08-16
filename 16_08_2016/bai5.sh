#!/bin/bash
echo "==CHUONG TRINH HOI DAP CO NHIEU DAP AN=="
echo "Hay tra loi cac cau hoi sau"
sleep 1
clear

cau=0
sl=1
Tinh()
{
    #Tinh ket qua
    s1=$(echo "$RANDOM % 10" | bc)
    s2=$(echo "$RANDOM % 10" | bc)
    result=0
    case "$1" in
        "+" )
            result=$(echo "$s1 + $s2" | bc);;
        "-" )
            result=$(echo "$s1 - $s2" | bc);;
        "*" )
            result=$(echo "$s1 * $s2" | bc);;
        "/" )
            result=$(echo "$s1 / $s2" | bc);;
    esac

    diem=0

    #Set time
    end=$((SECONDS+2))
    while [ $SECONDS -lt $end ]
    do
        case "$1" in
        "+" )
            echo "Cau $2: Tong 2 so $s1 + $s2";;
        "-" )
            echo "Cau $2: Hieu 2 so $s1 - $s2";;
        "*" )
            echo "Cau $2: Hieu 2 so $s1 * $s2";;
        "/" )
            echo "Cau $2: Hieu 2 so $s1 / $s2";;
        esac
        
        echo "Thoi gian suy nghi `expr $end - $SECONDS`" 
        sleep $sl
        if [ `expr $end - $SECONDS` == 0 ]
        then
            clear
            case "$1" in
                "+" )
                    echo "Cau $2: Tong 2 so $s1 + $s2";;
                "-" )
                    echo "Cau $2: Hieu 2 so $s1 - $s2";;
                "*" )
                    echo "Cau $2: Hieu 2 so $s1 * $s2";;
                "/" )
                    echo "Cau $2: Hieu 2 so $s1 / $s2";;
            esac
            echo "Thoi gian suy nghi 0"
            break
        fi
        clear
    done
    echo "Ban co 3 giay de tra loi"
    read ans
    #check out of time
    
    if [ `expr $SECONDS - $end` -gt 3 ]
    then
        echo "Da het thoi gian"
        sleep $sl
        clear
    else if [ $result == $ans ]
    then
        echo "Ban da tra loi dung"
        diem=`expr $diem + 1`
        sleep $sl
        clear
    else
        echo "Ban da tra loi sai"
        sleep $sl
        clear
    fi
    fi
    return $diem
}
count=0
diem=0
tongdiem=5
while [ $count -lt $tongdiem ]
do
    echo "chon phep tinh"
    echo "1. cong"
    echo "2. tru"
    echo "3. nhan"
    echo "4. chia"
    read ans
    case $ans in
        #Add
        1 )
            cau=`expr $cau + 1`
            Tinh "+" $cau
            diem=`expr $diem + $?`
            count=`expr $count + 1`
            ;;
        #Subtract
        2 )
            cau=`expr $cau + 1`
            Tinh "-" $cau
            diem=`expr $diem + $?`
            count=`expr $count + 1`
            ;;
        #Multiply
        3 )
            cau=`expr $cau + 1`
            Tinh "*" $cau
            diem=`expr $diem + $?`
            count=`expr $count + 1`
            ;;
        #Device
        4 )
            cau=`expr $cau + 1`
            Tinh "/" $cau
            diem=`expr $diem + $?`
            count=`expr $count + 1`
            ;;
    esac
    
done
echo "Diem cua ban: $diem tren $tongdiem"