#!/bin/bash
u=1
while IFS= read -r line
do
    echo -n "Line No:" $u "- Count of words: "
    echo $line | awk '{print NF}' 
    let u=$u+1
done < $1
