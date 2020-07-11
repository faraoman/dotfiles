sudo apt update
sudo apt upgrade -y
sudo apt install exfat-fuse -y
sudo apt install ntfs-3g -y
# Installing jDownloader 2 [guide](https://macheronte.com/installiamo-jdownloader-su-raspberry-pi/)
sudo apt-get -y --allow-change-held-packages install openjdk-8-jdk
sudo mkdir /opt/jd2
cd /opt/jd2
sudo wget -O /opt/jd2/JDownloader.jar 'http://installer.jdownloader.org/JDownloader.jar'
sudo chmod -R 777 /opt/jd2
java -jar /opt/jd2/JDownloader.jar
# create folder path desktop file
# Installing qBittorrent
sudo apt install qbittorrent qbittorrent-nox -y
# default credential - admin/adminadmin
# set crontab
tempCron=/tmp/chron
jdEntry="* * * * * java -jar /opt/jd2/JDownloader.jar 2>/dev/null &"
qbEntry="* * * * * qbittorrent-nox 2>/dev/null &"
crontab -u $USER -l >$tempCron
echo "$qbEntry" >> $tempCron
echo "$jdEntry" >> $tempCron
crontab $tempCron
# Force VNC Resolution
# set framebuffer_width=1366
# set framebuffer_height=768
# sudo nano /boot/config.txt
# Disable HDMI port
/usr/bin/tvservice -o
# Enable HDMI port /usr/bin/tvservice -p
# Disable logging
# sudo nano /etc/rsyslog.conf -> comment with #
# refresh systemd service systemctl daemon-reload
