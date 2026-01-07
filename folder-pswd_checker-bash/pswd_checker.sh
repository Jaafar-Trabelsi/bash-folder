#!/bin/bash

read -sp "Enter your password: " password #s : for silent writing , and p : to leave the prompt ""
echo #Use this to leave a line

score=0

if [ ${#password} -ge 8 ]; then ((score+=2))  # ${#} returns the length of the value stored in a variable
elif [ ${#password} -ge 6 ]; then ((score+=1))
fi

if [[ $password =~ [a-z] ]]; then ((score+=1)); fi #checks does the string contain at least one character
if [[ $password =~ [A-Z] ]]; then ((score+=1)); fi
if [[ $password =~ [0-9] ]]; then ((score+=1)); fi
if [[ $password =~ [^a-zA-Z0-9] ]]; then ((score+=2)); fi #added ^ to search for at least one  special charater

if [ $score -le 2 ]; then  strength="Very Weak"
elif [ $score -le 4 ]; then strength="Weak"
elif [ $score -le 6 ]; then strength="Moderate"
else  strength="Strong"
fi

echo "Password Strength: $strength"

