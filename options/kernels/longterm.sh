!/bin/bash
clear
items=(1 "Kernel linux + Hearders (Recomendado: linux-hardened | linux-hardened-headers)"
       2 "Kernel linux (Solo es paquete: linux-hardened)"
                )
while choice=$(dialog --title "- | Arkrat / Kernels / Kernel LTS | -" \
                 --menu "\nSeleccione una de las 2 opciones de instalacion del kernel lts:\nNota: Se recomienda la opcion 1.\nQue es: Kernel y módulos de Linux con soporte a largo plazo (LTS).\nDato: Los Headers son encabezados y scripts para construir módulos para el kernel." 20 80 10 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) clear && echo "[==>  Actualizando El Sistema  <==]" && sudo pacman -Syu --noconfirm && echo "[==>  Instalando Los Paquetes  <==]" && sudo pacman -S --noconfirm --needed linux-lts linux-lts-headers && echo "[==>  Actualizando Grub  <==]" && sudo grub-mkconfig -o /boot/grub/grub.cfg && ./options/kernels.sh;;
        2) clear && echo "[==>  Actualizando El Sistema  <==]" && sudo pacman -Syu --noconfirm && echo "[==>  Instalando Los Paquetes  <==]" && sudo pacman -S --noconfirm --needed linux-lts && echo "[==>  Actualizando Grub  <==]" && sudo grub-mkconfig -o /boot/grub/grub.cfg && ./options/kernels.sh;;
        *) echo "Opción incorrecta";;
    esac
done
clear # limpiar salida por terminal

echo "==>  Script ArchLinux Post Installation  <=="
echo "                Por Krafairus"
echo ""
echo "[ Seleccione una de las 2 opciones de instalacion del kernel lts: ]" 
echo "Nota: Se recomienda la opcion 1."
echo "Que es: Kernel y módulos de Linux con soporte a largo plazo (LTS). "
echo ""
echo "1: Kernel linux mas los Hearders (Recomendado: linux-lts | linux-lts-headers)"
echo "2: Kernel linux (Solo es paquete: linux-lts)"
echo "3: Menu Anterior"
echo "Nota: Los Headers son encabezados y scripts para construir módulos para el kernel."
echo ""
echo "[――――――――――――――――――――――――――――――――]"
