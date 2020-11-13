#!/bin/bash
declare -A array
while read line
do
	let array[$line]++
done<$1
for i in ${!array[*]}
do
	echo "$i 出现了 ${array[$i]} 次"
done






