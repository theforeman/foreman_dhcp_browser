class DhcpController < ApplicationController
  before_filter :find_proxy
  before_filter :find_record, :only => [:show, :edit, :update, :destroy]

  def index
  end

  def new
    #hack hack hack, need to fix foreman core to validate on create/save instead of init
    @record = Net::DHCP::Record.new :proxy   => @subnet.dhcp_proxy, :hostname => 'dummy', :mac => 'aa:bb:cc:dd:ee:ff',
                                    :network => @subnet.network, :ip => '1.2.3.4'
    @record.hostname = @record.mac = @record.ip = nil
  end

  def create
    @record = Net::DHCP::Record.new(params[:net_dhcp_record])
    if @record.create
      process_success({ :success_redirect => subnet_dhcp_index_path(@subnet), :object_name => @record.to_s })
    else
      process_error({ :redirect => subnet_dhcp_index_path(@subnet) })
    end
  rescue ProxyAPI::ProxyException => e
    error_msg = (e.try(:wrapped_exception).try(:response) || e).to_s
    process_error :error_msg => error_msg
  end

  def show
  end

  def edit
  end

  def update
    #TODO
  end

  def destroy
    if @record.destroy
      process_success({ :success_redirect => subnet_dhcp_index_path(@subnet), :object_name => @record.to_s })
    else
      process_error({ :redirect => subnet_dhcp_index_path(@subnet) })
    end
  end

  private

  def find_proxy
    return not_found unless params[:subnet_id].present?
    @subnet = ::Subnet.find(params[:subnet_id])
    return not_found unless @subnet.try(:dhcp?)
    @entries = DhcpEntries.new(:subnet => @subnet)
  end

  def find_record
    @record = @entries.find(params[:id])
  end

end
