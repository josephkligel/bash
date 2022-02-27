#!/usr/bin/env bash

push_git_repos(){
	python3 $HOME/Github/python_programs/GitProject/main.py push
}

source /etc/os-release
OS_INFO=$NAME

case $OS_INFO in

	*"Fedora"*)
	push_git_repos
	bash updateLinux.sh
	bash backup_custom.sh
	sudo poweroff
	;;

	*"CentOS"*)
	push_git_repos
	bash updateLinux.sh
	bash backup_custom.sh
	sudo poweroff
	;;	

	*"Manjaro"*)
	push_git_repos
	bash updateLinux.sh
	bash backup_config.sh
	sudo poweroff
	;;

	*"Ubuntu"*|*"Elementary"*)
	push_git_repos
	bash updateLinux.sh
	bash backup_config.sh
	sudo poweroff
	;;	

	*)
	echo "OS could not be detected"
	;;
esac
