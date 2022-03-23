#!/bin/bash

if [[ $# == 0 || $# -lt 2 ]]
then
echo -ne"Usage: $0 [input-file] [output-file]"
exit 
fi 

if [[ ! -f $1 ]]
then 
echo -ne "$1 does not exist\n"
else [[ ! -f $2 ]] 
echo -ne "$2 does not exist\n"
fi 


if [[ ! -f $1 && ! -f $2 ]]
then 
echo -ne "$1  and $1 does not exists\n"
exit 
fi 


line=$(cat $1)
for i in $line
do 
a=$(expr substr $i 1 8)
b=$(expr substr $i 9 8)
c=$(expr substr $i 17 8)
d=$(expr substr $i 25 8)

echo $((2#$a)).$((2#$b)).$((2#$c)).$((2#$d))

done > $2

