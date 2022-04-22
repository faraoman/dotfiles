# Disable Pc Speaker on KDE
# run this script as root
rmmod pcspkr ; echo "blacklist pcspkr" >>/etc/modprobe.d/blacklist.conf

# Enable Southern Islands (SI) and Sea Islands (CIK) support
https://wiki.archlinux.org/title/AMDGPU#Enable_Southern_Islands_(SI)_and_Sea_Islands_(CIK)_support

# Fix Oracle VirtualBox file picker on KDE
Edit the Oracle VirtualBox menu entry using this command: `KDE_FULL_SESSION= XDG_CURRENT_DESKTOP= DESKTOP_SESSION= VirtualBox %U`
