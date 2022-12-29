#/bin/bash 

# 直接在命令行界面运行shell脚本有时不太方便，一些脚本可能执行很长一段时间，而此时又需要使用终端，因为后台模式就可以解决此类问题

# 使用PS命令时，会看到运行在Linux上一系列不同的进程。显然，所有这些进程不是所有都运行在当前终端显示器上，这样的现象被称为后台运行进程。

# 后台运行脚本很简单，在命令后面加上&符号就行

sleep 10 &
