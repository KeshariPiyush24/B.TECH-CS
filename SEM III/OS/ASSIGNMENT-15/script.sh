# !/usr/bin/bash
clear

read -p "Enter any number : " number

for i in 1 2 3 4 5 6 7 8 9 10
do
echo "$i x $number = `expr $i \* $number`"
done