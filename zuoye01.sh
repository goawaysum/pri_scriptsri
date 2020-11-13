read -p "第一个整数：" num1
read -p "第二个整数：" num2

echo "$num1+$num2=$[$num1+$num2]"
echo "$num1-$num2=$[$num1-$num2]"
echo "$num1*$num2=$[$num1*$num2]"
echo "$num1/$num2=`echo "scale=2;$num1/$num2"|bc`"
echo "$num1%$num2=$[$num1%$num2]"












