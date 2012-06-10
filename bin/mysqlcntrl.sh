#!/bin/sh

case "$1" in 
     'start') 
		sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist
         ;; 
     'stop') 
        sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist
         ;; 
     'restart') 
         echo "Usage: $0 [start|stop]" 
         ;; 
esac
