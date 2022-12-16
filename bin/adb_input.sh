#/bin/bash

read -t 30 -p "输入账号: " username

adb shell input text $username

read -t 30 -p "输入密码: " password

adb shell input text $password

