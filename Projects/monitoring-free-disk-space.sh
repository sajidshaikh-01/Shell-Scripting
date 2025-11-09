#!/bin/bash

# monitoring free disk space and send email alerts



FU=$(df -H | grep rootfs | awk '{print $5}' | tr -d %)
TO="sajid0100shaikh@gmail.com"
if [[ $FU -gt 90 ]]
then
        echo "WARNING Disk Space is Low - $FU %" | mail -s "Disk Space Alert!!!!!!" $TO
else
        echo "DISK Space is ok"
fi
