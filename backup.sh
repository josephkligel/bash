#!/bin/bash

source /etc/os-release

backup_home(){
	if [[-d $HOME/backups ]]
	then

		tar --exclude=$HOME/backups -cvzf $HOME/backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup").tgz $HOME
	else
		mkdir $HOME/backups
		tar --exclude=$HOME/backups -cvzf $HOME/backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup").tgz $HOME
	fi
}

backup_all(){
	if [[ -d /backups  ]]
	then
		sudo tar --exclude=/backups -cvzf /backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup.tgz") /
	else
		sudo mkdir /backups
		sudo tar --exclude=/backups -cvzf /backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$LOGNAME-backup.tgz") /
	fi
}

if [[ $1 = '--home' ]]; then
	backup_home
elif [[ $1 = '--all' ]]; then
	backup_all
else
	echo "Please provide the type of backup you want, i.e., '--home' or '--all'"
fi

