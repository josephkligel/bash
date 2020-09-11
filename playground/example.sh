#!/usr/bin/env bash

OS_Info=$(cat /etc/*-release)

if grep -qi "Fedora" <<< "$OS_Info"; then
	echo "It's There"
fi

case $OS_Info in

	*"Fedora"*)
	echo "It's also there."
esac
