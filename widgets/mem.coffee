command: "dive/scripts/mem.py"

refreshFrequency: 15000 # ms

render: (output) ->
  "<div class='container adjust'>
      <div class='bend'>
        <div class='icon'>
          <img src='dive/ics/5ram.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
