command: 'python dive/scripts/battery.py'

refreshFrequency: 300000 # ms

render: (output) ->
  "<div class='container small battery'>
      <div class='bend grn-dark'>
        <div class='icon grn-light'>
          <img src='dive/ics/1headphones.png' height='12px'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
