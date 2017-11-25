#!/bin/ksh
####################################################
# Written by Xiaofang Yu
# Oct. 23, 2017
# Purpose: This script is for CSC505 Weekend2_KSHChallenge assignment

###################################################

#Define Variables
HOME="/home/xiaofang/Desktop/UnixTest" #Simple home directory   
#####  changing this path when running on your computer  #####

# Challenge #1
# 1) Find all the programs on your Fedora system that have the extension .sh.
# 2) Sort all the files using the size of the file.
# 3) Print all the details for the largest and the smallest files.

# sort all ".sh" files by size and output to a file
find . -name '*.sh' -exec ls -l {} \; | sort -n -k5 >> $HOME/sortedFiles.txt


# print details of the biggest and the smallest file.
echo "The info about the biggest .sh file is: " >> $HOME/sizedFiles.txt
tail -n1 < $HOME/sortedFiles.txt >> $HOME/sizedFiles.txt

echo "" >> $HOME/sizedFiles.txt
echo "The info about the smallest .sh file is: " >> $HOME/sizedFiles.txt
head -n1 < $HOME/sortedFiles.txt >> $HOME/sizedFiles.txt



#Challenge #2

#1) Find the list of all the processes on your Fedora computer and sort by time of execution.
#2) sort the above list 
#3) Find the longest and shortest running process.

ps -e -o pid,comm,etime --sort=etime >> $HOME/SortedProcesses.txt

echo "" >>$HOME/SelectedProcesses.txt
echo "The longest running process is: " >>$HOME/SelectedProcesses.txt
(head -n1 && tail -n1) < $HOME/SortedProcesses.txt >> $HOME/SelectedProcesses.txt

echo "The shortest running process is: " >>$HOME/SelectedProcesses.txt
head -n2 && < $HOME/SortedProcesses.txt >> $HOME/SelectedProcesses.txt



#Challenge #3

#1) The files on your Fedora system have permissions, and some of them have the first bit set.
#2) Locate those files and print all their details.

find . -perm -u+r -ls >> $HOME/fileWithPermission.txt



















 


