command: "python dive/scripts/connection.py"

refreshFrequency: 10000 # ms

render: (output) ->
  "<div class='container adjust'>
      <div class='bend'>
        <div class='icon'>
          <img src='dive/ics/#{output}' width='12px'>
        </div>
        <div class='content'>
          NW
        </div>
      </div>
    </div>
   </div>"
