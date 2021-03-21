#!/usr/bin/env bash

clone_git_repos(){
	mkdir $HOME/Github
	cd $HOME/Github
	python3 $HOME/Github/python_programs/gitpy/gitpy.py --clone
}

source /etc/os-release
OS_INFO=$NAME

case $OS_INFO in

	*"Fedora"*)
	bash setupConfig
	bash installfed
	bash installcaffeine
	clone_git_repos
	bash updateLinux.sh	
	;;

	*"CentOS"*)
	bash setupConfig
	bash installrehl
	clone_git_repos
	bash updateLinux.sh
	;;	

	*"Manjaro"*)
	bash setupConfig
	bash installarch
	clone_git_repos
	bash updateLinux.sh	
	;;

	*"Ubuntu"*)
	bash setupConfig
	bash installdeb
	clone_git_repos
	bash updateLinux.sh
	;;

	*"Arch"*)
	bash setupConfig
	bash installarch
	clone_git_repos
	bash updateLinux.sh	
	;;

	*)
	echo "Could not detect operating system"
	;;
esac
