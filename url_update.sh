#!/bin/sh

# OroCommerce script
# This script updates configs to change OroCommerce url after installation
#
# You need to be in application directory of OroCommerce
#
# Usage: ./url_update.sh 0c747ef5.eu.ngrok.io prod

env=${2:-dev}

php app/console --env=${env} oro:config:update oro_ui.application_url http://$1
php app/console --env=${env} oro:config:update oro_website.url http://$1
php app/console --env=${env} oro:config:update oro_website.secure_url https://$1

echo "Application urls updated"
