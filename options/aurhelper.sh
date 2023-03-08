!/bin/bash
clear
items=(1 "Yay (aur helper cli)"
       2 "Paru (aur helper cli)"
       3 "Pacaur (aur helper cli)"
       4 "Pamac (aur helper gui)"       
                )
while choice=$(dialog --title "- | Arkrat / Aur Helpers | -" \
                 --menu "\nSeleccione un Aur Helpers:" 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/aurhelper/yay.sh;;
        2) ./options/aurhelper/paru.sh;;
        3) ./options/aurhelper/pacaur.sh;;
        4) ./options/aurhelper/pamac.sh;;      
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal    
