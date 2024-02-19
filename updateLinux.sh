#!/usr/bin/env bash

source /etc/os-release
OS_INFO=$NAME
UPDATELOG=/var/log/user-updates.log
MESSAGE="$(date): $USER updated"

create_log(){
	if [[ -f $UPDATELOG ]];
	then
		sudo chmod 666 $UPDATELOG
	else
		sudo touch $UPDATELOG
		sudo chmod 666 $UPDATELOG	
	fi
}

append_log(){
	echo "$MESSAGE" >> $UPDATELOG
}

finish_update(){
	printf "\n-------------- Done Updating --------------\n\n" 
}

# Step 1. Create log
create_log

# Step 2. Check OS distribution, update the system using the corresponding
# package manager, upgrade if possible, append update log
# and print a finish update message to the console

case $OS_INFO in

	*"Fedora"*)
	sudo dnf check-update -y
	sudo dnf update -y
	sudo dnf upgrade -y
	append_log
	finish_update
	;;

	*"CentOS"*)
	sudo yum check-update -y
	sudo yum update -y
	sudo yum upgrade -y
	append_log
	finish_update
	;;

	*"Debian"*|*"Ubuntu"*|*"Elementary"*)
	sudo apt update
	sudo apt dist-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	append_log
	finish_update
	;;

	*"Arch"*|*"Manjaro"*)
	sudo pacman -Syuu
	append_log
	finish_update
	;;

esac
