#!/bin/bash

number=$(( $RANDOM % 500 + 1 ))

echo "Guess a number between 1 and 500"

guess=0

while [ "0$guess" -ne $number ] ; do
read guess
[ "0$guess" -lt $number ] && echo "Too Low"
[ "0$guess" -gt $number ] && echo "Too High"
done

echo "Yes, you get it right!"
exit 0
