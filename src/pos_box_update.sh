#!/bin/bash
#prend en parametre les coordonnes de la position apres ou le joueur va atterir
modifBox () {
	if [ "$vb" == "1" ]
	then
		touch "../current_level/objects/${1}_${2}"
		echo "@" > "../current_level/objects/${1}_${2}"
	fi 
}
