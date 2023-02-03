source "./validation.sh"
source "./modif_gamer.sh"
source "./pos_box_update.sh"

ecoute_touche () {
    read -rsn 1 t
    case $t in
        A) validation $((gr-1)) $gc $((gr-2)) $gc; 
            if [ "$va" == "1" ]
            then
							modif_gamer $gr $gc $((gr-1)) $gc
							modif_box $((gr-2)) $gc
              gr=$((gr-1))
							score=$((score+1))
            fi;;
        B) validation $(($gr+1)) $gc $((gr+2)) $gc;
            if [ "$va" == "1" ]
            then
							modif_gamer $gr $gc $((gr+1)) $gc
							modif_box $((gr+2)) $gc
							gr=$((gr+1)) 
							score=$((score+1))
            fi ;;
        C) validation $gr $((gc+1)) $gr $((gc+2))
            if [ "$va" == "1" ]
            then
							modif_gamer $gr $gc $gr $((gc+1)) 
							modif_box $gr $((gc+2))
							gc=$((gc+1))
							score=$((score+1))
            fi ;;
        D) validation $gr $((gc-1)) $gr $((gc-2))
            if [ "$va" == "1" ]
            then
							modif_gamer $gr $gc $gr $((gc-1)) 
							modif_box $gr $((gc-2))
							gc=$((gc-1))
							score=$((score+1))
            fi;;
    esac

}
