command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 20000

render: (output) ->
  "<div class='container cpu'>
      <div class='bend medium ylw-dark'>
        <div class='icon ylw-light'>
          <img src='dive/ics/6cpu.png' height='12'>
        </div>
        <div class='content'>
          #{output}<span style='padding-left:1spx;'>%</span>
        </div>
      </div>
    </div>
   </div>"
