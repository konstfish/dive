command: "bash dive/scripts/network"

refreshFrequency: 5000 # ms

render: (output) ->
  "<div class='screen'>
    <div class='tile' id='network'>
      #{output}
    </div>
  </div>"
