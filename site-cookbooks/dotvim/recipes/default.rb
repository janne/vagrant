#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2013, Jan Andersson
#
# All rights reserved - Do Not Redistribute
#

%w[.vim .vim/colors].each do |dir|
  directory "/home/vagrant/#{dir}" do
    owner "vagrant"
    mode 0755
  end
end

cookbook_file "/home/vagrant/.vimrc" do
  source "vimrc"
  owner "vagrant"
  mode 0644
end

cookbook_file "/home/vagrant/.vim/colors/desert256.vim" do
  source "desert256.vim"
  owner "vagrant"
  mode 0644
end

script "clone_vundle" do
  interpreter "bash"
  user "vagrant"
  code <<-EOH
    if [ ! -e /home/vagrant/.vim/bundle/vundle ]
    then
      git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
    fi
    exit 0
  EOH
end
