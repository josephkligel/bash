#!/bin/bash

source /etc/os-release

tar -cvzf /backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_$NAME-backup").tgz /
