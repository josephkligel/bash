#!/bin/bash

copy_config(){
	read -p "Are you sure you want to backup custom.sh? (y/n) " ANSWER

	case $ANSWER in

		[Yy]*)
		echo "Backing up custom.sh file..."
		cat /etc/profile.d/custom.sh > $HOME/Github/config/copy_custom.sh
		echo "Done backing up custom.sh file"
		;;

		[Nn]*)
		echo "Not copying custom.sh. Exiting program..."
		;;
	esac
}

if [[ -d $HOME/Github/config ]]
then
	copy_config
else
	mkdir -p $HOME/Github/config
	git clone https://github.com/zigjag/config.git $HOME/Github/config
	copy_config
fi
