!/bin/bash
clear
items=(1 "Kernel Stable (linux) (Default)"
       2 "Kernel Hardened (linux-hardened)"
       3 "Kernel Longterm (linux-lts)"
       4 "Kernel Rt (linux-rt)"
       5 "Kernel RT LTS (linux-rt-lts)"
       6 "Kernel Zen (linux-zen)"
                )
while choice=$(dialog --title "- | Arkrat / Kernels | -" \
                 --menu "\nSeleccione un Kernel de la lista: \nNota: Por default se usa el Stable. " 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ./options/kernels/stable.sh;;
        2) ./options/kernels/hardened.sh;;
        3) ./options/kernels/longterm.sh;;
        4) ./options/kernels/rt.sh;;
        5) ./options/kernels/rt-lts.sh;;  
        6) ./options/kernels/zen.sh;;
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal    
