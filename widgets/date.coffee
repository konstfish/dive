command: "date +\"%a, %b %d\""

refreshFrequency: 100000

render: (output) ->
  "<div class='screen'><div class='tile' style='font-size: 10px;'>#{output}</div></div>"
