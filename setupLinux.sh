#!/usr/bin/env bash

clone_git_repos(){
	python3 $HOME/Github/python_programs/gitpy/gitpy.py --clone
}

source /etc/os-release
OS_INFO=$NAME

case $OS_INFO in

	*"Fedora"*)
	bash installfed
	clone_git_repos
	bash updateLinux.sh	
	;;

	*"CentOS"*)
	bash installrehl
	clone_git_repos
	bash updateLinux.sh
	;;	

	*"Manjaro"*)
	bash installarch
	clone_git_repos
	bash updateLinux.sh	
	;;

	*"Ubuntu"*)
	bash installdeb
	clone_git_repos
	bash updateLinux.sh
	;;

	*"Arch"*)
	bash installarch
	clone_git_repos
	bash updateLinux.sh	
	;;

	*)
	echo "Could not detect operating system"
	;;
esac
