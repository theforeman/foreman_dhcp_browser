Deface::Override.new(:virtual_path => "subnets/index",
                     :name => "add_subnets_dhcp",
                     :insert_top => "td:last",
                     :text => "<%= link_to 'DHCP',subnet_dhcp_index_path(subnet), :class => 'btn btn-default btn-sm', :disabled => !subnet.dhcp? %>")
