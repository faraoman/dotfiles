#!/bin/sh

# refresh-submenus.sh
ln -s ~/.local/share/*.directory ~/.local/share/desktop-directories/
kbuildsycoca5 --noincremental
