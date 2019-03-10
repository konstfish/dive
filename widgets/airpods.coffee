command: "dive/scripts/./airpods.py"

refreshFrequency: 10000

render: (output) ->
  "
  <span id='aidpodpadding'></span>
  <span style='white-space: nowrap'>
      #{output}
  </span>
  "

#document.getElementById('aidpodpadding').style.paddingLeft = document.getElementById('dive-widgets-spotify-coffee').children[0].offsetWidth + 9
