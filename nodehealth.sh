#!/bin/bash

################################################
# Sript Name : nodehealth.sh
# Usage      : Checks node health status
# Author     : Umesh Nikam
# Date       : 30/08/2025
# vesrion    : 1
################################################

#set -x #Debug mode
echo "disk space"
df -h

echo "Free memory"
free -g

echo 'No of process'
nproc

