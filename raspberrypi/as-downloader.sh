sudo apt update
sudo apt upgrade -y
# Installing jDownloader 2
sudo apt-get -y --allow-change-held-packages install openjdk-8-jdk
# create folder path desktop file
# Installing qBittorrent
sudo apt install qBittorrent qBittorrent-nox
# set crontab
tempCron=/tmp/chron
jdEntry="* * * * * java -jar /opt/jd2/JDownloader.jar 2>/dev/null &"
qbEntry="* * * * * qbittorrent-nox 2>/dev/null &"
crontab -u $USER -l >$tempCron
echo "$qbEntry" >> $tempCron
echo "$jdEntry" >> $tempCron
crontab $tempCron