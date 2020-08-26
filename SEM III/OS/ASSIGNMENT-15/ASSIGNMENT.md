# **OS Lab Assignment - 15**

------

## **Submitted By -:  Piyush Keshari**
## **Section  -:  C**
## **Roll No. -:  11**
## **Subject  -:  Operating System Lab (BCSC 0803)**
## **Submitted To -:  Ms. Nidhi**

------

## <span style="color:crimson">Write the shell script to input any number and print it's table.</span>

```bash
# !/usr/bin/bash
clear

read -p "Enter any number : " number

for i in 1 2 3 4 5 6 7 8 9 10
do
echo "$i x $number = `expr $i \* $number`"
done
```



### **OUTPUT:**

![](./output.png)

------
