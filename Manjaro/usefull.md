# Disable Pc Speaker on KDE
# run this script as root
rmmod pcspkr ; echo "blacklist pcspkr" >>/etc/modprobe.d/blacklist.conf
