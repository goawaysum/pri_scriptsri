#!/bin/bash
num=`netstat -lntup |grep  -c 22`
if [ $num -lt 2 ]
then
    exit 0
else
    exit 1
fi







