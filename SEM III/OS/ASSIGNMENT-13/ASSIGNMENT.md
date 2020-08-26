# **OS Lab Assignment - 13**

------

## **Submitted By -:  Piyush Keshari**
## **Section  -:  C**
## **Roll No. -:  11**
## **Subject  -:  Operating System Lab (BCSC 0803)**
## **Submitted To -:  Ms. Nidhi**

------

## <span style="color:crimson">Write the shell script to take a positive number and input it's reverse.</span>

```bash
# !/usr/bin/bash
clear

read -p "Enter any positive Number: " number

while [ $number -ne 0 ]
do
echo -n `expr $number % 10`
number=$((number / 10))
done
```



### **OUTPUT:**

![](./output.png)

------
