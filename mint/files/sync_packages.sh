#!bin/bash
date +"%D %T" >> /mint/web/package.txt
echo "Syncing packages..." >> /mint/web/package.txt

# rsync -ral rsync-packages.linuxmint.com::packages /mint/packages/

echo "Syncing packages DONE" >> /mint/web/package.txt
date +"%D %T" >> /mint/web/package.txt
