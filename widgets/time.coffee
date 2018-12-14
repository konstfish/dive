command: "date +\"%H%:%M\""

refreshFrequency: 60000 # ms

render: (output) ->
  "<div class='screen'>
    <div class='tile' id='time'>
      <i class='nf nf-mdi-clock'></i>#{output}
    </div>
  </div>"
