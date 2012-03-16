require 'ruble'
require 'ruble/editor'

command t(:compile_and_display_js) do |cmd|
  cmd.key_binding = 'M1+B'
  cmd.scope = 'source.coffee'
  cmd.output = :discard
  cmd.input = :document
  cmd.invoke do |context|
    coffee = ENV['TM_COFFEE'] || 'coffee'
    dest_file = org.eclipse.core.runtime.Path.fromOSString(ENV['TM_FILEPATH']).removeFileExtension().addFileExtension('js')
    output = `#{coffee} -c "#{ENV['TM_FILEPATH']}"`
    
    # Spit the output to the scripting console
    if !output.nil? && output.length > 0
      Ruble::Logger.log_error(output)
    end
    
    # Open the resulting file, Only open if this succeeded
    if dest_file.toFile().exists()
      # Force workspace to see the file
      iFile = org.eclipse.core.resources.ResourcesPlugin.getWorkspace().getRoot().getFileForLocation(dest_file)
      iFile.refreshLocal(org.eclipse.core.resources.IResource::DEPTH_ZERO, nil)
      # Now open the resulting JS file in an editor
      Ruble::Editor.open(dest_file.toOSString())
    end
    nil
  end
end
