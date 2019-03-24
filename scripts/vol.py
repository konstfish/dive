#!/usr/local/bin/python3
# -*- coding: utf-8 -*-

import os,sys
import re

o = os.popen('osascript -e \'get volume settings\'').read()

x = re.search("(?<=volume:)(.*)(?=\, inp)", o)
vol = int(x.group())
print(x)

html = """
</div>
<div class='content content-lft'>
"""

html += (str(vol) + "%")

ics = ""
if("muted:true" not in o):
    if(vol >= 100):
        ics = "volf"
    elif(vol >= 30):
        ics = "volm"
    elif(vol > 0):
        ics = "vols"
    elif(vol == 0):
        ics = "vole"
    else:
        ics = "vole"
else:
    ics = "vole"

html = "<img src='dive/ics/20" + ics + ".png' height='12'>" + html

print(html)
