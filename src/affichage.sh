#!/bin/bash
affichage () {
	for ((i=1; i<$(($n_rows+1)); i++));
	do
        	for ((j=1; j<$(($n_cols+1)); j++));
		do
			echo -n $(../current_level/map/${i}_${j})
		done
		printf "\n"
	done
}
