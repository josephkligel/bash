#!/usr/bin/env bash

filename=$1

if [ -f $filename  ]; then
#if [ $# -ge 1 ]; then
	echo $1
else
	echo "Add one argument"
fi
