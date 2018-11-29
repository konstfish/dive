command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "<div class='screen'><div class='tile'><i class='nf nf-mdi-memory'></i>#{output}</div></div>"

style: """
    i{
      padding-right: 6px;
    }
"""
