#$* $@输入所有参数

#$n-指第n个参数

#$#--代表参数的个数



#预定义变量

# $? 最后一次执行的命令的返回状态。如果这个变量的为0，证明上一个命令正确执行。
# $$ 表示当前进程的进程号（PID）
# $! 表示后台运行最后一个进程的进程号

#接受键盘输入命令 read [option] [parameter]
# -a 后跟一个变量，该变量将会被认为是数组，然后给其赋值，值与值之间以空格隔开
# -p "提示信息"，在等待read输入时，输出提示信息
# -t 秒数，read命令等待输入的时间
# -n 数字 read指令只接受数字输入
# -o 隐藏输入的数据

status=$?
echo "$status"

echo "共有$#个参数"

echo "参数如下"

for i in $*
	do  echo $i
	done
parameter=$*
for((x=1;x<=$#;x=x+1))
	do
		n=$x 
		echo "第$x个参数为${parameter[$x]}"
	done

if [ $status -eq 0 ]
	then echo "上次命令运行结果PASS"
	echo "当前进程号为$$"
else
	echo "上次命令运行结果FAIL"
fi


while [ $passwd != $repasswd ]
	do
		read -t 30 -p "请输入密码:  " passwd
		read -t 30 -p "请再次输入密码: " repasswd
	done


