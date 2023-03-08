#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Lxqt Desktop Environment  <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server 
sudo pacman -S --noconfirm --needed lxqt xdg-utils ttf-freefont sddm
sudo pacman -S --noconfirm --needed libpulse libstatgrab libsysstat lm_sensors network-manager-applet oxygen-icons pavucontrol-qt leafpad xscreensaver vlc
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable sddm.service
./options/desktop/systemop.sh
 
