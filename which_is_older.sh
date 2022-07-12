#!/usr/bin/env bash

if [ ${1} -ot ${2} ]; then
	echo "${1} is older"
else
	echo "${2} is older"
fi	
