#!/bin/bash
uniq file.txt   #Detects adjacent duplicate lines and also deletes the duplicate lines.
uniq -c file.txt    #It tells no of times a line was repeated by displaying a number as a prefix with the line.
uniq -d file.txt #It only prints the repeated lines and not the lines which aren’t repeated
uniq -u file.txt    #It allows you to print only unique lines.
uniq -f 5 file.txt  #It allows you to skip N fields of a line before determining uniqueness of a line.
uniq -w 5 file.txt    #It only compares N characters in a line
uniq -i file.txt    #Case insensitive comparisons can be made.
uniq -z file.txt    #t will make a line end with 0 byte(NULL), instead of a newline.