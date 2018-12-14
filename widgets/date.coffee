command: "date +\"%a, %b %d\""

refreshFrequency: 100000

render: (output) ->
  "<div class='screen'>
    <div class='tile' id='date'>
      #{output}
    </div>
  </div>"
