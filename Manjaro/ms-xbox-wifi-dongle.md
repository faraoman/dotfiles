# install downgrade necessary for the next step
sudo pacman -S downgrade
# downgrade libusb@1.0.23 to patch an issue with xow (high cpu usage)
# https://forum.manjaro.org/t/set-downgrade-from-ala-1-but-still-only-get-local-options/49948/3 (for command example)
# https://github.com/medusalix/xow/issues/141
sudo DOWNGRADE_FROM_ALA=1 downgrade libusb
# install xow
pamac install xow
