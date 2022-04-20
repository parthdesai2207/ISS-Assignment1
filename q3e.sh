#!/bin/bash
grep "\S" $1 | tr ' ' '\n' | sort | uniq -c | awk '{print $2 " " $1}'
