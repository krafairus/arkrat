#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Gnome Desktop Environment  <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server 
sudo pacman -S --noconfirm --needed gnome gnome-tweaks extension-manager gedit gnome-nettool dconf-editor gnome-terminal adwaita-icon-theme xdg-user-dirs-gtk fwupd arc-gtk-theme seahosrse gdm
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable gdm.service
./options/desktop/systemop.sh

