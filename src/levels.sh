# $1: index of level
load_level() {
	local src_file="../levels/level-$1"
	local dest_map_folder="../current_lelvel/map"
	local dest_objects_folder="../current_lelvel/objects"

	rm -rf $dest_map_folder
	rm -rf $dest_objects_folder
	
	# Create folders
	mkdir -p $dest_map_folder
	mkdir -p $dest_objects_folder


	# Read source file line by line
	IFS="" # keep whitespaces
	let "n_rows=0"
	let "n_cols=0"
	while read line; do
		let "n_rows=n_rows+1"
		let "col=0"

		echo $line | fold -w 1 | while read c; do
			let "col=col+1"
			echo $cell > "$dest_map_folder/${n_rows}_${col}"
		done
	done < $src_file
}

load_level 1
