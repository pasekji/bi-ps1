#!/bin/bash
cat apache.log | grep " .error. " | awk '{print $13}' | sed 's/]//g' > ip.txt
cat apache.log | grep -v " .error. " | awk '{print $6}' >> ip.txt
MAX=$(sort ip.txt | uniq -c | awk 'BEGIN {max = 0} {if ($1>max) max=$1} END {print max}')
sort ip.txt | uniq -c | grep "$MAX " | awk '{print $2}' | sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4
rm ip.txt
