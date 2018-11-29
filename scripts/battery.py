#!/usr/bin/python
## get subprocess module
import subprocess
import math
import os

def roundup(x, charg):
    if int(x) <= 10 and charg != "":
        return 20
    else:
        return int(math.ceil(int(x) / 10.0)) * 10

out = os.popen("pmset -g batt").read()

if("discharging" not in str(out)):
    style = ' style=\"color: rgb(252, 252, 252) !important; '
    charging = "charging"
else:
    style = ""
    charging = ""

out = os.popen("pmset -g batt | grep -o '[0-9]*%'").read()

out = out.translate(None, '%')

if(charging != ""):
    icon = 'nf-mdi-battery_' + charging + "_" + str(roundup(out,  "t"))
else:
    icon = 'nf-mdi-battery_' + str(roundup(out,  ""))

#print('<i class=\"nf '+ icon + '\"' + style + '\"></i>' + ' <i' + style + '\">' + str(out) +'%</i>')
print('<i class=\"nf '+ icon + '\"' + style + '\"> ' +  str(out) + '%</i>')
