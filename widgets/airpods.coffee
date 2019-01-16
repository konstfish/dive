command: "dive/scripts/./battfetch"

refreshFrequency: 20000 # ms

render: (output) ->
  "<div class='container cpu'>
      <div class='bend medium grn-dark'>
        <div class='icon grn-light'>
          <img src='dive/ics/17airpodC.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
