#!/bin/bash

source /etc/os-release

backup_home(){
	if [[-d $HOME/Backups ]]
	then

		tar --exclude=$HOME/Backups -cvzf $HOME/Backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup").tgz $HOME
	else
		mkdir $HOME/Backups
		tar --exclude=$HOME/Backups -cvzf $HOME/Backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup").tgz $HOME
	fi
}

backup_all(){
	if [[ -d /Backups  ]]
	then
		sudo tar --exclude=/Backups -cvzf /Backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup.tgz") /
	else
		sudo mkdir /Backups
		sudo tar --exclude=/Backups -cvzf /Backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup.tgz") /
	fi
}

if [[ $1 = '--home' ]]; then
	backup_home
elif [[ $1 = '--all' ]]; then
	backup_all
else
	echo "Please provide the type of backup you want, i.e., with the option '--home' or '--all'"
fi

