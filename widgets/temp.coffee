command: 'dive/scripts//osxcputmp'

refreshFrequency: 300000 # ms

render: (output) ->
  "<div class='container medium battery'>
      <div class='bend ylw-dark'>
        <div class='icon ylw-light'>
          <img src='dive/ics/4termo.png' height='12px'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
