#!bin/bash
date +"%D %T" >> /mint/web/mirror.log
echo "Syncing mirror..." >> /mint/web/mirror.log

rsync -ral pub.linuxmint.com::pub /mint/mirror/

echo "Syncing mirror DONE!" >> /mint/web/mirror.log
date +"%D %T" >> /mint/web/mirror.log