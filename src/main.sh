source "./levels.sh"

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
		echo "Run"
		# Wait for user input
		# Check validity
		# Calculate new position
		# Display map
	done
done
