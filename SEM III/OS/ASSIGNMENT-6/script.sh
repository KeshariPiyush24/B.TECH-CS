clear

# Create a Info.tsv file
cat > Info.tsv << EOF
-----------------------------------------
|   Name    |	Roll No. | 	Age    |
| Priyanshu |	31       |	19     |
| Piyush    |	12       |	19     |
| Shivansh  |	33       |	19     |
| Rohan     |	53       |	19     |
| Nikhil    |	31       |	19     |
| Abhishek  |	15       |	19     |
| Aditya    |	32       |	19     |
| Rishab    |	47       |	19     |
| Vivek     |	22       |	19     |
| Yash      |	56       |	19     |
-----------------------------------------
EOF
# Close Info.tsv file

echo "--------------------------------------------"
echo -e '\tFile Content '

# For see Current file content
expand Info.tsv
echo
echo -e "\tSorted File Content "

# For see sorted file content in alphabetical order
sed '1,2d' Info.tsv | cut -d "	" -f 1 | sort
echo "--------------------------------------------"
echo "THANK YOU !"