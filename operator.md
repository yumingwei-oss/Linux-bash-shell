#在shell中，运算符和其它编程脚本语言一样，常见有算数运算符、关系运算符、逻辑运算符、字符串运算符、文件测试运算符

	1 算数运算符 原生bash不支持简单的数学运算，需要通过其他命令实现。(expr)

		expr 是表达式计算工具

			expr $a + $b 加法
			expr $a * $b 乘法
			expr $a / $b 除法 
			expr $a % $b 取余

			[ $a == $b ] 相等  []要与中间内容有空格
			[ $a != $b ] 不相等
	
	2 关系运算符  只支持数字，不支持字符串，除非字符串的值是数字

		-eq  相等 equal 

		-ne  不相等  no equal

		-gt  大于  great than

		-lt  小于  less than 

		-ge  大于等于 great than or equal

		-le  小于等于 less than or equal

	3 字符串运算符

		= 检测两个字符串是否相等   [$a=$b]
		!= 检测两个字符串是否不相等
		-z 检测字符串长度是否为空  [-z $a]
		-n 检测字符串长度是否不为空  [-n]

	4 逻辑运算符

		! 非
		-o 逻辑或
		-a 逻辑与

	5 文件测试运算符   []间需要空格

		-d 检测是否为目录  [ -d $file ]
		-r 检测是否可读 [ -r $file ]
		-w 检测是否可写 [ -w $file]
]
