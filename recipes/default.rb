#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'httpd':
  action :install
end

service 'httpd':
  action [ :enable, :start ]
end

cookbook_file "/var/www/home/index.html" do
  source "index.html"
  mode "0644"
end
