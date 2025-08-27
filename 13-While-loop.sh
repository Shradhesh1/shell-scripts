#!/bin/bash
a=10
until [ $a -eq 1   ];

do

echo "Value of a is $a"

(( a-- ))

done

while true

do

echo "hello this is from while loop"

sleep 2s

done
