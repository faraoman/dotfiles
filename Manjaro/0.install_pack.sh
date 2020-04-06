#!/bin/bash

# Remove Packages
RemovePacks() {
toRemove=(yakuake konversation stoken)
for pack in ${toRemove[*]}
do
    pacman -Rcns $pack --noconfirm
done
}

# Install Packages
InstallPacks() {
toInstall=(git base-devel expac yajl yay plasma-vault qbittorrent micro neofetch bleachbit nodejs-lts-erbium npm keepass filezilla putty freerdp remmina)
for pack in ${toInstall[*]}
do
    which $pack > /dev/null 2>&1
    errorcode=$?
    if [ $errorcode -eq 1 ]; then
        pacman -S $pack --noconfirm
    fi
done
}


echo Installing packages (require root)
me="$(whoami)"
if [ "$me" = "root" ]; then
    echo "Removing packs..."
    RemovePacks
    echo "Installing packs..."
    InstallPacks
else
  echo "Please run sudo -s and re-run this script"
fi
