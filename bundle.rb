require 'ruble'

bundle t(:bundle_name) do |bundle|
  bundle.author = 'Jeremy Ashkenas, Christopher Williams'
  bundle.contact_email_rot_13 = 'wnfuxranf@tznvy.pbz'
  bundle.description = 'Coffeescript ruble ported from official Coffeescript Textmate bundle.'
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

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.menu t(:run) do |submenu|
      submenu.command t(:run)
      submenu.command t(:compile_and_display_js)
      submenu.command t(:run_selected_text)
    end
    main_menu.menu t(:control) do |submenu|
      submenu.command t(:if)
      submenu.command t(:if_else)
      submenu.command t(:else_if)
      submenu.command t(:ternary_if)
      submenu.command t(:unless)
    end
    main_menu.menu t(:constructs) do |submenu|
      submenu.command t(:new_function)
      submenu.command t(:function)
      submenu.command t(:bound_function)
      submenu.command t(:array_comp)
      submenu.command t(:object_comp)
      submenu.command t(:range_comp_exclusive)
      submenu.command t(:range_comp_inclusive)
      submenu.command t(:switch)
      submenu.command t(:class)
      submenu.command t(:try_catch)
    end
    main_menu.menu t(:other) do |submenu|
      submenu.command t(:heredoc_double_quotes)
      submenu.command t(:heredoc_single_quotes)
      submenu.command t(:heredoc_comment)
      submenu.command t(:align_assignments)
      submenu.command t(:raw_javascript)
      submenu.command t(:require)
      submenu.command t(:interpolated_code)
      submenu.command t(:log)
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
