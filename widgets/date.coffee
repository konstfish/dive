command: "date +\"%a, %b %d\""

refreshFrequency: 100000

render: (output) ->
"<div class='container date'>
    <div class='bend'>
      <div class='content'>
        #{output}
      </div>
    </div>
  </div>
 </div>"
