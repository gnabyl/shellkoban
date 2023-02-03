#!/bin/bash
old_row=$1
old_col=$2
if [$(cat ${gr}_${gc}) -ne $(cat ${local_row}_${local_col}) ]
        then
	touch "../current_level/objects/{1}_{2}"
	rm "../current_level/objects/${old_row}_${old_col}"
	echo "P" > "../current_level/objects/${gr}_${gc}"
fi   
