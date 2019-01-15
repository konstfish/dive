command: "python dive/scripts/connection.py"

refreshFrequency: 10000 # ms

render: (output) ->
  "<div class='container adjust'>
      <div class='bend'>
        <div class='icon'>
          <img src='dive/ics/#{output}' height='12'>
        </div>
        <div class='content'>
          Name
        </div>
      </div>
    </div>
   </div>"
