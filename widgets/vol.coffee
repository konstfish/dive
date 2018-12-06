command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "<div class='screen'>
      <div class='tile vol'>
        <i class='fas fa-volume-up'></i>#{output}
      </div>
    </div>"
