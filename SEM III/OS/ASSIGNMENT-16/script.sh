# !/usr/bin/bash
clear

read -p "Enter any number : " number
fact=1

while [ $number -gt 0 ]
do
fact=`expr $fact \* $number`
number=`expr $number - 1`
done

echo "Factorial of given number: $fact"