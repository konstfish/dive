command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000000000 # ms

render: (output) ->
  ""
