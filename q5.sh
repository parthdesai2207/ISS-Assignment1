#!/bin/bash
read x
y=$( echo $x | rev)
echo $y 
echo $y | tr 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' 'bcdefghijklmnopqrstuvwxyzaBCDEFGHIJKLMNOPQRSTUVWXYZA'
arr=()
echo $x | grep -o . > temp
let j=0
for i in $(cat temp)
do
	arr[$j]=$i
	((j++))
done
let n=${#arr[*]}/2
for ((i=0;i<n;i++))
do
	echo -n ${arr[n-i-1]}
done
for ((i=n;i<2*n;i++))
do
	echo -n ${arr[i]}
done
echo
rm temp
