#!/bin/bash

# créer 5 dossier pour chaque niveau dans dossier score
# fichier scoreboard.txt
# fonction 1: écrire scoreboard dans fichier scoreboard.txt
#   il faut écrire nom_joueur:score
# fonction 2:  lire score de fichier scoreboard.txt
#current_level=1
#nom_joueur="shao"
#score=10
write_score() {
	# D'abord on prend le current_level
	# Ensuite on prend le nom_joueur
	# Puis on prend  le score du joueur
	# Enfin on écrit nom_joueur:score
	echo "$2:$3">> ../score/level$1/scoreboard.txt
	echo "Écrire le score avec success!"
}
#write_score $current_level $nom_joueur $score

affichage_score() {
	echo "***************************************************************************"
	echo "*                               SCOREBOARD                                *"
        echo "***************************************************************************"
	echo -n "|| level1 ||  "
	paste -d " "  -s ../score/level1/scoreboard.txt
	echo -n "|| level2 ||  "
        paste -d " "  -s ../score/level2/scoreboard.txt
        echo -n "|| level3 ||  "
        paste -d " "  -s ../score/level3/scoreboard.txt
        echo -n "|| level4 ||  "
        paste -d " "  -s ../score/level4/scoreboard.txt
        echo -n "|| level5 ||  "
        paste -d " "  -s ../score/level5/scoreboard.txt
        echo "***************************************************************************"
	#paste  -s ../score/level1/scoreboard.txt ../score/level2/scoreboard.txt ../score/level3/scoreboard.txt ../score/level4/scoreboard.txt ../score/level5/scoreboard.txt
	
}

affichage_score
