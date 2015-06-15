#!/bin/sh

cd ~/Desktop/mtu
cp MTU.sh /Library/StartupItems
cp com.mtu.startup.plist /Library/LaunchDaemons/
chmod +x /Library/StartupItems/MTU.sh

## change ownership and permissions of the plist file to make it launchctl compatible
chown root /Library/LaunchDaemons/com.mtu.startup.plist
chmod 644 /Library/LaunchDaemons/com.mtu.startup.plist

## launch the plist so that we can use it without a reboot
launchctl load /Library/LaunchDaemons/com.mtu.startup.plist

# display current mtu
networksetup -getMTU en0

# cleanup
rm -R ~/Desktop/mtu