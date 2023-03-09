!/bin/bash
clear
items=(1 "nombre               "
       2 "nombre"
       3 "nombre"
       4 "nombre"
       5 "nombre"
       6 "nombre"
       7 "nombre"
       8 "nombre"
                )
while choice=$(dialog --title "- | Arkrat / (DE) o (WM) / Gestores de Ventanas | -" \
                 --menu "\nSeleccione un gestor de ventanas (WM):" 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/wm/nombre.sh;;
        2) ./options/wm/nombre.sh;;
        3) ./options/wm/nombre.sh;;
        4) ./options/wm/nombre.sh;;
        5) ./options/wm/nombre.sh;;
        6) ./options/wm/nombre.sh;;
        7) ./options/wm/nombre.sh;;
        8) ./options/wm/nombre.sh;;        
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal    

