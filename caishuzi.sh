#!/bin/bash
while true
do
read -p "请输入游戏指令[start|stop]：" states
case $states in
  start)
        target=$((RANDOM%100+1))
	while true
	do
	  read -p "请输入要猜的数字[1-100]：" num
	  if [ $num -gt $target ];then
	    echo "猜大了"
	  elif [ $num -lt $target ];then
	    echo "猜小了"
	  else
	    echo "恭喜你，猜对了"
	    break
	  fi
	done
        ;;
  stop)
        echo "游戏结束"
        exit
esac
done





