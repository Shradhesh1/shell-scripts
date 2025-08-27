#!/bin/bash

if  [ $#  -eq 0 ]

then
exit 1
fi

echo "values in $@"

for x in $@

do
echo " name from $x "
done
