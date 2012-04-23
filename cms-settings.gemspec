$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cms/settings/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cms-settings"
  s.version     = Cms::Settings::VERSION
  s.authors     = ["Vladislav Druzhinin"]
  s.email       = ["vlad@druzh.ru"]
  s.homepage    = "https://github.com/vdv"
  s.summary     = "Summary of CmsSettings."
  s.description = "Description of CmsSettings."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  s.add_dependency "jquery-rails"
  s.add_dependency "haml-rails"

  s.add_development_dependency "sqlite3"
end
