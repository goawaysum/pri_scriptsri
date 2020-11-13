#!/bin/bash
declare -A array
goout(){
	echo "抽签结束,以下人员成功中奖...................."
	cat /tmp/zhuajiu.log |sort -rk2|head -3
	unset array
	exit
}
>/tmp/zhuajiu.log
array[0]=0
while true
do
	read -p "请输入你的姓名：" name
	if [[ ! $name =~ ^[a-Z]{1,}[a-Z|0-9]$ ]];then
		echo "名字格式不符合要求，请重新输入" 
		continue
	fi
	grep "$name" /tmp/zhuajiu.log &>/dev/null
	if [ $? -eq 0 ];then
		echo "输入的名字重复，请重新输入"
		continue
	fi
	if [[ $name == tuichu ]];then
	goout
	fi
	num=$((RANDOM%99+1))
	while [ `grep $num /tmp/zhuajiu.log|wc -l` -eq 0 ]
	do
		array[$name]=$num
		echo $name"抽到的数字是："$num
		echo -e "$name \t $num" >>/tmp/zhuajiu.log
	done
done










