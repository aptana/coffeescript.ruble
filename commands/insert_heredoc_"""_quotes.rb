require 'ruble'

command t(:heredoc_double_quotes) do |cmd|
  cmd.key_binding = 'M1+"'
  cmd.scope = 'source.coffee'
  cmd.output = :insert_as_snippet
  cmd.input = :none, :line
  cmd.invoke =<<-EOF
#!/usr/bin/env ruby

column_number = ENV['TM_COLUMN_NUMBER']
whitespace    = " " * (column_number.to_i - 1)

print <<-EOS
"""
\#{whitespace}$0
\#{whitespace}"""
EOS

EOF
end
