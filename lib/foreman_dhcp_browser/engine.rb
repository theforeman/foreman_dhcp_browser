require 'deface'
module ForemanDhcpBrowser
  class Engine < ::Rails::Engine
    initializer 'foreman_dhcp_browser.register_plugin', before: :finisher_hook do |_app|
      Foreman::Plugin.register :foreman_dhcp_browser do
      end
    end

    config.to_prepare do
      ::Net::Record.include ::ActiveModel::AttributeMethods
      ::Net::Record.include ::ActiveModel::Conversion
      ::Net::Record.extend ::ActiveModel::Naming
      ::Net::Record.include ForemanDhcpBrowser::Concerns::NetRecordExtension
    end
  end
end
