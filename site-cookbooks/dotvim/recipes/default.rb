#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2013, Jan Andersson
#
# All rights reserved - Do Not Redistribute
#

script "clone_dotvim" do
  interpreter "bash"
  user "vagrant"
  code <<-EOH
    cd /home/vagrant
    if [ -e .vim/.git ]
    then
      cd .vim
      git pull --rebase
    else
      git clone git@github.com:janne/dotvim.git .vim
      git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
      ln -sf .vim/vimrc .vimrc
    fi
    exit 0
  EOH
end
