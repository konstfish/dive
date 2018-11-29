command: "date +\"%H%:%M\""

refreshFrequency: 60000 # ms

style:"""
  i{
    padding-right: 2px;
  }
"""

render: (output) ->
  "<div class='screen'><div class='tile'><i class='nf nf-mdi-clock'></i>#{output}</div></div>"
