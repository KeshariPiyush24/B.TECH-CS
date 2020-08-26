# **OS Lab Assignment - 14**

------

## **Submitted By -:  Piyush Keshari**
## **Section  -:  C**
## **Roll No. -:  11**
## **Subject  -:  Operating System Lab (BCSC 0803)**
## **Submitted To -:  Ms. Nidhi**

------

## <span style="color:crimson">Write the shell script to input marks in 3 subjects of a student and print his grade.</span>

```bash
# !/usr/bin/bash
clear

read -p "Computer Science : " cs
read -p "English : " english
read -p "Maths : " maths

sum=`expr $cs + $english + $maths`
per=`expr $sum \* 100 / 300`
echo "Percentage : $per %"

if [ $per -ge 60 ] && [ $per -le 70 ]
then
    echo "Your grade is 'D'"
elif [ $per -ge 71 ] && [ $per -le 80 ]
then
    echo "Your grade is 'C'"
elif [ $per -ge 81 ] && [ $per -le 90 ]
then 
    echo "Your grade is 'B'"
elif [ $per -ge 91 ] && [ $per -le 100 ]
then
    echo "Your grade is 'A'"
else
    echo "Fail !"
fi
```



### **OUTPUT:**

![](./output.png)

------
