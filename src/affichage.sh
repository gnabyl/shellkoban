#!/bin/bash
n_rows=5
n_cols=5
for ((i=1; i<$(($n_rows+1)); i++));
	do
        for ((j=1; j<$(($n_cols+1)); j++));
	do
		echo $i $j
	done
done

