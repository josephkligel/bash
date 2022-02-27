#!/bin/bash

option=$1

torrent()
{
	sudo cyberghostvpn --torrent --country-code US --wireguard --connect
}

stop_vpn()
{
	sudo cyberghostvpn --stop
}

regular_connection()
{
	sudo cyberghostvpn --traffic --country-code US --wireguard --connect
}

case $option in
	torrent)
		echo "Torrent iniated..."
		torrent
		exit;;
	stop)
		echo "stopping..."
		stop_vpn
		exit;;
	*)
		echo "Default iniated..."
		regular_connection
		exit;;
esac
