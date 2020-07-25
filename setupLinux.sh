#!/usr/bin/env bash

OS_INFO=$(cat /etc/*-release)

case $OS_INFO in

	*"Fedora"*)
	bash $HOME/Github/bash/	
	;;

	*"Centos"*)
	python /home/jkligel/Github/python_programs/gitpy/gitpy.py --push
	updaterehl
	sudo poweroff
	;;	

	*"Manjaro"*)
	python /home/jkligel/Github/python_programs/gitpy/gitpy.py --push
	sudo pacman -Syyu
	sudo poweroff
	;;

	*"Debian"*)
	python /home/jkligel/Github/python_programs/gitpy/gitpy.py --push
	updatedeb
	sudo poweroff
	;;	

	*)
	echo "Nothing was done"
	;;
esac
