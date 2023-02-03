source "./levels.sh"

n_rows=0
n_cols=0

let "current_level=1"
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
		# Wait for user input
		# Check validity
		# Calculate new position
		# Display map
	done
done
