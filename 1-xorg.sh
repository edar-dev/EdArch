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
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xf86-video-intel'      # 2D/3D video driver
        'mesa'                  # Open source version of OpenGL
        'xf86-input-libinput'   # Trackpad driver for Dell XPS
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo