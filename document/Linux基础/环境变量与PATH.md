# PATH环境变量

> 类似于Windows中的环境变量添加，在shell命令行中输入外部命令时，shell需搜索系统来找到对应的程序
> 环境变量 PATH定义了用于进行命令和程序的目录。


## 暂时添加自定义目环境变量PATH

	bin='/Code/Shell/bin'  //自定义变量的位置
	PATH=$PATH:$bin
	
	此时在别处就可以直接使用 /Code/Shell/bin内的shell脚本


## 持久化环境变量PATH

> 通过手动改变PATH内容，只能临时改变环境变量，不能持久化
> 当启动一个bash shell,默认情况下bash会在几个文件中查找命令，这些命令文件叫作启动文件或环境文件。如果需要将环境变量持久化，则需在这些启动文件中添加


#### 启动bash shell三种方式
	* 登录时作为默认登录shell
	* 作为非登录Shell的交互式shell
	* 作为运行脚本的非交互shell


