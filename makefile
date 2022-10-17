all: README.md

README.md: guessinggame.sh

	echo "# Project Guessing Game - The Unix Workbench" > README.md

	echo "" >> README.md

	echo "Make was run at $$(date +'%F %T')" >> README.md
		echo "" >> README.md

	echo "guessinggame.sh LOC:" >> README.md
		wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
		rm README.md
