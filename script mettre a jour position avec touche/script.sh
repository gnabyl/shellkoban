#!/bin/bash
while true
do
    read -rsn 1 t
    case $t in
        A) #verification validite
	#si valide: 
		gr=$(($gr+1)) ;;
        B) #verification validite
        #si valide: 
		gr=$(($gr-1)) ;;
        C) #verification validite
        #si valide: 
		gc=$(($gc+1)) ;;
        D) #verification validite
        #si valide: 
		gc=$(($gc-1)) ;;
    esac
done
