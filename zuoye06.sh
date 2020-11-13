#!/bin/bash
sum=0
i=1
while [ $i -le 100 ]
do
	if [ `expr $i % 3` -eq 0 ]
	then
	sum=$[sum+$i]
	fi
i=$[i+1]
done
echo $sum









