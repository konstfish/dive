command: "python dive/scripts/connection.py"

refreshFrequency: 10000 # ms

render: (output) ->
  "<div class='container adjust'>
      <div class='bend'>
        <div class='icon'>
        #{output}
        </div>
      </div>
    </div>
   </div>"
