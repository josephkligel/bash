#!/usr/bin/env bash

source /etc/os-release
OS_INFO=$NAME

create_log(){
	if [[ -d $HOME/logs  ]]; then
		echo ""
	else
		echo "Creating logs directory in home folder..."
		mkdir $HOME/logs
	fi
}

update_arch(){
	sudo pacman -Syyu
}

finish_update(){
	sudo updatedb
	echo
	echo "~~~~~~ Done updating ~~~~~~"
}

case $OS_INFO in

	*"Fedora"*)
	sudo yum check-update -y
	sudo yum update -y
	sudo yum upgrade -y
	create_log
	date >> $HOME/logs/Fedora_update.log
	finish_update
	;;

	*"CentOS"*)
	sudo dnf check-update -y
	sudo dnf update -y
	sudo dnf upgrade -y
	create_log
	date >> $HOME/logs/CentOS_update.log
	finish_update
	;;

	*"Ubuntu"*)
	sudo apt update
	sudo apt dist-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	create_log
	date >> $HOME/logs/Debian_update.log
	finish_update
	;;

	*"Manjaro"*)
	update_arch
	create_log
	date >> $HOME/logs/Manjaro_update.log
	finish_update
	;;

	*"Arch"*)
	update_arch
	create_log
	date >> $HOME/logs/Arch_update.log
	finish_update
	;;

esac
