#!/bin/bash
pojie(){
for x in {49a85758,abf8cfc4,135d2727,c4e5bc8b,a1227fe,03a45d7}
do
	for i in {0..32767}
	do
		num="`echo $i | md5sum | cut -c 1-8`"
		if [[ $x == $num ]];then
			echo "破解 $x 成功，数值为：$i"
		else
			num="`echo $i |md5sum|cut -c 1-7`"
			if [[ $x == $num ]];then
				echo "破解 $x 成功，数值为：$i"
			fi
		fi
	done
done
wait
echo "破解失败..............."
exit
}
{
pojie
} &

