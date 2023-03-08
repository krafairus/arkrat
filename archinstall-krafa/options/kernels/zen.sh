!/bin/bash
clear
items=(1 "Kernel linux mas los Hearders (Recomendado: linux-zen | linux-zen-headers)"
       2 "Kernel linux (Solo es paquete: linux-zen)"
                )
while choice=$(dialog --title "- | Arkrat / Kernels / Kernel Zen | -" \
                 --menu "\nSeleccione una de las 2 opciones de instalacion del kernel zen\nNotas: Se recomienda la opcion 1.\nNota: Los Headers son encabezados y scripts para construir módulos para el kernel." 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) clear && echo "[==>  Actualizando El Sistema  <==]" && sudo pacman -Syu --noconfirm && echo "[==>  Instalando Los Paquetes  <==]" && sudo pacman -S --noconfirm --needed linux-zen linux-zen-headers && echo "[==>  Actualizando Grub  <==]" && sudo grub-mkconfig -o /boot/grub/grub.cfg && ./options/kernels.sh;;
        2) clear && echo "[==>  Actualizando El Sistema  <==]" && sudo pacman -Syu --noconfirm && echo "[==>  Instalando Los Paquetes  <==]" && sudo pacman -S --noconfirm --needed linux-zen && echo "[==>  Actualizando Grub  <==]" && sudo grub-mkconfig -o /boot/grub/grub.cfg && ./options/kernels.sh;;
        3) ./options/kernels.sh;;
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal

