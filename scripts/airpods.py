#!/usr/bin/python
# -*- coding: utf-8 -*-

import os, sys

def substring_after(s, delim):
    return s.partition(delim)[2]

out = os.popen('dive/scripts/./battfetch').read()

if("not_connected" not in str(out)):
    case = substring_after(out, "Case: ")
    case = (case[:3])
    if(str(case) == "0% "):
        casehtml = "<div class='container small'><div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/17airpodC.png' height='12'></div><div class='content content-lft'>100%</div></div><span style='padding-right: 65px;'></span></div>"
    elif(str(case[2]) != "%"):
        casehtml = "<div class='container small'><div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/17airpodC.png' height='12'></div><div class='content content-lft'>" + case + "%</div></div><span style='padding-right: 65px;'></span></div>"
    else:
        casehtml = "<div class='container small'><div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/17airpodC.png' height='12'></div><div class='content content-lft'>" + case + "</div></div><span style='padding-right: 65px;'></span></div>"

    left = substring_after(out, "Left: ")
    left = (left[:3])
    if(str(left[2]) != "%"):
        lefthtml = "<div class='container small' style='padding-left: 65px;'><div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/15airpodL.png' height='12'></div><div class='content content-lft'>" + left + "%</div></div><span style='padding-right: 65px;'></span></div>"
    else:
        lefthtml = "<div class='container small' style='padding-left: 65px;'><div class='bend bend-lft vsmall grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/15airpodL.png' height='12'></div><div class='content content-lft'>" + left + "</div></div><span style='padding-right: 65px;'></span></div>"

    right = substring_after(out, "Right: ")
    right = (right[:3])
    if(str(right[2]) != "%"):
        righthtml = "<div class='container lmao' style='padding-left: 130px;'><div class='bend bend-lft grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/16airpodR.png' height='12'></div><div class='content content-lft' style='width: 20px !important; margin-right: 0px !imporant;'>" + right + "%</div></div></div>"
    else:
        righthtml = "<div class='container lmao' style='padding-left: 130px;'><div class='bend bend-lft grn-dark'><div class='icon icon-lft grn-light'><img src='dive/ics/16airpodR.png' height='12'></div><div class='content content-lft' style='width: 20px !important; margin-right: 0px !imporant;'>" + right + "</div></div></div>"

    print(casehtml + lefthtml + righthtml)
