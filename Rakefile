require "bundler/gem_tasks"

desc 'Updates source from official Twitter repo. Copies javascripts to vendor/'
task :update do
  
  `git submodule update`

  source_dir = File.join(File.dirname(__FILE__), 'src')
  dest_dir   = File.join(File.dirname(__FILE__), 'vendor', 'assets', 'javascripts', 'bootstrap')

  Dir[File.join(source_dir, 'js', '*.js')].each do |jscript|
    filename = File.basename(jscript).sub("bootstrap-", "")  
    FileUtils.cp(jscript, File.join(dest_dir, filename))
  end
  
  dest_dir = File.join(File.dirname(__FILE__), 'lib', 'stylesheets', 'bootstrap')
  
  Dir[File.join(source_dir, 'lib', '*.less')].each do |orig|
    filename = File.basename(orig, ".less")
    tomake   = File.join(dest_dir, "_#{filename}.scss")
    unless File.exists?(tomake)
      FileUtils.touch(tomake)
    end
  end

  
end
