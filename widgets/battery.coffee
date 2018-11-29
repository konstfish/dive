command: "python dive/scripts/battery.py"

refreshFrequency: 30000 # ms

render: (output) ->
  "<div class='screen'><div class='tile'>#{output}</div></div>"
