$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foreman_dhcp_browser/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foreman_dhcp_browser"
  s.version     = ForemanDhcpBrowser::VERSION
  s.authors     = ["Ohad Levy"]
  s.email       = ["ohadlevy@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ForemanDhcpBrowser."
  s.description = "TODO: Description of ForemanDhcpBrowser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "deface"

  s.add_development_dependency "sqlite3"
end
