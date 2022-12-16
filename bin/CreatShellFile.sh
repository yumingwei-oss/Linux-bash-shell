#/bin/bash

read -t 30 -p "Please input file name: " filename

if [ -n filename ]; then
	touch ${filename}.sh
	echo '#/bin/bash' > ${filename}.sh
fi


