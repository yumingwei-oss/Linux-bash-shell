
#!/bin/bash

#赋值

a=13 
b=10

echo '加法:a+b='`expr $a + $b`
echo '减法:a-b='`expr $a - $b`

echo '乘法:a*b='`expr $a \* $b`
echo '除法:a/b='`expr $a / $b`

echo "$[ $a != $b]"

if [ $a == $b ]
then
	echo '相等'
else
	echo '不相等'
fi

file=$PWD'/parameter.sh'
echo $file
if [ -r $file ]
then
	echo '为可读文件'
fi

