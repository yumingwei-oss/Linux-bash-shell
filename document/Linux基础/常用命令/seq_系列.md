# seq

> seq命令可以输出连续的数字

## seq命令格式
* seq [option] LAST   //LAST指最大数字  默认从1开始
* seq [option] FIRST LAST //FIRST指定开始的数字
* seq [option] FIRST INCREMENT LAST    // INCREMENT指步进大小   默认步进为1

## option
* -s 分隔符，默认为回车

* -w 指定定宽输出，指定数字以一定位数输出（不够的补0，如01,002,003)

* -f 按照指定格式输出

## seq使用案例

1 seq 5  //结果输出 1 2 3 4 5

2 seq 2 5   //结果输出 2 3 4 5

3 seq 1 2 5  //结果输出 1 3 5

4 seq -s + 1 2 5 //结果输出1+3+5

5 seq -w 1 2 10  //结果输出 01 03 05 07 09

6 seq -f '%02g' 1 5  //结果输出 01 02 03 04 05 ，默认格式为%g  ,这里%02g表示指定位宽为两位，数位不足用0补上

## seq 实际使用

1 生成名字为1到14，后缀为png的文件

touch $(seq -f '%g.png' 1 14)  

2 for循环打印1到10的奇数

for i in `seq 1 2 10`
do 
	echo $i 
done
