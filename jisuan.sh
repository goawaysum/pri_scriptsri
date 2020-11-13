#!/bin/bash
read -p "请输入计算式：" num1
echo "$num1=`echo "$num1"|bc`"
