#!/bin/bash

validation()
{
local_row=$1
local_col=$2
local_rowplus=$3
local_colplus=$4

if [ "#" -eq $(cat ${local_row}_${local_col}) ]
	then 
	va=0
	vb=0
elif [ "@" -eq $(cat ${local_row}_${local_col}) ]
	then 
	if [ "#" -eq $(cat ${local_rowplus}_${local_colplus})]
		then
		va=0
	    	vb=0
	elif [  "@" -eq $(cat ${local_rowplus}_${local_colplus}) ]
		then	
		va=0
		vb=0
	else 	
		va=1
		vb=1
else 
	va=1
	vb=0
fi
}



