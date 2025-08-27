#!/bin/bash

myvar="my name is shradhesh pathak"

length_var=${#myvar}

echo "Lengh of var is $length_var"

echo "upper case is --- ${myvar^^}"

echo "lower case is --- ${myvar,,}"

replace=${myvar/shradhesh/anmol}

echo "${replace}"


echo "${replace:4:11}"
