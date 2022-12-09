#!/bin/bash


git add $*

read -t -p "请输入描述： " message

git commit -m $message

git push origin master
