#!/bin/ksh
####################################################
# Written by Xiaofang Yu    Nov. 24, 2017
# Purpose: This script is for CSC505 Weekend3_KSHChallenge assignment
####################################################


# 1) Use SED and extract all lines that match the string "lives in".

# Joe lives in Reno, Nevada.
# Mary lives in Fremont, California.
# ...


sed -n '/lives in/p' UNIX_script_challenge_input.txt > UNIX_script_challenge_output.txt



# 2) Use cut/paste (unix commands) to convert the above to:

# Joe,Nevada
# Mary,California
# ...


paste -d ',' <(cut -f 1 -d ' ' UNIX_script_challenge_output.txt) <(cut -f 5 -d ' ' UNIX_script_challenge_output.txt) | cut -f 1 -d '.' > file1



# 3) Use AWK /associative array to create a report as follows:

# Nevada 1
# California 1
# ...


cut -f 2 -d ',' file1 | sort -r | awk '{if ($1!=prev && NR>1) {print($1, NR);prev=$1;}}' > UNIX_script_challenge_output_1.txt





