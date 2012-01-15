module Bootstrap
  module Sass
    class Engine < Rails::Engine 
      
      config.sass.load_paths << Bootstrap::Sass.stylesheets_dir
      
    end
  end
end