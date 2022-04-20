#!/bin/bash
arr=()
IFS=','
read -a arr
n=${#arr[*]}
for ((i=n-1 ; i>0 ; i--))
do
	    for ((j=0 ; j<i ; j++))
	    do
                if [ ${arr[$j]}>${arr[$j+1]} ]
                then
                        temp=${arr[$j]}
                        arr[$j]=${arr[$j+1]}
                        arr[$j+1]=$temp
                fi
        done
done
echo ${arr[*]}
