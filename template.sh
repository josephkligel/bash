#!/usr/bin/bash


case $1 in

	"-bash")
		echo "#!/bin/bash" > $2.sh
		;;	

	"-c")

		echo "#include <stdio.h>
		
		int main(int argc, char *argv[]){
			
		
			return 0;
		}" > $2.c
		;;

	"-cpp")
		echo "#include <iostream>
		
		int main(int argc, char **argv){

			
			return 0;
		}" > $2.cpp
		;;

	"-py")
		echo "#!/bin/python3
		
		" > $2.py
		chmod +x $2.py
		;;

	*)
		echo "Invalid argument"
		;;

esac
