#!/bin/bash

ipAddress=$(curl ifconfig.me)
echo ====================IP Address====================
echo "IP Address is $ipAddress"
echo
echo ====================Output of Geolocation====================
curl http://api.geoiplookup.net/?query=$ipAddress
