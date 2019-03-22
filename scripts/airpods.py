#!/usr/bin/python
# -*- coding: utf-8 -*-

import os, sys

def substring_after(s, delim):
    return s.partition(delim)[2]

out = os.popen('dive/scripts/./battfetch').read()

if("not_connected" not in str(out)):
    case = substring_after(out, "Case: ")
    case = (case[:3])
    # useless

    left = substring_after(out, "Left: ")
    left = (left[:3])
    if(str(left[2]) != "%"):
        left += "%"
    lefthtml = "<div class='container small' style='padding-left: 75px;'><div class='bend bend-lft vsmall prp-dark'><div class='icon icon-lft prp-light'><img src='dive/ics/15airpodL.png' height='12'></div><div class='content content-lft'>" + left + "</div></div><span style='padding-right: 65px;'></span></div>"

    right = substring_after(out, "Right: ")
    right = (right[:3])
    if(str(right[2]) != "%"):
        right += "%"
    righthtml = "<div class='container lmao' style='padding-left: 140px;'><div class='bend bend-lft prp-dark'><div class='icon icon-lft prp-light'><img src='dive/ics/16airpodR.png' height='12'></div><div class='content content-lft' style='width: 20px !important; margin-right: 0px !imporant;'>" + right + "</div></div></div>"

    print(lefthtml + righthtml)
