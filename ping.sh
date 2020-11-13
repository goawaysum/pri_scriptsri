#!/bin/bash
for i in 10.0.0.{1..254}
do
	{
	ping -c1 -W1 $i &>/dev/null 
	[ $? -eq 0 ] && echo $i
	} &
done
wait
echo "ip地址取完"



