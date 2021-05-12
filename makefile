readme : guessinggame.sh
	touch README.md
	echo "TITLE OF THE PROJECT : Peer-graded Assignment - Guessing Game" > README.md
	echo "\nDate make ran at :" >> README.md
	date >> README.md
	echo "\nThe Number of lines present in guessinggame.sh : " >> README.md
	cat guessinggame.sh | wc -l >> README.md
