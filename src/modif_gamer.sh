#!/bin/bash

modif_gamer() {
	old_row=$1
	old_col=$2
	new_row=$3
	new_col=$4
	# touch "../current_level/objects/{1}_{2}"
	rm "../current_level/objects/${old_row}_${old_col}"
	echo "P" > "../current_level/objects/${new_row}_${new_col}"
}

