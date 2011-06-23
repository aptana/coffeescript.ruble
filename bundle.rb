require 'ruble'

bundle 'CoffeeScript' do |bundle|
  bundle.author = 'Jeremy Ashkenas, Christopher Williams'
  bundle.contact_email_rot_13 = 'wnfuxranf@tznvy.pbz'
  bundle.description =  <<END
Coffeescript ruble ported from official Coffeescript Textmate bundle.
END
  # Folding
  start_folding = /.*(->|=>)\s*$|.*[\[{]\s*$/
  end_folding = /^\s*$|^\s*[}\]]\s*$/
  bundle.folding['source.coffee'] = start_folding, end_folding
  
  # Indentation
  decrease_indent = /^\s*(\}|\]|else|catch|finally)$/
  increase_indent = /
    ^\s*
    (.*class
    |[a-zA-Z\$_](\w|\$|:|\.)*\s*(?=\:(\s*\(.*\))?\s*((=|-)>\s*$)) # function that is not one line
    |[a-zA-Z\$_](\w|\$|\.)*\s*(?=(?!\::)\:(?!(\s*\(.*\))?\s*((=|-)>))):\s*((if|while)(?!.*?then)|for|$) # assignment using multiline if,while,for
    |(if|while)(?!.*?then)|for
    |.*[-=]>$
    |.*[\{\[]$)/x
  bundle.indent['source.coffee'] = increase_indent, decrease_indent
  # Fallback to use our text editor if coffeescript editor isn't available
  bundle.file_types['source.coffee'] = '*.coffee', 'Cakefile'

  bundle.menu 'CoffeeScript' do |main_menu|
    main_menu.menu 'Run' do |submenu|
      submenu.command 'Run'
      submenu.command 'Compile and Display JS'
      submenu.command 'Run selected text'
    end
    main_menu.menu 'Control' do |submenu|
      submenu.command 'If'
      submenu.command 'If .. Else'
      submenu.command 'Else if'
      submenu.command 'Ternary If'
      submenu.command 'Unless'
    end
    main_menu.menu 'Constructs' do |submenu|
      submenu.command 'New Function'
      submenu.command 'Function'
      submenu.command 'Function (bound)'
      submenu.command 'Array Comprehension'
      submenu.command 'Object comprehension'
      submenu.command 'Range comprehension (exclusive)'
      submenu.command 'Range comprehension (inclusive)'
      submenu.command 'Switch'
      submenu.command 'Class'
      submenu.command 'Try .. Catch'
    end
    main_menu.menu 'Other' do |submenu|
      submenu.command 'Insert Heredoc """ quotes'
      submenu.command 'Insert Heredoc \'\'\' quotes'
      submenu.command 'Insert Heredoc """ comment'
      submenu.command 'Align Assignments'
      submenu.command 'Raw javascript'
      submenu.command 'require'
      submenu.command 'Interpolated Code'
      submenu.command 'log'
    end
  end
end

# Set up the Comment ENV variables for coffeescript
env "source.coffee" do |e|
  e['TM_COMMENT_START'] = "# "
  e['TM_COMMENT_START_2'] = "###"
  e['TM_COMMENT_END_2'] = "###"
  e.delete('TM_COMMENT_END')
end

# Best guess as to set of pairs...
smart_typing_pairs["source.coffee"] = ['"', '"', '(', ')', '{', '}', '[', ']', "'", "'", '`', '`']
