snippet 'Array Comprehension' do |s|
  s.trigger = 'fora'
  s.scope = 'source.coffee'
  s.expansion = 'for ${1:name} in ${2:array}
  ${0:# body...}'
end

snippet 'Function (bound)' do |s|
  s.trigger = 'bfun'
  s.scope = 'source.coffee'
  s.expansion = '${1:(${2:args}) }=>
  ${0:# body...}'
end

snippet 'Class' do |s|
  s.trigger = 'cla'
  s.scope = 'source.coffee'
  s.expansion = 'class ${1:ClassName}${2: extends ${3:Ancestor}}

  ${4:constructor: (${5:args}) ->
    ${6:# body...}}
  $7'
end

snippet 'Else if' do |s|
  s.trigger = 'elif'
  s.scope = 'source.coffee'
  s.expansion = 'else if ${1:condition}
  ${0:# body...}'
end

snippet 'Function' do |s|
  s.trigger = 'fun'
  s.scope = 'source.coffee'
  s.expansion = '${1:name} = (${2:args}) ->
  ${0:# body...}

'
end

snippet 'If .. Else' do |s|
  s.trigger = 'ife'
  s.scope = 'source.coffee'
  s.expansion = 'if ${1:condition}
  ${2:# body...}
else
  ${3:# body...}'
end

snippet 'If' do |s|
  s.trigger = 'if'
  s.scope = 'source.coffee'
  s.expansion = 'if ${1:condition}
  ${0:# body...}'
end

snippet 'Interpolated Code' do |s|
  s.trigger = '#'
  s.key_binding = '#'
  s.scope = '(string.quoted.double.coffee) - string source, (string.quoted.double.heredoc.coffee) - string source'
  s.expansion = '#{${1:$TM_SELECTED_TEXT}}'
end

snippet 'log' do |s|
  s.trigger = 'log'
  s.scope = 'source.coffee'
  s.expansion = 'console.log $0'
end

snippet 'Object comprehension' do |s|
  s.trigger = 'foro'
  s.scope = 'source.coffee'
  s.expansion = 'for ${1:key}, ${2:value} of ${3:Object}
  ${0:# body...}'
end

snippet 'Range comprehension (exclusive)' do |s|
  s.trigger = 'forrex'
  s.scope = 'source.coffee'
  s.expansion = 'for ${1:name} in [${2:start}...${3:finish}]${4: by ${5:step}}
  ${0:# body...}'
end

snippet 'Range comprehension (inclusive)' do |s|
  s.trigger = 'forr'
  s.scope = 'source.coffee'
  s.expansion = 'for ${1:name} in [${2:start}..${3:finish}]${4: by ${5:step}}
  ${0:# body...}'
end

snippet 'Raw javascript' do |s|
  # FIXME No tab trigger, probably needs to become command
  s.key_binding = 'M4+J'
  s.scope = 'source.coffee'
  s.expansion = '\`${1:`pbpaste`}\`'
end

snippet 'require' do |s|
  s.trigger = 'req'
  s.scope = 'source.coffee'
  s.expansion = '${2/^.*?([\w_]+).*$/\L$1/}= require(${2:\'${1:sys}\'})'
end

snippet 'Switch' do |s|
  s.trigger = 'swi'
  s.scope = 'source.coffee'
  s.expansion = 'switch ${1:object}
  when ${2:value}
    ${0:# body...}'
end

snippet 'Ternary If' do |s|
  s.trigger = 'ifte'
  s.scope = 'source.coffee'
  s.expansion = 'if ${1:condition} then ${2:value} else ${3:other}'
end

snippet 'Try .. Catch' do |s|
  s.trigger = 'try'
  s.scope = 'source.coffee'
  s.expansion = 'try
  $1
catch ${2:error}
  $3'
end

snippet 'Unless' do |s|
  s.trigger = 'unl'
  s.scope = 'source.coffee'
  s.expansion = '${1:action} unless ${2:condition}'
end

