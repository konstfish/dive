command: 'python dive/scripts/battery.py'

refreshFrequency: 30000 # ms

render: (output) ->
  "<div class='container small battery'>
      <div class='bend'>
        <div class='icon'>
          <img src='dive/ics/7vpn.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
