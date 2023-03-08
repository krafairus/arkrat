#!/bin/bash
clear
echo "==>  Script ArchLinux Post Installation  <=="
echo "                Por Krafairus"
echo ""
echo "==>  Actualizando El Sistema  <=="
sudo pacman -Syuu --noconfirm
echo "==>  Instalando Pacour (aur helper cli)  <=="
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/pacaur.git
cd pacaur
makepkg -si
./options/desktop/systemop.sh
 
