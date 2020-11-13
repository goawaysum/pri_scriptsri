#!/bin/bash
for i in oldboy{01..10}
do
	useradd $i && echo "123456"|passwd --stdin $i &>/dev/null
	[ $? -eq 0 ] && echo "ok" || echo "error"

done





