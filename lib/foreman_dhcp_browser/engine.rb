require 'deface'
module ForemanDhcpBrowser
  class Engine < ::Rails::Engine
    initializer 'foreman_dhcp_browser.register_plugin', before: :finisher_hook do |_app|
      Foreman::Plugin.register :foreman_dhcp_browser do
        security_block :foreman_dhcp_browser do
          permission :view_dhcp, {
            :dhcp => [:index, :show, :find_proxy, :find_record]
          }
          permission :new_dhcp, {
            :dhcp => [:new, :create]
          }
          permission :edit_dhcp, {
            :dhcp => [:edit, :update]
          }
          permission :delete_dhcp, {
            :dhcp => [:destroy]
          }
        end
        add_all_permissions_to_default_roles
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
