# **OS Lab Assignment - 16**

------

## **Submitted By -:  Piyush Keshari**
## **Section  -:  C**
## **Roll No. -:  11**
## **Subject  -:  Operating System Lab (BCSC 0803)**
## **Submitted To -:  Ms. Nidhi**

------

## <span style="color:crimson">Write the shell script to input any number and print it's factorial.</span>

```bash
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
```



### **OUTPUT:**

![](./output.png)

------
