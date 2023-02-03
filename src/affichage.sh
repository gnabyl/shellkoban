#!/bin/bash
affichage () {
	for ((i=0; i<$(($n_rows)); i++));
	do
        	for ((j=0; j<$(($n_cols)); j++));
		do
			if test -f "../current_level/objects/${i}_${j}"; 
			then
    			echo -n $(../current_level/objects/${i}_${j})
			else 
				echo -n $(../current_level/map/${i}_${j})
			fi
		done
		printf "\n"
	done
}
