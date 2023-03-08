!/bin/bash
clear
items=(1 "Kde Plasma"
       2 "Gnome"
       3 "Budgie"
       4 "Xfce"
       5 "Mate"
       6 "Cinnamon"
       7 "Lxqt"
       8 "Lxde"
                )
while choice=$(dialog --title "- | Arkrat / Escritorios | -" \
                 --menu "\nSeleccione un escritorio:" 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/desktop/kdeplasma.sh;;
        2) ./options/desktop/gnome.sh;;
        3) ./options/desktop/budgie.sh;;
        4) ./options/desktop/xfce.sh;;
        5) ./options/desktop/mate.sh;;
        6) ./options/desktop/cinnamon.sh;;
        7) ./options/desktop/lxqt.sh;;
        8) ./options/desktop/lxde.sh;;        
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal    

case $n in
        1) ./options/desktop/kdeplasma.sh;;
        2) ./options/desktop/gnome.sh;;
        3) ./options/desktop/budgie.sh;;
        4) ./options/desktop/xfce.sh;;
        5) ./options/desktop/mate.sh;;
        6) ./options/desktop/cinnamon.sh;;
        7) ./options/desktop/lxqt.sh;;
        8) ./options/desktop/lxde.sh;;        
        9) ./startmenu.sh;;
        *) echo "Opción incorrecta";;
esac
