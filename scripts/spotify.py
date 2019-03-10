import os,sys

device_name = "fishpods"

# lmao
spot_as='read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" && test $running != 0 && IFS=\'|\' read -r theArtist theName theState <<<"$(osascript <<<\'tell application "Spotify"\n        set theTrack to current track\n         set theArtist to artist of theTrack\n        set theName to name of theTrack\n        set theState to player state as string\n        return theArtist & "|" & theName & "|" & theState\n     end tell\')" && echo "<span style=\'white-space: nowrap\'>$theArtist - $theName </span>" || echo "<span style=\'white-space: nowrap\'>Not Connected To Spotify</span>"'

out = os.popen("system_profiler SPBluetoothDataType | grep " + device_name + " -A 7").read()
try:
    spot = os.popen(spot_as).read()
except:
    spot = "Not Connected To Spotify"

if("Connected: No" in out):
    print("<div class='container adjust'><div class='bend bend-lft'><div class='icon icon-lft'><img src='dive/ics/14note.png' height='10px'></div><div class='content content-lft'>" + spot + "</div></div></div></div>")
else:
    print("<div class='container adjust' style='padding-left: 202px; !important'><div class='bend bend-lft'><div class='icon icon-lft'><img src='dive/ics/14note.png' height='10px'></div><div class='content content-lft'>" + spot + "</div></div></div></div>")

'''
</div><div class='container adjust'><div class='bend bend-lft'><div class='icon icon-lft'><img src='dive/ics/14note.png' height='10px'></div><div class='content content-lft'>" + spot + "</div></div></div></div>
'''
