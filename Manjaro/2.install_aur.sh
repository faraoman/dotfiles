#!/bin/bash

# Install Packages
InstallPacks() {
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
toInstall=(tor-browser anydek visual-studio-code-bin github-desktop-git google-chrome teamviewer chromium-vaapi-bin jdownloader2 lutris-git ksnip joplin stacer-bin)
for pack in ${toInstall[*]}
do
    yay -Qs $pack /dev/null 2>&1
    errorcode=$?
    if [ $errorcode -eq 1 ]; then
        yay -S $pack --noconfirm
    fi
done
}


echo Installing packages
me="$(whoami)"
if [ "$me" = "root" ]; then
    su - $me
fi

echo "Installing packs..."
InstallPacks
