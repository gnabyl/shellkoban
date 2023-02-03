source "./levels.sh"
source "./affichage.sh"
source "./clavier.sh"
source "./affichage_nombre_etape.sh"


n_rows=0
n_cols=0
gc=0
gr=0

let "current_level=1"
score=0
let "max_level=1"

while [ $current_level -le $max_level ]
do
	# Load the current level
	load_level $current_level

	# The user didn't win
	win=false

	# Main game loop
	while [ $win = false ]
	do
		# Clear screen to redraw
		clear
		echo "Level $current_level: size = $n_rows x $n_cols"
		# Check validity
		# Calculate new position
		# Display map
		affichage
		affichage_nombre_etape
		echo $gr
		echo $gc
		# Wait for user input
		ecoute_touche
	done
done
