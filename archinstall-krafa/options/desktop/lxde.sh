#!/bin/bash
clear
echo "[==>  Script ArchLinux Post Installation  <==]"
echo "                Por Krafairus"
echo ""
echo "[==>  Actualizando El Sistema  <==]"
sudo pacman -Syuu --noconfirm
echo "[==>  Instalando Los Paquetes De Lxde Desktop Environment  <==]"
sudo pacman -S --noconfirm --needed xorg xorg-server xorg-init
sudo pacman -S --noconfirm --needed lxde lxdm
echo "[==>  Activando Servicios De Display Manager Y NetWork Manager  <==]"
sudo systemctl enable NetworkManager.service
sudo systemctl enable lxdm.service
./options/desktop/systemop.sh
