#!/bin/bash
# Authors : Ethan Choe
# Date: 02/07/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a filename"
read filename

#Looks for a string that starts with any 
#string + @ + any string + . + any string larger than 2
echo "# of emails: "
egrep -c "^.+@.+\..{2,}$" $filename

#Looks for a string that starts with 303 then searches
#for any number 0-9 for the next 3-number groupings 
echo "# of 303 Phone Numbers: "
egrep -c "^303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" $filename

echo "Outputting list of @geocities.com emails"
egrep ".+\@geocities.com$" $filename >> email_results.txt
