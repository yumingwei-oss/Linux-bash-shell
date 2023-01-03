#/bin/bash

Photo_Path='/tmp/YT'

if [ -d "/tmp/YT2" ]
then
	rm -rf "/tmp/YT2" 
else
	mkdir '/tmp/YT2'
	cp /tmp/YT/* /tmp/YT2	
fi

n=0

for i in `ls $Photo_Path | sort -n`
do
	echo "count: $((++n)) $i"
done
