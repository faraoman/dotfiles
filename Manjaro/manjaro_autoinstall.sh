#!/bin/bash          
## https://unix.stackexchange.com/questions/52277/pacman-option-to-assume-yes-to-every-question
## https://linuxhint.com/pacman_arch_linux/
## force repo download: pacman -Syy
## force repo download and upgrade: pacman -Syyuu
function InstallPacks(){
echo Installing packages
pacman -S pinta mono pacaur octopi yay yaourt openvpn qopenvpn plasma-vault qbittorrent htop neofetch bleachbit nodejs-lts-dubnium npm keepass filezilla putty freerdp remmina --noconfirm
# 32arch
pacman -Syu nss-mdns pygtk python2-dbus
# 64arch
pacman -Syu pygtk python2-dbus
pacman -Syu nss-mdns
echo Installing snap packages
# snap install code --classic
snap install spotify
snap install skype --classic
snap install rambox
snap install postman
snap install gog-galaxy-wine
snap install powershell --classic
snap install robo3t-snap
echo Install Aur Packages
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
pacaur -S tor-browser --noconfirm --noedit
pacaur -S visual-studio-code-bin --noconfirm --noedit
pacaur -S github-desktop --noconfirm --noedit
pacaur -S google-chrome --noconfirm --noedit
pacaur -S teamviewer --noconfirm --noedit
pacaur -S dropbox --noconfirm --noedit
pacaur -S chromium-vaapi-bin --noconfirm --noedit
pacaur -S anydesk --noconfirm --noedit
pacaur -S dotnet-sdk-bin --noconfirm --noedit
pacaur -S dotnet-runtime-bin --noconfirm --noedit
pacaur -S switchhosts-bin --noconfirm --noedit
pacman -S gnome-themes-extra gnome-themes-standard
# seems not working
pacaur -S acroread --noconfirm --noedit
pacaur -S q4wine --noconfirm --noedit
# https://aur.archlinux.org/packages/kerio-control-vpnclient/
pacaur -S kerio-control-vpnclient --noconfirm --noedit
pacaur -S jdownloader2 --noconfirm --noedit
pacaur -S lutris-git --noconfirm --noedit
}

me="$(whoami)"
if [ "$me" = "root" ]; then
  echo "Installing packs..."
  InstallPacks
else
  echo "Please run sudo -s and re-run this script"
fi
