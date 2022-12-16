#/bin/bash

# 在信号出山时捕获它们并执行其他命令--trap命令允许shell脚本监控Linux 信号

# 格式  trap cmd signals

# Testing trap command

trap "echo 'sorry you have trap signals SIGINIT'; exit" SIGINT

count=1
while ((count<=10)); do
	echo "loop $count"
	sleep 1
	count=$((count+1))
done

echo "This is the end of script"


# trap命令也可以捕获脚本退出
#只需加入EXIT信号

trap "echo 'You will exit now'" EXIT


# trap命令修改或移除

#要想在脚本不同位置进行不同的捕获处理，只需重新使用trap命令即可。

trap "echo 'this is trap1'" SIGINT

sleep 10

trap "echo 'this is trap2'" SIGINT

sleep 10



# trap命令删除已设置好的捕获

# 删除捕获使脚本以默认行为运行，只需在使用--在命令与信号之间

trap -- SIGINT
