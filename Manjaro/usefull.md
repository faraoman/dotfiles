# Disable Pc Speaker on KDE
# run this script as root
rmmod pcspkr ; echo "blacklist pcspkr" >>/etc/modprobe.d/blacklist.conf

# Enable Southern Islands (SI) and Sea Islands (CIK) support
https://wiki.archlinux.org/title/AMDGPU#Enable_Southern_Islands_(SI)_and_Sea_Islands_(CIK)_support
