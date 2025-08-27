#!/bin/bash
file=/shradhesh-script/test.csv

if [ -f $file ]
then
  echo "file exist"
else
  echo "file not Exist"
  exit 1
fi
