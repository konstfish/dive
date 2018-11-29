command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "<div class='screen'><div class='holder'><div class='bcenter'><i class='fas fa-volume-up'></i>#{output}</div></div></div>"

style: """
  i{
    padding-right: 2px;
  }
"""
