#!/bin/bash
echo "Please choose your Option to print !!"
echo " Please enter a to print date  "
echo "please enter b to print list of script"
echo "please enter c to print current location"

read choice

case $choice in
     a)echo "Today date is"
        date
       echo "-------"
         ;;
     b)ls -lrth;;
     c)pwd;;
     *)
echo "please provide valid value"
esac
