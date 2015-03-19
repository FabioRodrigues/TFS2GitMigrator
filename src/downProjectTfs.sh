#!/bin/bash

	echo '----------------------------------------------------'
	echo 'Downloading '$1...
	echo '----------------------------------------------------'
	git-tf clone $2 '$/'$1 --deep
	if [ "$?" == "0" ]; then
		echo '----------------------------------------------------'
		echo 'Success to download project '$1
		echo '----------------------------------------------------'
		echo ''
	else
	echo 'Unable to download project.'
fi

