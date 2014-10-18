class DhcpEntries
  delegate :dhcp_proxy, :to => :subnet
  alias_attribute :proxy, :dhcp_proxy

  def initialize opts = {}
    @subnet = opts[:subnet]
  end

  def all
    @entries ||= proxy.subnet(subnet.network)
  end

  def reservations
    @reservations ||= all['reservations'].map do |reservation|
      Net::DHCP::Record.new reservation.merge(:proxy => proxy, :network => subnet.network)
    end
  rescue ProxyAPI::ProxyException => e
    []
  end

  def leases
    all['leases']
  end

  def find mac
    proxy.record(subnet.network, mac)
  end

  private
  attr_reader :subnet

end