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
        #'xf86-video-intel'      # 2D/3D video driver intel
        #'xf86-video-nouveau'    # 2D/3D video driver nvidia open
        #'nvidia'                # 2D/3D video driver nvidia non free linux kernel
        #'nvidia-lts'                # 2D/3D video driver nvidia non free linux-lts kernel
        #'nvidia-beta'                # 2D/3D video driver nvidia beta version
        'mesa'                  # Open source version of OpenGL        
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Post install script!"

echo "Copy .xinitrc template file to root"
TEMPLATE_FILE=/etc/X11/xinit/xinitrc
FILE=~/.xinitrc

if [ -f "$FILE" ]; then
    echo "$FILE already exists!"
else 
    if [ -f "$TEMPLATE_FILE" ]; then
        echo "$TEMPLATE_FILE does not exist! Did you install xorg-init package?"
    else 
        cp /etc/X11/xinit/xinitrc ~/.xinitrc 
        echo "$FILE created based on $TEMPLATE_FILE"
    fi
fi



echo
echo "Done!"
echo