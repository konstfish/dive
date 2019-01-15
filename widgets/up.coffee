command: "bash dive/scripts/up"

refreshFrequency: 5000 # ms

render: (output) ->
  "<div class='container cpu'>
      <div class='bend med red-dark'>
        <div class='icon red-light'>
          <img src='dive/ics/8up.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
