#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Xfce Desktop Environment  <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server
sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies file-roller network-manager-applet leafpad epdfview galculator lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings capitaine-cursors arc-gtk-theme xdg-user-dirs-gtk
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable lightdm.service
./options/desktop/systemop.sh
