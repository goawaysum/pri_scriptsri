
echo "内核信息：`hostnamectl|awk -F "[: ]+" 'NR==9{print $3" "$4$5}'`"
