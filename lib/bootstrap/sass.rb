module Bootstrap
  module Sass
    extend self
    
    def stylesheets_dir
      File.expand_path('../../stylesheets', __FILE__)
    end
    
  end
end


if defined?(Rails)
  require 'bootstrap/sass/rails'
elsif defined?(Compass)
  Compass::Frameworks.register('bootstrap', :stylesheets_directory => Bootstrap::Sass.stylesheets_dir, :templates_directory => '')
end



