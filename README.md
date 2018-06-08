# foreman\_dhcp\_browser

This plugin will add a DHCP button per Subnet, where you can browse and edit
DHCP leases in the Foreman web UI. The changes will be sent to the respective
smart proxy.

## Installation

The foreman_dhcp_browser plugin is available both via RPM/DEB.

eg; yum install tfm-rubygem-foreman_dhcp_browser

See [How_to_Install_a_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin)
for how to install Foreman plugins

## Latest code

The gem name is "foreman_dhcp_browser".
You can get the master branch of the plugin by specifying your Gemfile in this way:

    gem 'foreman_dhcp_browser', :git => "https://github.com/theforeman/foreman_dhcp_browser.git"

## Configuration

There is UI no configuration at this time.

## Copyright

Copyright (c) 2013 Ohad Levy

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
