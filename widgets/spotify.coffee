command: """
/usr/local/bin/python3 dive/scripts/music.py

read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName theState <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set theState to player state as string
        return theArtist & "|" & theName & "|" & theState
    end tell')" &&
echo "<span class='title'>$theArtist - </span><class='artist'>$theName</>" || echo "Not Connected To Spotify"
"""

refreshFrequency: 6000

style: """
.icon
  color: #000000;
  font-size: 12px;
  margin-right: 2px;
"""

render: (output) -> """
  <div class='screen'><div class='tile'>#{output}</div></div>
"""
