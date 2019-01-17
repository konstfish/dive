command: "dive/scripts/./airpods.py"

refreshFrequency: 20 * 1000 # ms

render: (output) ->
  "<div class='container'>
    <span style='white-space: nowrap'>
        #{output}
    </span>
   </div>
   <script>
  console.log(document.getElementById('dive-widgets-spotify-coffee').children[0].offsetWidth)
  document.getElementById('aidpodpadding').style.padding-left = document.getElementById('dive-widgets-spotify-coffee').children[0].offsetWidth;
  </script>"
