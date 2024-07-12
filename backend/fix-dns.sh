#!/bin/sh
# Script to adjust ndots in /etc/resolv.conf
if grep -q "options ndots:" /etc/resolv.conf; then
    sed -i 's/options ndots:[0-9]*/options ndots:2/' /etc/resolv.conf
else
    echo "options ndots:2" >> /etc/resolv.conf
fi
