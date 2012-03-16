require 'ruble'

command t(:new_function) do |cmd|
  cmd.key_binding = 'M2+ENTER'
  cmd.scope = 'source.coffee'
  cmd.output = :insert_as_snippet
  cmd.input = :selection, :word
  cmd.invoke =<<-EOF
cat <<SNIPPET
${TM_SELECTED_TEXT:-$TM_CURRENT_WORD} = (\${1:args}) ->
  \$0
SNIPPET
EOF
end
