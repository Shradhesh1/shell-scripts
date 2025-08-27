#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if [ $FREE_SPACE -lt $TH  ]
then
  echo "RAM is running low "
else
  echo "RAM Space is sufficient  current Free ram is $FREE_SPACE MB"
fi
