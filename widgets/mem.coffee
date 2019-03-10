command: "dive/scripts/mem.sh"

refreshFrequency: 15 * 1000 # ms

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
