#!/usr/local/bin/python3

import os, sys, time
import re
import threading

do = sys.argv[1];

widgets = os.listdir("widgets")

for widget in widgets:
    f = open(("widgets/" + widget), "r")
    txt = f.read()
    f.close()

    freq = re.search("(?<=refreshFrequency: )(.*)(?=\\n)", txt)
    freq = freq.group()
    #print("?: " + freq)

    if(do == "1"):
        txt = txt.replace(freq, str(int(freq) * 2))
        #print("!*: " + str(int(freq) * 2))
    else:
        txt = txt.replace(freq, str(int(int(freq) / 2)))
        #print("!/: " + str(int(int(freq) / 2)))

    f = open(("widgets/" + widget), "w+")
    f.write(txt)
    f.close()

'''
f= open("tmp.html","w+")
f.write(html)
f.close()
'''
