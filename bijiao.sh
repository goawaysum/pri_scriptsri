#!/bin/bash
num1=$1
num2=$2
[ $num1 -gt $num2 ] && echo "$num1>$num2" || `[ $num1 -eq $num2 ] && echo "$num1=$num2" || echo "$num1<$num2"`

  










