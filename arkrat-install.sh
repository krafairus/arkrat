#!/bin/bash
clear
chmod +x *
chmod +x options/*
chmod +x options/aurhelper/*
chmod +x options/desktop/*
chmod +x options/kernels/*
chmod +x options/programs/*
clear
if [ "$(id -u)" != "1000" ]; then
   echo "No Ejecutes Este Script Como Root (estas usando sudo, no lo hagas), ejecutalo sin sudo nuevamente por favor."
   exit 1
fi
sudo pacman -S --noconfirm --needed dialog
items=(1 "Instalar Un Aur Helper"
       2 "Entorno De Escritorio"
       3 "Audio Y Video (proximamente)"
       4 "Kernerls Linux"
       5 "Programas Esenciales (proximamente)"        
       6 "Salir"
                )
while choice=$(dialog --title "- | Arkrat - krafairus - krafairus.blogspot.com | -" \
                 --menu "\nSeleccione una opción a continuación utilizando las teclas\n[FLECHA ARRIBA] / [FLECHA ABAJO] y [ESPACIO] o [ENTER]\nLas teclas alternativas también se pueden usar: [+], [-] y [TAB]. \n" 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/aurhelper.sh;;
        2) ./options/desktop.sh;;
        3) ./options/drivers.sh;;
        4) ./options/kernels.sh;; 
        4) ./options/programs.sh;; 
        6) exit;;
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal
