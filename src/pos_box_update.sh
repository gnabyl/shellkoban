#!/bin/bash
modifBox () {
	if [ "$vb" == "1" ]
	then
		touch "../current_level/objects/${1}_${2}"
		echo "@" > "../current_level/objects/${1}_${2}"
	fi 
}
