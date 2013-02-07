#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2013, Jan Andersson
#
# All rights reserved - Do Not Redistribute
#

%w[bash_profile bashrc editrc inputrc screenrc].each do |file|
  cookbook_file "/home/vagrant/.#{file}" do
    source file
    owner "vagrant"
    group "vagrant"
    mode 0644
  end
end

template "/home/vagrant/.gitconfig" do
  source "gitconfig.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end
