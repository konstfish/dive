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
echo "<span style='white-space: nowrap'>$theArtist - $theName </span>" || echo "<span style='white-space: nowrap'>Not Connected To Spotify</span>"
"""

refreshFrequency: 600000

render: (output) ->
  "<div class='container adjust'>
      <div class='bend bend-lft'>
        <div class='icon icon-lft'>
          <img src='dive/ics/14note.png' height='10px'>
        </div>
        <div class='content content-lft'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
