#!/bin/bash
DATUM=$(date +"%Y %m %d %H %M %S")

YEAR=$(echo "$DATUM" | awk '{print $1}')
MONTH=$(echo "$DATUM" | awk '{print $2}')
DAY=$(echo "$DATUM" | awk '{print $3}')
HOUR=$(echo "$DATUM" | awk '{print $4}')
MINUTE=$(echo "$DATUM" | awk '{print $5}')
SECOND=$(echo "$DATUM" | awk '{print $6}')

mkdir ~/"$HOUR"
mkdir ~/"$HOUR"/"$MINUTE"
mkdir ~/"$HOUR"/"$MINUTE"/"$SECOND"

mkdir ~/"$YEAR $MONTH $DAY $HOUR$MINUTE$SECOND"
