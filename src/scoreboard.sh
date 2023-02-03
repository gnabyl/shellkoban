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
	sort -t: -k2 ../score/level1/scoreboard.txt | head -n 5 | paste -d " " -s
	echo -n "|| level2 ||  "
        sort -t: -k2 ../score/level2/scoreboard.txt | head -n 5 | paste -d " " -s 
        echo -n "|| level3 ||  "
        sort -t: -k2 ../score/level3/scoreboard.txt | head -n 5 | paste -d " " -s 
        #echo -n "|| level4 ||  "
        #sort -t: -k2 ../score/level4/scoreboard.txt | head -n 3 | paste -d " " -s 
        #echo -n "|| level5 ||  "
        #sort -t: -k2 ../score/level5/scoreboard.txt | head -n 3 | paste -d " " -s 
        echo "***************************************************************************"
}

affichage_score
