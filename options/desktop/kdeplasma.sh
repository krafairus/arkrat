#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Kde Desktop Environment  <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server plasma-desktop
sudo pacman -S --noconfirm --needed plasma-wayland-session sddm plasma-nm bluedevil plasma-pa dolphin breeze breeze-gtk kate konsole gwenview okular gparted print-manager kdeplasma-addons kde-gtk-config
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable sddm.service
./options/desktop/systemop.sh
