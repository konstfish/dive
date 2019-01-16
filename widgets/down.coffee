command: "bash dive/scripts/down"

refreshFrequency: 5000 # ms

render: (output) ->
  "<div class='container cpu'>
      <div class='bend big red-dark'>
        <div class='icon red-light'>
          <img src='dive/ics/9down.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
