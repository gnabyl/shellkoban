#!/bin/bash

va=2
vb=2

validation()
{
	local_row=$1
	local_col=$2
	local_rowplus=$3
	local_colplus=$4

	if [[ "#" == "$(cat "../current_level/map/${local_row}_${local_col}")" ]]
	then 
		va=0
		vb=0
	elif test -f "../current_level/objects/${local_row}_${local_col}" \
		&& [ "@" == $(cat "../current_level/objects/${local_row}_${local_col}") ]
	then 
		if [[ "#" == "$(cat "../current_level/map/${local_rowplus}_${local_colplus}")" ]]
		then
			va=0
			vb=0
		elif test -f "../current_level/objects/${local_rowplus}_${local_colplus}" \
			&& [[ "@" == "$(cat "../current_level/objects/${local_rowplus}_${local_colplus}")" ]]
		then	
			va=0
			vb=0
		else 	
			va=1
			vb=1
		fi
	else 
		va=1
		vb=0
	fi
}

validation 2 1 2 0

echo $va
echo $vb

