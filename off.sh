#!/usr/bin/env bash

source /etc/os-release
OS_INFO=$NAME

push_git_repos(){
	echo "Pushing all git repos remotely..."
	python3 $HOME/GitHub/python_programs/GitProject/main.py push
}

powerdown(){
	echo "Powering off..."
	sudo poweroff
}

backup_custom(){
	echo "Backing up custom.sh from /etc/profile.d/..."
	bash backup-custom-script.sh
}

# Step 1: Update Linux

bash updateLinux.sh

# Step 2: execute options

while getopts ":bpa" option; do
	case $option in
		b)
			backup_custom
			;;
		p)
			push_git_repos
			;;
		a)
			echo "Performing all options"
			backup_custom
			push_git_repos
			;;
		*)
			echo "Default value"
			;;
	esac
done

# Step 3: Power off
	powerdown
