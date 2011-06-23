require 'ruble'

command 'Compile and Display JS' do |cmd|
  cmd.key_binding = 'M1+B'
  cmd.scope = 'source.coffee'
  cmd.output = :show_as_html
  cmd.input = :selection, :document
  cmd.invoke =<<-EOF
#!/bin/bash

function highlight {
  test `which pygmentize`
  if [[ $? -eq 0 ]]; then
    pygmentize -Onoclasses,nobackground=True -l js -f html
  else
    pre
  fi
}

${TM_COFFEE:=coffee} -scp --bare | highlight
EOF
end
