command: "bash dive/scripts/network"

refreshFrequency: 5000 # ms

render: (output) ->
  "<div class='screen'>
    <div class='tile network'>
      #{output}
    </div>
  </div>"
