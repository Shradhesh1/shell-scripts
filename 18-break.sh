#!/bin/bash

no=6

for i in 1 2 3 4 5 6 7 8 9
do

if [ $no -eq $i ];
then
 echo " number is found $no"
 continue

fi

echo " given number is $i "

done