#!/bin/bash

# Install Packages
InstallPacks() {
toInstall=(spotify postman-bin rambox-bin)
for pack in ${toInstall[*]}
do
    snap install $pack --noconfirm
done
}

InstallSnap() {
pacman -S snap --noconfirm
systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap
}

CheckSnap() {
which $pack > /dev/null 2>&1
errorcode=$?
if [ $errorcode -eq 0 ]; then
    InstallPacks
else
    InstallSnap
    CheckSnap
fi
}

me="$(whoami)"
if [ "$me" = "root" ]; then
  echo "Installing packs..."
  CheckSnap
else
  echo "Please run sudo -s and re-run this script"
fi
