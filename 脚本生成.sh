#!/bin/bash


while [[ -z $filename ]]
do
	read -t 30 -p "请输入文件名: " filename
done

touch ${filename}.sh
echo "#!/bin/bash" > ./${filename}.sh

if [[ $? -eq 0 ]]
then 
	echo "${filename}.sh生成成功"
else
	echo "文件生成失败"
fi



