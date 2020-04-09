#!/bin/sh

GetCurrentScriptName () {
    echo "$(basename "$0")"
}

GetCurrentExecutionDirectory() {
    echo "$( cd "$(dirname "$0")" ; pwd -P )"
}

SplitString () {
    readarray -d $1 -t result <<< "$2"
    echo "${result[*]}"
}

ArrayJoin () { local IFS="$1"; shift; echo "$*"; }

current_script_name=$(GetCurrentScriptName) # switchost_installer_3.5.4.5517.sh
readarray -d _ -t splitted <<< $(GetCurrentScriptName) # switchost installer 3.5.4.5517.sh
strFullVersionSH=${splitted[$((${#splitted[*]}-1))]} # 3.5.4.5517.sh
readarray -d . -t aoVersionSH <<< $strFullVersionSH # 3 5 4 5517 sh
aoFullVersion=${aoVersionSH[@]:0:$((${#aoVersionSH[*]}-1))} # 3 5 4 5517
strFullVersion=$(ArrayJoin "." $aoFullVersion) # 3.5.4.5517
aoMainVersion=${aoVersionSH[@]:0:$((${#aoVersionSH[*]}-2))} # 3 5 4
strMainVersion=$(ArrayJoin "." $aoMainVersion) # 3.5.4

# download favicon
if [ ! -f favicon.png ]; then
    curl -L https://oldj.github.io/SwitchHosts/images/favicon.png >favicon.png
fi

# download SwitchHosts
if [ ! -f SwitchHosts.zip ]; then
    curl -L https://github.com/oldj/SwitchHosts/releases/download/v$strMainVersion/SwitchHosts._linux_x64_$strFullVersion.zip >SwitchHosts.zip
fi

APPLICATIONS_PATH=$HOME/Applications
SWITCHHOSTS_PATH=$APPLICATIONS_PATH/SwitchHosts

if [ ! -d $APPLICATIONS_PATH ]; then
    mkdir $APPLICATIONS_PATH
fi

if [ ! -d $SWITCHHOSTS_PATH ]; then
    mkdir $SWITCHHOSTS_PATH
fi

unzip -q SwitchHosts.zip -d $SWITCHHOSTS_PATH

mv favicon.png $SWITCHHOSTS_PATH
rm SwitchHosts.zip

if [ ! -d $HOME/Desktop/SwitchHosts ]; then
    # creating dekstopfile
    desktopFile=$HOME/Desktop/SwitchHosts.desktop
    echo "[Desktop Entry]" >>$desktopFile
    echo "Comment=" >>$desktopFile
    echo "Exec=$SWITCHHOSTS_PATH/switchhosts" >>$desktopFile
    echo "GenericName=" >>$desktopFile
    echo "Icon=$SWITCHHOSTS_PATH/favicon.png" >>$desktopFile
    echo "Name=SwitchHosts" >>$desktopFile
    echo "Path=$SWITCHHOSTS_PATH" >>$desktopFile
    echo "StartupNotify=true" >>$desktopFile
    echo "Terminal=false" >>$desktopFile
    echo "TerminalOptions=" >>$desktopFile
    echo "Type=Application" >>$desktopFile
    chmod +x $desktopFile
fi

echo "Installed!"
