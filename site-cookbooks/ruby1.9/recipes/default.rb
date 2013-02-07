#
# Cookbook Name:: ruby1.9
# Recipe:: default
#
# Copyright 2013, Jan Andersson
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "1.9.3-p374"

rbenv_gem "bundler" do
    ruby_version "1.9.3-p374"
end
