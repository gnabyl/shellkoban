#!/bin/bash
#prend en parametre les coordonnes de la position apres ou le joueur va atterir
modif_box () {
	if [ "$vb" == "1" ]
	then
		echo "@" > "../current_level/objects/${1}_${2}"
	fi 
}
