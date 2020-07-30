# Piyush Keshari
## sec -> C
## Roll-No -> 11

# **file.txt** used in all the examples

```txt
Assasination
Assasination
ASSasiNatIOn
I LOVE bIKeS
Thanks
Little mermeraid
Little mermeraid
Little mermeraid
Little mermeraid
I love bikes
Thanks
I LOVE bIKeS
Little mermeraid
I love bikes
ASSasiNatIOn
Thanks
thanks
```

# ```chmod```

> ## Used for changing file permissions

## **Syntax**
>chmod [reference][operator][mode] file

>
- 0 No permission
- 1 Execute permission
- 2 Write permission
- 3 Write and execute permissions
- 4 Read permission
- 5 Read and execute permissions
- 6 Read and write permissions
- 7 Read, write and execute permissions

| Operator | Description                                                                  |
| -------- | ---------------------------------------------------------------------------- |
| +        | Adds the specified modes to the specified classes                            |
| -        | Removes the specified modes from the specified classes                       |
| =        | The modes specified are to be made the exact modes for the specified classes |


| Reference | Class  | Description                                                            |
| --------- | ------ | ---------------------------------------------------------------------- |
| u         | owner  | file's owner                                                           |
| g         | group  | users who are members of the file's group                              |
| o         | others | users who are neither the file's owner nor members of the file's group |
| a         | all    | All three of the above, same as ugo                                    |

## All options for ```chmod``` command

```bash
#!/bin/bash
chmod 727 file.txt
chmod u=rw,og=r file.txt
chmod a+x file.txt
```
![chmod][1]

# ```uniq```

> ## Used along with sort command to display repeating lines only once if repeated lines are adjacent.

```bash
#!/bin/bash
uniq file.txt   #Detects adjacent duplicate lines and also deletes the duplicate lines.
uniq -c file.txt    #It tells no of times a line was repeated by displaying a number as a prefix with the line.
uniq -d file.txt #It only prints the repeated lines and not the lines which aren’t repeated
uniq -u file.txt    #It allows you to print only unique lines.
uniq -f 5 file.txt  #It allows you to skip N fields of a line before determining uniqueness of a line.
uniq -w 5 file.txt    #It only compares N characters in a line
uniq -i file.txt    #Case insensitive comparisons can be made.
uniq -z file.txt    #t will make a line end with 0 byte(NULL), instead of a newline.
```
![uniq][2]

# ```grep```

> ## The grep filter searches a file for a particular pattern of characters, and displays all lines that contain that pattern.
>
## **Syntax:**

```bash
grep [options] pattern [files]
```
| Options | Description                                                                                     |
| ------- | ----------------------------------------------------------------------------------------------- |
| -c      | This prints only a count of the lines that match a pattern                                      |
| -h      | Display the matched lines but do not display the filenames.                                     |
| -i      | Ignores case for matching                                                                       |
| -l      | Displays list of a filenames only.                                                              |
| -n      | Display the matched lines and their line numbers.                                               |
| -v      | This prints out all the lines that do not matches the pattern                                   |
| -e      | Specifies expression with this option.Can use multiple times.                                   |
| -f      | Takes patterns from file one per line.                                                          |
| -E      | Treats pattern as an extended regular expression (ERE)                                          |
| -w      | Match whole word                                                                                |
| -o      | Print only the matched parts of a matching line  with each such part on a separate output line. |

```bash
#!/bin/bash
grep -ic BIkes file.txt
grep -i BIkes file.txt
grep -ni BIkes file.txt
```
![grep][3]

# ```sed```
> ## SED is a powerful text stream editor. Can do insertion, deletion, search and replace(substitution).

```bash
#!/bin/bash
sed 's/love/luv/g' file.txt #Replaces all the occurence of love with luv(case sensitive)
sed 's/love/luv/2' file.txt #Replaces 2nd the occurence of love with luv(case sensitive) for all the lines
sed 's/love/luv/2g' file.txt #Replaces all the occurence of love with luv(case sensitive) from 2nd occurence for each line
sed 's/\(\b[A-Za-z]\)/\(\1\)/g' file.txt #encloses first character of each word in paranthesis
```
![][4]
![][5]

# ```history```

> ## history command is used to view the previously executed command.

```bash
#!/bin/bash
history
history 15
history -d 2
!28
history -c
```
![][6]
![][7]

# ```diff```

> ## This command is used to display the differences in the files by comparing the files line by line.

```bash
$ ls
a.txt  b.txt

$ cat a.txt
Gujarat
Uttar Pradesh
Kolkata
Bihar
Jammu and Kashmir

$ cat b.txt
Tamil Nadu
Gujarat
Andhra Pradesh
Bihar
Uttar pradesh
```
## -c(context mode)
```bash
$ cat file1.txt
cat
mv
comm
cp

$ cat file2.txt
cat
cp
diff
comm

$ diff -c file1.txt file2.txt
*** file1.txt   Thu Jan 11 08:52:37 2018
--- file2.txt   Thu Jan 11 08:53:01 2018
***************
*** 1,4 ****
  cat
- mv
- comm
  cp
--- 1,4 ----
  cat
  cp
+ diff
+ comm
```
## -u(unified mode)

```bash
$ cat file1.txt
cat
mv
comm
cp

$ cat file2.txt
cat
cp
diff
comm

$ diff -u file1.txt file2.txt
--- file1.txt   2018-01-11 10:39:38.237464052 +0000
+++ file2.txt   2018-01-11 10:40:00.323423021 +0000
@@ -1,4 +1,4 @@
 cat
-mv
-comm
 cp
+diff
+comm
```
## -i(case insensitive)

```bash
$ cat file1.txt
dog
mv
CP
comm

$ cat file2.txt
DOG
cp
diff
comm

Without using this option:
$ diff file1.txt file2.txt
1,3c1,3
< dog
< mv
 DOG
> cp
> diff

Using this option:
$ diff -i file1.txt file2.txt
2d1
 diff
```

# ```du```

> ## du command, short for disk usage, is used to estimate file space usage.
> ## The du command can be used to track the files and directories which are consuming excessive amount of space on hard disk drive.

```txt
-0, –null : end each output line with NULL
-a, –all : write count of all files, not just directories
–apparent-size : print apparent sizes, rather than disk usage.
-B, –block-size=SIZE : scale sizes to SIZE before printing on console
-c, –total : produce grand total
-d, –max-depth=N : print total for directory only if it is N or fewer levels below command line argument
-h, –human-readable : print sizes in human readable format
-S, -separate-dirs : for directories, don’t include size of subdirectories
-s, –summarize : display only total for each directory
–time : show time of last modification of any file or directory.
–exclude=PATTERN : exclude files that match PATTERN
```

![][8]

[1]: chmod.png
[2]: uniq.png
[3]: grep.png
[4]: sed1.png
[5]: sed2.png
[6]: history1.png
[7]: history2.png
[8]: du.png