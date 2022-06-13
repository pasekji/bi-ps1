#!/bin/bash
cat apache.log | grep -v " .error. " | awk '{print $6}' > ip.txt
sort ip.txt | uniq -c | awk 'BEGIN {max = 0} {if ($1>max) max=$1} END {print max}'
rm ip.txt
