#!/bin/bash
echo "==CHUONG TRINH NHAP MAT KHAU DUNG=="
echo "Nhap mat khau quy dinh: "
read prepass
echo "Nhap mat khau: "
read pass
while [ "$prepass" != "$pass" ]
do
    echo "Nhap sai. Hay nhap lai: "
    read pass
done
echo "Ban da nhap dung"
exit 0
