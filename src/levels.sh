# $1: index of level
load_level() {
	local src_file="../levels/level-$1"
	local dest_map_folder="../current_level/map"
	local dest_objects_folder="../current_level/objects"

	rm -rf $dest_map_folder
	rm -rf $dest_objects_folder
	
	# Create folders
	mkdir -p $dest_map_folder
	mkdir -p $dest_objects_folder


	# Read source file line by line
	IFS="" # keep whitespaces
	let "row=0"
	while read -r line; do
		let "col=0"

		while read cell; do
			# Create map files
			echo -n $cell > "$dest_map_folder/${row}_${col}"
			# Create objects files
			if [ "$cell" != "#" ] && [ "$cell" != " " ] && [ "$cell" != "*" ]
			then
				echo -n $cell > "$dest_objects_folder/${row}_${col}"
			fi

			let "col=col+1"

		done < <(echo $line | fold -w 1)

		let "row=row+1"

		if [ $col -gt $n_cols ]
		then
			n_cols=$col
		fi
		if [ $row -gt $n_rows ]
		then
			n_rows=$row
		fi

	done < $src_file
}
