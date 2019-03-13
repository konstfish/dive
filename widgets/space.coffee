command: "dive/scripts/spaces.sh"

refreshFrequency: 15000

render: (output) ->
  "<div class='container mega'>
      <div class='bend ylw-dark'>
        <div class='content'>
          <span style='white-space: nowrap'>#{output}</span>
        </div>
      </div>
    </div>
   </div>"
