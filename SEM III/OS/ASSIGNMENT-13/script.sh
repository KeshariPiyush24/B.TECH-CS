# !/usr/bin/bash
clear

read -p "Enter any positive Number: " number

while [ $number -ne 0 ]
do
echo -n `expr $number % 10`
number=$((number / 10))
done