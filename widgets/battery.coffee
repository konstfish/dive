command: "python dive/scripts/battery.py"

refreshFrequency: 60 # ms

render: (output) ->
  "<div class='screen'><div class='right2'>#{output}</div></div>"
