# Arch Linux Post Installation Setup and Config Scripts

---
### System Description

---
### Install Arch Linux

---
### Boot into new installation

---
### Initialize .gitconfig file
Setup git credential and general settings

    git config --global user.name "your-username"
    git config --global user.email "your-email@gmail.com"
    git config --global credential.helper cache
    git config --global credential.helper 'cache --timeout=31536000'

---
### Clone EdArch
Create a temp forlder to keep all in order and clone this repo

    mkdir temp && cd temp
    git clone https://github.com/edar-dev/EdArch.git

---
### Run EdArch scripts
    $ ./1-xorg.sh
---
### Reboot
    $   reboot

---
### Initialize Xorg:

---