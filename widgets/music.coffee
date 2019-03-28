command: """
/usr/local/bin/python3 dive/scripts/music.py
"""

refreshFrequency: 10000

render: (output) ->
  "#{output} | <img src='dive/ics/skipr.png' id='rev' height='11px'>
               <img src='dive/ics/play.png' id='play' height='11px'>
               <img src='dive/ics/skip.png' id='skip' height='11px'></span>
  </div></div></div></div>"

afterRender: (domEl) ->
  $(domEl).on 'click', '#play', => @run 'osascript -e \'tell app "iTunes" to playpause\''
  $(domEl).on 'click', '#rev', => @run 'osascript -e \'tell app "iTunes" to play previous track\''
  $(domEl).on 'click', '#skip', => @run 'osascript -e \'tell app "iTunes" to play next track\''
