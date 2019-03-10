command: 'python dive/scripts/battery.py'

refreshFrequency: 30000

render: (output) ->
  "<div class='container lmao'>
      <div class='bend grn-dark'>
        <div class='icon grn-light'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
