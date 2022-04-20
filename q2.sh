#!/bin/bash
awk -F " *~ *" '$1!=""{print $2 " once said, \"" $1 "\""}' quotes.txt
