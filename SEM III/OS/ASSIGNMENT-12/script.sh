# !/usr/bin/bash
clear

# Enter File name for see result
read -p "Input file Name :" File_Name

# To Make sure that the file exist
if [ ! -f $File_Name ]
then
       echo "$File_Name does not exist."
       exit   # If condition is true then exit the script
fi

# use cat command for display file content
echo "--------------------------------------------------------------------------------------------------------------------------------------"
cat -n $File_Name
echo -e "\n--------------------------------------------------------------------------------------------------------------------------------------"
# wc command for display number of line
echo -e "Number of lines :$(wc -l $File_Name | cut -d " " -f 1)"

# use sed command for display 10th line
echo "10th Line : $(sed -n '10p' $File_Name)"
