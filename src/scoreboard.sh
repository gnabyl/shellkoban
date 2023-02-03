#!/bin/bash

# créer 5 dossier pour chaque niveau dans dossier score
# fichier scoreboard.txt
# fonction 1: écrire scoreboard dans fichier scoreboard.txt
#   il faut écrire nom_joueur:score

#current_level=1
#nom_joueur="shao"
#score=10
write_score() {
	# D'abord on prend le current_level
	# Ensuite on prend le nom_joueur
	# Puis on prend  le score du joueur
	# Enfin on écrit nom_joueur:score
	echo "$nom_joueur:$score">> ../score/level$current_level/scoreboard.txt
}
