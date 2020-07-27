#!/usr/bin/env bash

push_git_repos(){
	python3 $HOME/Github/python_programs/gitpy/gitpy.py --push
}

OS_INFO=$(cat /etc/*-release)

case $OS_INFO in

	*"Fedora"*)
	push_git_repos
	bash updateLinux.sh
	sudo restart
	;;

	*"CentOS"*)
	push_git_repos
	bash updateLinux.sh
	sudo restart
	;;	

	*"Manjaro"*)
	push_git_repos
	bash updateLinux.sh
	sudo restart
	;;

	*"Debian"*)
	push_git_repos
	bash updateLinux.sh
	sudo restart
	;;	

	*)
	echo "OS could not be detected"
	;;
esac
