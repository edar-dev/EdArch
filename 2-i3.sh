#!/usr/bin/env bash
#-------------------------------------------------------------------------
#    _____    _  ___           _     
#   |  ___|  | |/ _ \         | |    
#   | |__  __| / /_\ \_ __ ___| |__  
#   |  __|/ _` |  _  | '__/ __| '_ \ 
#   | |__| (_| | | | | | | (__| | | |
#   \____/\__,_\_| |_/_|  \___|_| |_|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING I3-wm"
echo

PKGS=(
       'i3-wm'          #i3-wm 
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo