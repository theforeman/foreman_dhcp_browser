Deface::Override.new(:virtual_path => "subnets/index",
                     :name => "add_subnets_dhcp",
                     :insert_top => "td:last",
                     :text => "<span class='btn btn-small'><%= link_to 'DHCP',subnet_dhcp_index_path(subnet) %></span>")
