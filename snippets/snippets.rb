require 'ruble'

snippet t(:interpolated_code) do |s|
  s.trigger = '#'
  s.key_binding = '#'
  s.scope = '(string.quoted.double.coffee) - string source, (string.quoted.double.heredoc.coffee) - string source'
  s.expansion = '#{${1:$TM_SELECTED_TEXT}}'
end

with_defaults :scope => 'source.coffee' do

  snippet t(:array_comp) do |s|
    s.trigger = 'fora'
    s.expansion = 'for ${1:name} in ${2:array}
  ${0:# body...}'
  end

  snippet t(:bound_function) do |s|
    s.trigger = 'bfun'
    s.expansion = '${1:(${2:args}) }=>
  ${0:# body...}'
  end

  snippet t(:class) do |s|
    s.trigger = 'cla'
    s.expansion = 'class ${1:ClassName}${2: extends ${3:Ancestor}}

  ${4:constructor: (${5:args}) ->
    ${6:# body...}}
  $7'
  end

  snippet t(:else_if) do |s|
    s.trigger = 'elif'
    s.expansion = 'else if ${1:condition}
  ${0:# body...}'
  end

  snippet t(:function) do |s|
    s.trigger = 'fun'
    s.expansion = '${1:name} = (${2:args}) ->
  ${0:# body...}

'
  end

  snippet t(:if_else) do |s|
    s.trigger = 'ife'
    s.expansion = 'if ${1:condition}
  ${2:# body...}
else
  ${3:# body...}'
  end

  snippet t(:if) do |s|
    s.trigger = 'if'
    s.expansion = 'if ${1:condition}
  ${0:# body...}'
  end

  snippet t(:log) do |s|
    s.trigger = 'log'
    s.expansion = 'console.log $0'
  end

  snippet t(:object_comp) do |s|
    s.trigger = 'foro'
    s.expansion = 'for ${1:key}, ${2:value} of ${3:Object}
  ${0:# body...}'
  end

  snippet t(:range_comp_exclusive) do |s|
    s.trigger = 'forrex'
    s.expansion = 'for ${1:name} in [${2:start}...${3:finish}]${4: by ${5:step}}
  ${0:# body...}'
  end

  snippet t(:range_comp_inclusive) do |s|
    s.trigger = 'forr'
    s.expansion = 'for ${1:name} in [${2:start}..${3:finish}]${4: by ${5:step}}
  ${0:# body...}'
  end

  snippet t(:raw_javascript) do |s|
  # FIXME No tab trigger, probably needs to become command
    s.key_binding = 'M4+J'
    s.expansion = '\`${1:`pbpaste`}\`'
  end

  # FIXME Not currently working due to unsupported TextMate functionality
  # snippet t(:require) do |s|
  # s.trigger = 'req'
  # s.expansion = '${2/^.*?([\w_]+).*$/\L$1/}= require(${2:\'${1:sys}\'})'
  # end

  snippet t(:switch) do |s|
    s.trigger = 'swi'
    s.expansion = 'switch ${1:object}
  when ${2:value}
    ${0:# body...}'
  end

  snippet t(:ternary_if) do |s|
    s.trigger = 'ifte'
    s.expansion = 'if ${1:condition} then ${2:value} else ${3:other}'
  end

  snippet t(:try_catch) do |s|
    s.trigger = 'try'
    s.expansion = 'try
  $1
catch ${2:error}
  $3'
  end

  snippet t(:unless) do |s|
    s.trigger = 'unl'
    s.scope = 'source.coffee'
    s.expansion = '${1:action} unless ${2:condition}'
  end
end
