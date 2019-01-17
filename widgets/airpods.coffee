command: "dive/scripts/./airpods.py"

refreshFrequency: 20 * 1000 # ms

render: (output) ->
  "<div class='container'>
    <span style='white-space: nowrap'>
        #{output}
    </span>
   </div>
   <script>
  document.getElementById('aidpodpadding').style.paddingLeft = document.getElementById('dive-widgets-spotify-coffee').children[0].offsetWidth + 9;
  </script>"
