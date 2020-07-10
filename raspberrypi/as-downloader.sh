sudo apt update
sudo apt upgrade -y
sudo apt install exfat-fuse -y
sudo apt install ntfs-3g -y
# Installing jDownloader 2
sudo apt-get -y --allow-change-held-packages install openjdk-8-jdk
sudo mkdir /opt/jd2
cd /opt/jd2
sudo wget -O /opt/jd2/JDownloader.jar 'http://installer.jdownloader.org/JDownloader.jar'
sudo chmod -R 777 /opt/jd2
java -jar /opt/jd2/JDownloader.jar
# create folder path desktop file
# Installing qBittorrent
sudo apt install qbittorrent qbittorrent-nox -y
# set crontab
tempCron=/tmp/chron
jdEntry="* * * * * java -jar /opt/jd2/JDownloader.jar 2>/dev/null &"
qbEntry="* * * * * qbittorrent-nox 2>/dev/null &"
crontab -u $USER -l >$tempCron
echo "$qbEntry" >> $tempCron
echo "$jdEntry" >> $tempCron
crontab $tempCron
