#!/usr/bin/python

import os, sys

ADAPTER_NAME = "USB 10/100/1000 LAN"
out = os.popen('dive/scripts/./interfaces').read()

if(ADAPTER_NAME in out):
    print('12ethernet.png')
elif("Wi-Fi" in out):
    print('11wifi.png')
else:
    print('<i class="nf nf-mdi-wifi_off"></i>')
