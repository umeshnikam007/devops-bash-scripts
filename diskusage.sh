#!/bin/bash

#######################################################
# Script Name : diskusage.sh
# Author      : Umesh Nikam
# Purpose     : This script is use to check disk usage
# Date	      : 30/08/2025
# Version     : 1
#######################################################


# checks disk usage is greater than 80%

THRESHOLD=80

USAGE=$(df -h / | awk 'NR==2 {print $5}'| sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "Disk usage is above ${THRESHOLD}% (current:${USAGE}%)"
else
	echo "Disk usage is normal (${USAGE}%)"
fi

