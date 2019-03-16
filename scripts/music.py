#!/usr/local/bin/python3

import os,sys
import subprocess

device_name = "fishpods"
platform = "spotify" # spotify, itunes, both. defaults to spotify
apls = ""
out = "Not connected"

def itunesrunning():
    o = os.popen('ps -ef | grep "iTunes" | grep -v "grep" | wc -l').read()
    o = int(o)
    if(o > 3):
        return True
    else:
        return False

def spotrunning():
    o = os.popen('ps -ef | grep "Spotify" | grep -v "grep" | wc -l').read()
    o = int(o)
    if(o >= 1):
        return True
    else:
        return False

as_spot = """
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        return theArtist & "|" & theName
    end tell')" &&
echo "$theArtist - $theName"
"""

as_itunes = """
osascript <<<'if isPlaying() is true then
	try
		tell application "iTunes" to set {artistName, songName} to {artist, name} of current track
		return artistName & " - " & songName
	on error e
		return "Not connected to iTunes"
	end try
end if

on isPlaying()
	set answer to false
	tell application "System Events" to set isRunning to (name of processes) contains "iTunes"
	if isRunning is true then
		try
			tell application "iTunes" to if player state is playing then set answer to true
		on error e
			my logEvent(e)
		end try
	end if
	return answer
end isMusicPlaying'
"""


# run

if(platform == "itunes"):
    if(itunesrunning()):
        out = os.popen(as_itunes).read()
    else:
        out = "Not Connected To iTunes"
elif(platform == "both"):
    if(spotrunning()):
        try:
            out = os.popen(as_spot).read()
        except:
            out = "Not Connected To iTunes"
    elif(itunesrunning()):
        out = os.popen(as_itunes).read()
    else:
        out = "Not Connected"
else:
    if(spotrunning()):
        try:
            out = os.popen(as_spot).read()
        except:
            out = "Not Connected To iTunes"
    else:
        out = "Not Connected To Spotify"

conn = os.popen("system_profiler SPBluetoothDataType | grep " + device_name + " -A 7").read()
os.system('osascript -e \'tell application "Übersicht" to refresh widget id "dive-widgets-airpods-coffee"\'')

if("Connected: No" in conn):
    print("<div class='container adjust'><div class='bend bend-lft'><div class='icon icon-lft'><img src='dive/ics/14note.png' height='10px'></div><div class='content content-lft'><span style=\'white-space: nowrap\'>" + out + "</span> </div></div></div></div>")
else:
    print("<div class='container adjust' style='padding-left: 202px; !important'><div class='bend bend-lft'><div class='icon icon-lft'><img src='dive/ics/14note.png' height='10px'></div><div class='content content-lft'><span style=\'white-space: nowrap\'>" + out + "</span> </div></div></div></div>")
