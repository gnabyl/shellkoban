#!/bin/bash

# This the main code file

# fonction pour Rédemarrer level
# Taper <R> pour Rédemarrer level
current_level=0
redemarrer_level() {
	read -r -p "Quel niveau vous voulez rédemarrer? (saisir un nombre de 1 à 5): " current_level
	load_level(current_level)
}
