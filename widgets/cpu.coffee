command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 20000 # ms

render: (output) ->
  "<div class='container cpu'>
      <div class='bend'>
        <div class='icon'>
          <img src='dive/ics/6cpu.png' height='12'>
        </div>
        <div class='content'>
          #{output}
        </div>
      </div>
    </div>
   </div>"
