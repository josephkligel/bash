#!/bin/bash

tar -cvzf /backups/$(date +"%d-%m-%Y_%H:%M:%S_%p_-_backup").tgz /
