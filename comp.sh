#!/bin/bash
#read -p "请输入第一个数字：" num1
#[[ ! $num1 =~ ^[0-9]+$ ]] && echo "请输入整数" && exit 1
#read -p "请输入第二个数字：" num2
#[[ ! $num2 =~ ^[0-9]+$ ]] && echo "请输入整数" && exit 1
#num1=$1
#num2=$2
#[ $num1 -gt $num2 ] && echo "$num1 > $num2" || `[ $num1 -eq $num2 ] && echo "$num1 = $num2" || echo "$num1 < $num2"`



num1=$1
num2=$2
[ $num1 -gt $num2 ] && echo "$num1>$num2" || `[ $num1 -eq $num2 ] && echo "$num1=$num2" || echo "$num1<$num2"`










