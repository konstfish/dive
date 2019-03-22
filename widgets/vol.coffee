command: "/usr/local/bin/python3 dive/scripts/vol.py"

refreshFrequency: 10000

render: (output) ->
  "<div class='container lmao'>
      <div class='bend bend-lft prp-dark'>
        <div class='icon icon-lft prp-light'>
          #{output}
        </div>
      </div>
    </div>
   </div>
  "
