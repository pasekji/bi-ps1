#!/bin/bash
TEMP=$(find ./video -type f -name '*.*' | sed 's|.*\.||' | sort -u)
COUNT=$(echo "$TEMP" | wc -l | awk '{print $1}')
INDEX=1
while [ $INDEX -le $COUNT ]; do
	EXT=$(echo "$TEMP" | sed -n "$INDEX"p)
	mkdir ./video-"$EXT"
	mv ./video/*"$EXT" ./video-"$EXT"/
	let INDEX=INDEX+1
done
