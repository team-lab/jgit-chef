#
# Cookbook Name:: jgit-chef
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "jgit" do
  group "root"
  owner "root"
  mode "0755"
  path node[:jgit][:path]
  source node[:jgit][:source]
  checksum node[:jgit][:checksum]
end

