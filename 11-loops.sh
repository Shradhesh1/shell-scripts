#!/bin/bash
<<comment
FILE=/shelltools/shradhesh-script/names.txt

for name in $(cat $FILE)
do
echo "the list of name is $name"
done
myarray=(1 2 3 4 shradhesh pathak 40 )

length=${#myarray[*]}

for (( i=0; i<=$length; i++ ))
do
echo ${myarray[$i]}
done

# while Loop when condition is ture

a=0
while [ $a -le 5 ];
do
echo "$a"

let a++

done

comment

# until loop it will till condition is trure

b=10
until [ $b -eq 1 ]

do

echo "print a from until loop $b"

((b--))

done
