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
sudo pacman -Sy glibc dialog curl ncurses --noconfirm --needed
items=(1 "AUR HELPER               Gestos de Paquetes con soporte AUR (Arch User Repository)"
       2 "(DE) o (WM)              Entorno de Escritorio O un Gestor de Ventanas"
       3 "DRIVERS (NO USAR)  Controladores graficos, de multimedia entre otros"
       4 "KERNELS                  Kernels linux para distintos usos"
       5 "PROGRAMAS EXTRAS         Programas para uso comun o inicial"     
       6 "SALIR"

                )
while choice=$(dialog --title "- | Arkrat - krafairus - krafairus.blogspot.com | -" \
                 --menu "\nSeleccione una opción a continuación utilizando las teclas\n[FLECHA ARRIBA] / [FLECHA ABAJO] y [ESPACIO] o [ENTER]\nLas teclas alternativas también se pueden usar: [+], [-] y [TAB]. \n" 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/aurhelper.sh;;
        2) ./options/desktopwm.sh;;
        3) ./options/drivers.sh;;
        4) ./options/kernels.sh;; 
        4) ./options/programs.sh;; 
        6) exit;;
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal
