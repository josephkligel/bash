#!/bin/bash

while getopts ":hvs" option; do
	case $option in
		h) 
			echo "h option"
			;;
		v)
			echo "v option"
			;;
		s)
			echo "s option"
			;;
		\?)
			echo "Invalid option"
			;;
	esac
done
