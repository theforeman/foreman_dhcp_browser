require 'deface'
module ForemanDhcpBrowser
  class Engine < ::Rails::Engine
    initializer 'foreman_dhcp_browser.register_plugin', :after=> :finisher_hook do |app|
      Foreman::Plugin.register :foreman_dhcp_browser do
      end
    end

    config.to_prepare do
        ::Net::Record.send :include, ::ActiveModel::AttributeMethods
        ::Net::Record.send :include, ::ActiveModel::Conversion
        ::Net::Record.send :extend, ::ActiveModel::Naming
        ::Net::Record.send :include, ForemanDhcpBrowser::Concerns::NetRecordExtension
      end
  end
end
