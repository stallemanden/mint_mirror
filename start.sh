#!/bin/sh

echo $SYNC_MIRROR
echo $SYNC_PACKAGES

#Cear all Crontabs
(crontab -r)

if [ "$SYNC_PACKAGES" = "true" ]; then
    echo "Setting up cronjob for sync of Mint Linux Packages..."
    (crontab -l ; echo "05 0,12 * * * /mint/files/sync_packages.sh") | crontab -
fi

if [ "$SYNC_MIRROR" = "true" ]; then
    echo "Setting up cronjob for sync of Mint Linux ISO..."
    (crontab -l ; echo "05 0 * * * /mint/files/sync_mirror.sh") | crontab -
fi
