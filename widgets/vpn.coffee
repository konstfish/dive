command: 'dive/scripts/./vpn'

refreshFrequency: 30 * 1000 # ms

render: (output) ->
  "<div class='container small'>
      <div class='bend grn-dark'>
        <div class='icon grn-light'>
          <img src='dive/ics/7vpn.png' height='12px'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
