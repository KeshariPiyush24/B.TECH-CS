#!/bin/bash
-------------------------------------------------------------------------------------------------------------------------
cp file1.txt newfolder #Copys file1 to newfolder
cp file1.txt file2.txt #Copys content of file1 to file2
cp file1.txt file1.bak #Makes backup file for file1
-------------------------------------------------------------------------------------------------------------------------
mv file1.txt newfolder #Moves file1 to newfolder
mv file1.txt file2.txt #Moves content of file1 to file2(seems like it renames file1 to file2)
mv file1.txt file1.bak #Makes backup file for file1 and deletes original file
-------------------------------------------------------------------------------------------------------------------------
sort file1 #Displays contents of file1 sorted alphabetically
sort –n file1.txt #To sort a file with numeric data
sort –r file1.txt #To sort a file alphabetically in reverse order
sort -nr file1.txt #To sort a file with numeric data in reverse order
sort -o outputfile1.txt file1.txt #Stores the result of sort function in a file
sort file1.txt > outputfile1.txt  #Stores the result of sort function in a file
sort -k 2 file1.txt #Sorts the contents of file1 according to contents of column 2 and displays it
sort -c file1.txt
<<COMMENT
    This option is used to check if the file given is already sorted or not
    (If there is no output then the file is considered to be already sorted )
COMMENT
sort -u file1.txt #To sort and remove duplicates
sort -M file1.txt #To sort by month
-------------------------------------------------------------------------------------------------------------------------
cut –m -n file1.txt #Displays only the columns from m to n of the file
-------------------------------------------------------------------------------------------------------------------------
who #Lists who is logged on your machine
whoami #Lists the username of the current user logged in
-------------------------------------------------------------------------------------------------------------------------
ps aux #Shows the processes for the current shell by id
<<COMMENT
    Explanation about the outputs:
    PID – the unique process ID
    TTY – terminal type that the user is logged into
    TIME – amount of CPU in minutes and seconds that the process has been running
    CMD – name of the command that launched the process.
COMMENT

<<COMMENT
    ps -A or ps -e ---> To view all the running processes
    ps -a ----> View all processes except both session leaders and processes not associated with a terminal
    ps -d ----> View all the processes except session leaders
COMMENT
-------------------------------------------------------------------------------------------------------------------------
kill -9 887 #kills process with pID 887 with SIGKILL signal(terminates the process immediately)
-------------------------------------------------------------------------------------------------------------------------
bc #Starts a Calculator
-------------------------------------------------------------------------------------------------------------------------
top #We all know apout ps command which displays all the running processes which is a snapshot so to see all the running processes and threads interaticelu i.e dynamically then top command is used
-------------------------------------------------------------------------------------------------------------------------
grep "Hello world" fiel.txt #displays all the lines containing "Hello world" in it(without quotes)
-------------------------------------------------------------------------------------------------------------------------
chmod 777 *.txt #change permissions of all .txt files to 777
-------------------------------------------------------------------------------------------------------------------------
