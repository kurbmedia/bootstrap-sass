# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap/sass/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap-sass"
  s.version     = Bootstrap::Sass::VERSION
  s.authors     = ["Brent Kirby"]
  s.email       = ["dev@kurbmedia.com"]
  s.homepage    = "https://github.com/kurbmedia/bootstrap-scss"
  s.summary     = %q{SASS (.scss) port of Twitter's Bootstrap framework including Rails 3.1 asset support.}
  s.description = %q{SASS (.scss) port of Twitter's Bootstrap framework including Rails 3.1 asset support.}

  s.rubyforge_project = "bootstrap-sass"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
