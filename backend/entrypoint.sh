#!/bin/sh
# Script to adjust ndots in /etc/resolv.conf

# Check if we can write to /etc/resolv.conf
if [ -w /etc/resolv.conf ]; then
  if grep -q "options ndots:" /etc/resolv.conf; then
      sed -i 's/options ndots:[0-9]*/options ndots:2/' /etc/resolv.conf
  else
      echo "options ndots:2" >> /etc/resolv.conf
  fi
else
  echo "Cannot modify /etc/resolv.conf, read-only file system."
fi

# Start the Node.js application
exec node index.js
