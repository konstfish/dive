command: "dive/scripts/mem.py"

refreshFrequency: 15000 # ms

render: (output) ->
  "<div class='screen'>
    <div class='tile mem'>
      <i class='nf nf-fae-chip'></i>#{output}
    </div>
  </div>"
