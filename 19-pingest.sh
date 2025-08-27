#!/bin/bash

read -p "please enter the site name you want to check " site

ping -c 1 $site  &> /dev/null

if [ $? -eq 0  ]
then
echo "Connectios is succesfull to $site "
else
echo "Unable to Connect $site "

fi

echo "name of the script is ${0}"
