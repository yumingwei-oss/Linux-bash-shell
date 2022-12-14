#!/bin/bash

read -t 30 -e -p "Please input file name or file list: " -a filenames;

read -t 30 -e -p "Please input infomation for update: " information;

if [[ -z $filenames || -z $information ]]
then
	echo "file name or information can't be empty,please run again"
else
	git add ${filenames[@]}
	git commit -m $information
	git push origin master
fi


