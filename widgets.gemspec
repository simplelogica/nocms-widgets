$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nocms/widgets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-widgets"
  s.version     = NoCms::Widgets::VERSION
  s.authors     = ["Luis Mendo"]
  s.email       = ["luis@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-widgets"
  s.summary     = "Gem with widgets functionality independent from any CMS and embeddable in any Rails 4 app"
  s.description = "Gem with widgets functionality independent from any CMS and embeddable in any Rails 4 app"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "nocms-blocks", '~> 1.0', '>= 1.1.3'

  s.add_development_dependency "sqlite3"
end
