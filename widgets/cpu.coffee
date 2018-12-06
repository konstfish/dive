command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 20000 # ms

render: (output) ->
  "<div class='screen'>
    <div class='tile cpu'>
      <i class='nf nf-mdi-memory'></i>#{output}
    </div>
  </div>"
