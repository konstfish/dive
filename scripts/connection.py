#!/usr/bin/python

import os, sys

ADAPTER_NAME = "USB 10/100/1000 LAN"
out = os.popen('dive/scripts/./interfaces').read()

if(ADAPTER_NAME in out):
    print('<i class="nf nf-mdi-ethernet"></i>')
elif("Wi-Fi" in out):
    print('<i class="nf nf-mdi-wifi"></i>')
else:
    print('<i class="nf nf-mdi-wifi_off"></i>')
