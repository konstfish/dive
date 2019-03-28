command: 'dive/scripts/./vpn'

refreshFrequency: 7500

render: (output) ->
  "<div class='container small' id='vpn'>
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

afterRender: (domEl) ->
  $(domEl).on 'click', '#vpn', => @run 'dive/scripts/./vpn_connect'
