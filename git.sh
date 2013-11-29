#!/bin/bash

if [ "$1" == '' ]
	then

		echo "Passar parametro para comentario."

	else

	echo " "
	echo "0 - Pull github: \"pull .\"  ..."

	git pull

	echo " "
	echo "1 - Adding all files: \"Add .\"  ..."

	git add .

	echo " "
	echo "2 - Commiting files: \"commit -m\" ..."
	echo " "

	git commit -m "$1"

	echo " "
	echo "3 - Up files: \"push origin master\" ..."
	echo " "

	git push origin master

	echo " "
	echo "3.1 - Up files: \"push heroku master\" ..."
	echo " "

	git push heroku master

	if [ $? -eq 0 ]
	then
		echo " "
		echo "4 - GitHub : Finished success"
	else
		echo " "
		echo "4 - GitHub : Fail"
	fi

	echo " "
	echo "5 - Last Status "
	echo " "

	git status

	echo " "

fi
