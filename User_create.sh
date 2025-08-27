#!/bin/bash
# *******************************************************
# * Script Name  : LocalUsercreation                     *
# * Purpose      : Linux user mgmt  automation           *
# * Author       : Shradhesh Pathak                      *
# * Date         : 27-Aug-2025                           *
# * Version      : v1.0                                  *
# Script should be  exicuted with root user else error   *
# script will take fisrt argument as user rest comments *
# Auto Generate Password for User                         *
# Successful execution script will display following      *
# Username : Password : Host-details                     *
# Force password Change on First Login                   *
# *******************************************************

#scirpt should exicuted with sudo/root access

if [ "${UID}" -ne 0 ]
then
  echo "User should be root to exicute this script"
  exit 1
fi

#user should provide at least one argument
if [ "${$#}" -lt 1 ]
then
   echo "Usage: ${0} USER_NAME [COMMENT]..."
   echo " Enter USER_NAME with Comment User Full Name"
exit 1
fi

# Store Fisrt Argument as User name
USER_NAME="${1}"

# more th one argument other agrument consider as comment
shift
COMMENT="${@}"

# Create Password
PASSWORD=$(date +%s%N)

# Create User

useradd -c $COMMENT -m $USER_NAME

# check user created  or not

if [ $? -ne 0  ]
then
  echo "User has not been Created please try with New User"
  exit 1
fi

# set password for the user

passwd  $USER_NAME $PASSWORD

# check user password created or not

if [  $? -ne 0 ]
then
   echo "User password has not genrated"
   exit 1
fi

# Force password Change on Fisrt Login
passwd -e $USER_NAME

# Display Username , Password & Hostname where the user is created

echo "User_Name: $USER_NAME "
echo "Password : $PASSWORD"
echo "HOstanme : $(hostname)"

