module ForemanDhcpBrowser::Concerns::NetRecordExtension
  extend ActiveSupport::Concern

  included do
    def self.humanize_class_name
      "DHCP"
    end
  end

  def id
    mac
  end

  def persisted?
    valid?
  end

  def subnet_id=(id)
    subnet   = ::Subnet.find_by_id(id) || return
    @network = subnet.network
    @proxy   = subnet.dhcp_proxy
  end
end
