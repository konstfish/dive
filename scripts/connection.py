#!/usr/bin/python

import os, sys

adapter = "USB 10/100/1000 LAN"
out = os.popen('dive/scripts/./interfaces').read()

if(adapter in out):
    print("<img src='dive/ics/12ethernet.png' width='14px'></div><div class='content'>")
elif("Wi-Fi" in out):
    #name = os.popen("/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'").read()
    name = ""
    print("<img src='dive/ics/11wifi.png' width='12px'></div><div class='content'>" + name)
else:
    print("<img src='dive/ics/11wifi_off.png' width='12px'></div><div class='content'>")
