#!/bin/bash
b=10

until [ $b -eq 1 ]

do

echo "print a from until loop $b"

((b--))

done

# infiniate Loop

while true

do

echo "ram uage"
ram=`free -g`
echo $ram

sleep 2s

done
