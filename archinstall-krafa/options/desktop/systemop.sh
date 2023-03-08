#!/bin/bash
clear
echo "==========================================="
echo "|                                         |"
echo "| ! Reiniciar Para Aplicar Los Cambios !  |"
echo "|                                         |"
echo "==========================================="
echo ""
echo "[ Deseas Reiniciar La PC: ]"
echo "1: Si, Reiniciar."
echo "2: No, Lo Haré Mas Tarde."

read n

case $n in
        1) shutdown -r now;;
        2) ./options/desktop.sh;;
        *) echo "Opción incorrecta";;
esac

