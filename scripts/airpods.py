#!/usr/bin/python

import os, sys

def substring_after(s, delim):
    return s.partition(delim)[2]

out = os.popen('dive/scripts/./battfetch').read()

if("not_connected" not in str(out)):
    case = substring_after(out, "Case: ")
    case = (case[:3])
    if(str(case[2]) != "%"):
        casehtml = "<div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/17airpodC.png' height='12'></div><div class='content content-lft'>" + case + "%</div></div><span style='padding-right: 65px;'></span>"
    else:
        casehtml = "<div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/17airpodC.png' height='12'></div><div class='content content-lft'>" + case + "</div></div><span style='padding-right: 65px;'></span>"

    left = substring_after(out, "Left: ")
    left = (left[:3])
    if(str(left[2]) != "%"):
        lefthtml = "<div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/15airpodL.png' height='12'></div><div class='content content-lft'>" + left + "%</div></div><span style='padding-right: 65px;'></span>"
    else:
        lefthtml = "<div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/15airpodL.png' height='12'></div><div class='content content-lft'>" + left + "</div></div><span style='padding-right: 65px;'></span>"

    right = substring_after(out, "Right: ")
    right = (right[:3])
    if(str(right[2]) != "%"):
        righthtml = "<div class='bend bend-lft vsmall adjust grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/16airpodR.png' height='12'></div><div class='content content-lft'>" + right + "%</div></div><span style='padding-right: 65px;'></span>"
    else:
        righthtml = "<div class='bend bend-lft vsmall adjust grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/16airpodR.png' height='12'></div><div class='content content-lft'>" + right + "</div></div><span style='padding-right: 65px;'></span>"

    print("<span id='aidpodpadding' style = 'float: left;'></span><span style = 'float: left;'>" + casehtml + lefthtml + righthtml + "</span>")
