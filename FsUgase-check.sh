#!/bin/bash

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda1" | awk '{print $5}' | tr -d %)
TO="shradhesh.pathak@t-systems.com"
if [ $FU -gt 10 ]
then
 echo "Warrning!!!  Disk is Full please clean UP - $FU %" | mail -s "Disk Space Alert!!" $TO

else

 echo "All Good"

fi
