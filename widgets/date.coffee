command: "date +\"%a, %b %d\""

refreshFrequency: 100000

render: (output) ->
  "<div class='screen'>
    <div class='tile date'>
      #{output}
    </div>
  </div>"
