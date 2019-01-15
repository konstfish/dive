command: "dive/scripts/mem.sh"

refreshFrequency: 15000 # ms

render: (output) ->
  "<div class='container big'>
      <div class='bend'>
        <div class='icon'>
          <img src='dive/ics/5ram.png' height='12'>
        </div>
        <div class='content'>
          #{output} GB
        </div>
      </div>
    </div>
   </div>"
