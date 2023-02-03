#!/bin/bash
affichage () {
	for ((i=1; i<$(($n_rows+1)); i++));
	do
        	for ((j=1; j<$(($n_cols+1)); j++));
		do
			cat "../current_level/map/${i}_${j}" < printf
		done
		printf "\n"
	done
}
