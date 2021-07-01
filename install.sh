#!/bin/sh


os_Command="cat /etc/os-release"
i3folder="$HOME/.config/i3"
pictureFolder="$HOME/Pictures"
configFolder="$HOME/.config"
command="install cmake python-devel python3-devel sshpass bluez bluez-tools conky feh terminator git vim neofetch picom -t pattern devel_basis"
copy="cp -rf .bash* conky .fehbg .startup terminator $configFolder/; cp -rf .vimrc $HOME/.vimrc; cp -rf ./desktop.jpg $pictureFolder/desktop.jpg; cp -rf config btConnect.sh i3_startup $i3folder/"
execWall="$HOME/.config/.fehbg"

check_Folder_and_Install(){
if [ -d "$i3folder" ] && [ -d "$pictureFolder" ]; then
		echo "Folder exist. Coping config files..."
		eval $copy
		eval $execWall
else
		echo "Folder does not exist. Creating folders..."
		eval mkdir -f $pictureFolder $i3folder
fi
}

install(){
os=$($os_Command | grep ID_LIKE)
if [[ $os == *"suse"* ]]; then
		echo "OpenSuSE. Using Zypper"
		eval sudo zypper $command
fi
}

# install
check_Folder_and_Install
