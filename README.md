# Sokoban

## Description fonctionalite et apparence

Le joueur sera représenté par un caractère 웃 (unicode U+c6c3 HANGUL SYLLABLE US)

Les caisses sont représentées par le caractère #254 (ascii)

Les case cibles sont représentées par des caractères ★ (U+2605)

Le bord est représenté par des traits comme - et |

Il y aura un système de compétition (scoreboard, bestscore...) avec les jouers précédents.

Il y aura 5 niveaux.

## Le plan de la partie 

On fera 5 tableaux representant les plans des 5 niveaux differents. 

Les niveaux seront faits à la main, pas de génération procédurale.

Chaque case du tableau est un fichier pour faciliter la gestion des elements du tableau. Et chaque fichier a seulement un élément de caractère.

Le nombre de déplacements est potentiellement un critère de compétition. Ces scores sont enregistrés dans un fichier present localement, puis affichés pour avoir le scoreboard.

## Application des regles du jeu
Pour chaque mouvement fait, on verifit la case ou le joueur s'apprete à arriver s'il y a presence d'un mur (on interdira ce mouvement), d'une caisse (on deplace la caisse et on deplace le joueur). On utilisera la commande "case" pour cet effet. Il y aura une variable qui stocke le nombre de deplacements fait. On verifit finalement si les cases cibles ont ete toutes atteintes (le jeu est fini) ou pas.
