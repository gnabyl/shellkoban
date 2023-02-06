source "./levels.sh"
source "./affichage.sh"
source "./clavier.sh"
source "./affichage_nombre_etape.sh"
source "./scoreboard.sh"

check_win() {
	nb_stars=$(ls "../current_level/objects/" | wc -l)
	nb_stars=$((nb_stars-1))

	nb_good=0
	for ((i=0; i<$(($n_rows)); i++));
	do
		for ((j=0; j<$(($n_cols)); j++));
		do
			if test -f "../current_level/objects/${i}_${j}" \
				&& [ "@" == "$(cat "../current_level/objects/${i}_${j}")" ] \
				&& [ "*" == "$(cat "../current_level/map/${i}_${j}")" ]
			then
				nb_good=$((nb_good+1))
			fi
		done
	done
}

n_rows=0
n_cols=0
gc=0
gr=0

nb_stars=0
nb_good=0

let "current_level=1"
score=0
let "max_level=3"


while [ $current_level -le $max_level ]
do
	# Load the current level
	load_level $current_level
	score=0

	# The user didn't win

	abc=0
	# Main game loop
	while [ true ]
	do
		# Clear screen to redraw
		clear
		echo "Level $current_level: size = $n_rows x $n_cols"
		echo "Press 's' to show the scoreboard"
		echo "Press 'r' to restart"
		echo
		echo
		# Display map
		affichage
		echo
		echo
		affichage_nombre_etape
		check_win
		if [ "$nb_good" == "$nb_stars" ]
		then
			echo "CONGRATULATION!"
			write_score $current_level $1 $score
			current_level=$((current_level+1))
			sleep 3
			break
		fi
		# Wait for user input
		# Check validity
		# Calculate new position
		ecoute_touche
	done
done
