#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_num {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Great!!! You finally guessed it!"
		echo "Congratulation"
		echo "  So we have, "
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less, try again and press Enter : "
			guess_num
		else
			echo "There is more, try again and press Enter : "
			guess_num
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and press Enter : "
guess_num
