require 'deface'
module ForemanDhcpBrowser
  class Engine < ::Rails::Engine
    if (SETTINGS[:version].short.to_f >= 1.4)
      initializer 'foreman_dhcp_browser.register_plugin', :after=> :finisher_hook do |app|
        Foreman::Plugin.register :foreman_dhcp_browser do
        end
      end
    end
  end
end
