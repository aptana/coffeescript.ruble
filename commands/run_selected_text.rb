require 'ruble'

command t(:run_selected_text) do |cmd|
  cmd.key_binding = 'M1+M2+R'
  cmd.scope = 'source.coffee'
  cmd.output = :show_as_tooltip
  cmd.input = :selection
  cmd.invoke =<<-EOF
#!/bin/bash

${TM_COFFEE:=coffee} -s

EOF
end
