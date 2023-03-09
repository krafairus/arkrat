!/bin/bash
clear
items=(1 "Entorno de Escritorio (DE)   *Recomendado"
       2 "Gestor de Ventanas (WM)      !EN PROCESO, NO USAR!"
                )
while choice=$(dialog --title "- | Arkrat / Escritorios | -" \
                 --menu "\nSeleccione una opción:" 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/desktop.sh;;
        2) ./options/wm.sh;;        
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal     
