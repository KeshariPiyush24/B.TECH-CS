# !/usr/bin/bash
clear

# Create a Demo.tsv file
cat > Month_Temp.tsv << EOF
---------------------------------------------------------------------------
| Agra      |	65       |      80     |	88         |	75      |
| Aligarh   |	70       |      75     |	89         |	74      |
| Mathura   |	68       |      85     |	80         |	77      |
| Delhi     |	75       |      90     |	78         |	80      |
| Lucknow   |	80       |      70     |	83         |	85      |
---------------------------------------------------------------------------
EOF
# Close Info.tsv file

echo -e "\t File Content "
expand Month_Temp.tsv
echo -e "\t Sort File Contents by 3rd column"
sort -k 6n Month_Temp.tsv
echo
echo "Thank You !"