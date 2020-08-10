# !/usr/bin/bash
clear
read -p "Enter file name:" name
result=`file $name`
echo -e "$result"
echo -e "\nFile information:\n$(stat -c "Last changed:%z\nFile size:%s" $name)"