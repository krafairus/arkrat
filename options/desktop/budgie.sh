#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Budgie Desktop Environment  <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server 
sudo pacman -S --noconfirm --needed budgie-desktop file-roller gnome-calculator gedit cheese nautilus simple-scan xdg-user-dirs-gtk gnome-text-editor gnome-music gnome-photos gnome-disk-utility gnome-terminal dconf-editor adwaita-icon-theme fwupd arc-gtk-theme lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable lightdm.service
./options/desktop/systemop.sh
