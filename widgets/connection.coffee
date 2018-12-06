command: "python dive/scripts/connection.py"

refreshFrequency: 10000 # ms

render: (output) ->
  "<div class='screen'>
    <div class='tile connection'>
      #{output}
    </div>
  </div>"
