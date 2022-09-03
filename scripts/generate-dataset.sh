#!/bin/bash

#for (( i=1; i<= $2; i++))
#do
#	in1=$RANDOM
#	in2=$RANDOM
#	space=" "
#	stri1=$(cat /dev/urandom | tr -cd 'A-Za-z0-9' | head -c100)
#	echo "$in1$space$in2$space$stri1" >> $1.txt
#done

#num_records=$2
int1="$1.int1"
int2="$1.int2"
stri1="$1.str"
space=" "
#: > $1.txt
shuf -i 0-4294967296 -n $2 > $int1
shuf -i 0-4294967296 -n $2 > $int2
base64 -i /dev/urandom | tr -cd 'A-Za-z0-9' | fold -w 100 | head -n $2 > $stri1
paste $int1 $space $int2 $space $stri1 > $1.txt
#echo "$temp1$space$temp2$space$temp3" >> $1.txt
