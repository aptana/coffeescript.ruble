require 'ruble'

command t(:run) do |cmd|
  cmd.key_binding = 'M1+R'
  cmd.scope = 'source.coffee'
  cmd.output = :show_as_html
  cmd.input = :selection
  cmd.invoke =<<-EOF
#!/bin/bash

${TM_COFFEE:=coffee} -s | pre
EOF
end
