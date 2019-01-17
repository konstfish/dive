#!/usr/bin/python

import os, sys

def substring_after(s, delim):
    return s.partition(delim)[2]

out = os.popen('dive/scripts/./battfetch').read()

if("not_connected" in str(out)):
    case = substring_after(out, "Case: ")
    case = (case[:2])

    left = substring_after(out, "Left: ")
    left = (left[:2])

    right = substring_after(out, "Right: ")
    right = (right[:2])

    print("<div id='aidpodpadding'></div>" + "<div class='bend bend-lft small adjust grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/17airpodC.png' height='12'></div><div class='content content-lft'>" +
    case + "%</div></div><span style='padding-right: 55px;'></span>" + "<div class='bend bend-lft small adjust grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/15airpodL.png' height='12'></div><div class='content content-lft'>" +
    left + "%</div></div><span style='padding-right: 55px;'></span>" + "<div class='bend bend-lft small adjust grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/16airpodR.png' height='12'></div><div class='content content-lft'>" +
    right + "%</div></div><span style='padding-right: 55px;'></span>")
