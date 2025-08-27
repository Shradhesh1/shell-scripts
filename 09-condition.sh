#!/bin/bash
read -p " Enter your Marks " mark

if [ $mark -ge 80  ];
then
  echo "Your are  Passed!!Fisrt Devision!! with Distiction "
elif [ $mark -ge 60 ];
then
echo " Amezing your passed in second devision !!!!  "

elif [ $mark -ge 40 ];
then
echo "Wonderfull you have passed "
else
  echo "Your are Failed"
fi
