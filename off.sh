#!/usr/bin/env bash

push_git_repos(){
	python3 $HOME/Github/python_programs/gitpy/gitpy.py --push
}

source /etc/os-release
OS_INFO=$NAME

case $OS_INFO in

	*"Fedora"*)
	push_git_repos
	bash updateLinux.sh
	sudo poweroff
	;;

	*"CentOS"*)
	push_git_repos
	bash updateLinux.sh
	sudo poweroff
	;;	

	*"Manjaro"*)
	push_git_repos
	bash updateLinux.sh
	sudo poweroff
	;;

	*"Debian"*)
	push_git_repos
	bash updateLinux.sh
	sudo poweroff
	;;	

	*)
	echo "OS could not be detected"
	;;
esac
