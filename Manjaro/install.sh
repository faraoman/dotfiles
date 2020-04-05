#!/bin/bash

me="$(whoami)"
if [ "$me" = "root" ]; then
  echo "Installing packs..."
  ./0.install_pack.sh
  ./1.install_snap.sh
  ./2.install_aur.sh
else
  echo "Please run sudo -s and re-run this script"
fi