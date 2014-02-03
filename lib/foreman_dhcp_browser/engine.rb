require 'deface'
module ForemanDhcpBrowser
  class Engine < ::Rails::Engine
    initializer 'foreman_dhcp_browser.register_plugin', :after=> :finisher_hook do |app|
      Foreman::Plugin.register :foreman_dhcp_browser do
      end if defined?(Foreman::Plugin)
    end
  end
end
