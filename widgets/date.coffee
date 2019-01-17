command: "date +\"%a, %b %d\""

refreshFrequency: 10 * 1000

render: (output) ->
"<div class='container date'>
    <div class='bend'>
      <div class='content'>
        #{output}
      </div>
    </div>
  </div>
 </div>"
