import os,sys

device_name = "fishpods"

out = os.popen("system_profiler SPBluetoothDataType | grep " + device_name +" -A 7").read()

if("Connected: No" in out):
    print('<i class="nf nf-mdi-music_note"></i>')
else:
    print('<i class="nf nf-mdi-music_note"></i><i class="nf nf-mdi-bluetooth" style="font-size: 8px;"></i>')

'''
read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName theState <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set theState to player state as string
        return theArtist & "|" & theName & "|" & theState
    end tell')" &&
echo "<span style='white-space: nowrap'>$theArtist - $theName </span>" || echo "<span style='white-space: nowrap'>Not Connected To Spotify</span>"
'''
