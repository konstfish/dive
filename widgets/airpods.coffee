command: "dive/scripts/./airpods.py"

refreshFrequency: 20 * 1000 # ms

render: (output) ->
  "<div class='container'>
    <span style='white-space: nowrap'>
        #{output}
    </span>
   </div>
   <script>
  </script>"
