command: """
/usr/local/bin/python3 dive/scripts/music.py
"""

refreshFrequency: 30 * 1000

render: (output) ->
  "#{output}"
