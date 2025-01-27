require 'deface'
module ForemanDHCPBrowser
  class Engine < ::Rails::Engine
    engine_name 'foreman_dhcp_browser'

    initializer 'foreman_dhcp_browser.register_plugin', before: :finisher_hook do |app|
      app.reloader.to_prepare do
        Foreman::Plugin.register :foreman_dhcp_browser do
          requires_foreman '>= 3.13.0'
        end
      end
    end

    config.to_prepare do
      ::Net::Record.include ::ActiveModel::AttributeMethods
      ::Net::Record.include ::ActiveModel::Conversion
      ::Net::Record.extend ::ActiveModel::Naming
      ::Net::Record.include ForemanDHCPBrowser::Concerns::NetRecordExtension
    end
  end
end
