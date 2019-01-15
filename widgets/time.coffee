command: "date +\"%H%:%M\""

refreshFrequency: 60000 # ms

render: (output) ->
  "<div class='container adjust'>
      <div class='bend org-dark'>
        <div class='icon org-light'>
          <img src='dive/ics/2clock.png' width='12px'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
