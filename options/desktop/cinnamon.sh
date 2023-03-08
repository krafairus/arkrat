#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Cinnamon Desktop Environments <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server
sudo pacman -S --noconfirm --needed cinnamon xed xreader gnome-terminal vlc blueman nautilus system-config-printer adwaita-icon-theme metacity fwupd arc-gtk-theme lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable lightdm.service
./options/desktop/systemop.sh
