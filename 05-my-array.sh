#!/bin/bash

myarray=(1 2 3 "shradehsh pathak" 10 20)

echo "fisrt elect from arry ${myarray[0]}"

echo "length of the array is ${#myarray[*]}"

echo "all element from the Array as follows ${myarray[*]}"

myarray+=(new 40 50 )

echo "Print updated vlaues in Array ${myarray[*]}"

# how to store Key Value Pair in Array

declare -A  array=([name]='shradhesh' [age]=30 [city]='Pune')

echo "Print new array with Key value ${array[*]}"
