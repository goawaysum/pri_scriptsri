#!/bin/bash
web01=172.16.1.7
MySQL=172.16.1.51
NFS=172.16.1.31
menu(){
cat <<EOF
	1、连接到web01
	2、连接到MySQL
	3、连接到NFS
	4、显示菜单
EOF
}
menu
which sshpass
[ $? -ne 0 ] && yum install -y sshpass
for i in 172.16.1.{7,51,31}
    do
        sshpass -p123456 ssh-copy-id -i /root/.ssh/id_dsa.pub $i -o StrictHostKeyChecking=no
    done
trap "" INT TSTP HUP
while true
do
read -p "请输入操作序号编号：" num
case $num in
	1)
	    ssh root@$web01
	    ;;
	2)
	    ssh root@$MySQL
	    ;;
	3)
	    ssh root@$NFS
	    ;;
	4)
	    menu
	    ;;
	tuichu)
	    exit
esac
done
