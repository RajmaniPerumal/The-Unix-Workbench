#! /usr/bin/env bash

files_count=$(find * -maxdepth 0 -type  f | wc -l)

echo "Guess How Many Files in current DIRECTORY?"

function check_answer {
	if [[ $1 -gt $files_count ]]
	then
		echo "Your guess is too high. Please try again"
	elif [[ $1 -lt $files_count ]]
	then
		echo "Your guess is low. Please try again."
	else
		echo "Congratulations, you guessed right for files count in current directory"
	fi
	}
	while [[ ! $user_guess -eq $files_count ]]
	do
	read user_guess
        check_answer $user_guess
	done
