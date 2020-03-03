#!/bin/bash

sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean
date >> ~/bin/update.log
echo "\n Done updating"
