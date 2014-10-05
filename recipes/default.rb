#
# Cookbook Name:: sensu-handler
# Recipe:: default
#
# Copyright 2014, Ryutaro YOSHIBA
#
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php

template "/etc/chef/client.d/sensu.rb" do
  source "sensu.rb.erb"
  owner "root"
  group "root"
  mode "00644"
end

directory "/var/chef/handlers" do
  owner "root"
  group "root"
  mode 00755
  action :create
end

remote_file "#{node[:chef_handler][:handler_path]}/chef-handler-sensu-event.rb" do
  source "https://raw.githubusercontent.com/SimpleFinance/chef-handler-sensu-event/master/lib/chef-handler-sensu-event.rb"
  mode 0644
end

chef_handler 'Chef::Handler::SensuEvent' do
  source "#{node[:chef_handler][:handler_path]}/chef-handler-sensu-event.rb"
  action :enable
end

# vim: filetype=ruby.chef
