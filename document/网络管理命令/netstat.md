# Netstat

> netstat 可以用于列出系统所有网络套接字连接情况，包括TCP UDP及UNIX套接字，它还可以列出处于监听状态的端口。
>
> netstat 打印网络连接，路由表，连接的数据统计，广播域成员

## 常用语法

1 打印当前所有连接 -a

	netstat -a

2 显示所有tcp或udp连接

	netstat -at //TCP连接

	netstat -au //UDP连接

3 禁用反向域名解析

	默认下netstat会通过反向域名解析技术查找每个IP地址对应的主机名，这会降低查找速度。

	netstat -n -at //查找所有TCP连接并不进行反向DNS解析

4 只列出所有在监听中的连接(端口打开)

	netstat -lnt  // 这里会查看所有TCP的端口处于监听状态的所有连接   ---不能与a一起使用，因为a会把所有连接都输出 

5  获取进程名、进程号及用户ID

	获取进程信息  netstat -tpln    //   使用p显示连接所在的进程名及进程号

	获取用记ID    netstat -eptln    //   显示连接所属用户ID   ep一起使用可以获取用户ID 进程信息

6 打印统计信息

	nestat可以打印出网络统计数据，包括某个协议下收发包数量 

	netstat -s

7 显示路由信息

	netstat -r

8 打印网卡接口信息（如Iface   MTU等)

	netstat -i  

	netstat -ie  //可以打印更加友好的格式


	
