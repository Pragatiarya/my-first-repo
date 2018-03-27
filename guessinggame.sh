#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

echo "How many files are in the current directory? Type in number and press enter"
read response

while [[ $response -ne  0 ]]
do 
	
	if [[ $response -eq $(ls | wc -l) ]]
	then
		echo "Congratulations! Correct guess" 
		break       
        elif [[ $response -lt $(ls | wc -l) ]]
	then
		echo "Guess is too low. Please try again"
	read response
	else
		echo "Guess was too high. Please try again."
	read response
	fi
done
}

guessinggame 

