$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'foreman_dhcp_browser/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'foreman_dhcp_browser'
  s.version     = ForemanDhcpBrowser::VERSION
  s.license     = 'GPL-3.0'
  s.authors     = ['Ohad Levy']
  s.email       = 'ohadlevy@gmail.com'
  s.homepage    = 'https://github.com/theforeman/foreman_dhcp_browser'
  s.summary     = 'DHCP browser plugin for Foreman'
  s.description = "Plugin for Foreman to browse and add/edit/delete DHCP leases independent of Foreman's host creation"

  s.files = Dir['{app,config,db,lib}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'deface'
end
