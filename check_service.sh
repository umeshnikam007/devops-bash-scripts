#!/bin/bash

########################################################################
# Script Name : check_service.sh
# Purpose     : checks service is running or not if not then restart it
# Author      : Umesh Nikam
# Date        : 30/08/2025
# Version     : 1
#######################################################################

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
       echo "Service is running"
else
 	echo "Service is not running"
	echo "Restarting the service $SERVICE..."
	sudo systemctl start $SERVICE
fi


