$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'foreman_dhcp_browser/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'foreman_dhcp_browser'
  s.version     = ForemanDhcpBrowser::VERSION
  s.authors     = ['Ohad Levy']
  s.email       = %q{ohadlevy@gmail.com}
  s.homepage    = %q{https://github.com/theforeman/foreman_dhcp_browser}
  s.summary     = %q{DHCP browser plugin for Foreman}
  s.description = %q{Plugin for Foreman to browse and add/edit/delete DHCP leases independent of Foreman's host creation}

  s.files = Dir['{app,config,db,lib}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'deface', '< 1.0'

end
