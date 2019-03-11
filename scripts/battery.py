#!/usr/bin/python
## get subprocess module
import subprocess
import math
import os

char = os.popen("pmset -g batt").read()
out = os.popen("echo \'" + str(char).translate(None, "\n") + "\' | grep -o '[0-9]*%'").read()
out = out.translate(None, '%')

icon = ""

if("discharging" not in str(char)):
    icon = "19battery_charging.png"
    #os.system("dive/./refresh.py 1")
elif(int(out) < 10):
    icon =  "18battery_empty.png"
elif(int(out) < 35):
    icon =  "18battery_low.png"
elif(int(out) < 60):
    icon =  "18battery_half.png"
else:
    icon =  "18battery_full.png"
out = str(int(out)) + "%"

print("<img src='dive/ics/" + icon + "' height='12px'></div><div class='content'>" + str(out))
