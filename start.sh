#!/bin/sh

#Cear all Crontabs
(crontab -r)

#Enable Cronjob for sync of packages
if [ "$SYNC_PACKAGES" = "true" ]; then
    echo "Setting up cronjob for sync of Mint Linux Packages..."
    (crontab -l ; echo "05 0,12 * * * /mint/files/sync_packages.sh") | crontab -
fi

#Enable Cronjob for sync of ISOs
if [ "$SYNC_MIRROR" = "true" ]; then
    echo "Setting up cronjob for sync of Mint Linux ISO..."
    (crontab -l ; echo "00 01 * * * /mint/files/sync_mirror.sh") | crontab -
fi
