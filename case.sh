#!/bin/bash
read -p "请输入要删除的用户前缀名" name_pre
grep "$name_pre" /etc/passwd|awk -F "[:]+" '{print $1}'
users=`grep "$name_pre" /etc/passwd|awk -F "[:]+" '{print $1}'`
if [ -z "$users" ];then
	echo "no users"
else
	read -p "确定删除这些用户吗？[y/n]" confirm
	case $confirm in
		y)
			for i in $users
			do
		 	 userdel -r $i
		  	[ $? -eq 0 ] && echo "$i del is complete"
			done
			;;
		n)
			exit
			;;
		*)
			exit
			;;
	esac
fi
