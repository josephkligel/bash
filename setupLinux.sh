#!/usr/bin/env bash

clone_git_repos(){
	python3 $HOME/Github/python_programs/gitpy/gitpy --clone
}

OS_INFO=$(cat /etc/*-release)

case $OS_INFO in

	*"Fedora"*)
	clone_git_repos
	bash installfed
	bash updateLinux.sh	
	;;

	*"CentOS"*)
	clone_git_repos
	bash installrehl
	bash updateLinux.sh
	;;	

	*"Manjaro"*)
	clone_git_repos
	bash installarch
	bash updateLinux.sh	
	;;

	*"Debian"*)
	clone_git_repos
	bash installdeb
	bash updateLinux.sh
	;;

	*"Arch"*)
	clone_git_repos
	bash installarch
	bash updateLinux.sh	
	;;

	*)
	echo "Could not detect operating system"
	;;
esac
