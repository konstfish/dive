command: "bash dive/scripts/up"

refreshFrequency: 5000

render: (output) ->
  "<div class='container'>
      <div class='bend big red-dark'>
        <div class='icon red-light'>
          <img src='dive/ics/8up.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
