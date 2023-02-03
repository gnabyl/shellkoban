# $1: index of level

n_rows=0
n_cols=0

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
	while read line; do
		let "col=0"

		while read cell; do
			# Create map file
			echo $cell > "$dest_map_folder/${row}_${col}"
			# Create objects file
			if [ $cell != "#" ] || [ $cell != " " ]
			then
				echo $cell > "$dest_objects_folder/${n_rows}_${col}"
			fi


			let "col=col+1"

			if [ $col -gt $n_cols ]
			then
				n_cols=$col
			fi
			if [ $row -gt $n_rows ]
			then
				n_rows=$row
			fi
		done < <(echo $line | fold -w 1)

		let "row=row+1"

	done < $src_file
}

load_level 1
