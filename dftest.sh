#!/bin/bash
num=`df -h |awk '$1~/sda3$/{print $5}'`
intnum=${num:0:2}
[ $intnum -gt $1 ] && echo "磁盘超过$1%，请及时清理"| mail -s "报警信息" 359741602@qq.com || echo "占用没超过$1%"








