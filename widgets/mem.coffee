command: "dive/scripts/mem"

refreshFrequency: 15000

render: (output) ->
  "<div class='container mega'>
      <div class='bend ylw-dark'>
        <div class='icon ylw-light'>
          <img src='dive/ics/5ram.png' height='12'>
        </div>
        <div class='content'>
          <span style='white-space: nowrap'>#{output} GB</span>
        </div>
      </div>
    </div>
   </div>"
